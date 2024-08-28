struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: i32,
    b: vec2<i32>,
    c: vec4<bool>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec3<bool>,
    c: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_3,
    c: vec3<u32>,
}

struct Struct_5 {
    a: vec4<bool>,
    b: Struct_4,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: vec2<i32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 23>;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: bool, arg_3: Struct_4) -> vec3<bool> {
    var var_0 = Struct_2(arg_1.a.x, -arg_1.a, select(!select(!vec4<bool>(arg_2, true, true, false), vec4<bool>(false, false, arg_2, true), arg_3.a.a.x != 0i), select(vec4<bool>(true, all(vec4<bool>(arg_2, arg_3.b.b.x, arg_3.b.b.x, arg_3.b.b.x)), arg_2, true), select(select(vec4<bool>(arg_2, true, true, arg_3.b.b.x), vec4<bool>(true, arg_2, false, arg_3.b.b.x), false), select(vec4<bool>(arg_2, arg_2, false, true), vec4<bool>(false, true, arg_3.b.b.x, arg_3.b.b.x), true), false), vec4<bool>(arg_3.b.b.x, all(vec2<bool>(arg_2, arg_3.b.b.x)), all(vec4<bool>(arg_2, false, true, arg_2)), false)), false), Struct_1(abs(vec2<i32>(-70652i, arg_1.a.x) << (select(arg_3.b.a, vec2<u32>(1u, arg_0), vec2<bool>(false, false)) % vec2<u32>(32u)))));
    var_0 = Struct_2(arg_3.a.a.x, vec2<i32>(2147483647i, _wgslsmith_mod_i32(u_input.a.x, (4132i & var_0.a) & arg_3.a.a.x)), vec4<bool>(true | any(vec3<bool>(false, var_0.c.x, true)), true, _wgslsmith_f_op_f32(abs(-926f)) < _wgslsmith_f_op_f32(260f * _wgslsmith_f_op_f32(floor(-1394f))), false), var_0.d);
    var var_1 = arg_3;
    let var_2 = Struct_2(var_0.a, -select(-(var_0.d.a >> (var_1.b.a % vec2<u32>(32u))), -countOneBits(vec2<i32>(24947i, -2147483647i)), var_1.b.b.x), !var_0.c, arg_1);
    var var_3 = vec4<u32>(~(~(~(~arg_0))), arg_0, arg_3.c.x, abs(6818u));
    return var_0.c.yyx;
}

fn func_2(arg_0: u32) -> Struct_1 {
    var var_0 = Struct_3(_wgslsmith_clamp_vec2_u32(~(~vec2<u32>(arg_0, arg_0)), ~firstTrailingBit(~vec2<u32>(arg_0, 34942u)), reverseBits(_wgslsmith_add_vec2_u32(min(vec2<u32>(arg_0, arg_0), vec2<u32>(arg_0, 57567u)), vec2<u32>(4294967295u, 1u)))), !vec3<bool>(any(func_3(arg_0, Struct_1(vec2<i32>(u_input.b, 0i)), true, Struct_4(Struct_1(u_input.a), Struct_3(vec2<u32>(0u, 4294967295u), vec3<bool>(false, true, false), Struct_1(vec2<i32>(u_input.b, 8478i))), vec3<u32>(arg_0, arg_0, arg_0)))), select(true, all(vec3<bool>(true, true, true)), true), false), Struct_1(vec2<i32>(-1i, abs(1i))));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -223f) * -340f));
    global0 = array<vec3<u32>, 23>();
    var var_2 = 17059u;
    var var_3 = var_0.c;
    return Struct_1(~(-vec2<i32>(0i, var_3.a.x) & u_input.a));
}

fn func_1(arg_0: u32) -> vec3<f32> {
    var var_0 = func_2(8355u);
    var var_1 = Struct_2(-38611i, firstTrailingBit(vec2<i32>(-31912i, var_0.a.x) | _wgslsmith_mod_vec2_i32(var_0.a, vec2<i32>(1i, 24803i))), select(!vec4<bool>(func_3(38395u, Struct_1(var_0.a), true, Struct_4(Struct_1(var_0.a), Struct_3(vec2<u32>(arg_0, arg_0), vec3<bool>(false, false, false), Struct_1(var_0.a)), global0[_wgslsmith_index_u32(64847u, 23u)])).x, true, true, any(vec2<bool>(true, false))), vec4<bool>(all(vec3<bool>(true, true, true)), true, all(select(vec2<bool>(false, false), vec2<bool>(true, false), false)), true), select(var_0.a.x >= 36527i, !(arg_0 != 3437u), all(vec2<bool>(true, true)))), Struct_1(-(_wgslsmith_div_vec2_i32(u_input.a, var_0.a) >> ((vec2<u32>(arg_0, 87739u) | vec2<u32>(107992u, arg_0)) % vec2<u32>(32u)))));
    var_1 = Struct_2(max(-2147483647i, -23816i), u_input.a, !vec4<bool>(var_1.c.x, true, true, var_1.c.x | var_1.c.x), var_1.d);
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-280f, -1438f) - _wgslsmith_f_op_f32(-1177f + -976f)), -427f)))) + 1196f);
    var_1 = Struct_2(_wgslsmith_div_i32(var_0.a.x, ~var_1.b.x), abs(firstLeadingBit(u_input.a) & vec2<i32>(-1i, var_1.b.x)), select(var_1.c, vec4<bool>(true, (var_1.c.x || var_1.c.x) | (true | var_1.c.x), !var_1.c.x, false), select(!var_1.c, vec4<bool>(var_1.c.x, true, true != var_1.c.x, true), true)), func_2(min(~arg_0, _wgslsmith_add_u32(33341u, arg_0) | _wgslsmith_dot_vec3_u32(vec3<u32>(arg_0, 1u, arg_0), global0[_wgslsmith_index_u32(3089u, 23u)]))));
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2, 518f, 682f)) - vec3<f32>(var_2, var_2, var_2)) + _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(-960f, var_2, var_2) + vec3<f32>(-340f, 681f, 379f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_2, var_2, -1020f) * vec3<f32>(-384f, var_2, var_2))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2, 370f, var_2) - vec3<f32>(var_2, -177f, -338f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-405f, var_2, var_2)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-152f, var_2, 1157f))))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(194f, var_2)))), var_2, -936f)));
}

fn func_4(arg_0: vec4<u32>, arg_1: vec3<f32>, arg_2: Struct_2) -> Struct_5 {
    global0 = array<vec3<u32>, 23>();
    global0 = array<vec3<u32>, 23>();
    let var_0 = -2147483647i;
    return Struct_5(vec4<bool>(arg_2.c.x, !arg_2.c.x, all(!(!vec3<bool>(arg_2.c.x, true, arg_2.c.x))), !(!all(arg_2.c.yzz))), Struct_4(func_2(70047u), Struct_3(firstTrailingBit(vec2<u32>(1u, 67790u) >> (arg_0.wx % vec2<u32>(32u))), arg_2.c.zyy, func_2(4294967295u)), _wgslsmith_div_vec3_u32(vec3<u32>(0u, arg_0.x, ~arg_0.x), arg_0.xyx)), select(vec4<i32>(_wgslsmith_sub_i32(1i, ~(-1i)), arg_2.b.x, ~_wgslsmith_mod_i32(u_input.a.x, u_input.a.x), -20995i), countOneBits(vec4<i32>(~37205i, _wgslsmith_mod_i32(u_input.b, -2147483647i), ~arg_2.b.x, firstTrailingBit(arg_2.a))), any(vec4<bool>(1u >= arg_0.x, any(arg_2.c.zxz), true, all(vec3<bool>(arg_2.c.x, arg_2.c.x, arg_2.c.x))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(_wgslsmith_add_vec4_u32(~(~vec4<u32>(1u, 55417u, 121429u, 44222u)), vec4<u32>(~4294967295u, 33365u, ~8843u, firstTrailingBit(52042u))) >> (~(~vec4<u32>(1u, 1u, 1u, 1u)) % vec4<u32>(32u)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_1(30741u)) * _wgslsmith_div_vec3_f32(vec3<f32>(-1000f, 2068f, -688f), vec3<f32>(-1000f, 526f, _wgslsmith_f_op_f32(188f - -860f)))), Struct_2(13434i, vec2<i32>(-21930i, 14250i), select(vec4<bool>(true, true, true, true), vec4<bool>(any(vec3<bool>(true, false, false)), true, true, all(vec3<bool>(false, true, true))), true), func_2(4294967295u)));
    var var_1 = var_0.b.b;
    var var_2 = -(_wgslsmith_dot_vec4_i32(vec4<i32>(36534i, 1424i, var_0.b.a.a.x, var_1.c.a.x) >> (~vec4<u32>(var_0.b.b.a.x, var_1.a.x, 49136u, var_1.a.x) % vec4<u32>(32u)), var_0.c) << ((var_0.b.b.a.x >> (~(var_1.a.x & 8325u) % 32u)) % 32u));
    let var_3 = var_0.c.x;
    global0 = array<vec3<u32>, 23>();
    var var_4 = _wgslsmith_mult_i32(35833i, select(var_0.c.x >> ((_wgslsmith_div_u32(23265u, var_0.b.c.x) & 1u) % 32u), u_input.a.x, true));
    var_0 = func_4(~(select(abs(vec4<u32>(var_1.a.x, 1u, 0u, var_1.a.x)), ~vec4<u32>(42070u, var_0.b.b.a.x, 4294967295u, var_0.b.c.x), all(var_0.b.b.b)) | vec4<u32>(~var_0.b.b.a.x, min(33945u, 1u), 4294967295u, ~var_0.b.b.a.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(916f, _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(f32(-1f) * -912f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -3285f)))), Struct_2(var_0.c.x >> (1u % 32u), var_1.c.a | vec2<i32>(_wgslsmith_dot_vec4_i32(var_0.c, vec4<i32>(27310i, var_0.b.a.a.x, -41849i, var_0.c.x)), firstTrailingBit(var_0.c.x)), !select(select(vec4<bool>(true, true, true, false), var_0.a, var_0.a), var_0.a, true), var_1.c));
    let var_5 = _wgslsmith_add_vec4_i32(var_0.c, -_wgslsmith_div_vec4_i32(abs(_wgslsmith_mult_vec4_i32(var_0.c, vec4<i32>(var_1.c.a.x, var_0.b.b.c.a.x, var_0.c.x, u_input.b))), vec4<i32>(2147483647i, -1i, -14584i, u_input.a.x) | -var_0.c));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec3_f32(func_1(0u)).x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-383f)) * 887f)), _wgslsmith_f_op_vec3_f32(func_1(29740u)).zz), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * 400f)))), _wgslsmith_sub_vec2_i32(abs(_wgslsmith_div_vec2_i32(-vec2<i32>(var_1.c.a.x, var_5.x), u_input.a)), ~vec2<i32>(-28322i, -16884i) >> (var_1.a % vec2<u32>(32u))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-688f, 219f, -417f, 1322f)), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(627f, 382f, -404f, -1078f), vec4<f32>(144f, 1451f, -1282f, 599f))), vec4<f32>(-167f, 770f, 798f, 1551f))))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-798f, -623f, 351f, -455f)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-911f, -135f, -1400f, 227f)), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1383f, -113f, -1601f, -892f)))))), vec4<bool>(true, true, false, ~u_input.a.x >= ~(-1i)))));
}


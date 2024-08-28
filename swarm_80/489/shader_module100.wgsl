struct Struct_1 {
    a: u32,
    b: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<bool>,
    d: vec4<f32>,
    e: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 1>;

var<private> global1: Struct_2 = Struct_2(Struct_1(0u, vec4<f32>(-226f, -337f, -1332f, -1013f)), Struct_1(67664u, vec4<f32>(261f, 1182f, -658f, -674f)), vec2<bool>(false, false), vec4<f32>(-886f, 1492f, -511f, 1000f), 39147u);

var<private> global2: array<i32, 12>;

var<private> global3: vec3<u32>;

var<private> global4: array<vec3<i32>, 32>;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_1) -> bool {
    global3 = abs(~vec3<u32>(8256u, 1u, _wgslsmith_dot_vec4_u32(vec4<u32>(global1.e, 0u, arg_0.a, 92736u), vec4<u32>(arg_0.a, global1.a.a, 4294967295u, global3.x)))) & reverseBits(_wgslsmith_sub_vec3_u32((vec3<u32>(arg_0.a, arg_0.a, 0u) >> (vec3<u32>(global3.x, global1.e, arg_0.a) % vec3<u32>(32u))) << (select(vec3<u32>(65203u, 4294967295u, global1.e), vec3<u32>(0u, 0u, 1u), vec3<bool>(global1.c.x, global1.c.x, false)) % vec3<u32>(32u)), ~select(vec3<u32>(global1.a.a, arg_0.a, 49469u), vec3<u32>(58998u, 4294967295u, 1u), global1.c.x)));
    let var_0 = u_input.b.x;
    let var_1 = Struct_1(_wgslsmith_div_u32(arg_0.a, _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(abs(vec4<u32>(37779u, global3.x, arg_0.a, 33264u)), vec4<u32>(2875u, global1.b.a, 54893u, global1.a.a)), global3.x)), _wgslsmith_f_op_vec4_f32(-arg_0.b));
    global1 = global0[_wgslsmith_index_u32(_wgslsmith_add_u32(1u << (global1.e % 32u), _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(arg_0.a, 83540u, 4294967295u, 4294967295u) & vec4<u32>(arg_0.a, 81213u, global3.x, 97322u), vec4<u32>(1u, 0u, 4294967295u, var_1.a)), ~abs(vec4<u32>(global1.b.a, var_1.a, global1.b.a, 0u))), max(_wgslsmith_mult_vec4_u32(vec4<u32>(1u, 0u, var_1.a, global1.b.a), vec4<u32>(var_1.a, global3.x, 1u, arg_0.a)) >> (vec4<u32>(4294967295u, var_1.a, 27712u, global3.x) % vec4<u32>(32u)), abs(_wgslsmith_sub_vec4_u32(vec4<u32>(arg_0.a, arg_0.a, arg_0.a, var_1.a), vec4<u32>(global3.x, global3.x, 16149u, var_1.a)))))), 1u)];
    var var_2 = global1.c;
    return all(!select(!global1.c, select(vec2<bool>(global1.c.x, true), vec2<bool>(var_2.x, false), global1.c), !global1.c)) | any(select(global1.c, vec2<bool>(!var_2.x, true), global1.c));
}

fn func_2(arg_0: Struct_1, arg_1: i32, arg_2: vec4<i32>) -> u32 {
    let var_0 = select(vec4<bool>((global2[_wgslsmith_index_u32(~1584u, 12u)] > arg_2.x) == select(select(global1.c.x, false, global1.c.x), func_3(global1.b), true), true, !global1.c.x, global1.c.x), select(!(!vec4<bool>(true, false, global1.c.x, global1.c.x)), !select(vec4<bool>(true, false, global1.c.x, global1.c.x), select(vec4<bool>(global1.c.x, global1.c.x, false, false), vec4<bool>(false, global1.c.x, true, false), false), true), !select(!vec4<bool>(global1.c.x, true, true, false), vec4<bool>(false, true, global1.c.x, false), vec4<bool>(global1.c.x, false, false, false))), global1.c.x);
    var var_1 = global0[_wgslsmith_index_u32(1u | (13868u & _wgslsmith_clamp_u32(global1.a.a, global1.e, global3.x)), 1u)];
    var var_2 = global0[_wgslsmith_index_u32(~arg_0.a, 1u)];
    var var_3 = min(global3.xz, ~global3.xy) | global3.xx;
    let var_4 = var_1.a;
    return var_4.a & ~(firstLeadingBit(55415u) & countOneBits(var_4.a | 3393u));
}

fn func_1() -> Struct_2 {
    global4 = array<vec3<i32>, 32>();
    global4 = array<vec3<i32>, 32>();
    var var_0 = global0[_wgslsmith_index_u32(~abs(1u), 1u)];
    let var_1 = vec4<bool>((1u | (_wgslsmith_sub_u32(11072u, global3.x) << (4294967295u % 32u))) == (global1.a.a << (func_2(global1.a, -u_input.b.x, vec4<i32>(-2147483647i, global2[_wgslsmith_index_u32(global3.x, 12u)], 21815i, u_input.a) & vec4<i32>(u_input.a, 9472i, -60932i, 0i)) % 32u)), false, false, 12884u == _wgslsmith_div_u32(~_wgslsmith_add_u32(4294967295u, global3.x), _wgslsmith_dot_vec3_u32(~vec3<u32>(1u, 1u, 4294967295u), firstTrailingBit(vec3<u32>(var_0.b.a, 0u, 1u)))));
    let var_2 = _wgslsmith_add_vec4_i32(_wgslsmith_div_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(-24694i, ~u_input.c, u_input.d, global2[_wgslsmith_index_u32(global1.b.a, 12u)]), select(vec4<i32>(u_input.d, u_input.d, 1i, 0i), vec4<i32>(-53395i, -1i, global2[_wgslsmith_index_u32(57298u, 12u)], 21186i), var_1) & (vec4<i32>(u_input.c, -34951i, u_input.b.x, 5215i) >> (vec4<u32>(global3.x, 75145u, global1.a.a, global3.x) % vec4<u32>(32u)))), vec4<i32>(_wgslsmith_mod_i32(-12495i, global2[_wgslsmith_index_u32(global1.a.a, 12u)]), 39595i, -1i, 1i)), vec4<i32>(_wgslsmith_mult_i32(-31937i, _wgslsmith_mult_i32(countOneBits(-2147483647i), _wgslsmith_dot_vec3_i32(vec3<i32>(global2[_wgslsmith_index_u32(global1.e, 12u)], u_input.b.x, global2[_wgslsmith_index_u32(var_0.e, 12u)]), global4[_wgslsmith_index_u32(71150u, 32u)]))), abs(_wgslsmith_add_i32(global2[_wgslsmith_index_u32(firstTrailingBit(1u), 12u)], reverseBits(u_input.b.x))), -50007i, 15219i));
    return Struct_2(global1.b, Struct_1(_wgslsmith_mod_u32(46503u, var_0.a.a), var_0.a.b), vec2<bool>(~global3.x >= (_wgslsmith_div_u32(var_0.b.a, 25184u) & _wgslsmith_dot_vec2_u32(global3.zx, global3.xz)), reverseBits(var_0.b.a) >= global3.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(global1.d)) - vec4<f32>(1000f, _wgslsmith_f_op_f32(round(global1.b.b.x)), var_0.a.b.x, var_0.d.x))), select(~113565u, _wgslsmith_dot_vec3_u32(select(~vec3<u32>(global3.x, global1.e, 0u), select(vec3<u32>(0u, global1.e, var_0.e), vec3<u32>(var_0.a.a, global1.e, 4294967295u), true), true), vec3<u32>(22447u, 54192u, 1u) | ~vec3<u32>(1u, 1u, var_0.a.a)), all(!(!vec4<bool>(global1.c.x, true, var_1.x, false)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -((max(select(vec4<i32>(global2[_wgslsmith_index_u32(global3.x, 12u)], 1i, global2[_wgslsmith_index_u32(1u, 12u)], global2[_wgslsmith_index_u32(59648u, 12u)]), vec4<i32>(u_input.a, -25547i, -9226i, 1i), vec4<bool>(global1.c.x, true, global1.c.x, global1.c.x)), vec4<i32>(global2[_wgslsmith_index_u32(global1.a.a, 12u)], u_input.c, 8019i, -25057i)) << (firstTrailingBit(abs(vec4<u32>(1u, 76704u, global1.e, global3.x))) % vec4<u32>(32u))) << (min(firstTrailingBit(_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, global3.x, global3.x, 31069u), vec4<u32>(4294967295u, global3.x, 10430u, 8508u))), firstLeadingBit(abs(vec4<u32>(49332u, global1.b.a, global3.x, global1.e)))) % vec4<u32>(32u)));
    let var_1 = global4[_wgslsmith_index_u32(~(~select(~34773u, ~1u, _wgslsmith_f_op_f32(select(global1.a.b.x, -1465f, false)) > -944f)), 32u)];
    var var_2 = Struct_1(global1.e, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-1000f - global1.d.x), _wgslsmith_f_op_f32(477f - -1045f), _wgslsmith_f_op_f32(global1.d.x + -1611f), _wgslsmith_div_f32(-1064f, -974f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(global1.a.b * vec4<f32>(global1.b.b.x, global1.a.b.x, global1.b.b.x, global1.a.b.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.a.b.x, 1000f, global1.a.b.x, global1.d.x))))));
    let var_3 = func_1();
    let var_4 = Struct_2(var_3.a, func_1().b, vec2<bool>(var_3.c.x, true), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.b.x, global1.b.b.x, _wgslsmith_f_op_f32(global1.d.x * 967f), _wgslsmith_f_op_f32(1000f * var_2.b.x)))), global1.e);
    global1 = var_3;
    let var_5 = var_4.b;
    let x = u_input.a;
    s_output = StorageBuffer(~(vec3<u32>(var_2.a & global3.x, var_5.a << (28095u % 32u), select(var_5.a, 34196u, true)) | (_wgslsmith_sub_vec3_u32(vec3<u32>(global1.a.a, var_5.a, 4294967295u), vec3<u32>(var_4.b.a, 0u, 95198u)) | vec3<u32>(1u, 0u, var_2.a))));
}


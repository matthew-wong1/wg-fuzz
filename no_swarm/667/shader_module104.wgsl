struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: bool,
    b: vec4<u32>,
    c: i32,
    d: vec4<i32>,
}

struct Struct_3 {
    a: vec2<bool>,
}

struct Struct_4 {
    a: vec2<i32>,
    b: Struct_1,
    c: vec3<i32>,
    d: vec2<i32>,
    e: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: i32,
    d: vec4<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 22> = array<Struct_3, 22>(Struct_3(vec2<bool>(true, false)), Struct_3(vec2<bool>(false, true)), Struct_3(vec2<bool>(true, false)), Struct_3(vec2<bool>(false, true)), Struct_3(vec2<bool>(false, true)), Struct_3(vec2<bool>(false, true)), Struct_3(vec2<bool>(true, false)), Struct_3(vec2<bool>(true, false)), Struct_3(vec2<bool>(false, false)), Struct_3(vec2<bool>(false, true)), Struct_3(vec2<bool>(false, false)), Struct_3(vec2<bool>(false, true)), Struct_3(vec2<bool>(true, false)), Struct_3(vec2<bool>(true, false)), Struct_3(vec2<bool>(false, false)), Struct_3(vec2<bool>(true, true)), Struct_3(vec2<bool>(true, true)), Struct_3(vec2<bool>(false, true)), Struct_3(vec2<bool>(true, false)), Struct_3(vec2<bool>(true, true)), Struct_3(vec2<bool>(false, false)), Struct_3(vec2<bool>(true, true)));

var<private> global1: Struct_4;

var<private> global2: f32 = -2884f;

var<private> global3: f32 = 927f;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: u32) -> i32 {
    var var_0 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f - 452f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-500f, 749f, global1.b.a)))) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1666f) + _wgslsmith_f_op_f32(step(1396f, -1233f)))), select(reverseBits(~vec4<u32>(arg_0, 24006u, u_input.b, 4294967295u)), firstLeadingBit(vec4<u32>(~arg_0, _wgslsmith_mod_u32(16469u, u_input.b), u_input.d >> (arg_0 % 32u), select(arg_0, 3116u, false))), !(!select(vec4<bool>(global1.b.a, false, false, true), vec4<bool>(true, true, global1.b.a, global1.b.a), vec4<bool>(global1.b.a, true, true, global1.b.a)))), max(_wgslsmith_mod_i32(16872i, 1i), u_input.a), vec4<i32>(~max(u_input.c.x, select(global1.d.x, -3431i, global1.b.a)), -(_wgslsmith_dot_vec3_i32(u_input.c, vec3<i32>(u_input.c.x, global1.d.x, 1i)) << (~u_input.d % 32u)), _wgslsmith_dot_vec3_i32(global1.c, global1.c), _wgslsmith_mod_i32(_wgslsmith_mod_i32(global1.d.x, -global1.a.x), 0i << (u_input.b % 32u))));
    global2 = 1638f;
    let var_1 = Struct_2(false, min(var_0.b << (~vec4<u32>(arg_0, arg_0, 22377u, 0u) % vec4<u32>(32u)), var_0.b), u_input.c.x, _wgslsmith_sub_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(~890i, -2147483647i, 0i, u_input.a), -abs(vec4<i32>(1i, 1i, var_0.d.x, -78730i))), abs(min(var_0.d << (var_0.b % vec4<u32>(32u)), vec4<i32>(2147483647i, var_0.d.x, u_input.a, 0i)))));
    let var_2 = Struct_3(!select(!vec2<bool>(global1.b.a, var_0.a), !select(vec2<bool>(global1.b.a, var_1.a), vec2<bool>(true, true), vec2<bool>(global1.b.a, false)), true));
    global0 = array<Struct_3, 22>();
    return -50358i;
}

fn func_2(arg_0: vec3<bool>) -> Struct_3 {
    var var_0 = Struct_4(~vec2<i32>(select(-1i, global1.e, false), 12453i ^ u_input.c.x), Struct_1(global1.b.a), vec3<i32>(abs(_wgslsmith_mod_i32(min(-30962i, 0i), countOneBits(2147483647i))), reverseBits(u_input.c.x), _wgslsmith_mult_i32(u_input.a, ~(~u_input.c.x))), vec2<i32>(-2147483647i, -15905i), func_3(0u));
    let var_1 = -44831i;
    let var_2 = arg_0;
    let var_3 = Struct_4(abs(~vec2<i32>(u_input.a, 32162i) | vec2<i32>(-76127i & var_1, 38274i)), var_0.b, global1.c, var_0.c.yz, var_0.d.x);
    let var_4 = Struct_4(_wgslsmith_sub_vec2_i32(var_3.c.xx, _wgslsmith_mult_vec2_i32(var_3.a, global1.c.yx)) | (vec2<i32>(-1i) * -var_3.d), Struct_1(var_2.x), vec3<i32>(0i, var_0.e, u_input.c.x), ~(global1.a >> (~_wgslsmith_mod_vec2_u32(vec2<u32>(25929u, 0u), vec2<u32>(1u, u_input.d)) % vec2<u32>(32u))), ~_wgslsmith_div_i32(_wgslsmith_sub_i32(_wgslsmith_div_i32(-10575i, u_input.a), -global1.e), var_0.d.x));
    return global0[_wgslsmith_index_u32(u_input.b | (_wgslsmith_clamp_u32(~(~u_input.d), 1u, ~_wgslsmith_sub_u32(u_input.b, 1u)) >> (u_input.d % 32u)), 22u)];
}

fn func_1(arg_0: Struct_4, arg_1: f32) -> i32 {
    var var_0 = arg_0.b;
    let var_1 = func_2(select(vec3<bool>(true, global1.b.a, !(!global1.b.a)), vec3<bool>(var_0.a, !(u_input.d > u_input.b), all(vec3<bool>(false, global1.b.a, var_0.a))), u_input.d >= _wgslsmith_mult_u32(~1u, _wgslsmith_mod_u32(u_input.d, 1u))));
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) + 1450f), 650f) + arg_1), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) - -2866f));
    let var_3 = func_2(select(vec3<bool>(all(select(vec3<bool>(false, var_0.a, var_1.a.x), vec3<bool>(global1.b.a, false, var_0.a), vec3<bool>(false, false, true))), false, false), select(select(vec3<bool>(true, false, true), vec3<bool>(true, global1.b.a, true), u_input.d >= u_input.b), select(!vec3<bool>(arg_0.b.a, arg_0.b.a, var_0.a), select(vec3<bool>(var_1.a.x, arg_0.b.a, var_0.a), vec3<bool>(var_1.a.x, arg_0.b.a, true), global1.b.a), select(vec3<bool>(var_1.a.x, var_1.a.x, var_0.a), vec3<bool>(false, true, true), vec3<bool>(var_0.a, false, true))), true), vec3<bool>(any(vec2<bool>(true, true)), arg_0.b.a, true)));
    global1 = Struct_4(select(select(u_input.c.yy, global1.c.xx, var_1.a), arg_0.c.xx, vec2<bool>(true, true)), global1.b, select(abs(~vec3<i32>(u_input.c.x, 2147483647i, 33182i)), arg_0.c, select(select(select(vec3<bool>(false, var_0.a, var_0.a), vec3<bool>(var_1.a.x, global1.b.a, true), vec3<bool>(false, var_3.a.x, true)), select(vec3<bool>(arg_0.b.a, var_0.a, true), vec3<bool>(var_1.a.x, arg_0.b.a, arg_0.b.a), vec3<bool>(false, false, var_3.a.x)), select(vec3<bool>(var_3.a.x, var_1.a.x, var_3.a.x), vec3<bool>(false, arg_0.b.a, var_0.a), vec3<bool>(true, var_1.a.x, arg_0.b.a))), !select(vec3<bool>(true, false, true), vec3<bool>(true, var_0.a, true), vec3<bool>(false, false, var_0.a)), select(!vec3<bool>(var_1.a.x, false, global1.b.a), vec3<bool>(global1.b.a, arg_0.b.a, global1.b.a), select(true, arg_0.b.a, global1.b.a)))), arg_0.c.xz, 1i);
    return arg_0.c.x;
}

fn func_4(arg_0: Struct_2, arg_1: vec4<i32>) -> u32 {
    global2 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(537f + -778f)));
    let var_0 = all(vec3<bool>(false, false, func_2(!(!vec3<bool>(global1.b.a, global1.b.a, global1.b.a))).a.x));
    global1 = Struct_4(~vec2<i32>(max(~arg_0.c, arg_1.x << (u_input.d % 32u)), _wgslsmith_sub_i32(global1.e, 7178i) << (~0u % 32u)), global1.b, arg_0.d.yzz, global1.a, 2147483647i);
    var var_1 = -12189i;
    var var_2 = ~vec2<i32>(_wgslsmith_mod_i32(1i, u_input.a), _wgslsmith_mult_i32(firstTrailingBit(-2147483647i), func_1(Struct_4(vec2<i32>(global1.a.x, -69162i), Struct_1(true), vec3<i32>(u_input.a, arg_1.x, 11448i), arg_1.ww, arg_1.x), 1000f)));
    return 60049u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<i32>(u_input.a, ~firstLeadingBit(_wgslsmith_clamp_i32(u_input.c.x, -u_input.c.x, _wgslsmith_sub_i32(-1i, global1.c.x))), max(~(~_wgslsmith_add_i32(0i, -1i)), ~2147483647i));
    var var_1 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-946f, -2297f, -1890f, -1000f))))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1945f))), -480f, -1358f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-2271f, 494f, false)))))));
    var var_2 = (vec4<i32>(-u_input.a, ~(-41988i), var_0.x << ((u_input.d | 1494u) % 32u), i32(-1i) * -2147483647i) ^ -_wgslsmith_div_vec4_i32(vec4<i32>(global1.d.x, 35768i, u_input.c.x, global1.a.x), vec4<i32>(global1.d.x, 1i, 33440i, -29123i))) >> (vec4<u32>(4294967295u << ((_wgslsmith_mod_u32(1u, 1u) << (~u_input.d % 32u)) % 32u), func_4(Struct_2(true, _wgslsmith_add_vec4_u32(vec4<u32>(87826u, 0u, 5509u, u_input.d), vec4<u32>(0u, 1u, 23855u, u_input.b)), func_1(Struct_4(vec2<i32>(-30703i, 14661i), Struct_1(false), global1.c, u_input.c.xy, -11184i), var_1.x), _wgslsmith_add_vec4_i32(vec4<i32>(var_0.x, var_0.x, global1.c.x, var_0.x), vec4<i32>(u_input.a, -1i, 17025i, var_0.x))), vec4<i32>(-1i, func_3(0u), i32(-1i) * -37531i, 1i)), u_input.d, u_input.d) % vec4<u32>(32u));
    let var_3 = Struct_4(vec2<i32>(-u_input.a, _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(-vec2<i32>(28163i, 2347i), ~global1.c.xx), -u_input.c.x)), global1.b, global1.c, var_2.ww, 2070i);
    let var_4 = var_3;
    let var_5 = ((var_1.x <= _wgslsmith_f_op_f32(var_1.x + _wgslsmith_f_op_f32(f32(-1f) * -660f))) & true) && (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_1.x)))) < var_1.x);
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-412f, var_1.x, any(!vec3<bool>(true, global1.b.a, var_3.b.a)) | all(select(vec3<bool>(var_5, var_5, global1.b.a), vec3<bool>(true, var_5, global1.b.a), vec3<bool>(var_3.b.a, global1.b.a, false))))));
    let x = u_input.a;
    s_output = StorageBuffer(var_3.a, firstTrailingBit(firstLeadingBit(vec3<i32>(_wgslsmith_mod_i32(var_4.d.x, -17561i), _wgslsmith_sub_i32(var_0.x, var_3.c.x), var_4.c.x))), -(0i & _wgslsmith_dot_vec2_i32(var_0.zz | vec2<i32>(30479i, 1i), ~vec2<i32>(-26020i, -2147483647i))), ~(vec4<u32>(_wgslsmith_mod_u32(u_input.b, u_input.d), 4294967295u, min(32267u, u_input.d), u_input.b) ^ ~min(vec4<u32>(u_input.b, u_input.b, 8804u, u_input.b), vec4<u32>(u_input.b, u_input.d, u_input.d, u_input.d))), var_1.x);
}


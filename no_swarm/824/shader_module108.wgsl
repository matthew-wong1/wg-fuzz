struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec4<u32>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: i32,
    c: Struct_1,
    d: Struct_1,
    e: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
}

struct Struct_5 {
    a: f32,
    b: vec3<u32>,
    c: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: f32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 8> = array<bool, 8>(false, true, true, false, false, true, true, true);

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: u32, arg_1: Struct_3) -> bool {
    global0 = array<bool, 8>();
    global0 = array<bool, 8>();
    let var_0 = true;
    var var_1 = _wgslsmith_mult_i32(13300i, select(max(1i, 25389i), _wgslsmith_clamp_i32(-6958i, -(~(-49188i)), i32(-1i) * -1i), false));
    let var_2 = arg_1;
    return global0[_wgslsmith_index_u32(arg_1.e.a.x, 8u)];
}

fn func_2() -> Struct_2 {
    var var_0 = u_input.b;
    var var_1 = abs(select(-37385i, _wgslsmith_clamp_i32(15048i, -1444i, 2147483647i), func_3(min(u_input.a, ~u_input.a), Struct_3(vec4<bool>(global0[_wgslsmith_index_u32(u_input.b, 8u)], global0[_wgslsmith_index_u32(u_input.a, 8u)], false, false), -1i >> (u_input.a % 32u), Struct_1(false), Struct_1(global0[_wgslsmith_index_u32(u_input.a, 8u)]), Struct_2(vec4<u32>(u_input.b, 48988u, 1u, u_input.b))))));
    var_0 = ~(~1u);
    var var_2 = 1u;
    let var_3 = _wgslsmith_div_i32(abs(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, 1i, 1i), firstLeadingBit(vec3<i32>(1i, 1i, 1i)))), (_wgslsmith_mod_i32(-2147483647i >> (u_input.a % 32u), firstTrailingBit(1i)) & _wgslsmith_mod_i32(0i, 1i)) | _wgslsmith_div_i32(0i, select(_wgslsmith_mult_i32(8965i, -1i), 0i, true)));
    return Struct_2(vec4<u32>(abs(u_input.a), 20397u, 1u, ~(u_input.a ^ ~4294967295u)));
}

fn func_1(arg_0: u32, arg_1: vec3<bool>) -> Struct_2 {
    global0 = array<bool, 8>();
    var var_0 = ~_wgslsmith_sub_u32(reverseBits(arg_0), _wgslsmith_mod_u32(_wgslsmith_mod_u32(~4294967295u, u_input.a), 1u));
    return func_2();
}

fn func_4(arg_0: u32, arg_1: i32, arg_2: Struct_4) -> Struct_2 {
    global0 = array<bool, 8>();
    var var_0 = !all(!select(!vec4<bool>(global0[_wgslsmith_index_u32(u_input.a, 8u)], global0[_wgslsmith_index_u32(0u, 8u)], false, global0[_wgslsmith_index_u32(6422u, 8u)]), !vec4<bool>(true, global0[_wgslsmith_index_u32(113203u, 8u)], true, false), true));
    var var_1 = Struct_1(!all(select(!vec2<bool>(global0[_wgslsmith_index_u32(arg_2.a.a.x, 8u)], false), vec2<bool>(false, global0[_wgslsmith_index_u32(0u, 8u)]), func_3(4294967295u, Struct_3(vec4<bool>(global0[_wgslsmith_index_u32(46681u, 8u)], true, false, true), arg_1, Struct_1(global0[_wgslsmith_index_u32(u_input.b, 8u)]), Struct_1(true), Struct_2(vec4<u32>(11359u, arg_2.a.a.x, 4294967295u, 0u)))))));
    global0 = array<bool, 8>();
    let var_2 = select(vec4<i32>(i32(-1i) * -1876i, 73429i, max(arg_1, -2147483647i), 842i) ^ ~(-vec4<i32>(arg_1, 12749i, arg_1, 2147483647i)), ~vec4<i32>(-64374i << (arg_2.a.a.x % 32u), _wgslsmith_div_i32(arg_1, arg_1), arg_1, abs(arg_1)), global0[_wgslsmith_index_u32(1u, 8u)]) << (vec4<u32>(u_input.b, arg_2.a.a.x, 1u, 0u) % vec4<u32>(32u));
    return Struct_2(_wgslsmith_mod_vec4_u32(abs(~vec4<u32>(u_input.b, 4411u, arg_0, 49340u) & ~arg_2.a.a), arg_2.a.a));
}

fn func_5(arg_0: Struct_4, arg_1: Struct_2, arg_2: vec3<i32>, arg_3: Struct_2) -> Struct_3 {
    var var_0 = arg_0.a.a.wyz;
    var var_1 = Struct_3(!select(!select(vec4<bool>(true, true, false, false), vec4<bool>(global0[_wgslsmith_index_u32(69470u, 8u)], true, true, global0[_wgslsmith_index_u32(4294967295u, 8u)]), vec4<bool>(global0[_wgslsmith_index_u32(32349u, 8u)], global0[_wgslsmith_index_u32(55856u, 8u)], true, global0[_wgslsmith_index_u32(u_input.a, 8u)])), select(vec4<bool>(true, true, false, global0[_wgslsmith_index_u32(0u, 8u)]), !vec4<bool>(global0[_wgslsmith_index_u32(u_input.a, 8u)], global0[_wgslsmith_index_u32(arg_0.a.a.x, 8u)], false, global0[_wgslsmith_index_u32(30080u, 8u)]), select(vec4<bool>(false, global0[_wgslsmith_index_u32(18783u, 8u)], true, global0[_wgslsmith_index_u32(arg_0.a.a.x, 8u)]), vec4<bool>(false, true, global0[_wgslsmith_index_u32(37213u, 8u)], false), vec4<bool>(global0[_wgslsmith_index_u32(27991u, 8u)], global0[_wgslsmith_index_u32(1u, 8u)], false, false))), any(!vec3<bool>(global0[_wgslsmith_index_u32(arg_3.a.x, 8u)], false, true))), _wgslsmith_div_i32(~1i, ~_wgslsmith_dot_vec2_i32(min(vec2<i32>(25818i, 2147483647i), vec2<i32>(-2147483647i, arg_2.x)), vec2<i32>(arg_2.x, 2147483647i))), Struct_1(!global0[_wgslsmith_index_u32(_wgslsmith_add_u32(61098u, 1u), 8u)]), Struct_1(!(true & !global0[_wgslsmith_index_u32(4294967295u, 8u)])), Struct_2(_wgslsmith_sub_vec4_u32(~(~vec4<u32>(var_0.x, arg_3.a.x, arg_1.a.x, arg_3.a.x)), _wgslsmith_mod_vec4_u32(vec4<u32>(1u, 85645u, var_0.x, arg_3.a.x) ^ vec4<u32>(0u, arg_3.a.x, 18161u, u_input.a), vec4<u32>(4294967295u, 9417u, var_0.x, var_0.x)))));
    var var_2 = Struct_4(arg_3);
    var_0 = arg_1.a.yyy;
    var_1 = Struct_3(!(!select(vec4<bool>(global0[_wgslsmith_index_u32(var_0.x, 8u)], false, true, true), select(var_1.a, var_1.a, vec4<bool>(true, global0[_wgslsmith_index_u32(var_1.e.a.x, 8u)], false, true)), any(var_1.a))), _wgslsmith_mult_i32(~abs(-1i), firstLeadingBit(_wgslsmith_sub_i32(-2147483647i, arg_2.x) << (~1u % 32u))), var_1.d, Struct_1(false), Struct_2(_wgslsmith_add_vec4_u32(var_1.e.a ^ ~var_2.a.a, var_1.e.a)));
    return Struct_3(vec4<bool>(!(!global0[_wgslsmith_index_u32(var_2.a.a.x, 8u)]), all(vec4<bool>(var_1.a.x, arg_0.a.a.x < arg_3.a.x, -2147483647i == var_1.b, false)), true, all(vec2<bool>(select(true, var_1.c.a, false), func_3(1u, Struct_3(var_1.a, -2147483647i, var_1.c, var_1.c, Struct_2(vec4<u32>(4294967295u, 1u, var_1.e.a.x, arg_1.a.x))))))), -2147483647i, Struct_1(false), var_1.c, func_4(1u, var_1.b, arg_0));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !global0[_wgslsmith_index_u32(countOneBits(~_wgslsmith_dot_vec2_u32(abs(vec2<u32>(u_input.a, u_input.b)), ~vec2<u32>(106311u, 1u))), 8u)];
    var var_1 = func_5(Struct_4(func_4(_wgslsmith_div_u32(u_input.a, 23597u), -2147483647i, Struct_4(func_1(5440u, vec3<bool>(global0[_wgslsmith_index_u32(u_input.a, 8u)], true, global0[_wgslsmith_index_u32(1u, 8u)]))))), Struct_2(vec4<u32>(~u_input.a, u_input.a >> (func_1(u_input.a, vec3<bool>(true, global0[_wgslsmith_index_u32(31409u, 8u)], true)).a.x % 32u), _wgslsmith_clamp_u32(u_input.a, ~u_input.b, ~0u), _wgslsmith_sub_u32(~u_input.b, u_input.b))), vec3<i32>(min(i32(-1i) * -2147483647i, -_wgslsmith_add_i32(-12563i, -31290i)), _wgslsmith_sub_i32(_wgslsmith_mult_i32(firstTrailingBit(-1i), ~(-1i)), -31492i), 0i), func_2());
    var_1 = func_5(Struct_4(var_1.e), Struct_2(var_1.e.a), -_wgslsmith_mult_vec3_i32(~(vec3<i32>(69575i, 0i, var_1.b) ^ vec3<i32>(45376i, var_1.b, var_1.b)), ~(-vec3<i32>(var_1.b, -9418i, -12213i))), var_1.e);
    var var_2 = _wgslsmith_f_op_f32(-1305f + _wgslsmith_f_op_f32(-374f - 2023f));
    global0 = array<bool, 8>();
    var var_3 = vec3<i32>(_wgslsmith_mod_i32(-41097i, var_1.b), 1i, ~max(_wgslsmith_sub_i32(var_1.b, var_1.b), ~2147483647i) & -1i);
    let var_4 = var_1.e;
    var_2 = 449f;
    let x = u_input.a;
    s_output = StorageBuffer(max(vec3<i32>(countOneBits(_wgslsmith_mod_i32(2147483647i, 1i)), abs(var_1.b) ^ (var_3.x & var_3.x), -5033i), -(~(~vec3<i32>(var_1.b, -8922i, -7410i)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(-2108f)), _wgslsmith_f_op_f32(-117f * _wgslsmith_f_op_f32(677f - 449f)), var_1.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1004f * -363f))), -1270f, vec4<f32>(_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(1000f, -1000f)))), _wgslsmith_f_op_f32(round(1422f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(579f, _wgslsmith_f_op_f32(select(385f, 1242f, true)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -318f)))));
}


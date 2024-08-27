struct Struct_1 {
    a: vec3<i32>,
    b: f32,
    c: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: u32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec2<u32>,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 25> = array<Struct_1, 25>(Struct_1(vec3<i32>(22235i, -5756i, 2767i), -620f, -661f), Struct_1(vec3<i32>(0i, i32(-2147483648), 30368i), -1409f, -651f), Struct_1(vec3<i32>(0i, 8625i, 20582i), -341f, 937f), Struct_1(vec3<i32>(i32(-2147483648), -28259i, 0i), -1164f, -154f), Struct_1(vec3<i32>(32723i, 2147483647i, 62434i), -1912f, 143f), Struct_1(vec3<i32>(-1i, -1i, 24447i), -1711f, -1000f), Struct_1(vec3<i32>(-31225i, -46117i, -28411i), 842f, 159f), Struct_1(vec3<i32>(-9685i, 2147483647i, 1i), 1485f, 213f), Struct_1(vec3<i32>(1i, 33396i, 20529i), 138f, -1000f), Struct_1(vec3<i32>(71800i, 1i, 2147483647i), -1221f, 189f), Struct_1(vec3<i32>(-17989i, -3351i, -869i), -473f, 1195f), Struct_1(vec3<i32>(i32(-2147483648), 2147483647i, 0i), -715f, -122f), Struct_1(vec3<i32>(-17766i, -1i, 1i), 1006f, -403f), Struct_1(vec3<i32>(15689i, -1809i, -25271i), 996f, -750f), Struct_1(vec3<i32>(-1i, 35293i, 8330i), -733f, 810f), Struct_1(vec3<i32>(-1i, 14247i, 2147483647i), 538f, 350f), Struct_1(vec3<i32>(2147483647i, i32(-2147483648), 25322i), 768f, 833f), Struct_1(vec3<i32>(i32(-2147483648), i32(-2147483648), 1i), 448f, -1017f), Struct_1(vec3<i32>(-61065i, 22429i, -26877i), -285f, 794f), Struct_1(vec3<i32>(-29876i, 45522i, -1i), 475f, 1000f), Struct_1(vec3<i32>(-23969i, 0i, 33827i), 861f, 481f), Struct_1(vec3<i32>(-1i, 16264i, -604i), 1137f, -419f), Struct_1(vec3<i32>(-52888i, -1741i, -11891i), -1832f, -593f), Struct_1(vec3<i32>(-7276i, -22253i, -38351i), -144f, -1326f), Struct_1(vec3<i32>(i32(-2147483648), 12905i, -39084i), -884f, -149f));

var<private> global1: array<Struct_1, 10> = array<Struct_1, 10>(Struct_1(vec3<i32>(2147483647i, 1i, -25217i), 420f, -1961f), Struct_1(vec3<i32>(i32(-2147483648), -2722i, 1i), 1785f, -1642f), Struct_1(vec3<i32>(47624i, 31356i, -1i), 397f, -614f), Struct_1(vec3<i32>(1i, i32(-2147483648), -37269i), 1000f, 1372f), Struct_1(vec3<i32>(44414i, i32(-2147483648), -14730i), -1000f, 1056f), Struct_1(vec3<i32>(-1i, 18868i, 50782i), 682f, -100f), Struct_1(vec3<i32>(2147483647i, i32(-2147483648), 9224i), 1000f, 788f), Struct_1(vec3<i32>(-24374i, 8735i, -15279i), 1760f, 382f), Struct_1(vec3<i32>(-5925i, 71089i, 46572i), -1211f, -1686f), Struct_1(vec3<i32>(-23746i, 7125i, -1i), -525f, 1142f));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_1) -> vec3<i32> {
    var var_0 = arg_1;
    var var_1 = 26007u;
    var var_2 = !vec3<bool>(false, !any(vec2<bool>(false, true)), true);
    var var_3 = var_2.x;
    global0 = array<Struct_1, 25>();
    return min(vec3<i32>(_wgslsmith_mult_i32(arg_1.a.x, 2147483647i) & max(-1i, 0i), arg_0.x | -1i, 2147483647i), _wgslsmith_mult_vec3_i32(arg_1.a, vec3<i32>(1i, arg_1.a.x, reverseBits(1i)))) >> (vec3<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, 1u), u_input.a), _wgslsmith_div_vec2_u32(u_input.a, u_input.a)) << (50306u % 32u), u_input.a.x, ~19275u) % vec3<u32>(32u));
}

fn func_2() -> u32 {
    let var_0 = Struct_1(-func_3(~_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.e, -1i, u_input.d), vec3<i32>(0i, u_input.e, u_input.e)), Struct_1(vec3<i32>(1i, u_input.e, u_input.e) << (vec3<u32>(0u, u_input.b, u_input.b) % vec3<u32>(32u)), _wgslsmith_f_op_f32(step(1000f, -194f)), _wgslsmith_f_op_f32(339f * 1424f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(721f, -439f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-553f, 366f)))))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(284f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-623f + -268f))))))));
    global0 = array<Struct_1, 25>();
    var var_1 = true;
    var var_2 = var_0;
    var_1 = !(var_0.b == _wgslsmith_f_op_f32(var_0.c + _wgslsmith_f_op_f32(1561f - _wgslsmith_f_op_f32(ceil(-708f)))));
    return reverseBits(~firstLeadingBit(49205u));
}

fn func_4(arg_0: vec3<u32>, arg_1: i32, arg_2: vec3<bool>, arg_3: Struct_1) -> f32 {
    var var_0 = min(_wgslsmith_div_u32(~arg_0.x, u_input.b), _wgslsmith_mult_u32(~(~u_input.b), firstTrailingBit(~(~1u))));
    var var_1 = vec2<f32>(508f, arg_3.b);
    global0 = array<Struct_1, 25>();
    var var_2 = Struct_1(arg_3.a, _wgslsmith_div_f32(arg_3.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(arg_3.c)), _wgslsmith_f_op_f32(floor(1000f)), any(vec2<bool>(true, arg_2.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1588f + 1470f)))));
    let var_3 = !((select(arg_2.x, true, all(arg_2.zy)) | true) || true);
    return _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_2.b + var_1.x), var_1.x));
}

fn func_1(arg_0: i32, arg_1: vec4<u32>) -> u32 {
    global1 = array<Struct_1, 10>();
    global1 = array<Struct_1, 10>();
    var var_0 = Struct_1(firstTrailingBit(vec3<i32>(abs(~arg_0), u_input.d, abs(u_input.e ^ u_input.e))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_4(~arg_1.yxw, abs(26094i), select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), false), global0[_wgslsmith_index_u32(func_2(), 25u)])), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-742f + 1495f))), all(vec2<bool>(false, false)) | select(true, true, false))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
    global0 = array<Struct_1, 25>();
    var_0 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(min(u_input.a, ~vec2<u32>(~8537u, 1u)), _wgslsmith_sub_vec2_u32(vec2<u32>(~0u, arg_1.x), abs(u_input.a))), 25u)];
    return 4294967295u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(sign(-356f));
    global1 = array<Struct_1, 10>();
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1000f))) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_0 * -776f))));
    var var_2 = func_1(u_input.d, ~(~(vec4<u32>(u_input.a.x, u_input.a.x, 4294967295u, u_input.c) ^ vec4<u32>(u_input.b, 23869u, 27901u, 5665u)))) >> ((~1u >> (_wgslsmith_dot_vec4_u32(~select(vec4<u32>(47582u, 110373u, 31409u, u_input.b), vec4<u32>(u_input.a.x, u_input.b, u_input.a.x, 33229u), vec4<bool>(true, true, false, true)), _wgslsmith_add_vec4_u32(~vec4<u32>(u_input.c, u_input.a.x, 4294967295u, 8177u), vec4<u32>(4294967295u, u_input.c, 4294967295u, 4294967295u))) % 32u)) % 32u);
    global0 = array<Struct_1, 25>();
    let var_3 = select(vec3<i32>(_wgslsmith_clamp_i32(1i, -17278i, ~u_input.e), i32(-1i) * -1i, ~u_input.d), vec3<i32>(_wgslsmith_add_i32(1i, firstLeadingBit(-10141i)), 0i, _wgslsmith_add_i32(u_input.e, _wgslsmith_mod_i32(_wgslsmith_sub_i32(u_input.d, -38470i), select(-62782i, u_input.e, true)))), !any(vec3<bool>(true, any(vec2<bool>(false, true)), true)));
    let var_4 = vec3<u32>(_wgslsmith_add_u32(25025u, countOneBits(_wgslsmith_mod_u32(u_input.c, 1u))) << (~_wgslsmith_mod_u32(48496u, ~36495u) % 32u), u_input.c, abs(u_input.b & u_input.c));
    var_2 = u_input.c;
    let x = u_input.a;
    s_output = StorageBuffer(~43022u, -vec2<i32>(u_input.d, -1i), abs(vec2<u32>(_wgslsmith_mod_u32(var_4.x, reverseBits(20115u)), ~1u)), var_4.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(var_1, var_0, true)), -114f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(var_1)), var_1)), true)));
}


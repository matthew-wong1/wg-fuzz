struct Struct_1 {
    a: vec2<f32>,
    b: vec4<bool>,
    c: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: vec3<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: vec2<i32> = vec2<i32>(-18907i, -56202i);

var<private> global2: array<bool, 1>;

var<private> global3: f32 = -1138f;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3() -> vec4<bool> {
    var var_0 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-263f * 1000f))), -1200f), !vec4<bool>(true, !(-56765i != global1.x), true, global2[_wgslsmith_index_u32(21678u, 1u)]), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(147f, 2134f) - vec2<f32>(-1784f, -1034f)))) * vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1565f, -2904f) * 1661f), 563f)));
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_0.c.x)) - _wgslsmith_f_op_f32(step(var_0.a.x, _wgslsmith_div_f32(-672f, -1240f)))), -1205f, var_0.b.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_0.c.x + _wgslsmith_f_op_f32(-var_0.a.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_0.a.x))) - var_0.c.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(616f - var_0.c.x)) - var_0.c.x) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.a.x), var_0.a.x))), var_0.c.x);
    let var_2 = u_input.e;
    let var_3 = Struct_2(Struct_1(var_1.yw, var_0.b, var_0.c), !select(!(!vec4<bool>(global2[_wgslsmith_index_u32(1u, 1u)], true, true, false)), var_0.b, var_0.b.x | (global2[_wgslsmith_index_u32(u_input.d.x, 1u)] || false)));
    var var_4 = 2147483647i;
    return var_0.b;
}

fn func_2(arg_0: u32) -> vec2<i32> {
    let var_0 = !(!(!select(!vec2<bool>(global2[_wgslsmith_index_u32(1u, 1u)], false), vec2<bool>(true, true), select(true, global2[_wgslsmith_index_u32(arg_0, 1u)], true))));
    var var_1 = Struct_2(Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-688f, 1000f), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1136f, 1148f) + vec2<f32>(-215f, -1660f)), vec2<bool>(var_0.x, var_0.x))), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-764f, 366f)))), func_3(), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1f, _wgslsmith_f_op_f32(-119f + -755f))))), !vec4<bool>(global2[_wgslsmith_index_u32(arg_0, 1u)], true, true, true));
    let var_2 = -(~(~(vec3<i32>(-1i, -37530i, -2301i) >> (_wgslsmith_div_vec3_u32(vec3<u32>(0u, u_input.d.x, 4294967295u), vec3<u32>(1u, 5358u, u_input.d.x)) % vec3<u32>(32u)))));
    var var_3 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_1.a.a.x))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + _wgslsmith_f_op_f32(max(var_1.a.a.x, var_1.a.c.x)))), var_1.a.c.x)) <= _wgslsmith_f_op_f32(abs(-828f));
    var_1 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(-var_1.a.a), !(!(!vec4<bool>(global2[_wgslsmith_index_u32(36621u, 1u)], false, var_1.b.x, global2[_wgslsmith_index_u32(52662u, 1u)]))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(475f, -269f) + var_1.a.a), vec2<f32>(var_1.a.c.x, var_1.a.c.x))))), !(!var_1.a.b));
    return vec2<i32>(-(global1.x ^ ~32818i), global1.x);
}

fn func_1(arg_0: i32, arg_1: vec2<bool>, arg_2: Struct_1, arg_3: bool) -> f32 {
    global1 = func_2(_wgslsmith_dot_vec2_u32(abs(abs(~vec2<u32>(4294967295u, u_input.d.x))), ~u_input.d.yz));
    global2 = array<bool, 1>();
    global0 = !select(global2[_wgslsmith_index_u32(83027u, 1u)] & true, all(select(!vec3<bool>(true, arg_2.b.x, arg_3), arg_2.b.zzw, any(vec3<bool>(false, false, arg_3)))), false);
    var var_0 = firstTrailingBit(vec4<u32>(~abs(firstTrailingBit(u_input.d.x)), _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(0u, 57823u, 4294967295u, 1u), vec4<u32>(u_input.d.x, 52888u, 42182u, u_input.d.x)), vec4<u32>(u_input.d.x, 4294967295u, u_input.d.x, 4294967295u)) << ((u_input.d.x << (u_input.d.x % 32u)) % 32u), 54980u, _wgslsmith_dot_vec4_u32(vec4<u32>(abs(u_input.d.x), u_input.d.x ^ 4294967295u, u_input.d.x, ~u_input.d.x), min(vec4<u32>(4377u, 1u, 0u, 4294967295u), ~vec4<u32>(42575u, 101245u, u_input.d.x, 62722u)))));
    var var_1 = Struct_2(arg_2, !(!select(vec4<bool>(true, global2[_wgslsmith_index_u32(var_0.x, 1u)], arg_1.x, global2[_wgslsmith_index_u32(1u, 1u)]), vec4<bool>(arg_2.b.x, false, arg_1.x, false), true)));
    return _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-676f, _wgslsmith_f_op_f32(ceil(arg_2.a.x)))))))));
}

fn func_4(arg_0: vec2<bool>) -> vec4<i32> {
    var var_0 = any(arg_0);
    let var_1 = vec2<bool>(!(!select(!global2[_wgslsmith_index_u32(50929u, 1u)], select(false, true, arg_0.x), arg_0.x)), min(110085u, ~firstTrailingBit(u_input.d.x)) > 65490u);
    global2 = array<bool, 1>();
    var var_2 = ~u_input.d.x;
    global1 = _wgslsmith_sub_vec2_i32(_wgslsmith_sub_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(1i, 1i), max(vec2<i32>(global1.x, -13636i), vec2<i32>(72627i, -8759i))) | ~(vec2<i32>(global1.x, u_input.a) << (u_input.d.zx % vec2<u32>(32u))), abs(~vec2<i32>(0i, 6639i))), _wgslsmith_mod_vec2_i32(abs(-vec2<i32>(global1.x, u_input.a)) >> (vec2<u32>(4294967295u, ~u_input.d.x) % vec2<u32>(32u)), ~vec2<i32>(u_input.a, i32(-1i) * -2147483647i)));
    return reverseBits(-(_wgslsmith_mult_vec4_i32(vec4<i32>(-80218i, u_input.b, 1i, u_input.b), vec4<i32>(global1.x, 44794i, 0i, 14278i)) >> (~vec4<u32>(u_input.d.x, u_input.d.x, 1u, u_input.d.x) % vec4<u32>(32u))) ^ vec4<i32>(85421i, global1.x, -u_input.e << (countOneBits(24734u) % 32u), _wgslsmith_add_i32(_wgslsmith_div_i32(78067i, -2147483647i), global1.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(vec2<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(global1.x, vec2<bool>(global2[_wgslsmith_index_u32(u_input.d.x, 1u)], global2[_wgslsmith_index_u32(0u, 1u)]), Struct_1(vec2<f32>(-2045f, 826f), vec4<bool>(false, true, global2[_wgslsmith_index_u32(u_input.d.x, 1u)], true), vec2<f32>(-372f, 409f)), true)) + _wgslsmith_f_op_f32(f32(-1f) * -827f)) == 605f, !(!func_3().x)));
    var var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-797f, -1492f), vec2<f32>(-1258f, 1679f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -806f))))))), !vec4<bool>(any(func_3()), select(u_input.d.x > 78810u, global2[_wgslsmith_index_u32(33378u, 1u)] && global2[_wgslsmith_index_u32(71493u, 1u)], true), true, _wgslsmith_f_op_f32(select(783f, 1000f, true)) == _wgslsmith_div_f32(-715f, -1441f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-114f, -489f)))) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(466f, 1133f)), vec2<f32>(_wgslsmith_div_f32(-647f, -2194f), 1942f))));
    var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_1.a + _wgslsmith_f_op_vec2_f32(var_1.a - _wgslsmith_f_op_vec2_f32(-vec2<f32>(1001f, 270f))))), vec4<bool>(!any(vec3<bool>(var_1.b.x, true, false)), true, all(vec4<bool>(u_input.d.x != u_input.d.x, any(var_1.b.zx), true, var_1.b.x & var_1.b.x)), global2[_wgslsmith_index_u32(78900u, 1u)]), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(var_1.c)) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(var_1.c, var_1.a, var_1.b.x)) - vec2<f32>(var_1.a.x, -106f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_1.a * vec2<f32>(var_1.c.x, -1687f))) - _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(var_1.a * var_1.c)))))));
    var var_2 = _wgslsmith_mult_vec4_i32(var_0, var_0);
    var var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(round(var_1.a)), vec4<bool>(!func_3().x, true, any(vec3<bool>(var_1.a.x <= var_1.c.x, any(vec4<bool>(false, true, var_1.b.x, var_1.b.x)), !global2[_wgslsmith_index_u32(25277u, 1u)])), true), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-var_1.c))));
    var_2 = _wgslsmith_clamp_vec4_i32(vec4<i32>(func_4(vec2<bool>(true, true)).x, -1i, -2634i, 1i), -max(_wgslsmith_add_vec4_i32(vec4<i32>(var_2.x, 33253i, 2147483647i, -1317i) & vec4<i32>(-12135i, u_input.a, var_0.x, global1.x), vec4<i32>(-2147483647i, 52291i, var_2.x, global1.x)), abs(_wgslsmith_add_vec4_i32(var_0, var_0))), var_0);
    let var_4 = min(~u_input.d.x, u_input.d.x);
    let x = u_input.a;
    s_output = StorageBuffer(var_0.ywz, ~(~_wgslsmith_mod_vec2_u32(~u_input.d.xy, ~u_input.d.yx)));
}


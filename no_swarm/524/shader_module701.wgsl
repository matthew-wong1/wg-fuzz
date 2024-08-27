struct Struct_1 {
    a: i32,
    b: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 9>;

var<private> global1: i32;

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_2() -> vec2<f32> {
    global0 = array<Struct_1, 9>();
    let var_0 = 1u;
    let var_1 = global0[_wgslsmith_index_u32(var_0, 9u)];
    var var_2 = ~_wgslsmith_sub_vec3_i32(_wgslsmith_mod_vec3_i32(_wgslsmith_add_vec3_i32(reverseBits(vec3<i32>(0i, var_1.b, var_1.a)), reverseBits(vec3<i32>(var_1.a, var_1.a, -62985i))), _wgslsmith_mult_vec3_i32(reverseBits(vec3<i32>(var_1.b, var_1.b, -2147483647i)), ~vec3<i32>(7325i, -50653i, var_1.a))), vec3<i32>(-2147483647i, countOneBits(5572i), var_1.a));
    return _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(982f, -2116f) * vec2<f32>(203f, -536f))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-308f, -569f) - vec2<f32>(-154f, 1186f)) * vec2<f32>(1000f, -1051f)))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1000f, _wgslsmith_f_op_f32(abs(-728f))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-514f, 1464f)), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-162f, -1724f)))))))))));
}

fn func_3() -> f32 {
    let var_0 = Struct_1(~min(-23271i, 0i), -2147483647i);
    var var_1 = _wgslsmith_sub_vec2_u32(u_input.a.zx, _wgslsmith_add_vec2_u32(min(vec2<u32>(1u, u_input.a.x), ~u_input.a.ww), max(countOneBits(u_input.a.yy), vec2<u32>(u_input.a.x, 4294967295u))) | u_input.a.yw);
    global0 = array<Struct_1, 9>();
    var var_2 = global0[_wgslsmith_index_u32(149u, 9u)];
    var var_3 = Struct_1(3613i, var_2.a);
    return _wgslsmith_f_op_f32(min(-1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -583f) - _wgslsmith_f_op_vec2_f32(func_2()).x) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_vec2_f32(func_2()).x - _wgslsmith_f_op_f32(814f * 704f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -100f))))));
}

fn func_1() -> StorageBuffer {
    var var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(195f, 1000f) - vec2<f32>(1096f, 1637f)) + _wgslsmith_f_op_vec2_f32(func_2())) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(302f, -1115f) - vec2<f32>(826f, -1013f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(169f, -468f)))), vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -195f), _wgslsmith_f_op_f32(1566f * 642f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(229f)) - _wgslsmith_f_op_f32(min(-1000f, 802f)))))), vec2<f32>(-345f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(283f, -1941f)) - 1f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-237f)) * _wgslsmith_f_op_f32(-685f - 1999f)))));
    var var_1 = _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-197f - var_0.x)), var_0.x, 608f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3()))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(166f, _wgslsmith_f_op_f32(-2836f + -570f), var_0.x, var_0.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1003f, var_0.x, -1724f, -1204f)), true)), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(func_3()), var_0.x, _wgslsmith_f_op_f32(round(-145f)), _wgslsmith_f_op_f32(abs(var_0.x))), vec4<f32>(var_0.x, _wgslsmith_f_op_f32(f32(-1f) * -759f), _wgslsmith_f_op_f32(774f * 586f), var_0.x))))));
    let var_2 = global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(~66575u, 4294967295u), 9u)];
    var var_3 = _wgslsmith_mod_u32(4294967295u, countOneBits(u_input.a.x));
    global1 = _wgslsmith_mod_i32(max(_wgslsmith_dot_vec3_i32(firstTrailingBit(_wgslsmith_div_vec3_i32(vec3<i32>(2147483647i, -24458i, var_2.b), vec3<i32>(-65572i, var_2.a, var_2.b))), vec3<i32>(25565i, var_2.a, -1i) & ~vec3<i32>(var_2.b, var_2.b, -5617i)), var_2.b), select(var_2.b, 2147483647i & -min(var_2.b, -8600i), select(var_2.b <= var_2.a, true, false) & any(vec4<bool>(false, false, false, true))));
    return StorageBuffer(var_0.x, vec3<i32>(-_wgslsmith_div_i32(1i, abs(var_2.a)), var_2.a, var_2.a));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !select(vec3<bool>(false, true, false), !(!select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), true)), true);
    let x = u_input.a;
    s_output = func_1();
}


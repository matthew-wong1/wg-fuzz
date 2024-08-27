struct Struct_1 {
    a: vec2<u32>,
    b: f32,
    c: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<bool>,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec4<u32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec4<i32>,
    d: vec4<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 32>;

var<private> global1: array<Struct_1, 31>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2, arg_2: u32) -> i32 {
    global1 = array<Struct_1, 31>();
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.b * _wgslsmith_f_op_f32(trunc(215f))) - _wgslsmith_f_op_f32(f32(-1f) * -513f)), _wgslsmith_f_op_f32(-arg_1.a.b));
    global0 = array<bool, 32>();
    let var_1 = u_input.d;
    global1 = array<Struct_1, 31>();
    return 2147483647i;
}

fn func_2(arg_0: vec3<bool>) -> f32 {
    var var_0 = ~4294967295u;
    let var_1 = global0[_wgslsmith_index_u32(select(u_input.b.x, _wgslsmith_div_u32(28313u << (u_input.b.x % 32u), 29544u), true), 32u)];
    let var_2 = -(~func_3(global1[_wgslsmith_index_u32(~u_input.b.x >> (~40954u % 32u), 31u)], Struct_2(global1[_wgslsmith_index_u32(countOneBits(u_input.c.x), 31u)], global1[_wgslsmith_index_u32(1u, 31u)], select(vec4<bool>(true, arg_0.x, global0[_wgslsmith_index_u32(u_input.c.x, 32u)], global0[_wgslsmith_index_u32(u_input.c.x, 32u)]), vec4<bool>(true, arg_0.x, false, arg_0.x), global0[_wgslsmith_index_u32(u_input.c.x, 32u)]), Struct_1(u_input.b, 694f, vec4<bool>(true, global0[_wgslsmith_index_u32(1233u, 32u)], global0[_wgslsmith_index_u32(u_input.b.x, 32u)], global0[_wgslsmith_index_u32(u_input.b.x, 32u)]))), _wgslsmith_mult_u32(1u >> (1u % 32u), _wgslsmith_clamp_u32(0u, 4294967295u, 24959u))));
    var var_3 = vec3<i32>(var_2, u_input.a, _wgslsmith_dot_vec2_i32(vec2<i32>(-100199i, 1i), -abs(vec2<i32>(-9651i, u_input.e))));
    global1 = array<Struct_1, 31>();
    return _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-191f * -1028f)));
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: bool, arg_3: vec2<f32>) -> Struct_2 {
    global1 = array<Struct_1, 31>();
    var var_0 = _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_3.x, -124f, _wgslsmith_f_op_f32(func_2(arg_1.c.zwy)), arg_1.b)));
    let var_1 = Struct_2(Struct_1(~(~vec2<u32>(u_input.c.x, 37378u)), 1202f, arg_1.c), Struct_1(~vec2<u32>(39667u, 0u), -711f, select(vec4<bool>(arg_1.c.x, true, 10804i > u_input.e, false), select(arg_1.c, arg_1.c, true), select(vec4<bool>(arg_2, true, true, arg_1.c.x), arg_1.c, arg_1.c.x && global0[_wgslsmith_index_u32(40700u, 32u)]))), vec4<bool>(all(vec3<bool>(!arg_1.c.x, true, !arg_2)), true, true, 1u > ~max(u_input.c.x, 4294967295u)), arg_1);
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_0.x - 1000f), _wgslsmith_f_op_f32(-var_0.x), true)))));
    let var_3 = _wgslsmith_div_vec2_i32(_wgslsmith_sub_vec2_i32(-_wgslsmith_sub_vec2_i32(vec2<i32>(arg_0, -16719i), vec2<i32>(arg_0, 28123i)), _wgslsmith_div_vec2_i32(abs(vec2<i32>(-1i, 32856i)), vec2<i32>(u_input.a, u_input.e))), ~vec2<i32>(_wgslsmith_div_i32(u_input.e, u_input.a), 3356i)) & vec2<i32>(2147483647i, _wgslsmith_add_i32(arg_0, -10001i));
    return var_1;
}

fn func_1() -> StorageBuffer {
    global0 = array<bool, 32>();
    global1 = array<Struct_1, 31>();
    let var_0 = func_4(u_input.a, global1[_wgslsmith_index_u32(reverseBits(~u_input.b.x), 31u)], _wgslsmith_f_op_f32(func_2(!select(vec3<bool>(false, true, global0[_wgslsmith_index_u32(4294967295u, 32u)]), vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 32u)], global0[_wgslsmith_index_u32(1u, 32u)], global0[_wgslsmith_index_u32(u_input.b.x, 32u)]), vec3<bool>(false, false, global0[_wgslsmith_index_u32(32641u, 32u)])))) > _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(-833f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(626f, -1132f)))), vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-176f + -324f), -966f)))), _wgslsmith_f_op_f32(1225f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-847f, -1356f)) - _wgslsmith_f_op_f32(-791f * 1000f)))));
    global1 = array<Struct_1, 31>();
    global1 = array<Struct_1, 31>();
    return StorageBuffer(_wgslsmith_mult_vec3_i32(vec3<i32>(-35258i, -1i, -9425i), ~vec3<i32>(u_input.e, u_input.a << (1u % 32u), u_input.d)), firstTrailingBit(~func_4(u_input.d, Struct_1(var_0.d.a, -1007f, vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.c.x, 32u)], global0[_wgslsmith_index_u32(u_input.c.x, 32u)], global0[_wgslsmith_index_u32(21151u, 32u)])), any(vec2<bool>(true, false)), _wgslsmith_div_vec2_f32(vec2<f32>(var_0.a.b, 1230f), vec2<f32>(var_0.d.b, var_0.b.b))).d.a.x), vec4<i32>(29259i & _wgslsmith_clamp_i32(u_input.e, _wgslsmith_mod_i32(-30493i, u_input.a), abs(15564i)), _wgslsmith_div_i32(36531i, -2147483647i), ~_wgslsmith_mod_i32(u_input.d, _wgslsmith_mult_i32(u_input.a, 2147483647i)), _wgslsmith_sub_i32(-29261i, select(u_input.e, 15244i, true))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(841f, -159f, -417f, var_0.b.b))))))), _wgslsmith_add_i32(-(-1i << (var_0.a.a.x % 32u)), ~u_input.a >> (u_input.c.x % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 32>();
    var var_0 = -firstTrailingBit(select(_wgslsmith_div_vec2_i32(vec2<i32>(1i, 1i), vec2<i32>(u_input.d, u_input.e) ^ vec2<i32>(-1i, -1i)), vec2<i32>(-15211i, u_input.d >> (u_input.b.x % 32u)), global0[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(18173u, 4294967295u, 16524u), 32u)]));
    global1 = array<Struct_1, 31>();
    var_0 = vec2<i32>(var_0.x, var_0.x);
    let var_1 = ~_wgslsmith_div_vec4_u32(~vec4<u32>(_wgslsmith_mult_u32(126836u, 1u), 1u, u_input.c.x, 67920u), ~vec4<u32>(~u_input.c.x, ~1u, u_input.c.x, 1u));
    let x = u_input.a;
    s_output = func_1();
}


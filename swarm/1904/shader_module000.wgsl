struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: Struct_2,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: array<f32, 2>;

var<private> global2: array<Struct_1, 28>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_3, arg_1: u32) -> vec3<bool> {
    let var_0 = Struct_1(vec4<u32>(select(0u, ~(~arg_0.b.a.x), arg_0.c.a), ~(_wgslsmith_clamp_u32(4294967295u, u_input.b, arg_1) >> (arg_1 % 32u)), arg_1 ^ _wgslsmith_dot_vec4_u32(arg_0.b.a | vec4<u32>(u_input.b, 52808u, arg_0.b.a.x, arg_0.b.a.x), ~vec4<u32>(4294967295u, 19200u, arg_1, 31796u)), 32409u));
    global1 = array<f32, 2>();
    let var_1 = u_input.c << (0u % 32u);
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-1952f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(arg_0.d.x))))), arg_0.d));
    let var_3 = -69528i;
    return global0.ywz;
}

fn func_2() -> f32 {
    var var_0 = select(vec2<bool>(!(any(vec2<bool>(global0.x, false)) && all(global0.xyx)), all(func_3(Struct_3(Struct_2(global0.x), Struct_1(vec4<u32>(u_input.b, u_input.b, 95u, u_input.b)), Struct_2(global0.x), vec2<f32>(global1[_wgslsmith_index_u32(1u, 2u)], 322f)), ~4294967295u))), vec2<bool>(global0.x, any(global0.zzw)), func_3(Struct_3(Struct_2(!global0.x), global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.b, u_input.b), 28u)], Struct_2(any(vec4<bool>(global0.x, global0.x, global0.x, global0.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global1[_wgslsmith_index_u32(u_input.b, 2u)], 351f) + vec2<f32>(1322f, -904f)))), _wgslsmith_dot_vec3_u32(firstLeadingBit(firstLeadingBit(vec3<u32>(u_input.b, 0u, u_input.b))), vec3<u32>(select(4428u, 4294967295u, global0.x), max(u_input.b, 24861u), min(u_input.b, 23149u)))).zx);
    let var_1 = _wgslsmith_mod_i32(reverseBits(u_input.c), select(~_wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.c, -22134i, 0i, -1i), vec4<i32>(u_input.c, 1i, 1i, -1i)), vec4<i32>(-81545i, u_input.c, 26459i, u_input.a)), u_input.a, _wgslsmith_div_i32(max(0i, u_input.a), ~(-1i)) == _wgslsmith_mod_i32(max(1758i, 9617i), select(u_input.a, u_input.c, global0.x))));
    var var_2 = _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.b, 2u)]) < _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(0u, 2u)]);
    var_0 = global0.xw;
    let var_3 = ~(~vec2<u32>(u_input.b, u_input.b)) >> (_wgslsmith_mod_vec2_u32(~_wgslsmith_sub_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(47300u, u_input.b), vec2<u32>(31866u, u_input.b)), vec2<u32>(u_input.b, 1u) ^ vec2<u32>(u_input.b, 81724u)), _wgslsmith_sub_vec2_u32(abs(vec2<u32>(54027u, u_input.b) ^ vec2<u32>(1u, u_input.b)), reverseBits(reverseBits(vec2<u32>(39358u, 2215u))))) % vec2<u32>(32u));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(global1[_wgslsmith_index_u32(4294967295u, 2u)], global1[_wgslsmith_index_u32(26254u, 2u)])), -655f)), global1[_wgslsmith_index_u32(max(min(var_3.x, var_3.x >> (1u % 32u)), 4294967295u), 2u)], false)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(~1u, 2u)])) + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(51052u, 2u)]))))));
}

fn func_1(arg_0: Struct_3, arg_1: u32, arg_2: vec4<i32>) -> i32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(36410u, 2u)], _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_0.d.x - arg_0.d.x))), 869f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_2()))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1320f)))));
    global1 = array<f32, 2>();
    let var_1 = arg_0.a;
    let var_2 = firstLeadingBit(~(~arg_0.b.a.ywy));
    global0 = !vec4<bool>(true, all(vec4<bool>(global0.x, any(vec4<bool>(false, var_1.a, var_1.a, arg_0.c.a)), func_3(arg_0, arg_0.b.a.x).x, true)), all(global0.zz), true);
    return ~(-5053i) >> (min(min(54793u, ~var_2.x) ^ arg_1, ~(~reverseBits(32323u))) % 32u);
}

fn func_4(arg_0: vec2<bool>, arg_1: vec4<i32>) -> vec4<u32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(559f, 732f, 1127f)))))) * _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2()) - _wgslsmith_f_op_f32(abs(global1[_wgslsmith_index_u32(32547u, 2u)]))), global1[_wgslsmith_index_u32(0u, 2u)], global1[_wgslsmith_index_u32(abs(4294967295u), 2u)]))));
    var var_1 = global2[_wgslsmith_index_u32(max(~_wgslsmith_div_u32(u_input.b, ~4294967295u & u_input.b), ~(~u_input.b) << ((~(5103u >> (u_input.b % 32u)) & _wgslsmith_mod_u32(select(u_input.b, u_input.b, true), u_input.b)) % 32u)), 28u)];
    let var_2 = true;
    global1 = array<f32, 2>();
    var var_3 = -arg_1.ww;
    return abs(var_1.a);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec4<bool>(!(any(!vec4<bool>(true, global0.x, false, global0.x)) || (-378f == _wgslsmith_f_op_f32(-1000f + global1[_wgslsmith_index_u32(u_input.b, 2u)]))), true, global0.x, global0.x);
    let x = u_input.a;
    s_output = StorageBuffer(func_4(vec2<bool>(all(global0.zy), global0.x), vec4<i32>(u_input.c, func_1(Struct_3(Struct_2(true), Struct_1(vec4<u32>(39701u, u_input.b, 4294967295u, 1u)), Struct_2(global0.x), vec2<f32>(global1[_wgslsmith_index_u32(4294967295u, 2u)], global1[_wgslsmith_index_u32(u_input.b, 2u)])), select(u_input.b, u_input.b, false), -vec4<i32>(26275i, u_input.a, -17884i, u_input.a)), u_input.a, ~1i)), u_input.a ^ u_input.c);
}


struct Struct_1 {
    a: bool,
    b: vec4<bool>,
    c: vec3<f32>,
}

struct Struct_2 {
    a: bool,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 1> = array<Struct_1, 1>(Struct_1(true, vec4<bool>(true, false, true, false), vec3<f32>(-1212f, -946f, 1124f)));

var<private> global1: array<f32, 7> = array<f32, 7>(1963f, 1094f, -405f, -604f, 1244f, 329f, 650f);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> u32 {
    var var_0 = any(!select(select(select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true)), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), false)), vec2<bool>(all(vec3<bool>(true, false, true)), true), vec2<bool>(false, true)));
    let var_1 = global1[_wgslsmith_index_u32(1u, 7u)];
    var var_2 = (-u_input.c ^ reverseBits(min(_wgslsmith_mod_vec3_i32(u_input.c, vec3<i32>(-2147483647i, u_input.b, 0i)), u_input.c))) ^ (vec3<i32>(~min(u_input.c.x, u_input.b), u_input.b, 28162i) | u_input.c);
    global1 = array<f32, 7>();
    let var_3 = max(_wgslsmith_mod_u32(~(u_input.a | 1u), ~abs(u_input.a)) << (u_input.a % 32u), ~u_input.a);
    return _wgslsmith_mult_u32(~(~u_input.a), u_input.a);
}

fn func_2(arg_0: i32) -> Struct_2 {
    let var_0 = _wgslsmith_sub_vec2_i32(u_input.c.zy, u_input.c.zx);
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(floor(-888f)), global1[_wgslsmith_index_u32(30220u, 7u)], -1000f, _wgslsmith_f_op_f32(ceil(396f))) + _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(27807u, 7u)], -169f, 339f, global1[_wgslsmith_index_u32(0u, 7u)]) * vec4<f32>(-1289f, global1[_wgslsmith_index_u32(u_input.a, 7u)], 311f, global1[_wgslsmith_index_u32(u_input.a, 7u)]))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1295f, _wgslsmith_f_op_f32(1140f + global1[_wgslsmith_index_u32(22092u, 7u)]), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.a, 7u)]), _wgslsmith_f_op_f32(sign(1360f))))));
    let var_2 = _wgslsmith_sub_i32(u_input.c.x, 1i);
    var var_3 = ~vec3<u32>(firstLeadingBit(0u), ~u_input.a, 4294967295u) | ~_wgslsmith_clamp_vec3_u32(~(~vec3<u32>(u_input.a, 4294967295u, 4294967295u)), vec3<u32>(u_input.a >> (12572u % 32u), firstLeadingBit(0u), u_input.a), vec3<u32>(4294967295u, _wgslsmith_clamp_u32(8204u, 1u, u_input.a), func_3()));
    global1 = array<f32, 7>();
    return Struct_2(true | (_wgslsmith_f_op_f32(f32(-1f) * -280f) >= global1[_wgslsmith_index_u32(reverseBits(u_input.a & u_input.a), 7u)]), select(select(select(select(vec2<bool>(true, true), vec2<bool>(false, false), false), vec2<bool>(true, true), select(true, true, true)), vec2<bool>(true, true), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true)), all(vec2<bool>(false, true)))), select(vec2<bool>(any(vec2<bool>(true, false)), arg_0 <= var_0.x), !select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true)), false), any(select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false)), select(vec2<bool>(true, false), vec2<bool>(false, true), true)))));
}

fn func_1() -> Struct_1 {
    global0 = array<Struct_1, 1>();
    var var_0 = Struct_2(true, vec2<bool>(true, false));
    global0 = array<Struct_1, 1>();
    var_0 = func_2(-1213i);
    var var_1 = vec2<u32>(min(u_input.a, ~_wgslsmith_mult_u32(u_input.a, u_input.a) << (((u_input.a & 0u) ^ ~u_input.a) % 32u)), _wgslsmith_dot_vec3_u32(firstTrailingBit(_wgslsmith_add_vec3_u32(~vec3<u32>(u_input.a, 0u, u_input.a), ~vec3<u32>(u_input.a, u_input.a, u_input.a))), reverseBits(vec3<u32>(1u, countOneBits(u_input.a), u_input.a))));
    return global0[_wgslsmith_index_u32(1u, 1u)];
}

fn func_4(arg_0: Struct_1) -> vec4<i32> {
    var var_0 = max(_wgslsmith_div_i32(_wgslsmith_clamp_i32(_wgslsmith_add_i32(2147483647i, -12013i), 1i ^ u_input.c.x, i32(-1i) * -35263i), ~(1i | firstTrailingBit(-12945i))), u_input.c.x);
    global1 = array<f32, 7>();
    let var_1 = Struct_1(any(arg_0.b.wwx), !vec4<bool>(true, func_2(8884i).b.x, _wgslsmith_dot_vec2_u32(vec2<u32>(48675u, 4294967295u), vec2<u32>(4294967295u, u_input.a)) <= _wgslsmith_div_u32(u_input.a, u_input.a), all(vec3<bool>(arg_0.a, arg_0.b.x, true))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_0.c)), vec3<f32>(arg_0.c.x, arg_0.c.x, arg_0.c.x), select(arg_0.b.zyw, vec3<bool>(true, true, true), !vec3<bool>(arg_0.a, arg_0.b.x, false)))));
    var var_2 = false;
    let var_3 = 1u;
    return ~(-(~_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.c.x, u_input.c.x, -2147483647i, u_input.b), vec4<i32>(u_input.b, 2147483647i, u_input.c.x, 4090i), abs(vec4<i32>(1i, -1i, 62790i, u_input.b)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = abs(func_4(func_1()));
    var var_1 = global0[_wgslsmith_index_u32(u_input.a | ~(4294967295u ^ u_input.a), 1u)];
    var var_2 = func_1();
    global1 = array<f32, 7>();
    var var_3 = 1373f == _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.a, 7u)] - -1146f) * _wgslsmith_f_op_f32(trunc(607f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.a, 7u)]), var_1.c.x))), 247f));
    let var_4 = var_0;
    var var_5 = _wgslsmith_f_op_vec2_f32(-var_1.c.xx);
    var_3 = true;
    let var_6 = vec3<u32>(4294967295u, ~_wgslsmith_mult_u32(~35685u ^ _wgslsmith_sub_u32(u_input.a, u_input.a), countOneBits(~u_input.a)), 0u);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a);
}


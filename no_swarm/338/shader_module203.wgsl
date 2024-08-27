struct Struct_1 {
    a: f32,
    b: vec3<i32>,
}

struct Struct_2 {
    a: i32,
    b: f32,
}

struct Struct_3 {
    a: vec4<f32>,
    b: vec3<i32>,
    c: vec3<f32>,
    d: f32,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: u32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

var<private> global1: f32;

var<private> global2: array<f32, 4> = array<f32, 4>(-382f, 1062f, 609f, 811f);

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_1() -> Struct_2 {
    let var_0 = 56161u;
    var var_1 = max(_wgslsmith_dot_vec2_i32(-min(u_input.d.yx, vec2<i32>(-1i, u_input.d.x)), u_input.d.yx), firstLeadingBit(-38465i)) < -1i;
    let var_2 = ~(~_wgslsmith_mult_u32(global0.x, var_0));
    var var_3 = vec3<i32>(_wgslsmith_mult_i32(u_input.d.x, 2147483647i), _wgslsmith_add_i32(_wgslsmith_mult_i32(u_input.d.x, 1i << (u_input.b.x % 32u)) >> (_wgslsmith_div_u32(451u, 4294967295u) % 32u), abs(-9301i)), 2667i);
    let var_4 = vec2<u32>(~reverseBits(_wgslsmith_dot_vec2_u32(u_input.b.zy, vec2<u32>(18630u, 0u))), 1u);
    return Struct_2(1i, 199f);
}

fn func_2(arg_0: vec4<bool>) -> i32 {
    global2 = array<f32, 4>();
    let var_0 = func_1();
    global2 = array<f32, 4>();
    global0 = u_input.b;
    var var_1 = !(true | (((u_input.d.x > 6002i) & true) || true));
    return _wgslsmith_mult_i32(var_0.a, var_0.a);
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: u32) -> f32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global2[_wgslsmith_index_u32(44342u, 4u)]))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-360f))), arg_1.a)), arg_1.a, _wgslsmith_f_op_f32(floor(-1340f))));
    let var_1 = Struct_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(sign(484f)), arg_1.a, _wgslsmith_div_f32(global2[_wgslsmith_index_u32(u_input.b.x, 4u)], var_0.x), -1000f))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1117f, global2[_wgslsmith_index_u32(26673u, 4u)], 2087f, arg_1.a)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -501f, -210f, global2[_wgslsmith_index_u32(8125u, 4u)])))), arg_1.b, vec3<f32>(func_1().b, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_2, u_input.b.x, u_input.a.x), u_input.b.zzw), 4u)] * _wgslsmith_f_op_f32(f32(-1f) * -776f)), -1863f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(486f, global2[_wgslsmith_index_u32(u_input.b.x, 4u)])))), _wgslsmith_f_op_f32(sign(796f)), !vec2<bool>(false, all(select(vec3<bool>(true, true, arg_0), vec3<bool>(arg_0, arg_0, arg_0), vec3<bool>(arg_0, arg_0, arg_0)))));
    global0 = ~(~(~vec4<u32>(global0.x, _wgslsmith_clamp_u32(arg_2, u_input.b.x, arg_2), ~arg_2, firstLeadingBit(4294967295u))));
    let var_2 = ~1u;
    global0 = ~_wgslsmith_sub_vec4_u32(~min(u_input.b, vec4<u32>(4294967295u, 29151u, arg_2, arg_2) & vec4<u32>(global0.x, global0.x, 22845u, 10590u)), u_input.b);
    return -872f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = false;
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(u_input.a.x, 4u)] * 284f) * global2[_wgslsmith_index_u32(abs(29352u), 4u)]), _wgslsmith_f_op_f32(f32(-1f) * -1074f));
    global0 = _wgslsmith_div_vec4_u32(select(u_input.b, vec4<u32>(~36929u, ~48289u, 10193u, 61163u) & u_input.b, vec4<bool>(true, any(vec3<bool>(var_0, false, false)), var_0, !(var_0 || true))), u_input.b);
    var var_2 = func_1();
    global1 = 1749f;
    let var_3 = ~u_input.c;
    var var_4 = !vec2<bool>(1u <= _wgslsmith_dot_vec3_u32(global0.zzw, ~global0.zzx), all(!vec2<bool>(var_0, false)));
    let var_5 = var_1;
    let var_6 = Struct_3(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global2[_wgslsmith_index_u32(global0.x, 4u)], -374f, -1069f, 1000f)))))))), vec3<i32>(_wgslsmith_mult_i32(~var_2.a, reverseBits(var_2.a) & 37118i), _wgslsmith_dot_vec3_i32(~u_input.d, vec3<i32>(var_2.a, 9438i, var_2.a)) ^ (reverseBits(u_input.d.x) & -41356i), -func_2(vec4<bool>(true, true, true, true))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, -556f, _wgslsmith_div_f32(-1000f, -451f))) + vec3<f32>(_wgslsmith_f_op_f32(-950f * _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(38346u, 4u)])), _wgslsmith_f_op_f32(ceil(-332f)), _wgslsmith_f_op_f32(-var_5.x))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(~global0.x, 4u)] - _wgslsmith_f_op_f32(round(global2[_wgslsmith_index_u32(u_input.c, 4u)])))))), vec2<bool>(true, !select(true, true, var_0)));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(trunc(109f)), _wgslsmith_f_op_f32(select(var_2.b, _wgslsmith_f_op_f32(max(565f, var_6.d)), true)), _wgslsmith_f_op_f32(func_3(false, Struct_1(1000f, _wgslsmith_div_vec3_i32(u_input.d, vec3<i32>(var_2.a, -1i, 0i))), ~1u))));
}


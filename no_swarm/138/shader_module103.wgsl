struct Struct_1 {
    a: f32,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: vec3<i32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 24> = array<bool, 24>(true, true, false, true, true, true, false, false, false, true, true, false, true, true, false, true, true, false, false, true, false, true, true, false);

var<private> global1: vec2<i32> = vec2<i32>(0i, -1i);

var<private> global2: Struct_1 = Struct_1(160f, vec4<bool>(false, false, false, false));

var<private> global3: array<Struct_1, 16>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_1(arg_0: vec3<f32>) -> Struct_1 {
    global3 = array<Struct_1, 16>();
    global2 = global3[_wgslsmith_index_u32(39021u, 16u)];
    let var_0 = !global2.b.xxw;
    let var_1 = global1.x;
    let var_2 = vec2<u32>(~(~39134u), _wgslsmith_div_u32(0u, _wgslsmith_add_u32(_wgslsmith_div_u32(_wgslsmith_clamp_u32(4294967295u, 119416u, u_input.b), 41904u), countOneBits(u_input.a))));
    return global3[_wgslsmith_index_u32(4294967295u, 16u)];
}

fn func_3(arg_0: Struct_1, arg_1: u32) -> f32 {
    var var_0 = arg_0;
    var_0 = func_1(vec3<f32>(arg_0.a, arg_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1218f)))));
    global1 = countOneBits(_wgslsmith_div_vec2_i32(-vec2<i32>(global1.x, global1.x), firstLeadingBit(select(vec2<i32>(global1.x, global1.x), vec2<i32>(0i, global1.x), global2.b.zz)))) ^ vec2<i32>(_wgslsmith_dot_vec2_i32(min(vec2<i32>(7977i, 7374i) | vec2<i32>(global1.x, -1i), -vec2<i32>(global1.x, global1.x)), max(vec2<i32>(global1.x, global1.x) >> (vec2<u32>(u_input.a, 0u) % vec2<u32>(32u)), _wgslsmith_add_vec2_i32(vec2<i32>(global1.x, 7695i), vec2<i32>(51783i, global1.x)))), ~(-1i));
    global1 = vec2<i32>(1i, ~global1.x);
    var var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1012f) + _wgslsmith_div_f32(-840f, -1313f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a + global2.a) + var_0.a)), 1517f, _wgslsmith_f_op_f32(trunc(-1195f)), 977f));
    return 282f;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<u32>, arg_3: vec3<u32>) -> Struct_1 {
    let var_0 = ~_wgslsmith_add_vec3_i32(_wgslsmith_div_vec3_i32(~vec3<i32>(global1.x, global1.x, global1.x) >> (~arg_3 % vec3<u32>(32u)), vec3<i32>(global1.x, _wgslsmith_mult_i32(global1.x, -11917i), 26852i)), firstTrailingBit(vec3<i32>(global1.x, -55574i, 11359i) << (max(vec3<u32>(1u, 80169u, 1u), arg_3) % vec3<u32>(32u))));
    global0 = array<bool, 24>();
    var var_1 = func_1(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(345f)), _wgslsmith_f_op_f32(-637f * global2.a)))), _wgslsmith_f_op_f32(func_3(arg_0, arg_3.x)), _wgslsmith_f_op_f32(-arg_0.a))).b;
    var var_2 = -_wgslsmith_dot_vec4_i32(firstLeadingBit(-vec4<i32>(1i, 0i, -7188i, var_0.x) >> (_wgslsmith_div_vec4_u32(vec4<u32>(80299u, arg_3.x, 4294967295u, arg_2.x), vec4<u32>(41844u, arg_2.x, 53611u, 15406u)) % vec4<u32>(32u))), vec4<i32>(global1.x, var_0.x, global1.x, var_0.x << (u_input.a % 32u)) ^ vec4<i32>(-53030i >> (0u % 32u), ~260i, _wgslsmith_sub_i32(global1.x, var_0.x), var_0.x));
    var var_3 = true;
    return func_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(abs(arg_1.a)), _wgslsmith_f_op_f32(max(-1000f, global2.a)), _wgslsmith_f_op_f32(global2.a + -1878f)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(arg_0.a, arg_1.a, arg_0.a))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.a, -755f, 1771f) - vec3<f32>(-855f, arg_0.a, arg_0.a))))));
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_1) -> u32 {
    var var_0 = arg_1.b.zzw;
    let var_1 = vec4<u32>(4294967295u, 1u, u_input.b, abs(u_input.b | (firstTrailingBit(4294967295u) & _wgslsmith_clamp_u32(u_input.b, 24780u, 90422u))));
    var_0 = func_1(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.a, -266f, arg_1.a)), vec3<f32>(global2.a, arg_1.a, 1466f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-537f, arg_1.a, 151f))), vec3<f32>(_wgslsmith_f_op_f32(sign(-273f)), func_2(func_2(arg_1, Struct_1(1439f, global2.b), vec3<u32>(var_1.x, u_input.b, u_input.a), var_1.ywz), arg_1, var_1.wwx & vec3<u32>(var_1.x, u_input.a, 1u), var_1.zyy).a, arg_1.a)))).b.xxx;
    var var_2 = true;
    global2 = func_1(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global2.a, arg_1.a, 214f) * vec3<f32>(global2.a, arg_1.a, -1031f)) + _wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_1.a, arg_1.a, global2.a), vec3<f32>(-1232f, arg_1.a, arg_1.a)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(314f, arg_1.a, 1000f)))))));
    return 58745u;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 24>();
    global0 = array<bool, 24>();
    var var_0 = global3[_wgslsmith_index_u32(_wgslsmith_add_u32(countOneBits(95070u), func_4(select(vec3<bool>(global2.b.x, all(global2.b), true), vec3<bool>(any(vec4<bool>(global0[_wgslsmith_index_u32(11172u, 24u)], global0[_wgslsmith_index_u32(27165u, 24u)], true, false)), false && global2.b.x, false), global0[_wgslsmith_index_u32(firstLeadingBit(u_input.b), 24u)]), func_2(func_1(vec3<f32>(382f, global2.a, global2.a)), func_1(vec3<f32>(global2.a, -310f, global2.a)), vec3<u32>(32607u, u_input.a, firstLeadingBit(1u)), _wgslsmith_div_vec3_u32(vec3<u32>(0u, u_input.a, u_input.b), max(vec3<u32>(u_input.b, u_input.a, u_input.a), vec3<u32>(4294967295u, u_input.a, u_input.a)))))), 16u)];
    var var_1 = Struct_1(-1064f, var_0.b);
    let var_2 = -(-min(min(vec2<i32>(0i, global1.x), vec2<i32>(global1.x, global1.x)), select(vec2<i32>(global1.x, global1.x), vec2<i32>(global1.x, global1.x), var_0.b.yy)) >> (~(~(~vec2<u32>(81162u, 1u))) % vec2<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(-751f, vec2<i32>(~_wgslsmith_div_i32(global1.x, firstLeadingBit(var_2.x)), 11860i), vec3<i32>(min(abs(1i), _wgslsmith_add_i32(_wgslsmith_add_i32(-2147483647i, 0i), ~(-2147483647i))), 1i, _wgslsmith_dot_vec3_i32(vec3<i32>(-26438i, _wgslsmith_dot_vec4_i32(vec4<i32>(1i, var_2.x, global1.x, global1.x), vec4<i32>(63080i, 1i, var_2.x, -2147483647i)), -1i), _wgslsmith_mod_vec3_i32(vec3<i32>(1i, var_2.x, global1.x), _wgslsmith_mod_vec3_i32(vec3<i32>(var_2.x, 1i, 1i), vec3<i32>(53151i, var_2.x, global1.x))))), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_0.a, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(-1110f, 1565f, global2.b.x)))), _wgslsmith_f_op_f32(-global2.a)))));
}


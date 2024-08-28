struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(14278u, 17879u, 0u);

var<private> global1: Struct_1 = Struct_1(i32(-2147483648));

var<private> global2: Struct_1;

var<private> global3: array<f32, 2> = array<f32, 2>(406f, 357f);

var<private> global4: Struct_1;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_2(arg_0: f32) -> u32 {
    return min(_wgslsmith_sub_u32(global0.x, 68813u), _wgslsmith_dot_vec4_u32(abs(firstLeadingBit(vec4<u32>(4294967295u, 1u, global0.x, 0u))) << (vec4<u32>(1u, firstLeadingBit(global0.x), ~34321u, u_input.a) % vec4<u32>(32u)), vec4<u32>(_wgslsmith_clamp_u32(u_input.a, global0.x & 1u, global0.x), ~_wgslsmith_div_u32(global0.x, global0.x), ~24442u, ~u_input.a)));
}

fn func_3() -> bool {
    var var_0 = ~_wgslsmith_mult_u32(16212u, 1u) <= firstTrailingBit(~max(global0.x, countOneBits(u_input.a)));
    return _wgslsmith_add_i32(~(-10364i), ~global1.a) <= (i32(-1i) * -23687i);
}

fn func_1(arg_0: vec4<f32>, arg_1: Struct_1) -> f32 {
    global1 = Struct_1(u_input.b ^ countOneBits(-13045i));
    let var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1173f)) * _wgslsmith_div_f32(325f, 1891f)), -988f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(global3[_wgslsmith_index_u32(1u, 2u)])), arg_0.x)) + vec4<f32>(481f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global3[_wgslsmith_index_u32(func_2(-527f), 2u)], _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(43642u, 2u)]), func_3())) + arg_0.x), arg_0.x, -1447f));
    global0 = ~(~((vec3<u32>(0u, 49095u, global0.x) | vec3<u32>(12182u, 58383u, global0.x)) << ((vec3<u32>(41267u, 79702u, global0.x) ^ vec3<u32>(1u, u_input.a, 89547u)) % vec3<u32>(32u)))) & ~(~select(min(vec3<u32>(0u, 37842u, 16106u), vec3<u32>(global0.x, u_input.a, global0.x)), vec3<u32>(global0.x, 17832u, 15021u) << (vec3<u32>(4294967295u, 47415u, u_input.a) % vec3<u32>(32u)), vec3<bool>(false, true, true)));
    global1 = arg_1;
    var var_1 = _wgslsmith_f_op_vec2_f32(ceil(arg_0.yy));
    return _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_0.x)));
}

fn func_4(arg_0: f32, arg_1: vec4<u32>) -> Struct_1 {
    return Struct_1(2147483647i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(!select(vec3<bool>(true, true, true), vec3<bool>(global3[_wgslsmith_index_u32(20245u, 2u)] > -872f, global3[_wgslsmith_index_u32(61005u, 2u)] != global3[_wgslsmith_index_u32(4294967295u, 2u)], true), false));
    global3 = array<f32, 2>();
    var var_1 = func_4(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1(vec4<f32>(global3[_wgslsmith_index_u32(u_input.a, 2u)], global3[_wgslsmith_index_u32(43343u, 2u)], -448f, 1220f), Struct_1(u_input.b))), -1067f) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(45597u, 2u)])))))), vec4<u32>(~global0.x, 0u, ~_wgslsmith_clamp_u32(u_input.a, 5696u, max(global0.x, 4294967295u)), 74755u));
    global1 = func_4(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-282f + _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(0u, 2u)] + _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(global0.x, 2u)] + 466f))))), firstLeadingBit(vec4<u32>(36023u, _wgslsmith_clamp_u32(countOneBits(58484u), abs(u_input.a), max(20778u, global0.x)), min(~62976u, u_input.a), _wgslsmith_div_u32(76636u, 58320u))));
    global3 = array<f32, 2>();
    let var_2 = firstLeadingBit(46921u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(_wgslsmith_div_vec4_f32(vec4<f32>(global3[_wgslsmith_index_u32(u_input.a, 2u)], 1115f, -854f, global3[_wgslsmith_index_u32(global0.x, 2u)]), vec4<f32>(1177f, global3[_wgslsmith_index_u32(35773u, 2u)], global3[_wgslsmith_index_u32(0u, 2u)], global3[_wgslsmith_index_u32(8263u, 2u)])), func_4(-427f, ~vec4<u32>(13395u, 30348u, u_input.a, 31078u)))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(467f + _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(52946u, 2u)])), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(u_input.a, 2u)]) - _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(u_input.a, 2u)] * global3[_wgslsmith_index_u32(global0.x, 2u)])))), _wgslsmith_mult_vec4_u32(_wgslsmith_add_vec4_u32(~vec4<u32>(u_input.a, global0.x, 40981u, global0.x), reverseBits(vec4<u32>(var_2, 31297u, global0.x, global0.x))), _wgslsmith_clamp_vec4_u32(~(~vec4<u32>(var_2, var_2, 0u, var_2)), vec4<u32>(~var_2, 34439u >> (var_2 % 32u), _wgslsmith_mod_u32(u_input.a, 4294967295u), 55848u), _wgslsmith_div_vec4_u32(vec4<u32>(var_2, u_input.a, 1u, u_input.a), ~vec4<u32>(0u, var_2, u_input.a, global0.x)))), vec3<i32>(global1.a, ~2147483647i & global4.a, global4.a));
}


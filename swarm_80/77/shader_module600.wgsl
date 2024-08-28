struct Struct_1 {
    a: bool,
    b: i32,
    c: vec4<i32>,
    d: vec4<i32>,
    e: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(true, 0i, vec4<i32>(-56105i, -1536i, -41432i, 37350i), vec4<i32>(1i, 8020i, 1i, -57740i), -1i);

var<private> global1: array<bool, 26>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: bool) -> vec4<i32> {
    var var_0 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(615f - -695f), -378f)) + _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 1258f)) * _wgslsmith_div_vec2_f32(vec2<f32>(-1322f, 478f), vec2<f32>(591f, 437f)))))), vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2289f * -1000f)))), 1f)));
    let var_1 = _wgslsmith_f_op_f32(exp2(var_0.x));
    global1 = array<bool, 26>();
    global1 = array<bool, 26>();
    let var_2 = arg_1;
    return reverseBits(vec4<i32>(arg_1.d.x, _wgslsmith_dot_vec3_i32(select(var_2.d.zxz, global0.c.zxx, global1[_wgslsmith_index_u32(u_input.a.x, 26u)]), ~global0.c.yxx), ~u_input.b, ~(~var_2.e))) ^ vec4<i32>(arg_1.d.x, ~u_input.b >> (~select(arg_0.x, arg_0.x, arg_2) % 32u), 1i, abs(-_wgslsmith_div_i32(arg_1.b, var_2.e)));
}

fn func_2() -> i32 {
    global1 = array<bool, 26>();
    var var_0 = ~1i;
    global1 = array<bool, 26>();
    let var_1 = Struct_1(true, firstLeadingBit(-_wgslsmith_sub_i32(u_input.b >> (u_input.a.x % 32u), 8608i)), ~func_3(vec3<u32>(_wgslsmith_mod_u32(u_input.a.x, u_input.a.x), u_input.a.x, u_input.a.x), Struct_1(global0.a, reverseBits(u_input.b), vec4<i32>(78754i, u_input.b, -28703i, u_input.b), global0.c, 32814i), any(vec4<bool>(global1[_wgslsmith_index_u32(1u, 26u)], global0.a, global1[_wgslsmith_index_u32(9811u, 26u)], true))), reverseBits(vec4<i32>(230i, -2147483647i, _wgslsmith_mod_i32(0i, i32(-1i) * -20602i), -2147483647i)), (~global0.e & u_input.b) & _wgslsmith_sub_i32(abs(_wgslsmith_div_i32(-1i, 16356i)), select(global0.c.x, _wgslsmith_sub_i32(-2147483647i, 0i), global1[_wgslsmith_index_u32(1u, 26u)])));
    let var_2 = var_1;
    return _wgslsmith_clamp_i32(-(u_input.b >> ((0u >> (u_input.a.x % 32u)) % 32u)), _wgslsmith_sub_i32(firstTrailingBit(~0i), -global0.e), _wgslsmith_mod_i32(0i, _wgslsmith_dot_vec2_i32(var_1.d.wx, firstLeadingBit(-vec2<i32>(u_input.b, 2147483647i)))));
}

fn func_1() -> vec2<i32> {
    global0 = Struct_1(false || global1[_wgslsmith_index_u32(u_input.a.x, 26u)], _wgslsmith_div_i32(-12609i, u_input.b & func_2()), vec4<i32>(global0.c.x, i32(-1i) * -_wgslsmith_clamp_i32(-9600i, -21342i, 22745i), reverseBits(-13479i), _wgslsmith_dot_vec3_i32(abs(vec3<i32>(u_input.b, u_input.b, -13766i) >> (vec3<u32>(u_input.a.x, 100278u, u_input.a.x) % vec3<u32>(32u))), vec3<i32>(u_input.b | u_input.b, func_2(), _wgslsmith_dot_vec3_i32(vec3<i32>(18016i, 4133i, -2147483647i), global0.d.wxx)))), global0.c, u_input.b);
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-156f, -1486f)))))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1887f - -739f) - 1f))))));
    var var_1 = Struct_1(true, 0i, ~vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, 3817i, -20669i, u_input.b), vec4<i32>(-42421i, u_input.b, global0.c.x, -72436i)), ~_wgslsmith_dot_vec2_i32(global0.c.yw, global0.d.yw), global0.b, ~_wgslsmith_dot_vec4_i32(vec4<i32>(12992i, global0.c.x, -2760i, global0.c.x), vec4<i32>(0i, u_input.b, global0.e, 0i))), global0.d, _wgslsmith_clamp_i32(-2147483647i, 0i, -(~(u_input.b ^ -38654i))));
    var var_2 = Struct_1(false, u_input.b, select(~global0.c, ~vec4<i32>(var_1.e, ~(-2147483647i), i32(-1i) * -2147483647i, 0i), select(!select(vec4<bool>(global1[_wgslsmith_index_u32(1u, 26u)], var_1.a, false, false), vec4<bool>(false, false, true, true), vec4<bool>(global0.a, false, false, true)), select(!vec4<bool>(var_1.a, false, true, true), !vec4<bool>(global1[_wgslsmith_index_u32(51850u, 26u)], global0.a, var_1.a, global1[_wgslsmith_index_u32(11775u, 26u)]), !vec4<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 26u)], global1[_wgslsmith_index_u32(u_input.a.x, 26u)], true, false)), vec4<bool>(1000f != var_0.x, global0.a, false, global1[_wgslsmith_index_u32(~35240u, 26u)]))), _wgslsmith_mod_vec4_i32(_wgslsmith_div_vec4_i32(abs(_wgslsmith_div_vec4_i32(vec4<i32>(-56323i, u_input.b, u_input.b, 1i), vec4<i32>(-1i, u_input.b, global0.c.x, -1i))), vec4<i32>(1i, _wgslsmith_mult_i32(2147483647i, u_input.b), _wgslsmith_clamp_i32(u_input.b, u_input.b, global0.e), ~var_1.d.x)), _wgslsmith_clamp_vec4_i32(~var_1.d, var_1.d, select(select(vec4<i32>(-8239i, -1i, global0.c.x, -38475i), var_1.c, global1[_wgslsmith_index_u32(u_input.a.x, 26u)]), ~var_1.d, true))), _wgslsmith_mult_i32(var_1.d.x, _wgslsmith_add_i32(-u_input.b, 21003i)));
    let var_3 = Struct_1(false, -_wgslsmith_dot_vec3_i32(var_2.c.xxx, vec3<i32>(_wgslsmith_mult_i32(global0.b, 1i), ~40407i, ~(-1i))), vec4<i32>(~1i, 27428i, firstTrailingBit(var_1.b), var_2.b), -reverseBits(global0.d), var_2.c.x);
    return ~countOneBits(global0.d.yx);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var var_1 = vec4<i32>(25132i, -2147483647i, ~_wgslsmith_add_i32(2147483647i, global0.e), u_input.b >> (4294967295u % 32u)) & vec4<i32>(~_wgslsmith_mod_i32(u_input.b << (4294967295u % 32u), 63536i), global0.d.x, _wgslsmith_dot_vec4_i32(-vec4<i32>(53608i, var_0.x, var_0.x, 1i), global0.d >> (~vec4<u32>(0u, 33046u, u_input.a.x, u_input.a.x) % vec4<u32>(32u))), _wgslsmith_dot_vec4_i32(global0.d, global0.d));
    var var_2 = vec2<i32>(global0.b, func_2());
    var var_3 = true;
    global1 = array<bool, 26>();
    let x = u_input.a;
    s_output = StorageBuffer(abs(var_1.x), var_0.x);
}


struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 16>;

var<private> global1: array<vec2<i32>, 8>;

var<private> global2: array<u32, 28> = array<u32, 28>(80607u, 4294967295u, 4294967295u, 57551u, 76859u, 53196u, 1103u, 4294967295u, 50701u, 0u, 4294967295u, 916u, 1u, 4294967295u, 1975u, 4294967295u, 59025u, 4294967295u, 0u, 0u, 16559u, 19770u, 55976u, 1u, 1997u, 9895u, 6072u, 6378u);

var<private> global3: Struct_1;

var<private> global4: array<Struct_2, 23>;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: f32, arg_1: vec3<bool>, arg_2: u32) -> f32 {
    var var_0 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -701f), -676f, -1720f));
    let var_1 = Struct_1(global3.a);
    global3 = Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(-658f, _wgslsmith_f_op_f32(global3.a.x + _wgslsmith_f_op_f32(-global3.a.x)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(2313f + global3.a.x), _wgslsmith_f_op_f32(-var_1.a.x), arg_1.x))) + vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1208f * 204f) - _wgslsmith_f_op_f32(-1189f - global3.a.x)), _wgslsmith_f_op_f32(f32(-1f) * -663f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.a.x + -213f) * -628f))));
    let var_2 = var_1;
    global2 = array<u32, 28>();
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-1484f, -816f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1583f), var_2.a.x, true)));
}

fn func_2(arg_0: vec2<bool>, arg_1: vec3<i32>, arg_2: f32) -> Struct_1 {
    global3 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.a.x) - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global3.a.x - global3.a.x)))), -1000f, -617f));
    global3 = Struct_1(global3.a);
    global1 = array<vec2<i32>, 8>();
    global0 = array<Struct_2, 16>();
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(trunc(global3.a.x)), !vec3<bool>(true, arg_0.x, arg_0.x), 21356u))), -486f, _wgslsmith_f_op_f32(-arg_2), global3.a.x);
    return Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global3.a + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2, -500f, var_0.x) * global3.a), vec3<f32>(var_0.x, 321f, -519f)))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> bool {
    let var_0 = global0[_wgslsmith_index_u32(~(~_wgslsmith_dot_vec3_u32(vec3<u32>(~u_input.b, 12712u & u_input.b, 3729u), vec3<u32>(u_input.b, 1u, u_input.b) << (~vec3<u32>(63952u, u_input.b, 82440u) % vec3<u32>(32u)))), 16u)];
    let var_1 = _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a.x ^ -51179i, ~(~(-u_input.a.x)), ~u_input.a.x, 15365i), abs(vec4<i32>(37123i, ~firstLeadingBit(2147483647i), u_input.a.x, -28522i)), _wgslsmith_sub_vec4_i32(~abs(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a.x, -41352i, 32047i, u_input.a.x), vec4<i32>(-5905i, u_input.a.x, 2147483647i, 0i), vec4<i32>(1i, u_input.a.x, u_input.a.x, 36560i))), max(select(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, 1575i), vec4<i32>(21261i, u_input.a.x, u_input.a.x, u_input.a.x), vec4<bool>(true, true, true, true)), max(vec4<i32>(-1i, u_input.a.x, 59540i, -19464i), vec4<i32>(1i, 0i, 0i, u_input.a.x))) | firstTrailingBit(vec4<i32>(u_input.a.x, 16192i, -2147483647i, u_input.a.x) << (vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.b, 28u)], 28u)], 0u, 38872u, global2[_wgslsmith_index_u32(u_input.b, 28u)]) % vec4<u32>(32u)))));
    global1 = array<vec2<i32>, 8>();
    global3 = Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.a.x, arg_0.a.x, -943f) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(ceil(arg_0.a.x)), func_2(vec2<bool>(false, false), vec3<i32>(-44284i, 8710i, var_1.x), -772f).a.x, _wgslsmith_f_op_f32(func_3(581f, vec3<bool>(true, true, true), u_input.b))))));
    var var_2 = vec3<bool>(false, true, true);
    return all(vec4<bool>(var_2.x && !var_2.x, var_2.x, any(select(vec3<bool>(true, true, true), select(vec3<bool>(var_2.x, false, var_2.x), vec3<bool>(true, var_2.x, false), vec3<bool>(false, true, true)), !vec3<bool>(true, var_2.x, false))), var_2.x));
}

fn func_1(arg_0: bool) -> vec3<bool> {
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(global3.a)) - vec3<f32>(global3.a.x, -639f, -187f)))));
    let var_1 = vec3<bool>(func_4(Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(408f, -504f, global3.a.x) * _wgslsmith_f_op_vec3_f32(var_0.a * var_0.a))), func_2(!vec2<bool>(true, arg_0), min(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.a.x, -10669i, u_input.a.x), u_input.a), vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x) & u_input.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(988f * -633f)))), true | select(arg_0, true, !arg_0), any(!vec3<bool>(all(vec2<bool>(false, arg_0)), arg_0, arg_0)));
    global2 = array<u32, 28>();
    global3 = func_2(vec2<bool>(any(vec4<bool>(false, arg_0, global3.a.x == global3.a.x, false)), false), ~vec3<i32>(u_input.a.x, -u_input.a.x, -abs(u_input.a.x)), global3.a.x);
    var var_2 = ~(vec4<u32>(_wgslsmith_div_u32(global2[_wgslsmith_index_u32(u_input.b, 28u)], 0u) & (u_input.b & 4294967295u), global2[_wgslsmith_index_u32(firstTrailingBit(global2[_wgslsmith_index_u32(~8121u, 28u)]), 28u)], _wgslsmith_clamp_u32(_wgslsmith_sub_u32(u_input.b, 4294967295u), global2[_wgslsmith_index_u32(select(0u, 10338u, false), 28u)], _wgslsmith_sub_u32(52327u, u_input.b)), _wgslsmith_add_u32(0u | u_input.b, 4294967295u)) | vec4<u32>(~abs(0u), _wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.b, 0u, 48135u), vec3<u32>(global2[_wgslsmith_index_u32(22757u, 28u)], 1u, u_input.b), vec3<u32>(0u, global2[_wgslsmith_index_u32(4294967295u, 28u)], u_input.b)), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b, 7000u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.b, 28u)], 28u)]), vec3<u32>(global2[_wgslsmith_index_u32(49840u, 28u)], u_input.b, 4294967295u))), 1u, (u_input.b << (4548u % 32u)) | _wgslsmith_add_u32(global2[_wgslsmith_index_u32(28131u, 28u)], 0u)));
    return !vec3<bool>(arg_0, true, !var_1.x & !var_1.x);
}

fn func_5(arg_0: vec3<bool>, arg_1: vec4<u32>, arg_2: bool, arg_3: Struct_1) -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global3.a.x, 308f, -246f))), global3.a)) * _wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(vec3<f32>(-410f, -818f, 740f), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(arg_3.a.x, -688f, 1444f), arg_3.a)))))));
    global4 = array<Struct_2, 23>();
    var var_1 = Struct_2(func_2(func_1(arg_2).yx, ~u_input.a, arg_3.a.x));
    var var_2 = arg_3;
    var var_3 = vec2<i32>(_wgslsmith_div_i32(u_input.a.x, _wgslsmith_sub_i32(min(~(-951i), -1i), u_input.a.x)), ~_wgslsmith_add_i32(i32(-1i) * -6156i, u_input.a.x) << (abs(46221u) % 32u));
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(1695f, _wgslsmith_f_op_f32(383f * global3.a.x), global3.a.x) * _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(global3.a, global3.a) - vec3<f32>(global3.a.x, global3.a.x, global3.a.x))))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global3.a.x, -570f, 1238f) + _wgslsmith_f_op_vec3_f32(vec3<f32>(global3.a.x, global3.a.x, global3.a.x) + global3.a)) * _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(abs(global3.a)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1283f, global3.a.x, global3.a.x) * global3.a)))), _wgslsmith_f_op_vec3_f32(-global3.a), select(!select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(false, true, true)), vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(true, false, true))))))));
    var var_1 = abs(vec2<u32>(abs(u_input.b), u_input.b));
    global3 = Struct_1(_wgslsmith_f_op_vec3_f32(var_0 * _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(528f * 132f), -211f))));
    global1 = array<vec2<i32>, 8>();
    var var_2 = Struct_2(func_5(func_1((var_1.x | var_1.x) < 47935u), _wgslsmith_mult_vec4_u32(min(~vec4<u32>(79566u, u_input.b, global2[_wgslsmith_index_u32(4294967295u, 28u)], 4294967295u), abs(vec4<u32>(4294967295u, 85182u, var_1.x, global2[_wgslsmith_index_u32(var_1.x, 28u)]))), vec4<u32>(max(4294967295u, u_input.b), 0u, u_input.b, ~44065u)), false, func_2(func_1(true).yy, u_input.a, _wgslsmith_f_op_f32(-670f + global3.a.x))));
    let var_3 = global2[_wgslsmith_index_u32(abs(1u), 28u)];
    let var_4 = ~var_1.x;
    let var_5 = global4[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(countOneBits(~54497u), 0u, _wgslsmith_mod_u32(global2[_wgslsmith_index_u32(0u, 28u)], 4294967295u))), select(~(~(~vec3<u32>(21481u, var_4, 0u))), _wgslsmith_mod_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(var_4, u_input.b, u_input.b), vec3<u32>(4294967295u, 1u, u_input.b)), ~vec3<u32>(1u, 4294967295u, var_4)) & firstLeadingBit(vec3<u32>(114670u, 1u, u_input.b)), vec3<bool>(global2[_wgslsmith_index_u32(124795u >> (global2[_wgslsmith_index_u32(46581u, 28u)] % 32u), 28u)] < 77775u, true, all(vec4<bool>(false, false, false, false)) | true))), 23u)];
    let x = u_input.a;
    s_output = StorageBuffer(~(~(~vec2<u32>(u_input.b, 4294967295u))));
}


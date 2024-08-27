struct Struct_1 {
    a: i32,
    b: vec2<u32>,
}

struct Struct_2 {
    a: i32,
    b: bool,
    c: bool,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(15781i, vec2<u32>(4294967295u, 19553u));

var<private> global1: vec4<i32>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_2, arg_2: Struct_1, arg_3: Struct_2) -> i32 {
    var var_0 = -vec3<i32>(reverseBits(-min(13091i, 50397i)), ~(-1i), -1121i);
    let var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1751f, 1070f)) * -1302f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-263f, 706f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(409f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-203f, _wgslsmith_f_op_f32(551f * 1029f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1843f - -602f) - _wgslsmith_f_op_f32(abs(-1849f))) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-533f * -230f), _wgslsmith_f_op_f32(-1796f - -380f))))));
    var_0 = vec3<i32>(-2147483647i, 1i, i32(-1i) * -19713i) & vec3<i32>(~_wgslsmith_mult_i32(arg_2.a, arg_2.a), _wgslsmith_div_i32(_wgslsmith_mult_i32(~arg_1.a, abs(48584i)), -abs(arg_3.a)), reverseBits(1i << (u_input.a % 32u)));
    global1 = vec4<i32>(~(-17720i), -2147483647i, arg_2.a, arg_1.a & _wgslsmith_sub_i32(abs(i32(-1i) * -2147483647i), arg_3.a));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(var_1.x, var_1.x)), var_1.x, any(arg_0))) + var_1.x), 110f)) + _wgslsmith_f_op_f32(step(-1095f, -693f)));
    return firstLeadingBit(0i);
}

fn func_2() -> vec3<bool> {
    var var_0 = ~(~_wgslsmith_clamp_vec4_i32(~firstTrailingBit(vec4<i32>(global1.x, global1.x, global0.a, -2147483647i)), vec4<i32>(~global0.a, ~global1.x, func_3(vec2<bool>(false, false), Struct_2(global0.a, false, false), Struct_1(global0.a, global0.b), Struct_2(16107i, true, false)), global1.x), vec4<i32>(global0.a << (33268u % 32u), 43679i, 1i, func_3(vec2<bool>(true, false), Struct_2(global0.a, true, false), Struct_1(1i, vec2<u32>(0u, u_input.a)), Struct_2(global0.a, false, true)))));
    var var_1 = abs(max(u_input.a ^ (u_input.a ^ 664u), ~global0.b.x));
    var var_2 = _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(global0.a, var_0.x, -33057i), vec3<i32>(1i, -25893i, var_0.x)), vec3<i32>(-1i) * -var_0.wyx) >> (_wgslsmith_div_u32(global0.b.x, 1u) % 32u), global0.a);
    let var_3 = vec3<bool>(true, !all(select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), false)) && any(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, false))), true || (all(vec2<bool>(true, true)) || any(vec4<bool>(false, false, false, true))));
    let var_4 = ~_wgslsmith_dot_vec3_i32(var_0.yzx, vec3<i32>(select(global0.a, 16680i, var_3.x), 0i & global1.x, countOneBits(-2147483647i))) >> (~global0.b.x % 32u);
    return vec3<bool>(true, var_3.x && !(!all(vec4<bool>(true, false, var_3.x, true))), true);
}

fn func_1(arg_0: vec4<i32>, arg_1: Struct_2) -> vec4<u32> {
    global1 = arg_0;
    let var_0 = func_2();
    let var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-540f, 1f)))));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_1 - -1011f), _wgslsmith_f_op_f32(-192f * 1254f))))));
    let var_3 = global0.a;
    return firstLeadingBit(vec4<u32>(~reverseBits(_wgslsmith_add_u32(1u, 1u)), global0.b.x, global0.b.x, global0.b.x >> (u_input.a % 32u)));
}

fn func_4(arg_0: vec4<u32>) -> f32 {
    let var_0 = Struct_1(global1.x << (arg_0.x % 32u), countOneBits(countOneBits(vec2<u32>(_wgslsmith_dot_vec3_u32(arg_0.xxx, vec3<u32>(0u, 0u, arg_0.x)), ~u_input.a))));
    global0 = Struct_1(global0.a, global0.b);
    let var_1 = _wgslsmith_add_vec4_i32(firstLeadingBit(select(_wgslsmith_add_vec4_i32(vec4<i32>(2147483647i, global0.a, global1.x, -8665i) << (vec4<u32>(0u, u_input.a, var_0.b.x, 45863u) % vec4<u32>(32u)), ~vec4<i32>(49322i, 2147483647i, global0.a, var_0.a)), _wgslsmith_mult_vec4_i32(~vec4<i32>(2147483647i, global0.a, -1i, 2147483647i), _wgslsmith_sub_vec4_i32(vec4<i32>(16663i, -2147483647i, 1i, global0.a), vec4<i32>(7062i, -6595i, var_0.a, -21069i))), true)), countOneBits(_wgslsmith_div_vec4_i32(firstTrailingBit(vec4<i32>(-2147483647i, -1i, 2147483647i, var_0.a)), min(vec4<i32>(0i, global0.a, 0i, global0.a), vec4<i32>(global0.a, -100438i, global0.a, global0.a))) >> (abs(min(arg_0, arg_0)) % vec4<u32>(32u))));
    var var_2 = arg_0.zzy;
    let var_3 = Struct_2(~max(_wgslsmith_mod_i32(min(global1.x, var_0.a), _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.a, 1i, var_1.x, global1.x), vec4<i32>(var_1.x, global1.x, 19710i, 12400i))), var_1.x), true, true);
    return 212f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(-656f, -1000f, _wgslsmith_f_op_f32(ceil(197f)), _wgslsmith_f_op_f32(func_4(~func_1(vec4<i32>(global0.a, global0.a, -1i, global0.a), Struct_2(global1.x, false, false))))));
    global0 = Struct_1(-17147i, func_1(vec4<i32>(global1.x, global1.x, i32(-1i) * -1i, _wgslsmith_add_i32(-global0.a, countOneBits(-1i))), Struct_2(_wgslsmith_mod_i32(0i, -global0.a), 1u >= select(44878u, u_input.a, true), true)).wx);
    var var_1 = ~(~vec2<u32>(u_input.a, ~4294967295u));
    let x = u_input.a;
    s_output = StorageBuffer(global1.wyx, -1171f, _wgslsmith_div_f32(var_0.x, _wgslsmith_div_f32(var_0.x, -1740f)), ~_wgslsmith_sub_i32(global1.x, global1.x));
}


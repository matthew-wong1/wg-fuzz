struct Struct_1 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(93856u, 4294967295u, 65445u);

var<private> global1: Struct_1 = Struct_1(vec3<i32>(41241i, 0i, 2147483647i));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3(arg_0: bool) -> f32 {
    global1 = Struct_1(select(global1.a >> ((_wgslsmith_sub_vec3_u32(vec3<u32>(global0.x, 20798u, global0.x), vec3<u32>(4294967295u, global0.x, 15603u)) & ~vec3<u32>(global0.x, 4294967295u, global0.x)) % vec3<u32>(32u)), ~vec3<i32>(-1i, _wgslsmith_mod_i32(9130i, -7921i), max(-1i, u_input.a.x)), true));
    let var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(595f * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(-301f)), _wgslsmith_div_f32(-236f, -1746f))), _wgslsmith_f_op_f32(abs(1948f)))))));
    let var_1 = Struct_1(global1.a);
    let var_2 = vec2<bool>(arg_0, false);
    let var_3 = _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(var_0, var_0), var_0));
    return 1758f;
}

fn func_4(arg_0: vec2<f32>, arg_1: bool, arg_2: f32) -> vec2<i32> {
    global1 = Struct_1(vec3<i32>(select(u_input.a.x ^ global1.a.x, ~u_input.a.x, any(vec4<bool>(false, true, false, false))) & u_input.a.x, 34392i & (u_input.a.x << (~global0.x % 32u)), -19576i));
    let var_0 = Struct_1(~global1.a);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1152f + 765f)), arg_2)));
    global1 = Struct_1(abs(-(-vec3<i32>(var_0.a.x, global1.a.x, -13996i) & ~vec3<i32>(global1.a.x, u_input.a.x, -2147483647i))));
    let var_2 = ~(~vec3<u32>(4294967295u, global0.x, _wgslsmith_mod_u32(~75516u, abs(global0.x))));
    return vec2<i32>(-1i) * -_wgslsmith_mod_vec2_i32(abs(vec2<i32>(2978i, global1.a.x)), ~var_0.a.yx);
}

fn func_2(arg_0: vec4<i32>, arg_1: Struct_1) -> Struct_1 {
    let var_0 = ~(-(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, global1.a.x), arg_0.wx) ^ (24497i >> (global0.x % 32u)))) >> ((global0.x ^ 54723u) % 32u);
    global1 = arg_1;
    var var_1 = _wgslsmith_clamp_vec2_i32(_wgslsmith_mult_vec2_i32(func_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 1218f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1630f, 1307f))), arg_1.a.x > u_input.a.x, _wgslsmith_f_op_f32(func_3(any(vec2<bool>(false, false))))), select(vec2<i32>(3761i, var_0), ~arg_1.a.zy, select(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true)), vec2<bool>(true, true), true))), u_input.a, vec2<i32>(-1i, ~func_4(_wgslsmith_f_op_vec2_f32(vec2<f32>(793f, 284f) + vec2<f32>(-1195f, 773f)), select(false, false, true), _wgslsmith_f_op_f32(-313f + -564f)).x));
    var var_2 = func_4(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-186f, -1889f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(806f, 771f) - vec2<f32>(-462f, -774f)))))))), true & any(select(vec2<bool>(true, true), vec2<bool>(false, false), var_0 != u_input.a.x)), _wgslsmith_f_op_f32(f32(-1f) * -160f));
    global1 = Struct_1(vec3<i32>(~_wgslsmith_mod_i32(0i, u_input.a.x) & func_4(vec2<f32>(1f, 1f), true, -415f).x, -u_input.a.x, 4578i));
    return Struct_1(arg_0.wxw);
}

fn func_1() -> StorageBuffer {
    global1 = func_2(-vec4<i32>(~(i32(-1i) * -2612i), -2147483647i, u_input.a.x, -8879i), Struct_1(vec3<i32>(-global1.a.x, global1.a.x, max(u_input.a.x, -2147483647i) >> (~global0.x % 32u))));
    global1 = func_2(vec4<i32>(~_wgslsmith_mod_i32(u_input.a.x, -17326i) & ~global1.a.x, u_input.a.x, u_input.a.x, ~(-global1.a.x)), Struct_1(firstLeadingBit(_wgslsmith_add_vec3_i32(min(global1.a, vec3<i32>(13372i, u_input.a.x, -1i)), global1.a ^ global1.a))));
    let var_0 = Struct_1(select(vec3<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(global1.a, global1.a), _wgslsmith_add_vec3_i32(global1.a, vec3<i32>(-12385i, 0i, global1.a.x))), u_input.a.x ^ -global1.a.x, u_input.a.x), func_2(firstLeadingBit(_wgslsmith_clamp_vec4_i32(vec4<i32>(36813i, u_input.a.x, u_input.a.x, -2147483647i), vec4<i32>(-2147483647i, -1i, u_input.a.x, -15512i), vec4<i32>(global1.a.x, global1.a.x, 0i, -1i))), func_2(vec4<i32>(global1.a.x, 2147483647i, global1.a.x, 67584i), Struct_1(vec3<i32>(u_input.a.x, -39157i, u_input.a.x)))).a, vec3<bool>(any(vec2<bool>(true, true)), false, any(select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true))))));
    var var_1 = -612f;
    var var_2 = !(!(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -454f), 1f) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-232f)) * _wgslsmith_f_op_f32(1137f + 643f))));
    return StorageBuffer(~(_wgslsmith_add_u32(global0.x, countOneBits(0u)) | ~_wgslsmith_mult_u32(global0.x, global0.x)), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-519f, 1214f, 1900f) * vec3<f32>(-2127f, -1511f, 111f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, 502f, 1088f) + vec3<f32>(-1264f, -487f, 1280f)))))), -1161f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(global1.a);
    var var_1 = Struct_1(~vec3<i32>(u_input.a.x, _wgslsmith_dot_vec3_i32(countOneBits(global1.a), global1.a), i32(-1i) * -u_input.a.x));
    let var_2 = ~(~vec3<i32>(10078i, -63921i, u_input.a.x));
    var var_3 = Struct_1(~_wgslsmith_sub_vec3_i32(-(vec3<i32>(var_0.a.x, 2147483647i, var_0.a.x) << (vec3<u32>(global0.x, 1u, 34727u) % vec3<u32>(32u))), min(-vec3<i32>(2147483647i, global1.a.x, global1.a.x), global1.a & global1.a)));
    global1 = var_0;
    let x = u_input.a;
    s_output = func_1();
}


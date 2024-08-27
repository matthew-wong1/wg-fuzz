struct Struct_1 {
    a: f32,
    b: i32,
    c: f32,
    d: i32,
    e: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
}

struct Struct_3 {
    a: vec2<u32>,
}

struct Struct_4 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(-754f, -2336f, -622f, -116f);

var<private> global1: Struct_4;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: Struct_3, arg_1: vec4<u32>) -> f32 {
    let var_0 = Struct_3(firstTrailingBit(reverseBits(arg_0.a) & arg_0.a));
    var var_1 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-312f, global0.x, global0.x, 1000f)))))));
    var var_2 = ~vec4<u32>(firstTrailingBit(_wgslsmith_div_u32(var_0.a.x, abs(var_0.a.x))), arg_0.a.x, ~(~0u), arg_0.a.x);
    let var_3 = u_input.a.xz;
    let var_4 = 60046u;
    return _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global0.x)));
}

fn func_2() -> Struct_2 {
    var var_0 = firstTrailingBit(abs(-u_input.b));
    let var_1 = ~vec2<u32>(1u, 1u);
    let var_2 = vec2<u32>(var_1.x, _wgslsmith_sub_u32(var_1.x, ~(~var_1.x)));
    var_0 = select(-vec4<i32>((u_input.b.x >> (var_1.x % 32u)) | 21894i, _wgslsmith_clamp_i32(_wgslsmith_div_i32(u_input.a.x, 16603i), 2147483647i, -var_0.x), ~var_0.x, u_input.b.x), _wgslsmith_add_vec4_i32(countOneBits(_wgslsmith_clamp_vec4_i32(u_input.b, u_input.b, ~u_input.b)), -_wgslsmith_clamp_vec4_i32(-u_input.b, _wgslsmith_mod_vec4_i32(vec4<i32>(var_0.x, u_input.b.x, -41996i, 1i), u_input.b), u_input.b)), global1.a);
    global0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1051f + 1368f) + -1835f), _wgslsmith_f_op_f32(func_3(Struct_3(vec2<u32>(var_1.x, 4294967295u) << (~var_2 % vec2<u32>(32u))), vec4<u32>(_wgslsmith_sub_u32(var_2.x, 83238u) | var_1.x, 1u, ~firstTrailingBit(23676u), var_2.x ^ _wgslsmith_add_u32(var_2.x, 16853u)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global0.x))), _wgslsmith_f_op_f32(min(-873f, global0.x)));
    return Struct_2(Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global0.x + _wgslsmith_f_op_f32(select(global0.x, global0.x, false))))), abs(var_0.x), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global0.x - global0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global0.x)) * global0.x), !(global1.a.x & true))), var_0.x, vec3<bool>(!(global1.a.x | global1.a.x), !(global1.a.x && global1.a.x), global1.a.x || false)), _wgslsmith_f_op_f32(-336f * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x + 947f) + -391f)))));
}

fn func_1(arg_0: u32, arg_1: vec4<f32>, arg_2: vec2<f32>) -> f32 {
    let var_0 = Struct_4(global1.a);
    var var_1 = u_input.b.x;
    var var_2 = Struct_4(!vec4<bool>(!global1.a.x, true, false, false));
    let var_3 = func_2();
    var var_4 = ~1i << (arg_0 % 32u);
    return global0.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global0.x, global0.x, global0.x, -115f))))), vec4<f32>(921f, _wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(-934f - global0.x), _wgslsmith_div_f32(global0.x, global0.x)))) * vec4<f32>(1755f, -104f, global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(4294967295u, vec4<f32>(503f, global0.x, -984f, -253f), vec2<f32>(global0.x, 1345f)))))) + vec4<f32>(984f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global0.x))))), global0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global0.x, -673f))) * global0.x)));
    var var_0 = global0.x;
    global1 = Struct_4(select(global1.a, global1.a, global1.a));
    let var_1 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)), -580f) - vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(global0.x, global0.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x))))));
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1203f, 620f, -494f, global0.x)))), vec4<f32>(-1283f, -418f, var_1.x, 1145f)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, -1559f, var_1.x, 247f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, 674f, var_1.x, var_1.x)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1262f, 409f, -940f, global0.x) - vec4<f32>(-395f, -242f, global0.x, 1000f)) * vec4<f32>(-769f, global0.x, var_1.x, 1330f)))));
    let x = u_input.a;
    s_output = StorageBuffer(~firstLeadingBit(~(~vec3<u32>(36379u, 0u, 4294967295u))), u_input.b);
}


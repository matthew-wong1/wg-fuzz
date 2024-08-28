struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: vec4<u32>,
}

struct Struct_3 {
    a: vec4<u32>,
    b: Struct_1,
    c: vec4<f32>,
    d: Struct_1,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec4<u32>(1u, 39978u, 124140u, 45168u));

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_2, arg_1: vec4<bool>, arg_2: Struct_1, arg_3: Struct_2) -> vec4<u32> {
    global0 = arg_3;
    global0 = Struct_2(vec4<u32>(abs(~26844u), 0u, arg_0.a.x, global0.a.x));
    var var_0 = 0u;
    let var_1 = reverseBits(~firstLeadingBit(_wgslsmith_clamp_vec2_u32(~arg_3.a.wz, max(vec2<u32>(arg_3.a.x, 4294967295u), vec2<u32>(0u, 46214u)), vec2<u32>(1u, arg_3.a.x))));
    return vec4<u32>(abs(firstLeadingBit(var_1.x | arg_3.a.x)) ^ ~u_input.b, u_input.b, arg_0.a.x, ~arg_0.a.x);
}

fn func_2() -> Struct_2 {
    global0 = Struct_2(_wgslsmith_sub_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(~global0.a.x, _wgslsmith_clamp_u32(u_input.b, global0.a.x, global0.a.x), ~95809u, _wgslsmith_clamp_u32(1u, 33752u, 4294967295u)), ~global0.a ^ (vec4<u32>(u_input.b, global0.a.x, global0.a.x, global0.a.x) << (global0.a % vec4<u32>(32u))), global0.a), ~(~global0.a)));
    let var_0 = Struct_3(func_3(Struct_2(max(_wgslsmith_sub_vec4_u32(global0.a, vec4<u32>(0u, 4262u, u_input.b, global0.a.x)), ~global0.a)), vec4<bool>(true, true, true, true), Struct_1(vec4<bool>(true, true, true, true)), Struct_2(min(vec4<u32>(1u, 4294967295u, u_input.b, u_input.b), ~global0.a))), Struct_1(vec4<bool>(true, true, any(select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, false))), true)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(370f, -415f, _wgslsmith_f_op_f32(round(646f)), _wgslsmith_f_op_f32(258f - -759f)), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-830f, 1092f, -203f, -651f))))))), Struct_1(vec4<bool>(true, true, true, true)), Struct_2(~_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 3861u, 0u, 0u) & vec4<u32>(global0.a.x, global0.a.x, 86970u, 27016u), max(global0.a, global0.a))));
    var var_1 = var_0.b.a.xxx;
    global0 = Struct_2(_wgslsmith_add_vec4_u32(vec4<u32>(_wgslsmith_mult_u32(var_0.a.x, ~u_input.b), 1u, u_input.b, 87733u), vec4<u32>(9407u, 4294967295u, firstLeadingBit(1u), _wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.b, 39290u), abs(var_0.a.xw)))));
    return Struct_2(vec4<u32>(_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(global0.a.wyx & vec3<u32>(var_0.a.x, 13097u, 0u), ~vec3<u32>(0u, var_0.e.a.x, var_0.e.a.x)), ~_wgslsmith_dot_vec4_u32(var_0.e.a, global0.a)), max(_wgslsmith_mod_u32(~63591u, ~global0.a.x), 3339u), var_0.e.a.x ^ 1u, ~var_0.e.a.x));
}

fn func_1(arg_0: u32, arg_1: vec3<i32>, arg_2: f32, arg_3: i32) -> bool {
    global0 = func_2();
    let var_0 = Struct_2(firstTrailingBit(~select(vec4<u32>(global0.a.x, arg_0, global0.a.x, u_input.b), ~global0.a, arg_2 < 666f)));
    global0 = func_2();
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f + arg_2), _wgslsmith_f_op_f32(round(arg_2)))))), arg_2, _wgslsmith_f_op_f32(arg_2 - arg_2), arg_2);
    global0 = var_0;
    return any(!vec3<bool>(~arg_1.x != _wgslsmith_mult_i32(0i, arg_1.x), arg_1.x > (i32(-1i) * -1i), true));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(func_1(~83289u, vec3<i32>(2147483647i, 0i, 65474i) << (global0.a.wxw % vec3<u32>(32u)), _wgslsmith_f_op_f32(step(-255f, -1093f)), u_input.a.x >> (u_input.b % 32u)) | true) && true;
    let var_1 = Struct_3(~(vec4<u32>(~u_input.b, 28151u, 1u, func_2().a.x) ^ max(~global0.a, global0.a)), Struct_1(vec4<bool>(var_0, false, var_0, var_0)), vec4<f32>(1019f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-140f, 539f))))), -1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1f)) * 936f)), Struct_1(vec4<bool>(any(vec2<bool>(var_0, false)), true, any(!vec3<bool>(var_0, var_0, var_0)), true)), Struct_2(vec4<u32>(10975u, 54999u, 4294967295u >> (0u % 32u), _wgslsmith_mult_u32(func_2().a.x, max(9681u, u_input.b)))));
    var var_2 = func_3(func_2(), var_1.d.a, var_1.b, var_1.e).x;
    global0 = Struct_2(global0.a);
    var_2 = ~global0.a.x;
    let var_3 = vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(226f)))), _wgslsmith_f_op_f32(select(271f, var_1.c.x, (var_0 & var_1.b.a.x) & func_1(~global0.a.x, firstLeadingBit(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x)), -1452f, -u_input.c))), _wgslsmith_f_op_f32(var_1.c.x * var_1.c.x));
    let x = u_input.a;
    s_output = StorageBuffer(func_2().a.xxx, 0i, ~select(~(~global0.a.zy), var_1.e.a.xx << (~global0.a.zw % vec2<u32>(32u)), any(select(vec3<bool>(true, false, false), var_1.b.a.yww, true))));
}


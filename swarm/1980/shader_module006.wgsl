struct Struct_1 {
    a: i32,
    b: vec2<bool>,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec3<i32>,
    d: vec3<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(0i, vec2<bool>(true, false), vec3<f32>(1000f, -545f, -500f));

var<private> global1: Struct_1 = Struct_1(2147483647i, vec2<bool>(true, true), vec3<f32>(689f, -1686f, -318f));

var<private> global2: i32;

var<private> global3: u32 = 1u;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: u32) -> vec2<bool> {
    var var_0 = Struct_1(-21635i, vec2<bool>(global1.b.x || true, true), global0.c);
    let var_1 = arg_0 << (_wgslsmith_div_u32(1u, select(~_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0, arg_0, 1u), vec3<u32>(92629u, 1u, 109676u)), arg_0 ^ reverseBits(arg_0), true && all(vec4<bool>(true, global0.b.x, true, false)))) % 32u);
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c.x, -1016f, var_0.c.x, _wgslsmith_f_op_f32(round(1000f))))));
    let var_3 = 0u;
    var var_4 = vec4<bool>(global1.b.x, select(!global1.b.x, global0.b.x, ~(~var_3) != (~var_3 | u_input.a)), true, !(!all(!vec4<bool>(true, var_0.b.x, var_0.b.x, global0.b.x))));
    return var_0.b;
}

fn func_2(arg_0: vec3<u32>) -> bool {
    let var_0 = Struct_1(-(~firstLeadingBit(global1.a)) | global0.a, !(!(!func_3(u_input.a))), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.c.x)), -1830f, global0.c.x), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.c.x, -1410f, global1.c.x))), _wgslsmith_f_op_vec3_f32(global1.c - _wgslsmith_f_op_vec3_f32(global1.c + vec3<f32>(958f, -572f, 633f))))))));
    let var_1 = _wgslsmith_add_i32(global0.a, global0.a ^ 38672i);
    global2 = firstLeadingBit(var_1);
    global1 = var_0;
    let var_2 = countOneBits(_wgslsmith_mod_vec2_i32(vec2<i32>(-43630i, _wgslsmith_dot_vec2_i32(vec2<i32>(0i, -32539i), vec2<i32>(-1i, -1i))), ~vec2<i32>(var_1, var_1))) | _wgslsmith_mult_vec2_i32(vec2<i32>(_wgslsmith_div_i32(var_0.a, global1.a), -2147483647i) ^ vec2<i32>(var_0.a, _wgslsmith_add_i32(global1.a, -1i)), -(vec2<i32>(1i, 1i) & vec2<i32>(1343i, var_1)));
    return global0.b.x;
}

fn func_1() -> f32 {
    let var_0 = Struct_1(2147483647i, select(!select(vec2<bool>(global1.b.x, false), global0.b, vec2<bool>(false, false)), select(vec2<bool>(global0.b.x, func_2(vec3<u32>(u_input.a, 57760u, 48376u))), vec2<bool>(true, !global0.b.x), func_3(_wgslsmith_sub_u32(41379u, 1u)).x), global0.b.x), vec3<f32>(_wgslsmith_f_op_f32(-global1.c.x), 763f, global1.c.x));
    let var_1 = vec2<f32>(-264f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - -731f) * _wgslsmith_f_op_f32(-1568f + -304f)))));
    var var_2 = var_0;
    var var_3 = true;
    var var_4 = var_0;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1000f))))) + var_0.c.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0.a;
    let var_1 = !vec3<bool>(_wgslsmith_f_op_f32(func_1()) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.c.x) * global0.c.x), true, _wgslsmith_f_op_f32(global0.c.x - _wgslsmith_f_op_f32(-global1.c.x)) >= 1000f);
    let var_2 = min(~_wgslsmith_clamp_vec4_u32(~(~vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a)), vec4<u32>(max(0u, u_input.a), u_input.a, u_input.a, ~1u), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<u32>(56393u, 1429u, u_input.a, u_input.a)) >> (vec4<u32>(u_input.a, u_input.a, 38913u, 0u) % vec4<u32>(32u))), max(~_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, 30146u) & vec4<u32>(u_input.a, u_input.a, 0u, 37753u), vec4<u32>(0u, 1u, u_input.a, u_input.a) ^ vec4<u32>(u_input.a, 1u, 23709u, 5317u)), max(firstLeadingBit(abs(vec4<u32>(u_input.a, 0u, u_input.a, 36184u))), select(vec4<u32>(2347u, u_input.a, u_input.a, u_input.a), vec4<u32>(u_input.a, 0u, 10326u, 8330u), false) & ~vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a))));
    let var_3 = vec4<u32>(~var_2.x & (u_input.a & (u_input.a ^ 719u)), (81341u & var_2.x) & countOneBits(~36829u), 0u ^ var_2.x, firstTrailingBit(var_2.x));
    var var_4 = Struct_1(_wgslsmith_dot_vec3_i32(vec3<i32>(global1.a, ~(-2147483647i), global1.a), _wgslsmith_mod_vec3_i32(vec3<i32>(-2147483647i, global1.a, _wgslsmith_mod_i32(-1i, -18192i)), vec3<i32>(global1.a, global0.a, max(-1i, 2147483647i)))), !(!(!var_1.xy)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1069f)) + _wgslsmith_f_op_f32(step(global1.c.x, global1.c.x))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.c.x, 1305f)), -202f)));
    let var_5 = select(_wgslsmith_clamp_vec2_i32(~(-vec2<i32>(var_4.a, 28141i)), max(vec2<i32>(global0.a, global1.a), vec2<i32>(1i, var_4.a) ^ vec2<i32>(var_4.a, var_4.a)), firstLeadingBit(~vec2<i32>(global1.a, global1.a))) ^ min(vec2<i32>(global1.a, -1i), ~_wgslsmith_clamp_vec2_i32(vec2<i32>(global1.a, -38481i), vec2<i32>(global0.a, 47389i), vec2<i32>(global1.a, -10299i))), reverseBits(vec2<i32>(-1i, global0.a)) ^ firstLeadingBit(~vec2<i32>(-10242i, 1i)), global1.b);
    let x = u_input.a;
    s_output = StorageBuffer(var_3.wy & ~abs(var_2.wy | vec2<u32>(17126u, u_input.a)), -2147483647i, vec3<i32>(2147483647i, global1.a ^ global0.a, 0i), vec3<i32>(1i, -53571i, 1i), _wgslsmith_add_i32(~21320i, 1i));
}


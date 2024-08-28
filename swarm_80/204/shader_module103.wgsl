struct Struct_1 {
    a: vec4<bool>,
    b: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: i32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: f32) -> vec4<bool> {
    var var_0 = true;
    var var_1 = -1111f;
    var_1 = 1023f;
    var var_2 = 4294967295u;
    let var_3 = ~(select(_wgslsmith_clamp_vec3_i32(max(vec3<i32>(1i, -2147483647i, 24831i), vec3<i32>(-18948i, -1i, -16560i)), ~vec3<i32>(31616i, -32832i, -2147483647i), reverseBits(vec3<i32>(1i, 0i, 52187i))), vec3<i32>(1i, 1i, 1i) >> (vec3<u32>(global0.b, u_input.a.x, 1u) % vec3<u32>(32u)), vec3<bool>(true, true, true)) ^ reverseBits(vec3<i32>(_wgslsmith_mult_i32(9981i, -24735i), ~18578i, 2147483647i)));
    return global0.a;
}

fn func_2() -> Struct_1 {
    global0 = Struct_1(!global0.a, ~(~u_input.b.x) << (~((u_input.b.x & global0.b) | u_input.a.x) % 32u));
    var var_0 = Struct_1(vec4<bool>(global0.a.x, global0.a.x, global0.a.x, false), ~global0.b);
    global0 = Struct_1(select(vec4<bool>(true, all(global0.a.yw), any(!var_0.a.zx), true), select(func_3(-414f), func_3(_wgslsmith_f_op_f32(abs(640f))), true), true || (_wgslsmith_mod_u32(var_0.b, 4294967295u) >= _wgslsmith_add_u32(16433u, u_input.a.x))), ~max(_wgslsmith_div_u32(u_input.b.x, max(var_0.b, var_0.b)), 0u));
    var_0 = Struct_1(global0.a, _wgslsmith_mult_u32(firstTrailingBit(u_input.a.x) & global0.b, firstTrailingBit(firstLeadingBit(global0.b))) >> (u_input.a.x % 32u));
    let var_1 = firstLeadingBit(~vec4<u32>(var_0.b, ~firstTrailingBit(0u), u_input.a.x, var_0.b));
    return Struct_1(!global0.a, 115u);
}

fn func_1(arg_0: vec3<f32>, arg_1: Struct_1) -> u32 {
    var var_0 = vec3<f32>(1054f, _wgslsmith_f_op_f32(abs(arg_0.x)), arg_0.x);
    var var_1 = u_input.a.xx;
    global0 = func_2();
    var var_2 = arg_1.a.wzw;
    var var_3 = arg_1;
    return ~_wgslsmith_clamp_u32(4294967295u ^ u_input.b.x, global0.b, countOneBits(_wgslsmith_clamp_u32(var_1.x >> (4294967295u % 32u), 70852u, reverseBits(48216u))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(global0.a, func_1(vec3<f32>(_wgslsmith_f_op_f32(sign(-235f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(637f - -1274f) + _wgslsmith_f_op_f32(-1076f * 889f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -291f))), Struct_1(vec4<bool>(select(global0.a.x, true, false), !global0.a.x, true, true), ~_wgslsmith_mod_u32(0u, u_input.a.x))));
    global0 = func_2();
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(278f, 142f), vec2<f32>(450f, 599f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-782f, -3822f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(722f, -572f) + vec2<f32>(246f, 311f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1369f, 1869f)))))));
    global0 = func_2();
    var var_1 = Struct_1(vec4<bool>(_wgslsmith_f_op_f32(var_0.x + -1729f) != _wgslsmith_f_op_f32(ceil(var_0.x)), global0.a.x, !global0.a.x, global0.a.x), _wgslsmith_sub_u32(_wgslsmith_mult_u32(~1u, _wgslsmith_dot_vec3_u32(vec3<u32>(global0.b, 4294967295u, 44380u), u_input.a)), ~(~1u)) << (firstLeadingBit(_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.b.x, 1u, 1u, u_input.a.x), vec4<u32>(1u, global0.b, 5049u, global0.b)), ~vec4<u32>(u_input.a.x, u_input.b.x, 45903u, 69151u))) % 32u));
    let var_2 = !(!global0.a);
    global0 = Struct_1(vec4<bool>(var_2.x, !(!var_1.a.x), !func_2().a.x, all(vec2<bool>(true, !global0.a.x))), 1u);
    var_1 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u, vec2<i32>(_wgslsmith_sub_i32(1i, 24935i), _wgslsmith_sub_i32(~(i32(-1i) * -26174i), _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(-2147483647i, -39153i, 0i, 16570i), vec4<i32>(0i, -1i, 16906i, 8432i)), vec4<i32>(1i, 1i, 1i, 1i)))), -(~(~(~18094i))), vec4<u32>(36319u, var_1.b, ~25467u, u_input.a.x));
}


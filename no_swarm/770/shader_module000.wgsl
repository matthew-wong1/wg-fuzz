struct Struct_1 {
    a: vec4<i32>,
    b: vec4<u32>,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: f32,
    d: i32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 16>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: u32, arg_1: u32, arg_2: vec3<bool>) -> vec3<bool> {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(2032f + 142f), _wgslsmith_f_op_f32(sign(1000f))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1580f, -692f) - vec2<f32>(1417f, -100f)))), vec2<f32>(1f, 1f))));
    var var_1 = Struct_1(vec4<i32>(u_input.b.x, max(-u_input.b.x, ~_wgslsmith_mult_i32(-1i, 0i)), max(-69208i, 0i), u_input.b.x << (37591u % 32u)), ~(~select(vec4<u32>(0u, u_input.a.x, arg_1, arg_0), vec4<u32>(arg_0, u_input.a.x, u_input.a.x, u_input.a.x), !arg_2.x)), _wgslsmith_sub_vec2_i32(vec2<i32>(~(-1i), u_input.b.x), u_input.b.xz));
    let var_2 = true;
    global0 = array<Struct_1, 16>();
    let var_3 = -6311i <= _wgslsmith_dot_vec2_i32(countOneBits(~u_input.b.zz >> (~vec2<u32>(46198u, 7363u) % vec2<u32>(32u))), -vec2<i32>(var_1.a.x, -1i) ^ u_input.b.zx);
    return !vec3<bool>(all(vec4<bool>(select(false, false, false), var_3, any(arg_2), true)), !all(select(arg_2.xx, arg_2.xy, arg_2.xy)), true);
}

fn func_2() -> vec3<bool> {
    var var_0 = -297f;
    return !select(select(!select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(true, false, false)), select(func_3(u_input.a.x, 0u, vec3<bool>(true, true, false)), vec3<bool>(false, false, false), all(vec3<bool>(true, true, true))), func_3(u_input.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 0u, 1u, u_input.a.x), vec4<u32>(u_input.a.x, u_input.a.x, 4294967295u, 16620u)), vec3<bool>(true, true, true))), select(select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), func_3(4294967295u, u_input.a.x, vec3<bool>(false, false, true))), !select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), true), vec3<bool>(func_3(4294967295u, u_input.a.x, vec3<bool>(true, false, false)).x, true, all(vec4<bool>(false, true, false, true)))), true == any(select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, true), false)));
}

fn func_1(arg_0: f32) -> vec3<f32> {
    var var_0 = -u_input.b.x;
    var_0 = u_input.b.x;
    let var_1 = any(!func_2());
    global0 = array<Struct_1, 16>();
    global0 = array<Struct_1, 16>();
    return _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, -132f, -655f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, 1054f, arg_0))), vec3<bool>(var_1, var_1, func_2().x))) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1698f, arg_0, arg_0)))), _wgslsmith_div_vec3_f32(vec3<f32>(1504f, arg_0, -977f), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(arg_0, -444f, -235f))))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~firstLeadingBit(~(~vec4<u32>(67075u, u_input.a.x, u_input.a.x, u_input.a.x)));
    let var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(-622f, -754f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(1027f, 214f)))))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-407f, -1442f, 510f), vec3<f32>(645f, -886f, 758f)))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_1(_wgslsmith_f_op_f32(f32(-1f) * -1568f))) * _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, -1670f, -412f) * vec3<f32>(-1409f, 342f, 377f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, 256f, 227f) - vec3<f32>(1303f, 526f, -403f)))))));
    let var_2 = global0[_wgslsmith_index_u32(u_input.a.x, 16u)];
    let var_3 = global0[_wgslsmith_index_u32(39995u, 16u)];
    var var_4 = global0[_wgslsmith_index_u32(abs(1u), 16u)];
    var var_5 = vec2<i32>(-1i, _wgslsmith_mod_i32(-24317i, -16663i));
    let var_6 = Struct_1(u_input.b, vec4<u32>(firstLeadingBit(_wgslsmith_add_u32(~0u, ~var_0.x)), 4294967295u, ~_wgslsmith_add_u32(28880u, _wgslsmith_add_u32(0u, var_4.b.x)), 1u), -_wgslsmith_clamp_vec2_i32((vec2<i32>(var_2.a.x, 0i) ^ vec2<i32>(var_3.a.x, var_2.a.x)) ^ vec2<i32>(var_2.a.x, var_4.a.x), _wgslsmith_mod_vec2_i32(_wgslsmith_div_vec2_i32(var_3.a.zw, var_3.c), select(var_3.c, var_4.a.xy, vec2<bool>(false, false))), var_4.a.yy));
    var_4 = Struct_1(_wgslsmith_mult_vec4_i32(max(-var_4.a, abs(~vec4<i32>(0i, var_4.a.x, var_6.c.x, var_6.a.x))), _wgslsmith_mod_vec4_i32(vec4<i32>(1i, ~40242i, 1i, var_5.x), firstLeadingBit(vec4<i32>(var_5.x, var_6.a.x, 1i, -37201i) << (vec4<u32>(u_input.a.x, var_0.x, u_input.a.x, var_0.x) % vec4<u32>(32u))))), _wgslsmith_mult_vec4_u32(~_wgslsmith_mult_vec4_u32(vec4<u32>(var_3.b.x, 38832u, var_4.b.x, var_2.b.x), ~vec4<u32>(76534u, var_0.x, 6618u, u_input.a.x)), var_3.b), vec2<i32>(1i, -30685i) | var_4.a.wy);
    var var_7 = _wgslsmith_f_op_f32(max(869f, -1141f));
    let x = u_input.a;
    s_output = StorageBuffer(var_3.a.x, var_2.b.x, _wgslsmith_f_op_vec3_f32(func_1(var_1.x)).x, 2063i | var_6.a.x, vec4<i32>(_wgslsmith_clamp_i32(-56834i, _wgslsmith_add_i32(reverseBits(var_2.a.x), -var_5.x), _wgslsmith_dot_vec2_i32(var_4.a.xw >> (u_input.a % vec2<u32>(32u)), vec2<i32>(var_4.c.x, -1i))), -56289i & var_2.c.x, var_2.a.x, 1i));
}


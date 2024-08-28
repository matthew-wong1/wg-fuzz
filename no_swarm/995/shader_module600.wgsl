struct Struct_1 {
    a: vec3<bool>,
    b: u32,
    c: i32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
}

struct Struct_4 {
    a: Struct_1,
    b: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: vec3<u32>,
    d: vec4<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3() -> f32 {
    let var_0 = Struct_1(vec3<bool>(_wgslsmith_clamp_i32(_wgslsmith_sub_i32(u_input.e, -1883i), u_input.e, select(u_input.e, -57954i, true)) >= abs(min(74099i, 0i)), true, ~u_input.b.x <= (_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c.x, 0u), vec2<u32>(48599u, 4294967295u)) | (0u ^ u_input.b.x))), u_input.d.x, _wgslsmith_dot_vec2_i32(firstLeadingBit(_wgslsmith_sub_vec2_i32(u_input.a.zz & u_input.a.xx, vec2<i32>(u_input.e, 0i))), ~vec2<i32>(reverseBits(61461i), _wgslsmith_clamp_i32(16558i, u_input.a.x, u_input.e))));
    var var_1 = Struct_3(!select(select(select(vec4<bool>(var_0.a.x, var_0.a.x, false, false), vec4<bool>(var_0.a.x, true, var_0.a.x, false), var_0.a.x), vec4<bool>(true, true, var_0.a.x, true), vec4<bool>(var_0.a.x, var_0.a.x, var_0.a.x, var_0.a.x)), !select(vec4<bool>(true, true, false, true), vec4<bool>(var_0.a.x, var_0.a.x, var_0.a.x, var_0.a.x), false), any(!var_0.a)));
    var_1 = Struct_3(!(!vec4<bool>(u_input.e < -25634i, any(vec4<bool>(var_1.a.x, var_1.a.x, false, var_0.a.x)), true, var_1.a.x)));
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(floor(-1206f)), 1131f);
    var var_3 = true;
    return _wgslsmith_div_f32(var_2.x, var_2.x);
}

fn func_2() -> Struct_2 {
    let var_0 = !vec4<bool>(!any(vec2<bool>(true, true)), any(!select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true))), 1f > _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_3()))), true);
    var var_1 = !var_0.x;
    let var_2 = Struct_4(Struct_1(select(var_0.yww, vec3<bool>(all(var_0.wx), var_0.x, true), vec3<bool>(false || var_0.x, false != var_0.x, true)), u_input.b.x, u_input.a.x), reverseBits(1u));
    return Struct_2(~(-1i), Struct_1(vec3<bool>(any(var_0), !any(vec4<bool>(false, var_0.x, var_0.x, var_0.x)), true), var_2.a.b, select(u_input.a.x, u_input.e, all(vec2<bool>(var_0.x, false)))));
}

fn func_1(arg_0: Struct_3, arg_1: i32) -> Struct_1 {
    var var_0 = func_2();
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 1000f, 935f, 715f))) * vec4<f32>(1f, 1f, 1f, 1f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-446f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(max(-788f, -1000f)), _wgslsmith_f_op_f32(f32(-1f) * -706f)))));
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_1.x, -774f))))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)))));
    let var_3 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(865f, var_2.x, -353f, -2273f));
    var var_4 = _wgslsmith_f_op_f32(step(var_3.x, _wgslsmith_f_op_f32(exp2(var_2.x))));
    return var_0.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<i32>(u_input.e, 0i, _wgslsmith_clamp_i32(u_input.a.x, firstTrailingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(-16969i, u_input.a.x, u_input.a.x, -21182i), -vec4<i32>(u_input.a.x, u_input.a.x, u_input.e, -33231i))), u_input.a.x), _wgslsmith_add_i32(2147483647i, ~u_input.a.x));
    let var_1 = ~(~(~0u));
    let var_2 = ~u_input.a.x >> (~var_1 % 32u);
    let var_3 = _wgslsmith_mult_vec3_u32(u_input.d.zwz, vec3<u32>(1u, var_1, _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(~u_input.b.ww, vec2<u32>(u_input.b.x, 1u)), ~abs(u_input.b.zw))));
    var_0 = -firstTrailingBit(abs(vec4<i32>(u_input.e, 20927i, firstTrailingBit(-23239i), _wgslsmith_clamp_i32(1i, u_input.a.x, -16568i))));
    var var_4 = ~vec3<i32>(u_input.a.x, -reverseBits(var_2) ^ -(~(-19076i)), var_2);
    var var_5 = func_1(Struct_3(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, var_4.x < 0i, true), var_4.x <= u_input.e)), -1i);
    let var_6 = var_5.a.yz;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_u32(vec3<u32>(40088u, 1u, _wgslsmith_mult_u32(0u, u_input.c.x) & u_input.b.x), vec3<u32>(u_input.c.x, ~1u, ~111579u)), _wgslsmith_add_vec2_i32(var_4.xy, var_4.yz));
}


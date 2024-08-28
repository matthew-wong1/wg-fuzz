struct Struct_1 {
    a: u32,
    b: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: i32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec2<u32>, arg_1: vec3<u32>) -> vec2<bool> {
    var var_0 = Struct_1(firstTrailingBit(4294967295u), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-718f, -506f)), _wgslsmith_f_op_f32(-316f - -1077f)))) != _wgslsmith_f_op_f32(step(232f, -453f)));
    let var_1 = Struct_1(_wgslsmith_add_u32(1u, _wgslsmith_mult_u32(0u, 0u)), all(vec4<bool>(any(!vec4<bool>(true, false, var_0.b, true)), true, false, var_0.b)));
    var_0 = Struct_1(var_0.a, all(vec4<bool>(all(!vec2<bool>(var_0.b, false)), select(var_1.b, var_1.b, true), any(select(vec2<bool>(var_0.b, false), vec2<bool>(var_0.b, true), false)), select(true, var_0.b, true))));
    var_0 = Struct_1(4294967295u, true);
    let var_2 = reverseBits(_wgslsmith_mult_vec4_u32(select(abs(~u_input.c), firstTrailingBit(u_input.c), false), _wgslsmith_mod_vec4_u32(_wgslsmith_div_vec4_u32(~vec4<u32>(0u, var_1.a, 3412u, u_input.b.x), ~u_input.c), ~u_input.c)));
    return vec2<bool>(true, any(select(select(select(vec3<bool>(true, var_1.b, var_0.b), vec3<bool>(var_1.b, var_1.b, var_1.b), vec3<bool>(false, true, true)), !vec3<bool>(var_0.b, var_0.b, var_1.b), vec3<bool>(true, false, var_1.b)), vec3<bool>(true, var_0.b, var_0.b && var_0.b), var_1.b)));
}

fn func_2() -> vec3<bool> {
    var var_0 = Struct_1(~u_input.b.x ^ u_input.c.x, !((u_input.b.x >> (u_input.b.x % 32u)) < ~56128u) && all(!func_3(vec2<u32>(u_input.b.x, u_input.c.x), vec3<u32>(u_input.b.x, 0u, u_input.c.x))));
    var var_1 = u_input.b;
    var_0 = Struct_1(81772u, false);
    var var_2 = ~1u;
    var_0 = Struct_1(~4294967295u, var_0.b);
    return vec3<bool>(true, !(!(!var_0.b)), var_0.b);
}

fn func_1(arg_0: Struct_1) -> vec4<i32> {
    let var_0 = -2147483647i;
    let var_1 = u_input.a;
    let var_2 = vec2<u32>(arg_0.a, 1u);
    let var_3 = Struct_1(4294967295u, arg_0.b);
    var var_4 = !select(select(!vec3<bool>(arg_0.b, false, var_3.b), func_2(), func_2()), func_2(), func_2());
    return u_input.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = firstTrailingBit(u_input.a.x) ^ abs(-2567i);
    var var_1 = -func_1(Struct_1(u_input.c.x, false));
    let var_2 = Struct_1(u_input.b.x, true);
    var var_3 = var_2;
    var_3 = Struct_1(firstLeadingBit(u_input.c.x), true);
    var var_4 = -u_input.a;
    var var_5 = var_2;
    var_4 = vec4<i32>(-2147483647i, 1i, 34124i, var_1.x);
    var_3 = Struct_1(0u, select(select(func_2().x, func_2().x, u_input.c.x >= _wgslsmith_sub_u32(24408u, var_3.a)), (0u ^ _wgslsmith_clamp_u32(var_3.a, var_2.a, var_5.a)) != var_5.a, true));
    let x = u_input.a;
    s_output = StorageBuffer(abs(_wgslsmith_clamp_i32(~38451i | _wgslsmith_add_i32(1i, var_4.x), max(_wgslsmith_sub_i32(-22511i, -14502i), firstLeadingBit(var_1.x)), 1i)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(-590f, -144f) - vec2<f32>(2147f, -324f)), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1216f, -370f), vec2<f32>(-766f, 1055f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-410f, -1361f))) - vec2<f32>(624f, -1489f))))), ~var_0, _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(-1876f, 955f)))), -628f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2089f) + -1869f)))));
}


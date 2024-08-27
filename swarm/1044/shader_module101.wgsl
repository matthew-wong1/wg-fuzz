struct Struct_1 {
    a: vec3<bool>,
    b: f32,
}

struct Struct_2 {
    a: u32,
    b: vec4<i32>,
    c: i32,
}

struct Struct_3 {
    a: f32,
    b: f32,
    c: f32,
    d: vec3<i32>,
}

struct Struct_4 {
    a: vec4<bool>,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: i32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: u32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec3<bool>(true, false, true), 467f);

var<private> global1: Struct_1;

var<private> global2: f32 = -1476f;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_3, arg_2: Struct_2) -> vec2<i32> {
    let var_0 = global1.b;
    let var_1 = Struct_3(global0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global0.b))) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global0.b))))), _wgslsmith_f_op_f32(f32(-1f) * -745f), vec3<i32>(~arg_0.x, firstTrailingBit(2147483647i), u_input.d.x));
    global2 = _wgslsmith_f_op_f32(arg_1.c - 205f);
    return vec2<i32>(max(1i, 10882i), ~(~(-arg_0.x) << (u_input.b.x % 32u)));
}

fn func_2(arg_0: Struct_4) -> vec3<bool> {
    let var_0 = Struct_4(select(arg_0.a, select(vec4<bool>(true, false, global0.a.x, global0.a.x), vec4<bool>(global0.b < 194f, false, all(global0.a), true), !select(arg_0.a, vec4<bool>(arg_0.a.x, global0.a.x, global0.a.x, global1.a.x), vec4<bool>(true, false, global1.a.x, arg_0.a.x))), select(select(!arg_0.a, !vec4<bool>(true, false, global0.a.x, false), any(arg_0.a)), !vec4<bool>(global1.a.x, global1.a.x, global1.a.x, false), true)), vec2<i32>(arg_0.b.x, 1i) & ~(-func_3(vec3<i32>(arg_0.b.x, u_input.d.x, arg_0.b.x), Struct_3(global0.b, global1.b, 2232f, vec3<i32>(2147483647i, 17506i, u_input.c)), Struct_2(u_input.b.x, vec4<i32>(1i, 2757i, arg_0.b.x, arg_0.b.x), u_input.c))));
    global0 = Struct_1(vec3<bool>(~reverseBits(arg_0.b.x) <= var_0.b.x, all(!vec4<bool>(arg_0.a.x, arg_0.a.x, global0.a.x, true)), true), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_div_f32(global0.b, 985f), _wgslsmith_f_op_f32(abs(global0.b))))))));
    return select(select(vec3<bool>(any(global0.a) && true, !arg_0.a.x, any(arg_0.a.ww)), select(!(!vec3<bool>(true, global0.a.x, false)), vec3<bool>(true == global1.a.x, true, false), !(!vec3<bool>(global0.a.x, false, arg_0.a.x))), global0.a.x), !vec3<bool>(all(!arg_0.a.xz), true, !select(false, arg_0.a.x, arg_0.a.x)), !select(vec3<bool>(true, true, var_0.b.x != 45759i), !(!global0.a), !vec3<bool>(false, var_0.a.x, arg_0.a.x)));
}

fn func_1() -> u32 {
    global1 = Struct_1(func_2(Struct_4(vec4<bool>(true, false, any(vec4<bool>(global0.a.x, global0.a.x, global1.a.x, false)), global1.a.x | false), vec2<i32>(u_input.c, 8458i))), global0.b);
    var var_0 = firstLeadingBit(_wgslsmith_add_vec3_u32(u_input.a, vec3<u32>(0u, 944u, _wgslsmith_mult_u32(1u, 1u))));
    global1 = Struct_1(global1.a, -1069f);
    var var_1 = !select(global0.a.yx, global1.a.zz, global1.a.yy);
    global0 = Struct_1(global1.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global1.b)))))));
    return ~firstTrailingBit(reverseBits(firstTrailingBit(var_0.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(~func_1() << (u_input.b.x % 32u), ~vec4<i32>(firstTrailingBit(u_input.d.x), u_input.d.x, u_input.c, countOneBits(u_input.c ^ 2147483647i)), u_input.c);
    var var_1 = _wgslsmith_f_op_f32(trunc(global0.b));
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1f, _wgslsmith_f_op_f32(step(global1.b, global0.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.b)), -1606f))));
    var_2 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(global1.b)), global1.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-873f, 289f))), -918f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global0.b - 2305f)))), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(global1.b * 2291f), _wgslsmith_f_op_f32(1149f + 1614f), -587f, _wgslsmith_f_op_f32(max(var_2.x, global0.b))))))));
    var var_3 = Struct_1(select(!(!(!vec3<bool>(false, global1.a.x, global0.a.x))), global1.a, !global0.a), _wgslsmith_f_op_f32(select(var_2.x, _wgslsmith_f_op_f32(-global0.b), global1.a.x)));
    let var_4 = 4955u | u_input.b.x;
    global0 = Struct_1(global1.a, global0.b);
    var_1 = 514f;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.x, countOneBits(~(~var_0.a) | firstLeadingBit(firstLeadingBit(4294967295u))), -20469i, ~44598u << (var_0.a % 32u), _wgslsmith_mult_vec2_u32(vec2<u32>(max(~var_0.a, ~1u), var_4), _wgslsmith_clamp_vec2_u32(~countOneBits(vec2<u32>(1u, var_4)), firstTrailingBit(_wgslsmith_mult_vec2_u32(vec2<u32>(var_0.a, var_0.a), u_input.a.zz)), u_input.a.yy)));
}


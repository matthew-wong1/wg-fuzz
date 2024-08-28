struct Struct_1 {
    a: vec3<bool>,
    b: vec3<f32>,
    c: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: bool,
    c: Struct_2,
    d: bool,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec4<u32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec3<bool>(false, false, true), vec3<f32>(834f, 852f, -894f), vec2<bool>(false, false));

var<private> global1: bool;

var<private> global2: Struct_1;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: f32) -> vec4<i32> {
    let var_0 = Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(global0.b.xx))), all(!select(!vec4<bool>(global2.c.x, false, false, false), vec4<bool>(global2.a.x, false, global2.a.x, true), vec4<bool>(global0.c.x, global0.a.x, false, true))), Struct_2(Struct_1(select(select(global2.a, global2.a, global2.a), vec3<bool>(false, true, true), !vec3<bool>(global0.c.x, false, global0.a.x)), global0.b, select(!vec2<bool>(global0.c.x, global0.c.x), select(vec2<bool>(true, global0.a.x), vec2<bool>(true, global0.a.x), false), any(vec3<bool>(false, false, true)))), vec3<u32>(select(u_input.d, 0u, false) & _wgslsmith_div_u32(28550u, u_input.b), 0u, u_input.b), Struct_1(global2.a, _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.b.x, global0.b.x, 734f)), vec2<bool>(true, global2.c.x & false)), Struct_1(vec3<bool>(global2.a.x, global2.a.x, false), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global0.b)), !vec2<bool>(global0.a.x, global0.a.x)), Struct_1(vec3<bool>(false, u_input.b == u_input.d, global0.c.x), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(global2.b * global0.b))), !vec2<bool>(global2.c.x, false))), global0.a.x);
    global2 = Struct_1(select(vec3<bool>(global2.c.x, false, false), !var_0.c.a.a, select(!select(global2.a, global0.a, global0.a.x), select(select(global2.a, vec3<bool>(true, false, false), false), vec3<bool>(true, var_0.d, var_0.b), u_input.a <= u_input.a), true)), _wgslsmith_f_op_vec3_f32(-var_0.c.a.b), global0.a.zz);
    let var_1 = abs(_wgslsmith_add_u32(abs(reverseBits(~var_0.c.b.x)), ~(~var_0.c.b.x)));
    var var_2 = countOneBits(-select(u_input.c, -vec4<i32>(u_input.a, u_input.a, -1i, -124039i), select(vec4<bool>(true, var_0.d, true, global0.a.x), vec4<bool>(var_0.c.d.a.x, false, false, global0.c.x), vec4<bool>(false, false, false, global2.c.x)))) ^ -u_input.c;
    let var_3 = Struct_1(select(!(!select(var_0.c.c.a, global0.a, global2.a)), !vec3<bool>(false & global2.a.x, var_0.d, true), !select(select(vec3<bool>(global2.c.x, false, var_0.c.a.a.x), global0.a, var_0.c.c.a), global2.a, select(vec3<bool>(false, global0.a.x, global2.c.x), vec3<bool>(global0.a.x, true, false), vec3<bool>(global0.c.x, var_0.d, global2.a.x)))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(abs(global0.b)), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(exp2(global0.b)))))))), vec2<bool>(true, any(select(global2.a, vec3<bool>(true, true, global2.a.x), true))));
    return u_input.c;
}

fn func_2() -> vec2<u32> {
    var var_0 = func_3(global2.b.x);
    global1 = true;
    global1 = true;
    global0 = Struct_1(global0.a, _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-433f, 478f, -608f))), vec2<bool>(u_input.a == min(_wgslsmith_sub_i32(var_0.x, u_input.c.x), 0i), !global0.c.x));
    global2 = Struct_1(select(vec3<bool>(global0.a.x, all(vec4<bool>(global2.c.x, false, global0.c.x, global0.c.x)), true), select(global0.a, vec3<bool>(var_0.x <= u_input.a, any(global0.a), global0.a.x), any(global0.c)), select(!vec3<bool>(global0.c.x, global0.c.x, false), vec3<bool>(global0.c.x, all(vec2<bool>(global0.c.x, global2.a.x)), all(vec4<bool>(global0.a.x, true, global0.a.x, false))), select(!vec3<bool>(false, global2.c.x, global0.c.x), !vec3<bool>(global0.a.x, global2.a.x, true), global0.a))), _wgslsmith_f_op_vec3_f32(max(global2.b, _wgslsmith_f_op_vec3_f32(-global2.b))), select(vec2<bool>(global2.a.x && global2.c.x, global0.a.x), !select(global0.c, select(global2.a.xy, global2.a.xz, vec2<bool>(true, true)), select(vec2<bool>(false, false), global2.c, global0.c)), vec2<bool>(true, any(!vec2<bool>(global0.c.x, false)))));
    return vec2<u32>(u_input.b, 1u);
}

fn func_1(arg_0: vec3<f32>, arg_1: vec4<u32>) -> vec2<u32> {
    return ~func_2();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_clamp_vec2_u32(~(~func_1(global0.b, ~vec4<u32>(u_input.d, 68981u, u_input.d, 15608u))), abs(firstTrailingBit(_wgslsmith_div_vec2_u32(~vec2<u32>(1u, u_input.b), ~vec2<u32>(u_input.d, 0u)))), vec2<u32>(abs(~(~81715u)), u_input.d));
    var var_1 = ~(~(~29186u));
    let var_2 = Struct_2(Struct_1(select(!global0.a, vec3<bool>(all(vec4<bool>(true, false, true, global0.a.x)), true, !global0.a.x), global2.a), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(sign(global0.b)))), global2.c), vec3<u32>(7573u, var_0.x, ~0u), Struct_1(!select(vec3<bool>(global0.c.x, global2.a.x, true), global2.a, select(global2.a, global2.a, false)), vec3<f32>(global2.b.x, global2.b.x, global2.b.x), !select(select(vec2<bool>(true, global2.a.x), global0.a.xy, false), vec2<bool>(global0.c.x, global2.c.x), any(vec2<bool>(global0.c.x, global0.a.x)))), Struct_1(vec3<bool>(true, (u_input.b & 14536u) == (var_0.x & 22505u), true), vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global0.b.x), _wgslsmith_f_op_f32(-1264f * global2.b.x))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-747f, -1195f) * global0.b.x), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global2.b.x), global0.b.x))), select(global0.a.xx, select(!vec2<bool>(global0.c.x, global2.a.x), global0.c, global0.a.x), !global2.a.x)), Struct_1(global0.a, vec3<f32>(global0.b.x, _wgslsmith_f_op_f32(-global0.b.x), _wgslsmith_f_op_f32(390f - _wgslsmith_f_op_f32(step(458f, global0.b.x)))), !global0.c));
    let var_3 = Struct_1(global0.a, vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b.x) - _wgslsmith_f_op_f32(select(global0.b.x, 386f, true))))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1873f - 238f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1133f)) * _wgslsmith_div_f32(global2.b.x, -633f)))), global2.c);
    global0 = Struct_1(!(!var_2.a.a), vec3<f32>(global0.b.x, -1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.b.x))), vec2<bool>(true, true));
    let var_4 = _wgslsmith_f_op_vec3_f32(global0.b - _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-global0.b))))));
    let var_5 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec4_i32(~vec4<i32>(u_input.a, 0i, -39455i, u_input.a) << (~vec4<u32>(var_5.b.x, 53265u, u_input.d, 14548u) % vec4<u32>(32u)), u_input.c, u_input.c ^ u_input.c), _wgslsmith_add_u32(23540u, _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(select(vec4<u32>(28335u, var_5.b.x, 9788u, 0u), vec4<u32>(4294967295u, var_5.b.x, 0u, u_input.d), var_5.e.c.x), firstLeadingBit(vec4<u32>(u_input.d, 0u, 4294967295u, u_input.b))), ~vec4<u32>(var_0.x, var_0.x, 4294967295u, var_5.b.x))), select(_wgslsmith_div_vec4_u32(_wgslsmith_add_vec4_u32(~vec4<u32>(var_2.b.x, 0u, u_input.d, 1u), vec4<u32>(1u, var_2.b.x, 22624u, 4294967295u)), ~_wgslsmith_sub_vec4_u32(vec4<u32>(var_2.b.x, 26533u, 36509u, var_0.x), vec4<u32>(0u, u_input.b, var_0.x, 81710u))), vec4<u32>(~_wgslsmith_clamp_u32(4294967295u, 4294967295u, var_2.b.x), 0u, 1u, ~var_0.x), select(!select(vec4<bool>(var_2.d.a.x, var_2.d.c.x, false, global0.a.x), vec4<bool>(true, true, var_2.a.a.x, true), vec4<bool>(true, global2.a.x, false, var_5.c.a.x)), vec4<bool>(true, !var_5.a.a.x, true, 367f != var_2.a.b.x), select(select(vec4<bool>(false, false, global0.c.x, var_5.e.a.x), vec4<bool>(false, global2.a.x, global0.a.x, var_2.d.c.x), var_3.c.x), !vec4<bool>(true, global0.a.x, false, var_5.a.c.x), global0.a.x && global0.a.x))), var_4);
}


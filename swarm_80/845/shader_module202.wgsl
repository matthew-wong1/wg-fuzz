struct Struct_1 {
    a: f32,
    b: vec4<bool>,
    c: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<f32>,
    c: vec4<i32>,
    d: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(Struct_2(Struct_1(532f, vec4<bool>(true, true, false, false), vec3<f32>(-954f, -846f, 1624f)), Struct_1(-471f, vec4<bool>(true, true, true, true), vec3<f32>(713f, 1103f, -342f))), vec3<f32>(1175f, -494f, 1016f), vec4<i32>(-3552i, i32(-2147483648), 11787i, -1i), 8144u);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: vec2<f32>, arg_1: u32) -> Struct_1 {
    return global0.a.b;
}

fn func_3(arg_0: Struct_1) -> vec4<i32> {
    let var_0 = !all(arg_0.b) & true;
    var var_1 = arg_0.b.wy;
    global0 = Struct_3(global0.a, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-482f, -259f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.c.x) - global0.b.x))), vec4<i32>(22866i, _wgslsmith_add_i32(global0.c.x, reverseBits(u_input.b.x)), ~global0.c.x, global0.c.x) ^ (global0.c >> (~abs(vec4<u32>(0u, u_input.a, 4294967295u, u_input.a)) % vec4<u32>(32u))), 15592u);
    var_1 = global0.a.b.b.wy;
    let var_2 = Struct_1(-541f, vec4<bool>(global0.a.b.b.x, global0.a.a.b.x, func_2(arg_0.c.zz, global0.d | firstTrailingBit(1u)).b.x, var_0), _wgslsmith_f_op_vec3_f32(arg_0.c + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global0.a.b.c))));
    return vec4<i32>(-2147483647i, u_input.b.x, u_input.b.x, ~firstTrailingBit(_wgslsmith_dot_vec2_i32(countOneBits(vec2<i32>(2147483647i, 33661i)), global0.c.xz)));
}

fn func_1() -> Struct_2 {
    let var_0 = -2147483647i;
    let var_1 = -817f;
    var var_2 = _wgslsmith_f_op_f32(f32(-1f) * -159f) > _wgslsmith_f_op_f32(-var_1);
    global0 = Struct_3(global0.a, vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(703f * 580f))), _wgslsmith_f_op_f32(-475f * global0.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_1))))), _wgslsmith_add_vec4_i32(func_3(func_2(vec2<f32>(global0.b.x, 295f), u_input.a << (16378u % 32u))), vec4<i32>(min(-6128i, 27628i), firstTrailingBit(global0.c.x), ~u_input.b.x, ~u_input.b.x) << (~(~vec4<u32>(u_input.a, 79984u, 1u, 47650u)) % vec4<u32>(32u))), _wgslsmith_sub_u32(firstTrailingBit(global0.d), 4294967295u));
    var var_3 = _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(~vec2<i32>(global0.c.x, -2147483647i), firstTrailingBit(_wgslsmith_mod_vec2_i32(vec2<i32>(var_0, var_0), vec2<i32>(u_input.b.x, var_0)))), abs(min(u_input.b.x, var_0)) & -1i) | u_input.b.x;
    return global0.a;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_3(func_1(), global0.b, vec4<i32>(global0.c.x, -75891i, min(~_wgslsmith_mult_i32(global0.c.x, -2562i), i32(-1i) * -u_input.b.x), _wgslsmith_clamp_i32(u_input.b.x, 41889i, global0.c.x)), 0u);
    var var_0 = Struct_2(func_2(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1223f, 600f)))), vec2<f32>(397f, _wgslsmith_f_op_f32(sign(1774f))))), 19986u), Struct_1(func_2(vec2<f32>(1000f, 1f), u_input.a).a, vec4<bool>(global0.a.b.b.x, global0.a.a.b.x, true, true), vec3<f32>(global0.b.x, global0.b.x, _wgslsmith_f_op_f32(-1649f - global0.a.b.a))));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(1635f, 1674f, -645f, 1307f) - vec4<f32>(global0.b.x, var_0.b.c.x, 1929f, global0.a.b.a)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b.c.x, -1275f, var_0.b.a, -804f)))))) * vec4<f32>(var_0.b.c.x, -585f, global0.a.b.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.c.x + global0.a.b.a)))));
    var var_2 = var_0.a.b.zyw;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_i32(_wgslsmith_sub_i32(u_input.b.x, _wgslsmith_add_i32(_wgslsmith_sub_i32(0i, 4467i), reverseBits(37659i))), u_input.b.x), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(var_1)))))));
}


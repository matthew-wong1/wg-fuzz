struct Struct_1 {
    a: vec3<u32>,
    b: i32,
    c: vec2<f32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec4<f32>,
}

struct Struct_3 {
    a: bool,
    b: u32,
    c: Struct_1,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec3<u32>,
    d: vec3<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 26> = array<f32, 26>(-403f, 197f, -1177f, -1301f, -530f, 397f, 1581f, -315f, 951f, 105f, 3601f, -381f, -1047f, -2008f, 968f, -439f, -259f, 1244f, 1000f, 468f, 450f, -1413f, 1189f, -1735f, 186f, 1432f);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3() -> i32 {
    var var_0 = Struct_1(vec3<u32>(u_input.a.x, 1u, _wgslsmith_mult_u32(u_input.b, 4294967295u)), firstTrailingBit(_wgslsmith_div_i32(0i, _wgslsmith_add_i32(-23049i, 1i)) & _wgslsmith_add_i32(u_input.d.x, 53644i)), vec2<f32>(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(58431u, u_input.a.x), 26u)], global0[_wgslsmith_index_u32(~_wgslsmith_mult_u32(_wgslsmith_div_u32(0u, u_input.b), 4294967295u), 26u)]));
    var_0 = Struct_1(_wgslsmith_mult_vec3_u32(vec3<u32>(~(var_0.a.x << (var_0.a.x % 32u)), min(var_0.a.x, u_input.c.x) >> (abs(u_input.a.x) % 32u), countOneBits(~21764u)), vec3<u32>(~u_input.b, 71490u, var_0.a.x)), -67884i, vec2<f32>(var_0.c.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1110f, var_0.c.x)))))));
    var var_1 = Struct_1(select(u_input.c, vec3<u32>(1u, 5429u, _wgslsmith_sub_u32(var_0.a.x, 0u) & _wgslsmith_add_u32(u_input.c.x, u_input.b)), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), select(select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(true, true, false)), vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), false)))), firstLeadingBit(_wgslsmith_mult_i32(~_wgslsmith_mod_i32(-2147483647i, -49491i), _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(u_input.d.zz, u_input.d.zx), select(u_input.d.zx, vec2<i32>(u_input.e, var_0.b), vec2<bool>(true, false))))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(var_0.c, vec2<f32>(global0[_wgslsmith_index_u32(85592u, 26u)], -963f)), _wgslsmith_f_op_vec2_f32(-var_0.c), select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true)))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_0.c.x, 660f))), _wgslsmith_f_op_vec2_f32(select(var_0.c, vec2<f32>(global0[_wgslsmith_index_u32(0u, 26u)], -1000f), true))))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(sign(var_0.c)), var_0.c)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(63317u, 26u)], var_0.c.x))), false)));
    let var_2 = ~(5662u >> (var_0.a.x % 32u));
    var var_3 = _wgslsmith_f_op_f32(round(-667f));
    return 2147483647i << (~_wgslsmith_mod_u32(var_0.a.x, _wgslsmith_dot_vec4_u32(~vec4<u32>(43928u, 4294967295u, u_input.c.x, 74669u), _wgslsmith_add_vec4_u32(vec4<u32>(var_0.a.x, 34044u, 16811u, 63834u), vec4<u32>(79046u, 40642u, var_1.a.x, u_input.a.x)))) % 32u);
}

fn func_2(arg_0: u32, arg_1: Struct_1, arg_2: vec3<f32>) -> bool {
    let var_0 = _wgslsmith_mod_u32(4294967295u, 1u);
    let var_1 = -func_3();
    var var_2 = Struct_2(vec2<bool>(!all(vec2<bool>(false, false)), true), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(ceil(-883f)), global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(arg_1.a.x, u_input.a.x), 26u)], _wgslsmith_f_op_f32(-363f * arg_2.x), -1784f), _wgslsmith_div_vec4_f32(vec4<f32>(arg_2.x, arg_2.x, arg_2.x, arg_2.x), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1084f, global0[_wgslsmith_index_u32(u_input.b, 26u)], 679f, 285f), vec4<f32>(arg_1.c.x, global0[_wgslsmith_index_u32(arg_1.a.x, 26u)], -768f, arg_1.c.x), true)))))));
    global0 = array<f32, 26>();
    let var_3 = select(vec3<u32>(4294967295u, ~36527u, arg_1.a.x), countOneBits(~vec3<u32>(var_0, 1u, 8900u) & u_input.c), any(vec4<bool>(any(!vec3<bool>(true, var_2.a.x, true)), all(vec3<bool>(var_2.a.x, var_2.a.x, var_2.a.x)), !var_2.a.x && true, 0i < -u_input.d.x)));
    return any(vec3<bool>(true, !var_2.a.x, true));
}

fn func_1(arg_0: Struct_2) -> Struct_2 {
    var var_0 = !vec3<bool>(!(_wgslsmith_f_op_f32(-arg_0.b.x) >= _wgslsmith_f_op_f32(657f - global0[_wgslsmith_index_u32(u_input.a.x, 26u)])), true, true);
    let var_1 = vec4<i32>(3851i, -879i, 2147483647i, min(~select(firstTrailingBit(u_input.e), 0i, u_input.d.x == -2147483647i), _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(max(vec3<i32>(u_input.d.x, u_input.d.x, 4448i), vec3<i32>(-27796i, u_input.d.x, 29788i)), u_input.d, u_input.d), vec3<i32>(2147483647i, ~(-14973i), u_input.d.x))));
    var var_2 = Struct_1(u_input.c, _wgslsmith_dot_vec2_i32(vec2<i32>(var_1.x, _wgslsmith_sub_i32(u_input.e, u_input.e)) >> (u_input.a % vec2<u32>(32u)), vec2<i32>(1i, var_1.x)), vec2<f32>(global0[_wgslsmith_index_u32(4294967295u, 26u)], _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1042f * 1000f)))));
    let var_3 = vec4<bool>(!(!(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(0u, 26u)] - 295f) < _wgslsmith_f_op_f32(round(887f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-743f - arg_0.b.x))) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(-977f, 154f)), _wgslsmith_f_op_f32(1575f + -698f), func_2(var_2.a.x, Struct_1(vec3<u32>(var_2.a.x, var_2.a.x, 1u), u_input.e, var_2.c), arg_0.b.wwx)))) < _wgslsmith_f_op_f32(round(var_2.c.x)), (!arg_0.a.x | (all(vec4<bool>(var_0.x, true, arg_0.a.x, true)) || true)) && var_0.x, var_0.x);
    let var_4 = 476f;
    return arg_0;
}

fn func_4(arg_0: Struct_2, arg_1: bool) -> StorageBuffer {
    let var_0 = Struct_1(vec3<u32>(u_input.b, 33112u, ~u_input.b) | u_input.c, _wgslsmith_dot_vec4_i32(-((vec4<i32>(22990i, u_input.d.x, u_input.e, u_input.d.x) >> (vec4<u32>(u_input.c.x, u_input.b, 19585u, u_input.a.x) % vec4<u32>(32u))) & ~vec4<i32>(u_input.d.x, -1i, -1i, 8856i)), -(~vec4<i32>(-1i, 9481i, u_input.e, u_input.e) | vec4<i32>(-15122i, u_input.e, 6554i, u_input.e))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(arg_0.b.wy))));
    let var_1 = ~var_0.a.zz;
    global0 = array<f32, 26>();
    var var_2 = -2147483647i;
    var var_3 = vec3<u32>(abs(_wgslsmith_clamp_u32(u_input.c.x, 1u, 1u)), ~(~min(var_0.a.x, u_input.b)), 107628u);
    return StorageBuffer(var_0.a);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 26>();
    let var_0 = 4294967295u;
    global0 = array<f32, 26>();
    global0 = array<f32, 26>();
    let var_1 = 0i;
    global0 = array<f32, 26>();
    let x = u_input.a;
    s_output = func_4(func_1(Struct_2(vec2<bool>(true, true), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-499f, -501f, global0[_wgslsmith_index_u32(25653u, 26u)], global0[_wgslsmith_index_u32(var_0, 26u)]))))), !(all(vec3<bool>(true, true, true)) || false));
}


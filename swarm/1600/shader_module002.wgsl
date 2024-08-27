struct Struct_1 {
    a: vec3<u32>,
    b: vec4<f32>,
    c: vec2<u32>,
    d: vec3<f32>,
    e: vec2<i32>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: i32,
    b: bool,
    c: vec4<bool>,
    d: f32,
    e: Struct_2,
}

struct Struct_4 {
    a: vec3<bool>,
}

struct Struct_5 {
    a: Struct_3,
    b: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 1>;

var<private> global1: array<i32, 30> = array<i32, 30>(54565i, 16157i, i32(-2147483648), -3801i, i32(-2147483648), i32(-2147483648), -45548i, 3399i, 26427i, 2147483647i, 1i, 1i, i32(-2147483648), i32(-2147483648), -10930i, 31767i, 21613i, -3003i, 2147483647i, -1i, 3610i, 0i, i32(-2147483648), 8581i, -40989i, 11488i, 32515i, 20259i, 1i, i32(-2147483648));

var<private> global2: Struct_5 = Struct_5(Struct_3(-43908i, false, vec4<bool>(true, true, true, false), -1529f, Struct_2(false)), Struct_2(false));

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: vec3<f32>) -> f32 {
    let var_0 = global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(4294967295u, ~u_input.c.x), 1u)];
    let var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.x, 276f));
    var var_2 = !select(select(global2.a.c.xy, select(select(global2.a.c.zw, vec2<bool>(false, global2.a.b), false), select(vec2<bool>(var_0.a.e.a, var_0.b.a), global2.a.c.yw, false), false), var_0.a.e.a), vec2<bool>(true, !(var_1.x <= 469f)), false);
    var var_3 = _wgslsmith_dot_vec2_i32(~(~(~vec2<i32>(-37210i, global2.a.a)) << (vec2<u32>(0u >> (u_input.a % 32u), 1u) % vec2<u32>(32u))), vec2<i32>(var_0.a.a, firstLeadingBit(~global2.a.a)) & max(_wgslsmith_mod_vec2_i32(-vec2<i32>(global2.a.a, 40012i), reverseBits(vec2<i32>(var_0.a.a, var_0.a.a))), -vec2<i32>(global1[_wgslsmith_index_u32(9009u, 30u)], -2147483647i) << (vec2<u32>(u_input.b, u_input.a) % vec2<u32>(32u))));
    let var_4 = Struct_1(_wgslsmith_add_vec3_u32(min(~(~vec3<u32>(u_input.c.x, 81718u, u_input.a)), vec3<u32>(_wgslsmith_add_u32(u_input.a, 73700u), _wgslsmith_div_u32(u_input.c.x, 1u), u_input.c.x >> (u_input.c.x % 32u))), select(~vec3<u32>(u_input.c.x, 0u, u_input.a) >> ((vec3<u32>(108961u, 64520u, u_input.c.x) >> (vec3<u32>(u_input.c.x, 0u, u_input.a) % vec3<u32>(32u))) % vec3<u32>(32u)), vec3<u32>(select(u_input.b, u_input.b, true), u_input.c.x, max(u_input.c.x, 38151u)), false)), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1284f))), -1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global2.a.d)) * -996f), -612f) - _wgslsmith_f_op_vec4_f32(round(vec4<f32>(262f, _wgslsmith_f_op_f32(ceil(-1755f)), _wgslsmith_f_op_f32(min(var_1.x, 617f)), _wgslsmith_f_op_f32(sign(1227f)))))), ~_wgslsmith_sub_vec2_u32(vec2<u32>(32335u, _wgslsmith_clamp_u32(u_input.a, u_input.c.x, 0u)), _wgslsmith_clamp_vec2_u32(_wgslsmith_add_vec2_u32(u_input.c, u_input.c), reverseBits(vec2<u32>(1u, 44502u)), abs(u_input.c))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-245f, -264f, 1f))))), min(-min(~vec2<i32>(-2147483647i, global2.a.a), ~vec2<i32>(var_0.a.a, -6799i)), vec2<i32>(global1[_wgslsmith_index_u32(4294967295u >> (firstTrailingBit(1u) % 32u), 30u)], var_0.a.a)));
    return var_0.a.d;
}

fn func_2(arg_0: vec4<bool>) -> Struct_4 {
    var var_0 = Struct_2(global2.a.e.a);
    let var_1 = Struct_1(_wgslsmith_mult_vec3_u32(~vec3<u32>(u_input.c.x, 0u, u_input.a) | ~vec3<u32>(0u, 4294967295u, u_input.b), vec3<u32>(38279u, u_input.b, 37013u) | select(vec3<u32>(4294967295u, 4294967295u, u_input.a), vec3<u32>(u_input.c.x, u_input.b, u_input.a), true)) ^ vec3<u32>(~u_input.b, 1u, _wgslsmith_add_u32(1u, u_input.b)), vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.a.d * global2.a.d) * _wgslsmith_f_op_f32(trunc(global2.a.d))), -820f)), _wgslsmith_f_op_f32(func_3(vec3<f32>(_wgslsmith_f_op_f32(trunc(global2.a.d)), _wgslsmith_f_op_f32(f32(-1f) * -711f), _wgslsmith_f_op_f32(global2.a.d - 612f)))), global2.a.d, 1636f), ~(~select(vec2<u32>(u_input.c.x, 45611u), vec2<u32>(u_input.a, u_input.a), arg_0.wy) ^ u_input.c), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global2.a.d, 282f, -172f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1000f, -1045f, global2.a.d))))))), ~abs(_wgslsmith_sub_vec2_i32(vec2<i32>(34488i, global2.a.a), vec2<i32>(2147483647i, -35857i))));
    global2 = Struct_5(global2.a, global2.b);
    var_0 = Struct_2(true);
    global1 = array<i32, 30>();
    return Struct_4(vec3<bool>(true, true, global2.b.a));
}

fn func_1(arg_0: vec2<bool>, arg_1: bool, arg_2: f32) -> vec2<i32> {
    var var_0 = func_2(vec4<bool>(arg_1, any(select(vec3<bool>(arg_0.x, global2.a.b, arg_0.x), global2.a.c.wxx, 710f > global2.a.d)), all(arg_0), true));
    var var_1 = func_2(!vec4<bool>(true && (arg_2 > 373f), true, all(global2.a.c) | false, false));
    global1 = array<i32, 30>();
    let var_2 = !any(!select(vec3<bool>(var_1.a.x, arg_0.x, true), vec3<bool>(arg_1, global2.a.e.a, var_0.a.x), select(vec3<bool>(true, false, true), var_1.a, arg_1)));
    global1 = array<i32, 30>();
    return vec2<i32>(global1[_wgslsmith_index_u32(u_input.b, 30u)], -global1[_wgslsmith_index_u32(u_input.c.x, 30u)] << (u_input.a % 32u));
}

fn func_4(arg_0: vec2<i32>, arg_1: vec3<u32>, arg_2: Struct_3) -> Struct_5 {
    let var_0 = Struct_5(Struct_3(global1[_wgslsmith_index_u32(138040u & ~u_input.a, 30u)], (true | all(global2.a.c.wyw)) | true, !(!select(vec4<bool>(arg_2.c.x, arg_2.b, global2.a.c.x, false), vec4<bool>(true, arg_2.e.a, false, arg_2.b), true)), 614f, Struct_2(global2.b.a)), Struct_2(true));
    global1 = array<i32, 30>();
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = func_4(max(~(~vec2<i32>(-32427i, global1[_wgslsmith_index_u32(u_input.c.x, 30u)])) >> (~u_input.c % vec2<u32>(32u)), func_1(select(vec2<bool>(false, true), vec2<bool>(true, true), global2.b.a), !(global2.b.a & global2.a.e.a), _wgslsmith_div_f32(684f, global2.a.d))), _wgslsmith_mod_vec3_u32(vec3<u32>(0u & _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.b, u_input.b, u_input.b), vec4<u32>(u_input.a, 1u, u_input.a, 0u)), 0u, u_input.b << (~4294967295u % 32u)), firstTrailingBit(~vec3<u32>(u_input.a, 8211u, 48043u))), Struct_3(2147483647i, all(global2.a.c), select(!(!global2.a.c), select(select(global2.a.c, vec4<bool>(global2.a.e.a, false, global2.a.b, global2.b.a), false), !global2.a.c, !global2.a.c), any(!global2.a.c.wyx)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(403f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1315f) * 103f)), Struct_2(any(global2.a.c.xx))));
    var var_0 = _wgslsmith_sub_vec4_u32(~(~firstTrailingBit(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.c.x, u_input.b, u_input.b, 29724u), vec4<u32>(u_input.c.x, 1u, 0u, 0u)))), ~select(_wgslsmith_clamp_vec4_u32(~vec4<u32>(u_input.a, u_input.c.x, u_input.c.x, u_input.b), ~vec4<u32>(44037u, 0u, u_input.a, 4294967295u), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.c.x, 54091u, u_input.c.x, u_input.b), vec4<u32>(4294967295u, u_input.b, 1u, 24271u), vec4<u32>(u_input.b, u_input.b, u_input.b, 4294967295u))), vec4<u32>(firstTrailingBit(u_input.b), u_input.a, 0u >> (u_input.b % 32u), _wgslsmith_mult_u32(u_input.c.x, 1u)), true));
    var var_1 = vec2<u32>(max(0u, ~(~_wgslsmith_mod_u32(u_input.c.x, var_0.x))), firstTrailingBit(0u));
    let var_2 = Struct_3(_wgslsmith_add_i32(global2.a.a, ~_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, global2.a.a, 2147483647i), vec3<i32>(-35029i, global1[_wgslsmith_index_u32(62674u, 30u)], global2.a.a))) >> (var_0.x % 32u), false, vec4<bool>(true, _wgslsmith_mod_u32(1u, u_input.c.x & var_1.x) < ~50148u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1129f)) * global2.a.d) >= global2.a.d, !(!any(vec3<bool>(global2.b.a, true, true)))), _wgslsmith_f_op_f32(trunc(1f)), Struct_2(global2.a.e.a));
    let var_3 = var_2;
    var var_4 = func_2(select(vec4<bool>(var_2.e.a, _wgslsmith_f_op_f32(-var_3.d) < var_3.d, _wgslsmith_mult_i32(var_2.a, 1i) < var_2.a, !(!var_3.b)), vec4<bool>(all(!var_3.c), true, min(u_input.b, var_0.x) == _wgslsmith_sub_u32(9698u, var_1.x), !global2.b.a), !(min(var_0.x, 4294967295u) == var_0.x)));
    var var_5 = firstTrailingBit(_wgslsmith_clamp_i32(~global2.a.a, -8131i, global2.a.a));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(2086f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f * var_2.d) - global2.a.d))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.a.d)))), vec4<u32>(1u, u_input.b, 0u, abs(~var_0.x)));
}


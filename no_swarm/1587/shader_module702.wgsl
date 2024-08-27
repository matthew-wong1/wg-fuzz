struct Struct_1 {
    a: u32,
    b: u32,
    c: i32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec3<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: bool,
    e: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 26> = array<bool, 26>(true, true, true, false, false, true, true, false, true, false, false, true, true, true, true, true, false, true, true, true, false, false, true, false, true, false);

var<private> global1: array<vec3<f32>, 17>;

var<private> global2: Struct_3 = Struct_3(Struct_1(1u, 0u, 27424i), Struct_1(4294967295u, 1u, -13064i), Struct_1(4294967295u, 68598u, -34842i), true, 4294967295u);

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec2<f32>) -> i32 {
    let var_0 = vec4<i32>(25888i, min(_wgslsmith_dot_vec2_i32(firstTrailingBit(max(u_input.a.wz, u_input.a.wz)), _wgslsmith_mod_vec2_i32(u_input.a.ww, countOneBits(u_input.a.xx))), _wgslsmith_mult_i32(~firstLeadingBit(-1166i), 7296i)), -70126i, global2.c.c);
    return var_0.x;
}

fn func_2() -> Struct_3 {
    let var_0 = vec4<bool>(true, global0[_wgslsmith_index_u32(select(~35436u, 30116u, 1u > _wgslsmith_clamp_u32(~16706u, firstLeadingBit(global2.e), _wgslsmith_dot_vec4_u32(vec4<u32>(global2.e, global2.b.b, 4294967295u, global2.a.b), vec4<u32>(global2.b.a, global2.a.b, global2.c.b, 26986u)))), 26u)], true, global2.d);
    var var_1 = vec4<i32>(1996i, u_input.a.x, u_input.a.x, firstTrailingBit(~(func_3(vec2<f32>(2736f, -235f)) ^ global2.a.c)));
    let var_2 = select(select(select(select(var_0, var_0, !var_0), !vec4<bool>(var_0.x, false, true, var_0.x), any(select(var_0.ywy, vec3<bool>(true, var_0.x, var_0.x), var_0.ywz))), select(select(var_0, vec4<bool>(true, var_0.x, global0[_wgslsmith_index_u32(global2.e, 26u)], false), true), vec4<bool>(true, true, all(var_0), global2.d), !(!global2.d)), false), select(!(!select(vec4<bool>(var_0.x, global0[_wgslsmith_index_u32(54488u, 26u)], global2.d, false), vec4<bool>(false, global2.d, true, global2.d), var_0)), vec4<bool>(!select(true, var_0.x, global2.d), _wgslsmith_dot_vec2_i32(u_input.a.zw, vec2<i32>(-1i, global2.c.c)) == -2147483647i, false == global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(global2.c.b, global2.e), 26u)], true & !var_0.x), !vec4<bool>(false, any(var_0), global2.e <= global2.b.b, any(vec2<bool>(false, true)))), select(!(!select(vec4<bool>(global2.d, true, true, var_0.x), vec4<bool>(global0[_wgslsmith_index_u32(global2.e, 26u)], false, true, var_0.x), var_0.x)), var_0, !select(vec4<bool>(true, false, global0[_wgslsmith_index_u32(4294967295u, 26u)], false), var_0, var_0.x)));
    let var_3 = _wgslsmith_div_vec2_u32(_wgslsmith_add_vec2_u32(select(vec2<u32>(global2.b.b, global2.b.a), vec2<u32>(global2.a.b, 50259u), true), vec2<u32>(33115u, 4294967295u)) & vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, global2.c.a, global2.c.b, 1u), vec4<u32>(global2.c.a, 43730u, 35256u, 0u)), global2.a.b >> (global2.a.a % 32u)), _wgslsmith_sub_vec2_u32(vec2<u32>(_wgslsmith_mult_u32(global2.a.b, 4294967295u), ~3793u), ~reverseBits(vec2<u32>(4294967295u, global2.a.b)))) & abs(~vec2<u32>(global2.c.b, global2.a.a) ^ vec2<u32>(global2.e, global2.a.a));
    var var_4 = global2.b;
    return Struct_3(Struct_1(var_3.x, var_3.x, -(~33404i)), Struct_1(1u, select(_wgslsmith_mult_u32(1u, ~12420u), var_4.a, false), -abs(var_4.c)), Struct_1(_wgslsmith_dot_vec2_u32(vec2<u32>(reverseBits(0u), 33377u), vec2<u32>(global2.b.b, var_4.a)), var_4.b, -12030i & select(func_3(vec2<f32>(-885f, -835f)), firstTrailingBit(u_input.a.x), var_2.x)), true, var_4.a);
}

fn func_1() -> Struct_1 {
    let var_0 = func_2();
    var var_1 = func_2().a;
    var var_2 = -(~3709i) << (~(var_1.a << (_wgslsmith_dot_vec4_u32(select(vec4<u32>(var_1.b, 4294967295u, var_0.c.b, global2.b.b), vec4<u32>(4294967295u, var_0.a.a, var_0.e, global2.a.b), false), vec4<u32>(0u, 29702u, global2.a.b, var_1.a) << (vec4<u32>(global2.c.a, 81905u, 93039u, global2.e) % vec4<u32>(32u))) % 32u)) % 32u);
    let var_3 = -2147483647i;
    let var_4 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(floor(-639f)), _wgslsmith_f_op_f32(step(957f, -1084f)))) - vec2<f32>(_wgslsmith_f_op_f32(-1159f + 605f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-196f, -2488f)) + _wgslsmith_f_op_f32(f32(-1f) * -559f)))));
    return Struct_1(var_1.b, ~(_wgslsmith_sub_u32(global2.c.b, global2.a.a) >> (var_0.b.a % 32u)), _wgslsmith_sub_i32(reverseBits(~var_3), var_0.a.c));
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: vec2<i32>) -> vec3<bool> {
    global1 = array<vec3<f32>, 17>();
    var var_0 = select(vec3<bool>(global0[_wgslsmith_index_u32(~firstLeadingBit(1u), 26u)], global0[_wgslsmith_index_u32(~(~reverseBits(4294967295u)), 26u)], false), select(select(select(vec3<bool>(global0[_wgslsmith_index_u32(global2.a.a, 26u)], false, global2.d), vec3<bool>(global0[_wgslsmith_index_u32(arg_0.a, 26u)], global2.d, global0[_wgslsmith_index_u32(arg_1, 26u)]), 1u >= arg_1), !vec3<bool>(global0[_wgslsmith_index_u32(25247u, 26u)], false, global2.d), true), select(select(select(vec3<bool>(false, true, true), vec3<bool>(global0[_wgslsmith_index_u32(17988u, 26u)], global0[_wgslsmith_index_u32(53742u, 26u)], false), vec3<bool>(false, false, true)), select(vec3<bool>(false, global2.d, global0[_wgslsmith_index_u32(arg_1, 26u)]), vec3<bool>(true, global2.d, true), vec3<bool>(false, true, global2.d)), true), vec3<bool>(true, true, true), false), global0[_wgslsmith_index_u32(4294967295u, 26u)]), true);
    var_0 = vec3<bool>(global0[_wgslsmith_index_u32(global2.a.a, 26u)], !var_0.x & false, false);
    var_0 = vec3<bool>(all(!vec2<bool>(true, !global2.d)), !(global2.d && false), var_0.x);
    global1 = array<vec3<f32>, 17>();
    return select(!vec3<bool>(global2.d, global0[_wgslsmith_index_u32(firstLeadingBit(arg_0.b), 26u)], !var_0.x), !(!select(vec3<bool>(var_0.x, true, false), !vec3<bool>(global2.d, var_0.x, global2.d), true)), true);
}

fn func_5(arg_0: i32, arg_1: vec3<bool>) -> Struct_3 {
    global1 = array<vec3<f32>, 17>();
    let var_0 = Struct_2(vec4<bool>(true, true, global0[_wgslsmith_index_u32(~9456u, 26u)], 0u != global2.c.a), _wgslsmith_f_op_vec3_f32(global1[_wgslsmith_index_u32(1u, 17u)] + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(vec3<f32>(-271f, 2872f, -1571f), vec3<f32>(281f, 1325f, -1575f)))), vec3<f32>(-1988f, _wgslsmith_f_op_f32(f32(-1f) * -368f), -1000f), !arg_1))));
    global2 = func_2();
    let var_1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(var_0.b.x, var_0.b.x)))), var_0.b.x)) * 997f), -1602f, func_4(func_2().a, reverseBits(0u), vec2<i32>(-1i, firstLeadingBit(abs(0i)))).x));
    global0 = array<bool, 26>();
    return Struct_3(global2.c, func_2().a, func_1(), true, ~1u);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = func_5((-9513i | u_input.a.x) | 0i, func_4(func_1(), ~select(min(global2.e, global2.a.b), global2.c.a, false), max(max(u_input.a.xw, vec2<i32>(u_input.a.x, -12155i)), select(u_input.a.xx, vec2<i32>(u_input.a.x, u_input.a.x), vec2<bool>(false, false)) << (~vec2<u32>(global2.c.b, global2.e) % vec2<u32>(32u)))));
    global1 = array<vec3<f32>, 17>();
    var var_0 = _wgslsmith_f_op_f32(514f * 1743f);
    global0 = array<bool, 26>();
    let var_1 = u_input.a.ww;
    let var_2 = 64807i;
    let x = u_input.a;
    s_output = StorageBuffer(abs(_wgslsmith_clamp_u32(1u, ~54773u, ~(global2.a.b | global2.b.b))), _wgslsmith_div_vec3_f32(global1[_wgslsmith_index_u32(~4294967295u, 17u)], _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-300f, -278f, -363f), global1[_wgslsmith_index_u32(4294967295u, 17u)])), vec3<f32>(451f, 723f, -1747f)))))), _wgslsmith_dot_vec4_i32(min(vec4<i32>(var_1.x, _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, -55075i, var_1.x, var_2), u_input.a), var_1.x, 1i), vec4<i32>(firstTrailingBit(global2.c.c), abs(global2.b.c), _wgslsmith_dot_vec4_i32(vec4<i32>(-12194i, 0i, var_2, var_2), vec4<i32>(38666i, global2.b.c, -18641i, u_input.a.x)), -2147483647i)), (u_input.a | _wgslsmith_sub_vec4_i32(vec4<i32>(global2.a.c, -16281i, 49252i, u_input.a.x), vec4<i32>(global2.a.c, -32565i, global2.a.c, var_2))) & vec4<i32>(_wgslsmith_sub_i32(u_input.a.x, -13896i), var_1.x, 8503i, 1i)));
}


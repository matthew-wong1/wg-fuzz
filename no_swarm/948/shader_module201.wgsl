struct Struct_1 {
    a: vec3<bool>,
    b: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: bool,
    b: Struct_3,
    c: f32,
    d: vec3<bool>,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 11>;

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec3<i32>, arg_1: vec4<bool>) -> vec3<bool> {
    var var_0 = Struct_3(!arg_1.x);
    var_0 = Struct_3(var_0.a | all(vec3<bool>(!var_0.a, true, true)));
    var_0 = Struct_3(false);
    var var_1 = true;
    var_1 = any(vec3<bool>(any(arg_1) | true, !all(!arg_1), !var_0.a));
    return vec3<bool>(var_0.a, (var_0.a | true) && false, var_0.a);
}

fn func_2() -> Struct_1 {
    var var_0 = u_input.a.yxy;
    var var_1 = Struct_2(Struct_1(select(vec3<bool>(all(global0[_wgslsmith_index_u32(0u, 11u)]), true, all(vec4<bool>(true, true, false, true))), vec3<bool>(true, true, true), select(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(4294967295u, 12759u), 11u)], global0[_wgslsmith_index_u32(1u, 11u)], global0[_wgslsmith_index_u32(_wgslsmith_div_u32(0u, 4294967295u), 11u)])), func_3(_wgslsmith_clamp_vec3_i32(vec3<i32>(4544i, 1i, 1i), _wgslsmith_mult_vec3_i32(u_input.a.zzy, vec3<i32>(0i, 29739i, var_0.x)), u_input.a.yww), vec4<bool>(true, true, true, true))), ~(~select(vec2<u32>(u_input.b, 0u), ~vec2<u32>(u_input.b, 0u), func_3(u_input.a.zxy, vec4<bool>(true, false, false, false)).yy)));
    var var_2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(1f, _wgslsmith_f_op_f32(895f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1297f, -1000f, true)))), -559f, _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_div_f32(258f, 1509f), _wgslsmith_f_op_f32(step(-569f, -324f)))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-710f, -2515f, -370f, -448f))))))));
    let var_3 = all(!vec4<bool>(false, any(vec4<bool>(true, true, true, var_1.a.a.x)), true, var_1.a.b.x));
    var var_4 = select(vec3<bool>(false, var_1.a.a.x, var_3), global0[_wgslsmith_index_u32(countOneBits(~var_1.b.x), 11u)], select(vec3<bool>(~u_input.b != ~44706u, func_3(u_input.c >> (vec3<u32>(u_input.b, var_1.b.x, var_1.b.x) % vec3<u32>(32u)), vec4<bool>(false, var_1.a.a.x, false, true)).x, !any(vec4<bool>(var_1.a.b.x, true, true, var_1.a.b.x))), select(!func_3(u_input.c, vec4<bool>(false, false, true, var_1.a.a.x)), select(global0[_wgslsmith_index_u32(countOneBits(4294967295u), 11u)], !global0[_wgslsmith_index_u32(u_input.b, 11u)], select(vec3<bool>(true, var_1.a.a.x, true), vec3<bool>(true, true, false), false)), var_1.a.a.x), (1029f > _wgslsmith_div_f32(var_2.x, -303f)) | !(u_input.b <= var_1.b.x)));
    return Struct_1(global0[_wgslsmith_index_u32(~1u, 11u)], vec3<bool>(true, var_3, false));
}

fn func_1() -> Struct_4 {
    var var_0 = func_2();
    var_0 = Struct_1(!(!vec3<bool>(u_input.a.x >= u_input.c.x, true, true)), vec3<bool>(true || !(true | var_0.a.x), !all(func_2().a.xx), var_0.b.x));
    var_0 = Struct_1(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(5263u, u_input.b), 11u)], var_0.a);
    global0 = array<vec3<bool>, 11>();
    let var_1 = Struct_1(!vec3<bool>(var_0.b.x && (var_0.b.x | true), any(select(vec4<bool>(var_0.b.x, true, false, var_0.a.x), vec4<bool>(true, var_0.b.x, var_0.a.x, true), vec4<bool>(false, var_0.a.x, var_0.b.x, var_0.a.x))), var_0.b.x), func_3(_wgslsmith_mult_vec3_i32(abs(-vec3<i32>(u_input.c.x, -3505i, 1i)), u_input.a.xyw), vec4<bool>(!var_0.b.x & false, true, var_0.a.x, false)));
    return Struct_4(true, Struct_3(true), _wgslsmith_div_f32(_wgslsmith_f_op_f32(475f - _wgslsmith_f_op_f32(trunc(-1069f))), _wgslsmith_f_op_f32(min(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-692f)))))), vec3<bool>(true, true, var_0.b.x && true), vec3<f32>(-159f, _wgslsmith_f_op_f32(f32(-1f) * -1024f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-313f)) - -1574f) - _wgslsmith_f_op_f32(abs(-687f)))));
}

fn func_4(arg_0: u32, arg_1: Struct_4, arg_2: vec2<u32>) -> vec2<u32> {
    var var_0 = vec4<bool>(!(~u_input.c.x > _wgslsmith_add_i32(u_input.c.x, -2147483647i)) || any(!arg_1.d.zz), false, arg_1.d.x, arg_1.b.a);
    global0 = array<vec3<bool>, 11>();
    var_0 = select(vec4<bool>(true, false, arg_1.a, !select(var_0.x, var_0.x, any(vec4<bool>(false, arg_1.a, false, true)))), select(vec4<bool>(false, true, select(true, true, func_1().b.a), true && var_0.x), !select(select(vec4<bool>(false, false, var_0.x, false), vec4<bool>(arg_1.b.a, arg_1.a, false, arg_1.b.a), vec4<bool>(var_0.x, arg_1.b.a, var_0.x, arg_1.d.x)), !vec4<bool>(true, false, arg_1.a, var_0.x), all(arg_1.d)), select(select(vec4<bool>(arg_1.d.x, var_0.x, false, arg_1.b.a), vec4<bool>(false, true, arg_1.a, false), any(arg_1.d.zy)), !(!vec4<bool>(arg_1.d.x, var_0.x, var_0.x, false)), !(!vec4<bool>(true, arg_1.a, arg_1.b.a, true)))), all(func_3(-_wgslsmith_add_vec3_i32(u_input.a.xxz, vec3<i32>(u_input.c.x, 15344i, u_input.c.x)), !vec4<bool>(false, var_0.x, var_0.x, arg_1.a)).zx));
    var var_1 = arg_1.b;
    let var_2 = Struct_2(func_2(), vec2<u32>(1u, arg_2.x));
    return ~(~min(_wgslsmith_mult_vec2_u32(vec2<u32>(1u, 1u), ~var_2.b), _wgslsmith_sub_vec2_u32(var_2.b | var_2.b, vec2<u32>(1u, 23791u) | vec2<u32>(var_2.b.x, arg_0))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<bool>, 11>();
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-398f, _wgslsmith_f_op_f32(423f + -1346f))))) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(988f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
    let var_1 = _wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.b, ~u_input.b), _wgslsmith_sub_vec2_u32(vec2<u32>(~(~4294967295u), u_input.b ^ (u_input.b ^ 12038u)), func_4(u_input.b << (4294967295u % 32u), func_1(), vec2<u32>(u_input.b, 4294967295u)) ^ max(_wgslsmith_add_vec2_u32(vec2<u32>(6101u, u_input.b), vec2<u32>(u_input.b, u_input.b)), ~vec2<u32>(0u, u_input.b))));
    global0 = array<vec3<bool>, 11>();
    let var_2 = var_1;
    global0 = array<vec3<bool>, 11>();
    var var_3 = Struct_4(true, Struct_3(true), _wgslsmith_f_op_f32(f32(-1f) * -1000f), select(func_3(vec3<i32>(u_input.a.x, i32(-1i) * -894i, u_input.c.x << (u_input.b % 32u)), vec4<bool>(true, func_3(u_input.c, vec4<bool>(false, true, true, true)).x, any(vec3<bool>(false, true, true)), true)), !(!global0[_wgslsmith_index_u32(max(1u, 4294967295u), 11u)]), global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_clamp_u32(var_2, reverseBits(var_1), ~u_input.b), u_input.b), 11u)]), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-221f, -1120f, -1004f)))), func_1().e)));
    var var_4 = !var_3.b.a;
    let x = u_input.a;
    s_output = StorageBuffer(1024f);
}


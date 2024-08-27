struct Struct_1 {
    a: vec3<bool>,
    b: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: bool,
}

struct Struct_4 {
    a: vec4<f32>,
    b: i32,
    c: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 0i;

var<private> global1: array<vec4<i32>, 4>;

var<private> global2: array<Struct_3, 24> = array<Struct_3, 24>(Struct_3(1i, Struct_2(Struct_1(vec3<bool>(false, false, true), vec4<bool>(true, false, false, false)), i32(-2147483648), Struct_1(vec3<bool>(false, true, true), vec4<bool>(false, false, true, false))), true), Struct_3(23105i, Struct_2(Struct_1(vec3<bool>(true, true, true), vec4<bool>(false, true, false, true)), i32(-2147483648), Struct_1(vec3<bool>(false, true, true), vec4<bool>(false, true, true, false))), false), Struct_3(-1i, Struct_2(Struct_1(vec3<bool>(false, true, true), vec4<bool>(false, true, true, false)), 51731i, Struct_1(vec3<bool>(true, false, false), vec4<bool>(false, false, true, false))), false), Struct_3(0i, Struct_2(Struct_1(vec3<bool>(false, false, false), vec4<bool>(true, true, true, true)), 21679i, Struct_1(vec3<bool>(true, true, false), vec4<bool>(true, true, true, true))), false), Struct_3(1756i, Struct_2(Struct_1(vec3<bool>(false, true, false), vec4<bool>(true, true, true, true)), -14415i, Struct_1(vec3<bool>(false, true, true), vec4<bool>(true, true, true, true))), false), Struct_3(-30781i, Struct_2(Struct_1(vec3<bool>(true, true, false), vec4<bool>(true, false, false, false)), -41672i, Struct_1(vec3<bool>(true, true, true), vec4<bool>(true, true, false, true))), true), Struct_3(1i, Struct_2(Struct_1(vec3<bool>(false, true, false), vec4<bool>(true, true, true, false)), 0i, Struct_1(vec3<bool>(false, true, true), vec4<bool>(false, true, true, false))), false), Struct_3(0i, Struct_2(Struct_1(vec3<bool>(true, true, true), vec4<bool>(true, false, false, false)), 0i, Struct_1(vec3<bool>(false, false, false), vec4<bool>(false, false, false, false))), false), Struct_3(i32(-2147483648), Struct_2(Struct_1(vec3<bool>(true, false, true), vec4<bool>(false, true, false, false)), i32(-2147483648), Struct_1(vec3<bool>(true, true, true), vec4<bool>(true, true, false, true))), true), Struct_3(2147483647i, Struct_2(Struct_1(vec3<bool>(false, true, true), vec4<bool>(true, false, true, false)), -16114i, Struct_1(vec3<bool>(false, true, false), vec4<bool>(true, false, true, false))), true), Struct_3(2147483647i, Struct_2(Struct_1(vec3<bool>(true, false, true), vec4<bool>(true, true, false, true)), 11620i, Struct_1(vec3<bool>(false, true, true), vec4<bool>(false, true, true, true))), true), Struct_3(-22880i, Struct_2(Struct_1(vec3<bool>(false, true, true), vec4<bool>(true, true, true, false)), -28809i, Struct_1(vec3<bool>(false, true, false), vec4<bool>(true, true, false, true))), false), Struct_3(-1i, Struct_2(Struct_1(vec3<bool>(false, true, true), vec4<bool>(false, true, true, true)), -24841i, Struct_1(vec3<bool>(false, false, false), vec4<bool>(true, true, true, false))), true), Struct_3(-1i, Struct_2(Struct_1(vec3<bool>(false, true, true), vec4<bool>(true, false, true, false)), -4333i, Struct_1(vec3<bool>(true, true, true), vec4<bool>(true, false, false, false))), true), Struct_3(-40673i, Struct_2(Struct_1(vec3<bool>(false, true, true), vec4<bool>(true, false, true, false)), 2147483647i, Struct_1(vec3<bool>(true, true, true), vec4<bool>(false, false, false, true))), false), Struct_3(2147483647i, Struct_2(Struct_1(vec3<bool>(false, true, true), vec4<bool>(false, false, false, true)), 1i, Struct_1(vec3<bool>(false, false, false), vec4<bool>(false, true, false, false))), false), Struct_3(2147483647i, Struct_2(Struct_1(vec3<bool>(false, true, true), vec4<bool>(true, false, true, false)), 63366i, Struct_1(vec3<bool>(true, false, true), vec4<bool>(true, true, true, true))), true), Struct_3(-28752i, Struct_2(Struct_1(vec3<bool>(false, true, true), vec4<bool>(false, false, false, true)), -1i, Struct_1(vec3<bool>(false, false, true), vec4<bool>(true, true, true, false))), true), Struct_3(-13662i, Struct_2(Struct_1(vec3<bool>(false, false, false), vec4<bool>(false, true, false, true)), 0i, Struct_1(vec3<bool>(true, false, false), vec4<bool>(true, true, false, false))), false), Struct_3(i32(-2147483648), Struct_2(Struct_1(vec3<bool>(true, false, true), vec4<bool>(true, false, true, true)), -14947i, Struct_1(vec3<bool>(true, false, false), vec4<bool>(false, false, false, false))), false), Struct_3(-55376i, Struct_2(Struct_1(vec3<bool>(true, false, false), vec4<bool>(false, true, true, true)), 1i, Struct_1(vec3<bool>(true, true, false), vec4<bool>(false, false, false, true))), false), Struct_3(1i, Struct_2(Struct_1(vec3<bool>(false, true, false), vec4<bool>(false, true, false, false)), 58180i, Struct_1(vec3<bool>(true, true, false), vec4<bool>(false, true, true, true))), false), Struct_3(-73190i, Struct_2(Struct_1(vec3<bool>(true, true, false), vec4<bool>(false, true, false, true)), -1i, Struct_1(vec3<bool>(true, false, true), vec4<bool>(true, false, false, true))), false), Struct_3(2147483647i, Struct_2(Struct_1(vec3<bool>(true, false, true), vec4<bool>(false, false, false, false)), -15897i, Struct_1(vec3<bool>(true, true, false), vec4<bool>(false, false, false, true))), true));

var<private> global3: bool;

var<private> global4: vec2<f32> = vec2<f32>(-406f, -1000f);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: i32) -> vec3<bool> {
    let var_0 = global2[_wgslsmith_index_u32(18892u, 24u)];
    let var_1 = !vec4<bool>(false, var_0.b.c.b.x, var_0.b.a.b.x, var_0.c);
    global4 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(431f, _wgslsmith_f_op_f32(global4.x - global4.x))))));
    global3 = true;
    var var_2 = Struct_1(var_0.b.a.a, var_1);
    return var_0.b.a.a;
}

fn func_2() -> i32 {
    let var_0 = ~(~_wgslsmith_mod_vec2_u32(max(u_input.b.yx, u_input.b.xx >> (u_input.b.zx % vec2<u32>(32u))), select(u_input.b.yx, vec2<u32>(u_input.b.x, 4294967295u), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false)))));
    var var_1 = Struct_2(Struct_1(select(func_3(1i), vec3<bool>(any(vec2<bool>(false, true)), true, all(vec2<bool>(true, true))), any(vec3<bool>(false, false, false))), select(select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, false), select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, true), true)), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true))), ~1i, Struct_1(select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, -348f < global4.x, any(vec2<bool>(true, false)), false))));
    let var_2 = vec2<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global4.x, _wgslsmith_f_op_f32(-583f + global4.x))) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global4.x, -1205f))) <= 1283f, (_wgslsmith_dot_vec4_u32(~vec4<u32>(0u, u_input.b.x, var_0.x, var_0.x), vec4<u32>(4294967295u, u_input.b.x, u_input.b.x, var_0.x)) >= 7071u) | true);
    var_1 = Struct_2(var_1.a, var_1.b, var_1.a);
    var var_3 = Struct_2(var_1.c, firstLeadingBit(_wgslsmith_sub_i32(_wgslsmith_mult_i32(firstLeadingBit(52469i), _wgslsmith_div_i32(0i, 2147483647i)), _wgslsmith_mult_i32(1i << (u_input.b.x % 32u), 61623i))), var_1.a);
    return 1i;
}

fn func_4(arg_0: vec4<i32>, arg_1: vec2<f32>) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -757f), arg_1.x)))) != -815f;
    var var_1 = -2147483647i;
    let var_2 = !(!vec3<bool>(!var_0 || !var_0, var_0, var_0));
    var_1 = -19355i;
    let var_3 = Struct_1(vec3<bool>(false, all(vec3<bool>(false | var_0, false, !var_0)), -493f < global4.x), !(!vec4<bool>(var_2.x, false, all(vec4<bool>(true, var_2.x, true, false)), true)));
    return Struct_2(var_3, reverseBits(41859i), Struct_1(vec3<bool>(false, true, false), !vec4<bool>(select(true, true, var_0), var_3.b.x, !var_0, true)));
}

fn func_5(arg_0: vec2<i32>, arg_1: Struct_3, arg_2: u32) -> Struct_3 {
    let var_0 = !select(!vec3<bool>(true, !arg_1.b.a.a.x, false), select(vec3<bool>(true, true, true), !(!arg_1.b.c.a), vec3<bool>(true | arg_1.b.a.b.x, false, false)), func_4(~global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(arg_2, 50395u), 4u)], _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global4.x, global4.x))))).c.b.x);
    let var_1 = _wgslsmith_div_vec3_f32(vec3<f32>(294f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(global4.x)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -688f)), !(-1661f >= global4.x))), 1078f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(vec3<f32>(-1751f, 642f, -731f), vec3<f32>(global4.x, global4.x, -601f))))))));
    let var_2 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)), _wgslsmith_f_op_f32(round(1f)), true));
    var var_3 = vec3<bool>(var_0.x, !arg_1.c, true);
    global2 = array<Struct_3, 24>();
    return Struct_3(func_4(global1[_wgslsmith_index_u32(1u, 4u)], vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(176f, 2308f)), -1038f)), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(231f, var_1.x), -328f)))).b, func_4(vec4<i32>(arg_0.x, arg_1.a, arg_1.b.b, arg_1.a << (~41017u % 32u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-var_1.zy))))), all(func_3(-1i ^ -arg_1.a)));
}

fn func_1() -> vec2<f32> {
    let var_0 = func_5(firstTrailingBit(~vec2<i32>(1i, 1i)), Struct_3(~(-(~42572i)), func_4(vec4<i32>(16109i >> (u_input.a.x % 32u), func_2(), max(2147483647i, -2147483647i), -1i), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-600f, 1386f)) - _wgslsmith_div_vec2_f32(vec2<f32>(1049f, global4.x), vec2<f32>(global4.x, 557f)))), true), 4294967295u);
    global0 = var_0.a;
    let var_1 = var_0.b.b;
    let var_2 = u_input.a.x;
    global1 = array<vec4<i32>, 4>();
    return vec2<f32>(_wgslsmith_f_op_f32(round(-1000f)), _wgslsmith_f_op_f32(round(-394f)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = 24061i;
    global4 = _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(max(-1204f, global4.x)), _wgslsmith_f_op_f32(-global4.x)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_1()) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(global4.x, -216f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global4.x, 1753f)), true)))), _wgslsmith_f_op_f32(round(104f)) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(-194f, 629f)), -721f)))));
    global0 = -_wgslsmith_add_i32(1i, -1i);
    global3 = func_3(i32(-1i) * -2147483647i).x;
    global2 = array<Struct_3, 24>();
    let var_0 = _wgslsmith_clamp_u32(_wgslsmith_mult_u32(~reverseBits(u_input.b.x), 0u ^ ~u_input.b.x) | u_input.a.x, 44126u, 97765u);
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(-188f, -1289f, global4.x) * vec3<f32>(1335f, global4.x, global4.x)), _wgslsmith_div_vec3_f32(vec3<f32>(global4.x, global4.x, 1511f), vec3<f32>(global4.x, global4.x, 350f)), vec3<bool>(true, true, false))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(global4.x, -363f, 511f), vec3<f32>(-1053f, 163f, global4.x)))))));
    global2 = array<Struct_3, 24>();
    let var_2 = Struct_4(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_vec2_f32(func_1()).x + -301f), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(var_1.x)))), _wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(224f * var_1.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, var_1.x, -1217f, global4.x)))))), -2147483647i, 0i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-582f, global4.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_1()).x), i32(-1i) * -24843i);
}


struct Struct_1 {
    a: f32,
    b: f32,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: vec4<bool>,
    d: vec2<u32>,
}

struct Struct_4 {
    a: Struct_3,
}

struct Struct_5 {
    a: vec3<u32>,
    b: Struct_3,
    c: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 15> = array<Struct_2, 15>(Struct_2(Struct_1(2156f, 496f, 0i), Struct_1(968f, -578f, 32631i), -1i), Struct_2(Struct_1(119f, -292f, 326i), Struct_1(1161f, -504f, i32(-2147483648)), 44378i), Struct_2(Struct_1(-751f, -120f, -27138i), Struct_1(290f, 807f, 20386i), 1i), Struct_2(Struct_1(1357f, 602f, 2147483647i), Struct_1(-943f, -671f, 0i), 0i), Struct_2(Struct_1(190f, -1230f, 1i), Struct_1(-1000f, -2075f, -1i), 1i), Struct_2(Struct_1(448f, 585f, 42570i), Struct_1(-877f, -258f, 1i), 29587i), Struct_2(Struct_1(401f, 532f, 2463i), Struct_1(-1152f, 157f, -11124i), 2147483647i), Struct_2(Struct_1(1114f, 116f, -7774i), Struct_1(-1522f, 681f, 22202i), -24357i), Struct_2(Struct_1(-1860f, -2046f, i32(-2147483648)), Struct_1(689f, 342f, -1i), 33139i), Struct_2(Struct_1(1000f, -234f, 43923i), Struct_1(-2216f, 1456f, 0i), -1i), Struct_2(Struct_1(-1000f, -1112f, i32(-2147483648)), Struct_1(1089f, -1076f, -12818i), -1i), Struct_2(Struct_1(913f, 958f, 0i), Struct_1(1000f, 1000f, 1i), -1i), Struct_2(Struct_1(-441f, -245f, 11096i), Struct_1(-267f, 618f, 0i), 1i), Struct_2(Struct_1(972f, 747f, 5491i), Struct_1(185f, -422f, 0i), 2147483647i), Struct_2(Struct_1(-437f, 1329f, 7216i), Struct_1(760f, -241f, 29613i), 2147483647i));

var<private> global1: vec2<i32> = vec2<i32>(i32(-2147483648), 2147483647i);

var<private> global2: vec3<f32> = vec3<f32>(1500f, -126f, 158f);

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3() -> vec3<u32> {
    let var_0 = _wgslsmith_add_i32(u_input.c.x | countOneBits(u_input.c.x), -22038i);
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global2.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.x) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x))) + _wgslsmith_f_op_f32(ceil(1909f))));
    var var_2 = vec4<bool>(true, true, true, true);
    global1 = max(_wgslsmith_sub_vec2_i32(((u_input.c >> (vec2<u32>(1565u, u_input.b) % vec2<u32>(32u))) ^ reverseBits(vec2<i32>(1i, global1.x))) << (vec2<u32>(~u_input.b, ~79570u) % vec2<u32>(32u)), min(-vec2<i32>(var_0, global1.x), -reverseBits(u_input.c))), vec2<i32>(~max(_wgslsmith_sub_i32(var_0, -1i), min(u_input.c.x, u_input.a)), _wgslsmith_dot_vec2_i32(-vec2<i32>(global1.x, 30744i), _wgslsmith_clamp_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(-1i, 1i), u_input.c), vec2<i32>(-27261i, var_0), abs(vec2<i32>(var_0, u_input.a))))));
    var var_3 = Struct_3(global0[_wgslsmith_index_u32(~abs(~countOneBits(u_input.b)), 15u)], var_0, vec4<bool>(true, var_2.x, all(select(vec4<bool>(var_2.x, true, true, false), vec4<bool>(false, var_2.x, var_2.x, false), select(vec4<bool>(var_2.x, true, var_2.x, true), vec4<bool>(var_2.x, var_2.x, var_2.x, var_2.x), vec4<bool>(false, false, var_2.x, var_2.x)))), true), max(firstLeadingBit(~_wgslsmith_add_vec2_u32(vec2<u32>(1u, 4294967295u), vec2<u32>(u_input.b, u_input.b))), _wgslsmith_mod_vec2_u32(abs(vec2<u32>(u_input.b, 131700u)), abs(~vec2<u32>(65151u, 57544u)))));
    return ~_wgslsmith_mult_vec3_u32(vec3<u32>(var_3.d.x, _wgslsmith_mod_u32(~var_3.d.x, var_3.d.x), 4294967295u), firstLeadingBit(_wgslsmith_mod_vec3_u32(vec3<u32>(var_3.d.x, u_input.b, var_3.d.x), ~vec3<u32>(u_input.b, 0u, 90354u))));
}

fn func_2(arg_0: vec2<i32>, arg_1: bool, arg_2: vec4<bool>) -> Struct_1 {
    var var_0 = Struct_2(Struct_1(-688f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x)))), _wgslsmith_dot_vec3_i32(vec3<i32>(-1i >> (u_input.b % 32u), u_input.a, u_input.a), _wgslsmith_mod_vec3_i32(-vec3<i32>(1i, u_input.a, 2147483647i), min(vec3<i32>(u_input.c.x, 1i, u_input.a), vec3<i32>(arg_0.x, 46769i, 1i))))), Struct_1(_wgslsmith_f_op_f32(global2.x * _wgslsmith_f_op_f32(min(1000f, _wgslsmith_f_op_f32(trunc(global2.x))))), 333f, _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(-vec4<i32>(-1i, global1.x, 1i, 0i), vec4<i32>(2147483647i, arg_0.x, -1i, u_input.a)), u_input.a)), arg_0.x);
    let var_1 = arg_1 != (!all(arg_2.yxz) || !arg_2.x);
    var var_2 = min(vec2<u32>(_wgslsmith_mult_u32(u_input.b, ~4294967295u), select(_wgslsmith_div_u32(945u, u_input.b), 51035u, !arg_2.x)) ^ (vec2<u32>(0u, u_input.b) >> (~vec2<u32>(u_input.b, 8395u) % vec2<u32>(32u))), vec2<u32>(~u_input.b, 0u ^ (u_input.b << (4294967295u % 32u))));
    let var_3 = 1u;
    var var_4 = Struct_5(func_3(), Struct_3(global0[_wgslsmith_index_u32(~1u, 15u)], global1.x, !(!select(vec4<bool>(true, var_1, arg_1, false), arg_2, vec4<bool>(var_1, true, arg_2.x, arg_2.x))), vec2<u32>(_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(var_3, 24354u, var_3), vec3<u32>(var_3, var_3, var_2.x)), _wgslsmith_dot_vec3_u32(vec3<u32>(65601u, u_input.b, 23206u), vec3<u32>(u_input.b, u_input.b, 1319u))), abs(~67300u))), _wgslsmith_dot_vec3_i32(vec3<i32>(-1i) * -vec3<i32>(global1.x, u_input.c.x, -2273i), -_wgslsmith_mod_vec3_i32(vec3<i32>(global1.x, var_0.c, -10831i), vec3<i32>(var_0.a.c, -1i, 0i))) & global1.x);
    return var_0.b;
}

fn func_1(arg_0: bool) -> Struct_1 {
    global0 = array<Struct_2, 15>();
    return func_2(_wgslsmith_add_vec2_i32(max(-select(u_input.c, u_input.c, vec2<bool>(false, arg_0)), -vec2<i32>(1i, 0i)), u_input.c), false, !select(vec4<bool>(arg_0 || true, arg_0, false, any(vec2<bool>(true, false))), select(vec4<bool>(true, arg_0, arg_0, false), select(vec4<bool>(false, false, false, true), vec4<bool>(true, arg_0, true, false), true), select(vec4<bool>(arg_0, true, false, true), vec4<bool>(arg_0, arg_0, arg_0, arg_0), vec4<bool>(false, arg_0, arg_0, arg_0))), any(!vec4<bool>(arg_0, arg_0, false, false))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(Struct_3(Struct_2(Struct_1(global2.x, _wgslsmith_f_op_f32(sign(global2.x)), ~1i), func_1(true), ~1i), 1i, !vec4<bool>(true, true, all(vec4<bool>(false, false, true, false)), true), vec2<u32>(_wgslsmith_mod_u32(max(u_input.b, u_input.b), 1u), ~4294967295u)));
    let var_1 = var_0.a.a.b;
    let x = u_input.a;
    s_output = StorageBuffer(~24617u, 79445u, countOneBits(countOneBits(1u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a, global2.x, var_0.a.a.a.a, global2.x)), vec4<f32>(-307f, -107f, -134f, 1278f))))));
}


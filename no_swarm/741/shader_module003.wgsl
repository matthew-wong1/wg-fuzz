struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: bool,
    b: i32,
    c: vec3<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
}

struct Struct_4 {
    a: vec4<u32>,
    b: i32,
}

struct Struct_5 {
    a: Struct_3,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec2<u32>,
    d: vec2<u32>,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: vec4<f32>;

var<private> global2: array<vec2<i32>, 18> = array<vec2<i32>, 18>(vec2<i32>(1i, -39218i), vec2<i32>(54589i, -1i), vec2<i32>(15766i, i32(-2147483648)), vec2<i32>(7861i, 2147483647i), vec2<i32>(23970i, -9775i), vec2<i32>(-8078i, -1i), vec2<i32>(-16117i, 5266i), vec2<i32>(1797i, i32(-2147483648)), vec2<i32>(-1i, 2147483647i), vec2<i32>(i32(-2147483648), 0i), vec2<i32>(0i, -48196i), vec2<i32>(36412i, -15542i), vec2<i32>(14199i, 26560i), vec2<i32>(48476i, 0i), vec2<i32>(i32(-2147483648), 1i), vec2<i32>(-12286i, 2147483647i), vec2<i32>(-40174i, -18370i), vec2<i32>(35052i, 66794i));

var<private> global3: Struct_2;

var<private> global4: vec3<i32>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2(arg_0: Struct_3, arg_1: vec3<i32>, arg_2: vec3<f32>) -> Struct_3 {
    global2 = array<vec2<i32>, 18>();
    global3 = Struct_2(true, global3.b, global3.c);
    var var_0 = vec4<bool>(arg_0.a.a, true, false, !global3.c.x);
    return arg_0;
}

fn func_3(arg_0: Struct_5, arg_1: f32, arg_2: vec3<f32>, arg_3: vec4<i32>) -> Struct_1 {
    global1 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1975f), _wgslsmith_f_op_f32(floor(1465f)), -106f, global1.x))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-407f - _wgslsmith_f_op_f32(round(arg_2.x))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1446f + arg_0.b.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_0.b.x, -283f))), _wgslsmith_f_op_f32(-arg_1), global1.x), global3.c.x));
    var var_0 = select(vec4<bool>(true, global3.c.x && (!global3.c.x & global3.c.x), false, !all(vec4<bool>(true, true, false, false))), !select(vec4<bool>(true, arg_0.a.b.a, !global3.c.x, u_input.a.x > 0u), select(select(vec4<bool>(arg_0.a.a.a, arg_0.a.a.a, arg_0.a.b.c.x, global3.c.x), vec4<bool>(false, false, true, false), global3.a), vec4<bool>(true, global3.a, false, global3.a), !vec4<bool>(global3.c.x, true, true, false)), vec4<bool>(false, all(arg_0.a.b.c.xy), arg_0.a.a.a, !arg_0.a.b.c.x)), select(vec4<bool>(all(select(vec4<bool>(true, true, true, arg_0.a.b.a), vec4<bool>(global3.c.x, true, true, true), arg_0.a.a.a)), ~u_input.d.x != u_input.d.x, _wgslsmith_f_op_f32(-arg_0.b.x) < _wgslsmith_f_op_f32(-467f - arg_2.x), true), select(select(select(vec4<bool>(false, arg_0.a.a.a, global3.a, true), vec4<bool>(true, false, global3.a, global3.a), vec4<bool>(global3.c.x, false, global3.c.x, arg_0.a.b.a)), vec4<bool>(global3.c.x, true, false, global3.a), all(vec4<bool>(false, arg_0.a.b.a, true, false))), vec4<bool>(!arg_0.a.a.a, func_2(arg_0.a, arg_3.wwy, vec3<f32>(global1.x, 965f, -1408f)).b.c.x, select(arg_0.a.b.a, true, true), arg_0.a.b.c.x), true), !func_2(arg_0.a, _wgslsmith_add_vec3_i32(arg_3.xww, vec3<i32>(-1i, arg_0.a.b.b, 2147483647i)), vec3<f32>(global1.x, -138f, -675f)).b.a));
    global3 = arg_0.a.b;
    global0 = 464i;
    var var_1 = func_2(Struct_3(Struct_1(true), Struct_2(true, -21173i, arg_0.a.b.c)), arg_3.xww, vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -178f), _wgslsmith_f_op_f32(abs(arg_2.x)), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-848f, 846f)))));
    return func_2(func_2(func_2(Struct_3(arg_0.a.a, arg_0.a.b), vec3<i32>(8065i, global4.x, 1i) & -arg_3.zxw, vec3<f32>(-379f, _wgslsmith_f_op_f32(-arg_0.b.x), -1562f)), arg_3.ywz, _wgslsmith_f_op_vec3_f32(arg_0.b - _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(vec3<f32>(arg_2.x, global1.x, 1349f), arg_0.b))))), countOneBits(arg_3.yxx), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1714f, _wgslsmith_f_op_f32(ceil(arg_0.b.x)), _wgslsmith_f_op_f32(max(-954f, -928f))) * _wgslsmith_f_op_vec3_f32(-arg_2))).a;
}

fn func_1() -> i32 {
    let var_0 = global3.c;
    var var_1 = func_3(Struct_5(func_2(Struct_3(Struct_1(var_0.x), Struct_2(false, global4.x, global3.c)), -firstLeadingBit(vec3<i32>(global3.b, 34057i, u_input.e)), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -277f), _wgslsmith_f_op_f32(abs(global1.x)), _wgslsmith_f_op_f32(global1.x - global1.x))), _wgslsmith_f_op_vec3_f32(-global1.yzy)), global1.x, _wgslsmith_f_op_vec3_f32(select(vec3<f32>(global1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global1.x, -899f, var_0.x)) * _wgslsmith_f_op_f32(-global1.x)), 389f), global1.zxw, vec3<bool>(true | var_0.x, var_0.x, !global3.c.x))), abs(vec4<i32>(0i, global3.b, ~(-18543i << (1u % 32u)), 76456i)));
    return 0i;
}

fn func_4(arg_0: vec4<bool>, arg_1: i32) -> Struct_2 {
    var var_0 = Struct_4(~(vec4<u32>(1u, ~4294967295u, ~1u, min(0u, u_input.a.x)) >> ((min(vec4<u32>(4294967295u, u_input.a.x, u_input.c.x, 22911u), vec4<u32>(0u, u_input.a.x, u_input.c.x, 71388u)) >> (_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.c.x, 84u, u_input.a.x, 8748u), vec4<u32>(u_input.d.x, 1u, 17750u, u_input.c.x)) % vec4<u32>(32u))) % vec4<u32>(32u))), _wgslsmith_div_i32(global4.x, 1i));
    global4 = vec3<i32>(var_0.b, 0i, -global3.b);
    global2 = array<vec2<i32>, 18>();
    global4 = _wgslsmith_mod_vec3_i32(abs(~min(vec3<i32>(global3.b, -61805i, u_input.e), vec3<i32>(arg_1, u_input.b, global3.b))) << (vec3<u32>(abs(665u) << (~var_0.a.x % 32u), (48861u | var_0.a.x) ^ ~14797u, u_input.c.x) % vec3<u32>(32u)), -(~(~select(vec3<i32>(-2147483647i, 50639i, 2147483647i), vec3<i32>(var_0.b, 1i, u_input.e), vec3<bool>(arg_0.x, arg_0.x, arg_0.x)))));
    let var_1 = (-vec3<i32>(i32(-1i) * -2147483647i, -2147483647i ^ var_0.b, -var_0.b) ^ ~(~reverseBits(vec3<i32>(-2147483647i, var_0.b, global3.b)))) >> (_wgslsmith_div_vec3_u32(abs(~vec3<u32>(u_input.a.x, var_0.a.x, u_input.a.x)), u_input.a) % vec3<u32>(32u));
    return Struct_2(all(!vec4<bool>(!arg_0.x, true, true, global3.a)), reverseBits(var_1.x), !select(vec3<bool>(arg_0.x, any(vec2<bool>(arg_0.x, global3.c.x)), !arg_0.x), !vec3<bool>(arg_0.x, false, global3.c.x), select(arg_0.zww, global3.c, vec3<bool>(global3.c.x, false, arg_0.x))));
}

fn func_5(arg_0: f32, arg_1: Struct_2) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -618f), global1.x)))), global1.x));
    var var_1 = arg_1;
    var var_2 = Struct_4(vec4<u32>(_wgslsmith_mod_u32(0u, max(u_input.d.x, u_input.a.x) & _wgslsmith_add_u32(u_input.d.x, 25368u)), 16122u, firstTrailingBit(~u_input.a.x), _wgslsmith_div_u32(min(u_input.a.x << (u_input.c.x % 32u), ~75062u), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.c.x, 70942u) & vec3<u32>(4294967295u, 9970u, u_input.a.x), ~vec3<u32>(u_input.c.x, u_input.d.x, 65656u)))), global4.x);
    global2 = array<vec2<i32>, 18>();
    let var_3 = Struct_4(var_2.a, -29630i);
    return Struct_2(-1i <= -var_1.b, ~1i, select(func_2(Struct_3(func_3(Struct_5(Struct_3(Struct_1(true), arg_1), vec3<f32>(arg_0, 232f, global1.x)), 1249f, vec3<f32>(arg_0, 508f, 317f), vec4<i32>(global3.b, 14708i, 0i, u_input.b)), Struct_2(true, 0i, vec3<bool>(false, arg_1.c.x, true))), _wgslsmith_add_vec3_i32(vec3<i32>(arg_1.b, -2147483647i, global3.b), vec3<i32>(-2147483647i, arg_1.b, 41974i)) | vec3<i32>(-1i, -1i, var_1.b), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, arg_0, var_0))).b.c, vec3<bool>(var_0 >= _wgslsmith_f_op_f32(f32(-1f) * -264f), false, func_3(Struct_5(Struct_3(Struct_1(false), arg_1), global1.yyy), _wgslsmith_f_op_f32(674f - arg_0), vec3<f32>(var_0, -1000f, var_0), abs(vec4<i32>(-10240i, 1i, 48064i, var_1.b))).a), !vec3<bool>(!var_1.a, !arg_1.c.x, false)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1.x;
    let var_1 = Struct_2(!global3.a, global4.x, !select(select(!vec3<bool>(false, global3.a, global3.a), select(vec3<bool>(true, false, global3.a), global3.c, global3.c), global3.c), !vec3<bool>(false, global3.a, false), -591f > _wgslsmith_f_op_f32(-global1.x)));
    var var_2 = u_input.a.x != u_input.c.x;
    let var_3 = func_5(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global1.x))), func_4(select(select(vec4<bool>(false, var_1.a, var_1.a, true), vec4<bool>(global3.a, global3.c.x, false, global3.a), select(vec4<bool>(global3.a, true, global3.c.x, global3.a), vec4<bool>(false, true, var_1.c.x, false), true)), select(!vec4<bool>(global3.a, false, true, global3.a), select(vec4<bool>(global3.c.x, false, global3.c.x, false), vec4<bool>(false, false, false, var_1.c.x), global3.a), select(vec4<bool>(false, false, false, false), vec4<bool>(var_1.c.x, false, true, true), vec4<bool>(global3.c.x, var_1.c.x, var_1.c.x, global3.a))), !(var_1.a == global3.a)), ~(func_1() ^ (u_input.b << (u_input.a.x % 32u)))));
    let var_4 = !(!global3.c.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global1.x))), global1.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, global1.x))))));
}


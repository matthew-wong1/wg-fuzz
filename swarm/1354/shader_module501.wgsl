struct Struct_1 {
    a: bool,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<i32>,
    c: vec3<i32>,
    d: vec4<f32>,
}

struct Struct_4 {
    a: Struct_1,
    b: i32,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec2<u32>,
    d: vec3<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 7> = array<vec3<f32>, 7>(vec3<f32>(-892f, -1000f, -2280f), vec3<f32>(-104f, 827f, 1025f), vec3<f32>(-272f, 1007f, -549f), vec3<f32>(110f, -1871f, 322f), vec3<f32>(852f, -1000f, 1000f), vec3<f32>(511f, 1065f, 569f), vec3<f32>(148f, 1000f, 345f));

var<private> global1: Struct_4;

var<private> global2: vec3<bool>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_4) -> bool {
    global1 = arg_1;
    var var_0 = Struct_3(arg_0.a, min(reverseBits(vec4<i32>(arg_1.b, abs(0i), -arg_1.b, -1i)), vec4<i32>(_wgslsmith_div_i32(u_input.b, -50869i), abs(arg_1.b) >> (u_input.e % 32u), u_input.b, abs(2147483647i))), max(vec3<i32>(abs(-13374i), ~reverseBits(u_input.b), 2147483647i), -vec3<i32>(_wgslsmith_mult_i32(arg_0.b.x, 46376i), arg_0.b.x, u_input.b)), arg_0.d);
    let var_1 = -2147483647i;
    let var_2 = 1i;
    let var_3 = var_0.b.x;
    return any(select(vec4<bool>(any(arg_1.c), (-2147483647i != arg_0.c.x) | false, any(global1.c) | var_0.a.b, false), select(select(!global1.c, select(vec4<bool>(global2.x, arg_1.a.a, true, false), vec4<bool>(false, arg_0.a.b, true, true), var_0.a.a), vec4<bool>(arg_0.a.a, false, false, global1.c.x)), !(!global1.c), vec4<bool>(var_0.a.b, true, 6269i <= var_0.b.x, any(vec2<bool>(true, true)))), u_input.d.x <= ~(~u_input.a.x)));
}

fn func_2(arg_0: i32, arg_1: u32) -> f32 {
    var var_0 = select(vec4<bool>(true && global2.x, true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(197f * -962f) + _wgslsmith_f_op_f32(floor(802f))) >= _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(852f - 1191f))), true), vec4<bool>(all(!vec4<bool>(false, global1.a.a, global1.a.b, global1.a.b)) || true, true, global1.c.x, global2.x), vec4<bool>(global1.a.b, true, global2.x, true != !global1.a.a));
    var_0 = !vec4<bool>(global2.x, !global1.a.b, all(vec3<bool>(all(global1.c), true || var_0.x, !var_0.x)), func_3(Struct_3(Struct_1(true, global1.c.x), countOneBits(vec4<i32>(2147483647i, 2147483647i, global1.b, arg_0)), _wgslsmith_div_vec3_i32(vec3<i32>(u_input.b, -67056i, u_input.b), vec3<i32>(arg_0, arg_0, -1i)), vec4<f32>(-1587f, -2237f, -886f, -879f)), Struct_4(global1.a, ~(-29082i), select(vec4<bool>(true, var_0.x, var_0.x, false), global1.c, vec4<bool>(var_0.x, true, false, global1.c.x)))));
    var_0 = select(!select(select(global1.c, select(vec4<bool>(true, var_0.x, false, false), global1.c, vec4<bool>(var_0.x, var_0.x, false, true)), false), !global1.c, all(vec2<bool>(global2.x, false))), global1.c, global2.x);
    let var_1 = global1.a;
    global1 = Struct_4(global1.a, ~u_input.b, vec4<bool>(true, global1.c.x, all(select(!global2.xz, vec2<bool>(global1.c.x, true), arg_1 > 29065u)), !func_3(Struct_3(Struct_1(global2.x, true), vec4<i32>(-1i, global1.b, u_input.b, 24094i), vec3<i32>(global1.b, 2147483647i, arg_0), vec4<f32>(-160f, -245f, -932f, -1239f)), Struct_4(Struct_1(false, false), 1i, vec4<bool>(true, var_1.b, true, global1.c.x)))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-249f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1109f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -398f), _wgslsmith_f_op_f32(f32(-1f) * -438f))))))) - _wgslsmith_f_op_f32(max(-709f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(604f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))))));
}

fn func_1() -> Struct_4 {
    var var_0 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-210f, -1428f) - vec2<f32>(583f, -670f)))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(171f + -710f), _wgslsmith_f_op_f32(230f + -140f)))), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(global1.b, u_input.a.x)) - -1138f), _wgslsmith_f_op_f32(min(102f, -679f))), -250f)));
    return Struct_4(global1.a, _wgslsmith_dot_vec2_i32(vec2<i32>(~global1.b & -35804i, _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, u_input.b, u_input.b, -2147483647i), vec4<i32>(global1.b, u_input.b, 0i, 15674i)), _wgslsmith_mod_i32(u_input.b, u_input.b))), ~vec2<i32>(_wgslsmith_div_i32(global1.b, -2147483647i), ~global1.b)), global1.c);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = global1.c.xyz;
    var var_0 = func_1();
    let var_1 = Struct_2(func_1().a);
    let var_2 = func_1();
    var var_3 = var_0.b;
    global0 = array<vec3<f32>, 7>();
    let x = u_input.a;
    s_output = StorageBuffer((vec4<i32>(-var_2.b, select(global1.b, 32212i, true), global1.b, func_1().b) & (vec4<i32>(-2147483647i, global1.b, var_2.b, var_0.b) >> (abs(vec4<u32>(1u, u_input.c.x, 0u, u_input.c.x)) % vec4<u32>(32u)))) | ~((vec4<i32>(u_input.b, u_input.b, global1.b, var_2.b) << (vec4<u32>(u_input.a.x, 1u, u_input.e, 1u) % vec4<u32>(32u))) ^ (vec4<i32>(-1i, u_input.b, var_0.b, -35187i) >> (vec4<u32>(1u, 0u, 1u, u_input.e) % vec4<u32>(32u)))), vec3<i32>(-44718i >> (u_input.d.x % 32u), var_0.b, -_wgslsmith_clamp_i32(_wgslsmith_sub_i32(-25362i, -21275i), firstTrailingBit(global1.b), ~(-30956i))), 453f);
}


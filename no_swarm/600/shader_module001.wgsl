struct Struct_1 {
    a: vec3<f32>,
    b: bool,
    c: vec4<f32>,
    d: u32,
}

struct Struct_2 {
    a: f32,
    b: f32,
    c: vec3<f32>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: vec3<i32>,
    d: f32,
    e: bool,
}

struct Struct_4 {
    a: bool,
    b: vec2<u32>,
    c: Struct_1,
}

struct Struct_5 {
    a: i32,
    b: i32,
    c: Struct_3,
    d: f32,
    e: Struct_4,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec2<i32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<Struct_4, 32>;

var<private> global2: array<Struct_4, 14>;

var<private> global3: Struct_4;

var<private> global4: array<vec4<i32>, 22> = array<vec4<i32>, 22>(vec4<i32>(0i, -1i, -8059i, -1i), vec4<i32>(i32(-2147483648), 8274i, 0i, 1i), vec4<i32>(839i, 0i, 9122i, i32(-2147483648)), vec4<i32>(-38288i, i32(-2147483648), 1i, 33055i), vec4<i32>(7063i, 2147483647i, i32(-2147483648), i32(-2147483648)), vec4<i32>(28995i, 12963i, -603i, 26072i), vec4<i32>(-1i, -1i, 0i, -46458i), vec4<i32>(0i, 0i, 1i, 20289i), vec4<i32>(61057i, 27259i, 0i, 47339i), vec4<i32>(2147483647i, 1i, -19675i, 0i), vec4<i32>(2147483647i, i32(-2147483648), -1i, -1i), vec4<i32>(14121i, 41861i, 4425i, -38523i), vec4<i32>(0i, 1i, 12446i, i32(-2147483648)), vec4<i32>(-38211i, 2147483647i, i32(-2147483648), 29575i), vec4<i32>(0i, 14613i, -5724i, -3264i), vec4<i32>(2147483647i, 68118i, 0i, -14440i), vec4<i32>(-33542i, -37848i, 45627i, -35786i), vec4<i32>(0i, -1i, -1i, 0i), vec4<i32>(i32(-2147483648), -23108i, 2147483647i, -77375i), vec4<i32>(2147483647i, -32658i, -17705i, -29045i), vec4<i32>(i32(-2147483648), 0i, i32(-2147483648), -1i), vec4<i32>(-39755i, -56891i, i32(-2147483648), -1i));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1(arg_0: Struct_3) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-1637f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-302f - -1365f) + _wgslsmith_f_op_f32(1551f * -1842f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)))));
    let var_1 = true;
    var var_2 = ~(-1i);
    global2 = array<Struct_4, 14>();
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_0.x))));
    return arg_0;
}

fn func_3(arg_0: bool, arg_1: vec3<bool>, arg_2: u32) -> f32 {
    let var_0 = ~_wgslsmith_mult_vec2_u32(~(~(u_input.d.yy ^ u_input.d.yx)), ~(~vec2<u32>(arg_2, 17489u)) ^ u_input.b.zw);
    let var_1 = Struct_3(func_1(func_1(Struct_3(Struct_1(global3.c.a, arg_1.x, vec4<f32>(554f, global3.c.c.x, -177f, global3.c.c.x), global3.b.x), _wgslsmith_f_op_f32(-global3.c.c.x), vec3<i32>(u_input.c.x, -13783i, u_input.a.x), _wgslsmith_f_op_f32(f32(-1f) * -709f), true))).a, 1372f, _wgslsmith_clamp_vec3_i32(-vec3<i32>(-21322i, u_input.c.x, 2147483647i) << ((vec3<u32>(global3.b.x, arg_2, 1u) | ~vec3<u32>(var_0.x, 37918u, var_0.x)) % vec3<u32>(32u)), ~_wgslsmith_sub_vec3_i32(~vec3<i32>(2147483647i, u_input.a.x, 1i), ~vec3<i32>(-77782i, -1i, 9662i)), vec3<i32>(-1i) * -(~vec3<i32>(-57029i, u_input.c.x, 29015i))), -589f, false);
    global0 = _wgslsmith_f_op_f32(max(-1326f, global3.c.a.x));
    var var_2 = func_1(var_1);
    global2 = array<Struct_4, 14>();
    return var_2.b;
}

fn func_2(arg_0: Struct_3, arg_1: Struct_1) -> vec3<bool> {
    let var_0 = vec4<u32>(_wgslsmith_mult_u32(~(~_wgslsmith_add_u32(31397u, arg_1.d)), _wgslsmith_add_u32(arg_0.a.d ^ (global3.c.d | 48186u), min(~arg_1.d, arg_0.a.d))), arg_0.a.d >> (4294967295u % 32u), ~(~(~_wgslsmith_dot_vec2_u32(u_input.d.yx, vec2<u32>(u_input.b.x, 48670u)))), arg_1.d);
    global0 = arg_0.b;
    let var_1 = ~u_input.d.yz;
    var var_2 = Struct_2(289f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(~56855u == abs(u_input.d.x), select(select(vec3<bool>(global3.a, arg_0.a.b, true), vec3<bool>(false, arg_1.b, arg_1.b), global3.a), select(vec3<bool>(false, false, true), vec3<bool>(arg_0.a.b, arg_0.e, global3.c.b), vec3<bool>(true, arg_0.e, arg_1.b)), func_1(arg_0).a.b), _wgslsmith_add_u32(0u, _wgslsmith_mod_u32(global3.b.x, 1u)))) + arg_1.c.x), vec3<f32>(-795f, _wgslsmith_f_op_f32(-global3.c.c.x), arg_1.a.x), global3.c);
    var var_3 = min(arg_0.c.zz, _wgslsmith_mult_vec2_i32(abs(arg_0.c.zx >> (vec2<u32>(var_2.d.d, 0u) % vec2<u32>(32u))), arg_0.c.yy)) | u_input.c;
    return !(!(!select(select(vec3<bool>(var_2.d.b, true, false), vec3<bool>(false, var_2.d.b, arg_0.a.b), arg_0.e), select(vec3<bool>(global3.c.b, global3.c.b, false), vec3<bool>(true, true, true), vec3<bool>(true, arg_1.b, var_2.d.b)), !arg_0.e)));
}

fn func_4(arg_0: vec2<f32>, arg_1: vec3<bool>, arg_2: f32) -> bool {
    var var_0 = (_wgslsmith_mult_i32(1i, _wgslsmith_mult_i32(u_input.c.x, -12703i)) & _wgslsmith_dot_vec3_i32(abs(vec3<i32>(0i, -19770i, u_input.a.x)), _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a.x, -21396i, u_input.c.x), countOneBits(vec3<i32>(u_input.a.x, -27856i, -16304i)), ~vec3<i32>(-2147483647i, -2071i, u_input.a.x)))) >> (1u % 32u);
    let var_1 = global1[_wgslsmith_index_u32(global3.b.x, 32u)];
    return func_1(Struct_3(func_1(func_1(func_1(Struct_3(var_1.c, -533f, vec3<i32>(-34577i, u_input.a.x, -1i), var_1.c.a.x, true)))).a, -226f, -countOneBits(_wgslsmith_sub_vec3_i32(vec3<i32>(-2147483647i, u_input.a.x, u_input.a.x), vec3<i32>(u_input.c.x, u_input.a.x, u_input.c.x))), _wgslsmith_div_f32(673f, _wgslsmith_f_op_f32(round(var_1.c.c.x))), !(_wgslsmith_f_op_f32(floor(arg_2)) >= 1068f))).a.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(vec2<f32>(global3.c.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.c.a.x))), !select(func_2(func_1(Struct_3(global3.c, 578f, vec3<i32>(u_input.a.x, -8387i, 40738i), 286f, false)), global3.c), func_2(func_1(Struct_3(global3.c, -2507f, vec3<i32>(u_input.c.x, u_input.a.x, -35238i), global3.c.c.x, global3.c.b)), global3.c), vec3<bool>(true || global3.a, !global3.a, any(vec3<bool>(true, true, true)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(1132f - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global3.c.a.x * global3.c.a.x)))), -1472f));
    var var_1 = Struct_2(global3.c.c.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_div_f32(197f, global3.c.a.x), _wgslsmith_f_op_f32(-global3.c.c.x)), _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(-576f * -1442f)), global3.a)))), vec3<f32>(global3.c.a.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -636f) + -317f), _wgslsmith_f_op_f32(global3.c.a.x * -1150f)), _wgslsmith_f_op_f32(global3.c.c.x - _wgslsmith_f_op_f32(global3.c.c.x + _wgslsmith_f_op_f32(-global3.c.a.x)))), global3.c);
    var var_2 = abs(~(35795u << (~4294967295u % 32u)));
    var var_3 = u_input.a.x;
    var var_4 = !all(func_2(func_1(func_1(Struct_3(global3.c, -1000f, vec3<i32>(2147483647i, -9466i, -71014i), -176f, var_1.d.b))), global3.c).yx);
    var var_5 = abs(u_input.c.x);
    global1 = array<Struct_4, 32>();
    let x = u_input.a;
    s_output = StorageBuffer(~(~(~abs(u_input.b.x))), ~_wgslsmith_add_u32(u_input.b.x, 117571u), _wgslsmith_f_op_f32(func_3(any(vec4<bool>(true, false, true, false)), !(!vec3<bool>(global3.a, false, global3.c.b)), var_1.d.d)));
}


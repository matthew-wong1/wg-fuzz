struct Struct_1 {
    a: bool,
    b: vec4<u32>,
    c: vec2<i32>,
    d: u32,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: vec3<bool>,
    d: bool,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec3<i32>,
    c: bool,
    d: Struct_2,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: f32 = 623f;

var<private> global2: bool;

var<private> global3: Struct_2 = Struct_2(Struct_1(false, vec4<u32>(79078u, 15884u, 0u, 1u), vec2<i32>(1832i, 25467i), 25555u, -7175i), 75259u, vec3<bool>(false, true, true), false);

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_3, arg_1: vec4<f32>) -> vec4<i32> {
    let var_0 = arg_0;
    var var_1 = ~(~(~vec2<u32>(var_0.d.b, arg_0.d.a.b.x)) ^ countOneBits(~vec2<u32>(45135u, var_0.d.b)));
    let var_2 = _wgslsmith_dot_vec3_i32(~vec3<i32>(u_input.a.x, -14187i, i32(-1i) * -u_input.a.x), var_0.b);
    global0 = vec2<bool>(true, false);
    global2 = true;
    return -vec4<i32>(_wgslsmith_dot_vec2_i32(global3.a.c, vec2<i32>(-1i, var_0.b.x)), -1i, global3.a.e, abs(var_0.b.x));
}

fn func_2(arg_0: vec2<f32>, arg_1: Struct_1) -> Struct_2 {
    var var_0 = min(abs(~(_wgslsmith_add_vec4_i32(vec4<i32>(12397i, 1i, 1i, 47477i), vec4<i32>(-9656i, global3.a.e, global3.a.e, global3.a.e)) << (global3.a.b % vec4<u32>(32u)))), firstTrailingBit(func_3(Struct_3(arg_0, _wgslsmith_mult_vec3_i32(vec3<i32>(-1i, arg_1.c.x, 0i), vec3<i32>(-2147483647i, arg_1.e, -14905i)), !arg_1.a, Struct_2(arg_1, 9658u, global3.c, false), _wgslsmith_f_op_vec4_f32(-vec4<f32>(483f, 330f, arg_0.x, arg_0.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1390f, 582f, arg_0.x, -174f))))));
    var var_1 = 0i;
    global0 = global3.c.yz;
    let var_2 = vec3<u32>(~abs(arg_1.b.x), firstTrailingBit(0u), ~1u);
    let var_3 = select(vec4<i32>(32657i, firstTrailingBit(u_input.a.x), global3.a.c.x, u_input.a.x), vec4<i32>(abs(1i), _wgslsmith_sub_i32(abs(2147483647i), ~arg_1.e), var_0.x, ~(arg_1.e | _wgslsmith_mod_i32(arg_1.e, u_input.a.x))), !select(select(vec4<bool>(true, true, true, true), !vec4<bool>(global3.c.x, global3.d, false, arg_1.a), false), !vec4<bool>(true, true, arg_1.a, global3.a.a), select(vec4<bool>(global0.x, true, false, global3.d), !vec4<bool>(false, global0.x, arg_1.a, global0.x), true)));
    return Struct_2(Struct_1(arg_1.a, vec4<u32>(~global3.a.d, arg_1.b.x, var_2.x, ~var_2.x), vec2<i32>(abs(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, var_3.x, arg_1.c.x, 0i), vec4<i32>(2147483647i, arg_1.e, var_0.x, 1i))), global3.a.e), ~86277u, 1i), ~_wgslsmith_mult_u32(arg_1.b.x, _wgslsmith_clamp_u32(var_2.x, arg_1.d, 44092u)) | ~4294967295u, select(global3.c, global3.c, false == global0.x), false);
}

fn func_4(arg_0: Struct_3, arg_1: Struct_3, arg_2: f32, arg_3: Struct_2) -> bool {
    var var_0 = arg_0;
    return select(select(!global3.a.a, true, !global0.x), any(arg_0.d.c.yy), global3.c.x);
}

fn func_1(arg_0: i32) -> u32 {
    var var_0 = vec3<bool>(any(vec4<bool>(true, global3.c.x, global3.a.a, true)), any(vec4<bool>(!global0.x == !global3.d, false, true, func_4(Struct_3(vec2<f32>(1000f, -1406f), vec3<i32>(2147483647i, -41841i, 4297i), global0.x, Struct_2(Struct_1(global3.a.a, global3.a.b, global3.a.c, global3.a.b.x, 37161i), 33115u, global3.c, global0.x), vec4<f32>(605f, -796f, 1000f, 562f)), Struct_3(vec2<f32>(-193f, 1054f), vec3<i32>(-1i, arg_0, global3.a.e), false, Struct_2(global3.a, 4294967295u, vec3<bool>(true, global3.c.x, global3.a.a), global3.a.a), vec4<f32>(2012f, -807f, 1084f, -754f)), _wgslsmith_f_op_f32(-1000f - 121f), func_2(vec2<f32>(440f, -444f), Struct_1(false, global3.a.b, vec2<i32>(2147483647i, 10574i), global3.b, u_input.a.x))))), !global0.x);
    let var_1 = Struct_1(true, vec4<u32>(~0u, min(~global3.b, _wgslsmith_mult_u32(_wgslsmith_sub_u32(0u, global3.a.b.x), global3.a.d & 95027u)), _wgslsmith_add_u32(23025u, global3.a.b.x), _wgslsmith_sub_u32(~global3.a.b.x, ~global3.b)), global3.a.c, 0u, ~_wgslsmith_mult_i32(~20542i, firstLeadingBit(global3.a.c.x)));
    global3 = func_2(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1244f, 303f)))))), var_1);
    let var_2 = vec3<i32>(~_wgslsmith_add_i32(var_1.e, var_1.e), -2147483647i, -global3.a.c.x) >> (var_1.b.wzw % vec3<u32>(32u));
    let var_3 = func_2(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(469f, -994f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-192f, _wgslsmith_f_op_f32(f32(-1f) * -657f)) * -349f)), var_1);
    return 1u;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_2, arg_2: f32, arg_3: Struct_1) -> vec4<f32> {
    let var_0 = Struct_3(vec2<f32>(_wgslsmith_f_op_f32(350f * arg_2), -101f), vec3<i32>(53211i, _wgslsmith_dot_vec2_i32(vec2<i32>(2260i, firstTrailingBit(62117i)), -arg_3.c), ~arg_3.e), global0.x, arg_1, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2, -761f, arg_2, arg_2))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1601f, arg_2, -783f, 806f))))))));
    global1 = -388f;
    let var_1 = global3.a.b.zy;
    let var_2 = global3.b;
    let var_3 = -7816i;
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(var_0.e)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = global3.d;
    var var_0 = _wgslsmith_f_op_vec4_f32(func_5(Struct_1(true, ~vec4<u32>(~global3.b, ~35122u, global3.b, func_1(-2147483647i)), _wgslsmith_div_vec2_i32(select(vec2<i32>(-2147483647i, -2147483647i), ~global3.a.c, false), vec2<i32>(_wgslsmith_div_i32(global3.a.c.x, -17527i), 2147483647i)), global3.b, _wgslsmith_dot_vec2_i32(vec2<i32>(0i, u_input.a.x | global3.a.c.x), vec2<i32>(global3.a.e, 2147483647i) & -u_input.a)), func_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1026f), -332f)), Struct_1(true, global3.a.b, global3.a.c, global3.a.b.x, _wgslsmith_div_i32(~2147483647i, global3.a.e >> (0u % 32u)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -260f))), Struct_1((global3.a.a && global0.x) | all(vec3<bool>(false, global3.a.a, global3.d)), global3.a.b, firstTrailingBit(func_3(Struct_3(vec2<f32>(2481f, -978f), vec3<i32>(global3.a.c.x, 23887i, -13969i), false, Struct_2(global3.a, 4294967295u, global3.c, global3.c.x), vec4<f32>(-1462f, 241f, 954f, 320f)), vec4<f32>(896f, -147f, 328f, 420f)).yw) & global3.a.c, _wgslsmith_div_u32(11267u, ~_wgslsmith_mult_u32(0u, global3.a.b.x)), func_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-418f, -1187f)), global3.a).a.e)));
    global1 = -215f;
    var_0 = vec4<f32>(_wgslsmith_f_op_f32(abs(1355f)), var_0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_0.x, 1057f)) - var_0.x)), -1000f), var_0.x);
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) * -987f);
    var var_1 = ~_wgslsmith_dot_vec3_i32(abs(vec3<i32>(39582i, global3.a.c.x, -878i) & -vec3<i32>(global3.a.c.x, global3.a.c.x, u_input.a.x)), vec3<i32>(60982i, ~countOneBits(3546i), u_input.a.x));
    global0 = !global3.c.xz;
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(global3.b & _wgslsmith_dot_vec3_u32(~global3.a.b.xxx, _wgslsmith_add_vec3_u32(vec3<u32>(19932u, 13486u, global3.b), global3.a.b.zyz))));
}


struct Struct_1 {
    a: f32,
    b: vec2<u32>,
    c: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: u32,
    d: vec3<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: Struct_2;

var<private> global2: array<Struct_1, 31> = array<Struct_1, 31>(Struct_1(-774f, vec2<u32>(35068u, 44183u), vec2<i32>(0i, 38564i)), Struct_1(1259f, vec2<u32>(0u, 1u), vec2<i32>(1i, 17105i)), Struct_1(-120f, vec2<u32>(86719u, 4294967295u), vec2<i32>(0i, 0i)), Struct_1(2175f, vec2<u32>(4294967295u, 15023u), vec2<i32>(-1i, 2147483647i)), Struct_1(-1000f, vec2<u32>(10090u, 80120u), vec2<i32>(-36730i, -21611i)), Struct_1(-1000f, vec2<u32>(16120u, 4294967295u), vec2<i32>(-33355i, 1i)), Struct_1(-1298f, vec2<u32>(12388u, 16979u), vec2<i32>(24813i, 1i)), Struct_1(-187f, vec2<u32>(9457u, 9576u), vec2<i32>(-1i, 1i)), Struct_1(-965f, vec2<u32>(0u, 1u), vec2<i32>(33233i, -1026i)), Struct_1(1320f, vec2<u32>(100134u, 4294967295u), vec2<i32>(-55143i, -28720i)), Struct_1(-780f, vec2<u32>(4294967295u, 1u), vec2<i32>(i32(-2147483648), -1i)), Struct_1(-432f, vec2<u32>(66917u, 52758u), vec2<i32>(-21801i, -40560i)), Struct_1(1000f, vec2<u32>(25453u, 15876u), vec2<i32>(1i, -1i)), Struct_1(-435f, vec2<u32>(1u, 2319u), vec2<i32>(-11555i, 0i)), Struct_1(708f, vec2<u32>(25907u, 12114u), vec2<i32>(-60232i, 12388i)), Struct_1(519f, vec2<u32>(0u, 4294967295u), vec2<i32>(i32(-2147483648), 57026i)), Struct_1(-869f, vec2<u32>(5491u, 18433u), vec2<i32>(27381i, 2147483647i)), Struct_1(-834f, vec2<u32>(42085u, 32268u), vec2<i32>(-27841i, 4817i)), Struct_1(1000f, vec2<u32>(44302u, 18743u), vec2<i32>(-10476i, -7851i)), Struct_1(322f, vec2<u32>(25182u, 1u), vec2<i32>(-1i, 0i)), Struct_1(769f, vec2<u32>(7404u, 30198u), vec2<i32>(11835i, -16214i)), Struct_1(-1134f, vec2<u32>(83910u, 3262u), vec2<i32>(-1i, 0i)), Struct_1(-723f, vec2<u32>(1u, 70332u), vec2<i32>(-34958i, 13112i)), Struct_1(-891f, vec2<u32>(1u, 36074u), vec2<i32>(i32(-2147483648), 1i)), Struct_1(499f, vec2<u32>(555u, 20805u), vec2<i32>(18434i, 16734i)), Struct_1(474f, vec2<u32>(0u, 80501u), vec2<i32>(0i, 22442i)), Struct_1(1951f, vec2<u32>(0u, 27867u), vec2<i32>(-10618i, 11731i)), Struct_1(-1449f, vec2<u32>(55182u, 4294967295u), vec2<i32>(i32(-2147483648), 0i)), Struct_1(-930f, vec2<u32>(35761u, 4294967295u), vec2<i32>(-7153i, 1i)), Struct_1(-1245f, vec2<u32>(0u, 1u), vec2<i32>(67928i, 23940i)), Struct_1(-611f, vec2<u32>(1u, 43866u), vec2<i32>(-1i, 18072i)));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_2() -> Struct_2 {
    global1 = Struct_2(global1.a);
    var var_0 = !(!select(select(vec2<bool>(false, true), select(vec2<bool>(global0.x, true), vec2<bool>(global0.x, global0.x), vec2<bool>(global0.x, true)), vec2<bool>(true, true)), vec2<bool>(any(vec3<bool>(false, global0.x, global0.x)), false), true));
    var var_1 = Struct_2(global1.a);
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.a.a, -1586f)) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.a.a, var_1.a.a)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.a.a, var_1.a.a) - vec2<f32>(global1.a.a, -221f))))));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x))))));
    return Struct_2(Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_3 * _wgslsmith_f_op_f32(abs(var_1.a.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -177f) * -321f)), _wgslsmith_add_vec2_u32(reverseBits(~var_1.a.b), vec2<u32>(0u >> (u_input.c.x % 32u), ~var_1.a.b.x)), vec2<i32>(_wgslsmith_mod_i32(_wgslsmith_sub_i32(u_input.a, 27292i), global1.a.c.x), -19644i)));
}

fn func_1(arg_0: vec2<bool>) -> Struct_2 {
    global2 = array<Struct_1, 31>();
    let var_0 = global0.x;
    let var_1 = 1i;
    global1 = func_2();
    let var_2 = global1.a.b;
    return Struct_2(Struct_1(global1.a.a, global1.a.b, _wgslsmith_sub_vec2_i32(vec2<i32>(-3888i, 26403i), select(_wgslsmith_mult_vec2_i32(global1.a.c, global1.a.c), _wgslsmith_clamp_vec2_i32(vec2<i32>(var_1, u_input.a), global1.a.c, vec2<i32>(var_1, global1.a.c.x)), !arg_0))));
}

fn func_3(arg_0: vec4<bool>, arg_1: vec3<i32>, arg_2: Struct_1, arg_3: Struct_2) -> Struct_2 {
    return arg_3;
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_2) -> bool {
    global0 = select(select(!select(vec2<bool>(true, true), vec2<bool>(true, true), global0.x | global0.x), vec2<bool>(_wgslsmith_f_op_f32(floor(409f)) >= _wgslsmith_f_op_f32(round(-993f)), all(vec2<bool>(global0.x, global0.x)) | global0.x), vec2<bool>(true, false)), select(!(!vec2<bool>(true, global0.x)), !(!vec2<bool>(false, global0.x)), all(vec2<bool>(any(vec2<bool>(true, false)), true))), select(vec2<bool>(arg_1.a.b.x > u_input.c.x, !global0.x && all(vec4<bool>(global0.x, true, global0.x, global0.x))), select(select(vec2<bool>(true, global0.x), !vec2<bool>(global0.x, global0.x), vec2<bool>(true, global0.x)), select(!vec2<bool>(global0.x, true), vec2<bool>(false, true), true), vec2<bool>(global0.x, true)), all(vec4<bool>(true, true, true, true))));
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(global1.a.a, arg_1.a.a, 266f, 1000f), vec4<f32>(global1.a.a, global1.a.a, -1170f, arg_1.a.a))))))), vec4<f32>(global1.a.a, _wgslsmith_div_f32(-1000f, -667f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(406f))), -1643f)));
    let var_1 = arg_1.a.c.x;
    var var_2 = func_1(select(!vec2<bool>(global0.x, global0.x), select(vec2<bool>(true, false), !select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, global0.x)), vec2<bool>(!global0.x, global0.x)), all(select(vec3<bool>(false, true, global0.x), !vec3<bool>(true, global0.x, true), !vec3<bool>(global0.x, false, global0.x))))).a;
    var var_3 = 1u;
    return _wgslsmith_f_op_f32(_wgslsmith_div_f32(-738f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(-1644f)), 506f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec4<bool>(global0.x, global0.x, true, true), vec3<i32>(1i, var_1, var_2.c.x), Struct_1(-399f, vec2<u32>(34789u, arg_1.a.b.x), vec2<i32>(arg_1.a.c.x, u_input.a)), arg_1).a.a - _wgslsmith_f_op_f32(abs(-3085f))))) < _wgslsmith_f_op_f32(f32(-1f) * -834f);
}

fn func_5(arg_0: vec4<bool>) -> Struct_1 {
    let var_0 = u_input.a;
    global0 = arg_0.zx;
    let var_1 = func_1(arg_0.yy);
    global0 = arg_0.zy;
    let var_2 = func_2().a;
    return func_1(vec2<bool>(global0.x, true)).a;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec2<bool>(firstLeadingBit(u_input.c.x) >= firstTrailingBit(_wgslsmith_sub_u32(39189u | u_input.b.x, global1.a.b.x)), any(select(vec2<bool>(!global0.x, false), vec2<bool>(true, !global0.x), global0.x)));
    let var_0 = func_5(vec4<bool>(func_4(select(global1.a.b, ~global1.a.b, !vec2<bool>(global0.x, global0.x)), func_3(vec4<bool>(global0.x, global0.x, global0.x, false), vec3<i32>(14708i, -7401i, 17604i), Struct_1(global1.a.a, u_input.b.yz, global1.a.c), func_1(vec2<bool>(false, global0.x)))), global0.x && all(select(vec3<bool>(false, false, false), vec3<bool>(global0.x, true, global0.x), global0.x)), global0.x, true));
    global0 = !(!select(!vec2<bool>(false, global0.x), !vec2<bool>(true, global0.x), global0.x));
    let var_1 = -abs(_wgslsmith_div_vec3_i32(vec3<i32>(0i, var_0.c.x, global1.a.c.x), vec3<i32>(0i, -27621i, 1644i) << (u_input.c.zwy % vec3<u32>(32u)))) & -_wgslsmith_clamp_vec3_i32(-min(vec3<i32>(var_0.c.x, global1.a.c.x, var_0.c.x), vec3<i32>(-1i, global1.a.c.x, var_0.c.x)), vec3<i32>(global1.a.c.x, -21726i, u_input.a), vec3<i32>(~global1.a.c.x, -u_input.a, 1i));
    let x = u_input.a;
    s_output = StorageBuffer(~(firstTrailingBit(vec2<u32>(var_0.b.x, global1.a.b.x)) & countOneBits(vec2<u32>(4294967295u, 54226u))) ^ vec2<u32>(min(1u, 0u), u_input.c.x), _wgslsmith_clamp_i32(u_input.a, var_0.c.x, _wgslsmith_dot_vec4_i32(max(vec4<i32>(-14962i, u_input.a, 27635i, var_1.x) & vec4<i32>(1i, -16320i, 9527i, var_1.x), vec4<i32>(2147483647i, -1i, -53431i, global1.a.c.x) & vec4<i32>(2147483647i, 44550i, 2147483647i, u_input.a)), vec4<i32>(10706i, u_input.a & global1.a.c.x, ~(-1i), ~(-2147483647i)))), _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(~max(u_input.b.wwz, vec3<u32>(global1.a.b.x, 104633u, 0u)), ~(~vec3<u32>(4294967295u, 41572u, u_input.c.x))), 1u), ~_wgslsmith_add_vec3_i32(_wgslsmith_add_vec3_i32(~vec3<i32>(u_input.a, -4406i, 22804i), _wgslsmith_clamp_vec3_i32(var_1, vec3<i32>(var_0.c.x, 55610i, u_input.a), vec3<i32>(2147483647i, 49535i, -1i))), _wgslsmith_clamp_vec3_i32(_wgslsmith_sub_vec3_i32(var_1, var_1), var_1, var_1)), 16995i);
}


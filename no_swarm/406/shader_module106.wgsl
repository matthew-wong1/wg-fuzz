struct Struct_1 {
    a: vec4<u32>,
    b: f32,
    c: i32,
    d: vec2<u32>,
    e: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<bool>,
    d: u32,
    e: bool,
}

struct Struct_3 {
    a: vec2<i32>,
}

struct Struct_4 {
    a: Struct_1,
    b: vec3<bool>,
    c: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 10>;

var<private> global1: array<Struct_4, 20> = array<Struct_4, 20>(Struct_4(Struct_1(vec4<u32>(0u, 0u, 0u, 4294967295u), 1820f, 46223i, vec2<u32>(34996u, 1u), vec2<u32>(64354u, 4294967295u)), vec3<bool>(true, false, true), Struct_3(vec2<i32>(2147483647i, 1i))), Struct_4(Struct_1(vec4<u32>(4294967295u, 18498u, 9445u, 0u), 190f, 0i, vec2<u32>(0u, 32153u), vec2<u32>(1u, 12758u)), vec3<bool>(false, false, true), Struct_3(vec2<i32>(-1i, 14497i))), Struct_4(Struct_1(vec4<u32>(0u, 23987u, 28089u, 0u), 553f, -52992i, vec2<u32>(2765u, 0u), vec2<u32>(5429u, 4294967295u)), vec3<bool>(true, false, false), Struct_3(vec2<i32>(-6292i, 2147483647i))), Struct_4(Struct_1(vec4<u32>(1u, 1u, 29707u, 31326u), -751f, -16720i, vec2<u32>(8408u, 84677u), vec2<u32>(83952u, 12972u)), vec3<bool>(false, false, false), Struct_3(vec2<i32>(29184i, 2147483647i))), Struct_4(Struct_1(vec4<u32>(4294967295u, 29321u, 20949u, 4469u), -963f, 38769i, vec2<u32>(4294967295u, 4294967295u), vec2<u32>(71079u, 14401u)), vec3<bool>(true, true, true), Struct_3(vec2<i32>(-9266i, 5607i))), Struct_4(Struct_1(vec4<u32>(0u, 1u, 36647u, 0u), -650f, -61627i, vec2<u32>(62331u, 4294967295u), vec2<u32>(4294967295u, 1u)), vec3<bool>(false, true, true), Struct_3(vec2<i32>(-45395i, 1i))), Struct_4(Struct_1(vec4<u32>(0u, 56726u, 16356u, 0u), -798f, i32(-2147483648), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(30093u, 0u)), vec3<bool>(false, true, false), Struct_3(vec2<i32>(-17053i, -5850i))), Struct_4(Struct_1(vec4<u32>(1u, 0u, 46u, 39349u), -356f, -31647i, vec2<u32>(1u, 77737u), vec2<u32>(29788u, 51128u)), vec3<bool>(false, true, true), Struct_3(vec2<i32>(1i, 0i))), Struct_4(Struct_1(vec4<u32>(4294967295u, 4294967295u, 4294967295u, 1u), -236f, i32(-2147483648), vec2<u32>(83399u, 1u), vec2<u32>(0u, 21532u)), vec3<bool>(true, false, true), Struct_3(vec2<i32>(48929i, 2147483647i))), Struct_4(Struct_1(vec4<u32>(4294967295u, 4294967295u, 1u, 0u), 449f, 1i, vec2<u32>(1u, 1961u), vec2<u32>(14046u, 21990u)), vec3<bool>(true, false, false), Struct_3(vec2<i32>(4317i, -41122i))), Struct_4(Struct_1(vec4<u32>(21939u, 1u, 4294967295u, 0u), 1338f, -1i, vec2<u32>(75679u, 7232u), vec2<u32>(4294967295u, 1u)), vec3<bool>(true, false, false), Struct_3(vec2<i32>(-14139i, -76362i))), Struct_4(Struct_1(vec4<u32>(1u, 10610u, 13276u, 4294967295u), 204f, 10283i, vec2<u32>(8316u, 0u), vec2<u32>(4294967295u, 1u)), vec3<bool>(false, true, false), Struct_3(vec2<i32>(-4569i, -56756i))), Struct_4(Struct_1(vec4<u32>(1u, 4294967295u, 67912u, 9815u), -616f, 22973i, vec2<u32>(0u, 10239u), vec2<u32>(39396u, 111757u)), vec3<bool>(false, false, true), Struct_3(vec2<i32>(-35047i, 14788i))), Struct_4(Struct_1(vec4<u32>(0u, 1u, 74557u, 52434u), -226f, 0i, vec2<u32>(1u, 4294967295u), vec2<u32>(11875u, 80690u)), vec3<bool>(true, true, true), Struct_3(vec2<i32>(-97086i, -1i))), Struct_4(Struct_1(vec4<u32>(4294967295u, 39439u, 4294967295u, 6268u), 1066f, 0i, vec2<u32>(97526u, 21014u), vec2<u32>(28782u, 22082u)), vec3<bool>(false, true, true), Struct_3(vec2<i32>(-16732i, 2147483647i))), Struct_4(Struct_1(vec4<u32>(68090u, 1u, 42748u, 65384u), 2711f, 53151i, vec2<u32>(40329u, 66345u), vec2<u32>(27780u, 0u)), vec3<bool>(true, false, false), Struct_3(vec2<i32>(2147483647i, 2147483647i))), Struct_4(Struct_1(vec4<u32>(4294967295u, 3638u, 1u, 3070u), 223f, -6033i, vec2<u32>(0u, 1u), vec2<u32>(26158u, 106421u)), vec3<bool>(true, false, true), Struct_3(vec2<i32>(-26523i, -1i))), Struct_4(Struct_1(vec4<u32>(33345u, 34115u, 28503u, 4294967295u), -175f, -36682i, vec2<u32>(47969u, 4294967295u), vec2<u32>(1u, 53920u)), vec3<bool>(false, false, false), Struct_3(vec2<i32>(27439i, i32(-2147483648)))), Struct_4(Struct_1(vec4<u32>(1u, 169u, 1u, 76315u), 2590f, 0i, vec2<u32>(1u, 0u), vec2<u32>(11735u, 4294967295u)), vec3<bool>(false, true, false), Struct_3(vec2<i32>(12971i, 0i))), Struct_4(Struct_1(vec4<u32>(1u, 0u, 4294967295u, 1u), -638f, 18286i, vec2<u32>(4294967295u, 1u), vec2<u32>(92873u, 28356u)), vec3<bool>(false, false, true), Struct_3(vec2<i32>(-3527i, -20911i))));

var<private> global2: Struct_3 = Struct_3(vec2<i32>(2147483647i, 0i));

var<private> global3: Struct_3 = Struct_3(vec2<i32>(19787i, 0i));

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: bool, arg_1: Struct_4) -> vec2<bool> {
    var var_0 = Struct_2(Struct_1(vec4<u32>(u_input.c.x, 3370u, arg_1.a.d.x, ~134884u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1.a.b, arg_1.a.b)) * _wgslsmith_f_op_f32(-arg_1.a.b)), ~abs(global3.a.x), _wgslsmith_clamp_vec2_u32(u_input.c.xz, min(vec2<u32>(1u, 1u), vec2<u32>(arg_1.a.d.x, arg_1.a.d.x) << (vec2<u32>(arg_1.a.d.x, 4294967295u) % vec2<u32>(32u))), ~max(u_input.d, vec2<u32>(arg_1.a.e.x, arg_1.a.e.x))), ~(~arg_1.a.d ^ select(vec2<u32>(arg_1.a.d.x, 52323u), vec2<u32>(arg_1.a.e.x, 0u), arg_1.b.zx))), arg_1.a, !select(vec2<bool>(false, arg_1.c.a.x >= 1i), arg_1.b.xz, false), ~_wgslsmith_div_u32(select(arg_1.a.e.x << (4294967295u % 32u), _wgslsmith_dot_vec4_u32(arg_1.a.a, vec4<u32>(arg_1.a.a.x, 27372u, 38520u, u_input.d.x)), arg_1.b.x), arg_1.a.d.x), !all(arg_1.b.xy));
    return var_0.c;
}

fn func_2(arg_0: i32, arg_1: vec4<i32>, arg_2: bool, arg_3: Struct_1) -> vec2<i32> {
    var var_0 = func_3(((arg_3.e.x | ~52119u) ^ u_input.d.x) <= u_input.d.x, global1[_wgslsmith_index_u32(66693u, 20u)]);
    return global2.a;
}

fn func_1() -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -891f) * 153f));
    global0 = array<vec2<f32>, 10>();
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-675f * var_0), var_0), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0 - var_0) - _wgslsmith_div_f32(var_0, -1559f)))), _wgslsmith_div_f32(var_0, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-906f * var_0))))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2250f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)))));
    global0 = array<vec2<f32>, 10>();
    global3 = Struct_3(max(vec2<i32>(_wgslsmith_mult_i32(global2.a.x, -43632i), u_input.b | global2.a.x), ~func_2(39109i, vec4<i32>(u_input.b, global2.a.x, 1i, 3498i), true, Struct_1(vec4<u32>(28279u, 0u, 0u, u_input.d.x), var_0, -41060i, vec2<u32>(u_input.c.x, 0u), u_input.c.yx))) ^ select(_wgslsmith_add_vec2_i32(-vec2<i32>(global2.a.x, global2.a.x), abs(vec2<i32>(u_input.b, global3.a.x))), min(firstLeadingBit(vec2<i32>(u_input.a, global2.a.x)), vec2<i32>(global3.a.x, global3.a.x)), vec2<bool>(all(vec3<bool>(false, false, true)), true)));
    return Struct_2(Struct_1(~(~vec4<u32>(u_input.c.x, u_input.c.x, 57186u, u_input.c.x)), -301f, 7657i, ~(~vec2<u32>(u_input.d.x, u_input.c.x)), vec2<u32>(u_input.d.x, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, 0u, 4294967295u, u_input.d.x), vec4<u32>(15963u, u_input.d.x, u_input.c.x, 4294967295u)) << (u_input.c.x % 32u))), Struct_1(~(~vec4<u32>(u_input.d.x, u_input.c.x, 0u, 4294967295u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-2362f)))), firstLeadingBit(_wgslsmith_dot_vec2_i32(global2.a, vec2<i32>(global2.a.x, u_input.a) | global3.a)), select(vec2<u32>(_wgslsmith_sub_u32(1u, u_input.d.x), firstTrailingBit(u_input.c.x)), _wgslsmith_div_vec2_u32(countOneBits(vec2<u32>(u_input.d.x, 1u)), _wgslsmith_add_vec2_u32(vec2<u32>(4294967295u, 22977u), vec2<u32>(u_input.d.x, u_input.d.x))), vec2<bool>(u_input.c.x < u_input.c.x, true)), max(vec2<u32>(select(u_input.c.x, u_input.c.x, false), firstLeadingBit(0u)), vec2<u32>(~u_input.c.x, u_input.d.x >> (1u % 32u)))), !vec2<bool>(_wgslsmith_clamp_u32(u_input.d.x, u_input.c.x, 26775u) < ~1u, true), ~reverseBits(_wgslsmith_div_u32(~u_input.c.x, ~14142u)), all(vec3<bool>(true, -637f > _wgslsmith_f_op_f32(-412f + var_0), all(select(vec2<bool>(false, false), vec2<bool>(true, false), true)))));
}

fn func_4(arg_0: f32, arg_1: Struct_2, arg_2: f32, arg_3: Struct_2) -> Struct_1 {
    let var_0 = Struct_3(global3.a);
    let var_1 = global1[_wgslsmith_index_u32(countOneBits(_wgslsmith_add_u32((_wgslsmith_dot_vec4_u32(vec4<u32>(arg_3.a.d.x, arg_3.b.a.x, 4294967295u, 26048u), arg_1.b.a) | ~u_input.c.x) ^ 1u, max(~_wgslsmith_dot_vec2_u32(u_input.d, vec2<u32>(arg_3.b.e.x, 21902u)), u_input.c.x))), 20u)];
    var var_2 = vec4<u32>((var_1.a.d.x >> (_wgslsmith_mult_u32(func_1().d, 0u) % 32u)) & ~_wgslsmith_mod_u32(arg_3.b.e.x, 36809u), var_1.a.e.x, u_input.c.x, 0u);
    let var_3 = firstTrailingBit(_wgslsmith_sub_vec4_i32(vec4<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(15757i, global3.a.x, global2.a.x, arg_1.a.c), vec4<i32>(1i, -2147483647i, var_0.a.x, 40056i)), vec4<i32>(u_input.a, u_input.a, u_input.a, var_1.c.a.x)), abs(i32(-1i) * -2147483647i), u_input.a, -18032i), select(firstLeadingBit(vec4<i32>(arg_1.b.c, u_input.a, -3165i, 67527i)) ^ max(vec4<i32>(var_0.a.x, var_0.a.x, u_input.a, 2147483647i), vec4<i32>(global3.a.x, var_0.a.x, 34479i, -14121i)), vec4<i32>(_wgslsmith_sub_i32(var_0.a.x, u_input.a), ~(-6831i), _wgslsmith_mod_i32(global3.a.x, 17769i), i32(-1i) * -1i), arg_1.e)));
    var_2 = ~arg_1.a.a;
    return arg_3.a;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = Struct_3(vec2<i32>(global2.a.x, -18755i));
    var var_0 = ~(~vec3<u32>(~(~u_input.c.x), u_input.c.x, _wgslsmith_mult_u32(u_input.d.x, 3413u)));
    var var_1 = func_4(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(201f + 759f) * 1f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1137f) + _wgslsmith_f_op_f32(388f * -658f)), _wgslsmith_f_op_f32(sign(-1460f)))), func_1(), -2077f, func_1());
    var_1 = func_4(1066f, Struct_2(Struct_1(vec4<u32>(var_0.x ^ u_input.c.x, 4294967295u, func_4(var_1.b, Struct_2(Struct_1(var_1.a, -104f, global2.a.x, vec2<u32>(var_0.x, 0u), vec2<u32>(u_input.c.x, 27938u)), Struct_1(vec4<u32>(u_input.d.x, var_0.x, var_0.x, 0u), var_1.b, u_input.a, vec2<u32>(u_input.d.x, 24966u), var_0.xz), vec2<bool>(true, false), var_0.x, true), var_1.b, Struct_2(Struct_1(vec4<u32>(46486u, u_input.c.x, 0u, var_1.e.x), var_1.b, 1i, u_input.d, vec2<u32>(8323u, 1u)), Struct_1(var_1.a, var_1.b, -34269i, vec2<u32>(u_input.c.x, 4294967295u), var_1.e), vec2<bool>(false, true), 4294967295u, false)).a.x, u_input.c.x), _wgslsmith_f_op_f32(max(var_1.b, _wgslsmith_f_op_f32(abs(1245f)))), global3.a.x, func_1().a.d, _wgslsmith_clamp_vec2_u32(countOneBits(vec2<u32>(0u, 14549u)), select(vec2<u32>(u_input.d.x, var_1.a.x), var_1.e, vec2<bool>(true, true)), abs(vec2<u32>(u_input.d.x, 1u)))), Struct_1(firstLeadingBit(vec4<u32>(1u, 0u, var_0.x, var_0.x)), var_1.b, firstLeadingBit(1i), select(vec2<u32>(var_1.d.x, var_1.a.x), ~var_1.d, any(vec4<bool>(true, false, false, false))), ~vec2<u32>(0u, u_input.d.x)), vec2<bool>(true, true), var_0.x, true), _wgslsmith_f_op_f32(var_1.b + -270f), Struct_2(func_1().a, func_4(_wgslsmith_f_op_f32(exp2(var_1.b)), func_1(), func_4(1000f, Struct_2(Struct_1(var_1.a, var_1.b, -41655i, var_1.e, vec2<u32>(var_1.d.x, var_1.d.x)), Struct_1(vec4<u32>(1u, var_1.e.x, var_1.d.x, u_input.d.x), var_1.b, u_input.a, u_input.d, vec2<u32>(36653u, u_input.c.x)), vec2<bool>(false, false), 19143u, false), _wgslsmith_f_op_f32(trunc(-1400f)), func_1()).b, Struct_2(func_1().b, func_4(1519f, Struct_2(Struct_1(var_1.a, 1176f, global2.a.x, vec2<u32>(4704u, var_1.e.x), var_1.a.xx), Struct_1(var_1.a, var_1.b, global3.a.x, var_0.xz, vec2<u32>(0u, var_0.x)), vec2<bool>(false, false), var_0.x, true), var_1.b, Struct_2(Struct_1(var_1.a, var_1.b, u_input.a, var_1.d, u_input.c.yy), Struct_1(var_1.a, var_1.b, global3.a.x, var_1.a.xy, vec2<u32>(98576u, 4294967295u)), vec2<bool>(true, false), var_1.a.x, true)), vec2<bool>(true, true), min(var_1.a.x, u_input.c.x), true)), vec2<bool>(true, true), _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(select(vec3<u32>(var_0.x, var_0.x, var_1.e.x), u_input.c, vec3<bool>(true, true, true)), vec3<u32>(54062u, 0u, var_0.x)), _wgslsmith_div_vec3_u32(u_input.c, var_1.a.yzy)), !(_wgslsmith_sub_u32(72156u, var_0.x) != _wgslsmith_mod_u32(var_1.a.x, 1u))));
    let var_2 = global1[_wgslsmith_index_u32(var_0.x, 20u)];
    global1 = array<Struct_4, 20>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_u32(vec3<u32>(_wgslsmith_mult_u32(~var_2.a.e.x, 22300u), _wgslsmith_mult_u32(20426u, var_2.a.a.x), ~var_0.x), var_2.a.a.zwz), vec3<u32>(var_2.a.d.x, var_0.x, 1u >> (~_wgslsmith_div_u32(var_2.a.e.x, 0u) % 32u)));
}


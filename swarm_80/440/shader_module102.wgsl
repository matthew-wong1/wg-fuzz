struct Struct_1 {
    a: u32,
    b: bool,
    c: i32,
    d: vec4<bool>,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: vec2<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 1> = array<Struct_1, 1>(Struct_1(33140u, true, -1i, vec4<bool>(false, false, false, false), vec4<u32>(1u, 1u, 35185u, 3604u)));

var<private> global1: array<Struct_1, 21> = array<Struct_1, 21>(Struct_1(1u, false, 20656i, vec4<bool>(true, true, true, false), vec4<u32>(13061u, 50219u, 1u, 66294u)), Struct_1(39868u, true, 27257i, vec4<bool>(false, true, false, true), vec4<u32>(0u, 32540u, 115832u, 0u)), Struct_1(31161u, false, 5513i, vec4<bool>(false, true, false, false), vec4<u32>(1u, 1u, 16465u, 21692u)), Struct_1(19939u, true, -2462i, vec4<bool>(false, true, true, false), vec4<u32>(32106u, 21687u, 18396u, 1225u)), Struct_1(1u, false, 2147483647i, vec4<bool>(false, true, false, false), vec4<u32>(15307u, 15563u, 4294967295u, 0u)), Struct_1(20989u, false, -1008i, vec4<bool>(false, true, true, false), vec4<u32>(6199u, 3676u, 4294967295u, 1u)), Struct_1(38575u, true, 36775i, vec4<bool>(true, true, false, true), vec4<u32>(29428u, 149096u, 27810u, 1u)), Struct_1(68518u, true, 2147483647i, vec4<bool>(true, false, false, false), vec4<u32>(2397u, 4294967295u, 27612u, 1u)), Struct_1(4294967295u, true, 12583i, vec4<bool>(false, false, true, false), vec4<u32>(4294967295u, 2628u, 49934u, 24669u)), Struct_1(90737u, false, 13225i, vec4<bool>(false, false, true, true), vec4<u32>(0u, 4294967295u, 39711u, 11u)), Struct_1(15691u, false, 36533i, vec4<bool>(true, false, true, true), vec4<u32>(0u, 4294967295u, 1u, 1u)), Struct_1(0u, false, -5809i, vec4<bool>(false, false, true, true), vec4<u32>(23934u, 4294967295u, 0u, 0u)), Struct_1(28966u, true, -56890i, vec4<bool>(false, true, true, true), vec4<u32>(46942u, 7936u, 38502u, 25909u)), Struct_1(14457u, true, 0i, vec4<bool>(false, false, true, false), vec4<u32>(0u, 0u, 1u, 0u)), Struct_1(16003u, false, -11616i, vec4<bool>(false, false, false, false), vec4<u32>(10260u, 4294967295u, 26549u, 103392u)), Struct_1(1u, false, -26963i, vec4<bool>(false, false, true, false), vec4<u32>(434u, 44611u, 0u, 1u)), Struct_1(67594u, false, 21476i, vec4<bool>(false, false, false, false), vec4<u32>(56106u, 11338u, 4294967295u, 4945u)), Struct_1(4294967295u, false, 36150i, vec4<bool>(false, false, true, true), vec4<u32>(12702u, 4294967295u, 4294967295u, 0u)), Struct_1(42707u, false, 0i, vec4<bool>(false, false, false, false), vec4<u32>(0u, 13355u, 1u, 18262u)), Struct_1(109u, true, 22333i, vec4<bool>(true, false, true, true), vec4<u32>(49804u, 75u, 60693u, 48724u)), Struct_1(0u, true, 2147483647i, vec4<bool>(true, true, false, false), vec4<u32>(47493u, 15584u, 0u, 0u)));

var<private> global2: array<Struct_1, 17> = array<Struct_1, 17>(Struct_1(4294967295u, true, -1i, vec4<bool>(false, false, true, true), vec4<u32>(0u, 11146u, 113985u, 27222u)), Struct_1(44752u, true, 15461i, vec4<bool>(false, true, false, true), vec4<u32>(9519u, 1u, 35975u, 0u)), Struct_1(1u, true, 0i, vec4<bool>(false, false, false, true), vec4<u32>(13489u, 0u, 543u, 1u)), Struct_1(1u, false, 30656i, vec4<bool>(false, true, false, true), vec4<u32>(1u, 63555u, 55402u, 4294967295u)), Struct_1(4294967295u, true, -19250i, vec4<bool>(true, false, false, false), vec4<u32>(61125u, 0u, 1u, 75574u)), Struct_1(27663u, false, 2666i, vec4<bool>(false, false, false, true), vec4<u32>(4294967295u, 0u, 0u, 110063u)), Struct_1(1u, true, 1i, vec4<bool>(false, true, false, true), vec4<u32>(0u, 56385u, 23229u, 4294967295u)), Struct_1(0u, false, 1i, vec4<bool>(true, true, true, true), vec4<u32>(0u, 1u, 0u, 4294967295u)), Struct_1(66737u, true, -11018i, vec4<bool>(false, false, true, true), vec4<u32>(0u, 6979u, 40352u, 50815u)), Struct_1(4294967295u, true, -1i, vec4<bool>(false, true, false, true), vec4<u32>(1u, 4294967295u, 56494u, 17560u)), Struct_1(4294967295u, true, 1i, vec4<bool>(true, true, true, false), vec4<u32>(4294967295u, 4294967295u, 0u, 1u)), Struct_1(0u, true, -15639i, vec4<bool>(false, false, false, true), vec4<u32>(4294967295u, 4294967295u, 0u, 83424u)), Struct_1(1u, true, -25172i, vec4<bool>(false, false, true, false), vec4<u32>(1u, 22520u, 1425u, 0u)), Struct_1(0u, false, i32(-2147483648), vec4<bool>(false, false, true, false), vec4<u32>(1u, 6336u, 7877u, 0u)), Struct_1(119593u, true, -16620i, vec4<bool>(true, false, false, false), vec4<u32>(10717u, 6642u, 18476u, 1u)), Struct_1(1u, true, 2147483647i, vec4<bool>(true, true, false, true), vec4<u32>(30235u, 0u, 0u, 2106u)), Struct_1(4294967295u, true, -1i, vec4<bool>(true, false, false, true), vec4<u32>(4294967295u, 76079u, 70161u, 26322u)));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: Struct_1, arg_1: i32) -> u32 {
    global1 = array<Struct_1, 21>();
    var var_0 = global1[_wgslsmith_index_u32(_wgslsmith_add_u32(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 4294967295u, _wgslsmith_mult_u32(_wgslsmith_mult_u32(0u, u_input.c.x), arg_0.a)), arg_0.e.yzy)), 21u)];
    let var_1 = ~(~(-var_0.c));
    let var_2 = vec3<bool>(arg_0.d.x, arg_0.b, true);
    let var_3 = 2147483647i;
    return ~var_0.e.x;
}

fn func_3(arg_0: vec4<f32>, arg_1: vec3<f32>, arg_2: bool, arg_3: Struct_1) -> vec4<u32> {
    global0 = array<Struct_1, 1>();
    var var_0 = Struct_1(35113u, true, 23535i, vec4<bool>(true, arg_2, arg_3.b, arg_2), abs(countOneBits(arg_3.e)));
    var var_1 = 0i;
    var var_2 = Struct_1(_wgslsmith_mod_u32(~(~_wgslsmith_dot_vec3_u32(vec3<u32>(25850u, 0u, u_input.c.x), vec3<u32>(1u, 7975u, var_0.e.x))), func_2(Struct_1(~u_input.c.x, true, u_input.a, select(var_0.d, var_0.d, arg_2), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.c.x, u_input.c.x, 0u, 4294967295u), vec4<u32>(u_input.c.x, 1047u, 4294967295u, 4294967295u), vec4<u32>(83097u, arg_3.a, var_0.e.x, 35343u))), _wgslsmith_sub_i32(var_0.c, var_0.c))), true, _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(~vec3<i32>(50871i, arg_3.c, u_input.a), vec3<i32>(var_0.c, -50650i, arg_3.c) << (var_0.e.yzx % vec3<u32>(32u))), ~firstTrailingBit(var_0.c)) << (_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_mod_u32(u_input.c.x, 46192u), u_input.c.x >> (arg_3.a % 32u), 23914u), vec3<u32>(u_input.c.x, _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.e.x, 4294967295u, arg_3.a), arg_3.e.yxz), arg_3.e.x)) % 32u), var_0.d, arg_3.e);
    let var_3 = arg_0.x;
    return ~_wgslsmith_sub_vec4_u32(var_0.e, var_0.e);
}

fn func_1() -> f32 {
    global1 = array<Struct_1, 21>();
    let var_0 = 1i;
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(2474f, -611f, 381f, -211f))))));
    let var_2 = Struct_1(select(func_2(global1[_wgslsmith_index_u32(~(u_input.c.x >> (u_input.c.x % 32u)), 21u)], -u_input.a), 382u | ((u_input.c.x >> (0u % 32u)) ^ 1u), false), false, ~firstLeadingBit(reverseBits(1i)), !vec4<bool>(true, true, !(var_1.x == var_1.x), any(select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, true), true))), _wgslsmith_mult_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(1u, 0u, u_input.c.x, u_input.c.x) | vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, 4294967295u), func_3(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, var_1.x, var_1.x, 1271f) - vec4<f32>(var_1.x, var_1.x, var_1.x, -1073f)), var_1.yyz, true, global0[_wgslsmith_index_u32(~u_input.c.x, 1u)])), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.c.x, u_input.c.x, 36783u, 0u), max(vec4<u32>(0u, u_input.c.x, u_input.c.x, u_input.c.x), vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, 18051u))) & vec4<u32>(~u_input.c.x, u_input.c.x, u_input.c.x, 4294967295u)));
    var var_3 = var_2.a;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)) - _wgslsmith_f_op_f32(select(-261f, 679f, all(var_2.d.xzw))));
}

fn func_4(arg_0: vec4<f32>, arg_1: vec2<f32>, arg_2: Struct_1, arg_3: Struct_1) -> i32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(-321f, _wgslsmith_f_op_f32(exp2(arg_1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_0.x))))));
    let var_1 = vec3<bool>(arg_2.b, _wgslsmith_add_u32(u_input.c.x, arg_3.a) != 4294967295u, arg_3.b);
    var_0 = vec3<f32>(_wgslsmith_f_op_f32(arg_1.x + arg_1.x), arg_0.x, -709f);
    let var_2 = reverseBits(abs(~(~vec3<u32>(arg_3.e.x, arg_2.a, 94139u)))) ^ abs(vec3<u32>(_wgslsmith_mod_u32(~arg_3.a, 0u), arg_3.e.x, 32846u));
    var_0 = vec3<f32>(arg_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-827f * arg_0.x), arg_1.x) * arg_1.x) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) * _wgslsmith_f_op_f32(-var_0.x)) * 157f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(-arg_0.x)))));
    return arg_3.c;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 21>();
    let var_0 = Struct_1(_wgslsmith_add_u32(max(u_input.c.x, _wgslsmith_sub_u32(u_input.c.x, _wgslsmith_mult_u32(0u, u_input.c.x))), 0u), !(_wgslsmith_clamp_i32(firstLeadingBit(u_input.b), u_input.b, -u_input.a) == -_wgslsmith_sub_i32(33208i, u_input.a)), func_4(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(-258f * -870f), -426f, _wgslsmith_div_f32(-620f, -690f)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(max(270f, -527f)), 1276f) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(406f, -737f)) * _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-2250f, -400f))))), Struct_1(_wgslsmith_add_u32(1163u, 3293u), true, _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(2147483647i, u_input.b), vec2<i32>(-15458i, -36896i)), vec2<i32>(u_input.a, u_input.b)), select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true), u_input.b < 1539i), ~(~vec4<u32>(5053u, 4294967295u, u_input.c.x, 44316u))), Struct_1(0u, true, -1i, select(vec4<bool>(true, true, false, false), select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, true)), vec4<bool>(true, true, true, true)), firstLeadingBit(vec4<u32>(23175u, 38773u, 54992u, u_input.c.x)) >> (vec4<u32>(u_input.c.x, 38546u, u_input.c.x, 4294967295u) % vec4<u32>(32u)))), vec4<bool>(!any(vec4<bool>(true, true, true, true)), true || (2297u <= _wgslsmith_mult_u32(u_input.c.x, 9003u)), false, true), select(~vec4<u32>(4294967295u, abs(6606u), select(u_input.c.x, u_input.c.x, true), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, 24214u, 42121u), vec3<u32>(u_input.c.x, u_input.c.x, 4294967295u))), _wgslsmith_sub_vec4_u32(vec4<u32>(min(1u, 4294967295u), ~u_input.c.x, u_input.c.x, 49579u), vec4<u32>(u_input.c.x, 2235u, u_input.c.x, 1u) & _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, u_input.c.x), vec4<u32>(1u, 8988u, 4294967295u, 0u))), vec4<bool>(true, true, true, true)));
    global1 = array<Struct_1, 21>();
    var var_1 = var_0.b;
    let var_2 = global0[_wgslsmith_index_u32(u_input.c.x, 1u)];
    var var_3 = 63364u;
    global0 = array<Struct_1, 1>();
    var var_4 = -(~(~var_0.c));
    var var_5 = Struct_1(_wgslsmith_mult_u32(_wgslsmith_add_u32(~1u, ~max(u_input.c.x, u_input.c.x)), u_input.c.x), false, var_2.c, var_0.d, firstTrailingBit(max(var_2.e, ~(~var_0.e))));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.e, _wgslsmith_f_op_f32(f32(-1f) * -159f), u_input.c, ~_wgslsmith_sub_u32(~var_0.a, 0u));
}


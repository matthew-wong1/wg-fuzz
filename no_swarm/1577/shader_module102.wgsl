struct Struct_1 {
    a: i32,
    b: vec3<u32>,
    c: vec4<f32>,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<f32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 18>;

var<private> global1: array<Struct_1, 4> = array<Struct_1, 4>(Struct_1(-37962i, vec3<u32>(0u, 70203u, 57265u), vec4<f32>(1000f, -677f, -606f, -732f), vec4<u32>(33519u, 0u, 51306u, 0u)), Struct_1(0i, vec3<u32>(1u, 56417u, 1u), vec4<f32>(-500f, -740f, -1000f, -536f), vec4<u32>(1u, 1u, 0u, 1u)), Struct_1(2651i, vec3<u32>(49328u, 4294967295u, 468u), vec4<f32>(-504f, 1553f, 312f, 541f), vec4<u32>(4279u, 13135u, 74697u, 1u)), Struct_1(39979i, vec3<u32>(4294967295u, 0u, 24048u), vec4<f32>(-329f, 784f, -255f, -325f), vec4<u32>(16211u, 13709u, 68656u, 30029u)));

var<private> global2: array<Struct_1, 12> = array<Struct_1, 12>(Struct_1(4811i, vec3<u32>(4294967295u, 4294967295u, 4294967295u), vec4<f32>(1460f, 804f, 836f, -1826f), vec4<u32>(4294967295u, 37015u, 0u, 1u)), Struct_1(1i, vec3<u32>(62265u, 15438u, 0u), vec4<f32>(-137f, -722f, 1215f, 395f), vec4<u32>(4294967295u, 1u, 80038u, 4294967295u)), Struct_1(0i, vec3<u32>(39438u, 0u, 4294967295u), vec4<f32>(-542f, 285f, -569f, 924f), vec4<u32>(1166u, 1965u, 22129u, 4294967295u)), Struct_1(38936i, vec3<u32>(95472u, 4294967295u, 20425u), vec4<f32>(640f, 1407f, 1177f, -428f), vec4<u32>(0u, 1u, 4294967295u, 4294967295u)), Struct_1(-1i, vec3<u32>(0u, 1u, 3332u), vec4<f32>(-1000f, -139f, -738f, -1668f), vec4<u32>(28036u, 1u, 1u, 46539u)), Struct_1(0i, vec3<u32>(4294967295u, 0u, 1u), vec4<f32>(-1285f, -1806f, 2780f, 2425f), vec4<u32>(27552u, 47076u, 67472u, 81993u)), Struct_1(-1i, vec3<u32>(4294967295u, 0u, 1u), vec4<f32>(474f, -1356f, -173f, 988f), vec4<u32>(20229u, 0u, 20114u, 1u)), Struct_1(0i, vec3<u32>(1u, 0u, 64228u), vec4<f32>(-577f, 835f, 289f, 219f), vec4<u32>(68095u, 26240u, 34284u, 1u)), Struct_1(0i, vec3<u32>(1u, 1u, 0u), vec4<f32>(1000f, 1000f, -876f, -1372f), vec4<u32>(18660u, 1u, 4294967295u, 1u)), Struct_1(31498i, vec3<u32>(72812u, 0u, 128029u), vec4<f32>(536f, 249f, 949f, -1937f), vec4<u32>(4294967295u, 37743u, 37427u, 19009u)), Struct_1(1i, vec3<u32>(33858u, 4294967295u, 24363u), vec4<f32>(1395f, 655f, -323f, 1000f), vec4<u32>(1u, 32566u, 0u, 30465u)), Struct_1(0i, vec3<u32>(0u, 5132u, 4294967295u), vec4<f32>(1551f, -235f, -911f, 102f), vec4<u32>(8267u, 0u, 40298u, 756u)));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec3<u32>) -> u32 {
    global2 = array<Struct_1, 12>();
    let var_0 = arg_0;
    global1 = array<Struct_1, 4>();
    var var_1 = countOneBits(u_input.a);
    let var_2 = select(vec4<bool>(true, true, true, true), select(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false), true), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), vec4<bool>(any(vec4<bool>(true, true, true, false)), any(vec2<bool>(true, true)), false, true), _wgslsmith_div_u32(arg_0.x, var_0.x) > ~18828u), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(-764f)), _wgslsmith_f_op_f32(f32(-1f) * -1362f))) <= 1f), any(select(select(vec2<bool>(true, true), vec2<bool>(true, false), true), !select(vec2<bool>(false, true), vec2<bool>(false, true), true), true)));
    return ~(~min(~(~var_0.x), countOneBits(select(24108u, 0u, var_2.x))));
}

fn func_2(arg_0: vec3<u32>) -> vec4<u32> {
    let var_0 = global1[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(func_3(~arg_0 << ((vec3<u32>(arg_0.x, global0[_wgslsmith_index_u32(arg_0.x, 18u)], 1u) >> (arg_0 % vec3<u32>(32u))) % vec3<u32>(32u))) | (25812u ^ _wgslsmith_div_u32(_wgslsmith_mod_u32(arg_0.x, arg_0.x), arg_0.x)), 18u)], 4u)];
    let var_1 = global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~(~arg_0.x), 18u)], 12u)];
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.c.x - -2227f)));
    let var_3 = _wgslsmith_add_i32(abs(2147483647i), var_0.a);
    var var_4 = var_0.a;
    return ~(~abs(abs(var_0.d) << (vec4<u32>(var_1.d.x, var_1.d.x, arg_0.x, 4294967295u) % vec4<u32>(32u))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    global1 = array<Struct_1, 4>();
    var var_0 = arg_1;
    var var_1 = select(!select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, false)), select(false, true, true)), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false), select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, true), true)), !select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, false), false)), !vec4<bool>(_wgslsmith_f_op_f32(f32(-1f) * -726f) != _wgslsmith_f_op_f32(-arg_0.c.x), true, true, any(vec3<bool>(false, false, false))), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), !select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, false), false)), vec4<bool>(all(select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, true))), !(-5757i >= var_0.a), !any(vec3<bool>(true, false, true)), any(select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, true), false))), true || all(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false)))));
    var var_2 = Struct_1(-_wgslsmith_dot_vec2_i32(u_input.a.yy, u_input.a.xx) ^ arg_1.a, arg_1.b, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c.x) - _wgslsmith_f_op_f32(var_0.c.x - -160f)) + _wgslsmith_f_op_f32(f32(-1f) * -1516f)), arg_0.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -834f)), _wgslsmith_f_op_f32(round(arg_0.c.x))), ~var_0.d);
    let var_3 = _wgslsmith_sub_vec4_i32(-_wgslsmith_mod_vec4_i32(-vec4<i32>(var_0.a, u_input.a.x, -1i, 0i), max(vec4<i32>(var_0.a, -14547i, -16749i, 3i), vec4<i32>(arg_1.a, 2186i, arg_0.a, u_input.a.x))) >> (~vec4<u32>(30181u, arg_0.b.x ^ global0[_wgslsmith_index_u32(arg_1.b.x, 18u)], reverseBits(arg_0.d.x), ~0u) % vec4<u32>(32u)), max(select(-vec4<i32>(-2147483647i, u_input.a.x, -15179i, -1i), -vec4<i32>(4610i, -2147483647i, 593i, -1178i), vec4<bool>(false, var_1.x, var_1.x, var_1.x)), _wgslsmith_add_vec4_i32(min(vec4<i32>(var_0.a, var_2.a, var_0.a, -14907i), vec4<i32>(arg_0.a, arg_0.a, arg_1.a, var_2.a)), vec4<i32>(2147483647i, var_2.a, var_0.a, var_2.a))) & ~firstLeadingBit(vec4<i32>(u_input.a.x, 25161i, 29256i, arg_1.a) << (vec4<u32>(arg_0.d.x, var_0.d.x, 1596u, var_0.d.x) % vec4<u32>(32u))));
    return arg_0;
}

fn func_5(arg_0: vec3<f32>, arg_1: vec3<i32>, arg_2: Struct_1) -> f32 {
    let var_0 = ~countOneBits(firstLeadingBit(vec4<u32>(_wgslsmith_mod_u32(global0[_wgslsmith_index_u32(arg_2.d.x, 18u)], global0[_wgslsmith_index_u32(40788u, 18u)]), select(39832u, 23556u, false), global0[_wgslsmith_index_u32(~arg_2.b.x, 18u)], _wgslsmith_dot_vec4_u32(vec4<u32>(arg_2.d.x, 66634u, global0[_wgslsmith_index_u32(arg_2.d.x, 18u)], global0[_wgslsmith_index_u32(arg_2.d.x, 18u)]), vec4<u32>(arg_2.b.x, 17340u, arg_2.d.x, 90922u)))));
    global1 = array<Struct_1, 4>();
    global0 = array<u32, 18>();
    let var_1 = vec2<u32>(1u, func_4(global2[_wgslsmith_index_u32(min(_wgslsmith_add_u32(~var_0.x, _wgslsmith_mod_u32(0u, arg_2.d.x)), _wgslsmith_sub_u32(global0[_wgslsmith_index_u32(~0u, 18u)], 0u)), 12u)], global2[_wgslsmith_index_u32(arg_2.b.x, 12u)]).b.x);
    let var_2 = false;
    return _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.c.x - _wgslsmith_f_op_f32(-arg_0.x)) + _wgslsmith_f_op_f32(670f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(123f, arg_0.x, true)))))));
}

fn func_1(arg_0: Struct_1, arg_1: u32, arg_2: vec3<i32>, arg_3: vec2<u32>) -> f32 {
    let var_0 = false;
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_5(vec3<f32>(-796f, _wgslsmith_f_op_f32(-102f - _wgslsmith_f_op_f32(trunc(arg_0.c.x))), arg_0.c.x), vec3<i32>(-1i) * -_wgslsmith_mult_vec3_i32(arg_2, u_input.a), func_4(global1[_wgslsmith_index_u32(~_wgslsmith_mult_u32(1u, 86830u), 4u)], Struct_1(22550i, _wgslsmith_add_vec3_u32(arg_0.b, vec3<u32>(global0[_wgslsmith_index_u32(0u, 18u)], 30404u, 112378u)), vec4<f32>(arg_0.c.x, -651f, arg_0.c.x, 693f), func_2(vec3<u32>(10119u, arg_1, arg_3.x)))))), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_0.c.x + arg_0.c.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.c.x) - -1528f)), arg_0.c.x));
    global1 = array<Struct_1, 4>();
    global2 = array<Struct_1, 12>();
    let var_2 = arg_2.x;
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-308f - 390f)))), _wgslsmith_f_op_f32(floor(arg_0.c.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(global2[_wgslsmith_index_u32(0u, 12u)], global0[_wgslsmith_index_u32(4294967295u, 18u)], u_input.a, vec2<u32>(0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 18u)], 18u)]))) + -2155f))), -439f)));
    let var_1 = !select(vec3<bool>(true, !select(false, true, true), true), select(select(select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), true), vec3<bool>(false, true, false), all(vec4<bool>(true, true, false, true))), vec3<bool>(true, -2333f != var_0, true), vec3<bool>(4294967295u < global0[_wgslsmith_index_u32(65510u, 18u)], var_0 == var_0, true)), select(vec3<bool>(all(vec2<bool>(false, false)), global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(24619u, 18u)], 18u)], 18u)], 18u)] < 36049u, true), vec3<bool>(true, true, true), true));
    global0 = array<u32, 18>();
    global2 = array<Struct_1, 12>();
    let var_2 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-1f), var_0) * vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1486f))), var_0));
    let var_3 = func_4(Struct_1(firstLeadingBit(u_input.a.x) & 2147483647i, ~(~vec3<u32>(1u, 41261u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 18u)], 18u)], 18u)], 18u)])), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(2491f, var_0, 1276f, var_2.x) * vec4<f32>(669f, -1000f, 1033f, var_2.x))) - vec4<f32>(_wgslsmith_f_op_f32(func_5(vec3<f32>(127f, 577f, -310f), vec3<i32>(42025i, u_input.a.x, u_input.a.x), Struct_1(u_input.a.x, vec3<u32>(0u, 49780u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(31121u, 18u)], 18u)]), vec4<f32>(-727f, 248f, var_2.x, 1807f), vec4<u32>(global0[_wgslsmith_index_u32(1u, 18u)], global0[_wgslsmith_index_u32(23249u, 18u)], 9586u, 14506u)))), _wgslsmith_div_f32(1136f, var_0), _wgslsmith_f_op_f32(select(869f, var_2.x, false)), 1000f)), vec4<u32>(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 18u)], 18u)] >> (reverseBits(global0[_wgslsmith_index_u32(4294967295u, 18u)]) % 32u), func_3(vec3<u32>(29088u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(64649u, 18u)], 18u)], 18u)], global0[_wgslsmith_index_u32(90430u, 18u)])), _wgslsmith_clamp_u32(_wgslsmith_clamp_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 18u)], 18u)], 18u)], 0u, 0u), _wgslsmith_dot_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(36538u, 18u)], 18u)], 1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(12308u, 18u)], 18u)]), vec3<u32>(global0[_wgslsmith_index_u32(2122u, 18u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 18u)], 18u)], 71286u)), reverseBits(4294967295u)), global0[_wgslsmith_index_u32(min(global0[_wgslsmith_index_u32(23160u, 18u)], global0[_wgslsmith_index_u32(0u, 18u)]) & countOneBits(130407u), 18u)])), Struct_1(u_input.a.x, _wgslsmith_div_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(1u, 28933u, global0[_wgslsmith_index_u32(13396u, 18u)]) ^ vec3<u32>(67076u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 18u)], 18u)], 18u)], 0u), vec3<u32>(5985u, 0u, global0[_wgslsmith_index_u32(6397u, 18u)])), (vec3<u32>(1u, global0[_wgslsmith_index_u32(1u, 18u)], 4294967295u) << (vec3<u32>(global0[_wgslsmith_index_u32(1u, 18u)], 4294967295u, 0u) % vec3<u32>(32u))) ^ ~vec3<u32>(global0[_wgslsmith_index_u32(0u, 18u)], 1u, 113791u)), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(-146f + 567f), var_0, _wgslsmith_f_op_f32(917f - 1241f), 207f))), _wgslsmith_div_vec4_u32(~(~vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(6941u, 18u)], 18u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 18u)], 18u)], 18u)], 35558u, 63293u)), _wgslsmith_add_vec4_u32(~vec4<u32>(51736u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 18u)], 18u)], 18u)], 18u)], 18u)], 18u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 18u)], 18u)], 18u)], 18u)], 18u)], 4294967295u), select(vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(43310u, 18u)], 18u)], 0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(70257u, 18u)], 18u)], 18u)], 0u), vec4<u32>(global0[_wgslsmith_index_u32(4294967295u, 18u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 18u)], 18u)], 18u)], 18u)], 48174u, global0[_wgslsmith_index_u32(115342u, 18u)]), vec4<bool>(false, true, false, false))))));
    global0 = array<u32, 18>();
    let var_4 = _wgslsmith_dot_vec3_i32(vec3<i32>(-(~20280i) >> ((~1u | ~var_3.d.x) % 32u), u_input.a.x, ~(~(u_input.a.x ^ 1i))), _wgslsmith_sub_vec3_i32(~vec3<i32>(-1i, ~26652i, 38494i), vec3<i32>(-16661i, var_3.a, var_3.a)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-var_3.c.wx), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(func_4(Struct_1(var_4, var_3.b, vec4<f32>(var_0, var_0, 401f, var_0), vec4<u32>(35486u, 1u, var_3.d.x, global0[_wgslsmith_index_u32(1u, 18u)])), Struct_1(410i, var_3.d.xxy, var_3.c, var_3.d)).c * vec4<f32>(1000f, 1146f, -974f, var_0)))))), firstTrailingBit(max(vec4<i32>(~35273i, -u_input.a.x, -u_input.a.x, _wgslsmith_mult_i32(u_input.a.x, 38520i)), vec4<i32>(-1i) * -vec4<i32>(u_input.a.x, var_4, var_4, 1i))));
}


struct Struct_1 {
    a: i32,
    b: i32,
    c: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: i32,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: bool,
    b: f32,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<f32>,
    c: u32,
    d: vec3<i32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: bool = false;

var<private> global2: array<i32, 32>;

var<private> global3: array<Struct_3, 13> = array<Struct_3, 13>(Struct_3(Struct_2(Struct_1(0i, 1i, vec4<u32>(0u, 13613u, 67958u, 1u)), Struct_1(2147483647i, 20687i, vec4<u32>(1u, 52339u, 0u, 0u)), Struct_1(1i, -1i, vec4<u32>(40436u, 4294967295u, 0u, 32689u)), 1i)), Struct_3(Struct_2(Struct_1(20729i, -26182i, vec4<u32>(0u, 0u, 56783u, 40529u)), Struct_1(i32(-2147483648), -26515i, vec4<u32>(1u, 32650u, 67432u, 61677u)), Struct_1(0i, 27309i, vec4<u32>(1u, 0u, 28463u, 40011u)), -2678i)), Struct_3(Struct_2(Struct_1(-47178i, -160i, vec4<u32>(102175u, 0u, 4294967295u, 44250u)), Struct_1(i32(-2147483648), 2122i, vec4<u32>(8396u, 4294967295u, 58365u, 90118u)), Struct_1(1i, i32(-2147483648), vec4<u32>(4294967295u, 19407u, 4294967295u, 73650u)), -1213i)), Struct_3(Struct_2(Struct_1(0i, 2147483647i, vec4<u32>(1u, 4294967295u, 4294967295u, 4294967295u)), Struct_1(-28699i, -8038i, vec4<u32>(28899u, 0u, 80369u, 4313u)), Struct_1(-16371i, 1i, vec4<u32>(3151u, 78298u, 4294967295u, 27696u)), 0i)), Struct_3(Struct_2(Struct_1(-27526i, i32(-2147483648), vec4<u32>(4294967295u, 98900u, 55359u, 0u)), Struct_1(0i, -67921i, vec4<u32>(31845u, 0u, 4294967295u, 10356u)), Struct_1(0i, -1i, vec4<u32>(0u, 1u, 2594u, 20743u)), -17689i)), Struct_3(Struct_2(Struct_1(2147483647i, 8539i, vec4<u32>(100929u, 7142u, 35324u, 4294967295u)), Struct_1(2147483647i, 0i, vec4<u32>(1u, 28710u, 0u, 1u)), Struct_1(1i, 16492i, vec4<u32>(17930u, 4294967295u, 4294967295u, 1u)), 2147483647i)), Struct_3(Struct_2(Struct_1(-1i, 35986i, vec4<u32>(0u, 73536u, 1u, 0u)), Struct_1(-1i, -1i, vec4<u32>(4294967295u, 906u, 4294967295u, 70788u)), Struct_1(i32(-2147483648), -17964i, vec4<u32>(1u, 45250u, 1u, 0u)), -5111i)), Struct_3(Struct_2(Struct_1(-20137i, 41023i, vec4<u32>(4294967295u, 1811u, 11238u, 27987u)), Struct_1(556i, 1i, vec4<u32>(34260u, 72387u, 1u, 34838u)), Struct_1(1i, i32(-2147483648), vec4<u32>(6891u, 10101u, 0u, 4294967295u)), 23027i)), Struct_3(Struct_2(Struct_1(2147483647i, 2147483647i, vec4<u32>(64426u, 41128u, 41917u, 13547u)), Struct_1(1i, 1i, vec4<u32>(1u, 0u, 0u, 0u)), Struct_1(-30837i, 2147483647i, vec4<u32>(1u, 23426u, 981u, 0u)), 5863i)), Struct_3(Struct_2(Struct_1(-64849i, i32(-2147483648), vec4<u32>(1u, 1984u, 27597u, 0u)), Struct_1(87286i, 3585i, vec4<u32>(0u, 0u, 0u, 7863u)), Struct_1(1i, 0i, vec4<u32>(23128u, 39830u, 0u, 5057u)), 9908i)), Struct_3(Struct_2(Struct_1(39444i, 76298i, vec4<u32>(10542u, 1u, 4294967295u, 4294967295u)), Struct_1(1i, -41404i, vec4<u32>(14402u, 4294967295u, 312u, 1u)), Struct_1(-42118i, 3453i, vec4<u32>(1u, 69791u, 25540u, 0u)), 0i)), Struct_3(Struct_2(Struct_1(i32(-2147483648), 2147483647i, vec4<u32>(6307u, 1u, 1u, 0u)), Struct_1(0i, -2683i, vec4<u32>(16560u, 43697u, 26499u, 1u)), Struct_1(0i, 2147483647i, vec4<u32>(0u, 0u, 47549u, 6695u)), -34197i)), Struct_3(Struct_2(Struct_1(-33912i, -2995i, vec4<u32>(14891u, 1u, 4294967295u, 4073u)), Struct_1(1i, 0i, vec4<u32>(1u, 0u, 1u, 1u)), Struct_1(-1i, -1i, vec4<u32>(64587u, 1u, 94u, 55998u)), i32(-2147483648))));

var<private> global4: array<Struct_4, 14> = array<Struct_4, 14>(Struct_4(false, 1229f, vec3<i32>(0i, 24478i, 18435i)), Struct_4(true, -572f, vec3<i32>(i32(-2147483648), i32(-2147483648), -31487i)), Struct_4(true, 103f, vec3<i32>(1i, -1i, 2147483647i)), Struct_4(true, -547f, vec3<i32>(0i, 65893i, 19683i)), Struct_4(true, -2111f, vec3<i32>(-12234i, 2147483647i, 30403i)), Struct_4(true, 808f, vec3<i32>(20595i, -30406i, 2147483647i)), Struct_4(true, 2219f, vec3<i32>(45294i, -18508i, -30360i)), Struct_4(false, -157f, vec3<i32>(-10381i, -1i, 82995i)), Struct_4(false, -177f, vec3<i32>(32745i, 0i, -23146i)), Struct_4(true, -1276f, vec3<i32>(5219i, -1i, -17456i)), Struct_4(true, -694f, vec3<i32>(43068i, -28400i, -1i)), Struct_4(true, 678f, vec3<i32>(1i, 45797i, 0i)), Struct_4(true, 1809f, vec3<i32>(-16107i, 1i, 0i)), Struct_4(false, -734f, vec3<i32>(-55051i, 1i, 38161i)));

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: f32, arg_3: i32) -> f32 {
    let var_0 = Struct_3(Struct_2(Struct_1(_wgslsmith_clamp_i32(1i, -arg_3, select(arg_3, 0i, true)), 106i, ~vec4<u32>(arg_1, arg_0.c.x, arg_1, arg_0.c.x) << (select(vec4<u32>(5735u, u_input.a, 0u, arg_1), vec4<u32>(arg_1, u_input.a, arg_0.c.x, 57434u), false) % vec4<u32>(32u))), arg_0, arg_0, ~(-19010i)));
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(649f, _wgslsmith_f_op_f32(-arg_2), _wgslsmith_f_op_f32(max(1000f, arg_2))))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(arg_2, arg_2, 935f))) + _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(341f, -1211f, 447f)))))) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(260f, arg_2, 463f)))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2, arg_2, -1136f)), vec3<f32>(arg_2, -1000f, arg_2), true)), any(vec3<bool>(true, true, false))))));
    return arg_2;
}

fn func_2() -> f32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(185f, -739f)) + _wgslsmith_f_op_f32(func_3(Struct_1(2147483647i, -15054i, vec4<u32>(1503u, u_input.c, u_input.a, u_input.c)), 15472u, _wgslsmith_f_op_f32(358f * 682f), -global2[_wgslsmith_index_u32(10249u, 32u)]))), _wgslsmith_f_op_f32(func_3(Struct_1(u_input.b.x, 2147483647i, vec4<u32>(u_input.c, 41560u, u_input.c, u_input.a)), _wgslsmith_div_u32(u_input.c, 0u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1142f))), -_wgslsmith_sub_i32(-2147483647i, 1i))), -736f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-694f)))))) + vec4<f32>(1515f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1285f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1116f + -1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-1658f, -230f), _wgslsmith_f_op_f32(ceil(811f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-297f, -953f), _wgslsmith_div_f32(-261f, -856f))))));
    global4 = array<Struct_4, 14>();
    let var_1 = Struct_4(any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), (var_0.x <= var_0.x) | all(vec2<bool>(true, false)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(200f)) * var_0.x), vec3<i32>(~1i, min(firstLeadingBit(27396i), u_input.b.x), -(-5629i | global0.x)));
    var var_2 = vec4<bool>(!(true || var_1.a), var_1.a, any(select(!(!vec2<bool>(false, var_1.a)), vec2<bool>(var_1.a | var_1.a, !var_1.a), true)), all(!select(!vec4<bool>(false, var_1.a, false, false), vec4<bool>(var_1.a, var_1.a, var_1.a, var_1.a), vec4<bool>(false, var_1.a, false, false))));
    var var_3 = min(_wgslsmith_clamp_u32(u_input.a >> (u_input.a % 32u), ~4294967295u, u_input.a), u_input.a);
    return var_1.b;
}

fn func_1(arg_0: vec4<bool>, arg_1: vec3<f32>, arg_2: Struct_2) -> f32 {
    var var_0 = !vec3<bool>(arg_0.x, !all(!vec4<bool>(arg_0.x, true, arg_0.x, true)), !arg_0.x);
    let var_1 = arg_2.a.c;
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2()) + arg_1.x);
    return -240f;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = -select(~vec4<i32>(_wgslsmith_div_i32(global0.x, global0.x), global2[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.a, 0u), 32u)], _wgslsmith_add_i32(global0.x, 30910i), -28156i), _wgslsmith_div_vec4_i32(~_wgslsmith_div_vec4_i32(vec4<i32>(global2[_wgslsmith_index_u32(u_input.c, 32u)], u_input.b.x, -30810i, -1i), vec4<i32>(-42397i, global2[_wgslsmith_index_u32(4294967295u, 32u)], global0.x, global0.x)), firstLeadingBit(abs(vec4<i32>(3565i, u_input.b.x, -2147483647i, -30059i)))), vec4<bool>(any(select(vec2<bool>(false, false), vec2<bool>(false, true), false)), any(select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, false), false)), false, true));
    global2 = array<i32, 32>();
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1(vec4<bool>(false, true, true, false), vec3<f32>(1000f, -919f, -342f), Struct_2(Struct_1(-2147483647i, -1i, vec4<u32>(38434u, u_input.c, 46757u, u_input.a)), Struct_1(-66848i, global0.x, vec4<u32>(u_input.a, 16251u, u_input.a, u_input.c)), Struct_1(global2[_wgslsmith_index_u32(47968u, 32u)], global0.x, vec4<u32>(u_input.c, u_input.a, u_input.c, u_input.a)), global0.x))), -1080f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1104f, 400f))))));
    let var_1 = Struct_1(global0.x, _wgslsmith_clamp_i32(global0.x, global0.x, min(17224i, 80416i)), firstLeadingBit(max(countOneBits(vec4<u32>(92980u, u_input.a, u_input.c, u_input.a)), ~_wgslsmith_mult_vec4_u32(vec4<u32>(38497u, 13113u, u_input.a, 1u), vec4<u32>(1u, 24065u, 2016u, u_input.a)))));
    global3 = array<Struct_3, 13>();
    var var_2 = global4[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_mult_u32(reverseBits(var_1.c.x << (0u % 32u)), 31875u)), 14u)];
    global3 = array<Struct_3, 13>();
    var var_3 = 1u | (~(~u_input.c & ~u_input.c) >> (70012u % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(~(~(~var_1.c.yyx)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(983f, var_2.b, -452f, var_0.x))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-224f, var_2.b, 824f, 458f))))), 1u & var_1.c.x, vec3<i32>(_wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-43295i, global0.x, var_2.c.x, 0i), vec4<i32>(0i, -1i, global2[_wgslsmith_index_u32(4294967295u, 32u)], 2487i)), -2147483647i | firstTrailingBit(7914i), _wgslsmith_mult_i32(0i, var_2.c.x)), reverseBits(global0.x), ~(-1i)), ~(global0.zz >> (var_1.c.ww % vec2<u32>(32u))));
}


struct Struct_1 {
    a: u32,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: i32,
    d: vec3<bool>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 15> = array<vec4<bool>, 15>(vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true));

var<private> global1: array<vec2<i32>, 29> = array<vec2<i32>, 29>(vec2<i32>(-9542i, -30257i), vec2<i32>(0i, 47965i), vec2<i32>(i32(-2147483648), -1835i), vec2<i32>(12128i, 50442i), vec2<i32>(14661i, i32(-2147483648)), vec2<i32>(-28651i, i32(-2147483648)), vec2<i32>(26420i, -5435i), vec2<i32>(-42145i, 41350i), vec2<i32>(-4930i, 1i), vec2<i32>(2147483647i, 1905i), vec2<i32>(38390i, 2147483647i), vec2<i32>(i32(-2147483648), 26687i), vec2<i32>(1i, -9876i), vec2<i32>(-1i, 23882i), vec2<i32>(i32(-2147483648), -10784i), vec2<i32>(-14091i, 0i), vec2<i32>(1i, 1i), vec2<i32>(17302i, 35704i), vec2<i32>(32554i, 36942i), vec2<i32>(12234i, -1i), vec2<i32>(-12797i, -36230i), vec2<i32>(93117i, 4161i), vec2<i32>(i32(-2147483648), -1i), vec2<i32>(2147483647i, -4613i), vec2<i32>(-19826i, 0i), vec2<i32>(-17728i, 1i), vec2<i32>(i32(-2147483648), -1i), vec2<i32>(i32(-2147483648), 2147483647i), vec2<i32>(23392i, 32323i));

var<private> global2: Struct_2 = Struct_2(Struct_1(73922u, -49837i), false, i32(-2147483648), vec3<bool>(false, false, false), Struct_1(97445u, 1i));

var<private> global3: vec3<u32>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec3<bool>) -> bool {
    let var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(506f)) - 1193f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1331f * _wgslsmith_div_f32(1308f, 447f))), 961f)), any(select(!arg_2, select(arg_1.d, arg_0.d, vec3<bool>(false, arg_1.d.x, global2.d.x)), arg_2.x)) != !(_wgslsmith_f_op_f32(max(-2002f, 140f)) >= _wgslsmith_f_op_f32(floor(1457f)))));
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -191f), _wgslsmith_f_op_f32(min(207f, var_0))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(var_0, 879f), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(188f, 127f), vec2<f32>(var_0, 839f))))))));
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2179f, _wgslsmith_f_op_f32(select(var_0, var_0, arg_0.b)), _wgslsmith_f_op_f32(round(-112f)))), vec3<f32>(892f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-327f)) + _wgslsmith_f_op_f32(-var_0)), _wgslsmith_f_op_f32(f32(-1f) * -892f))));
    let var_3 = (_wgslsmith_f_op_f32(floor(var_2.x)) < var_0) & !(-717f > _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(175f, var_0))));
    global0 = array<vec4<bool>, 15>();
    return all(global2.d);
}

fn func_2(arg_0: vec4<i32>) -> bool {
    var var_0 = select(select(vec2<bool>(true, ~global3.x == ~0u), select(global2.d.yx, vec2<bool>(all(vec2<bool>(global2.d.x, true)), true != global2.d.x), true), true), vec2<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-502f + -1393f)) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(815f * -922f) + _wgslsmith_f_op_f32(floor(-597f))), func_3(Struct_2(global2.e, 73466i == arg_0.x, -29453i, select(vec3<bool>(global2.b, false, false), vec3<bool>(false, false, global2.d.x), vec3<bool>(global2.b, true, global2.d.x)), global2.e), Struct_2(Struct_1(1u, u_input.a.x), any(vec3<bool>(global2.d.x, global2.d.x, global2.b)), arg_0.x, vec3<bool>(true, true, true), Struct_1(global3.x, global2.e.b)), vec3<bool>(true, arg_0.x == arg_0.x, any(global0[_wgslsmith_index_u32(0u, 15u)])))), !(!(!vec2<bool>(global2.d.x, global2.d.x))));
    let var_1 = Struct_2(Struct_1(~_wgslsmith_div_u32(global2.e.a, 4294967295u) | _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(10700u, 3922u, 1u, global3.x), vec4<u32>(4294967295u, 51053u, global3.x, 1u)), vec4<u32>(53681u, 8454u, 4294967295u, 0u)), min(173i, _wgslsmith_div_i32(1i, ~(-29798i)))), (any(vec4<bool>(global2.d.x, global2.b, global2.b, var_0.x)) || (_wgslsmith_f_op_f32(190f * -902f) <= _wgslsmith_f_op_f32(round(-1065f)))) | true, ~(countOneBits(_wgslsmith_sub_i32(global2.c, global2.c)) & arg_0.x), vec3<bool>(all(!vec4<bool>(global2.b, false, global2.b, global2.b)) | true, !any(vec2<bool>(false, var_0.x)), global2.b), global2.e);
    var var_2 = var_1;
    var_0 = vec2<bool>(global2.d.x, true);
    let var_3 = true;
    return global2.b;
}

fn func_1() -> bool {
    global0 = array<vec4<bool>, 15>();
    var var_0 = global2.d;
    let var_1 = u_input.b;
    var var_2 = 233f;
    let var_3 = vec2<bool>(var_0.x, func_2(vec4<i32>(_wgslsmith_dot_vec3_i32(var_1, var_1) << (~4294967295u % 32u), u_input.a.x, u_input.b.x, ~_wgslsmith_dot_vec3_i32(vec3<i32>(44378i, var_1.x, -43679i), vec3<i32>(-5072i, 2147483647i, u_input.b.x)))));
    return var_3.x & !var_0.x;
}

fn func_4(arg_0: Struct_2, arg_1: vec4<u32>, arg_2: bool) -> vec4<i32> {
    let var_0 = Struct_1(~(~47792u), 1i);
    global3 = vec3<u32>(global2.a.a >> (var_0.a % 32u), arg_0.e.a, ~_wgslsmith_div_u32(21473u, ~21283u));
    var var_1 = 85330u;
    var var_2 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-727f, -230f, -151f)))))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(281f, 329f, -456f), vec3<f32>(-1352f, 898f, -1000f))))) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-349f, -550f, 768f), vec3<f32>(1f, 1f, 1f), global2.d))))));
    var_2 = vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-749f * var_2.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_2.x)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1585f * 592f))) + _wgslsmith_f_op_f32(-var_2.x)), var_2.x);
    return vec4<i32>(~((2147483647i << (global3.x % 32u)) << ((global2.e.a >> (~var_0.a % 32u)) % 32u)), arg_0.c, 1i, reverseBits(-(-2147483647i | _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, global2.c, -23148i), u_input.b))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_vec4_i32(select(~func_4(Struct_2(Struct_1(global3.x, u_input.a.x), global2.d.x, -4615i, vec3<bool>(true, false, false), Struct_1(global3.x, global2.c)), vec4<u32>(1u, 31158u, global3.x, 11843u) & vec4<u32>(0u, global2.a.a, 54961u, 48146u), func_1()), vec4<i32>(select(20000i | global2.c, ~u_input.a.x, global2.d.x), _wgslsmith_clamp_i32(-2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(1i, 20928i), global1[_wgslsmith_index_u32(global2.e.a, 29u)]), firstTrailingBit(-1i)), firstTrailingBit(1i), _wgslsmith_dot_vec4_i32(-vec4<i32>(-29992i, -1i, -35228i, global2.a.b), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a.x, 7920i, 77408i, u_input.a.x), vec4<i32>(u_input.b.x, u_input.a.x, 1i, -127i)))), any(global0[_wgslsmith_index_u32(global2.e.a, 15u)])), func_4(Struct_2(global2.a, global2.d.x | true, firstTrailingBit(u_input.b.x), global2.d, Struct_1(abs(1u), _wgslsmith_dot_vec3_i32(u_input.b, vec3<i32>(-7824i, u_input.b.x, global2.c)))), countOneBits(max(_wgslsmith_add_vec4_u32(vec4<u32>(global3.x, global2.a.a, 109105u, 26966u), vec4<u32>(global2.a.a, global3.x, 50594u, 26049u)), ~vec4<u32>(global2.a.a, 4294967295u, global2.e.a, global2.a.a))), global2.b));
    var var_1 = Struct_1(_wgslsmith_div_u32(~20262u, ~36831u), u_input.a.x);
    var_0 = ~_wgslsmith_mult_vec4_i32(vec4<i32>(1i, -87618i, 27450i, 0i) >> (((vec4<u32>(global2.e.a, 14590u, var_1.a, 23139u) >> (vec4<u32>(10035u, 30183u, 4294967295u, 25619u) % vec4<u32>(32u))) & select(vec4<u32>(global2.a.a, global2.e.a, global3.x, 8145u), vec4<u32>(var_1.a, global3.x, 0u, var_1.a), global2.b)) % vec4<u32>(32u)), abs((vec4<i32>(65207i, -47703i, var_0.x, 12157i) << (vec4<u32>(0u, global2.a.a, 4294967295u, 4294967295u) % vec4<u32>(32u))) | select(vec4<i32>(global2.a.b, -2147483647i, -20101i, 21855i), vec4<i32>(-32415i, -1i, -2147483647i, u_input.b.x), global0[_wgslsmith_index_u32(45731u, 15u)])));
    var var_2 = _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1000f))));
    var_2 = _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -585f)));
    let x = u_input.a;
    s_output = StorageBuffer(634f);
}


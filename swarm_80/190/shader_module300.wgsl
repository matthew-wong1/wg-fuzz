struct Struct_1 {
    a: u32,
    b: vec2<u32>,
    c: bool,
    d: i32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec4<u32>,
    c: bool,
    d: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
}

struct Struct_4 {
    a: vec2<i32>,
    b: Struct_2,
}

struct Struct_5 {
    a: vec4<f32>,
    b: Struct_2,
    c: Struct_4,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: vec4<f32>,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 23> = array<Struct_4, 23>(Struct_4(vec2<i32>(12738i, 2147483647i), Struct_2(vec2<i32>(1i, i32(-2147483648)), vec4<u32>(4294967295u, 4294967295u, 14027u, 45150u), true, Struct_1(1u, vec2<u32>(2493u, 1u), true, 1i))), Struct_4(vec2<i32>(49368i, -1i), Struct_2(vec2<i32>(37278i, i32(-2147483648)), vec4<u32>(7729u, 64590u, 46009u, 1u), false, Struct_1(266u, vec2<u32>(67190u, 49800u), false, -1i))), Struct_4(vec2<i32>(-1i, -9575i), Struct_2(vec2<i32>(-36091i, -16932i), vec4<u32>(1u, 31471u, 1u, 1u), true, Struct_1(1u, vec2<u32>(31480u, 1u), false, i32(-2147483648)))), Struct_4(vec2<i32>(-50146i, -45359i), Struct_2(vec2<i32>(-1i, 26482i), vec4<u32>(4294967295u, 16298u, 0u, 1u), true, Struct_1(1449u, vec2<u32>(43117u, 0u), true, 1i))), Struct_4(vec2<i32>(30503i, 2147483647i), Struct_2(vec2<i32>(67422i, 2147483647i), vec4<u32>(32800u, 1u, 1u, 10500u), true, Struct_1(14072u, vec2<u32>(0u, 3856u), false, -1i))), Struct_4(vec2<i32>(-10534i, i32(-2147483648)), Struct_2(vec2<i32>(16357i, 0i), vec4<u32>(1u, 4294967295u, 0u, 0u), true, Struct_1(35403u, vec2<u32>(66222u, 4294967295u), false, 2147483647i))), Struct_4(vec2<i32>(26939i, 9885i), Struct_2(vec2<i32>(-1i, 1i), vec4<u32>(4294967295u, 4294967295u, 57797u, 1u), false, Struct_1(23239u, vec2<u32>(21516u, 6190u), false, 0i))), Struct_4(vec2<i32>(-33986i, -1i), Struct_2(vec2<i32>(-1i, -14611i), vec4<u32>(4294967295u, 1u, 1483u, 4294967295u), true, Struct_1(1u, vec2<u32>(4294967295u, 0u), true, -7383i))), Struct_4(vec2<i32>(5374i, 32149i), Struct_2(vec2<i32>(7748i, -1i), vec4<u32>(11611u, 60367u, 4853u, 1u), false, Struct_1(4294967295u, vec2<u32>(0u, 32468u), true, 64113i))), Struct_4(vec2<i32>(-38700i, 21373i), Struct_2(vec2<i32>(-8457i, i32(-2147483648)), vec4<u32>(1u, 0u, 721u, 0u), false, Struct_1(22702u, vec2<u32>(0u, 1u), false, 2760i))), Struct_4(vec2<i32>(20821i, 2147483647i), Struct_2(vec2<i32>(14332i, 0i), vec4<u32>(0u, 1u, 82423u, 0u), true, Struct_1(4294967295u, vec2<u32>(1u, 0u), false, -37771i))), Struct_4(vec2<i32>(-35817i, -1i), Struct_2(vec2<i32>(1i, 0i), vec4<u32>(74965u, 0u, 4294967295u, 29679u), true, Struct_1(29258u, vec2<u32>(6591u, 1u), true, -1i))), Struct_4(vec2<i32>(-38297i, -1i), Struct_2(vec2<i32>(-6998i, 36173i), vec4<u32>(14331u, 20251u, 1u, 0u), true, Struct_1(1u, vec2<u32>(30269u, 783u), true, 0i))), Struct_4(vec2<i32>(-4060i, 1i), Struct_2(vec2<i32>(63009i, 1i), vec4<u32>(1u, 8050u, 77754u, 12684u), false, Struct_1(22889u, vec2<u32>(19745u, 0u), false, -11297i))), Struct_4(vec2<i32>(2147483647i, 0i), Struct_2(vec2<i32>(0i, -39358i), vec4<u32>(89490u, 4294967295u, 22945u, 0u), true, Struct_1(1u, vec2<u32>(63313u, 16992u), true, 36870i))), Struct_4(vec2<i32>(24944i, 1i), Struct_2(vec2<i32>(24179i, -533i), vec4<u32>(44733u, 15587u, 14400u, 0u), false, Struct_1(4294967295u, vec2<u32>(4294967295u, 54526u), false, -1i))), Struct_4(vec2<i32>(32712i, 0i), Struct_2(vec2<i32>(-38075i, 1i), vec4<u32>(28359u, 44115u, 29116u, 1u), false, Struct_1(0u, vec2<u32>(6565u, 37827u), false, i32(-2147483648)))), Struct_4(vec2<i32>(-1i, 47581i), Struct_2(vec2<i32>(-10618i, 1i), vec4<u32>(1u, 1u, 56046u, 44952u), true, Struct_1(76307u, vec2<u32>(33641u, 0u), true, 12807i))), Struct_4(vec2<i32>(20384i, -14079i), Struct_2(vec2<i32>(50577i, -1i), vec4<u32>(4294967295u, 49284u, 9406u, 77673u), false, Struct_1(0u, vec2<u32>(75273u, 35734u), false, 2147483647i))), Struct_4(vec2<i32>(20874i, 2147483647i), Struct_2(vec2<i32>(15377i, 0i), vec4<u32>(20993u, 20451u, 55280u, 195u), false, Struct_1(35219u, vec2<u32>(84724u, 4294967295u), false, 2147483647i))), Struct_4(vec2<i32>(1i, -4126i), Struct_2(vec2<i32>(i32(-2147483648), -3407i), vec4<u32>(7790u, 0u, 26553u, 73835u), true, Struct_1(53912u, vec2<u32>(56115u, 4294967295u), true, 1i))), Struct_4(vec2<i32>(2147483647i, i32(-2147483648)), Struct_2(vec2<i32>(1i, 1i), vec4<u32>(1u, 1u, 66898u, 32385u), true, Struct_1(448u, vec2<u32>(5861u, 5725u), true, -58856i))), Struct_4(vec2<i32>(2147483647i, 2147483647i), Struct_2(vec2<i32>(4899i, 2147483647i), vec4<u32>(0u, 16365u, 7015u, 19624u), true, Struct_1(1u, vec2<u32>(9635u, 79044u), false, 1i))));

var<private> global1: f32;

var<private> global2: vec2<u32>;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3() -> f32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1803f, -185f)), vec2<f32>(-1216f, -1000f))))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -834f), _wgslsmith_f_op_f32(min(147f, -680f))))) + vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-486f + 1346f), 1f, max(global2.x, 0u) != abs(4657u))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(1000f)), _wgslsmith_f_op_f32(trunc(261f))))))));
    var var_1 = Struct_5(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(floor(var_0.x)), _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_div_f32(var_0.x, 1085f), 487f))), Struct_2(_wgslsmith_sub_vec2_i32(u_input.a, u_input.a), ~(~vec4<u32>(4294967295u, global2.x, 27563u, global2.x)), (all(vec4<bool>(false, false, true, true)) && true) || true, Struct_1(_wgslsmith_dot_vec3_u32(~vec3<u32>(global2.x, 18053u, global2.x), abs(vec3<u32>(4294967295u, 0u, 25162u))), ~(vec2<u32>(global2.x, 0u) | vec2<u32>(4294967295u, 1u)), any(vec3<bool>(false, false, true)), _wgslsmith_sub_i32(firstLeadingBit(u_input.a.x), u_input.b))), global0[_wgslsmith_index_u32(~37917u & (abs(~global2.x) ^ _wgslsmith_mult_u32(global2.x, 0u)), 23u)], ~u_input.a);
    var var_2 = Struct_4(vec2<i32>(0i, 0i), var_1.c.b);
    var_2 = var_1.c;
    let var_3 = Struct_2(var_1.d >> (var_2.b.b.yx % vec2<u32>(32u)), abs(vec4<u32>(var_2.b.b.x, ~global2.x, ~_wgslsmith_mod_u32(19662u, var_1.b.b.x), ~21197u)), true, Struct_1(min(abs(13485u), global2.x) ^ _wgslsmith_mod_u32(109289u, global2.x), ~vec2<u32>(0u, 11100u), select(var_1.c.b.a.x | -25379i, -49734i, var_1.b.c & false) <= countOneBits(1i), -abs(2147483647i)));
    return var_0.x;
}

fn func_2(arg_0: vec4<i32>, arg_1: Struct_3, arg_2: u32) -> bool {
    let var_0 = vec3<i32>(-2147483647i, 1i, arg_0.x);
    var var_1 = Struct_5(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-166f, _wgslsmith_f_op_f32(f32(-1f) * -218f), 1567f, _wgslsmith_f_op_f32(225f * 176f)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-187f, -887f, 171f, -1390f), vec4<f32>(-1428f, -1000f, 295f, 1000f)))))), Struct_2(u_input.a, _wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, ~9087u, arg_2 >> (4294967295u % 32u), global2.x), firstTrailingBit(~vec4<u32>(arg_2, global2.x, 4294967295u, 86218u))), arg_1.a.x, Struct_1(1u, ~(~vec2<u32>(arg_2, 54488u)), true && (global2.x <= 7071u), (arg_0.x >> (global2.x % 32u)) ^ -6033i)), Struct_4(_wgslsmith_add_vec2_i32(u_input.a, firstLeadingBit(select(u_input.a, u_input.a, arg_1.a.x))), Struct_2(firstTrailingBit(-vec2<i32>(31562i, -2147483647i)), countOneBits(vec4<u32>(global2.x, 0u, global2.x, 4294967295u)) | _wgslsmith_mod_vec4_u32(vec4<u32>(global2.x, 1u, 12462u, global2.x), vec4<u32>(global2.x, global2.x, 4294967295u, global2.x)), true, Struct_1(1u, ~vec2<u32>(43096u, global2.x), arg_1.a.x, _wgslsmith_add_i32(56638i, arg_0.x)))), u_input.a);
    var var_2 = -569f;
    var var_3 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-var_1.a.x), -511f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_3())))));
    var_2 = _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(var_3.x, var_3.x)));
    return true;
}

fn func_1() -> f32 {
    var var_0 = !vec2<bool>(!(false || all(vec2<bool>(false, true))), true);
    global2 = ~vec2<u32>(reverseBits(global2.x), 39433u);
    var_0 = vec2<bool>(var_0.x, all(!vec2<bool>(func_2(vec4<i32>(u_input.a.x, u_input.b, -2368i, u_input.b), Struct_3(vec4<bool>(var_0.x, var_0.x, false, true)), 49188u), true)));
    var var_1 = _wgslsmith_add_u32(global2.x >> (~global2.x % 32u), abs(~global2.x)) >> (global2.x % 32u);
    var_1 = ~0u;
    return _wgslsmith_f_op_f32(-372f + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-335f, _wgslsmith_f_op_f32(ceil(1288f)), all(vec2<bool>(var_0.x, var_0.x))))), _wgslsmith_f_op_f32(func_3()), false)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<bool>(true, true);
    global0 = array<Struct_4, 23>();
    var var_1 = Struct_5(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-472f, 1097f, -1000f, 162f) * vec4<f32>(931f, -669f, 766f, 309f)))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1()) - -254f), _wgslsmith_f_op_f32(-1084f * _wgslsmith_f_op_f32(-1000f + -1406f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -523f)), 2116f), any(!select(vec3<bool>(true, false, false), vec3<bool>(true, var_0.x, var_0.x), var_0.x)))), Struct_2(-(vec2<i32>(u_input.a.x, 11263i) & vec2<i32>(1i, 1i)), firstLeadingBit(~(~vec4<u32>(1u, 111851u, global2.x, global2.x))), any(!var_0), Struct_1(global2.x >> (~22564u % 32u), _wgslsmith_add_vec2_u32(vec2<u32>(global2.x, 1u), vec2<u32>(21104u, global2.x)) ^ _wgslsmith_mod_vec2_u32(vec2<u32>(global2.x, global2.x), vec2<u32>(global2.x, 4294967295u)), false | !var_0.x, -abs(2147483647i))), Struct_4(countOneBits(max(_wgslsmith_add_vec2_i32(u_input.a, u_input.a), _wgslsmith_div_vec2_i32(u_input.a, vec2<i32>(u_input.a.x, 44121i)))), Struct_2(vec2<i32>(u_input.a.x, 1i), ~(vec4<u32>(global2.x, 30392u, 4294967295u, global2.x) & vec4<u32>(5594u, global2.x, global2.x, global2.x)), var_0.x, Struct_1(~global2.x, select(vec2<u32>(global2.x, 0u), vec2<u32>(1u, 95144u), vec2<bool>(var_0.x, var_0.x)), true, _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, u_input.b, 0i), vec3<i32>(u_input.b, u_input.b, -20884i))))), _wgslsmith_add_vec2_i32(~(~vec2<i32>(-2147483647i, -6297i)), -vec2<i32>(29749i, u_input.b)) & -_wgslsmith_div_vec2_i32(~u_input.a, u_input.a));
    let var_2 = true;
    let var_3 = _wgslsmith_dot_vec3_i32(vec3<i32>(min(u_input.b, -1i), reverseBits(countOneBits(2147483647i)), u_input.a.x) | _wgslsmith_clamp_vec3_i32(abs(vec3<i32>(-1i, var_1.b.a.x, 1i)) ^ vec3<i32>(2147483647i, var_1.c.b.d.d, 0i), ~vec3<i32>(0i, u_input.a.x, u_input.b), _wgslsmith_mult_vec3_i32(vec3<i32>(var_1.b.a.x, -1i, -7589i), ~vec3<i32>(u_input.b, 2147483647i, var_1.b.a.x))), _wgslsmith_mult_vec3_i32(vec3<i32>(var_1.d.x, firstTrailingBit(2147483647i), ~u_input.b), max(_wgslsmith_sub_vec3_i32(vec3<i32>(1i, 2147483647i, u_input.b), vec3<i32>(-27859i, u_input.b, u_input.b)) << (firstLeadingBit(var_1.c.b.b.xxw) % vec3<u32>(32u)), select(-vec3<i32>(0i, -2147483647i, -43361i), vec3<i32>(32613i, -32783i, -2147483647i), true))));
    var var_4 = var_2;
    let var_5 = Struct_4(select(~firstLeadingBit(countOneBits(var_1.b.a)), abs((u_input.a << (var_1.b.d.b % vec2<u32>(32u))) << (_wgslsmith_mod_vec2_u32(var_1.c.b.d.b, vec2<u32>(3487u, 44168u)) % vec2<u32>(32u))), var_1.c.b.a.x != _wgslsmith_mod_i32(~var_1.d.x, _wgslsmith_mult_i32(-2587i, -87805i))), Struct_2(u_input.a, ~(~var_1.b.b), var_0.x, var_1.c.b.d));
    global1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.a.x - var_1.a.x) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_1.a.x))), 595f)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(func_3())), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(845f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_1.a.x))), _wgslsmith_f_op_f32(-var_1.a.x))), _wgslsmith_f_op_f32(-var_1.a.x)), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-327f, 722f, -362f, var_1.a.x)), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_1.a.x, 1537f, var_1.a.x, -2611f))))), var_1.a)))), ~1u, u_input.a.x);
}


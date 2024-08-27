struct Struct_1 {
    a: f32,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: bool,
    d: vec3<u32>,
    e: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 27> = array<vec4<u32>, 27>(vec4<u32>(4294967295u, 0u, 1u, 1u), vec4<u32>(1u, 3829u, 16486u, 1u), vec4<u32>(58969u, 2975u, 15554u, 1u), vec4<u32>(0u, 20205u, 1u, 1u), vec4<u32>(1220u, 1u, 14280u, 0u), vec4<u32>(35072u, 1u, 0u, 1u), vec4<u32>(4893u, 4294967295u, 23900u, 4294967295u), vec4<u32>(47363u, 73639u, 54787u, 10851u), vec4<u32>(0u, 1u, 7462u, 4294967295u), vec4<u32>(11070u, 1u, 0u, 1u), vec4<u32>(10785u, 57072u, 9842u, 0u), vec4<u32>(12980u, 10687u, 5683u, 4294967295u), vec4<u32>(82574u, 43730u, 0u, 39807u), vec4<u32>(23343u, 59555u, 43129u, 4294967295u), vec4<u32>(13082u, 45743u, 0u, 4232u), vec4<u32>(26749u, 5465u, 0u, 4294967295u), vec4<u32>(29281u, 4294967295u, 1u, 4649u), vec4<u32>(29714u, 0u, 1u, 0u), vec4<u32>(4294967295u, 0u, 4294967295u, 0u), vec4<u32>(4117u, 1u, 55193u, 0u), vec4<u32>(64790u, 42020u, 824u, 4294967295u), vec4<u32>(9295u, 33854u, 38140u, 0u), vec4<u32>(768u, 58047u, 17850u, 79306u), vec4<u32>(6379u, 1u, 0u, 52965u), vec4<u32>(4294967295u, 41834u, 77570u, 0u), vec4<u32>(0u, 4748u, 1u, 5379u), vec4<u32>(4294967295u, 22429u, 43530u, 1u));

var<private> global1: Struct_1 = Struct_1(-295f, 1i);

var<private> global2: array<vec2<f32>, 5>;

var<private> global3: vec3<u32>;

var<private> global4: array<vec3<i32>, 9>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3(arg_0: vec4<u32>, arg_1: u32, arg_2: Struct_2, arg_3: vec3<i32>) -> f32 {
    let var_0 = vec3<bool>(false, all(vec2<bool>(true, true)) && any(select(vec3<bool>(false, false, true), select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(true, true, false)), true)), !(_wgslsmith_div_f32(_wgslsmith_div_f32(-463f, global1.a), _wgslsmith_f_op_f32(select(arg_2.b.a, global1.a, true))) < 1f));
    var var_1 = var_0.x;
    var var_2 = vec2<bool>(any(vec4<bool>(arg_2.b.b != arg_3.x, !select(true, false, var_0.x), true, any(var_0))), true);
    var var_3 = _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.a, -557f, arg_2.b.a, _wgslsmith_f_op_f32(trunc(543f))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.b.a, arg_2.b.a, global1.a, global1.a) - vec4<f32>(global1.a, arg_2.a.a, arg_2.a.a, global1.a)), vec4<f32>(arg_2.b.a, arg_2.b.a, global1.a, arg_2.b.a))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2270f, 1000f, arg_2.a.a, arg_2.a.a))) - vec4<f32>(-591f, 867f, _wgslsmith_f_op_f32(f32(-1f) * -1068f), _wgslsmith_f_op_f32(arg_2.b.a - -1969f)))));
    var var_4 = abs(select(_wgslsmith_mult_vec3_u32(abs(~u_input.a.wwy), arg_0.wwy), arg_0.wwy, var_0.x));
    return arg_2.a.a;
}

fn func_2(arg_0: i32, arg_1: i32) -> Struct_3 {
    let var_0 = -_wgslsmith_clamp_vec2_i32(~(-vec2<i32>(2147483647i, arg_1)), vec2<i32>(-_wgslsmith_div_i32(arg_0, -94494i), _wgslsmith_mult_i32(global1.b, global1.b)), vec2<i32>(_wgslsmith_div_i32(1i, arg_0), 2147483647i) ^ countOneBits(countOneBits(vec2<i32>(34038i, global1.b))));
    global3 = u_input.a.www;
    global2 = array<vec2<f32>, 5>();
    var var_1 = -abs(arg_1) >> (global3.x % 32u);
    global4 = array<vec3<i32>, 9>();
    return Struct_3(Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.a * global1.a)), -39356i), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.a) - 1281f), _wgslsmith_dot_vec3_i32(reverseBits(global4[_wgslsmith_index_u32(u_input.a.x, 9u)]), vec3<i32>(21989i, arg_1, arg_1)))), Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(global0[_wgslsmith_index_u32(34269u, 27u)], 5225u, Struct_2(Struct_1(global1.a, global1.b), Struct_1(-608f, arg_1)), global4[_wgslsmith_index_u32(u_input.a.x, 9u)]))), var_0.x >> (~global3.x % 32u)), Struct_1(-690f, arg_1)), !all(vec2<bool>(global1.a == 295f, true)), vec3<u32>(_wgslsmith_sub_u32(_wgslsmith_add_u32(global3.x, min(1u, 1u)), ~_wgslsmith_clamp_u32(u_input.a.x, u_input.a.x, 89737u)), u_input.a.x, 9048u ^ select(global3.x, u_input.a.x | u_input.a.x, all(vec2<bool>(false, false)))), Struct_2(Struct_1(global1.a, ~(~arg_1)), Struct_1(_wgslsmith_f_op_f32(-global1.a), 657i)));
}

fn func_1(arg_0: Struct_4) -> vec2<bool> {
    let var_0 = func_2(global1.b, ~(~abs(countOneBits(global1.b))));
    global0 = array<vec4<u32>, 27>();
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.e.b.a));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(-arg_0.a.a.a), _wgslsmith_sub_i32(1i, select(~(-2147483647i), arg_0.a.b.b, select(u_input.a.x, u_input.a.x, true) <= 10939u)));
    global3 = select(abs(_wgslsmith_add_vec3_u32(firstLeadingBit(vec3<u32>(70667u, 4294967295u, 5410u)), firstLeadingBit(_wgslsmith_clamp_vec3_u32(u_input.a.xwx, var_0.d, u_input.a.wxx)))), vec3<u32>(max(1u, _wgslsmith_div_u32(global3.x, 33545u)) << (~(~var_0.d.x) % 32u), ~0u, u_input.a.x), vec3<bool>((_wgslsmith_dot_vec4_u32(u_input.a, global0[_wgslsmith_index_u32(4294967295u, 27u)]) <= ~var_0.d.x) != (_wgslsmith_f_op_f32(687f * var_0.a.a.a) >= -1158f), func_2(1i, reverseBits(~var_0.e.a.b)).c, var_0.c));
    return select(select(select(vec2<bool>(true, true), !(!vec2<bool>(var_0.c, var_0.c)), var_0.c), !select(select(vec2<bool>(true, true), vec2<bool>(var_0.c, true), vec2<bool>(var_0.c, true)), select(vec2<bool>(var_0.c, var_0.c), vec2<bool>(false, var_0.c), vec2<bool>(true, var_0.c)), select(vec2<bool>(var_0.c, false), vec2<bool>(false, var_0.c), vec2<bool>(true, false))), false), !select(select(vec2<bool>(var_0.c, var_0.c), vec2<bool>(var_0.c, true), func_2(2147483647i, arg_0.a.a.b).c), select(vec2<bool>(true, var_0.c), vec2<bool>(var_0.c, true), !vec2<bool>(var_0.c, true)), false | var_0.c), !vec2<bool>(var_0.c, !var_0.c));
}

fn func_4(arg_0: vec4<bool>, arg_1: vec2<f32>) -> Struct_1 {
    global2 = array<vec2<f32>, 5>();
    let var_0 = firstTrailingBit(reverseBits(~_wgslsmith_mod_vec2_i32(vec2<i32>(-13151i, 18155i), vec2<i32>(global1.b, -100i)))) | select(vec2<i32>(0i, 7105i), vec2<i32>(min(_wgslsmith_sub_i32(global1.b, 2453i), func_2(37739i, global1.b).a.b.b), ~32057i), arg_0.wx);
    global2 = array<vec2<f32>, 5>();
    global2 = array<vec2<f32>, 5>();
    var var_1 = select(global3.x >> (14863u % 32u), 23411u, false);
    return func_2(-1i, 10270i).b.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(!vec4<bool>(any(vec3<bool>(true, false, false)) | true, !(0i < global1.b), select(false, true, u_input.a.x != 0u), any(func_1(Struct_4(Struct_2(Struct_1(-238f, 0i), Struct_1(global1.a, global1.b)), global4[_wgslsmith_index_u32(global3.x, 9u)])))), global2[_wgslsmith_index_u32(firstTrailingBit(1u), 5u)]);
    let var_1 = Struct_4(Struct_2(func_2(-(var_0.b & 1i), global1.b).e.b, Struct_1(-436f, 2147483647i)), global4[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.a.x, _wgslsmith_clamp_u32(u_input.a.x, u_input.a.x, select(190u, u_input.a.x, true) & (4294967295u << (global3.x % 32u)))), 9u)]);
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global1.a)));
    let var_3 = vec2<i32>(var_0.b, var_0.b);
    let var_4 = _wgslsmith_dot_vec2_u32(~reverseBits(~global3.yy), vec2<u32>(19486u >> (min(0u, global3.x) % 32u), ~(~global3.x))) > _wgslsmith_mult_u32(0u, ~global3.x);
    let var_5 = func_4(!select(!select(vec4<bool>(false, false, true, var_4), vec4<bool>(var_4, var_4, true, true), false), select(vec4<bool>(var_4, false, var_4, var_4), vec4<bool>(var_4, true, var_4, false), !vec4<bool>(false, var_4, var_4, var_4)), true), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global2[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, global3.x, 1u, u_input.a.x), global0[_wgslsmith_index_u32(u_input.a.x, 27u)]), 5u)] * global2[_wgslsmith_index_u32(_wgslsmith_div_u32(~24357u, global3.x), 5u)]))).a;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_div_f32(var_0.a, -1554f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(156f)), _wgslsmith_f_op_f32(func_3(u_input.a, global3.x, var_1.a, var_1.b))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - _wgslsmith_div_f32(-1000f, 712f))), var_0.a), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_2, var_2, 935f))));
}


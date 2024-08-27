struct Struct_1 {
    a: bool,
    b: vec2<f32>,
    c: i32,
    d: vec2<u32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<u32>,
    c: u32,
    d: vec3<f32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<i32, 28> = array<i32, 28>(-49150i, -24522i, -75875i, 4020i, -1i, 0i, -13102i, -1i, 32880i, -1i, -11195i, -1i, 35862i, 63548i, -17281i, 2147483647i, 39410i, 0i, 1i, 0i, i32(-2147483648), i32(-2147483648), -39537i, 696i, -2118i, -1i, 47238i, 1i);

var<private> global2: array<vec4<bool>, 9> = array<vec4<bool>, 9>(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, false));

var<private> global3: Struct_1;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: bool) -> vec2<u32> {
    let var_0 = Struct_1(global0.a, vec2<f32>(-390f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.b.x - 515f) * _wgslsmith_div_f32(global0.b.x, global0.b.x)) + global3.b.x)), select(max(global0.c, 7787i), -firstTrailingBit(2147483647i), true) >> (~19149u % 32u), vec2<u32>(12125u, ~global3.d.x | select(_wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(u_input.a.x, global0.d.x, global3.d.x)), ~u_input.a.x, global3.a)));
    var var_1 = vec4<bool>(any(!vec4<bool>(all(vec2<bool>(global0.a, var_0.a)), var_0.a, true, true)), var_0.a, false, true);
    let var_2 = global0.c << (_wgslsmith_div_u32(firstTrailingBit(var_0.d.x), global3.d.x | u_input.a.x) % 32u);
    let var_3 = vec4<u32>(var_0.d.x, global0.d.x, abs(u_input.a.x), global3.d.x);
    let var_4 = vec3<i32>(-(0i ^ var_0.c), global1[_wgslsmith_index_u32(_wgslsmith_add_u32(105247u, max(u_input.a.x, abs(u_input.a.x)) << (25709u % 32u)), 28u)], var_2);
    return ~(~(~vec2<u32>(1u | global3.d.x, _wgslsmith_add_u32(4294967295u, u_input.a.x))));
}

fn func_2(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec2<bool>, arg_3: i32) -> Struct_2 {
    var var_0 = global3.d.x;
    let var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_1.b), arg_1.b);
    global3 = arg_0.b;
    var var_2 = arg_0;
    let var_3 = vec2<f32>(var_2.b.b.x, -1883f);
    return Struct_2(~(~min(firstLeadingBit(u_input.a.x), 17389u)), Struct_1(any(global2[_wgslsmith_index_u32(4294967295u, 9u)]), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.b.x, 833f) + arg_1.b), vec2<f32>(-226f, arg_0.b.b.x)), vec2<f32>(global3.b.x, _wgslsmith_f_op_f32(min(1638f, arg_0.b.b.x))), global0.a)), -11928i, func_3(arg_1.c <= global1[_wgslsmith_index_u32(4294967295u, 28u)])), var_2.c);
}

fn func_4(arg_0: Struct_2, arg_1: vec2<bool>, arg_2: Struct_1, arg_3: Struct_1) -> i32 {
    let var_0 = func_2(arg_0, Struct_1(arg_0.b.a, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1867f + -554f) * _wgslsmith_f_op_f32(-arg_2.b.x)), _wgslsmith_f_op_f32(f32(-1f) * -625f)), global1[_wgslsmith_index_u32(52819u, 28u)], u_input.a.yy & vec2<u32>(0u, 57702u)), arg_1, ~arg_2.c);
    global2 = array<vec4<bool>, 9>();
    return max(2147483647i, ~_wgslsmith_mod_i32(_wgslsmith_add_i32(~23362i, _wgslsmith_div_i32(global0.c, global3.c)), var_0.b.c));
}

fn func_1() -> Struct_1 {
    global1 = array<i32, 28>();
    var var_0 = vec4<u32>(global0.d.x, 1u, ~global3.d.x, 21276u);
    let var_1 = Struct_1(global3.b.x < _wgslsmith_f_op_f32(-451f * _wgslsmith_f_op_f32(-742f + _wgslsmith_f_op_f32(select(194f, -808f, global0.a)))), _wgslsmith_f_op_vec2_f32(-global3.b), -_wgslsmith_mult_i32(func_4(func_2(Struct_2(1331u, Struct_1(true, vec2<f32>(global3.b.x, global3.b.x), -1i, global0.d), vec3<i32>(-26887i, 2147483647i, 10882i)), Struct_1(false, vec2<f32>(global0.b.x, global3.b.x), global1[_wgslsmith_index_u32(u_input.a.x, 28u)], vec2<u32>(0u, 0u)), vec2<bool>(false, true), global3.c), vec2<bool>(true, global0.a), Struct_1(global0.a, vec2<f32>(1209f, 660f), global0.c, vec2<u32>(4294967295u, 49493u)), func_2(Struct_2(global3.d.x, Struct_1(global3.a, global3.b, 0i, var_0.zx), vec3<i32>(842i, global0.c, global0.c)), Struct_1(false, global3.b, 45696i, vec2<u32>(0u, global0.d.x)), vec2<bool>(false, global3.a), global3.c).b), ~(~2147483647i)), _wgslsmith_mult_vec2_u32(vec2<u32>(global0.d.x, ~32235u), ~global0.d));
    global0 = var_1;
    let var_2 = 13194i;
    return func_2(func_2(func_2(Struct_2(~1u, func_2(Struct_2(0u, var_1, vec3<i32>(-1i, -8176i, var_2)), var_1, vec2<bool>(var_1.a, false), 0i).b, _wgslsmith_clamp_vec3_i32(vec3<i32>(global3.c, global3.c, global1[_wgslsmith_index_u32(0u, 28u)]), vec3<i32>(-14436i, 28356i, var_2), vec3<i32>(global1[_wgslsmith_index_u32(var_1.d.x, 28u)], global3.c, -1i))), var_1, !vec2<bool>(global0.a, true), func_2(func_2(Struct_2(global0.d.x, Struct_1(false, vec2<f32>(1336f, -768f), global0.c, u_input.a.yx), vec3<i32>(1i, global0.c, global0.c)), Struct_1(var_1.a, vec2<f32>(global0.b.x, global3.b.x), global0.c, global3.d), vec2<bool>(global0.a, false), global1[_wgslsmith_index_u32(1u, 28u)]), func_2(Struct_2(u_input.a.x, Struct_1(true, vec2<f32>(global3.b.x, global0.b.x), global0.c, global3.d), vec3<i32>(global1[_wgslsmith_index_u32(u_input.a.x, 28u)], -1i, -1i)), Struct_1(true, vec2<f32>(global3.b.x, 1230f), global1[_wgslsmith_index_u32(22933u, 28u)], vec2<u32>(39791u, 81850u)), vec2<bool>(true, false), var_1.c).b, !vec2<bool>(global3.a, global0.a), _wgslsmith_dot_vec4_i32(vec4<i32>(var_1.c, global0.c, global1[_wgslsmith_index_u32(global0.d.x, 28u)], var_2), vec4<i32>(0i, -1i, global0.c, global3.c))).b.c), Struct_1(!(global0.d.x < 47744u), global3.b, ~global1[_wgslsmith_index_u32(~u_input.a.x, 28u)], _wgslsmith_mult_vec2_u32(abs(vec2<u32>(0u, var_0.x)), var_0.zw)), vec2<bool>(!(!global0.a), any(vec2<bool>(true, false))), firstTrailingBit(~57607i)), func_2(func_2(func_2(func_2(Struct_2(0u, var_1, vec3<i32>(50869i, global0.c, global0.c)), var_1, vec2<bool>(true, global3.a), global1[_wgslsmith_index_u32(global0.d.x, 28u)]), var_1, vec2<bool>(global3.a, global3.a), abs(22029i)), func_2(func_2(Struct_2(4294967295u, var_1, vec3<i32>(global3.c, 0i, var_1.c)), var_1, vec2<bool>(global0.a, global3.a), var_1.c), var_1, !vec2<bool>(var_1.a, global0.a), _wgslsmith_mult_i32(global0.c, -1i)).b, !select(vec2<bool>(var_1.a, false), vec2<bool>(global0.a, global3.a), global0.a), min(25460i, _wgslsmith_dot_vec3_i32(vec3<i32>(15227i, -4512i, 2147483647i), vec3<i32>(-54724i, 1i, 1i)))), func_2(Struct_2(var_0.x, var_1, vec3<i32>(global3.c, -2147483647i, var_1.c)), Struct_1(true, _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.b.x, 369f) * var_1.b), 1i, countOneBits(global3.d)), vec2<bool>(false, true), firstTrailingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(global1[_wgslsmith_index_u32(global0.d.x, 28u)], 2147483647i, 16072i, global3.c), vec4<i32>(-54479i, global3.c, -1i, var_1.c)))).b, !select(select(vec2<bool>(global0.a, true), vec2<bool>(false, global0.a), vec2<bool>(global0.a, false)), vec2<bool>(global0.a, true), !vec2<bool>(global3.a, var_1.a)), -2147483647i).b, !(!select(vec2<bool>(var_1.a, global3.a), select(vec2<bool>(global3.a, var_1.a), vec2<bool>(true, global3.a), vec2<bool>(true, true)), vec2<bool>(global0.a, global0.a))), -2147483647i).b;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec4<bool>, 9>();
    var var_0 = !global0.a;
    var var_1 = select(!vec2<bool>(global0.a, true), select(!(!vec2<bool>(global0.a, global3.a)), !vec2<bool>(-1162f >= global0.b.x, -1372f == global3.b.x), vec2<bool>(global3.a, global0.a)), !(any(global2[_wgslsmith_index_u32(4294967295u, 9u)]) & global3.a) & global3.a);
    var_1 = !select(vec2<bool>((global0.a & true) && all(vec2<bool>(global3.a, true)), var_1.x), !(!(!vec2<bool>(true, var_1.x))), false);
    var var_2 = Struct_2(4294967295u, func_1(), -select(-vec3<i32>(global1[_wgslsmith_index_u32(60600u, 28u)], global0.c, 35556i), vec3<i32>(-31193i, global0.c, 1843i), vec3<bool>(true, true, true)) | min((vec3<i32>(global0.c, global1[_wgslsmith_index_u32(20204u, 28u)], global3.c) << (vec3<u32>(21518u, global0.d.x, global0.d.x) % vec3<u32>(32u))) | _wgslsmith_mult_vec3_i32(vec3<i32>(30039i, global3.c, -34873i), vec3<i32>(19176i, global3.c, global3.c)), ~_wgslsmith_mult_vec3_i32(vec3<i32>(2147483647i, global0.c, global0.c), vec3<i32>(global3.c, -28783i, 3024i))));
    let var_3 = func_2(Struct_2(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, ~32103u, 57229u), abs(~vec3<u32>(u_input.a.x, var_2.a, global3.d.x))), Struct_1(!any(global2[_wgslsmith_index_u32(global0.d.x, 9u)]), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_2.b.b.x, var_2.b.b.x)))), func_1().c, firstLeadingBit(global3.d) | vec2<u32>(global0.d.x, 24251u)), func_2(Struct_2(u_input.a.x, var_2.b, var_2.c), var_2.b, !select(vec2<bool>(global0.a, var_1.x), vec2<bool>(true, global3.a), vec2<bool>(true, var_2.b.a)), global1[_wgslsmith_index_u32(reverseBits(var_2.b.d.x), 28u)]).c), Struct_1(global0.a, vec2<f32>(_wgslsmith_div_f32(-1073f, _wgslsmith_f_op_f32(-1071f + var_2.b.b.x)), 621f), -((global1[_wgslsmith_index_u32(82400u, 28u)] | global3.c) ^ (i32(-1i) * -2147483647i)), ~abs(countOneBits(global0.d))), !select(vec2<bool>(true, false), select(!vec2<bool>(false, var_1.x), vec2<bool>(false, true), vec2<bool>(false, global3.a)), !vec2<bool>(true, var_2.b.a)), global1[_wgslsmith_index_u32(global3.d.x, 28u)]);
    var var_4 = func_2(func_2(func_2(func_2(var_3, func_1(), !vec2<bool>(true, var_3.b.a), ~global0.c), func_2(func_2(Struct_2(u_input.a.x, Struct_1(true, var_3.b.b, -1i, vec2<u32>(var_2.b.d.x, global3.d.x)), var_2.c), Struct_1(false, vec2<f32>(var_2.b.b.x, global3.b.x), global0.c, global3.d), vec2<bool>(true, true), global1[_wgslsmith_index_u32(40800u, 28u)]), var_2.b, vec2<bool>(false, false), ~var_2.b.c).b, !select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(var_1.x, global3.a)), ~(-1i)), func_1(), !(!vec2<bool>(var_3.b.a, true)), ~2147483647i), Struct_1(global0.a, vec2<f32>(func_1().b.x, global3.b.x), func_2(var_3, var_2.b, !(!vec2<bool>(global0.a, var_2.b.a)), max(-2147483647i, global0.c)).b.c, vec2<u32>(4294967295u, ~0u ^ (1u << (var_3.a % 32u)))), !select(vec2<bool>(true, true), !vec2<bool>(var_3.b.a, true), vec2<bool>(all(vec2<bool>(global3.a, true)), func_2(var_3, var_2.b, vec2<bool>(false, false), global1[_wgslsmith_index_u32(18608u, 28u)]).b.a)), select(min(global1[_wgslsmith_index_u32(~(~4294967295u), 28u)], 28706i), -2147483647i, true)).b.b.x;
    var var_5 = Struct_1(any(!vec3<bool>(any(vec4<bool>(false, var_3.b.a, false, true)), var_1.x, global0.a | global3.a)), _wgslsmith_f_op_vec2_f32(-var_3.b.b), 43726i, vec2<u32>(22821u, var_3.b.d.x));
    let var_6 = Struct_2(func_3(true).x, Struct_1(var_3.b.a, global0.b, _wgslsmith_sub_i32(global3.c, var_5.c), u_input.a.xx), var_3.c);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(949f, var_5.b.x))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global3.b) + _wgslsmith_f_op_vec2_f32(select(var_2.b.b, vec2<f32>(global0.b.x, 140f), false))) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_2.b.b), _wgslsmith_f_op_vec2_f32(global3.b * global3.b)))), vec2<u32>(var_2.a, abs(func_1().d.x)), ~_wgslsmith_clamp_u32(countOneBits(var_6.b.d.x) << (~var_2.a % 32u), reverseBits(u_input.a.x), firstTrailingBit(0u) << (countOneBits(var_5.d.x) % 32u)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1628f, 2431f, 1330f)) * vec3<f32>(-911f, 1070f, -1000f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1094f, global0.b.x, var_6.b.b.x) - vec3<f32>(global3.b.x, var_5.b.x, 1195f)), !var_2.b.a)) - vec3<f32>(323f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_2.b.b.x + var_2.b.b.x), _wgslsmith_f_op_f32(var_3.b.b.x - 1000f)), var_2.b.b.x)), vec3<i32>(-13120i, -global1[_wgslsmith_index_u32(var_3.b.d.x, 28u)] & -1i, countOneBits(_wgslsmith_sub_i32(-1i, 30761i))) ^ _wgslsmith_sub_vec3_i32(var_6.c, vec3<i32>(~global1[_wgslsmith_index_u32(32078u, 28u)], global0.c << (var_5.d.x % 32u), ~(-1i))));
}


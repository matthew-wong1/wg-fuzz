struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: u32,
    b: vec2<u32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

var<private> global1: array<Struct_2, 4>;

var<private> global2: vec3<u32> = vec3<u32>(1u, 6472u, 0u);

var<private> global3: vec2<u32>;

var<private> global4: array<u32, 7> = array<u32, 7>(42070u, 4294967295u, 1u, 24421u, 15637u, 30070u, 116363u);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: vec3<u32>) -> f32 {
    global4 = array<u32, 7>();
    var var_0 = _wgslsmith_mod_i32(_wgslsmith_div_i32(global0.x, _wgslsmith_clamp_i32(global0.x, ~select(global0.x, global0.x, false), -41676i)), ~global0.x);
    var_0 = firstTrailingBit(-19332i);
    let var_1 = reverseBits(firstTrailingBit(_wgslsmith_sub_vec3_i32(vec3<i32>(_wgslsmith_mod_i32(global0.x, global0.x), _wgslsmith_clamp_i32(global0.x, -1i, global0.x), ~(-833i)), vec3<i32>(global0.x, global0.x, abs(global0.x)))));
    global1 = array<Struct_2, 4>();
    return 716f;
}

fn func_2(arg_0: Struct_3, arg_1: vec4<bool>) -> vec2<bool> {
    let var_0 = Struct_3(global2.x, reverseBits(abs(vec2<u32>(~arg_0.b.x, 72969u >> (arg_0.b.x % 32u)))), arg_0.c);
    global1 = array<Struct_2, 4>();
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.c.a, 483f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.c.a * arg_0.c.a) + -410f)) + vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -962f)), var_0.c.a, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(-516f, 163f, false)), _wgslsmith_f_op_f32(1000f * var_0.c.a))))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-944f, 801f, 228f)))) * _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-370f, _wgslsmith_f_op_f32(sign(arg_0.c.a)), _wgslsmith_f_op_f32(-arg_0.c.a))))));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(337f + _wgslsmith_f_op_f32(f32(-1f) * -1862f)), _wgslsmith_f_op_f32(f32(-1f) * -480f))));
    let var_3 = vec2<f32>(_wgslsmith_f_op_f32(ceil(var_0.c.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1295f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(vec3<u32>(global4[_wgslsmith_index_u32(61453u, 7u)], 1u, u_input.a.x))), _wgslsmith_f_op_f32(926f - arg_0.c.a)), !(var_1.x <= var_2.a))) * _wgslsmith_f_op_f32(-var_0.c.a)));
    return !select(!arg_1.zw, vec2<bool>(true, true), select(select(arg_1.yy, vec2<bool>(arg_1.x, arg_1.x), arg_1.x), arg_1.zz, any(arg_1.wwz) || false));
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: Struct_3, arg_3: Struct_1) -> f32 {
    var var_0 = ~(select(vec3<i32>(global0.x, 7711i, 0i), vec3<i32>(-1i, global0.x, -2147483647i) & vec3<i32>(49867i, -1i, 58736i), select(vec3<bool>(arg_0.x, arg_0.x, false), vec3<bool>(arg_0.x, true, arg_0.x), vec3<bool>(false, arg_0.x, arg_0.x))) | vec3<i32>(i32(-1i) * -1i, countOneBits(global0.x), firstLeadingBit(global0.x))) & vec3<i32>(_wgslsmith_div_i32(_wgslsmith_add_i32(global0.x ^ global0.x, -40382i), 20474i), global0.x, global0.x);
    let var_1 = select(~countOneBits(~(-1i)), _wgslsmith_sub_i32(-2147483647i, 1i), arg_0.x) >= -68615i;
    var var_2 = ~max(vec4<i32>(abs(0i), var_0.x | ~43205i, ~select(32816i, 0i, true), 18776i), _wgslsmith_sub_vec4_i32(select(firstTrailingBit(vec4<i32>(global0.x, -2147483647i, 1i, global0.x)), -vec4<i32>(0i, global0.x, global0.x, var_0.x), any(vec3<bool>(true, arg_0.x, true))), -vec4<i32>(2147483647i, 3387i, var_0.x, -45370i) & vec4<i32>(7183i, global0.x, 35521i, global0.x)));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(vec3<u32>(global2.x, global3.x, 33286u))) + _wgslsmith_f_op_f32(arg_2.c.a * -380f))))));
    global1 = array<Struct_2, 4>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-2014f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(abs(arg_3.a))))))));
}

fn func_1(arg_0: i32, arg_1: vec4<bool>, arg_2: f32) -> Struct_2 {
    let var_0 = ~(-7863i);
    var var_1 = (~1u < ~global4[_wgslsmith_index_u32(~_wgslsmith_mult_u32(1u, global2.x), 7u)]) | any(select(arg_1.wx, !(!vec2<bool>(arg_1.x, arg_1.x)), !arg_1.yw));
    let var_2 = any(vec2<bool>(_wgslsmith_add_i32(_wgslsmith_add_i32(global0.x, arg_0), _wgslsmith_mult_i32(arg_0, 33812i)) <= 29797i, true));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(func_2(Struct_3(9380u, u_input.a, Struct_1(arg_2)), vec4<bool>(arg_1.x, arg_1.x, false, var_2)), Struct_1(_wgslsmith_f_op_f32(trunc(1321f))), Struct_3(abs(u_input.a.x), ~vec2<u32>(u_input.a.x, 59051u), Struct_1(arg_2)), Struct_1(-661f)))));
    let var_4 = _wgslsmith_clamp_u32(global3.x, _wgslsmith_div_u32(~global2.x, 44712u), 90935u);
    return Struct_2(~(1i >> (global3.x % 32u)));
}

fn func_5(arg_0: Struct_2) -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(step(890f, _wgslsmith_f_op_f32(f32(-1f) * -857f))));
    global0 = vec3<i32>(-1i, 2724i, reverseBits((global0.x >> ((global3.x & global4[_wgslsmith_index_u32(u_input.a.x, 7u)]) % 32u)) << (global4[_wgslsmith_index_u32(~u_input.a.x, 7u)] % 32u)));
    let var_1 = func_1(0i, !vec4<bool>(any(vec4<bool>(false, true, false, true)), ~global0.x < arg_0.a, any(vec2<bool>(true, true)), false), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(201f, var_0.a, false)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a) + _wgslsmith_f_op_f32(-var_0.a))))));
    var var_2 = _wgslsmith_clamp_vec4_u32(_wgslsmith_sub_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(0u, u_input.a.x, global2.x, 1u), _wgslsmith_add_vec4_u32(vec4<u32>(12740u, 4294967295u, u_input.a.x, global4[_wgslsmith_index_u32(70521u, 7u)]), vec4<u32>(36040u, global4[_wgslsmith_index_u32(40589u, 7u)], 1u, global4[_wgslsmith_index_u32(global3.x, 7u)]))) ^ select(vec4<u32>(u_input.a.x, global2.x, 0u, 0u), vec4<u32>(global4[_wgslsmith_index_u32(0u, 7u)], u_input.a.x, 0u, global3.x), vec4<bool>(false, true, false, false)), _wgslsmith_clamp_vec4_u32(abs(vec4<u32>(43041u, 1u, 4294967295u, u_input.a.x)) | ~vec4<u32>(global3.x, 0u, 1u, global2.x), vec4<u32>(53074u, 4294967295u, global4[_wgslsmith_index_u32(global3.x, 7u)], u_input.a.x) >> (abs(vec4<u32>(global4[_wgslsmith_index_u32(18505u, 7u)], 79204u, 56613u, 0u)) % vec4<u32>(32u)), vec4<u32>(1u, ~global3.x, u_input.a.x, 281u))), countOneBits(abs(~_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 48068u, 7722u, global4[_wgslsmith_index_u32(global3.x, 7u)]), vec4<u32>(u_input.a.x, 12095u, 0u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global2.x, 7u)], 7u)])))), vec4<u32>(u_input.a.x, _wgslsmith_dot_vec3_u32(vec3<u32>(abs(46762u), 1u, global2.x), _wgslsmith_sub_vec3_u32(reverseBits(vec3<u32>(global4[_wgslsmith_index_u32(1351u, 7u)], global4[_wgslsmith_index_u32(global2.x, 7u)], global3.x)), vec3<u32>(global2.x, global4[_wgslsmith_index_u32(16888u, 7u)], global4[_wgslsmith_index_u32(global2.x, 7u)]) | vec3<u32>(65351u, global4[_wgslsmith_index_u32(u_input.a.x, 7u)], 12797u))), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 4294967295u, u_input.a.x), countOneBits(~vec3<u32>(16821u, 4294967295u, 1u))), _wgslsmith_add_u32(4294967295u | ~u_input.a.x, _wgslsmith_add_u32(reverseBits(global2.x), firstLeadingBit(0u)))));
    var var_3 = Struct_1(-1506f);
    return Struct_1(_wgslsmith_f_op_f32(-185f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(-1023f);
    var var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(1161f * var_0.a), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(651f, -663f)))), _wgslsmith_f_op_f32(step(1000f, var_0.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0.a))) * _wgslsmith_f_op_f32(floor(var_0.a)))) + vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(689f, var_0.a)) - 713f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(1715f + -1907f), var_0.a), var_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_0.a)))));
    var var_2 = !vec2<bool>(!any(vec2<bool>(false, true)) != true, true);
    var_0 = func_5(func_1(~(~(global0.x ^ 0i)), select(!(!vec4<bool>(var_2.x, false, var_2.x, var_2.x)), select(!vec4<bool>(var_2.x, var_2.x, var_2.x, true), vec4<bool>(var_2.x, var_2.x, var_2.x, var_2.x), false), var_2.x), var_0.a));
    var var_3 = 1i;
    let var_4 = _wgslsmith_f_op_f32(1130f - -788f);
    var var_5 = global0.x <= abs(-2147483647i);
    let var_6 = Struct_3(~(~(1u << (_wgslsmith_div_u32(76912u, 4294967295u) % 32u))), u_input.a | ~global2.yx, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(var_1.x)))))));
    global0 = abs(reverseBits(-reverseBits(_wgslsmith_clamp_vec3_i32(vec3<i32>(-54589i, 2510i, global0.x), vec3<i32>(2147483647i, 9729i, global0.x), vec3<i32>(global0.x, global0.x, 2147483647i)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(global0.x, 0i, ~global0.x, global0.x) | _wgslsmith_mult_vec4_i32(max(_wgslsmith_mod_vec4_i32(vec4<i32>(1i, global0.x, global0.x, -10213i), vec4<i32>(global0.x, global0.x, -2147483647i, -8159i)), vec4<i32>(global0.x, -47024i, 0i, global0.x) & vec4<i32>(22654i, global0.x, 2147483647i, -51237i)), -(~vec4<i32>(0i, -2147483647i, 19922i, 0i))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_0.a, var_6.c.a), vec2<f32>(var_0.a, var_0.a))))));
}


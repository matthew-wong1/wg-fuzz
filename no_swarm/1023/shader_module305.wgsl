struct Struct_1 {
    a: i32,
    b: vec2<i32>,
    c: vec3<bool>,
    d: vec4<f32>,
    e: u32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec4<bool>,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: array<i32, 32> = array<i32, 32>(2147483647i, i32(-2147483648), 2147483647i, 14021i, -14962i, -10021i, -66504i, 12747i, -24979i, i32(-2147483648), 2147483647i, 25716i, -1i, 15256i, -44089i, i32(-2147483648), -14i, 2147483647i, 2147483647i, 2147483647i, 25465i, -1i, -16869i, 0i, 1i, -16178i, 962i, 17069i, i32(-2147483648), -42460i, 2147483647i, 0i);

var<private> global2: Struct_1;

var<private> global3: array<bool, 3> = array<bool, 3>(false, false, true);

var<private> global4: array<vec4<i32>, 15> = array<vec4<i32>, 15>(vec4<i32>(0i, -5387i, 21515i, 1i), vec4<i32>(i32(-2147483648), -26587i, -39911i, 0i), vec4<i32>(30176i, -1i, i32(-2147483648), 1i), vec4<i32>(-16607i, 2147483647i, i32(-2147483648), -19631i), vec4<i32>(-39295i, -7927i, i32(-2147483648), i32(-2147483648)), vec4<i32>(32690i, 22329i, -4072i, -50282i), vec4<i32>(1i, -1i, -49127i, -2450i), vec4<i32>(-18610i, -34122i, 2147483647i, 29898i), vec4<i32>(2147483647i, 0i, -52180i, 74351i), vec4<i32>(0i, 34812i, 0i, 1i), vec4<i32>(-1i, 1i, 2147483647i, -13894i), vec4<i32>(2147483647i, 2147483647i, 2147483647i, -32057i), vec4<i32>(-10702i, -1i, -2342i, i32(-2147483648)), vec4<i32>(-1703i, 18818i, 0i, 1i), vec4<i32>(1007i, 43799i, 2147483647i, 1i));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3() -> i32 {
    var var_0 = vec3<i32>(min(u_input.b, _wgslsmith_add_i32(~u_input.b | -global1[_wgslsmith_index_u32(0u, 32u)], -reverseBits(2147483647i))), global1[_wgslsmith_index_u32(~0u, 32u)], _wgslsmith_div_i32(-1i, _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_mod_i32(-1i, 30896i), ~u_input.b), _wgslsmith_div_vec2_i32(global2.b, vec2<i32>(global2.a, global1[_wgslsmith_index_u32(u_input.c, 32u)])))));
    var var_1 = _wgslsmith_dot_vec3_i32(select(vec3<i32>(countOneBits(min(global2.b.x, global2.a)), ~abs(var_0.x), i32(-1i) * -u_input.b), ~abs(~vec3<i32>(u_input.a, global2.a, 1526i)), global2.c), _wgslsmith_mod_vec3_i32(~(vec3<i32>(-2147483647i, 2147483647i, 23503i) >> (vec3<u32>(global2.e, 4294967295u, 0u) % vec3<u32>(32u))), _wgslsmith_add_vec3_i32(reverseBits(vec3<i32>(var_0.x, -2147483647i, 0i)), vec3<i32>(1i, -61571i, global2.a) << (vec3<u32>(u_input.c, u_input.c, 0u) % vec3<u32>(32u))) | countOneBits(-vec3<i32>(global1[_wgslsmith_index_u32(1u, 32u)], 0i, 2147483647i))));
    let var_2 = global3[_wgslsmith_index_u32(~max(~(~(~u_input.c)), 0u), 3u)];
    let var_3 = ~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, abs(4294967295u)), max(abs(vec2<u32>(u_input.c, 0u)), vec2<u32>(u_input.c, ~global2.e)));
    global0 = global2.c;
    return ~(i32(-1i) * -2147483647i) ^ -global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c << (u_input.c % 32u), _wgslsmith_clamp_u32(4294967295u, 0u, var_3), min(var_3, var_3)), reverseBits(~vec3<u32>(global2.e, 20778u, var_3))), 32u)];
}

fn func_4(arg_0: Struct_1, arg_1: u32) -> vec4<bool> {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.d.x))) + _wgslsmith_f_op_f32(-1f)), arg_0.d.x);
    let var_1 = 469f;
    global2 = arg_0;
    global4 = array<vec4<i32>, 15>();
    global3 = array<bool, 3>();
    return select(vec4<bool>(all(select(global2.c.zy, vec2<bool>(false, global0.x), global0.x)), true, true, false), !vec4<bool>(true, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, global1[_wgslsmith_index_u32(global2.e, 32u)]), vec2<i32>(1i, u_input.a)) != global2.a, true, arg_0.c.x), vec4<bool>(true, arg_0.c.x, any(arg_0.c.yz), all(vec4<bool>(global0.x, false, !global0.x, 600f > global2.d.x))));
}

fn func_2() -> Struct_2 {
    var var_0 = !func_4(Struct_1(countOneBits(-u_input.b), vec2<i32>(func_3(), global1[_wgslsmith_index_u32(~u_input.c, 32u)]), !select(vec3<bool>(global0.x, false, global0.x), global2.c, false), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global2.d.x, 1280f, global2.d.x, global2.d.x))), global2.e), 4294967295u | _wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(u_input.c, u_input.c, u_input.c, u_input.c)), vec4<u32>(u_input.c, 16774u, 77129u, 4294967295u) ^ vec4<u32>(u_input.c, 44017u, 26703u, global2.e)));
    global1 = array<i32, 32>();
    let var_1 = -_wgslsmith_div_i32(min(_wgslsmith_sub_i32(global1[_wgslsmith_index_u32(u_input.c, 32u)], global1[_wgslsmith_index_u32(1u, 32u)]), -6701i), global2.a) >> (_wgslsmith_div_u32(u_input.c, u_input.c) % 32u);
    global4 = array<vec4<i32>, 15>();
    let var_2 = _wgslsmith_div_vec4_f32(global2.d, global2.d);
    return Struct_2(vec2<u32>(0u, 44504u), func_4(Struct_1(9985i, global2.b, vec3<bool>(true, false, all(global0.zx)), global2.d, _wgslsmith_dot_vec2_u32(vec2<u32>(global2.e, u_input.c) << (vec2<u32>(4294967295u, u_input.c) % vec2<u32>(32u)), ~vec2<u32>(u_input.c, global2.e))), min(_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.c, 23296u), vec2<u32>(0u, u_input.c)), abs(global2.e) >> (~u_input.c % 32u))), Struct_1(4812i, ~_wgslsmith_div_vec2_i32(global2.b, -vec2<i32>(1i, u_input.a)), vec3<bool>(!global2.c.x, !global3[_wgslsmith_index_u32(14524u, 3u)], _wgslsmith_dot_vec2_u32(vec2<u32>(global2.e, u_input.c), vec2<u32>(16718u, global2.e)) > _wgslsmith_div_u32(global2.e, 4294967295u)), global2.d, global2.e));
}

fn func_5(arg_0: u32, arg_1: Struct_2, arg_2: vec4<f32>, arg_3: f32) -> Struct_1 {
    var var_0 = func_2();
    return arg_1.c;
}

fn func_1() -> vec4<bool> {
    let var_0 = global2.d.x;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(global2.d.x, global2.d.x), global2.d.x)) - global2.d.x));
    let var_2 = func_5(max(_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(min(vec4<u32>(global2.e, u_input.c, 15477u, 46994u), vec4<u32>(14623u, 0u, global2.e, global2.e)), vec4<u32>(global2.e, global2.e, 9663u, 0u) & vec4<u32>(32974u, global2.e, 1u, 33043u)), ~(~u_input.c)), ~(u_input.c >> (global2.e % 32u))), func_2(), vec4<f32>(func_2().c.d.x, 2475f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1), _wgslsmith_div_f32(-778f, 1290f)) - global2.d.x), var_1), -1548f);
    let var_3 = ~vec4<u32>(29957u, ~abs(var_2.e), ~var_2.e, abs(global2.e));
    var var_4 = _wgslsmith_f_op_f32(-1062f - _wgslsmith_f_op_f32(global2.d.x - -1736f));
    return select(vec4<bool>(global1[_wgslsmith_index_u32(func_5(u_input.c, Struct_2(var_3.xw, vec4<bool>(true, global2.c.x, global2.c.x, true), Struct_1(var_2.b.x, vec2<i32>(u_input.b, var_2.a), global2.c, vec4<f32>(var_1, var_1, global2.d.x, -400f), var_2.e)), global2.d, _wgslsmith_f_op_f32(select(global2.d.x, var_2.d.x, var_2.c.x))).e, 32u)] != min(global2.b.x, var_2.b.x << (var_3.x % 32u)), true, _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(var_2.d.x, global2.d.x), -1000f)) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.d.x * 215f) * _wgslsmith_f_op_f32(var_1 + 621f)), var_2.c.x), select(vec4<bool>(global2.c.x, any(func_4(Struct_1(global1[_wgslsmith_index_u32(1u, 32u)], vec2<i32>(var_2.a, var_2.b.x), vec3<bool>(global3[_wgslsmith_index_u32(u_input.c, 3u)], global2.c.x, global0.x), vec4<f32>(var_2.d.x, -2413f, 413f, global2.d.x), var_2.e), 1u)), true, global0.x), func_2().b, vec4<bool>(false, select(true, !global0.x, global2.c.x), true, all(func_4(var_2, 32604u)))), -855f > _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_2.d.x)) - _wgslsmith_f_op_f32(-var_1)))));
}

fn func_6(arg_0: Struct_2, arg_1: vec2<u32>, arg_2: vec2<u32>, arg_3: Struct_2) -> vec4<u32> {
    let var_0 = select(vec4<bool>(all(func_4(func_5(global2.e, arg_3, vec4<f32>(1296f, -458f, arg_0.c.d.x, -1433f), -242f), 69894u)), !(!arg_0.c.c.x), arg_3.c.c.x, (2147483647i << ((56439u >> (arg_2.x % 32u)) % 32u)) != _wgslsmith_add_i32(-u_input.a, arg_0.c.b.x ^ 4067i)), !(!(!(!arg_0.b))), arg_3.c.c.x);
    global1 = array<i32, 32>();
    let var_1 = func_2().c;
    let var_2 = _wgslsmith_clamp_u32(1u, countOneBits(~firstTrailingBit(1u)), _wgslsmith_sub_u32(~reverseBits(firstTrailingBit(arg_3.c.e)), global2.e));
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_3.c.d.x)) + _wgslsmith_div_f32(-788f, 1f))) * 386f);
    return ~_wgslsmith_div_vec4_u32(select(select(vec4<u32>(var_2, var_1.e, var_1.e, var_1.e) << (vec4<u32>(arg_0.c.e, 54584u, 4076u, var_2) % vec4<u32>(32u)), ~vec4<u32>(arg_1.x, arg_0.c.e, var_2, 91580u), vec4<bool>(global3[_wgslsmith_index_u32(39369u, 3u)], true, arg_0.c.c.x, global3[_wgslsmith_index_u32(45981u, 3u)])), vec4<u32>(~0u, reverseBits(arg_3.c.e), _wgslsmith_mult_u32(u_input.c, u_input.c), ~4294967295u), vec4<bool>(false, arg_3.c.d.x != arg_3.c.d.x, !arg_0.b.x, all(global2.c))), _wgslsmith_sub_vec4_u32(vec4<u32>(arg_1.x, 54754u, global2.e, arg_1.x) >> (~vec4<u32>(var_1.e, var_2, 21026u, 12184u) % vec4<u32>(32u)), _wgslsmith_div_vec4_u32(~vec4<u32>(var_2, arg_3.c.e, arg_2.x, 7639u), vec4<u32>(global2.e, 4294967295u, global2.e, 4294967295u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 0i;
    global1 = array<i32, 32>();
    let var_1 = Struct_1(_wgslsmith_add_i32(firstLeadingBit((1i >> (0u % 32u)) << (0u % 32u)), 1i), global2.b, global2.c, _wgslsmith_f_op_vec4_f32(-global2.d), _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(abs(vec4<u32>(26615u, 0u, u_input.c, u_input.c)), vec4<u32>(1u, 0u, global2.e, 0u)) << (abs(17142u) % 32u), global2.e));
    var var_2 = func_6(Struct_2(select(~(~vec2<u32>(global2.e, 1u)), (vec2<u32>(u_input.c, u_input.c) >> (vec2<u32>(2210u, 49857u) % vec2<u32>(32u))) >> (vec2<u32>(4294967295u, 27170u) % vec2<u32>(32u)), all(vec4<bool>(true, global3[_wgslsmith_index_u32(15065u, 3u)], global0.x, global2.c.x)) & global0.x), !select(select(vec4<bool>(false, var_1.c.x, global2.c.x, global2.c.x), vec4<bool>(global2.c.x, true, false, false), global3[_wgslsmith_index_u32(1u, 3u)]), func_1(), func_1().x), Struct_1(1i, vec2<i32>(global2.b.x & -13613i, func_5(var_1.e, Struct_2(vec2<u32>(global2.e, var_1.e), vec4<bool>(false, global0.x, global0.x, false), var_1), var_1.d, global2.d.x).a), func_5(_wgslsmith_add_u32(u_input.c, global2.e), func_2(), vec4<f32>(-1068f, var_1.d.x, -1505f, global2.d.x), _wgslsmith_f_op_f32(abs(193f))).c, _wgslsmith_div_vec4_f32(vec4<f32>(var_1.d.x, -375f, 210f, -1528f), var_1.d), _wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.c, 1u), ~vec2<u32>(15443u, 31725u)))), ~abs(_wgslsmith_sub_vec2_u32(vec2<u32>(var_1.e, 9255u), vec2<u32>(global2.e, 98949u)) | _wgslsmith_add_vec2_u32(vec2<u32>(0u, global2.e), vec2<u32>(global2.e, global2.e))), ~(~countOneBits(vec2<u32>(4294967295u, 4294967295u))) ^ ~_wgslsmith_clamp_vec2_u32(~vec2<u32>(var_1.e, 52820u), ~vec2<u32>(4294967295u, var_1.e), _wgslsmith_div_vec2_u32(vec2<u32>(u_input.c, 4294967295u), vec2<u32>(global2.e, 0u))), Struct_2(~vec2<u32>(44602u >> (var_1.e % 32u), ~87710u), vec4<bool>(true, true, func_5(u_input.c, Struct_2(vec2<u32>(17970u, u_input.c), vec4<bool>(true, false, true, global3[_wgslsmith_index_u32(0u, 3u)]), var_1), vec4<f32>(var_1.d.x, -1116f, 804f, 380f), _wgslsmith_f_op_f32(exp2(global2.d.x))).c.x, true), Struct_1(_wgslsmith_sub_i32(global2.b.x, _wgslsmith_sub_i32(global2.a, 18299i)), vec2<i32>(-2147483647i, -2147483647i), var_1.c, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-global2.d), _wgslsmith_f_op_vec4_f32(vec4<f32>(-910f, var_1.d.x, 296f, -1032f) - vec4<f32>(global2.d.x, 133f, global2.d.x, global2.d.x))), 4294967295u)));
    var var_3 = func_2();
    let var_4 = max(_wgslsmith_mod_i32(-(~(var_3.c.a ^ var_3.c.a)), -2147483647i), -_wgslsmith_mult_i32(17980i, -1i));
    var_2 = ~firstTrailingBit(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, var_2.x, global2.e, 4294967295u) << (vec4<u32>(u_input.c, var_3.c.e, var_3.a.x, var_3.a.x) % vec4<u32>(32u)), ~vec4<u32>(u_input.c, 1238u, 37022u, global2.e)), ~u_input.c, ~0u, 4294967295u));
    let var_5 = func_2();
    let var_6 = _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-110f, var_1.d.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -493f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_6))))), global2.a, 420f);
}


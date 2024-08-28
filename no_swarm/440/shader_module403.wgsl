struct Struct_1 {
    a: i32,
    b: f32,
    c: vec3<i32>,
    d: vec2<u32>,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec3<bool>,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 4>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3(arg_0: Struct_3) -> i32 {
    var var_0 = 40168u;
    var var_1 = _wgslsmith_div_vec4_u32(~vec4<u32>(u_input.b.x, arg_0.a.d.x, u_input.b.x, 1u & (arg_0.a.d.x << (4294967295u % 32u))), max(vec4<u32>(7611u, arg_0.a.d.x, 19384u, arg_0.a.d.x) ^ ~vec4<u32>(arg_0.a.d.x, u_input.b.x, 39419u, 87233u), vec4<u32>(arg_0.a.d.x, u_input.a, u_input.b.x, ~arg_0.a.d.x)) >> (abs(vec4<u32>(abs(31752u), _wgslsmith_clamp_u32(1u, arg_0.a.d.x, arg_0.a.d.x), arg_0.a.d.x, arg_0.a.d.x)) % vec4<u32>(32u)));
    var var_2 = 1u;
    var var_3 = Struct_2(arg_0.a, arg_0.a.b, !vec3<bool>(all(vec4<bool>(true, global0[_wgslsmith_index_u32(59850u, 4u)], global0[_wgslsmith_index_u32(arg_0.a.d.x, 4u)], global0[_wgslsmith_index_u32(0u, 4u)])) || true, global0[_wgslsmith_index_u32(~(54971u << (u_input.a % 32u)), 4u)], !all(vec4<bool>(false, true, global0[_wgslsmith_index_u32(var_1.x, 4u)], global0[_wgslsmith_index_u32(5985u, 4u)]))));
    let var_4 = arg_0;
    return ~var_4.a.e;
}

fn func_2(arg_0: vec3<f32>, arg_1: vec3<u32>, arg_2: vec2<u32>) -> Struct_2 {
    global0 = array<bool, 4>();
    let var_0 = vec4<i32>(-38996i, ~_wgslsmith_sub_i32(-_wgslsmith_div_i32(u_input.c, u_input.c), countOneBits(_wgslsmith_div_i32(u_input.c, -2147483647i))), (countOneBits(_wgslsmith_add_i32(-1i, 1i)) ^ u_input.c) & max(select(-u_input.c, u_input.c & 32007i, true), _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, u_input.c, u_input.c), min(vec3<i32>(14206i, -1i, u_input.c), vec3<i32>(u_input.c, 0i, u_input.c)))), _wgslsmith_mod_i32(~(~59665i), max(-30867i, -u_input.c)) ^ -26830i);
    global0 = array<bool, 4>();
    var var_1 = Struct_3(Struct_1(_wgslsmith_add_i32(func_3(Struct_3(Struct_1(var_0.x, -1387f, var_0.yyw, arg_1.xz, 1i))), -4607i), -1552f, var_0.xwz, ~_wgslsmith_mult_vec2_u32(vec2<u32>(arg_1.x, 0u), select(vec2<u32>(arg_2.x, 0u), u_input.b, false)), -20859i));
    global0 = array<bool, 4>();
    return Struct_2(Struct_1(var_0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1f), var_1.a.b), (vec3<i32>(-2147483647i, -1i, u_input.c) & select(var_0.xxz, vec3<i32>(-23969i, 15637i, var_0.x), vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 4u)], false, false))) >> (_wgslsmith_clamp_vec3_u32(_wgslsmith_mod_vec3_u32(arg_1, vec3<u32>(4294967295u, 53737u, u_input.b.x)), reverseBits(arg_1), vec3<u32>(35418u, 4294967295u, 56067u) & vec3<u32>(u_input.b.x, arg_1.x, 21357u)) % vec3<u32>(32u)), ~(~vec2<u32>(24852u, 46936u)), ~var_0.x), 746f, !(!(!select(vec3<bool>(global0[_wgslsmith_index_u32(58306u, 4u)], false, false), vec3<bool>(global0[_wgslsmith_index_u32(0u, 4u)], true, global0[_wgslsmith_index_u32(arg_2.x, 4u)]), false))));
}

fn func_1() -> Struct_1 {
    global0 = array<bool, 4>();
    global0 = array<bool, 4>();
    global0 = array<bool, 4>();
    var var_0 = func_2(vec3<f32>(_wgslsmith_f_op_f32(700f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(417f)))), _wgslsmith_f_op_f32(-1118f * 2497f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-311f)), _wgslsmith_f_op_f32(max(-988f, 114f))))), vec3<u32>(u_input.b.x, _wgslsmith_sub_u32(71481u, u_input.a), u_input.b.x), vec2<u32>(~(~(~72816u)), ~(~(8935u >> (u_input.b.x % 32u)))));
    var var_1 = _wgslsmith_mod_vec4_u32(~reverseBits(vec4<u32>(var_0.a.d.x, ~6873u, u_input.a, ~68351u)), firstTrailingBit(~firstTrailingBit(vec4<u32>(115851u, 0u, 4294967295u, u_input.a))));
    return var_0.a;
}

fn func_4(arg_0: bool, arg_1: Struct_3, arg_2: u32, arg_3: vec4<i32>) -> Struct_1 {
    let var_0 = arg_1.a;
    let var_1 = Struct_2(func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(432f, -937f, -203f))))), vec3<u32>(~(~4294967295u), 4294967295u, ~(arg_2 >> (var_0.d.x % 32u))), select(_wgslsmith_add_vec2_u32(vec2<u32>(arg_1.a.d.x, arg_1.a.d.x), vec2<u32>(arg_2, 9615u)), vec2<u32>(arg_2, ~28665u), select(vec2<bool>(true, true), select(vec2<bool>(global0[_wgslsmith_index_u32(arg_1.a.d.x, 4u)], false), vec2<bool>(arg_0, arg_0), false), vec2<bool>(arg_0, global0[_wgslsmith_index_u32(arg_1.a.d.x, 4u)])))).a, _wgslsmith_f_op_f32(-arg_1.a.b), vec3<bool>(true, any(vec4<bool>(false, !global0[_wgslsmith_index_u32(0u, 4u)], all(vec3<bool>(false, arg_0, arg_0)), true)), select(true, (arg_0 && global0[_wgslsmith_index_u32(1u, 4u)]) | all(vec4<bool>(global0[_wgslsmith_index_u32(arg_1.a.d.x, 4u)], false, false, true)), false)));
    global0 = array<bool, 4>();
    let var_2 = Struct_2(Struct_1(_wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_1.a.c.x, -2147483647i, -1i, 1i), arg_3), 2147483647i, u_input.c), _wgslsmith_f_op_f32(-1000f + func_2(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_0.b, var_1.b, -486f))), ~vec3<u32>(var_1.a.d.x, 4294967295u, 40943u), vec2<u32>(4294967295u, arg_1.a.d.x)).b), reverseBits(var_1.a.c), var_1.a.d, ~var_1.a.c.x), arg_1.a.b, var_1.c);
    let var_3 = vec3<i32>(arg_1.a.c.x, _wgslsmith_dot_vec4_i32(arg_3, _wgslsmith_mult_vec4_i32(~select(arg_3, arg_3, global0[_wgslsmith_index_u32(4294967295u, 4u)]), _wgslsmith_clamp_vec4_i32(vec4<i32>(-37795i, var_2.a.a, arg_3.x, var_2.a.a), arg_3 << (vec4<u32>(6834u, var_1.a.d.x, var_1.a.d.x, var_0.d.x) % vec4<u32>(32u)), vec4<i32>(var_2.a.c.x, 0i, arg_3.x, 36993i)))), 17344i);
    return func_1();
}

fn func_5(arg_0: Struct_3, arg_1: f32, arg_2: Struct_1, arg_3: vec2<f32>) -> Struct_2 {
    global0 = array<bool, 4>();
    var var_0 = vec4<f32>(-1759f, 1096f, arg_3.x, arg_0.a.b);
    let var_1 = Struct_2(Struct_1(-_wgslsmith_div_i32(~u_input.c, -2147483647i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_3.x))), arg_2.c, ~arg_2.d, ~(~arg_2.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(968f - _wgslsmith_f_op_f32(trunc(304f)))) + func_1().b), vec3<bool>(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(0u, ~(~8522u)), 4u)], 0u > u_input.b.x, global0[_wgslsmith_index_u32(max(func_1().d.x, select(~0u, _wgslsmith_add_u32(14070u, 1u), true)), 4u)]));
    var var_2 = select(var_1.c, var_1.c, !select(var_1.c, !(!var_1.c), func_2(_wgslsmith_f_op_vec3_f32(-var_0.wzw), vec3<u32>(u_input.a, 0u, arg_2.d.x) ^ vec3<u32>(1u, u_input.a, 1u), _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.b.x, 23267u), arg_0.a.d)).c.x));
    global0 = array<bool, 4>();
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 4>();
    global0 = array<bool, 4>();
    let var_0 = func_5(Struct_3(func_4(true, Struct_3(func_1()), _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(u_input.b, u_input.b), _wgslsmith_sub_vec2_u32(u_input.b, vec2<u32>(0u, 1u))), vec4<i32>(~u_input.c, -1i, u_input.c, _wgslsmith_add_i32(0i, -2147483647i)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1f)) + _wgslsmith_f_op_f32(-556f + _wgslsmith_f_op_f32(floor(-207f)))), Struct_1(_wgslsmith_dot_vec4_i32(~vec4<i32>(27549i, 17379i, u_input.c, -1i), vec4<i32>(-34334i, -1i, -16639i, 10777i) & vec4<i32>(u_input.c, 2147483647i, -19398i, u_input.c)) ^ -2147483647i, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(143f, -682f))))), _wgslsmith_div_vec3_i32(~vec3<i32>(1i, u_input.c, u_input.c), _wgslsmith_mod_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.c, -53518i, u_input.c), vec3<i32>(39018i, -7563i, -1i)), vec3<i32>(u_input.c, -15406i, 44680i))), ~u_input.b, func_2(vec3<f32>(-1199f, func_2(vec3<f32>(-1215f, -701f, -1321f), vec3<u32>(u_input.a, u_input.a, 1u), u_input.b).b, -373f), ~countOneBits(vec3<u32>(1u, u_input.b.x, 11834u)), firstTrailingBit(~u_input.b)).a.e), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-377f - -258f), -1000f) * vec2<f32>(_wgslsmith_div_f32(232f, -1306f), _wgslsmith_f_op_f32(964f + 1577f))) * _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(355f, -404f)), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1178f, 1022f))))))));
    var var_1 = func_2(vec3<f32>(var_0.a.b, func_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a.b, var_0.b, -1364f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b, var_0.b, var_0.a.b))), _wgslsmith_add_vec3_u32(~vec3<u32>(4294967295u, 0u, var_0.a.d.x), ~vec3<u32>(u_input.a, u_input.b.x, u_input.b.x)), firstTrailingBit(countOneBits(vec2<u32>(u_input.b.x, u_input.b.x)))).a.b, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(var_0.b))))), ~(~select(~vec3<u32>(16671u, var_0.a.d.x, 84630u), ~vec3<u32>(u_input.b.x, 0u, 13317u), !global0[_wgslsmith_index_u32(var_0.a.d.x, 4u)])), vec2<u32>(~0u, 29253u));
    let var_2 = _wgslsmith_div_vec4_u32(firstLeadingBit(_wgslsmith_div_vec4_u32(~vec4<u32>(39501u, 1u, u_input.b.x, u_input.a), ~vec4<u32>(var_0.a.d.x, 4294967295u, 0u, var_1.a.d.x)) >> (~vec4<u32>(var_0.a.d.x, var_0.a.d.x, 22406u, var_1.a.d.x) % vec4<u32>(32u))), vec4<u32>(1u, 4294967295u, ~var_0.a.d.x, ~(~(~var_1.a.d.x))));
    global0 = array<bool, 4>();
    var var_3 = func_1().d.x;
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(~(~vec3<u32>(var_1.a.d.x, 1u, 4294967295u))), max(vec2<u32>(_wgslsmith_div_u32(u_input.b.x, max(4294967295u, 4294967295u)), ~(15959u | var_0.a.d.x)), var_1.a.d), var_0.a.c);
}


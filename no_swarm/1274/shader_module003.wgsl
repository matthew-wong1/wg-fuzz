struct Struct_1 {
    a: vec2<u32>,
    b: i32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec4<i32>,
    c: Struct_1,
    d: vec4<i32>,
    e: vec2<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<bool>,
    c: vec4<i32>,
    d: Struct_2,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: f32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 2> = array<Struct_2, 2>(Struct_2(vec4<f32>(-1000f, 1378f, 596f, 1267f), vec4<i32>(i32(-2147483648), 2147483647i, -23661i, i32(-2147483648)), Struct_1(vec2<u32>(91551u, 33043u), 13688i), vec4<i32>(1i, 0i, 2722i, -57200i), vec2<i32>(2147483647i, 23691i)), Struct_2(vec4<f32>(-1354f, 835f, -524f, -759f), vec4<i32>(-19036i, 17076i, -39778i, 0i), Struct_1(vec2<u32>(4294967295u, 1u), 18095i), vec4<i32>(-48578i, 2147483647i, 571i, 32860i), vec2<i32>(-17892i, 12613i)));

var<private> global1: array<vec4<i32>, 30> = array<vec4<i32>, 30>(vec4<i32>(2147483647i, i32(-2147483648), -1i, 2147483647i), vec4<i32>(0i, -1i, -1i, 5323i), vec4<i32>(1i, -10849i, 55517i, -13628i), vec4<i32>(-49181i, i32(-2147483648), 21638i, -29553i), vec4<i32>(-6274i, 34837i, 44531i, 1564i), vec4<i32>(-9409i, 18748i, 0i, -36692i), vec4<i32>(-25679i, i32(-2147483648), 44679i, -24569i), vec4<i32>(27150i, -1206i, 24582i, -1i), vec4<i32>(-379i, 3863i, 1i, 0i), vec4<i32>(0i, 4763i, -3383i, 2147483647i), vec4<i32>(i32(-2147483648), 2147483647i, -3529i, i32(-2147483648)), vec4<i32>(2147483647i, 48190i, i32(-2147483648), -16105i), vec4<i32>(50844i, 3831i, 0i, 2147483647i), vec4<i32>(2147483647i, -1i, i32(-2147483648), 0i), vec4<i32>(1i, i32(-2147483648), 27105i, -36715i), vec4<i32>(-20139i, 28579i, i32(-2147483648), -1i), vec4<i32>(50313i, 1i, 75907i, -5434i), vec4<i32>(521i, 0i, -20955i, 1i), vec4<i32>(1i, 6968i, -1i, i32(-2147483648)), vec4<i32>(-1i, 27390i, -45014i, -12800i), vec4<i32>(-52859i, 1i, 2147483647i, 34258i), vec4<i32>(2147483647i, 0i, 11784i, 2147483647i), vec4<i32>(60121i, 1001i, 1i, -1i), vec4<i32>(10163i, 2147483647i, 44583i, 2094i), vec4<i32>(1i, -1i, -1904i, -46944i), vec4<i32>(i32(-2147483648), -24210i, -46443i, 11491i), vec4<i32>(4530i, 42733i, 42465i, 2147483647i), vec4<i32>(-37308i, 1i, 2499i, 18727i), vec4<i32>(1i, -4735i, -32796i, i32(-2147483648)), vec4<i32>(11748i, -2570i, i32(-2147483648), -1i));

var<private> global2: Struct_1 = Struct_1(vec2<u32>(0u, 53688u), i32(-2147483648));

var<private> global3: array<Struct_1, 28> = array<Struct_1, 28>(Struct_1(vec2<u32>(46354u, 4294967295u), 2147483647i), Struct_1(vec2<u32>(1u, 4294967295u), -21326i), Struct_1(vec2<u32>(4294967295u, 1u), -29542i), Struct_1(vec2<u32>(14637u, 0u), 0i), Struct_1(vec2<u32>(1u, 36044u), 15685i), Struct_1(vec2<u32>(30635u, 0u), i32(-2147483648)), Struct_1(vec2<u32>(4294967295u, 0u), -1i), Struct_1(vec2<u32>(11059u, 0u), 49757i), Struct_1(vec2<u32>(97352u, 15423u), 0i), Struct_1(vec2<u32>(0u, 87448u), i32(-2147483648)), Struct_1(vec2<u32>(6551u, 65938u), -33908i), Struct_1(vec2<u32>(19949u, 42055u), -1i), Struct_1(vec2<u32>(1u, 4294967295u), 1i), Struct_1(vec2<u32>(9847u, 1u), 22679i), Struct_1(vec2<u32>(4294967295u, 4224u), i32(-2147483648)), Struct_1(vec2<u32>(4294967295u, 65311u), 2147483647i), Struct_1(vec2<u32>(4294967295u, 1u), -1i), Struct_1(vec2<u32>(57189u, 1u), -55280i), Struct_1(vec2<u32>(0u, 0u), -32879i), Struct_1(vec2<u32>(59784u, 27978u), 37084i), Struct_1(vec2<u32>(0u, 4294967295u), 1i), Struct_1(vec2<u32>(129704u, 4294967295u), 0i), Struct_1(vec2<u32>(57474u, 89377u), i32(-2147483648)), Struct_1(vec2<u32>(18102u, 78997u), -7935i), Struct_1(vec2<u32>(4294967295u, 5968u), 50297i), Struct_1(vec2<u32>(1u, 42981u), 30163i), Struct_1(vec2<u32>(1u, 4294967295u), 20462i), Struct_1(vec2<u32>(1u, 69123u), 0i));

var<private> global4: array<vec4<u32>, 29>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_3) -> i32 {
    global3 = array<Struct_1, 28>();
    var var_0 = global0[_wgslsmith_index_u32(119289u, 2u)];
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -1000f);
    let var_2 = _wgslsmith_dot_vec2_u32(vec2<u32>(15123u, countOneBits(~43697u)), ~(~_wgslsmith_add_vec2_u32(vec2<u32>(arg_0.a.c.a.x, var_0.c.a.x) ^ arg_0.a.c.a, ~vec2<u32>(1u, 0u))));
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1873f, _wgslsmith_f_op_f32(1718f - _wgslsmith_f_op_f32(-var_0.a.x))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_0.a.a.x + arg_0.e.x))) - -914f)) + var_0.a.x);
    return (arg_0.c.x | arg_0.a.e.x) ^ 2147483647i;
}

fn func_2(arg_0: u32, arg_1: vec2<i32>) -> vec3<u32> {
    global1 = array<vec4<i32>, 30>();
    var var_0 = Struct_1(global2.a, reverseBits(_wgslsmith_mod_i32(23838i, func_3(Struct_3(global0[_wgslsmith_index_u32(u_input.a, 2u)], vec2<bool>(false, true), global1[_wgslsmith_index_u32(u_input.a, 30u)], Struct_2(vec4<f32>(-218f, -126f, -1221f, -179f), vec4<i32>(-11292i, global2.b, global2.b, 45491i), global3[_wgslsmith_index_u32(global2.a.x, 28u)], vec4<i32>(arg_1.x, arg_1.x, arg_1.x, -2147483647i), vec2<i32>(-31904i, u_input.c.x)), vec4<f32>(-1578f, 670f, -513f, 484f))))));
    let var_1 = Struct_3(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(global2.a.x, global2.a.x), 2u)], !(!vec2<bool>(all(vec4<bool>(true, true, true, false)), true)), global1[_wgslsmith_index_u32(~var_0.a.x, 30u)], global0[_wgslsmith_index_u32(~_wgslsmith_add_u32(select(_wgslsmith_add_u32(24326u, global2.a.x), 1u, true), u_input.a), 2u)], _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-256f, -845f, 475f, -594f) + vec4<f32>(680f, -719f, 504f, 199f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-189f, -1289f, -630f, -114f) + vec4<f32>(-834f, -1680f, -2333f, -2216f))) * _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-222f, -370f, -1313f, 2136f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1880f, -185f, -1074f, -1560f))))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-226f, 520f) * 819f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(243f)) - _wgslsmith_f_op_f32(round(738f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -351f) + -369f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(-253f)), _wgslsmith_f_op_f32(floor(-386f)), false)))));
    var var_2 = _wgslsmith_f_op_f32(f32(-1f) * -1816f);
    let var_3 = global3[_wgslsmith_index_u32(countOneBits(58063u), 28u)];
    return ~vec3<u32>(_wgslsmith_add_u32(min(var_0.a.x, 0u), ~44351u), var_1.d.c.a.x >> (1u % 32u), 34489u) << (vec3<u32>(_wgslsmith_clamp_u32(max(abs(4294967295u), global2.a.x), ~global2.a.x, global2.a.x), global2.a.x, u_input.a) % vec3<u32>(32u));
}

fn func_1(arg_0: Struct_3, arg_1: i32, arg_2: vec2<u32>) -> Struct_3 {
    var var_0 = _wgslsmith_div_f32(-1033f, 188f);
    let var_1 = _wgslsmith_mult_vec3_u32(select(min(func_2(~3848u, vec2<i32>(u_input.b, u_input.c.x) << (vec2<u32>(u_input.a, 16364u) % vec2<u32>(32u))), vec3<u32>(arg_0.d.c.a.x, arg_0.a.c.a.x, 19395u)), vec3<u32>(abs(_wgslsmith_mod_u32(arg_0.d.c.a.x, arg_0.a.c.a.x)), u_input.a, _wgslsmith_sub_u32(0u, arg_2.x)), !select(vec3<bool>(true, arg_0.b.x, arg_0.b.x), vec3<bool>(arg_0.b.x, arg_0.b.x, false), vec3<bool>(arg_0.b.x, arg_0.b.x, false))), _wgslsmith_div_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, arg_0.d.c.a.x, u_input.a) | ~vec3<u32>(4294967295u, global2.a.x, 10247u), vec3<u32>(29129u, u_input.a, func_2(global2.a.x, arg_0.c.xz).x)), firstLeadingBit(firstTrailingBit(vec3<u32>(4294967295u, u_input.a, 1u))) << (vec3<u32>(~23922u, ~arg_2.x, _wgslsmith_add_u32(global2.a.x, 102898u)) % vec3<u32>(32u))));
    var var_2 = Struct_3(arg_0.a, vec2<bool>(all(!select(vec3<bool>(arg_0.b.x, true, true), vec3<bool>(false, false, true), vec3<bool>(false, true, false))), true | arg_0.b.x), vec4<i32>(_wgslsmith_div_i32(u_input.b, _wgslsmith_mult_i32(0i, reverseBits(-37444i))), ~_wgslsmith_clamp_i32(i32(-1i) * -2147483647i, abs(u_input.c.x), arg_0.c.x), _wgslsmith_mult_i32(_wgslsmith_mult_i32(~arg_0.c.x, i32(-1i) * -15649i), ~(~36266i)), i32(-1i) * -9659i), arg_0.a, arg_0.e);
    var_2 = arg_0;
    let var_3 = arg_2.x;
    return Struct_3(Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(var_2.e)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_0.e) + _wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_2.e.x, 1000f, var_2.d.a.x, var_2.e.x))))), -(vec4<i32>(global2.b, -46530i, -2147483647i, global2.b) ^ ~var_2.c), Struct_1(arg_0.a.c.a, 29510i), ~(abs(var_2.a.d) >> ((global4[_wgslsmith_index_u32(42282u, 29u)] ^ vec4<u32>(75228u, 26874u, var_1.x, global2.a.x)) % vec4<u32>(32u))), -(vec2<i32>(u_input.c.x, 0i) >> (min(vec2<u32>(26889u, u_input.a), vec2<u32>(var_1.x, 36788u)) % vec2<u32>(32u)))), vec2<bool>(true, true), vec4<i32>(firstLeadingBit(u_input.b), 9252i, min(max(firstTrailingBit(1i), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c.x, global2.b), vec2<i32>(arg_1, arg_1))), abs(_wgslsmith_sub_i32(1i, var_2.d.b.x))), arg_1 ^ 1i), arg_0.d, _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_2.d.a.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-967f * var_2.a.a.x))), _wgslsmith_f_op_f32(f32(-1f) * -1854f), -1123f))));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_2) -> vec3<bool> {
    let var_0 = vec4<u32>(1u, ~(~(~firstLeadingBit(30233u))), 1485u, _wgslsmith_div_u32(~(~arg_0.d.c.a.x), 45u) << (_wgslsmith_sub_u32(arg_0.a.c.a.x, abs(abs(0u))) % 32u));
    global0 = array<Struct_2, 2>();
    let var_1 = countOneBits(vec2<i32>(4362i, 1i) ^ ~(arg_0.d.e >> (func_1(Struct_3(global0[_wgslsmith_index_u32(51008u, 2u)], vec2<bool>(false, arg_0.b.x), vec4<i32>(2147483647i, global2.b, 23854i, -15597i), Struct_2(vec4<f32>(-207f, arg_1.a.x, -146f, arg_0.a.a.x), arg_1.b, Struct_1(global2.a, arg_1.e.x), vec4<i32>(2147483647i, 37313i, arg_0.a.b.x, arg_0.a.c.b), arg_0.d.d.zz), arg_0.e), arg_0.c.x, global2.a).a.c.a % vec2<u32>(32u))));
    var var_2 = Struct_3(global0[_wgslsmith_index_u32(arg_1.c.a.x, 2u)], arg_0.b, firstLeadingBit(-arg_1.d) ^ vec4<i32>(15269i, _wgslsmith_add_i32(1i, _wgslsmith_mod_i32(global2.b, var_1.x)), arg_0.d.e.x, _wgslsmith_add_i32(~global2.b, global2.b >> (23871u % 32u))), func_1(arg_0, -_wgslsmith_div_i32(min(0i, u_input.c.x), var_1.x), ~_wgslsmith_mod_vec2_u32(~vec2<u32>(arg_1.c.a.x, u_input.a), vec2<u32>(4294967295u, 55555u))).a, _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_0.d.a.x, arg_0.a.a.x))), -1000f, _wgslsmith_f_op_f32(f32(-1f) * -740f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(580f)))))));
    let var_3 = Struct_3(func_1(arg_0, _wgslsmith_div_i32(firstTrailingBit(~u_input.c.x), arg_0.a.e.x), _wgslsmith_sub_vec2_u32(abs(vec2<u32>(var_0.x, 18995u)), arg_1.c.a)).a, !var_2.b, vec4<i32>(select(-1i, ~(-arg_0.d.b.x), select(all(var_2.b), true, func_1(arg_0, arg_1.e.x, vec2<u32>(1u, var_0.x)).b.x)), 0i, select(min(max(global2.b, arg_0.a.b.x), _wgslsmith_mult_i32(global2.b, arg_0.c.x)), ~(-arg_0.a.e.x), any(select(vec4<bool>(false, false, var_2.b.x, false), vec4<bool>(true, false, var_2.b.x, arg_0.b.x), true))), _wgslsmith_add_i32(-33181i, 1i)), func_1(Struct_3(Struct_2(_wgslsmith_f_op_vec4_f32(arg_1.a - arg_1.a), vec4<i32>(1i, 19782i, var_1.x, var_1.x), global3[_wgslsmith_index_u32(4294967295u, 28u)], select(vec4<i32>(50718i, -5091i, global2.b, u_input.c.x), arg_0.c, vec4<bool>(var_2.b.x, arg_0.b.x, var_2.b.x, arg_0.b.x)), _wgslsmith_div_vec2_i32(var_2.d.b.zz, vec2<i32>(33358i, u_input.b))), var_2.b, abs(arg_1.b << (vec4<u32>(53876u, 4294967295u, var_0.x, arg_1.c.a.x) % vec4<u32>(32u))), Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.a.a.x, var_2.a.a.x, 115f, arg_0.e.x)), -arg_1.d, func_1(Struct_3(Struct_2(arg_1.a, arg_0.c, global3[_wgslsmith_index_u32(arg_0.d.c.a.x, 28u)], arg_0.a.d, var_2.d.e), arg_0.b, var_2.c, global0[_wgslsmith_index_u32(23573u, 2u)], arg_1.a), -2147483647i, vec2<u32>(4294967295u, 1u)).a.c, vec4<i32>(u_input.c.x, var_2.a.e.x, -1i, -2147483647i), -vec2<i32>(global2.b, arg_1.b.x)), _wgslsmith_div_vec4_f32(var_2.a.a, _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -1000f, var_2.a.a.x, var_2.a.a.x)))), arg_1.d.x, ~(vec2<u32>(1u, u_input.a) >> (~global2.a % vec2<u32>(32u)))).a, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(var_2.a.a, vec4<f32>(262f, _wgslsmith_f_op_f32(f32(-1f) * -921f), _wgslsmith_div_f32(arg_0.a.a.x, arg_1.a.x), -605f))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_2.a.a.x))), -157f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-202f + 226f)), -733f)));
    return vec3<bool>(any(!(!vec4<bool>(var_2.b.x, true, arg_0.b.x, var_2.b.x))), var_3.b.x, arg_0.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global3[_wgslsmith_index_u32(global2.a.x, 28u)];
    global1 = array<vec4<i32>, 30>();
    global1 = array<vec4<i32>, 30>();
    let var_1 = select(vec3<bool>(select(!all(vec2<bool>(false, true)), true, true), (global2.a.x <= _wgslsmith_mult_u32(global2.a.x, 36842u)) == true, false), select(select(func_4(func_1(Struct_3(Struct_2(vec4<f32>(-809f, 2074f, -1449f, -149f), global1[_wgslsmith_index_u32(0u, 30u)], Struct_1(global2.a, u_input.b), global1[_wgslsmith_index_u32(4294967295u, 30u)], vec2<i32>(u_input.c.x, global2.b)), vec2<bool>(false, false), global1[_wgslsmith_index_u32(5034u, 30u)], Struct_2(vec4<f32>(868f, -719f, 1518f, 252f), vec4<i32>(global2.b, 34593i, -34487i, global2.b), global3[_wgslsmith_index_u32(4361u, 28u)], global1[_wgslsmith_index_u32(13238u, 30u)], u_input.c), vec4<f32>(-811f, -948f, 460f, -370f)), var_0.b, vec2<u32>(global2.a.x, u_input.a)), global0[_wgslsmith_index_u32(var_0.a.x, 2u)]), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), true), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), vec3<bool>(true, false, any(vec4<bool>(true, true, true, true)))), (!(19164u > u_input.a) && true) != any(!select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, false), true)));
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_div_f32(260f, -1000f), _wgslsmith_f_op_f32(round(-601f)), 866f)))) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(272f, _wgslsmith_f_op_f32(-1163f - 226f), _wgslsmith_f_op_f32(2268f - -1128f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(201f, -734f, 1153f))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-791f, -1000f, _wgslsmith_f_op_f32(min(1501f, 684f))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-590f, -1717f, 518f)))), select(vec3<bool>(true, true, true), var_1, var_1))));
    global2 = Struct_1(func_2(0u, u_input.c).zy, u_input.c.x);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(var_2.x, _wgslsmith_f_op_f32(var_2.x * -484f), var_2.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_2.x), 495f, any(var_1)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-379f - 1f)), 700f, vec2<i32>(var_0.b, -20218i));
}


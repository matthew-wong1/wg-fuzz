struct Struct_1 {
    a: vec4<f32>,
    b: vec3<u32>,
    c: vec3<i32>,
    d: vec2<i32>,
    e: bool,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<i32>,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 6> = array<Struct_1, 6>(Struct_1(vec4<f32>(1000f, 1477f, 788f, 1000f), vec3<u32>(8834u, 33872u, 1u), vec3<i32>(i32(-2147483648), i32(-2147483648), -16944i), vec2<i32>(1i, 31455i), false), Struct_1(vec4<f32>(1525f, -440f, 948f, 733f), vec3<u32>(111748u, 4294967295u, 1u), vec3<i32>(2533i, 2147483647i, -29765i), vec2<i32>(22577i, -30408i), true), Struct_1(vec4<f32>(214f, 1018f, -523f, -287f), vec3<u32>(5846u, 20616u, 1u), vec3<i32>(19376i, 6586i, 41068i), vec2<i32>(44959i, 31607i), true), Struct_1(vec4<f32>(-2568f, 149f, 1689f, 765f), vec3<u32>(59641u, 98329u, 56320u), vec3<i32>(-1i, -6129i, -1i), vec2<i32>(1i, 7740i), false), Struct_1(vec4<f32>(835f, -1000f, -316f, -1299f), vec3<u32>(4294967295u, 43847u, 1u), vec3<i32>(16568i, -17828i, -6307i), vec2<i32>(27018i, -1i), false), Struct_1(vec4<f32>(320f, -217f, -370f, 1000f), vec3<u32>(0u, 1u, 13346u), vec3<i32>(36435i, -36123i, -17149i), vec2<i32>(-1i, 27535i), true));

var<private> global1: Struct_1 = Struct_1(vec4<f32>(1191f, 1844f, 421f, -108f), vec3<u32>(35255u, 22764u, 53673u), vec3<i32>(11574i, i32(-2147483648), -15876i), vec2<i32>(17053i, -12520i), false);

var<private> global2: vec2<f32> = vec2<f32>(141f, 1053f);

var<private> global3: array<u32, 19> = array<u32, 19>(34744u, 11954u, 14186u, 38771u, 4294967295u, 18085u, 40468u, 1u, 25477u, 72734u, 1u, 4294967295u, 55781u, 19732u, 0u, 0u, 0u, 0u, 679u);

var<private> global4: array<Struct_1, 2> = array<Struct_1, 2>(Struct_1(vec4<f32>(245f, 1646f, -1797f, 814f), vec3<u32>(3590u, 0u, 1u), vec3<i32>(26800i, i32(-2147483648), -8966i), vec2<i32>(-53508i, -5122i), false), Struct_1(vec4<f32>(-217f, 896f, -442f, 1000f), vec3<u32>(30196u, 4294967295u, 0u), vec3<i32>(-1i, i32(-2147483648), 24692i), vec2<i32>(2147483647i, 2147483647i), false));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: vec2<u32>, arg_3: vec4<f32>) -> vec3<u32> {
    global0 = array<Struct_1, 6>();
    global1 = global4[_wgslsmith_index_u32(~_wgslsmith_div_u32(~_wgslsmith_mult_u32(_wgslsmith_div_u32(4294967295u, arg_0.b.x), ~22092u), u_input.b), 2u)];
    global2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(arg_3.x, -1024f))) + _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_3.yz))))));
    var var_0 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(global1.a - _wgslsmith_f_op_vec4_f32(-arg_0.a))));
    var var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global1.a)) + global1.a), vec3<u32>(arg_0.b.x, ~(1u << (global1.b.x % 32u)), global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(global1.b, global1.b), 19u)]), ~vec3<i32>(countOneBits(~arg_0.d.x), u_input.d, reverseBits(-24198i)), vec2<i32>(-2147483647i, -(~(~(-2147483647i)))), -302f != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(549f)))) - _wgslsmith_f_op_f32(floor(-653f))));
    return ~global1.b;
}

fn func_2() -> vec3<u32> {
    let var_0 = vec4<u32>(_wgslsmith_mult_u32(0u, _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(min(global1.b, global1.b), ~vec3<u32>(44748u, u_input.b, global3[_wgslsmith_index_u32(global1.b.x, 19u)])), ~vec3<u32>(global3[_wgslsmith_index_u32(global1.b.x, 19u)], global1.b.x, 58242u))), 106265u, 1u >> (_wgslsmith_dot_vec4_u32(select(~vec4<u32>(global1.b.x, global1.b.x, 18964u, global1.b.x), firstTrailingBit(vec4<u32>(4294967295u, global1.b.x, 1u, 1u)), vec4<bool>(global1.e, true, global1.e, global1.e)), vec4<u32>(1503u, 74958u, 4294967295u, 4294967295u) >> (countOneBits(vec4<u32>(global3[_wgslsmith_index_u32(u_input.b, 19u)], 4294967295u, global1.b.x, 0u)) % vec4<u32>(32u))) % 32u), _wgslsmith_mult_u32(19117u, u_input.b));
    var var_1 = Struct_2(~((~vec3<u32>(0u, global1.b.x, 0u) & ~vec3<u32>(1u, 0u, var_0.x)) & vec3<u32>(17482u, ~u_input.b, var_0.x)), Struct_1(_wgslsmith_f_op_vec4_f32(ceil(global1.a)), ~_wgslsmith_add_vec3_u32(global1.b, var_0.xxz), _wgslsmith_mult_vec3_i32(vec3<i32>(global1.c.x, ~global1.d.x, 0i), vec3<i32>(_wgslsmith_sub_i32(-18228i, 1i), u_input.a, abs(-24460i))), firstTrailingBit(abs(firstTrailingBit(vec2<i32>(-12651i, 0i)))), true), vec4<f32>(-500f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1956f))), _wgslsmith_f_op_f32(-1f), global2.x));
    global0 = array<Struct_1, 6>();
    var var_2 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(142f)))), var_1.c.x));
    let var_3 = !any(vec4<bool>(var_1.b.e && true, true, true, true));
    return ~func_3(global0[_wgslsmith_index_u32(~(global1.b.x << ((global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(55624u, 19u)], 19u)] >> (global1.b.x % 32u)) % 32u)), 6u)], -var_1.b.c.x, ~firstTrailingBit(~global1.b.xz), global1.a);
}

fn func_4(arg_0: vec2<u32>, arg_1: vec3<u32>, arg_2: bool, arg_3: vec3<f32>) -> Struct_2 {
    var var_0 = _wgslsmith_div_vec3_u32(firstTrailingBit(_wgslsmith_mult_vec3_u32(func_2(), global1.b)), arg_1 >> (global1.b % vec3<u32>(32u)));
    var_0 = _wgslsmith_add_vec3_u32(~(~vec3<u32>(var_0.x >> (global1.b.x % 32u), abs(0u), 6739u)), ~(abs(arg_1) << (func_2() % vec3<u32>(32u))));
    global0 = array<Struct_1, 6>();
    let var_1 = arg_0.x;
    var var_2 = _wgslsmith_f_op_vec3_f32(select(global1.a.yyx, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1000f)) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_3.x)))), _wgslsmith_f_op_f32(1000f + global1.a.x), global1.a.x), !all(vec3<bool>(true, global1.e, !arg_2))));
    return Struct_2(~(~arg_1), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-100f * -827f), 1790f, _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-1000f, global2.x))), 180f), _wgslsmith_sub_vec3_u32(select(~global1.b, global1.b, !vec3<bool>(global1.e, arg_2, global1.e)), vec3<u32>(global3[_wgslsmith_index_u32(_wgslsmith_add_u32(1u, 0u), 19u)], u_input.b & 0u, _wgslsmith_div_u32(var_1, u_input.b))), _wgslsmith_add_vec3_i32(firstTrailingBit(vec3<i32>(1i, 14630i, u_input.a)), u_input.c) >> (_wgslsmith_sub_vec3_u32(abs(vec3<u32>(47172u, 0u, arg_1.x)), arg_1) % vec3<u32>(32u)), vec2<i32>(19608i, global1.d.x), false), global1.a);
}

fn func_1() -> Struct_2 {
    var var_0 = Struct_2(_wgslsmith_add_vec3_u32(global1.b, global1.b), global0[_wgslsmith_index_u32(~(~abs(_wgslsmith_dot_vec3_u32(global1.b, vec3<u32>(global1.b.x, u_input.b, 75578u)))), 6u)], _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.a.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2.x), global1.a.x), -691f, _wgslsmith_div_f32(-258f, global2.x))));
    var var_1 = all(!vec2<bool>(var_0.b.e, false));
    let var_2 = func_4(_wgslsmith_sub_vec2_u32(~(~(~global1.b.xy)), var_0.a.xz), abs(func_2()), all(vec2<bool>(var_0.b.e, global1.e)) || all(vec2<bool>(global1.e && global1.e, false)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global1.a.wwz)))));
    let var_3 = ~var_0.b.d.x;
    var var_4 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2.x, var_2.b.a.x)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(var_2.c.x, -332f)), 965f)), _wgslsmith_f_op_f32(floor(global2.x)), _wgslsmith_f_op_f32(var_2.b.a.x * 2220f)), countOneBits(vec3<u32>(50830u, global1.b.x, 57678u)), global1.c, _wgslsmith_add_vec2_i32(max(min(var_2.b.d, _wgslsmith_sub_vec2_i32(vec2<i32>(var_3, 0i), u_input.c.yz)), vec2<i32>(firstTrailingBit(var_2.b.d.x), -u_input.d)), var_2.b.c.xx | u_input.c.zy), any(!select(vec3<bool>(true, false, true), !vec3<bool>(false, global1.e, true), var_0.b.e)));
    return Struct_2(vec3<u32>(u_input.b, 0u >> (reverseBits(0u) % 32u), _wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.b, u_input.b, 0u), global1.b)) & var_4.b, global0[_wgslsmith_index_u32(88919u, 6u)], vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_4.a.x), _wgslsmith_div_f32(global1.a.x, 1037f))) * _wgslsmith_f_op_f32(f32(-1f) * -790f)), global2.x, _wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(max(-2348f, _wgslsmith_f_op_f32(-var_0.c.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var var_1 = _wgslsmith_add_vec3_i32(global1.c, ~_wgslsmith_clamp_vec3_i32(global1.c, ~(vec3<i32>(u_input.a, 20997i, global1.d.x) << (var_0.b.b % vec3<u32>(32u))), global1.c));
    let var_2 = func_1();
    var var_3 = -1i;
    var var_4 = func_1();
    global4 = array<Struct_1, 2>();
    let var_5 = firstLeadingBit(-42411i);
    var var_6 = vec2<u32>(~max(~global1.b.x, _wgslsmith_sub_u32(func_4(var_0.b.b.yz, vec3<u32>(43661u, u_input.b, var_4.a.x), var_0.b.e, vec3<f32>(1125f, var_0.b.a.x, global2.x)).b.b.x, 4294967295u)), 12416u);
    var var_7 = Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1051f - 447f) + _wgslsmith_div_f32(var_0.b.a.x, global2.x)), _wgslsmith_f_op_f32(abs(1000f)), _wgslsmith_div_f32(global2.x, _wgslsmith_f_op_f32(global2.x * var_4.c.x)), _wgslsmith_f_op_f32(-global1.a.x)) * var_0.b.a), min(var_2.a, ~abs(vec3<u32>(0u, 1u, var_6.x))), ~(~vec3<i32>(-var_1.x, var_2.b.c.x, -1857i << (var_6.x % 32u))), func_1().b.c.yx, !(!(var_0.b.a.x < var_0.b.a.x) | any(select(vec2<bool>(var_2.b.e, true), vec2<bool>(var_2.b.e, false), false))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_7.a.x + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_2.c.x))))), vec4<u32>(~1u ^ func_2().x, func_1().b.b.x, ~var_4.a.x, ~global1.b.x), ~var_4.b.c.x, 564f);
}


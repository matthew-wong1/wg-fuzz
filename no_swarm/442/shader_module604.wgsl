struct Struct_1 {
    a: bool,
    b: vec2<u32>,
    c: vec3<u32>,
    d: vec4<u32>,
    e: u32,
}

struct Struct_2 {
    a: f32,
    b: f32,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
}

struct Struct_4 {
    a: vec4<i32>,
    b: bool,
    c: vec3<bool>,
    d: vec2<f32>,
    e: Struct_1,
}

struct Struct_5 {
    a: vec3<u32>,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<f32>,
    c: u32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 5> = array<Struct_4, 5>(Struct_4(vec4<i32>(56285i, -3878i, -6000i, 14989i), true, vec3<bool>(true, false, false), vec2<f32>(156f, -1189f), Struct_1(true, vec2<u32>(0u, 12380u), vec3<u32>(4294967295u, 78160u, 53148u), vec4<u32>(8800u, 4294967295u, 60782u, 9829u), 4294967295u)), Struct_4(vec4<i32>(2147483647i, -45739i, 2147483647i, i32(-2147483648)), true, vec3<bool>(true, true, false), vec2<f32>(503f, 442f), Struct_1(false, vec2<u32>(1u, 4294967295u), vec3<u32>(0u, 30176u, 1u), vec4<u32>(5523u, 53132u, 0u, 8455u), 0u)), Struct_4(vec4<i32>(0i, -26600i, 9832i, i32(-2147483648)), true, vec3<bool>(false, true, false), vec2<f32>(1000f, -109f), Struct_1(true, vec2<u32>(4294967295u, 32776u), vec3<u32>(1u, 4294967295u, 3965u), vec4<u32>(43277u, 4294967295u, 0u, 12760u), 4294967295u)), Struct_4(vec4<i32>(-48965i, 34979i, 1i, 41751i), true, vec3<bool>(true, false, true), vec2<f32>(674f, -1089f), Struct_1(true, vec2<u32>(19465u, 1u), vec3<u32>(72910u, 1u, 13820u), vec4<u32>(1u, 1u, 80205u, 1u), 44521u)), Struct_4(vec4<i32>(0i, 1i, -9840i, 1i), true, vec3<bool>(false, true, true), vec2<f32>(777f, 1000f), Struct_1(true, vec2<u32>(0u, 1u), vec3<u32>(0u, 1u, 642u), vec4<u32>(43111u, 1u, 0u, 0u), 1544u)));

var<private> global1: array<u32, 6> = array<u32, 6>(17596u, 4294967295u, 4294967295u, 142177u, 7671u, 108366u);

var<private> global2: array<i32, 30> = array<i32, 30>(-27811i, 0i, 29017i, 2147483647i, 35651i, 2147483647i, 0i, 9174i, -1i, -13611i, -62005i, 74506i, 24146i, -1i, 32897i, 75203i, -19784i, 4317i, 13331i, 2147483647i, -526i, -27838i, -1i, 2147483647i, -23711i, -29572i, -1i, 0i, -34600i, i32(-2147483648));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_5) -> f32 {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-488f, -1067f)), -340f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(179f, -1405f)))))) - _wgslsmith_f_op_f32(-798f + _wgslsmith_f_op_f32(min(778f, _wgslsmith_f_op_f32(f32(-1f) * -1698f))))));
    var_0 = -902f;
    let var_1 = ~reverseBits(1u);
    let var_2 = arg_0.b.x;
    global1 = array<u32, 6>();
    return -734f;
}

fn func_2() -> vec4<bool> {
    let var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1898f, _wgslsmith_f_op_f32(func_3(Struct_5(vec3<u32>(global1[_wgslsmith_index_u32(4294967295u, 6u)], 4294967295u, 1u), vec2<bool>(false, true)))))))));
    global2 = array<i32, 30>();
    global0 = array<Struct_4, 5>();
    var var_1 = var_0;
    global0 = array<Struct_4, 5>();
    return !(!(!select(select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, true), true), select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, false)), true)));
}

fn func_1(arg_0: vec2<bool>, arg_1: Struct_4) -> vec2<bool> {
    var var_0 = all(!select(func_2(), func_2(), !(!vec4<bool>(arg_1.e.a, true, true, arg_0.x))));
    var var_1 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.d.x) * _wgslsmith_f_op_f32(-1f)), _wgslsmith_f_op_f32(-arg_1.d.x), Struct_1(arg_1.e.a, firstTrailingBit(arg_1.e.d.yy) >> (arg_1.e.c.zx % vec2<u32>(32u)), max(_wgslsmith_clamp_vec3_u32(arg_1.e.d.wxx, vec3<u32>(10059u, arg_1.e.e, arg_1.e.e), vec3<u32>(arg_1.e.b.x, 38507u, global1[_wgslsmith_index_u32(4294967295u, 6u)])) << (firstLeadingBit(vec3<u32>(arg_1.e.b.x, arg_1.e.e, 42865u)) % vec3<u32>(32u)), arg_1.e.c), select(vec4<u32>(71557u, global1[_wgslsmith_index_u32(1u, 6u)], arg_1.e.e ^ u_input.a, 0u & u_input.a), arg_1.e.d, func_2()), 90707u), arg_1.e);
    let var_2 = Struct_2(_wgslsmith_f_op_f32(func_3(Struct_5(~(arg_1.e.d.zxw | vec3<u32>(92496u, 4159u, u_input.a)), select(select(vec2<bool>(false, var_1.d.a), arg_0, var_1.d.a), vec2<bool>(false, true), all(vec4<bool>(true, false, var_1.d.a, false)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(391f - arg_1.d.x)), Struct_1(!(!var_1.c.a & !arg_1.e.a), _wgslsmith_add_vec2_u32(abs(min(arg_1.e.d.xx, arg_1.e.d.xw)), ~select(var_1.c.c.yy, arg_1.e.c.zy, arg_0)), var_1.d.d.zyx, ~(~_wgslsmith_mult_vec4_u32(vec4<u32>(0u, 0u, 5267u, arg_1.e.b.x), vec4<u32>(90192u, u_input.a, 0u, 27071u))), ~var_1.d.b.x), Struct_1(var_1.c.a && arg_1.c.x, var_1.d.b, firstTrailingBit((vec3<u32>(104974u, 49729u, 46435u) & arg_1.e.c) >> (vec3<u32>(91376u, 1u, global1[_wgslsmith_index_u32(0u, 6u)]) % vec3<u32>(32u))), var_1.d.d ^ abs(var_1.d.d), u_input.b));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_2.a))) < _wgslsmith_f_op_f32(max(-626f, -1331f));
    let var_3 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(-364f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(-1263f, _wgslsmith_f_op_f32(abs(arg_1.d.x)))))), var_1.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_2.b - var_1.b))))));
    return arg_1.c.zy;
}

fn func_4(arg_0: vec2<bool>, arg_1: vec2<f32>, arg_2: Struct_2) -> bool {
    global1 = array<u32, 6>();
    global1 = array<u32, 6>();
    let var_0 = arg_2.c;
    global2 = array<i32, 30>();
    let var_1 = vec2<bool>(var_0.a, any(!vec4<bool>(-521f < arg_2.a, -1i > global2[_wgslsmith_index_u32(6413u, 30u)], select(false, arg_0.x, false), true)));
    return func_2().x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(!select(select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true)), select(vec2<bool>(true, true), vec2<bool>(true, true), false), vec2<bool>(true, false)), select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, true), true)), func_1(vec2<bool>(true, true), global0[_wgslsmith_index_u32(4294967295u, 5u)])), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1322f, -1363f)))) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(769f, 563f) * vec2<f32>(-429f, -624f))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(374f, -778f) * vec2<f32>(-534f, -1031f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(307f, -252f) + vec2<f32>(245f, -962f)))))), Struct_2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_5(vec3<u32>(u_input.a, 1u, u_input.b), vec2<bool>(false, false)))) - _wgslsmith_f_op_f32(abs(-646f))))), 955f, Struct_1((global2[_wgslsmith_index_u32(79582u, 30u)] >> (global1[_wgslsmith_index_u32(u_input.a, 6u)] % 32u)) <= global2[_wgslsmith_index_u32(max(u_input.b, global1[_wgslsmith_index_u32(u_input.b, 6u)]), 30u)], countOneBits(firstLeadingBit(vec2<u32>(global1[_wgslsmith_index_u32(u_input.a, 6u)], 0u))), reverseBits(vec3<u32>(13744u, u_input.a, 4294967295u)), vec4<u32>(78089u, _wgslsmith_mod_u32(u_input.a, global1[_wgslsmith_index_u32(1u, 6u)]), ~0u, u_input.a << (61361u % 32u)), firstTrailingBit(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a, 6u)], 6u)], 6u)] & 4294967295u)), Struct_1(all(vec3<bool>(true, true, true)), ~(~vec2<u32>(u_input.b, u_input.b)), vec3<u32>(~35634u, 1u, _wgslsmith_mult_u32(18964u, global1[_wgslsmith_index_u32(u_input.a, 6u)])), ~(~vec4<u32>(1u, u_input.b, 36889u, u_input.b)), _wgslsmith_mod_u32(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(12378u, 1621u), vec2<u32>(4294967295u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 6u)], 6u)])), 6u)], u_input.a))));
    var var_1 = u_input.a;
    global0 = array<Struct_4, 5>();
    var_1 = 1u;
    global1 = array<u32, 6>();
    let var_2 = firstLeadingBit(global1[_wgslsmith_index_u32(~max(u_input.a & global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b, 6u)], 6u)], 4294967295u) << (abs(~(~36116u)) % 32u), 6u)]);
    global2 = array<i32, 30>();
    global0 = array<Struct_4, 5>();
    var var_3 = _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(reverseBits(-vec2<i32>(1i, global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 6u)], 30u)]) | ~vec2<i32>(global2[_wgslsmith_index_u32(55493u, 30u)], global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a, 6u)], 30u)])), reverseBits(countOneBits(vec2<i32>(global2[_wgslsmith_index_u32(var_2, 30u)], global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(80752u, 6u)], 30u)]))) << (vec2<u32>(1u, var_2 << (1u % 32u)) % vec2<u32>(32u)), -(~vec2<i32>(global2[_wgslsmith_index_u32(u_input.a, 30u)], 2147483647i)) ^ (max(vec2<i32>(-2147483647i, global2[_wgslsmith_index_u32(29162u, 30u)]), vec2<i32>(global2[_wgslsmith_index_u32(u_input.b, 30u)], global2[_wgslsmith_index_u32(u_input.b, 30u)])) ^ min(vec2<i32>(global2[_wgslsmith_index_u32(var_2, 30u)], global2[_wgslsmith_index_u32(4294967295u, 30u)]), vec2<i32>(global2[_wgslsmith_index_u32(0u, 30u)], global2[_wgslsmith_index_u32(3235u, 30u)])))), ~vec2<i32>(_wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(global2[_wgslsmith_index_u32(21442u, 30u)], global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 6u)], 30u)], global2[_wgslsmith_index_u32(var_2, 30u)], -5863i), vec4<i32>(34155i, global2[_wgslsmith_index_u32(4294967295u, 30u)], global2[_wgslsmith_index_u32(u_input.b, 30u)], -1i)), ~0i), reverseBits(global2[_wgslsmith_index_u32(max(var_2, global1[_wgslsmith_index_u32(u_input.a, 6u)]), 30u)])));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-697f, 390f)) * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-939f, -155f), vec2<f32>(406f, 331f), var_0)))))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-542f, 1046f), vec2<f32>(1101f, -1361f)) + _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-399f, -452f), vec2<f32>(1000f, -2086f)))), vec2<f32>(487f, 464f), vec2<bool>(var_0, var_0))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(930f + 1106f), -355f)), any(select(vec3<bool>(false, false, var_0), vec3<bool>(false, var_0, var_0), var_0)) == true)), countOneBits(4294967295u), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1589f, -1570f, 137f, 1617f)) * vec4<f32>(820f, _wgslsmith_f_op_f32(max(-282f, -624f)), -996f, -782f)), vec4<f32>(-318f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(692f)), _wgslsmith_f_op_f32(ceil(-623f))), _wgslsmith_f_op_f32(f32(-1f) * -573f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-264f + -604f) * _wgslsmith_f_op_f32(abs(-1522f)))))));
}


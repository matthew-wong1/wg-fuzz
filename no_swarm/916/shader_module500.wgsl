struct Struct_1 {
    a: i32,
    b: i32,
    c: vec2<f32>,
    d: i32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: bool,
    c: Struct_1,
    d: i32,
    e: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: f32,
    d: i32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 20>;

var<private> global1: i32 = i32(-2147483648);

var<private> global2: array<i32, 27> = array<i32, 27>(i32(-2147483648), -19831i, 15689i, 72714i, -1i, -70680i, -19662i, -1i, 42877i, 4363i, 2147483647i, 35708i, -1254i, 58143i, -5081i, -1i, i32(-2147483648), -26239i, 35376i, -1i, -49083i, 15746i, -1i, -2544i, 1i, 1i, -12609i);

var<private> global3: bool = true;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: i32) -> bool {
    let var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-781f, _wgslsmith_f_op_f32(f32(-1f) * -643f)))));
    var var_1 = Struct_3(vec3<f32>(_wgslsmith_f_op_f32(abs(var_0)), var_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1628f, _wgslsmith_f_op_f32(var_0 + -1000f))))), true, Struct_1(global0[_wgslsmith_index_u32(u_input.b.x, 20u)], -23481i, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0, var_0) + vec2<f32>(var_0, var_0)))), abs(arg_0)), global0[_wgslsmith_index_u32(max(_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 20169u), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, 0u, 0u), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, 0u, u_input.b.x), vec4<u32>(4294967295u, 89963u, 1u, 19306u)))), select(43283u, firstLeadingBit(21269u) << (u_input.b.x % 32u), true)), 20u)], abs(~(~29169u)) >= u_input.b.x);
    var var_2 = ~(~(firstTrailingBit(~vec3<u32>(4294967295u, u_input.b.x, u_input.b.x)) | vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 1u, 4294967295u), vec3<u32>(1u, 1u, u_input.b.x)), _wgslsmith_clamp_u32(4294967295u, 11629u, u_input.b.x), _wgslsmith_mult_u32(u_input.b.x, 4294967295u))));
    let var_3 = Struct_2(select(!select(select(vec2<bool>(true, false), vec2<bool>(var_1.b, false), vec2<bool>(true, true)), select(vec2<bool>(false, var_1.e), vec2<bool>(true, var_1.e), true), true), !(!(!vec2<bool>(false, var_1.b))), any(select(select(vec4<bool>(var_1.e, var_1.e, false, var_1.e), vec4<bool>(var_1.e, var_1.b, var_1.b, false), vec4<bool>(var_1.b, true, var_1.e, var_1.b)), vec4<bool>(true, false, var_1.b, true), true))), var_1.c, var_1.c);
    global1 = firstTrailingBit(-1i);
    return var_3.a.x;
}

fn func_2() -> Struct_3 {
    global0 = array<i32, 20>();
    var var_0 = ~vec4<u32>(u_input.b.x, ~u_input.b.x, _wgslsmith_mod_u32(u_input.b.x, _wgslsmith_mod_u32(reverseBits(1u), 88092u)), _wgslsmith_div_u32(40682u, ~u_input.b.x));
    var var_1 = Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, _wgslsmith_f_op_f32(max(-1000f, 428f)), _wgslsmith_f_op_f32(1000f * -1000f)))), !func_3(_wgslsmith_add_i32(~(-1i), global2[_wgslsmith_index_u32(68010u, 27u)] | global2[_wgslsmith_index_u32(4294967295u, 27u)])), Struct_1(select(-global2[_wgslsmith_index_u32(~var_0.x, 27u)], _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, u_input.a, 1i, 0i), min(vec4<i32>(5797i, 2147483647i, global2[_wgslsmith_index_u32(u_input.b.x, 27u)], -3087i), vec4<i32>(-4365i, global2[_wgslsmith_index_u32(1u, 27u)], u_input.a, u_input.a))), !func_3(global0[_wgslsmith_index_u32(1u, 20u)])), 43034i, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(160f, 1000f), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-2831f, -126f)))))), -_wgslsmith_mod_i32(0i, _wgslsmith_clamp_i32(19655i, 0i, 0i))), -global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(var_0.x, 75435u, var_0.x, 56845u), vec4<u32>(u_input.b.x, u_input.b.x, 0u, u_input.b.x)), ~vec4<u32>(1u, var_0.x, u_input.b.x, u_input.b.x)) | (_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, u_input.b.x, var_0.x, 81504u), vec4<u32>(var_0.x, var_0.x, u_input.b.x, u_input.b.x)) & _wgslsmith_add_u32(1u, 47559u)), 20u)], !(!(true != (var_0.x != u_input.b.x))));
    let var_2 = select(!(!select(vec2<bool>(true, true), select(vec2<bool>(var_1.e, true), vec2<bool>(true, false), true), false)), vec2<bool>(var_1.e, any(!select(vec3<bool>(var_1.e, var_1.b, var_1.e), vec3<bool>(false, true, true), vec3<bool>(var_1.e, var_1.e, var_1.b)))), false || var_1.b);
    var_1 = Struct_3(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.c.c.x)), -284f, _wgslsmith_f_op_f32(sign(var_1.c.c.x))), select(var_2.x, select(!var_2.x & var_1.b, var_2.x, var_2.x), var_2.x), Struct_1(select(-5179i | -global2[_wgslsmith_index_u32(99909u, 27u)], -var_1.d, var_1.e), -global0[_wgslsmith_index_u32(var_0.x, 20u)], _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1462f, var_1.c.c.x)), var_1.c.c, true)), _wgslsmith_sub_i32(reverseBits(~var_1.d), firstTrailingBit(max(-53331i, u_input.a)))), reverseBits(1i), var_2.x);
    return Struct_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.c.c.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_1.a.x))), -208f)), all(select(vec3<bool>(true || var_1.b, !var_2.x, true), select(!vec3<bool>(var_2.x, true, var_1.e), !vec3<bool>(var_2.x, false, true), var_2.x || var_2.x), !(!vec3<bool>(var_1.b, var_2.x, false)))), var_1.c, reverseBits(0i), true);
}

fn func_4(arg_0: u32, arg_1: Struct_3, arg_2: Struct_3) -> vec3<i32> {
    global3 = arg_1.e;
    global0 = array<i32, 20>();
    var var_0 = func_2().c;
    let var_1 = ~(_wgslsmith_dot_vec3_u32(~(~vec3<u32>(0u, 30141u, arg_0)), ~_wgslsmith_mult_vec3_u32(vec3<u32>(1u, 1u, u_input.b.x), vec3<u32>(38244u, arg_0, u_input.b.x))) | u_input.b.x);
    var var_2 = Struct_1(max(_wgslsmith_dot_vec2_i32(vec2<i32>(select(u_input.a, global2[_wgslsmith_index_u32(76572u, 27u)], arg_1.e), _wgslsmith_dot_vec2_i32(vec2<i32>(33125i, -1103i), vec2<i32>(0i, global0[_wgslsmith_index_u32(u_input.b.x, 20u)]))), firstLeadingBit(vec2<i32>(var_0.d, -29119i))), -1i), i32(-1i) * -2939i, _wgslsmith_f_op_vec2_f32(arg_1.c.c - var_0.c), ~firstTrailingBit(1i) << (firstTrailingBit(var_1) % 32u));
    return ~_wgslsmith_add_vec3_i32(vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(global0[_wgslsmith_index_u32(1u, 20u)], var_2.d, global0[_wgslsmith_index_u32(0u, 20u)]) ^ vec3<i32>(var_2.d, -29127i, -27476i), vec3<i32>(-2147483647i, 1i, var_2.d) & vec3<i32>(0i, 0i, var_2.d)), ~min(global2[_wgslsmith_index_u32(4294967295u, 27u)], -2010i), ~(-81i)), ~abs(~vec3<i32>(0i, 1i, u_input.a)));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_3) -> Struct_2 {
    var var_0 = ~firstLeadingBit(func_4(u_input.b.x, func_2(), arg_2));
    let var_1 = Struct_2(select(select(vec2<bool>(arg_2.e, all(vec2<bool>(false, false))), select(!vec2<bool>(arg_2.b, arg_2.e), vec2<bool>(arg_2.b, true), vec2<bool>(false, true)), vec2<bool>(true, arg_2.b && arg_2.b)), select(select(vec2<bool>(arg_2.b, true), vec2<bool>(true, true), !arg_2.e), select(!vec2<bool>(arg_2.e, false), select(vec2<bool>(true, arg_2.b), vec2<bool>(false, true), vec2<bool>(arg_2.b, false)), true), arg_2.b), true), func_2().c, arg_0);
    let var_2 = arg_2;
    let var_3 = func_2();
    global0 = array<i32, 20>();
    return var_1;
}

fn func_5(arg_0: u32, arg_1: Struct_2) -> bool {
    var var_0 = !(!(!select(vec4<bool>(arg_1.a.x, false, false, false), !vec4<bool>(arg_1.a.x, true, true, arg_1.a.x), true)));
    global3 = arg_1.a.x;
    var var_1 = func_1(Struct_1(1i & global2[_wgslsmith_index_u32(30302u, 27u)], global2[_wgslsmith_index_u32(arg_0, 27u)], vec2<f32>(_wgslsmith_f_op_f32(arg_1.c.c.x + arg_1.b.c.x), -873f), 1i), arg_1.b, Struct_3(_wgslsmith_f_op_vec3_f32(vec3<f32>(-134f, 881f, arg_1.c.c.x) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1267f, 1271f, -1276f) - vec3<f32>(125f, arg_1.c.c.x, arg_1.b.c.x)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.c.c.x, arg_1.c.c.x, -2127f) * vec3<f32>(arg_1.c.c.x, -486f, arg_1.c.c.x)))), var_0.x, Struct_1(global0[_wgslsmith_index_u32(0u, 20u)] ^ _wgslsmith_dot_vec3_i32(vec3<i32>(global2[_wgslsmith_index_u32(arg_0, 27u)], -19159i, -1i), vec3<i32>(3428i, 1i, global0[_wgslsmith_index_u32(arg_0, 20u)])), _wgslsmith_sub_i32(arg_1.b.b, -2147483647i), vec2<f32>(arg_1.c.c.x, _wgslsmith_f_op_f32(min(-413f, -1936f))), abs(u_input.a)), _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(abs(vec4<i32>(-25682i, 1i, 32217i, arg_1.b.b)), select(vec4<i32>(arg_1.b.b, u_input.a, u_input.a, -22540i), vec4<i32>(u_input.a, -43445i, 0i, u_input.a), var_0.x)), u_input.a), var_0.x));
    global0 = array<i32, 20>();
    let var_2 = var_1.b;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.c.c.x, -920f) - -828f))) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1000f)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = -(-firstLeadingBit(global2[_wgslsmith_index_u32(u_input.b.x, 27u)]) >> (countOneBits(2624u) % 32u));
    var var_0 = Struct_2(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(func_5(29024u, func_1(Struct_1(global0[_wgslsmith_index_u32(u_input.b.x, 20u)], 19122i, vec2<f32>(-1624f, 480f), u_input.a), Struct_1(-30249i, global0[_wgslsmith_index_u32(u_input.b.x, 20u)], vec2<f32>(214f, 282f), global0[_wgslsmith_index_u32(u_input.b.x, 20u)]), Struct_3(vec3<f32>(-120f, 194f, -1971f), false, Struct_1(u_input.a, global0[_wgslsmith_index_u32(u_input.b.x, 20u)], vec2<f32>(-405f, -702f), 0i), -1i, true))), func_5(_wgslsmith_dot_vec3_u32(vec3<u32>(44181u, u_input.b.x, u_input.b.x), vec3<u32>(u_input.b.x, u_input.b.x, 0u)), Struct_2(vec2<bool>(true, true), Struct_1(3578i, -1i, vec2<f32>(757f, -2531f), u_input.a), Struct_1(u_input.a, global2[_wgslsmith_index_u32(u_input.b.x, 27u)], vec2<f32>(1000f, -170f), 66375i))))), Struct_1(func_2().d, -1i >> (1u % 32u), vec2<f32>(-697f, _wgslsmith_f_op_f32(trunc(-528f))), select(_wgslsmith_mod_i32(firstTrailingBit(40793i), ~global0[_wgslsmith_index_u32(0u, 20u)]), firstLeadingBit(25328i), true)), func_2().c);
    var var_1 = countOneBits(~(-1i));
    var var_2 = Struct_2(var_0.a, Struct_1(-global0[_wgslsmith_index_u32((1u | u_input.b.x) ^ (u_input.b.x ^ u_input.b.x), 20u)], var_0.b.a, func_1(var_0.b, Struct_1(12613i, -global2[_wgslsmith_index_u32(4294967295u, 27u)], _wgslsmith_f_op_vec2_f32(-var_0.c.c), global2[_wgslsmith_index_u32(u_input.b.x, 27u)] << (24661u % 32u)), Struct_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(470f, -120f, var_0.b.c.x)), true, Struct_1(-16578i, global2[_wgslsmith_index_u32(278u, 27u)], vec2<f32>(var_0.c.c.x, 1487f), -6407i), ~global0[_wgslsmith_index_u32(5031u, 20u)], var_0.a.x)).c.c, -19591i), Struct_1(func_4(u_input.b.x | 21455u, func_2(), Struct_3(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1279f, var_0.b.c.x, -703f) - vec3<f32>(var_0.b.c.x, 595f, -1155f)), !var_0.a.x, Struct_1(global0[_wgslsmith_index_u32(30717u, 20u)], global0[_wgslsmith_index_u32(0u, 20u)], vec2<f32>(var_0.b.c.x, -1000f), -1i), global0[_wgslsmith_index_u32(u_input.b.x, 20u)], any(vec2<bool>(var_0.a.x, var_0.a.x)))).x, 2147483647i, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-627f, var_0.c.c.x))))), -min(-2147483647i, 45678i)));
    let var_3 = firstTrailingBit(u_input.b.x);
    var var_4 = Struct_3(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1000f, var_0.c.c.x, -1000f))) - vec3<f32>(var_0.c.c.x, -471f, var_2.b.c.x)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.c.c.x, -828f, -795f))))), true, Struct_1(var_0.c.a, _wgslsmith_mod_i32(global0[_wgslsmith_index_u32(~(~4294967295u), 20u)], 19357i), var_0.b.c, _wgslsmith_dot_vec3_i32(~vec3<i32>(-1i, 4302i, global0[_wgslsmith_index_u32(u_input.b.x, 20u)]), ~vec3<i32>(-2147483647i, 2147483647i, -1909i)) ^ var_2.b.b), func_4(u_input.b.x, func_2(), Struct_3(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_0.b.c.x, var_2.c.c.x, var_2.b.c.x))), true, var_0.b, -30240i, var_2.a.x)).x >> (reverseBits(min(4294967295u, ~var_3)) % 32u), var_2.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(var_4.c.c.x, var_2.c.c.x, var_0.a.x)))) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_2.c.c.x), _wgslsmith_f_op_f32(sign(var_0.c.c.x))))), -154f), 2147483647i, var_2.c.c.x, _wgslsmith_add_i32(-firstTrailingBit(-1i), var_2.c.d), reverseBits(firstTrailingBit(_wgslsmith_sub_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(1i, global0[_wgslsmith_index_u32(54028u, 20u)], 2147483647i), vec3<i32>(-10671i, 22583i, -2147483647i), vec3<i32>(-16547i, -1i, var_2.b.d)), vec3<i32>(-22494i, var_0.c.d, -31835i) | vec3<i32>(global0[_wgslsmith_index_u32(var_3, 20u)], var_2.c.b, -2147483647i)))));
}


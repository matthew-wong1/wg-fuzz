struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec2<i32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec3<i32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 21> = array<bool, 21>(true, false, false, true, false, false, false, false, true, false, false, false, true, false, false, false, false, true, false, true, true);

var<private> global1: array<f32, 31> = array<f32, 31>(989f, 527f, -1000f, 385f, -1207f, -528f, -999f, 1000f, -323f, 1635f, -1488f, 858f, 213f, 1191f, 1729f, 632f, 1000f, -572f, -169f, -1000f, -719f, -864f, 370f, 597f, -850f, 435f, -854f, -2216f, 1112f, 2063f, 593f);

var<private> global2: array<u32, 3>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
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

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_1(arg_0: vec4<bool>, arg_1: vec2<f32>, arg_2: vec4<i32>, arg_3: i32) -> vec3<i32> {
    return arg_2.zyw;
}

fn func_3(arg_0: Struct_1, arg_1: vec2<i32>) -> i32 {
    var var_0 = vec2<bool>(-1014i != func_1(select(vec4<bool>(global0[_wgslsmith_index_u32(0u, 21u)], global0[_wgslsmith_index_u32(0u, 21u)], global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 3u)], 21u)], global0[_wgslsmith_index_u32(0u, 21u)]), !vec4<bool>(false, global0[_wgslsmith_index_u32(71305u, 21u)], false, global0[_wgslsmith_index_u32(5408u, 21u)]), select(vec4<bool>(false, false, true, true), vec4<bool>(global0[_wgslsmith_index_u32(u_input.e, 21u)], false, global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.d, 3u)], 21u)], false), vec4<bool>(global0[_wgslsmith_index_u32(0u, 21u)], global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 3u)], 3u)], 21u)], false, true))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-2422f, global1[_wgslsmith_index_u32(25634u, 31u)]))) + vec2<f32>(850f, -243f)), ~vec4<i32>(arg_1.x, -30790i, arg_1.x, -2147483647i), 1i).x, true != (arg_0.a >= min(~u_input.b, 66i)));
    let var_1 = _wgslsmith_add_vec2_u32(reverseBits(~abs(vec2<u32>(27268u, 4294967295u))), u_input.a);
    global2 = array<u32, 3>();
    global0 = array<bool, 21>();
    var var_2 = var_0.x;
    return firstTrailingBit(68458i);
}

fn func_2(arg_0: i32) -> i32 {
    return func_1(select(!vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.e, 21u)] & global0[_wgslsmith_index_u32(27293u, 21u)], global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.e, 3u)], 21u)] || global0[_wgslsmith_index_u32(552u, 21u)], 1u >= u_input.a.x), !select(!vec4<bool>(true, global0[_wgslsmith_index_u32(4294967295u, 21u)], global0[_wgslsmith_index_u32(4294967295u, 21u)], global0[_wgslsmith_index_u32(0u, 21u)]), vec4<bool>(global0[_wgslsmith_index_u32(0u, 21u)], true, false, true), select(vec4<bool>(true, true, global0[_wgslsmith_index_u32(u_input.e, 21u)], global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(32045u, 3u)], 21u)]), vec4<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 21u)], true, global0[_wgslsmith_index_u32(6373u, 21u)], global0[_wgslsmith_index_u32(1u, 21u)]), vec4<bool>(false, false, global0[_wgslsmith_index_u32(4294967295u, 21u)], true))), !(!(!vec4<bool>(global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 3u)], 21u)], global0[_wgslsmith_index_u32(u_input.a.x, 21u)], true, global0[_wgslsmith_index_u32(u_input.e, 21u)])))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1[_wgslsmith_index_u32(4294967295u, 31u)], 1599f))))), vec4<i32>(-((-2147483647i & arg_0) << (global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(0u, u_input.d), 3u)] % 32u)), u_input.c.x, max(~_wgslsmith_clamp_i32(-1i, -1i, u_input.b), func_3(Struct_1(arg_0), vec2<i32>(arg_0, -11260i) & u_input.c)), arg_0), reverseBits(43356i)).x;
}

fn func_4(arg_0: vec2<i32>, arg_1: vec4<bool>, arg_2: Struct_1, arg_3: Struct_1) -> vec2<i32> {
    global2 = array<u32, 3>();
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1[_wgslsmith_index_u32(21676u, 31u)], -240f, 1758f)))))) * _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1[_wgslsmith_index_u32(48045u, 31u)], -559f, -1561f) + vec3<f32>(global1[_wgslsmith_index_u32(16266u, 31u)], 1000f, global1[_wgslsmith_index_u32(44261u, 31u)])), _wgslsmith_div_vec3_f32(vec3<f32>(global1[_wgslsmith_index_u32(69836u, 31u)], -3005f, 568f), vec3<f32>(889f, -1000f, 924f))))))) + _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1553f, -2300f, 364f)))))))));
    let var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(-354f, -1000f, global1[_wgslsmith_index_u32(0u, 31u)]) * _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 3u)], 31u)], 1146f, var_0.x), vec3<f32>(-1000f, var_0.x, global1[_wgslsmith_index_u32(u_input.a.x, 31u)]), true))))));
    var var_2 = vec2<bool>(!(arg_1.x && true), select(!select(global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.e, 49367u, u_input.a.x), 21u)], any(vec4<bool>(global0[_wgslsmith_index_u32(0u, 21u)], true, true, true)), true), true, 50814u == (global2[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.e, u_input.a.x), 3u)] | reverseBits(global2[_wgslsmith_index_u32(50811u, 3u)]))));
    global2 = array<u32, 3>();
    return vec2<i32>(abs(_wgslsmith_mult_i32(arg_2.a, _wgslsmith_dot_vec3_i32(~vec3<i32>(arg_2.a, 1i, 8965i), vec3<i32>(2147483647i, -23207i, arg_2.a) << (vec3<u32>(u_input.e, global2[_wgslsmith_index_u32(u_input.d, 3u)], 38930u) % vec3<u32>(32u))))), 1i);
}

fn func_5(arg_0: vec2<i32>, arg_1: vec2<i32>, arg_2: bool, arg_3: Struct_1) -> Struct_1 {
    global2 = array<u32, 3>();
    let var_0 = -1415f;
    global1 = array<f32, 31>();
    var var_1 = _wgslsmith_f_op_f32(select(var_0, _wgslsmith_f_op_f32(-var_0), (global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(abs(min(24640u, 0u)), 3u)], 3u)], 3u)] ^ _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(54120u, 3u)], 3u)], 3u)], 0u, 82302u, 110058u), vec4<u32>(4294967295u, 4294967295u, 1u, 4294967295u)), reverseBits(vec4<u32>(5516u, global2[_wgslsmith_index_u32(u_input.e, 3u)], global2[_wgslsmith_index_u32(51465u, 3u)], global2[_wgslsmith_index_u32(62555u, 3u)])))) >= _wgslsmith_sub_u32(~_wgslsmith_div_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(77022u, 3u)], 3u)], u_input.a.x), ~1u)));
    let var_2 = vec3<i32>(~_wgslsmith_clamp_i32(func_3(Struct_1(2147483647i), arg_1), max(-31784i, arg_0.x), i32(-1i) * -10142i), arg_0.x, -2637i) | (vec3<i32>(44562i ^ (arg_0.x ^ 71440i), 1i, -4531i) | ~(-(~vec3<i32>(-2147483647i, arg_1.x, -38456i))));
    return arg_3;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 21>();
    var var_0 = firstTrailingBit(max(countOneBits(reverseBits(vec3<i32>(u_input.c.x, -2147483647i, 0i))) | ~(~vec3<i32>(42374i, -3074i, 9533i)), func_1(vec4<bool>(!global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.d, 3u)], 21u)], global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a.x, 3u)], 3u)], 31u)] < global1[_wgslsmith_index_u32(u_input.d, 31u)], global0[_wgslsmith_index_u32(reverseBits(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(71667u, 3u)], 3u)], 3u)], 3u)]), 21u)], true), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-501f, -576f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(392f, global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(30358u, 3u)], 31u)])))), vec4<i32>(u_input.b, u_input.c.x, u_input.c.x ^ 2147483647i, -23638i), 207i)));
    let var_1 = vec4<f32>(279f, _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(73199u, 31u)]), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-603f, _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 3u)] ^ 52709u, 31u)]))), 315f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-926f * 870f)));
    var var_2 = func_5(reverseBits(var_0.yy), func_4(_wgslsmith_clamp_vec2_i32(func_1(select(vec4<bool>(global0[_wgslsmith_index_u32(0u, 21u)], global0[_wgslsmith_index_u32(40897u, 21u)], false, true), vec4<bool>(global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(13497u, 3u)], 21u)], false, false, global0[_wgslsmith_index_u32(u_input.d, 21u)]), global0[_wgslsmith_index_u32(52832u, 21u)]), _wgslsmith_f_op_vec2_f32(var_1.zw * vec2<f32>(1000f, 1854f)), vec4<i32>(u_input.c.x, -46853i, 0i, var_0.x), var_0.x).zz, ~u_input.c | var_0.xy, vec2<i32>(func_2(2147483647i), u_input.b)), vec4<bool>(global0[_wgslsmith_index_u32(81261u, 21u)], true, any(vec2<bool>(true, true)) == global0[_wgslsmith_index_u32(abs(20015u), 21u)], true), Struct_1(~_wgslsmith_div_i32(-2147483647i, 1i)), Struct_1(_wgslsmith_div_i32(_wgslsmith_mod_i32(u_input.b, 50156i), var_0.x))), true, Struct_1(func_3(Struct_1(u_input.b), u_input.c)));
    var_2 = func_5(u_input.c, u_input.c, select(!all(select(vec4<bool>(false, global0[_wgslsmith_index_u32(0u, 21u)], global0[_wgslsmith_index_u32(u_input.a.x, 21u)], false), vec4<bool>(false, global0[_wgslsmith_index_u32(1u, 21u)], global0[_wgslsmith_index_u32(u_input.d, 21u)], false), false)), true, !any(vec4<bool>(global0[_wgslsmith_index_u32(0u, 21u)], false, false, global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(39582u, 3u)], 21u)]))), Struct_1(-1i));
    var var_3 = func_5(firstTrailingBit(vec2<i32>(0i & -u_input.b, -(~(-6242i)))), vec2<i32>(-1266i, -2147483647i), global0[_wgslsmith_index_u32(~(~_wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(u_input.a, u_input.a), ~1u, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, global2[_wgslsmith_index_u32(1u, 3u)], 1u), vec3<u32>(45182u, u_input.d, u_input.a.x)))), 21u)], Struct_1(var_0.x));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(~(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, global2[_wgslsmith_index_u32(41227u, 3u)], global2[_wgslsmith_index_u32(u_input.d, 3u)]), vec3<u32>(u_input.a.x, 5812u, global2[_wgslsmith_index_u32(0u, 3u)])), 3u)] << (~26516u % 32u))), (_wgslsmith_mod_vec3_i32(countOneBits(vec3<i32>(var_3.a, 0i, var_3.a)), -vec3<i32>(9808i, u_input.b, var_2.a)) ^ _wgslsmith_mod_vec3_i32(abs(vec3<i32>(-9396i, -39121i, var_2.a)), vec3<i32>(var_0.x, u_input.b, -28825i) & vec3<i32>(0i, var_2.a, u_input.c.x))) << (~(~abs(vec3<u32>(77773u, 41038u, global2[_wgslsmith_index_u32(1u, 3u)]))) % vec3<u32>(32u)), vec3<i32>(func_4(firstTrailingBit(u_input.c ^ var_0.yy), vec4<bool>(global0[_wgslsmith_index_u32(0u, 21u)], true, global0[_wgslsmith_index_u32(1u, 21u)], global0[_wgslsmith_index_u32(0u, 21u)] || global0[_wgslsmith_index_u32(18641u, 21u)]), func_5(-vec2<i32>(var_2.a, 2147483647i), vec2<i32>(var_3.a, -2147483647i) << (vec2<u32>(0u, 8951u) % vec2<u32>(32u)), !global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.e, 3u)], 21u)], Struct_1(-1i)), Struct_1(9997i)).x, var_0.x, _wgslsmith_mult_i32(-11511i, min(-1i, var_3.a))), select(max(vec3<u32>(0u, 0u, global2[_wgslsmith_index_u32(4294967295u, 3u)]) ^ countOneBits(vec3<u32>(25143u, 0u, global2[_wgslsmith_index_u32(51971u, 3u)])), reverseBits(~vec3<u32>(4294967295u, u_input.e, global2[_wgslsmith_index_u32(0u, 3u)]))), ~_wgslsmith_mod_vec3_u32(vec3<u32>(73332u, 14043u, global2[_wgslsmith_index_u32(27279u, 3u)]) ^ vec3<u32>(1u, global2[_wgslsmith_index_u32(0u, 3u)], u_input.d), reverseBits(vec3<u32>(37137u, u_input.e, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(31166u, 3u)], 3u)]))), global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(abs(vec3<u32>(global2[_wgslsmith_index_u32(1u, 3u)], 1u, u_input.e)), countOneBits(vec3<u32>(global2[_wgslsmith_index_u32(0u, 3u)], u_input.d, global2[_wgslsmith_index_u32(1u, 3u)]))), 21u)]));
}


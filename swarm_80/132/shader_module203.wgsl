struct Struct_1 {
    a: i32,
    b: f32,
    c: i32,
    d: i32,
    e: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
    d: vec2<i32>,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: vec3<f32>,
    d: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec4<u32>,
    d: vec4<i32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<f32>,
    c: i32,
    d: u32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 12> = array<Struct_2, 12>(Struct_2(Struct_1(-10050i, 835f, 1i, 23374i, vec4<u32>(4294967295u, 4294967295u, 1u, 50736u)), Struct_1(i32(-2147483648), -1988f, 53122i, 1i, vec4<u32>(24683u, 18443u, 4294967295u, 4294967295u)), 792f, vec2<i32>(348i, -18470i), Struct_1(2147483647i, 1243f, -16442i, -3204i, vec4<u32>(7152u, 42311u, 10496u, 0u))), Struct_2(Struct_1(i32(-2147483648), -1304f, -1i, 1i, vec4<u32>(2230u, 4294967295u, 4294967295u, 1u)), Struct_1(1292i, 1410f, -11605i, i32(-2147483648), vec4<u32>(56112u, 0u, 47071u, 1419u)), 491f, vec2<i32>(-10078i, 0i), Struct_1(34265i, 900f, 55119i, 0i, vec4<u32>(1u, 40970u, 4294967295u, 0u))), Struct_2(Struct_1(2147483647i, -144f, 31040i, 275i, vec4<u32>(4294967295u, 6402u, 0u, 0u)), Struct_1(-14161i, 1157f, 70692i, 2147483647i, vec4<u32>(47499u, 159630u, 4294967295u, 4294967295u)), 1137f, vec2<i32>(308i, 33236i), Struct_1(-15170i, -1596f, i32(-2147483648), -60884i, vec4<u32>(4318u, 1u, 14565u, 0u))), Struct_2(Struct_1(1i, -1538f, -36210i, -26863i, vec4<u32>(4294967295u, 0u, 12778u, 0u)), Struct_1(-1i, 1764f, -1i, -18253i, vec4<u32>(44879u, 23428u, 0u, 4294967295u)), -1062f, vec2<i32>(1i, -17340i), Struct_1(19308i, -330f, -2354i, 0i, vec4<u32>(46382u, 247u, 4294967295u, 4294967295u))), Struct_2(Struct_1(-2311i, -254f, 0i, 39281i, vec4<u32>(12749u, 38919u, 0u, 40745u)), Struct_1(i32(-2147483648), -403f, 1i, 1i, vec4<u32>(1u, 17978u, 62940u, 1u)), -1883f, vec2<i32>(-2069i, -54978i), Struct_1(i32(-2147483648), 1670f, 16620i, -65202i, vec4<u32>(5930u, 46931u, 4294967295u, 42351u))), Struct_2(Struct_1(0i, -345f, -39542i, -1i, vec4<u32>(0u, 1u, 16976u, 1u)), Struct_1(i32(-2147483648), 1000f, 5363i, 2147483647i, vec4<u32>(26828u, 42170u, 9928u, 1u)), -1274f, vec2<i32>(-14665i, 0i), Struct_1(-1i, 1228f, i32(-2147483648), -1i, vec4<u32>(111920u, 33885u, 53563u, 0u))), Struct_2(Struct_1(34797i, -2122f, 2147483647i, 1i, vec4<u32>(4294967295u, 1u, 0u, 69517u)), Struct_1(-50340i, 1000f, -1100i, 7312i, vec4<u32>(92375u, 1979u, 0u, 13212u)), -2267f, vec2<i32>(12678i, -18185i), Struct_1(26380i, -544f, 0i, 2729i, vec4<u32>(15531u, 29000u, 0u, 4294967295u))), Struct_2(Struct_1(-5124i, -1000f, 11438i, 0i, vec4<u32>(4294967295u, 90569u, 4294967295u, 4294967295u)), Struct_1(-1i, -161f, i32(-2147483648), i32(-2147483648), vec4<u32>(58199u, 4294967295u, 52356u, 1u)), 1818f, vec2<i32>(0i, -1i), Struct_1(23089i, -450f, 25054i, 64590i, vec4<u32>(20752u, 1978u, 53433u, 27514u))), Struct_2(Struct_1(2147483647i, -1195f, -1i, -38302i, vec4<u32>(26425u, 1u, 0u, 20648u)), Struct_1(0i, 128f, 29386i, 10699i, vec4<u32>(17229u, 1082u, 38089u, 36419u)), 706f, vec2<i32>(-1i, -13777i), Struct_1(1i, -679f, 0i, 1992i, vec4<u32>(0u, 0u, 17166u, 38904u))), Struct_2(Struct_1(2147483647i, 285f, 0i, -26096i, vec4<u32>(56218u, 1u, 0u, 0u)), Struct_1(1i, 133f, 2147483647i, -658i, vec4<u32>(1u, 22479u, 54976u, 7923u)), -1988f, vec2<i32>(-9116i, 5783i), Struct_1(28727i, 889f, -1i, i32(-2147483648), vec4<u32>(0u, 0u, 1u, 0u))), Struct_2(Struct_1(0i, 2570f, i32(-2147483648), -1i, vec4<u32>(0u, 1u, 39874u, 22158u)), Struct_1(5900i, -1000f, 12033i, 0i, vec4<u32>(1u, 48939u, 81274u, 0u)), 371f, vec2<i32>(-1i, -24351i), Struct_1(2147483647i, -2271f, -14120i, 41077i, vec4<u32>(27903u, 4294967295u, 1u, 41001u))), Struct_2(Struct_1(1i, 777f, 26471i, 1i, vec4<u32>(7341u, 1u, 30388u, 38747u)), Struct_1(26062i, -1000f, 2147483647i, 0i, vec4<u32>(1u, 53670u, 19003u, 36900u)), 893f, vec2<i32>(0i, 45462i), Struct_1(-1i, -114f, 2147483647i, -11115i, vec4<u32>(82584u, 1u, 63559u, 3215u))));

var<private> global1: i32;

var<private> global2: array<u32, 12> = array<u32, 12>(13713u, 44423u, 27158u, 1u, 0u, 4294967295u, 0u, 189u, 4294967295u, 42174u, 1u, 47440u);

var<private> global3: u32 = 35233u;

var<private> global4: array<bool, 11>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: f32, arg_1: Struct_2, arg_2: u32) -> vec2<i32> {
    global1 = -12903i & firstTrailingBit(_wgslsmith_clamp_i32(-(~24125i), u_input.b.x, min(arg_1.b.c, u_input.b.x) | (arg_1.b.a | u_input.d.x)));
    let var_0 = 1865f;
    global2 = array<u32, 12>();
    global1 = reverseBits(u_input.d.x & arg_1.d.x);
    let var_1 = Struct_3(global0[_wgslsmith_index_u32(~(~arg_2), 12u)], arg_1, vec3<f32>(-227f, arg_0, _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-1838f, _wgslsmith_f_op_f32(step(arg_0, 1000f)))), arg_1.a.b)), u_input.d.x);
    return min(vec2<i32>(arg_1.d.x, _wgslsmith_dot_vec3_i32(abs(u_input.d.yzx), _wgslsmith_sub_vec3_i32(u_input.d.zxz, vec3<i32>(-2147483647i, var_1.d, arg_1.b.d)))) << (~_wgslsmith_div_vec2_u32(vec2<u32>(1u, 0u), arg_1.b.e.zx) % vec2<u32>(32u)), ~(-min(vec2<i32>(arg_1.a.c, 2147483647i), vec2<i32>(u_input.b.x, 2147483647i))));
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_2(Struct_1(u_input.d.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -529f) * -452f) + _wgslsmith_f_op_f32(f32(-1f) * -427f)), _wgslsmith_mult_i32(countOneBits(u_input.d.x) | (-23542i ^ u_input.d.x), -1i), u_input.d.x, _wgslsmith_div_vec4_u32(~u_input.e, u_input.e ^ u_input.e) & vec4<u32>(~global2[_wgslsmith_index_u32(66002u, 12u)], max(u_input.a, 42315u), max(52594u, 413u), ~u_input.c.x)), Struct_1(i32(-1i) * -37951i, _wgslsmith_f_op_f32(1027f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -486f) * 1000f)), ~u_input.b.x & u_input.d.x, u_input.b.x, ~(~vec4<u32>(4294967295u, 96346u, u_input.e.x, u_input.e.x) >> (select(u_input.e, vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.c.x, 12u)], 12u)], 12u)], 1u, 1u, 54977u), false) % vec4<u32>(32u)))), _wgslsmith_f_op_f32(-451f - -2172f), ~func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1423f))), Struct_2(Struct_1(0i, 827f, 2147483647i, u_input.b.x, vec4<u32>(global2[_wgslsmith_index_u32(1u, 12u)], global2[_wgslsmith_index_u32(u_input.a, 12u)], global2[_wgslsmith_index_u32(u_input.a, 12u)], 0u)), Struct_1(u_input.b.x, -393f, -25827i, u_input.d.x, vec4<u32>(u_input.e.x, 0u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.c.x, 12u)], 12u)], 12u)], 0u)), _wgslsmith_f_op_f32(f32(-1f) * -598f), vec2<i32>(2147483647i, u_input.b.x), Struct_1(1i, 859f, -389i, u_input.b.x, u_input.e)), 1u), Struct_1(_wgslsmith_div_i32(_wgslsmith_mod_i32(1i, -2147483647i), u_input.d.x) | abs(0i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(-1132f)))) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -808f), -315f))), u_input.b.x, _wgslsmith_sub_i32(~u_input.b.x, u_input.d.x) ^ ~(~u_input.d.x), min(abs(countOneBits(u_input.c)), vec4<u32>(1u, 1u | global2[_wgslsmith_index_u32(1u, 12u)], 22956u, global2[_wgslsmith_index_u32(~36424u, 12u)]))));
    var var_1 = global4[_wgslsmith_index_u32(1u, 11u)];
    let var_2 = select(!(!select(select(vec2<bool>(global4[_wgslsmith_index_u32(1u, 11u)], false), vec2<bool>(false, global4[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 12u)], 11u)]), global4[_wgslsmith_index_u32(4294967295u, 11u)]), vec2<bool>(true, false), true)), select(select(select(!vec2<bool>(global4[_wgslsmith_index_u32(57953u, 11u)], global4[_wgslsmith_index_u32(u_input.a, 11u)]), !vec2<bool>(global4[_wgslsmith_index_u32(u_input.e.x, 11u)], false), true), select(!vec2<bool>(global4[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.c.x, 12u)], 11u)], false), vec2<bool>(global4[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(var_0.b.e.x, 12u)], 11u)], global4[_wgslsmith_index_u32(u_input.c.x, 11u)]), !global4[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.c.x, 12u)], 11u)]), global4[_wgslsmith_index_u32(1u, 11u)]), select(select(vec2<bool>(global4[_wgslsmith_index_u32(var_0.e.e.x, 11u)], false), select(vec2<bool>(false, global4[_wgslsmith_index_u32(50182u, 11u)]), vec2<bool>(false, global4[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(22833u, 12u)], 11u)]), true), !global4[_wgslsmith_index_u32(u_input.a, 11u)]), select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(global4[_wgslsmith_index_u32(1u, 11u)], global4[_wgslsmith_index_u32(u_input.c.x, 11u)])), !(!vec2<bool>(global4[_wgslsmith_index_u32(3787u, 11u)], true))), true), vec2<bool>(!((var_0.a.b != var_0.c) | global4[_wgslsmith_index_u32(0u, 11u)]), true));
    var var_3 = var_0.b;
    global0 = array<Struct_2, 12>();
    return Struct_1((-u_input.b.x << (var_3.e.x % 32u)) & 28157i, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(var_3.b)))), firstTrailingBit(_wgslsmith_sub_i32(var_3.d, var_0.d.x)), ~(i32(-1i) * -(var_0.d.x & 1i)), ~var_3.e);
}

fn func_1(arg_0: f32, arg_1: i32) -> u32 {
    let var_0 = vec4<u32>(4294967295u, 44684u, u_input.e.x, 0u);
    global0 = array<Struct_2, 12>();
    let var_1 = Struct_2(func_2(), Struct_1(_wgslsmith_mod_i32(-firstTrailingBit(arg_1), 0i), _wgslsmith_f_op_f32(abs(arg_0)), ~(i32(-1i) * -arg_1), u_input.d.x, _wgslsmith_add_vec4_u32(vec4<u32>(47902u, 0u, abs(global2[_wgslsmith_index_u32(u_input.a, 12u)]), _wgslsmith_sub_u32(var_0.x, 49336u)), u_input.e)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_0, _wgslsmith_f_op_f32(-arg_0)))) - arg_0), u_input.d.zz, func_2());
    global3 = func_2().e.x;
    global3 = ~(60350u >> (_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(var_1.a.e.yx, reverseBits(u_input.c.zy)), u_input.e.zz) % 32u));
    return 52412u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = abs(~reverseBits(u_input.e.x ^ 17925u));
    var_0 = u_input.e.x;
    var_0 = _wgslsmith_sub_u32(~((u_input.e.x & global2[_wgslsmith_index_u32(1u, 12u)]) | _wgslsmith_div_u32(6066u, ~u_input.c.x)), ~1u);
    global3 = ~_wgslsmith_mod_u32(global2[_wgslsmith_index_u32(4294967295u & max(27401u, firstTrailingBit(global2[_wgslsmith_index_u32(5687u, 12u)])), 12u)], 17087u);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(829f + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(2154f * 1252f)))))));
    let var_2 = vec3<u32>(_wgslsmith_div_u32(global2[_wgslsmith_index_u32(func_1(1123f, 25080i), 12u)], _wgslsmith_mod_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(u_input.c, u_input.e), 4294967295u), ~abs(27414u))), ~(~firstTrailingBit(global2[_wgslsmith_index_u32(u_input.e.x, 12u)])), _wgslsmith_add_u32(global2[_wgslsmith_index_u32(firstTrailingBit(select(u_input.a, 40374u, true)), 12u)], ~firstTrailingBit(4294967295u)));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mult_vec3_u32(abs(vec3<u32>(var_2.x, global2[_wgslsmith_index_u32(u_input.a, 12u)], 0u)), var_2), _wgslsmith_f_op_vec3_f32(-vec3<f32>(281f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1 * var_1) * _wgslsmith_div_f32(var_1, 3740f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(var_1)), _wgslsmith_f_op_f32(f32(-1f) * -2066f)))), _wgslsmith_mod_i32(-(~u_input.d.x | -1i), firstTrailingBit(-2147483647i)), _wgslsmith_div_u32(~countOneBits(reverseBits(global2[_wgslsmith_index_u32(u_input.a, 12u)])), _wgslsmith_div_u32(4294967295u, 1u)), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1160f + var_1)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1, var_1) + 738f), _wgslsmith_f_op_f32(f32(-1f) * -652f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(exp2(var_1)))))));
}


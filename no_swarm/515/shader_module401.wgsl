struct Struct_1 {
    a: vec3<i32>,
    b: vec4<f32>,
    c: f32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: bool,
    c: u32,
    d: bool,
    e: vec4<i32>,
}

struct Struct_3 {
    a: i32,
    b: f32,
    c: bool,
}

struct Struct_4 {
    a: Struct_2,
    b: f32,
    c: f32,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<bool, 26> = array<bool, 26>(false, false, true, true, false, false, false, false, false, true, false, true, false, false, false, true, false, true, false, false, false, false, false, false, false, false);

var<private> global2: array<i32, 21>;

var<private> global3: array<Struct_2, 17>;

var<private> global4: array<Struct_2, 27> = array<Struct_2, 27>(Struct_2(vec4<bool>(true, true, true, false), true, 72684u, false, vec4<i32>(1i, -42119i, -1i, 1i)), Struct_2(vec4<bool>(true, true, true, true), true, 4294967295u, false, vec4<i32>(-20914i, 66447i, -17554i, 1i)), Struct_2(vec4<bool>(false, false, false, false), false, 4294967295u, true, vec4<i32>(-2243i, i32(-2147483648), i32(-2147483648), -1i)), Struct_2(vec4<bool>(true, false, false, false), true, 59862u, true, vec4<i32>(-18548i, 25088i, 22994i, 22462i)), Struct_2(vec4<bool>(false, true, true, false), false, 1u, true, vec4<i32>(1i, -59518i, 19473i, 28640i)), Struct_2(vec4<bool>(false, true, true, false), true, 94867u, true, vec4<i32>(-40690i, -1i, 42761i, 2147483647i)), Struct_2(vec4<bool>(true, true, false, false), false, 4294967295u, true, vec4<i32>(2147483647i, i32(-2147483648), 16922i, i32(-2147483648))), Struct_2(vec4<bool>(false, false, false, false), false, 70241u, true, vec4<i32>(1i, -22016i, 1i, 666i)), Struct_2(vec4<bool>(true, false, true, false), false, 4294967295u, true, vec4<i32>(-1i, -38978i, 11935i, 1i)), Struct_2(vec4<bool>(false, false, false, true), true, 3787u, true, vec4<i32>(2147483647i, 1i, i32(-2147483648), -1447i)), Struct_2(vec4<bool>(false, true, true, false), true, 76260u, true, vec4<i32>(i32(-2147483648), -7986i, 0i, -5254i)), Struct_2(vec4<bool>(false, false, true, false), false, 55742u, true, vec4<i32>(-50847i, -3078i, 2147483647i, -23290i)), Struct_2(vec4<bool>(true, false, true, false), false, 4294967295u, true, vec4<i32>(63031i, -39276i, 19560i, i32(-2147483648))), Struct_2(vec4<bool>(true, true, true, true), true, 67012u, true, vec4<i32>(28999i, 45648i, 2147483647i, 7069i)), Struct_2(vec4<bool>(true, false, false, true), false, 178u, true, vec4<i32>(0i, -43763i, 56102i, -13717i)), Struct_2(vec4<bool>(true, false, true, true), false, 39716u, true, vec4<i32>(16963i, -1i, 1i, 41628i)), Struct_2(vec4<bool>(true, false, true, false), false, 0u, true, vec4<i32>(-1i, 20655i, -70447i, 2063i)), Struct_2(vec4<bool>(false, false, false, true), false, 1u, true, vec4<i32>(-36086i, 23091i, -1i, i32(-2147483648))), Struct_2(vec4<bool>(false, false, true, true), false, 4294967295u, true, vec4<i32>(696i, -1601i, -5720i, 26777i)), Struct_2(vec4<bool>(false, true, false, true), false, 1u, false, vec4<i32>(54590i, 39535i, 1i, 2147483647i)), Struct_2(vec4<bool>(true, true, true, true), false, 86782u, true, vec4<i32>(i32(-2147483648), -1i, 1i, i32(-2147483648))), Struct_2(vec4<bool>(false, false, true, false), false, 42761u, false, vec4<i32>(0i, -1i, 75464i, 14021i)), Struct_2(vec4<bool>(true, true, false, true), false, 17482u, true, vec4<i32>(1i, 1i, 0i, -34148i)), Struct_2(vec4<bool>(true, true, true, false), true, 0u, true, vec4<i32>(-1i, -27756i, -22110i, 1249i)), Struct_2(vec4<bool>(true, false, true, false), false, 4294967295u, true, vec4<i32>(19391i, 2147483647i, -16625i, 39758i)), Struct_2(vec4<bool>(false, false, false, false), false, 1u, true, vec4<i32>(-10301i, -25602i, i32(-2147483648), 0i)), Struct_2(vec4<bool>(true, true, false, true), true, 0u, false, vec4<i32>(43222i, i32(-2147483648), -10575i, -27031i)));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: bool, arg_1: vec2<i32>, arg_2: vec4<i32>, arg_3: vec2<bool>) -> u32 {
    global1 = array<bool, 26>();
    global2 = array<i32, 21>();
    var var_0 = Struct_2(select(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, arg_0, false, arg_3.x), arg_3.x), !(!vec4<bool>(arg_3.x, false, true, false)), false), !global1[_wgslsmith_index_u32(firstTrailingBit(u_input.b), 26u)], _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(~(~vec3<u32>(u_input.a.x, u_input.a.x, u_input.b)), ~vec3<u32>(0u, 55923u, 1u)), ~_wgslsmith_mult_u32(min(19199u, 10139u), min(u_input.a.x, 63410u))), arg_3.x, arg_2);
    var var_1 = Struct_4(Struct_2(var_0.a, any(select(var_0.a.xzz, vec3<bool>(true, global1[_wgslsmith_index_u32(11820u, 26u)], true), vec3<bool>(true, var_0.a.x, var_0.d))), var_0.c, true, _wgslsmith_mod_vec4_i32(vec4<i32>(i32(-1i) * -54850i, global2[_wgslsmith_index_u32(max(13342u, u_input.c), 21u)], -9974i, 2147483647i << (var_0.c % 32u)), -(~var_0.e))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1000f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1337f + -621f) + _wgslsmith_div_f32(_wgslsmith_div_f32(1257f, -1848f), _wgslsmith_div_f32(-594f, 226f))))), -729f, select(vec3<bool>(all(!vec2<bool>(var_0.a.x, arg_0)), true, -872f < _wgslsmith_f_op_f32(floor(393f))), vec3<bool>(all(var_0.a), false, all(!vec2<bool>(false, var_0.a.x))), select(vec3<bool>(true, true, true), select(var_0.a.yzz, !var_0.a.ywy, true), var_0.a.yzz)));
    let var_2 = Struct_4(var_1.a, _wgslsmith_f_op_f32(-var_1.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.c)) - _wgslsmith_f_op_f32(1240f * _wgslsmith_f_op_f32(min(-210f, var_1.c))))), !vec3<bool>(!(false | arg_3.x), true, false));
    return 1u;
}

fn func_2() -> vec3<bool> {
    let var_0 = Struct_3(-_wgslsmith_add_i32(17590i, 0i) >> (_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 0u, 0u, 22309u), ~u_input.a), _wgslsmith_add_u32(1u, func_3(true, vec2<i32>(global2[_wgslsmith_index_u32(u_input.a.x, 21u)], global2[_wgslsmith_index_u32(24054u, 21u)]), vec4<i32>(2147483647i, global2[_wgslsmith_index_u32(1u, 21u)], global2[_wgslsmith_index_u32(u_input.a.x, 21u)], -2147483647i), vec2<bool>(false, global1[_wgslsmith_index_u32(u_input.c, 26u)])))) % 32u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1000f, 1146f))), all(select(select(!vec4<bool>(true, false, global1[_wgslsmith_index_u32(4294967295u, 26u)], false), vec4<bool>(false, false, false, false), false), vec4<bool>(global1[_wgslsmith_index_u32(0u, 26u)], any(vec4<bool>(false, false, global1[_wgslsmith_index_u32(2078u, 26u)], global1[_wgslsmith_index_u32(3884u, 26u)])), !global1[_wgslsmith_index_u32(62075u, 26u)], true), !vec4<bool>(false, false, global1[_wgslsmith_index_u32(1u, 26u)], global1[_wgslsmith_index_u32(u_input.c, 26u)]))));
    global3 = array<Struct_2, 17>();
    global2 = array<i32, 21>();
    global0 = !global1[_wgslsmith_index_u32(max(_wgslsmith_mult_u32(u_input.c, ~u_input.c) >> (_wgslsmith_mod_u32(~u_input.b, u_input.c) % 32u), ~u_input.a.x), 26u)];
    var var_1 = _wgslsmith_add_vec2_i32(~vec2<i32>(max(2147483647i, i32(-1i) * -39130i), var_0.a), vec2<i32>(var_0.a, -32577i));
    return select(!select(!vec3<bool>(false, global1[_wgslsmith_index_u32(1u, 26u)], false), !vec3<bool>(var_0.c, false, var_0.c), vec3<bool>(global1[_wgslsmith_index_u32(func_3(false, vec2<i32>(global2[_wgslsmith_index_u32(u_input.b, 21u)], -59643i), vec4<i32>(-27261i, global2[_wgslsmith_index_u32(15478u, 21u)], 2147483647i, 1i), vec2<bool>(false, var_0.c)), 26u)], false, var_0.c)), vec3<bool>(!(!all(vec2<bool>(true, var_0.c))), any(vec2<bool>(true, true)), true), any(select(!vec3<bool>(true, true, global1[_wgslsmith_index_u32(u_input.b, 26u)]), vec3<bool>(false, true, var_0.c), select(vec3<bool>(true, true, var_0.c), vec3<bool>(global1[_wgslsmith_index_u32(u_input.b, 26u)], global1[_wgslsmith_index_u32(u_input.b, 26u)], false), false))) & all(!select(vec2<bool>(global1[_wgslsmith_index_u32(14162u, 26u)], global1[_wgslsmith_index_u32(1u, 26u)]), vec2<bool>(false, var_0.c), vec2<bool>(var_0.c, global1[_wgslsmith_index_u32(u_input.c, 26u)]))));
}

fn func_1(arg_0: f32, arg_1: Struct_2) -> bool {
    var var_0 = Struct_2(!arg_1.a, any(func_2()), arg_1.c, all(!(!arg_1.a.yxw)) & any(vec4<bool>(true, select(true, true, arg_1.b), true, !global1[_wgslsmith_index_u32(u_input.c, 26u)])), arg_1.e);
    let var_1 = -(~global2[_wgslsmith_index_u32(var_0.c, 21u)]);
    var var_2 = Struct_3(max(-(-1i ^ arg_1.e.x), ~10235i), -210f, !any(!var_0.a.yz));
    let var_3 = ~15048i;
    let var_4 = _wgslsmith_clamp_i32(_wgslsmith_sub_i32(global2[_wgslsmith_index_u32(~(~0u), 21u)], reverseBits(var_3)), reverseBits(-11870i), -1i);
    return (-abs(_wgslsmith_mod_i32(6114i, 2147483647i)) >> (firstTrailingBit(_wgslsmith_mod_u32(var_0.c, arg_1.c)) % 32u)) < 0i;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = !select(func_1(_wgslsmith_f_op_f32(508f * _wgslsmith_f_op_f32(abs(-1268f))), Struct_2(!vec4<bool>(global1[_wgslsmith_index_u32(26034u, 26u)], true, global1[_wgslsmith_index_u32(u_input.a.x, 26u)], global1[_wgslsmith_index_u32(u_input.a.x, 26u)]), all(vec3<bool>(false, false, global1[_wgslsmith_index_u32(u_input.a.x, 26u)])), u_input.b, true, -vec4<i32>(-1i, 67079i, -38092i, global2[_wgslsmith_index_u32(40735u, 21u)]))), all(vec4<bool>(any(vec2<bool>(global1[_wgslsmith_index_u32(u_input.b, 26u)], global1[_wgslsmith_index_u32(0u, 26u)])), global2[_wgslsmith_index_u32(u_input.b, 21u)] < global2[_wgslsmith_index_u32(0u, 21u)], global2[_wgslsmith_index_u32(15001u, 21u)] > global2[_wgslsmith_index_u32(u_input.a.x, 21u)], any(vec3<bool>(global1[_wgslsmith_index_u32(u_input.b, 26u)], global1[_wgslsmith_index_u32(11154u, 26u)], false)))), !func_1(650f, Struct_2(vec4<bool>(global1[_wgslsmith_index_u32(45672u, 26u)], global1[_wgslsmith_index_u32(u_input.a.x, 26u)], false, true), global1[_wgslsmith_index_u32(10050u, 26u)], 62465u, false, vec4<i32>(-21644i, global2[_wgslsmith_index_u32(1u, 21u)], global2[_wgslsmith_index_u32(u_input.a.x, 21u)], global2[_wgslsmith_index_u32(u_input.c, 21u)]))));
    global1 = array<bool, 26>();
    var var_0 = min(vec3<i32>(1i, firstTrailingBit(-1i), min(global2[_wgslsmith_index_u32(~min(u_input.a.x, u_input.a.x), 21u)], _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, global2[_wgslsmith_index_u32(20731u, 21u)]) ^ vec2<i32>(global2[_wgslsmith_index_u32(1u, 21u)], global2[_wgslsmith_index_u32(u_input.b, 21u)]), vec2<i32>(-3818i, -1i) << (vec2<u32>(u_input.b, u_input.a.x) % vec2<u32>(32u))))), vec3<i32>(_wgslsmith_div_i32(reverseBits(global2[_wgslsmith_index_u32(u_input.a.x ^ 6426u, 21u)]), global2[_wgslsmith_index_u32(~1u, 21u)] | 1i), -2147483647i, 1i));
    var var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(592f, _wgslsmith_f_op_f32(-1060f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-219f))))) + vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-591f, 633f, false)), _wgslsmith_f_op_f32(-375f - -1122f))), 793f));
    global3 = array<Struct_2, 17>();
    var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-var_1.x), 728f)))));
    let var_2 = Struct_3(abs(-global2[_wgslsmith_index_u32(select(20503u, u_input.c, true), 21u)]) | -_wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(global2[_wgslsmith_index_u32(40992u, 21u)], global2[_wgslsmith_index_u32(6500u, 21u)]), var_0.yy), firstTrailingBit(var_0.yy)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x + var_1.x))) - var_1.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1334f))) - _wgslsmith_f_op_f32(trunc(1f))) >= -1888f);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(u_input.c, ~reverseBits(u_input.a.x)), vec4<i32>(var_2.a & 2147483647i, _wgslsmith_add_i32(var_2.a, global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(56748u, _wgslsmith_div_u32(u_input.a.x, 29799u)), 21u)]), _wgslsmith_mult_i32(-_wgslsmith_sub_i32(-1i, -4701i), _wgslsmith_add_i32(_wgslsmith_add_i32(12505i, var_0.x), global2[_wgslsmith_index_u32(~u_input.a.x, 21u)])), -49081i), 4294967295u);
}


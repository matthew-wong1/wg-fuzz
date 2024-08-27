struct Struct_1 {
    a: vec4<u32>,
    b: u32,
    c: bool,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 9> = array<Struct_1, 9>(Struct_1(vec4<u32>(65999u, 20862u, 4294967295u, 0u), 0u, false), Struct_1(vec4<u32>(15165u, 1u, 4294967295u, 61013u), 38998u, false), Struct_1(vec4<u32>(32956u, 1u, 0u, 18477u), 38807u, true), Struct_1(vec4<u32>(4294967295u, 32301u, 1u, 4294967295u), 10406u, false), Struct_1(vec4<u32>(67340u, 1u, 61982u, 41897u), 1u, false), Struct_1(vec4<u32>(1u, 0u, 4294967295u, 4294967295u), 4294967295u, false), Struct_1(vec4<u32>(0u, 35993u, 1u, 21392u), 60139u, true), Struct_1(vec4<u32>(24817u, 1u, 4294967295u, 4294967295u), 0u, false), Struct_1(vec4<u32>(20194u, 0u, 6550u, 34461u), 4294967295u, false));

var<private> global1: array<f32, 19> = array<f32, 19>(-876f, 845f, -450f, 512f, -906f, -736f, 111f, -567f, -1000f, 430f, 394f, 160f, 574f, 189f, 543f, 762f, -134f, 1000f, -296f);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
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

fn func_1(arg_0: Struct_1, arg_1: f32) -> u32 {
    global1 = array<f32, 19>();
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1212f, arg_1, 318f) + vec3<f32>(-981f, global1[_wgslsmith_index_u32(15869u, 19u)], arg_1)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(202f, -1864f, global1[_wgslsmith_index_u32(4294967295u, 19u)]))))));
    return u_input.c;
}

fn func_2(arg_0: vec4<f32>) -> Struct_1 {
    var var_0 = u_input.c;
    var var_1 = _wgslsmith_div_f32(-2461f, 2395f);
    let var_2 = global0[_wgslsmith_index_u32(min(reverseBits(u_input.c), u_input.c), 9u)];
    let var_3 = _wgslsmith_sub_i32(_wgslsmith_clamp_i32(1i, _wgslsmith_mod_i32(u_input.a, -1i), u_input.a), _wgslsmith_sub_i32(~_wgslsmith_mod_i32(0i, 61857i), u_input.a));
    var var_4 = global0[_wgslsmith_index_u32(~(~42834u), 9u)];
    return global0[_wgslsmith_index_u32(1u, 9u)];
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: f32, arg_3: u32) -> u32 {
    global1 = array<f32, 19>();
    let var_0 = func_2(vec4<f32>(232f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_2))) + -645f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(-298f)))) - _wgslsmith_div_f32(arg_2, _wgslsmith_f_op_f32(f32(-1f) * -1336f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(1278f * -2219f))), arg_0.x))));
    let var_1 = -u_input.a;
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-134f * global1[_wgslsmith_index_u32(_wgslsmith_add_u32(~arg_3, 4294967295u), 19u)]) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1070f - global1[_wgslsmith_index_u32(var_0.b, 19u)]) + _wgslsmith_div_f32(arg_0.x, arg_2))))), _wgslsmith_f_op_f32(step(461f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.x, 381f)), _wgslsmith_f_op_f32(-arg_2), false)))), _wgslsmith_div_f32(arg_0.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(-893f))))));
    return ~0u;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32, arg_3: Struct_1) -> Struct_1 {
    global0 = array<Struct_1, 9>();
    global1 = array<f32, 19>();
    let var_0 = vec4<i32>(~_wgslsmith_mult_i32(-1i, abs(u_input.a ^ u_input.a)), -countOneBits(-countOneBits(u_input.a)), 55860i, _wgslsmith_mod_i32(arg_2, arg_2 >> (4294967295u % 32u)) ^ u_input.a);
    global0 = array<Struct_1, 9>();
    let var_1 = true;
    return Struct_1(arg_0.a, ~arg_1.a.x, false);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.b, u_input.c, ~21637u, func_1(Struct_1(vec4<u32>(4294967295u, u_input.c, 7304u, 87620u), 41456u, false), global1[_wgslsmith_index_u32(94264u, 19u)])), reverseBits(~(~vec4<u32>(u_input.c, 0u, u_input.c, u_input.c)))), 5141u, !(all(vec3<bool>(false, false, false)) || !(global1[_wgslsmith_index_u32(0u, 19u)] > global1[_wgslsmith_index_u32(u_input.c, 19u)])));
    let var_1 = ~firstTrailingBit(4294967295u);
    global0 = array<Struct_1, 9>();
    let var_2 = var_0;
    var var_3 = func_4(Struct_1(vec4<u32>(func_3(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1399f, 190f))), func_2(vec4<f32>(global1[_wgslsmith_index_u32(11255u, 19u)], global1[_wgslsmith_index_u32(u_input.c, 19u)], global1[_wgslsmith_index_u32(0u, 19u)], global1[_wgslsmith_index_u32(var_0.a.x, 19u)])), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(var_2.a.x, 19u)] * global1[_wgslsmith_index_u32(var_2.b, 19u)]), _wgslsmith_clamp_u32(var_2.b, 0u, 236u)), var_1, firstLeadingBit(1u) >> ((10997u | var_2.a.x) % 32u), 48034u), ~(~(~38265u)), var_2.c), func_2(vec4<f32>(global1[_wgslsmith_index_u32(4294967295u, 19u)], global1[_wgslsmith_index_u32(u_input.b, 19u)], global1[_wgslsmith_index_u32(_wgslsmith_add_u32(var_1, abs(u_input.b)), 19u)], global1[_wgslsmith_index_u32(18815u, 19u)])), -16177i, var_2);
    global1 = array<f32, 19>();
    var var_4 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -515f))), 417f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global1[_wgslsmith_index_u32(u_input.b, 19u)], global1[_wgslsmith_index_u32(var_0.a.x, 19u)], false)) - -241f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(1941f - 636f), -748f, -793f)), var_2.c)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1000f, -385f, 282f)))))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1[_wgslsmith_index_u32(9010u, 19u)], -2486f, -961f) - vec3<f32>(global1[_wgslsmith_index_u32(0u, 19u)], global1[_wgslsmith_index_u32(var_0.b, 19u)], global1[_wgslsmith_index_u32(var_2.b, 19u)])), vec3<f32>(201f, global1[_wgslsmith_index_u32(var_2.a.x, 19u)], global1[_wgslsmith_index_u32(1u, 19u)]))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1[_wgslsmith_index_u32(25673u, 19u)], global1[_wgslsmith_index_u32(u_input.b, 19u)], global1[_wgslsmith_index_u32(8301u, 19u)])) + _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(295f, global1[_wgslsmith_index_u32(u_input.b, 19u)], global1[_wgslsmith_index_u32(16421u, 19u)])))))));
    var var_5 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(var_3.b, 19u)], -896f, -219f, var_4.x))), vec4<f32>(global1[_wgslsmith_index_u32(func_4(global0[_wgslsmith_index_u32(var_0.a.x, 9u)], global0[_wgslsmith_index_u32(39081u, 9u)], -50303i, var_0).b, 19u)], _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(13532u, 19u)]), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(var_2.a.x, 19u)]), _wgslsmith_f_op_f32(-1000f - global1[_wgslsmith_index_u32(0u, 19u)])))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(1083f, -1000f, global1[_wgslsmith_index_u32(0u, 19u)], -730f), vec4<f32>(var_4.x, -1262f, -2278f, 470f))) + _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-424f, global1[_wgslsmith_index_u32(0u, 19u)], global1[_wgslsmith_index_u32(var_3.a.x, 19u)], var_4.x), vec4<f32>(var_4.x, -441f, var_4.x, var_4.x)))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1252f, _wgslsmith_f_op_f32(var_4.x + global1[_wgslsmith_index_u32(u_input.b, 19u)]), var_4.x, var_4.x)))));
    var_4 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1535f, -1000f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(-496f))))))) - vec3<f32>(1125f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_4.x, 1220f)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_5.x)) + global1[_wgslsmith_index_u32(func_3(vec2<f32>(var_5.x, global1[_wgslsmith_index_u32(35310u, 19u)]), global0[_wgslsmith_index_u32(11550u, 9u)], -561f, 12824u), 19u)])))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a);
}


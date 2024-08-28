struct Struct_1 {
    a: f32,
    b: vec2<i32>,
    c: u32,
    d: vec2<bool>,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec4<i32>,
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

var<private> global0: array<vec3<u32>, 18> = array<vec3<u32>, 18>(vec3<u32>(66220u, 1u, 0u), vec3<u32>(1u, 74064u, 4294967295u), vec3<u32>(0u, 12196u, 4294967295u), vec3<u32>(0u, 36681u, 29020u), vec3<u32>(944u, 0u, 4294967295u), vec3<u32>(1u, 21219u, 1u), vec3<u32>(64090u, 1u, 1u), vec3<u32>(0u, 54899u, 73296u), vec3<u32>(29279u, 58528u, 1u), vec3<u32>(4294967295u, 1u, 4294967295u), vec3<u32>(7196u, 53861u, 28819u), vec3<u32>(81085u, 4294967295u, 0u), vec3<u32>(7876u, 17052u, 43543u), vec3<u32>(58090u, 4294967295u, 57715u), vec3<u32>(58908u, 48262u, 1u), vec3<u32>(4294967295u, 1u, 0u), vec3<u32>(4294967295u, 0u, 1u), vec3<u32>(4294967295u, 37107u, 4674u));

var<private> global1: array<u32, 13> = array<u32, 13>(13330u, 16609u, 1u, 0u, 22641u, 16841u, 4294967295u, 20205u, 16573u, 4294967295u, 4294967295u, 1u, 0u);

var<private> global2: array<vec2<i32>, 31> = array<vec2<i32>, 31>(vec2<i32>(33348i, -22726i), vec2<i32>(21040i, 60398i), vec2<i32>(54303i, i32(-2147483648)), vec2<i32>(29145i, -4022i), vec2<i32>(-1i, 2147483647i), vec2<i32>(-17336i, -1i), vec2<i32>(-66023i, 1i), vec2<i32>(1i, 4760i), vec2<i32>(i32(-2147483648), 1i), vec2<i32>(0i, 1i), vec2<i32>(-1i, -15227i), vec2<i32>(1i, 2147483647i), vec2<i32>(-1i, -1703i), vec2<i32>(i32(-2147483648), 34210i), vec2<i32>(0i, 11325i), vec2<i32>(1i, 28482i), vec2<i32>(i32(-2147483648), -46672i), vec2<i32>(20291i, 9292i), vec2<i32>(-20543i, -43155i), vec2<i32>(1i, -95598i), vec2<i32>(15595i, -52059i), vec2<i32>(2147483647i, 76460i), vec2<i32>(-1i, 58302i), vec2<i32>(-1i, -15549i), vec2<i32>(i32(-2147483648), 2147483647i), vec2<i32>(45397i, i32(-2147483648)), vec2<i32>(15387i, 2147483647i), vec2<i32>(64510i, 38261i), vec2<i32>(-1339i, 31350i), vec2<i32>(-1i, 0i), vec2<i32>(49227i, i32(-2147483648)));

var<private> global3: bool;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3() -> u32 {
    global2 = array<vec2<i32>, 31>();
    let var_0 = Struct_1(-1207f, ~(-_wgslsmith_mod_vec2_i32(global2[_wgslsmith_index_u32(18534u >> (global1[_wgslsmith_index_u32(4294967295u, 13u)] % 32u), 31u)], u_input.c.yz | vec2<i32>(5938i, -11402i))), ~(~global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(u_input.a.x, 13u)], 13u)]), select(select(select(select(vec2<bool>(true, true), vec2<bool>(true, true), true), vec2<bool>(false, true), true), vec2<bool>(true, true), false), vec2<bool>(all(select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, false))), 4294967295u > ~global1[_wgslsmith_index_u32(29084u, 13u)]), select(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false)), vec2<bool>(true, true), false)), u_input.c);
    var var_1 = var_0;
    let var_2 = _wgslsmith_mod_vec3_u32(abs(global0[_wgslsmith_index_u32(var_0.c, 18u)] << (global0[_wgslsmith_index_u32(~_wgslsmith_mod_u32(var_0.c, u_input.a.x), 18u)] % vec3<u32>(32u))), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~firstLeadingBit(firstTrailingBit(vec4<u32>(var_1.c, 1u, 0u, var_0.c))), firstTrailingBit(_wgslsmith_add_vec4_u32(~vec4<u32>(var_1.c, u_input.a.x, 14420u, 1u), vec4<u32>(var_1.c, 66584u, var_0.c, 4294967295u)))), 18u)]);
    global0 = array<vec3<u32>, 18>();
    return reverseBits(4294967295u);
}

fn func_2(arg_0: vec4<u32>, arg_1: bool, arg_2: Struct_1, arg_3: vec2<i32>) -> vec2<i32> {
    global0 = array<vec3<u32>, 18>();
    let var_0 = ~(func_3() >> (max(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(countOneBits(62597u), ~arg_2.c), 13u)], _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), ~arg_0)) % 32u));
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(arg_2.a, arg_2.a), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2.a, arg_2.a) + vec2<f32>(arg_2.a, arg_2.a)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.a, -276f))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.a, arg_2.a)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(497f, arg_2.a)), vec2<bool>(false, arg_2.d.x))))));
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(max(-1054f, _wgslsmith_f_op_f32(round(-173f)))), 1898f);
    let var_3 = Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x + -725f) - arg_2.a))), _wgslsmith_div_f32(var_2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-945f + var_2.x) + _wgslsmith_f_op_f32(1000f - arg_2.a))))), -max(~(~global2[_wgslsmith_index_u32(arg_0.x, 31u)]), _wgslsmith_div_vec2_i32(global2[_wgslsmith_index_u32(~arg_0.x, 31u)], max(vec2<i32>(-1i, arg_2.b.x), vec2<i32>(-1i, u_input.c.x)))), ~(abs(_wgslsmith_dot_vec3_u32(arg_0.wwx, vec3<u32>(arg_0.x, u_input.a.x, 23590u))) << (func_3() % 32u)), vec2<bool>(all(select(!vec4<bool>(arg_2.d.x, arg_2.d.x, arg_1, arg_2.d.x), select(vec4<bool>(false, arg_2.d.x, false, false), vec4<bool>(true, false, arg_2.d.x, arg_1), vec4<bool>(arg_1, false, arg_2.d.x, true)), select(vec4<bool>(false, arg_1, true, true), vec4<bool>(true, false, false, arg_2.d.x), false))), arg_2.d.x), vec4<i32>(u_input.b >> ((_wgslsmith_div_u32(var_0, 68837u) | ~global1[_wgslsmith_index_u32(u_input.a.x, 13u)]) % 32u), -(~firstTrailingBit(-13518i)), select(reverseBits(-8289i << (arg_0.x % 32u)), firstTrailingBit(firstTrailingBit(arg_2.b.x)), arg_2.d.x), 1i));
    return vec2<i32>(-10530i, -1i);
}

fn func_1(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: vec2<f32>) -> f32 {
    var var_0 = arg_1.c;
    var_0 = ~(_wgslsmith_div_u32(~arg_1.c, 4294967295u) ^ ~firstLeadingBit(abs(global1[_wgslsmith_index_u32(u_input.a.x, 13u)])));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(-1904f, -784f, true))))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(-589f)))))))), func_2(countOneBits(vec4<u32>(1u, arg_1.c, min(0u, u_input.a.x), 24782u)), any(arg_1.d), arg_1, vec2<i32>(1i, -9852i)), reverseBits(~(~(arg_1.c >> (4294967295u % 32u)))), vec2<bool>(true, !all(!vec4<bool>(false, arg_1.d.x, arg_1.d.x, arg_1.d.x))), -arg_1.e);
    let var_2 = arg_2;
    return -316f;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<u32>, 18>();
    var var_0 = _wgslsmith_f_op_f32(-160f - _wgslsmith_f_op_f32(_wgslsmith_div_f32(436f, 544f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(vec3<f32>(849f, 394f, 927f), Struct_1(-1239f, vec2<i32>(-36387i, u_input.c.x), 4294967295u, vec2<bool>(false, true), vec4<i32>(u_input.b, u_input.c.x, 2147483647i, -1i)), vec2<f32>(-1109f, 1189f))) - _wgslsmith_f_op_f32(774f + 1000f)))));
    global3 = all(!vec4<bool>(false, all(vec4<bool>(true, true, true, false)) & all(vec3<bool>(true, true, false)), true, true));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b);
}


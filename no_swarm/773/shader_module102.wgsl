struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<u32>,
}

struct Struct_4 {
    a: Struct_3,
    b: f32,
    c: vec3<bool>,
}

struct Struct_5 {
    a: Struct_3,
    b: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: i32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 20> = array<f32, 20>(-168f, -674f, 929f, -327f, -709f, 383f, 134f, -424f, 156f, -168f, 343f, -1048f, -681f, 390f, 1120f, 481f, 738f, 1047f, 240f, 828f);

var<private> global1: array<f32, 10>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3() -> vec3<u32> {
    var var_0 = Struct_2(select(select(select(vec2<bool>(false, false), vec2<bool>(true, true), true), select(select(vec2<bool>(false, false), vec2<bool>(false, true), false), vec2<bool>(false, false), true), vec2<bool>(true, true)), vec2<bool>(true, true), all(select(vec4<bool>(true, false, true, true), select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, true)), true))), Struct_1(~vec2<u32>(4294967295u, abs(4294967295u))), Struct_1(~min(vec2<u32>(24527u, 4294967295u), _wgslsmith_div_vec2_u32(vec2<u32>(1u, 4294967295u), vec2<u32>(20010u, 1u)))), Struct_1(~vec2<u32>(1u, ~61938u)), Struct_1(~(~(~vec2<u32>(4294967295u, 1u)))));
    global0 = array<f32, 20>();
    global0 = array<f32, 20>();
    let var_1 = Struct_2(vec2<bool>(true, var_0.a.x), Struct_1(~countOneBits(vec2<u32>(var_0.d.a.x, 4294967295u))), var_0.c, var_0.d, var_0.c);
    let var_2 = ~(countOneBits(~vec4<u32>(87593u, var_0.b.a.x, var_1.e.a.x, var_1.d.a.x) ^ ~vec4<u32>(var_0.d.a.x, 4294967295u, var_1.e.a.x, 40602u)) << (abs(vec4<u32>(firstTrailingBit(var_0.b.a.x), reverseBits(var_1.c.a.x), min(0u, var_1.b.a.x), ~var_1.c.a.x)) % vec4<u32>(32u)));
    return var_2.wwx;
}

fn func_2(arg_0: u32, arg_1: vec2<u32>) -> Struct_5 {
    let var_0 = min(~vec2<u32>(_wgslsmith_add_u32(abs(arg_0), ~arg_1.x), firstTrailingBit(~arg_1.x)), _wgslsmith_add_vec2_u32(firstTrailingBit(vec2<u32>(4119u, 1u)), _wgslsmith_add_vec2_u32(arg_1, ~reverseBits(arg_1))));
    let var_1 = Struct_5(Struct_3(Struct_2(vec2<bool>(true, true), Struct_1(_wgslsmith_mod_vec2_u32(var_0, var_0)), Struct_1(var_0), Struct_1(var_0 >> (arg_1 % vec2<u32>(32u))), Struct_1(~vec2<u32>(85678u, arg_1.x))), _wgslsmith_add_vec3_u32(func_3(), abs(vec3<u32>(10228u, arg_1.x, 70629u)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(~_wgslsmith_sub_u32(var_0.x, 1u), 20u)] - _wgslsmith_f_op_f32(-348f * _wgslsmith_f_op_f32(f32(-1f) * -841f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global1[_wgslsmith_index_u32(16938u, 10u)], global1[_wgslsmith_index_u32(var_0.x, 10u)]))))));
    global0 = array<f32, 20>();
    var var_2 = _wgslsmith_mod_vec3_u32(var_1.a.b, max(vec3<u32>(_wgslsmith_dot_vec3_u32(var_1.a.b, abs(vec3<u32>(1u, 0u, arg_0))), countOneBits(_wgslsmith_mod_u32(1u, arg_0)), var_0.x >> (0u % 32u)), var_1.a.b));
    global0 = array<f32, 20>();
    return Struct_5(var_1.a, global0[_wgslsmith_index_u32(~_wgslsmith_sub_u32(var_2.x, select(2751u, var_1.a.a.d.a.x, var_1.a.a.a.x)) | (_wgslsmith_mod_u32(var_2.x, min(46458u, 0u)) << (_wgslsmith_add_u32(arg_1.x, func_3().x) % 32u)), 20u)]);
}

fn func_1(arg_0: vec3<bool>) -> vec2<i32> {
    global0 = array<f32, 20>();
    var var_0 = false;
    let var_1 = func_2(1u, vec2<u32>(1u, _wgslsmith_clamp_u32(_wgslsmith_clamp_u32(13628u, 47975u, 43029u), abs(58055u), 4294967295u)) & max(~(~vec2<u32>(0u, 0u)), ~_wgslsmith_add_vec2_u32(vec2<u32>(4294967295u, 24447u), vec2<u32>(0u, 52668u))));
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(759f, -225f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(global1[_wgslsmith_index_u32(var_1.a.b.x, 10u)])))))) + _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(global0[_wgslsmith_index_u32(var_1.a.b.x, 20u)], var_1.b, 366f), vec3<f32>(global1[_wgslsmith_index_u32(55494u, 10u)], -1404f, 1409f))))))))));
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(global0[_wgslsmith_index_u32(min(21120u, ~1u), 20u)], func_2(var_1.a.b.x, _wgslsmith_mult_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, var_1.a.b.x), vec2<u32>(var_1.a.a.d.a.x, var_1.a.b.x)), vec2<u32>(1u, var_1.a.b.x) & var_1.a.b.zz)).b) - -778f);
    return u_input.b.xx;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 1u;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b, -u_input.b.x, _wgslsmith_dot_vec2_i32(u_input.a, func_1(vec3<bool>(true, true, true))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(45692u, 10u)] - global1[_wgslsmith_index_u32(1u, 10u)]), global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(38768u, 59737u), 10u)], -294f, _wgslsmith_f_op_f32(trunc(global1[_wgslsmith_index_u32(41629u, 10u)]))) + vec4<f32>(global0[_wgslsmith_index_u32(37670u, 20u)], -2206f, _wgslsmith_f_op_f32(min(global1[_wgslsmith_index_u32(42287u, 10u)], 989f)), 2729f))));
}


struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 26> = array<Struct_2, 26>(Struct_2(vec3<i32>(9964i, i32(-2147483648), 696i), vec4<u32>(36733u, 71768u, 6870u, 0u)), Struct_2(vec3<i32>(1437i, i32(-2147483648), 2147483647i), vec4<u32>(4294967295u, 4294967295u, 30883u, 18548u)), Struct_2(vec3<i32>(-1i, i32(-2147483648), -16491i), vec4<u32>(0u, 1u, 2628u, 41244u)), Struct_2(vec3<i32>(-13982i, -32138i, i32(-2147483648)), vec4<u32>(31380u, 4294967295u, 30432u, 6906u)), Struct_2(vec3<i32>(0i, 1388i, 1i), vec4<u32>(20428u, 1u, 0u, 4294967295u)), Struct_2(vec3<i32>(0i, 21444i, -46839i), vec4<u32>(20059u, 64989u, 92694u, 126011u)), Struct_2(vec3<i32>(-20442i, 2147483647i, 15802i), vec4<u32>(0u, 1u, 4294967295u, 82494u)), Struct_2(vec3<i32>(-14617i, 141i, 2147483647i), vec4<u32>(44495u, 4294967295u, 0u, 1u)), Struct_2(vec3<i32>(0i, -1i, 1i), vec4<u32>(1u, 4294967295u, 30319u, 4294967295u)), Struct_2(vec3<i32>(0i, 15411i, 0i), vec4<u32>(4294967295u, 8656u, 1u, 1u)), Struct_2(vec3<i32>(-69503i, 0i, 0i), vec4<u32>(0u, 4294967295u, 34486u, 5334u)), Struct_2(vec3<i32>(9335i, i32(-2147483648), 1i), vec4<u32>(0u, 0u, 19712u, 11772u)), Struct_2(vec3<i32>(-62100i, i32(-2147483648), -1i), vec4<u32>(10982u, 72581u, 49199u, 78477u)), Struct_2(vec3<i32>(2147483647i, i32(-2147483648), 0i), vec4<u32>(4294967295u, 4294967295u, 4294967295u, 103833u)), Struct_2(vec3<i32>(3530i, 2147483647i, -8349i), vec4<u32>(1u, 1u, 4294967295u, 1u)), Struct_2(vec3<i32>(1i, 10352i, -3582i), vec4<u32>(50264u, 38792u, 20973u, 16970u)), Struct_2(vec3<i32>(-4158i, i32(-2147483648), 77281i), vec4<u32>(1u, 1u, 1u, 4294967295u)), Struct_2(vec3<i32>(-1i, 1i, 2147483647i), vec4<u32>(77344u, 0u, 0u, 69070u)), Struct_2(vec3<i32>(1i, 37586i, -33718i), vec4<u32>(0u, 8271u, 18246u, 1u)), Struct_2(vec3<i32>(2147483647i, 2147483647i, -51766i), vec4<u32>(4294967295u, 3864u, 1u, 63125u)), Struct_2(vec3<i32>(-1i, 17440i, -10728i), vec4<u32>(4294967295u, 47893u, 6756u, 45982u)), Struct_2(vec3<i32>(-1i, 0i, 0i), vec4<u32>(1u, 23385u, 29284u, 4294967295u)), Struct_2(vec3<i32>(-38348i, 8161i, 2147483647i), vec4<u32>(4294967295u, 59320u, 20867u, 10069u)), Struct_2(vec3<i32>(-49930i, 18211i, 20597i), vec4<u32>(4294967295u, 0u, 4294967295u, 49752u)), Struct_2(vec3<i32>(-13485i, 0i, -1i), vec4<u32>(115075u, 6208u, 0u, 56510u)), Struct_2(vec3<i32>(0i, -16886i, i32(-2147483648)), vec4<u32>(16814u, 33633u, 1u, 60430u)));

var<private> global1: array<vec2<f32>, 21>;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_1(arg_0: f32) -> bool {
    var var_0 = u_input.a;
    global0 = array<Struct_2, 26>();
    global0 = array<Struct_2, 26>();
    global1 = array<vec2<f32>, 21>();
    global0 = array<Struct_2, 26>();
    return all(vec2<bool>(false, any(vec4<bool>(true, true, all(vec4<bool>(true, true, false, true)), all(vec3<bool>(true, true, true))))));
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_1) -> vec4<u32> {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-252f, _wgslsmith_f_op_f32(round(-199f))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(arg_1.a * vec2<f32>(1220f, arg_0.x)))))))) + arg_0.xy);
    global1 = array<vec2<f32>, 21>();
    return _wgslsmith_mod_vec4_u32(vec4<u32>(_wgslsmith_clamp_u32(u_input.a & 77608u, ~u_input.a, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 51897u), vec2<u32>(4294967295u, u_input.a))), ~reverseBits(u_input.a), ~0u, _wgslsmith_clamp_u32(u_input.a, u_input.a, u_input.a) | ~4294967295u) ^ _wgslsmith_div_vec4_u32(_wgslsmith_add_vec4_u32(reverseBits(vec4<u32>(1u, 18998u, 4294967295u, 39944u)), ~vec4<u32>(2601u, u_input.a, u_input.a, 4294967295u)), ~(~vec4<u32>(59843u, u_input.a, 24853u, u_input.a))), vec4<u32>(_wgslsmith_clamp_u32(u_input.a, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 1u, 74412u, u_input.a), vec4<u32>(4294967295u, 1u, 4294967295u, 4294967295u)), 0u), u_input.a, u_input.a, _wgslsmith_mod_u32(~u_input.a, ~41329u)) & ~abs(~vec4<u32>(4294967295u, 0u, u_input.a, u_input.a)));
}

fn func_2(arg_0: bool) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1000f))), _wgslsmith_f_op_f32(-657f + 332f))));
    let var_1 = Struct_2(vec3<i32>(_wgslsmith_clamp_i32(u_input.b, -39752i, 2147483647i), -select(firstLeadingBit(u_input.b), u_input.b, true), u_input.b), _wgslsmith_div_vec4_u32(func_3(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, var_0.x, var_0.x) * vec3<f32>(var_0.x, var_0.x, 899f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(662f, 1000f, var_0.x))), Struct_1(_wgslsmith_f_op_vec2_f32(-global1[_wgslsmith_index_u32(u_input.a, 21u)]))), ~_wgslsmith_mod_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(1u, u_input.a, 4294967295u, 3902u), vec4<u32>(u_input.a, 4294967295u, 0u, 0u)), vec4<u32>(12267u, 74482u, u_input.a, u_input.a))));
    return global0[_wgslsmith_index_u32(select(~_wgslsmith_sub_u32(u_input.a, 0u), 47772u, false), 26u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = all(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, any(vec3<bool>(false, false, false)), 451i <= u_input.b), true), vec4<bool>(func_1(-995f), any(vec4<bool>(false, true, true, false)), true, false), all(vec3<bool>(func_1(1539f), true, u_input.b <= -50884i))));
    let var_1 = func_2(~u_input.a >= countOneBits(~(~u_input.a)));
    var_0 = false;
    let var_2 = ~countOneBits(firstLeadingBit(u_input.a));
    let var_3 = Struct_1(_wgslsmith_div_vec2_f32(global1[_wgslsmith_index_u32(u_input.a, 21u)], _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-324f, -226f), vec2<f32>(1391f, 262f))))))));
    var var_4 = vec4<bool>(var_1.b.x <= func_2(!all(vec2<bool>(true, true))).b.x, !(any(vec3<bool>(true, false, false)) == true), false, select(any(vec3<bool>(true, true, true)), true, (~31089u > ~u_input.a) && any(vec3<bool>(true, true, true))));
    global1 = array<vec2<f32>, 21>();
    let var_5 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -283f), -153f)))) - var_3.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(923f);
}


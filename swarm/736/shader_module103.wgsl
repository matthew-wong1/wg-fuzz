struct Struct_1 {
    a: bool,
    b: vec4<i32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: vec3<i32>,
    c: Struct_2,
    d: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: vec3<i32>,
}

struct Struct_5 {
    a: vec4<i32>,
    b: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(32151u, 1u);

var<private> global1: array<bool, 1>;

var<private> global2: array<Struct_4, 24> = array<Struct_4, 24>(Struct_4(Struct_1(true, vec4<i32>(i32(-2147483648), -1i, 2147483647i, -32799i)), vec3<i32>(0i, 0i, -15369i)), Struct_4(Struct_1(true, vec4<i32>(i32(-2147483648), 2147483647i, 2147483647i, 26635i)), vec3<i32>(1i, -22456i, 1i)), Struct_4(Struct_1(false, vec4<i32>(-1i, i32(-2147483648), -56569i, i32(-2147483648))), vec3<i32>(0i, 27177i, 24137i)), Struct_4(Struct_1(true, vec4<i32>(-39078i, 2147483647i, i32(-2147483648), -59944i)), vec3<i32>(-1i, -30733i, -43449i)), Struct_4(Struct_1(false, vec4<i32>(1i, 0i, -1i, 12555i)), vec3<i32>(2147483647i, -37813i, -98170i)), Struct_4(Struct_1(false, vec4<i32>(43735i, -44272i, 52063i, i32(-2147483648))), vec3<i32>(-45173i, 1i, i32(-2147483648))), Struct_4(Struct_1(false, vec4<i32>(i32(-2147483648), 0i, 32673i, i32(-2147483648))), vec3<i32>(739i, 2147483647i, 2147483647i)), Struct_4(Struct_1(true, vec4<i32>(1i, 54664i, -2726i, 17400i)), vec3<i32>(-47780i, 18948i, 3344i)), Struct_4(Struct_1(true, vec4<i32>(i32(-2147483648), i32(-2147483648), -105284i, 2147483647i)), vec3<i32>(i32(-2147483648), 0i, 5991i)), Struct_4(Struct_1(false, vec4<i32>(0i, 33063i, 1i, -1i)), vec3<i32>(-8445i, 0i, -22744i)), Struct_4(Struct_1(true, vec4<i32>(40786i, -14536i, -1i, i32(-2147483648))), vec3<i32>(-39984i, -1i, -28842i)), Struct_4(Struct_1(true, vec4<i32>(46248i, 2147483647i, -34570i, 2147483647i)), vec3<i32>(0i, 2147483647i, 85677i)), Struct_4(Struct_1(false, vec4<i32>(67357i, 2147483647i, 2147483647i, -1717i)), vec3<i32>(-1i, -23898i, 1i)), Struct_4(Struct_1(true, vec4<i32>(-14193i, 2147483647i, i32(-2147483648), -1i)), vec3<i32>(32168i, 14895i, i32(-2147483648))), Struct_4(Struct_1(false, vec4<i32>(i32(-2147483648), 75076i, -1i, -5278i)), vec3<i32>(-3363i, 2147483647i, -1i)), Struct_4(Struct_1(true, vec4<i32>(27847i, 39620i, -7047i, 2193i)), vec3<i32>(-10420i, -75924i, -1i)), Struct_4(Struct_1(false, vec4<i32>(-22853i, -48696i, 0i, -1199i)), vec3<i32>(9994i, 5822i, 3236i)), Struct_4(Struct_1(true, vec4<i32>(27650i, 1i, 1i, -25296i)), vec3<i32>(2147483647i, 15664i, 2147483647i)), Struct_4(Struct_1(false, vec4<i32>(i32(-2147483648), 48441i, 21916i, 26939i)), vec3<i32>(2147483647i, -2161i, i32(-2147483648))), Struct_4(Struct_1(false, vec4<i32>(1i, i32(-2147483648), 7745i, 99513i)), vec3<i32>(2147483647i, -31489i, -29884i)), Struct_4(Struct_1(false, vec4<i32>(-9312i, 1i, -22118i, 2147483647i)), vec3<i32>(-1i, 1i, i32(-2147483648))), Struct_4(Struct_1(false, vec4<i32>(1i, -1i, -1i, -3520i)), vec3<i32>(817i, -24843i, 1i)), Struct_4(Struct_1(true, vec4<i32>(-39187i, -1i, 2147483647i, 2147483647i)), vec3<i32>(6749i, 2147483647i, 15139i)), Struct_4(Struct_1(false, vec4<i32>(-35690i, 7716i, 1i, 56529i)), vec3<i32>(-1i, -1i, 1i)));

var<private> global3: f32 = -1257f;

var<private> global4: array<Struct_1, 26>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: vec4<i32>, arg_1: vec2<f32>, arg_2: bool, arg_3: vec3<u32>) -> i32 {
    let var_0 = Struct_3(!vec3<bool>(true, !any(vec3<bool>(false, global1[_wgslsmith_index_u32(4294967295u, 1u)], false)), global1[_wgslsmith_index_u32(_wgslsmith_add_u32(~43692u, global0.x >> (0u % 32u)), 1u)]), ~(~vec3<i32>(arg_0.x | -1858i, _wgslsmith_dot_vec2_i32(arg_0.xy, vec2<i32>(arg_0.x, -1i)), arg_0.x | -1i)), Struct_2(abs(select(~arg_3, vec3<u32>(4294967295u, 15669u, 19712u), select(vec3<bool>(global1[_wgslsmith_index_u32(13572u, 1u)], false, false), vec3<bool>(true, arg_2, arg_2), global1[_wgslsmith_index_u32(71612u, 1u)]))), Struct_1(all(!vec3<bool>(global1[_wgslsmith_index_u32(0u, 1u)], true, global1[_wgslsmith_index_u32(global0.x, 1u)])), arg_0)), Struct_2(abs(vec3<u32>(1u, ~12086u, arg_3.x)), global4[_wgslsmith_index_u32(firstLeadingBit(u_input.a), 26u)]));
    var var_1 = arg_0.x;
    global2 = array<Struct_4, 24>();
    var var_2 = Struct_5(-vec4<i32>(arg_0.x, -(~arg_0.x), var_0.c.b.b.x << (~0u % 32u), var_0.b.x), 37627u);
    let var_3 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(arg_1.x, arg_1.x)))), _wgslsmith_f_op_f32(arg_1.x + 100f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_1.x))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-100f * arg_1.x))))) - vec4<f32>(arg_1.x, -1061f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_1.x, arg_1.x)) - arg_1.x) + _wgslsmith_f_op_f32(sign(1536f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_1.x))))));
    return 0i;
}

fn func_3(arg_0: bool, arg_1: vec4<i32>) -> vec2<f32> {
    global3 = _wgslsmith_div_f32(-226f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(689f - 701f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1288f)))) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(475f, 1f))))));
    global1 = array<bool, 1>();
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -146f)));
    let var_1 = !(!select(vec2<bool>(!global1[_wgslsmith_index_u32(14252u, 1u)], any(vec4<bool>(arg_0, true, arg_0, global1[_wgslsmith_index_u32(56382u, 1u)]))), vec2<bool>(!global1[_wgslsmith_index_u32(global0.x, 1u)], false), arg_0));
    global4 = array<Struct_1, 26>();
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(1359f - -295f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-473f)))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-636f + 329f)), -688f))));
}

fn func_1(arg_0: vec2<bool>) -> vec2<f32> {
    var var_0 = u_input.b;
    var var_1 = !vec4<bool>(arg_0.x, false, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1699f)) * _wgslsmith_f_op_f32(f32(-1f) * -147f)) >= 1f, !arg_0.x & any(vec4<bool>(false, global1[_wgslsmith_index_u32(var_0.x, 1u)], arg_0.x, true)));
    let var_2 = 2291f;
    global1 = array<bool, 1>();
    let var_3 = global1[_wgslsmith_index_u32(global0.x, 1u)];
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(func_3(global1[_wgslsmith_index_u32(u_input.a, 1u)], vec4<i32>(func_2(vec4<i32>(0i, 1i, 2147483647i, 1i), vec2<f32>(var_2, 1546f), true, vec3<u32>(var_0.x, 83030u, 66006u)), 0i, -2147483647i, 1i))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(func_1(vec2<bool>(true, true))), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1133f, 1780f)), -729f), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(469f - 1894f) - _wgslsmith_div_f32(-158f, 996f)), _wgslsmith_f_op_f32(-169f * -973f))))));
    let var_1 = ~(~vec4<u32>(~50043u ^ global0.x, 30056u, global0.x, global0.x));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -615f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_1(!vec2<bool>(true, global1[_wgslsmith_index_u32(global0.x, 1u)]))).x)));
    let var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(var_0, vec2<f32>(var_0.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(2036f)), 1277f, any(vec2<bool>(true, false))))))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(629f, var_2)));
    let var_4 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.x - var_0.x)), _wgslsmith_f_op_f32(-var_2)), 1760f, var_0.x) + vec3<f32>(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_3.x, _wgslsmith_f_op_f32(min(142f, -314f))))), 869f));
    var var_5 = vec4<u32>(global0.x << (~1u % 32u), min(_wgslsmith_dot_vec3_u32(~vec3<u32>(8961u, 4294967295u, var_1.x) << ((var_1.zyy ^ vec3<u32>(global0.x, global0.x, 55273u)) % vec3<u32>(32u)), _wgslsmith_mod_vec3_u32(vec3<u32>(9588u, u_input.b.x, global0.x), vec3<u32>(u_input.b.x, var_1.x, var_1.x)) ^ _wgslsmith_mod_vec3_u32(vec3<u32>(global0.x, 82902u, 89811u), vec3<u32>(global0.x, 17626u, 0u))), var_1.x), ~select(~var_1.x | (4294967295u >> (var_1.x % 32u)), ~0u, !any(vec4<bool>(global1[_wgslsmith_index_u32(global0.x, 1u)], false, global1[_wgslsmith_index_u32(u_input.b.x, 1u)], global1[_wgslsmith_index_u32(global0.x, 1u)]))), reverseBits(var_1.x) << (_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, _wgslsmith_clamp_u32(4294967295u, 8652u, 0u)), abs(min(vec2<u32>(u_input.a, 4294967295u), u_input.b))) % 32u));
    var var_6 = _wgslsmith_f_op_f32(-var_3.x);
    let x = u_input.a;
    s_output = StorageBuffer(var_5.x, var_0.x, reverseBits(countOneBits(countOneBits(vec2<i32>(52225i, -10262i)))));
}


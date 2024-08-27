struct Struct_1 {
    a: vec4<i32>,
    b: f32,
    c: vec3<bool>,
    d: u32,
}

struct Struct_2 {
    a: f32,
    b: i32,
}

struct Struct_3 {
    a: vec4<bool>,
    b: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: i32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 613f;

var<private> global1: array<f32, 18> = array<f32, 18>(-1174f, 861f, -266f, 458f, 1000f, -1000f, -1157f, 1300f, -383f, 1488f, 1129f, 532f, -144f, -552f, -518f, -846f, 431f, -465f);

var<private> global2: vec4<f32> = vec4<f32>(-1140f, -598f, 291f, -2600f);

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> bool {
    let var_0 = Struct_3(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, any(vec4<bool>(false, false, false, true)), true), select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false))), vec4<bool>(true, false, any(vec3<bool>(true, true, true)), any(vec4<bool>(true, true, true, true))), true), u_input.b.x);
    let var_1 = _wgslsmith_add_u32(_wgslsmith_sub_u32(var_0.b | ~0u, _wgslsmith_mod_u32(~(~u_input.a), 4294967295u >> (_wgslsmith_sub_u32(u_input.b.x, 68581u) % 32u))), ~_wgslsmith_dot_vec2_u32(vec2<u32>(~38237u, reverseBits(32354u)), ~countOneBits(vec2<u32>(u_input.b.x, 564u))));
    global1 = array<f32, 18>();
    return false;
}

fn func_2(arg_0: vec4<f32>, arg_1: vec2<i32>) -> f32 {
    global1 = array<f32, 18>();
    let var_0 = Struct_3(select(vec4<bool>(true, true, true, true), select(vec4<bool>(func_3(), false, true, true), vec4<bool>(true, true, true, arg_1.x != arg_1.x), select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))), !vec4<bool>(global2.x > 551f, true, false, false)), firstLeadingBit(u_input.b.x) ^ _wgslsmith_div_u32(u_input.a, u_input.a));
    var var_1 = Struct_1(vec4<i32>(-45836i, -49557i, ~807i, -20834i), arg_0.x, vec3<bool>(true, all(select(select(vec2<bool>(var_0.a.x, var_0.a.x), var_0.a.zz, true), var_0.a.xz, !vec2<bool>(var_0.a.x, false))), var_0.a.x), _wgslsmith_sub_u32(var_0.b, u_input.b.x));
    var var_2 = !func_3();
    var_2 = false;
    return _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(u_input.b, abs(~u_input.b)), ~vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.b, 0u, var_1.d), u_input.b), firstLeadingBit(8607u), _wgslsmith_mult_u32(var_1.d, 35815u))), 18u)] * _wgslsmith_f_op_f32(max(261f, _wgslsmith_f_op_f32(f32(-1f) * -1578f))));
}

fn func_1() -> vec4<i32> {
    global2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global2.x + _wgslsmith_f_op_f32(-global2.x)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -837f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.b.x, 18u)]) - _wgslsmith_f_op_f32(f32(-1f) * -1043f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_2(vec4<f32>(global1[_wgslsmith_index_u32(305u, 18u)], global1[_wgslsmith_index_u32(u_input.b.x, 18u)], global2.x, global2.x), vec2<i32>(-32028i, 5116i))), -1746f))), global2.x));
    var var_0 = vec2<i32>(_wgslsmith_add_i32(i32(-1i) * -1i, _wgslsmith_add_i32(countOneBits(0i), _wgslsmith_div_i32(2147483647i, 5086i))), -24030i) << (u_input.b.zx % vec2<u32>(32u));
    var var_1 = !select(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true), func_3()), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false), global1[_wgslsmith_index_u32(0u, 18u)] < -236f), true), vec4<bool>(true, true, true, true), _wgslsmith_mult_u32(u_input.a, ~u_input.b.x) != u_input.b.x);
    var_0 = vec2<i32>(-(~_wgslsmith_dot_vec3_i32(vec3<i32>(1515i, var_0.x, -2147483647i), vec3<i32>(2147483647i, var_0.x, var_0.x))), -abs(var_0.x));
    var var_2 = Struct_1(abs(vec4<i32>(1i, var_0.x, var_0.x ^ var_0.x, ~(i32(-1i) * -21051i))), global2.x, !vec3<bool>(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(0u, 18u)]) >= _wgslsmith_f_op_f32(round(-428f)), false, var_1.x), u_input.b.x);
    return vec4<i32>(-40984i, _wgslsmith_dot_vec2_i32(firstLeadingBit(firstLeadingBit(vec2<i32>(var_0.x, var_2.a.x))), var_2.a.wz), select(~(-2147483647i), ~54852i, var_2.c.x) | -2147483647i, var_2.a.x);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_3, arg_2: Struct_2) -> vec3<i32> {
    let var_0 = arg_1;
    let var_1 = _wgslsmith_add_u32(0u ^ ~_wgslsmith_dot_vec2_u32(u_input.b.xx, u_input.b.yx & vec2<u32>(6508u, var_0.b)), arg_0.d);
    global2 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-939f, global1[_wgslsmith_index_u32(0u, 18u)], global2.x, arg_2.a))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-688f, 643f, -1467f, arg_2.a) + vec4<f32>(global2.x, global2.x, global1[_wgslsmith_index_u32(var_0.b, 18u)], arg_2.a)))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(global2.x, 926f, arg_2.a, -1486f), vec4<f32>(1321f, global2.x, global1[_wgslsmith_index_u32(var_0.b, 18u)], global1[_wgslsmith_index_u32(1u, 18u)]))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(var_1, 18u)], global2.x, -777f, arg_0.b))), vec4<f32>(global1[_wgslsmith_index_u32(var_0.b, 18u)], arg_2.a, global1[_wgslsmith_index_u32(u_input.b.x, 18u)], _wgslsmith_f_op_f32(ceil(843f))))))), vec4<f32>(1410f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -736f))) * 1f), -696f, _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(arg_2.a)), -628f)))), arg_1.a.x | false));
    var var_2 = !select(arg_0.c.yy, vec2<bool>(any(!vec3<bool>(var_0.a.x, false, true)), true), all(select(select(var_0.a, arg_1.a, arg_1.a), arg_1.a, !arg_1.a)));
    var var_3 = Struct_1(~arg_0.a, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-709f - _wgslsmith_f_op_f32(f32(-1f) * -1430f))))), arg_1.a.yyw, _wgslsmith_div_u32(arg_0.d, ~1u));
    return max(~firstLeadingBit(vec3<i32>(arg_2.b, 0i, reverseBits(53951i))), vec3<i32>(_wgslsmith_div_i32(var_3.a.x, -(i32(-1i) * -2147483647i)), _wgslsmith_div_i32(abs(max(arg_2.b, arg_2.b)), arg_0.a.x), ~reverseBits(abs(0i))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<f32, 18>();
    var var_0 = func_4(Struct_1(func_1(), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -218f) - global1[_wgslsmith_index_u32(select(u_input.a, 1u, true), 18u)]), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(776f + global2.x) + global1[_wgslsmith_index_u32(4294967295u, 18u)]))), vec3<bool>(all(select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false))), !any(vec4<bool>(false, false, false, true)), true), ~(~min(u_input.b.x, u_input.b.x))), Struct_3(!(!select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, false))), firstLeadingBit(u_input.b.x) << (_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 42270u, 1u), u_input.b) % 32u)), Struct_2(_wgslsmith_f_op_f32(-185f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1000f, global2.x)))), max(select(26041i, firstLeadingBit(10001i), all(vec2<bool>(false, true))), -76254i)));
    var var_1 = var_0.x;
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(0u, 18u)])))) * _wgslsmith_f_op_f32(floor(global2.x))), 2203f);
    var var_3 = ~firstLeadingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(~(-36047i), _wgslsmith_clamp_i32(-6853i, var_0.x, var_0.x), var_0.x ^ 0i, -6438i), vec4<i32>(abs(-33849i), func_4(Struct_1(vec4<i32>(var_0.x, -1i, var_0.x, var_0.x), global1[_wgslsmith_index_u32(u_input.a, 18u)], vec3<bool>(false, true, true), u_input.a), Struct_3(vec4<bool>(false, true, false, true), 3305u), Struct_2(global1[_wgslsmith_index_u32(u_input.b.x, 18u)], var_0.x)).x, 11243i, -1i)));
    var var_4 = Struct_2(_wgslsmith_f_op_f32(global2.x - global2.x), _wgslsmith_dot_vec2_i32(select(vec2<i32>(var_0.x, var_0.x), -var_0.yy, true), -var_0.xy) >> (u_input.a % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_f32(vec2<f32>(896f, -912f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1697f), var_4.a))), ~27728u, var_4.b, max(vec4<u32>(_wgslsmith_clamp_u32(0u, ~4294967295u, u_input.a), 0u, u_input.b.x, firstLeadingBit(u_input.a)), select(vec4<u32>(u_input.a, u_input.b.x, 1u, 11309u) | vec4<u32>(u_input.a, 3055u, 105365u, u_input.a), vec4<u32>(92246u, 1u, u_input.a, u_input.b.x) << (vec4<u32>(3595u, u_input.b.x, u_input.a, 11425u) % vec4<u32>(32u)), global1[_wgslsmith_index_u32(u_input.b.x, 18u)] != 858f) & reverseBits(firstTrailingBit(vec4<u32>(u_input.b.x, u_input.b.x, u_input.a, u_input.a)))));
}


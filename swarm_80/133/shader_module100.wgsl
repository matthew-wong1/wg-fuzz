struct Struct_1 {
    a: vec2<f32>,
    b: vec2<f32>,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: i32,
    d: vec3<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 25>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3() -> bool {
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-541f, 2619f))) * vec2<f32>(_wgslsmith_f_op_f32(step(-1006f, _wgslsmith_f_op_f32(737f * 1000f))), -214f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(max(-367f, 1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1236f)))), vec3<bool>(true, true, true));
    global0 = array<u32, 25>();
    var var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(var_0.a + _wgslsmith_f_op_vec2_f32(var_0.a + var_0.a)), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-945f, var_0.a.x), -466f)), 471f))), vec3<bool>(select(-u_input.a.x < u_input.a.x, true, true), ~select(129868u, 4294967295u, true) >= _wgslsmith_dot_vec2_u32(firstTrailingBit(vec2<u32>(57620u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 25u)], 25u)], 25u)], 25u)])), vec2<u32>(107923u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 25u)], 25u)])), true || var_0.c.x));
    var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-352f, var_1.a.x) + vec2<f32>(var_0.a.x, var_1.a.x))) + vec2<f32>(_wgslsmith_f_op_f32(-var_0.a.x), var_1.a.x)) + var_1.a), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(trunc(var_0.a)))) * _wgslsmith_f_op_vec2_f32(var_1.a * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(var_1.b)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, var_1.a.x))))), vec3<bool>(false & all(!var_0.c), !any(!var_1.c.xx), all(select(select(var_1.c, var_0.c, vec3<bool>(true, var_0.c.x, var_1.c.x)), var_0.c, !var_0.c))));
    var_1 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_0.a.x - var_0.b.x), _wgslsmith_f_op_f32(-1697f - -444f))))), _wgslsmith_f_op_f32(var_0.a.x * 1000f)), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1458f * var_1.a.x)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(1360f))))))), var_1.c);
    return all(select(var_1.c.yy, !(!(!var_0.c.xy)), var_1.c.xx));
}

fn func_2() -> vec4<i32> {
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -160f), _wgslsmith_f_op_f32(step(650f, 725f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(2227f, -239f)) + vec2<f32>(-485f, -545f)), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)))) * vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1873f) + -538f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-863f, -1120f))))), vec2<f32>(1000f, -146f), select(vec3<bool>(true, all(vec3<bool>(true, true, true)), !any(vec4<bool>(false, false, true, true))), !vec3<bool>(true, true, all(vec2<bool>(false, false))), select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), true || func_3())));
    let var_1 = global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 25u)], 25u)];
    let var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-var_0.b.x), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_0.b.x)))) * var_0.b), _wgslsmith_f_op_vec2_f32(var_0.b + vec2<f32>(-1025f, -1890f)), select(!vec3<bool>(func_3(), true, select(true, true, true)), !select(!vec3<bool>(true, var_0.c.x, var_0.c.x), select(vec3<bool>(var_0.c.x, true, var_0.c.x), vec3<bool>(false, var_0.c.x, var_0.c.x), var_0.c.x), true), any(!vec2<bool>(var_0.c.x, var_0.c.x))));
    var var_3 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-618f, -1000f, var_0.a.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.a.x, 428f, var_0.a.x) + vec3<f32>(743f, 999f, 1404f))) - _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b.x, var_2.a.x, 551f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1561f, -219f, -663f))))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(var_2.b.x)))), _wgslsmith_f_op_f32(-685f * _wgslsmith_f_op_f32(round(683f))), -113f) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-1083f, -1000f, var_2.a.x), vec3<f32>(var_0.b.x, -1108f, var_2.a.x))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2023f, var_0.b.x, 1795f))))));
    var var_4 = ~(~vec4<u32>(~(~155664u), global0[_wgslsmith_index_u32(firstLeadingBit(~0u), 25u)], 103916u, ~global0[_wgslsmith_index_u32(~0u, 25u)]));
    return _wgslsmith_mult_vec4_i32(min(firstTrailingBit(vec4<i32>(min(u_input.a.x, u_input.a.x), 1i, firstLeadingBit(1i), ~(-1i))), -vec4<i32>(u_input.a.x, _wgslsmith_sub_i32(-2147483647i, -1i), 29499i, u_input.a.x)), vec4<i32>(_wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, u_input.a.x, -19580i, 3036i), vec4<i32>(1i, u_input.a.x, u_input.a.x, u_input.a.x)) ^ 41522i, max(~1i, -u_input.a.x)), _wgslsmith_add_i32(u_input.a.x, -19113i), -u_input.a.x, -2147483647i));
}

fn func_1(arg_0: Struct_1, arg_1: vec3<i32>) -> f32 {
    global0 = array<u32, 25>();
    global0 = array<u32, 25>();
    global0 = array<u32, 25>();
    global0 = array<u32, 25>();
    var var_0 = -func_2();
    return _wgslsmith_div_f32(218f, _wgslsmith_f_op_f32(sign(-1000f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0[_wgslsmith_index_u32(~_wgslsmith_div_u32(global0[_wgslsmith_index_u32(~93046u, 25u)], 0u), 25u)] | global0[_wgslsmith_index_u32(4294967295u & global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 25u)], 25u)] ^ (global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(41993u, 25u)], 25u)], 25u)], 31135u, global0[_wgslsmith_index_u32(6593u, 25u)]), 25u)], 25u)] ^ ~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(20112u, 25u)], 25u)], 25u)], 25u)]), 25u)], 25u)];
    var var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1000f, 456f))), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(659f, -1090f))))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-736f, 2326f))))));
    global0 = array<u32, 25>();
    let var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(Struct_1(vec2<f32>(var_1.x, 501f), vec2<f32>(-1026f, var_1.x), vec3<bool>(true, false, true)), vec3<i32>(5466i, -2147483647i, 0i))) - _wgslsmith_f_op_f32(var_1.x + var_1.x))) * var_1.x), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1000f, -121f)) * _wgslsmith_f_op_f32(-var_1.x)), _wgslsmith_f_op_f32(sign(1f))), -924f, true || func_3())));
    var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-585f)) * _wgslsmith_f_op_f32(max(var_2, _wgslsmith_f_op_f32(1000f - var_2)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1150f)))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(113f, var_2))) * vec2<f32>(var_1.x, var_2)), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, var_2)))), any(vec4<bool>(true, true, true, true))))));
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(Struct_1(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(-285f, -1036f) - vec2<f32>(303f, var_2)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(685f, var_2)), vec2<bool>(true, true))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(146f, var_2)), vec3<bool>(true, select(false, true, false), any(vec4<bool>(true, true, true, false)))), firstLeadingBit(vec3<i32>(u_input.a.x, u_input.a.x, abs(25462i))))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2) - _wgslsmith_f_op_f32(-var_1.x)));
    let var_4 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1000f, 1212f, -122f, var_3), vec4<f32>(var_1.x, var_1.x, var_2, -735f), true)) - _wgslsmith_div_vec4_f32(vec4<f32>(var_3, 926f, -953f, var_1.x), vec4<f32>(var_3, -919f, var_3, var_2))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(359f, var_1.x, -123f, -1000f), vec4<f32>(var_1.x, var_3, var_2, var_2), false)))), vec4<bool>(select(false, true, false), global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 25u)], 25u)], 25u)] == global0[_wgslsmith_index_u32(4294967295u, 25u)], all(vec4<bool>(false, false, false, true)), true))) + vec4<f32>(-812f, var_3, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)), 556f)) - vec4<f32>(var_2, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(2396f + _wgslsmith_f_op_f32(sign(-988f))))), -696f, 1053f));
    var_0 = countOneBits(~1u);
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(vec3<u32>(global0[_wgslsmith_index_u32(max(global0[_wgslsmith_index_u32(4294967295u, 25u)], global0[_wgslsmith_index_u32(max(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(27365u, 25u)], 25u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 25u)], 25u)]), 25u)]), 25u)], 0u, abs(_wgslsmith_dot_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(20253u, 25u)], 17449u), vec2<u32>(1u, 89396u))))), -1581f, ~countOneBits(1i), ~select(~vec3<u32>(global0[_wgslsmith_index_u32(32917u, 25u)], global0[_wgslsmith_index_u32(0u, 25u)], 4294967295u), vec3<u32>(4294967295u & global0[_wgslsmith_index_u32(4294967295u, 25u)], _wgslsmith_dot_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(96443u, 25u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 25u)], 25u)]), vec2<u32>(0u, 12568u)), _wgslsmith_mult_u32(global0[_wgslsmith_index_u32(305u, 25u)], 66430u)), select(true, true, any(vec3<bool>(true, true, false)))), abs(~u_input.a.x));
}


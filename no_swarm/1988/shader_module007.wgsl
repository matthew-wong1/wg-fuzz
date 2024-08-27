struct Struct_1 {
    a: i32,
    b: u32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: u32,
    c: f32,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<u32>,
    c: vec2<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec2<i32>(-1i, 1i), 1u, 875f, Struct_1(67645i, 1u), Struct_1(28301i, 24373u));

var<private> global1: array<f32, 3>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2() -> u32 {
    global1 = array<f32, 3>();
    let var_0 = global0.d;
    global0 = Struct_2(vec2<i32>(_wgslsmith_dot_vec4_i32(~(-vec4<i32>(-1i, 1i, global0.e.a, var_0.a)), vec4<i32>(reverseBits(-28602i), -2147483647i, u_input.d >> (1u % 32u), 1i)), -1i), 13749u, _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(57990u, 3u)] - global1[_wgslsmith_index_u32(var_0.b, 3u)]), global0.d, global0.d);
    var var_1 = global0.e;
    let var_2 = true;
    return 4294967295u;
}

fn func_3(arg_0: vec2<bool>, arg_1: vec2<i32>, arg_2: Struct_1) -> u32 {
    global1 = array<f32, 3>();
    let var_0 = firstLeadingBit(~(-_wgslsmith_dot_vec4_i32(vec4<i32>(arg_2.a, 37144i, arg_2.a, 2147483647i), vec4<i32>(u_input.d, -1i, 3662i, arg_1.x))) | 12963i);
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.c)), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(0u, 3u)]), all(vec3<bool>(arg_0.x, arg_0.x, arg_0.x)))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(global0.c)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(global0.e.b, 3u)] + 857f) + global0.c)));
    let var_2 = _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(func_2(), 3u)]);
    global0 = Struct_2(~_wgslsmith_mult_vec2_i32(vec2<i32>(-1i) * -global0.a, ~vec2<i32>(var_0, arg_1.x)), 4294967295u, _wgslsmith_f_op_f32(-var_2), Struct_1(-(abs(arg_2.a) >> (u_input.b % 32u)), 1u), global0.d);
    return _wgslsmith_clamp_u32(global0.d.b, 108564u, ~(~23712u & _wgslsmith_mod_u32(global0.b, 4294967295u))) << (~arg_2.b % 32u);
}

fn func_4(arg_0: u32, arg_1: vec4<u32>, arg_2: Struct_1) -> f32 {
    var var_0 = select(-abs(global0.e.a), u_input.a, true);
    let var_1 = vec3<i32>(-38632i, _wgslsmith_dot_vec4_i32(-(vec4<i32>(arg_2.a, arg_2.a, u_input.a, -2147483647i) ^ vec4<i32>(35257i, -2147483647i, 4432i, arg_2.a)) >> (countOneBits(arg_1 & vec4<u32>(0u, 72412u, arg_0, arg_2.b)) % vec4<u32>(32u)), _wgslsmith_mod_vec4_i32(abs(select(vec4<i32>(global0.a.x, 1604i, u_input.d, global0.d.a), vec4<i32>(arg_2.a, -1i, -2147483647i, -1i), vec4<bool>(false, false, false, true))), _wgslsmith_div_vec4_i32(vec4<i32>(global0.e.a, -9417i, global0.e.a, 0i), -vec4<i32>(arg_2.a, -25145i, 1i, arg_2.a)))), -2147483647i);
    global0 = Struct_2(-_wgslsmith_mult_vec2_i32(global0.a, var_1.zy), 15479u, global0.c, arg_2, arg_2);
    let var_2 = global0.d;
    var var_3 = arg_1.www;
    return _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.c))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(28187u, 3u)]) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(global1[_wgslsmith_index_u32(arg_1.x, 3u)], global1[_wgslsmith_index_u32(arg_1.x, 3u)], false)))))) - global0.c);
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1) -> f32 {
    global1 = array<f32, 3>();
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(~_wgslsmith_mod_u32(func_2(), 4294967295u), 3u)]));
    var var_1 = _wgslsmith_mult_i32(global0.e.a, 2147483647i);
    let var_2 = global0.e;
    var var_3 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1319f, -1612f), vec2<f32>(-1000f, -2049f), vec2<bool>(false, false)))) + vec2<f32>(_wgslsmith_f_op_f32(-global0.c), _wgslsmith_div_f32(383f, global1[_wgslsmith_index_u32(var_2.b, 3u)]))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global1[_wgslsmith_index_u32(22787u, 3u)], -315f) * vec2<f32>(global1[_wgslsmith_index_u32(var_2.b, 3u)], -168f)))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(arg_1.b, 3u)] - global0.c))))));
    return _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_4(func_3(vec2<bool>(false, true), vec2<i32>(77690i, -24841i), global0.d), vec4<u32>(global0.e.b, 35428u, 68555u, 0u), arg_1)))))), _wgslsmith_f_op_f32(func_4(~1u, ~vec4<u32>(var_2.b, reverseBits(44705u), 0u, ~0u), Struct_1(_wgslsmith_div_i32(_wgslsmith_add_i32(u_input.a, u_input.d), -arg_1.a), min(~arg_1.b, ~4294967295u))))));
}

fn func_5(arg_0: Struct_2) -> vec4<i32> {
    let var_0 = u_input.a;
    global1 = array<f32, 3>();
    var var_1 = 2147483647i;
    let var_2 = arg_0.d;
    var var_3 = ~global0.b;
    return vec4<i32>(var_2.a, countOneBits(~var_2.a), ~(~u_input.a), min(_wgslsmith_div_i32(countOneBits(u_input.a ^ global0.a.x), countOneBits(countOneBits(u_input.a))), -78105i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(Struct_2(global0.a, global0.d.b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(Struct_1(u_input.d, u_input.c), Struct_1(79299i, 0u)))), -986f), global0.e, global0.e));
    var var_1 = global0.d;
    var var_2 = vec2<bool>(1i <= (abs(-1i) ^ ~firstLeadingBit(var_0.x)), true);
    let var_3 = select(vec2<bool>(var_2.x, var_2.x), vec2<bool>(false, var_2.x), !(!var_2.x));
    var_1 = Struct_1(u_input.d, firstTrailingBit(var_1.b));
    var var_4 = var_3.x;
    var_1 = Struct_1(-26278i & ~global0.e.a, 119608u);
    var_4 = false;
    let var_5 = select(vec2<bool>(true, all(select(vec3<bool>(false, true, true), !vec3<bool>(false, var_2.x, false), true))), select(var_3, !select(var_3, vec2<bool>(true, var_2.x), any(var_3)), vec2<bool>(true, !(2147483647i != var_0.x))), var_2.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_f32(vec3<f32>(-398f, _wgslsmith_f_op_f32(412f + global0.c), -386f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(global0.c + -546f), global1[_wgslsmith_index_u32(36185u, 3u)], global0.c))), ~(reverseBits(min(vec4<u32>(global0.e.b, var_1.b, global0.e.b, 29433u), vec4<u32>(0u, u_input.b, 59107u, 35287u))) ^ _wgslsmith_mult_vec4_u32(~vec4<u32>(4294967295u, global0.d.b, 23177u, 1u), vec4<u32>(u_input.b, u_input.b, var_1.b, 0u))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1111f, global1[_wgslsmith_index_u32(_wgslsmith_add_u32(44403u, 1u), 3u)]))) - _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(235f, -193f), vec2<f32>(global0.c, global0.c), var_3)))))), _wgslsmith_dot_vec4_u32(~abs(vec4<u32>(global0.b, global0.e.b, 1u, 0u) ^ vec4<u32>(var_1.b, 36885u, var_1.b, 0u)), _wgslsmith_add_vec4_u32(~_wgslsmith_add_vec4_u32(vec4<u32>(76572u, 80253u, global0.d.b, 4294967295u), vec4<u32>(var_1.b, 4294967295u, u_input.c, 9891u)), _wgslsmith_add_vec4_u32(vec4<u32>(31773u, 0u, 51519u, u_input.b) | vec4<u32>(1u, 81312u, var_1.b, 0u), ~vec4<u32>(1u, u_input.b, u_input.c, 101794u)))));
}


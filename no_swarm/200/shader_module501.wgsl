struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: bool,
    b: vec4<u32>,
    c: i32,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 18>;

var<private> global1: vec3<f32>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec3<i32>, arg_1: vec3<u32>, arg_2: bool) -> vec4<f32> {
    let var_0 = select(!select(select(select(vec2<bool>(true, arg_2), vec2<bool>(arg_2, true), true), !vec2<bool>(true, arg_2), vec2<bool>(true, arg_2)), select(select(vec2<bool>(false, false), vec2<bool>(arg_2, arg_2), arg_2), select(vec2<bool>(arg_2, arg_2), vec2<bool>(arg_2, arg_2), vec2<bool>(false, arg_2)), any(vec3<bool>(arg_2, false, arg_2))), !select(vec2<bool>(false, arg_2), vec2<bool>(false, true), vec2<bool>(true, true))), !select(!select(vec2<bool>(true, arg_2), vec2<bool>(true, false), vec2<bool>(arg_2, arg_2)), vec2<bool>(true, true), all(select(vec2<bool>(arg_2, arg_2), vec2<bool>(arg_2, arg_2), arg_2))), select(!vec2<bool>(arg_2, all(vec4<bool>(false, arg_2, false, false))), vec2<bool>(arg_2, !arg_2), all(!select(vec4<bool>(true, true, arg_2, arg_2), vec4<bool>(false, arg_2, true, true), false))));
    global0 = array<u32, 18>();
    let var_1 = Struct_1(vec2<u32>(94284u, global0[_wgslsmith_index_u32(abs(arg_1.x), 18u)]));
    global0 = array<u32, 18>();
    var var_2 = Struct_2(all(!vec4<bool>(true, any(vec3<bool>(var_0.x, true, false)), false, any(vec4<bool>(var_0.x, var_0.x, false, arg_2)))), min(vec4<u32>(1u >> (1u % 32u), countOneBits(1893u), 0u ^ arg_1.x, arg_1.x << (arg_1.x % 32u)) >> (vec4<u32>(reverseBits(20389u), ~0u, abs(arg_1.x), _wgslsmith_sub_u32(1u, arg_1.x)) % vec4<u32>(32u)), firstTrailingBit(min(vec4<u32>(global0[_wgslsmith_index_u32(9341u, 18u)], 45617u, u_input.a, arg_1.x), vec4<u32>(0u, 113009u, 45795u, 38677u)))), arg_0.x, Struct_1(firstTrailingBit(arg_1.yx)));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global1.x, 595f, -1493f, 763f)))))));
}

fn func_2(arg_0: u32) -> u32 {
    var var_0 = global1.xx;
    var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.x, -1569f) * var_0.x), var_0.x))));
    let var_1 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(func_3(_wgslsmith_div_vec3_i32(~vec3<i32>(2147483647i, -20984i, -2147483647i), reverseBits(vec3<i32>(24810i, 14853i, 2147483647i))), firstTrailingBit(vec3<u32>(35648u, arg_0, arg_0)) << ((vec3<u32>(global0[_wgslsmith_index_u32(arg_0, 18u)], u_input.a, 18074u) | vec3<u32>(arg_0, arg_0, 14684u)) % vec3<u32>(32u)), true)), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(vec3<i32>(-15975i, -1i, -39505i), vec3<u32>(arg_0, 0u, 62169u), true)), vec4<f32>(var_0.x, 968f, global1.x, global1.x)))))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1755f, -648f, -154f, global1.x) - vec4<f32>(var_0.x, var_0.x, -200f, var_0.x)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1148f, global1.x, -981f, global1.x), vec4<f32>(global1.x, global1.x, global1.x, var_0.x), false)))), vec4<f32>(_wgslsmith_f_op_f32(var_0.x * global1.x), var_0.x, global1.x, _wgslsmith_f_op_f32(ceil(global1.x))), true)), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(297f, _wgslsmith_div_f32(var_0.x, 469f), _wgslsmith_f_op_f32(-var_0.x), -983f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, var_0.x, -548f, global1.x)) + _wgslsmith_div_vec4_f32(vec4<f32>(global1.x, global1.x, -534f, 2069f), vec4<f32>(788f, 1097f, var_0.x, global1.x))))), vec4<bool>(true, 821f <= _wgslsmith_f_op_f32(global1.x + -1402f), true, true))), select(!vec4<bool>(711f < global1.x, true, all(vec4<bool>(true, true, false, false)), all(vec2<bool>(true, true))), vec4<bool>(true, false, !select(false, true, false), _wgslsmith_mod_u32(25538u, u_input.a) >= ~arg_0), vec4<bool>(true, true, true, true))));
    let var_2 = Struct_2(true, ~(~vec4<u32>(~4294967295u, global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.a, u_input.a, 87144u), 18u)], _wgslsmith_mult_u32(0u, 45491u), countOneBits(4294967295u))), ~_wgslsmith_sub_i32(~(~0i), -1i), Struct_1(vec2<u32>(~_wgslsmith_mod_u32(107364u, arg_0), abs(u_input.a) ^ ~u_input.a)));
    let var_3 = _wgslsmith_sub_vec3_u32(abs(_wgslsmith_mult_vec3_u32(abs(vec3<u32>(0u, 49568u, 24750u)), select(var_2.b.xzz, var_2.b.wzy, true)) ^ min(~vec3<u32>(21184u, 4294967295u, 4294967295u), var_2.b.wxy & var_2.b.xxx)), _wgslsmith_clamp_vec3_u32(var_2.b.xwx, _wgslsmith_mult_vec3_u32(var_2.b.zzw | min(var_2.b.zwx, vec3<u32>(4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(44700u, 18u)], 18u)], arg_0)), var_2.b.wzw), min(var_2.b.zww, ~(~var_2.b.xwz))));
    return _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(~var_2.b.zwy, ~vec3<u32>(22671u, 4294967295u, 0u)), ~(~vec3<u32>(8043u, 1u, var_3.x))), global0[_wgslsmith_index_u32(~(~u_input.a), 18u)]) ^ _wgslsmith_div_u32(~4294967295u, 31863u);
}

fn func_1() -> Struct_1 {
    global0 = array<u32, 18>();
    var var_0 = _wgslsmith_clamp_vec4_u32(~(~(~countOneBits(vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 18u)], 18u)], 18u)], 17937u, global0[_wgslsmith_index_u32(u_input.a, 18u)], u_input.a)))), vec4<u32>(global0[_wgslsmith_index_u32(~1u, 18u)], ~global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(~u_input.a, u_input.a), 18u)], ~_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(1u, global0[_wgslsmith_index_u32(64055u, 18u)]), vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 18u)], 18u)], 18u)], 1u)), vec2<u32>(1u, u_input.a) << (vec2<u32>(51895u, 0u) % vec2<u32>(32u))), 0u), (~_wgslsmith_mod_vec4_u32(vec4<u32>(0u, u_input.a, 101675u, u_input.a), vec4<u32>(global0[_wgslsmith_index_u32(46169u, 18u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(30833u, 18u)], 18u)], 0u, u_input.a)) ^ vec4<u32>(_wgslsmith_mod_u32(70603u, 4294967295u), ~u_input.a, reverseBits(global0[_wgslsmith_index_u32(u_input.a, 18u)]), ~0u)) & (vec4<u32>(global0[_wgslsmith_index_u32(max(34251u, global0[_wgslsmith_index_u32(u_input.a, 18u)]), 18u)], 7733u << (u_input.a % 32u), 72896u, 30529u) & vec4<u32>(func_2(1u), global0[_wgslsmith_index_u32(~4294967295u, 18u)], ~1u, ~1u)));
    var var_1 = _wgslsmith_div_i32(27916i, firstLeadingBit(~(-_wgslsmith_sub_i32(1i, 27932i))));
    var_1 = abs(i32(-1i) * -1i);
    var_1 = firstLeadingBit(~((-11583i << (~global0[_wgslsmith_index_u32(u_input.a, 18u)] % 32u)) & 1i));
    return Struct_1(var_0.zz);
}

fn func_4(arg_0: Struct_1) -> f32 {
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -724f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 18>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_4(func_1())))), 1f, firstTrailingBit(firstTrailingBit(global0[_wgslsmith_index_u32(478u & func_1().a.x, 18u)])), 2147483647i);
}


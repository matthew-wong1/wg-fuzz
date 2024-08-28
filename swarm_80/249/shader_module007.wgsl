struct Struct_1 {
    a: bool,
    b: u32,
    c: f32,
    d: i32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: f32,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<i32>,
    d: vec4<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: array<u32, 16> = array<u32, 16>(4294967295u, 4022u, 2755u, 23015u, 63073u, 19767u, 4294967295u, 42118u, 55624u, 4294967295u, 11045u, 15494u, 3891u, 0u, 4294967295u, 40409u);

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> u32 {
    var var_0 = _wgslsmith_f_op_f32(trunc(global0.a.c));
    global1 = array<u32, 16>();
    var var_1 = vec4<u32>(~0u, 26928u, abs(_wgslsmith_div_u32(global1[_wgslsmith_index_u32(~14357u, 16u)], ~1u)), ~(~global0.a.b)) | vec4<u32>(firstTrailingBit(~u_input.a), 1u, ~min(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.a, 4294967295u), vec3<u32>(0u, global1[_wgslsmith_index_u32(72551u, 16u)], u_input.a)), ~108101u), 8506u);
    var var_2 = _wgslsmith_f_op_vec2_f32(vec2<f32>(1299f, -2011f) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(1241f, global0.a.c))))) * vec2<f32>(_wgslsmith_f_op_f32(select(global0.a.c, -1537f, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global0.b))))));
    var var_3 = vec4<bool>(global0.b < global0.b, false & global0.a.a, global0.a.a, any(!(!vec3<bool>(false, true, global0.a.a))));
    return u_input.a;
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_2, arg_2: u32) -> bool {
    global1 = array<u32, 16>();
    global1 = array<u32, 16>();
    var var_0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.b, arg_1.b.c, 752f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1327f, -1704f, global0.b))))), vec3<f32>(-1077f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1213f)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(302f)) * _wgslsmith_f_op_f32(-arg_1.b.c)), _wgslsmith_f_op_f32(-global0.b)))), vec3<bool>(true, arg_1.b.a, true)));
    global1 = array<u32, 16>();
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global0.a.c), 175f)) * _wgslsmith_f_op_f32(-arg_1.b.c)) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(168f))))));
    return all(!vec4<bool>(any(vec3<bool>(true, true, arg_1.b.a)), all(vec4<bool>(false, false, true, false)), global0.a.a, !global0.a.a)) & global0.a.a;
}

fn func_2(arg_0: vec3<bool>, arg_1: vec3<f32>, arg_2: vec4<i32>, arg_3: i32) -> bool {
    global0 = Struct_3(Struct_1(func_4(arg_0.zz, Struct_2(~vec2<u32>(6877u, 51860u), Struct_1(false, 3886u, arg_1.x, global0.a.d), 128f, global0.a), func_3()), _wgslsmith_clamp_u32(~global0.a.b << ((global0.a.b ^ global0.a.b) % 32u), global0.a.b, _wgslsmith_dot_vec2_u32(select(vec2<u32>(global1[_wgslsmith_index_u32(12548u, 16u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 16u)], 16u)]), vec2<u32>(89588u, u_input.a), arg_0.x), ~vec2<u32>(1u, global1[_wgslsmith_index_u32(12825u, 16u)]))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1433f, _wgslsmith_f_op_f32(exp2(global0.a.c)))), -countOneBits(u_input.b) | max(-1i, _wgslsmith_sub_i32(-18045i, arg_3))), global0.b, vec4<i32>(_wgslsmith_dot_vec3_i32(~vec3<i32>(1036i, arg_2.x, 0i) >> (_wgslsmith_clamp_vec3_u32(vec3<u32>(1u, u_input.a, 0u), vec3<u32>(global0.a.b, global1[_wgslsmith_index_u32(4294967295u, 16u)], 8049u), vec3<u32>(u_input.a, 78213u, u_input.a)) % vec3<u32>(32u)), u_input.c.yyz), -1i, u_input.b ^ -countOneBits(39928i), -3828i));
    let var_0 = Struct_3(global0.a, _wgslsmith_f_op_f32(-arg_1.x), min(~(~(~vec4<i32>(arg_3, arg_2.x, -1i, 36247i))), vec4<i32>(-25931i, ~abs(arg_3), u_input.e, 1i)));
    global1 = array<u32, 16>();
    var var_1 = any(!select(!arg_0.zz, vec2<bool>(true, func_4(vec2<bool>(true, arg_0.x), Struct_2(vec2<u32>(0u, 28967u), Struct_1(false, 4294967295u, arg_1.x, -1i), -747f, Struct_1(true, 4294967295u, -428f, -7168i)), global1[_wgslsmith_index_u32(1u, 16u)])), true));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(727f + _wgslsmith_f_op_f32(arg_1.x + global0.a.c)) * var_0.a.c) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_1.x))))));
    return true;
}

fn func_1(arg_0: vec3<u32>, arg_1: vec4<f32>, arg_2: i32, arg_3: f32) -> i32 {
    var var_0 = -510f < _wgslsmith_f_op_f32(513f - arg_1.x);
    var var_1 = !select(vec4<bool>(global0.a.a, !global0.a.a || (arg_0.x <= 46802u), all(vec3<bool>(true, true, global0.a.a)), global0.a.a), vec4<bool>(any(vec2<bool>(global0.a.a, false)), !func_2(vec3<bool>(global0.a.a, false, global0.a.a), arg_1.zzz, u_input.d, global0.c.x), global0.a.a, global0.a.a), true);
    var_1 = !select(vec4<bool>(global0.a.a, -796f >= _wgslsmith_div_f32(arg_3, global0.a.c), all(var_1.yw) | !global0.a.a, _wgslsmith_dot_vec2_i32(u_input.c.wx, global0.c.yz) <= max(arg_2, global0.a.d)), vec4<bool>(true, any(!vec4<bool>(true, false, global0.a.a, global0.a.a)), -2147483647i <= _wgslsmith_dot_vec3_i32(u_input.d.yyy, global0.c.zzw), true | !var_1.x), true);
    global0 = Struct_3(global0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_3, _wgslsmith_f_op_f32(arg_1.x * arg_3))) * -169f), ~global0.c);
    return -6086i >> (_wgslsmith_add_u32(global0.a.b & global0.a.b, 16051u | ~_wgslsmith_add_u32(arg_0.x, 4959u)) % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mod_vec2_i32(_wgslsmith_div_vec2_i32(_wgslsmith_mult_vec2_i32(_wgslsmith_sub_vec2_i32(global0.c.yx >> (vec2<u32>(41281u, 14073u) % vec2<u32>(32u)), global0.c.yz), ~global0.c.wx), (global0.c.wz << ((vec2<u32>(global1[_wgslsmith_index_u32(u_input.a, 16u)], global1[_wgslsmith_index_u32(0u, 16u)]) ^ vec2<u32>(u_input.a, 0u)) % vec2<u32>(32u))) << (((vec2<u32>(4294967295u, 4294967295u) << (vec2<u32>(global0.a.b, global0.a.b) % vec2<u32>(32u))) ^ _wgslsmith_mult_vec2_u32(vec2<u32>(global0.a.b, 32937u), vec2<u32>(u_input.a, u_input.a))) % vec2<u32>(32u))), min(~_wgslsmith_div_vec2_i32(global0.c.zy, vec2<i32>(-6506i, global0.c.x)) ^ vec2<i32>(u_input.b, func_1(vec3<u32>(u_input.a, u_input.a, 0u), vec4<f32>(global0.b, -786f, global0.a.c, 1072f), 2147483647i, global0.b)), (_wgslsmith_div_vec2_i32(vec2<i32>(-1i, -15232i), vec2<i32>(-37548i, -36749i)) & ~u_input.d.ww) ^ global0.c.yz));
    let var_1 = Struct_2(_wgslsmith_div_vec2_u32(_wgslsmith_clamp_vec2_u32(~_wgslsmith_clamp_vec2_u32(vec2<u32>(1u, 4294967295u), vec2<u32>(1u, global0.a.b), vec2<u32>(u_input.a, 13348u)), ~(~vec2<u32>(global0.a.b, 99250u)), vec2<u32>(u_input.a, 1u)), _wgslsmith_mod_vec2_u32(vec2<u32>(_wgslsmith_sub_u32(45232u, 43319u), _wgslsmith_div_u32(18774u, 4294967295u)), vec2<u32>(~u_input.a, _wgslsmith_mult_u32(42962u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global0.a.b, 16u)], 16u)])))), global0.a, -1000f, Struct_1(global0.a.a, abs(~(~16266u)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.b, _wgslsmith_f_op_f32(f32(-1f) * -2244f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(329f, 984f, global0.a.a)) - global0.a.c)), _wgslsmith_add_i32(-14068i, var_0.x)));
    let var_2 = reverseBits(vec2<i32>(global0.c.x, i32(-1i) * -16412i));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec2_u32(~_wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, global0.a.b), vec2<u32>(var_1.d.b, u_input.a) >> (var_1.a % vec2<u32>(32u))), _wgslsmith_mod_vec2_u32(~var_1.a, var_1.a)));
}


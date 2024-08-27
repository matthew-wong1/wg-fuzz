struct Struct_1 {
    a: u32,
    b: i32,
}

struct Struct_2 {
    a: vec4<i32>,
}

struct Struct_3 {
    a: u32,
    b: f32,
    c: u32,
    d: f32,
    e: f32,
}

struct Struct_4 {
    a: f32,
    b: Struct_3,
}

struct Struct_5 {
    a: vec2<f32>,
    b: Struct_2,
    c: i32,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<vec4<i32>, 29>;

var<private> global2: bool = true;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_2) -> i32 {
    global0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-368f)), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(765f, -467f), 112f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-186f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(-921f + -788f)) - _wgslsmith_f_op_f32(849f * _wgslsmith_f_op_f32(-732f - 1342f))), 1000f)), _wgslsmith_f_op_f32(step(-1926f, _wgslsmith_f_op_f32(floor(427f)))), _wgslsmith_f_op_f32(max(1f, 1306f)));
    var var_1 = max(u_input.b.x, -arg_2.a.x);
    let var_2 = true;
    var var_3 = 37277i;
    return arg_1.a.x;
}

fn func_2(arg_0: vec2<u32>, arg_1: vec4<u32>, arg_2: i32, arg_3: vec4<u32>) -> u32 {
    var var_0 = abs(vec4<i32>(~_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, arg_2, arg_2), vec3<i32>(u_input.b.x, -31093i, 2147483647i)), func_3(Struct_2(global1[_wgslsmith_index_u32(52554u, 29u)]), Struct_2(vec4<i32>(-30766i, arg_2, arg_2, -1i)), Struct_2(vec4<i32>(3i, 0i, -1i, -14286i))), -1i, max(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_2, arg_2, arg_2, arg_2), vec4<i32>(21468i, arg_2, arg_2, arg_2)), -4074i))) << (vec4<u32>(_wgslsmith_clamp_u32(_wgslsmith_mod_u32(4294967295u >> (arg_1.x % 32u), min(943u, arg_0.x)), arg_3.x, arg_0.x), 1u, reverseBits(36983u), _wgslsmith_sub_u32(~16939u, u_input.a.x)) % vec4<u32>(32u));
    var var_1 = Struct_4(_wgslsmith_f_op_f32(-325f - 227f), Struct_3(_wgslsmith_div_u32(0u, 1u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -597f))), _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(~vec2<u32>(arg_0.x, arg_3.x), vec2<u32>(0u, arg_3.x)), vec2<u32>(_wgslsmith_add_u32(u_input.a.x, arg_0.x), 67412u)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1024f + -938f))), -1000f));
    let var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.a, -1208f)) * -740f), _wgslsmith_f_op_f32(-var_1.b.b)));
    let var_3 = ~reverseBits(u_input.a);
    let var_4 = Struct_4(var_1.a, var_1.b);
    return var_3.x;
}

fn func_1() -> i32 {
    var var_0 = true;
    var var_1 = Struct_2(global1[_wgslsmith_index_u32(func_2(~(~u_input.a.yw), firstLeadingBit(~select(u_input.a, u_input.a, vec4<bool>(true, true, true, false))), 13651i, vec4<u32>(u_input.a.x, _wgslsmith_mult_u32(u_input.a.x, 1u) & (u_input.a.x >> (6629u % 32u)), u_input.a.x, ~48965u)), 29u)]);
    var var_2 = 1007f;
    let var_3 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -742f), 499f) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(898f, -824f)))), -505f)));
    global2 = false;
    return func_3(Struct_2(-vec4<i32>(-33729i, 15676i, -1i, u_input.b.x) >> (u_input.a % vec4<u32>(32u))), Struct_2(vec4<i32>(countOneBits(-1i), var_1.a.x >> (_wgslsmith_clamp_u32(61958u, 1u, 4294967295u) % 32u), -2147483647i, -firstTrailingBit(1i))), Struct_2(vec4<i32>(~_wgslsmith_sub_i32(-2147483647i, var_1.a.x), firstTrailingBit(_wgslsmith_mult_i32(u_input.b.x, -2147483647i)), _wgslsmith_dot_vec2_i32(var_1.a.yx, firstTrailingBit(vec2<i32>(var_1.a.x, -2147483647i))), _wgslsmith_dot_vec4_i32(var_1.a, ~vec4<i32>(u_input.b.x, 1i, u_input.b.x, 1678i)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(849f, 2369f))), -289f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -457f)))), _wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(-1542f + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(-655f)), _wgslsmith_f_op_f32(558f - 142f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1391f - -2016f), _wgslsmith_f_op_f32(1661f + -450f))))));
    var var_1 = u_input.b.x;
    let var_2 = firstTrailingBit(u_input.b.x | _wgslsmith_div_i32(_wgslsmith_mod_i32(u_input.b.x, u_input.b.x), -28433i));
    var var_3 = vec3<bool>(all(vec2<bool>(true, true)), 312f < var_0.x, false);
    var var_4 = select(vec3<bool>(~func_1() <= _wgslsmith_mult_i32(var_2 & u_input.b.x, _wgslsmith_div_i32(u_input.b.x, -1i)), true, any(vec4<bool>(u_input.a.x < u_input.a.x, false, false, true))), !select(select(vec3<bool>(var_3.x, var_3.x, var_3.x), !vec3<bool>(var_3.x, true, var_3.x), select(vec3<bool>(var_3.x, var_3.x, var_3.x), vec3<bool>(var_3.x, true, var_3.x), true)), !vec3<bool>(var_3.x, var_3.x, false), vec3<bool>(var_3.x, false, any(var_3.zz))), var_3.x);
    let x = u_input.a;
    s_output = StorageBuffer(~(~(~reverseBits(0u))), _wgslsmith_mod_vec2_u32(vec2<u32>(1u, _wgslsmith_dot_vec4_u32(~u_input.a, ~vec4<u32>(u_input.a.x, 25314u, u_input.a.x, u_input.a.x))), vec2<u32>(0u, abs(0u)) >> (~select(vec2<u32>(4294967295u, 6504u), u_input.a.wy, var_3.x) % vec2<u32>(32u))));
}


struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: Struct_1,
    d: f32,
}

struct Struct_3 {
    a: i32,
    b: f32,
    c: vec2<i32>,
    d: Struct_1,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: u32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

var<private> global1: array<Struct_2, 8>;

var<private> global2: array<i32, 6>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
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

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32, arg_1: Struct_1) -> vec3<bool> {
    global0 = reverseBits(~u_input.a);
    var var_0 = firstTrailingBit(vec2<u32>(~max(17439u, u_input.b), 1u));
    let var_1 = Struct_2(arg_1, u_input.a, Struct_1(!all(select(vec4<bool>(true, false, true, arg_1.a), vec4<bool>(true, true, arg_1.a, arg_1.a), arg_1.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1311f, -2029f) - _wgslsmith_f_op_f32(102f + 351f))))));
    let var_2 = Struct_2(var_1.a, vec3<i32>(-13018i, -1i, 0i), Struct_1(true), var_1.d);
    let var_3 = ~0u;
    return vec3<bool>(any(vec4<bool>(false, !var_1.a.a, all(vec2<bool>(var_1.a.a, false)), arg_1.a)), false, all(select(select(!vec4<bool>(var_2.c.a, arg_1.a, true, false), select(vec4<bool>(var_1.a.a, false, var_2.a.a, false), vec4<bool>(var_1.c.a, var_1.a.a, true, false), vec4<bool>(true, false, arg_1.a, var_1.c.a)), !vec4<bool>(true, false, arg_1.a, var_2.c.a)), vec4<bool>(any(vec3<bool>(true, arg_1.a, var_2.a.a)), arg_1.a, var_2.a.a, !var_1.a.a), vec4<bool>(false, true && var_1.a.a, 2147483647i < var_2.b.x, all(vec3<bool>(arg_1.a, false, var_1.c.a))))));
}

fn func_2() -> i32 {
    global2 = array<i32, 6>();
    var var_0 = Struct_2(Struct_1(true), _wgslsmith_clamp_vec3_i32(vec3<i32>(0i, 0i, abs(global2[_wgslsmith_index_u32(u_input.b, 6u)] << (u_input.c % 32u))), _wgslsmith_sub_vec3_i32(u_input.a, ~vec3<i32>(2147483647i, global2[_wgslsmith_index_u32(u_input.c, 6u)], -2147483647i)) ^ _wgslsmith_clamp_vec3_i32(vec3<i32>(27439i, -1i, global0.x) >> (vec3<u32>(u_input.e, 1u, u_input.c) % vec3<u32>(32u)), vec3<i32>(2470i, 2147483647i, u_input.d), ~u_input.a), vec3<i32>(-u_input.a.x, global0.x, u_input.d) | u_input.a), Struct_1(any(func_3(u_input.a.x >> (1u % 32u), Struct_1(true)))), -655f);
    global2 = array<i32, 6>();
    let var_1 = !(1i < _wgslsmith_dot_vec2_i32(select(vec2<i32>(0i, 1i), global0.xy, vec2<bool>(var_0.a.a, true)), min(var_0.b.xy << (vec2<u32>(u_input.e, u_input.b) % vec2<u32>(32u)), select(vec2<i32>(u_input.a.x, u_input.d), vec2<i32>(2147483647i, 2147483647i), false))));
    var var_2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_0.d), _wgslsmith_f_op_f32(f32(-1f) * -1014f)))), var_0.d, _wgslsmith_f_op_f32(var_0.d + _wgslsmith_f_op_f32(-var_0.d)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -203f), var_0.d))) + _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-var_0.d), _wgslsmith_f_op_f32(-var_0.d), _wgslsmith_f_op_f32(-var_0.d), _wgslsmith_div_f32(1667f, -203f))))));
    return i32(-1i) * -u_input.d;
}

fn func_1() -> Struct_2 {
    var var_0 = u_input.a.yy;
    let var_1 = _wgslsmith_add_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(_wgslsmith_sub_i32(_wgslsmith_div_i32(u_input.d, u_input.a.x), global0.x), _wgslsmith_sub_i32(func_2(), countOneBits(global0.x)), -2147483647i), -u_input.a), abs(~(~reverseBits(u_input.a))));
    var var_2 = _wgslsmith_div_i32(var_1.x, abs(i32(-1i) * -2147483647i));
    return Struct_2(Struct_1(true), abs(~(vec3<i32>(2147483647i, 0i, 307i) & var_1)), Struct_1(!any(vec2<bool>(true, true))), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-181f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(1631f))))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1483f, -494f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1811f * -212f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(883f, -1386f)) * _wgslsmith_div_f32(957f, -2177f))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1172f, -438f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-781f, -1853f)))))));
    global2 = array<i32, 6>();
    var var_1 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(763f, var_0.x)) - _wgslsmith_f_op_f32(-155f - var_0.x)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_0.x * var_0.x), _wgslsmith_f_op_f32(-var_0.x))), -1741f) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-185f, -263f, 1963f)), vec3<f32>(var_0.x, -360f, var_0.x)))))));
    var var_2 = Struct_3(u_input.d, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x))))), _wgslsmith_div_vec2_i32(-u_input.a.yx, ~(vec2<i32>(31674i, u_input.d) ^ firstLeadingBit(vec2<i32>(global0.x, -2147483647i)))), Struct_1(true), func_1());
    var var_3 = 0u;
    var var_4 = vec2<bool>(func_3(35092i, Struct_1(true)).x, var_2.d.a);
    let var_5 = Struct_1(false);
    let var_6 = var_5;
    let x = u_input.a;
    s_output = StorageBuffer(~(-u_input.d), vec3<f32>(_wgslsmith_f_op_f32(var_2.b * -871f), var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_2.b - var_0.x), _wgslsmith_f_op_f32(sign(var_2.e.d)))))), 0u, select(~u_input.e, _wgslsmith_dot_vec3_u32(~countOneBits(vec3<u32>(51063u, u_input.b, 25478u)), ~max(vec3<u32>(7712u, 4294967295u, 1u), vec3<u32>(u_input.c, u_input.e, u_input.c))), (_wgslsmith_f_op_f32(var_0.x - -127f) <= var_1.x) || true));
}


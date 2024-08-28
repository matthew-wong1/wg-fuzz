struct Struct_1 {
    a: i32,
    b: f32,
    c: i32,
    d: vec3<i32>,
}

struct Struct_2 {
    a: vec4<u32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: bool,
    c: bool,
    d: vec4<i32>,
    e: vec2<bool>,
}

struct Struct_5 {
    a: vec3<bool>,
    b: Struct_4,
    c: bool,
    d: vec2<bool>,
    e: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: vec3<i32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: vec4<i32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 29> = array<u32, 29>(0u, 49649u, 18073u, 0u, 5078u, 4294967295u, 4294967295u, 76806u, 17340u, 33069u, 1u, 4294967295u, 1u, 52624u, 30201u, 1u, 1u, 83179u, 9318u, 0u, 0u, 53872u, 49338u, 1u, 52608u, 4294967295u, 58180u, 4294967295u, 65750u);

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_2(arg_0: f32) -> i32 {
    global0 = array<u32, 29>();
    let var_0 = abs(firstTrailingBit(_wgslsmith_clamp_vec2_i32(u_input.d.xy | select(u_input.e.zy, vec2<i32>(2147483647i, u_input.d.x), vec2<bool>(true, true)), vec2<i32>(u_input.d.x, 45133i), _wgslsmith_mult_vec2_i32(u_input.d.xy, vec2<i32>(-29154i, u_input.d.x)) << (vec2<u32>(global0[_wgslsmith_index_u32(126145u, 29u)], global0[_wgslsmith_index_u32(0u, 29u)]) % vec2<u32>(32u)))));
    let var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-341f)) + 359f), arg_0) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_0, arg_0), vec2<f32>(1821f, arg_0), true)) + vec2<f32>(1377f, arg_0)))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(arg_0, 651f))))))));
    global0 = array<u32, 29>();
    global0 = array<u32, 29>();
    return _wgslsmith_add_i32(-1i, u_input.e.x << (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, u_input.c, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.c, 29u)], 29u)], 29u)], 29u)], global0[_wgslsmith_index_u32(1u, 29u)]) & vec4<u32>(11517u, u_input.a, 3304u, u_input.c), vec4<u32>(u_input.a, global0[_wgslsmith_index_u32(17580u, 29u)], 4294967295u, global0[_wgslsmith_index_u32(u_input.a, 29u)])) % 32u)) << (~0u % 32u);
}

fn func_3(arg_0: vec3<f32>) -> vec4<u32> {
    let var_0 = firstTrailingBit(623i);
    var var_1 = Struct_4(Struct_1(u_input.d.x | u_input.d.x, arg_0.x, var_0 ^ (var_0 & _wgslsmith_dot_vec3_i32(vec3<i32>(1i, u_input.e.x, -2147483647i), u_input.e.xzx)), -(select(u_input.e.zyy, u_input.e.xyy, false) ^ ~vec3<i32>(u_input.e.x, u_input.e.x, 1i))), all(!select(vec2<bool>(false, true), select(vec2<bool>(false, false), vec2<bool>(false, true), true), false)), _wgslsmith_f_op_f32(abs(arg_0.x)) < _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_0.x, -630f))))), _wgslsmith_mod_vec4_i32(~u_input.e, -_wgslsmith_mult_vec4_i32(vec4<i32>(28319i, -40060i, u_input.d.x, -31665i) ^ u_input.e, _wgslsmith_sub_vec4_i32(u_input.e, u_input.e))), select(select(select(vec2<bool>(true, true), vec2<bool>(true, true), -499f != arg_0.x), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), true), vec2<bool>(true, true), all(select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), false)) || true));
    var_1 = Struct_4(Struct_1(_wgslsmith_dot_vec4_i32(-var_1.d, _wgslsmith_mod_vec4_i32(vec4<i32>(-1i, var_1.a.a, -19401i, var_0), vec4<i32>(u_input.d.x, var_0, var_0, u_input.d.x))) << (0u % 32u), -706f, ~(-select(-13967i, -1i, true)), vec3<i32>(var_1.a.a, abs(1i), ~var_1.d.x)), !var_1.b, true, select(vec4<i32>((var_1.a.c & 0i) >> (_wgslsmith_mod_u32(4294967295u, global0[_wgslsmith_index_u32(4294967295u, 29u)]) % 32u), firstLeadingBit(var_0 & u_input.d.x), -2177i, var_1.d.x), firstTrailingBit(vec4<i32>(u_input.b, 0i, var_1.d.x, var_1.a.c)), !vec4<bool>(any(vec2<bool>(true, true)), !var_1.e.x, 1119f <= arg_0.x, var_1.c)), select(vec2<bool>(!var_1.c, var_1.b), var_1.e, any(!vec3<bool>(var_1.c, var_1.b, true))));
    var var_2 = Struct_4(Struct_1(~(-22710i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) - _wgslsmith_f_op_f32(arg_0.x + arg_0.x))), var_0 | var_1.d.x, u_input.d), var_1.e.x, false, -_wgslsmith_mod_vec4_i32(vec4<i32>(var_1.a.a, 1i, -45666i, -2147483647i), vec4<i32>(var_1.a.d.x, -4974i, 8182i, -2147483647i)) | _wgslsmith_mod_vec4_i32(u_input.e, ~_wgslsmith_mult_vec4_i32(u_input.e, vec4<i32>(var_0, var_1.a.c, u_input.e.x, 2147483647i))), var_1.e);
    var_2 = Struct_4(Struct_1(var_1.a.c, var_2.a.b, _wgslsmith_div_i32(~var_1.a.d.x, -2147483647i) >> (u_input.c % 32u), vec3<i32>(var_1.d.x, -2147483647i, ~_wgslsmith_dot_vec4_i32(vec4<i32>(var_0, u_input.e.x, -1i, var_0), u_input.e))), select(!(var_1.b != var_2.c), all(vec2<bool>(true, var_1.e.x)), var_1.a.a <= var_0), !(_wgslsmith_dot_vec2_i32(var_2.a.d.xz, var_1.a.d.xy) == 1i), _wgslsmith_div_vec4_i32(u_input.e, -vec4<i32>(_wgslsmith_mod_i32(var_2.d.x, -5398i), var_0, var_0, _wgslsmith_dot_vec4_i32(vec4<i32>(var_1.a.c, 0i, -8056i, -35158i), var_2.d))), !(!vec2<bool>(any(vec3<bool>(true, var_2.b, true)), false)));
    return _wgslsmith_mult_vec4_u32(~_wgslsmith_add_vec4_u32(~min(vec4<u32>(u_input.a, 20644u, 97139u, 0u), vec4<u32>(4294967295u, 7249u, global0[_wgslsmith_index_u32(4294967295u, 29u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 29u)], 29u)])), abs(vec4<u32>(1u, 31955u, u_input.c, u_input.c)) & ~vec4<u32>(4294967295u, global0[_wgslsmith_index_u32(u_input.c, 29u)], u_input.c, u_input.c)), _wgslsmith_div_vec4_u32(max(~abs(vec4<u32>(0u, 1u, 1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(23189u, 29u)], 29u)], 29u)])), vec4<u32>(37890u, 4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 29u)], 29u)], u_input.a) & vec4<u32>(4845u, 16444u, 0u, u_input.c)), select(firstLeadingBit(_wgslsmith_clamp_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(9674u, 29u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 29u)], 29u)], 84616u, 15566u), vec4<u32>(18835u, 0u, 42923u, 34725u), vec4<u32>(39256u, global0[_wgslsmith_index_u32(u_input.c, 29u)], 31823u, 57430u))), vec4<u32>(reverseBits(35864u), global0[_wgslsmith_index_u32(0u, 29u)], ~u_input.a, 4294967295u), select(vec4<bool>(false, var_1.e.x, var_1.b, false), select(vec4<bool>(true, true, var_2.b, true), vec4<bool>(false, var_1.e.x, var_2.c, false), vec4<bool>(false, var_1.c, false, true)), vec4<bool>(true, false, var_2.e.x, var_1.b)))));
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_2, arg_2: Struct_5, arg_3: bool) -> vec4<bool> {
    var var_0 = arg_2.b.a;
    var var_1 = _wgslsmith_dot_vec4_i32(firstLeadingBit(abs(-vec4<i32>(var_0.a, 2147483647i, var_0.c, 2147483647i)) | -select(u_input.e, vec4<i32>(0i, u_input.b, 0i, arg_2.b.a.c), vec4<bool>(arg_3, true, arg_2.d.x, arg_3))), vec4<i32>(1i, arg_2.b.a.c, 1i, i32(-1i) * -53775i));
    global0 = array<u32, 29>();
    var var_2 = arg_2.b.a.b;
    var_1 = ~max(_wgslsmith_clamp_i32(-reverseBits(-2147483647i), var_0.a, u_input.b), arg_2.b.a.d.x ^ _wgslsmith_dot_vec3_i32(vec3<i32>(arg_2.b.d.x, u_input.d.x, var_0.d.x), vec3<i32>(5649i, arg_2.b.a.a, -1290i)));
    return select(!vec4<bool>(true, any(vec2<bool>(true, true)), true, all(arg_2.b.e)), vec4<bool>(arg_3 && (all(arg_2.a) && arg_2.d.x), true, var_0.b == _wgslsmith_f_op_f32(var_0.b - -1000f), !(!select(false, true, arg_3))), !select(!vec4<bool>(arg_2.a.x, true, arg_2.d.x, true), !select(vec4<bool>(arg_3, arg_2.d.x, arg_2.b.e.x, arg_2.b.c), vec4<bool>(arg_2.d.x, false, arg_3, arg_3), vec4<bool>(true, true, arg_3, false)), !vec4<bool>(arg_3, arg_3, true, arg_3)));
}

fn func_1() -> vec4<i32> {
    var var_0 = abs(~_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, u_input.a, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.c, 29u)], 29u)], global0[_wgslsmith_index_u32(1891u, 29u)]), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.c, 0u, u_input.c, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.c, 29u)], 29u)]), vec4<u32>(1u, 4294967295u, 13200u, 42504u))) | vec4<u32>(u_input.c, _wgslsmith_div_u32(_wgslsmith_sub_u32(110329u, global0[_wgslsmith_index_u32(u_input.c, 29u)]), 0u), select(u_input.a | u_input.c, min(u_input.c, 4294967295u), true), firstLeadingBit(global0[_wgslsmith_index_u32(30159u, 29u)])));
    var var_1 = Struct_1(abs(65005i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1000f - -1118f), _wgslsmith_f_op_f32(round(-599f)))))), -(u_input.b & _wgslsmith_add_i32(17209i, func_2(-405f))), _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.d.x, u_input.e.x, _wgslsmith_sub_i32(_wgslsmith_div_i32(u_input.d.x, u_input.e.x), u_input.e.x)), vec3<i32>(-1i) * -firstLeadingBit(u_input.e.ywz)));
    let var_2 = func_4(vec3<u32>(reverseBits(_wgslsmith_sub_u32(u_input.a, 25085u)) >> (global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.a, global0[_wgslsmith_index_u32(0u, 29u)]), var_0.xxx), _wgslsmith_sub_u32(global0[_wgslsmith_index_u32(4294967295u, 29u)], u_input.c)), 29u)], 29u)] % 32u), global0[_wgslsmith_index_u32(4294967295u, 29u)], _wgslsmith_div_u32(reverseBits(1u), u_input.a)), Struct_2(func_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.b, var_1.b, -1409f))))), Struct_5(!select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(true, false, true))), Struct_4(Struct_1(u_input.b & 23602i, var_1.b, var_1.a, firstLeadingBit(vec3<i32>(var_1.d.x, u_input.b, u_input.b))), true, all(select(vec2<bool>(true, false), vec2<bool>(false, true), false)), vec4<i32>(_wgslsmith_dot_vec3_i32(u_input.d, var_1.d), -44726i, u_input.d.x, firstTrailingBit(1i)), select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true))), false | all(vec4<bool>(true, false, false, false)), select(select(vec2<bool>(true, true), vec2<bool>(true, true), true), select(vec2<bool>(true, true), vec2<bool>(true, true), true), all(vec2<bool>(true, false)) || true), Struct_2(~vec4<u32>(23719u, var_0.x, 22863u, global0[_wgslsmith_index_u32(var_0.x, 29u)]) | ~vec4<u32>(var_0.x, var_0.x, 45632u, global0[_wgslsmith_index_u32(98398u, 29u)]))), true);
    var var_3 = vec4<bool>(false, true, var_2.x, true);
    var var_4 = _wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(_wgslsmith_sub_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(72185u, 29u)], u_input.a), vec2<u32>(var_0.x, var_0.x)), abs(vec2<u32>(var_0.x, 4294967295u))), ~vec2<u32>(~44763u, reverseBits(1u)), func_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.b, var_1.b, -484f))).ww), min(vec2<u32>(func_3(vec3<f32>(var_1.b, var_1.b, var_1.b)).x, _wgslsmith_mod_u32(max(global0[_wgslsmith_index_u32(4294967295u, 29u)], var_0.x), 60665u)), var_0.zw));
    return -abs(~(~vec4<i32>(var_1.d.x, var_1.c, var_1.c, var_1.c) | vec4<i32>(var_1.d.x, u_input.b, -1i, u_input.d.x)));
}

fn func_5(arg_0: f32, arg_1: vec4<i32>) -> Struct_2 {
    global0 = array<u32, 29>();
    var var_0 = global0[_wgslsmith_index_u32(abs(~_wgslsmith_mod_u32(reverseBits(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.c, u_input.c, 9237u), vec4<u32>(18784u, global0[_wgslsmith_index_u32(u_input.c, 29u)], u_input.c, global0[_wgslsmith_index_u32(4294967295u, 29u)]))), _wgslsmith_add_u32(1u, u_input.c) & ~117758u)), 29u)];
    var var_1 = _wgslsmith_div_f32(2262f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-671f))) - 1473f));
    var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-270f)) - _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(arg_0, -546f), _wgslsmith_f_op_f32(floor(arg_0)), true))))), -713f));
    let var_2 = select(true, false, true);
    return Struct_2(min(~(~(~vec4<u32>(global0[_wgslsmith_index_u32(u_input.a, 29u)], 7031u, global0[_wgslsmith_index_u32(4294967295u, 29u)], 42087u))), firstLeadingBit(func_3(_wgslsmith_div_vec3_f32(vec3<f32>(639f, 2025f, arg_0), vec3<f32>(-1789f, -1155f, arg_0))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(vec4<u32>(20533u, ~max(1u, u_input.c), 77624u, ~106320u) >> (~vec4<u32>(~1u, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.c), vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 29u)], 29u)], global0[_wgslsmith_index_u32(84005u, 29u)])), abs(u_input.a), ~4294967295u) % vec4<u32>(32u)));
    let var_1 = !(!all(vec3<bool>(false, any(vec4<bool>(true, false, true, false)), true)));
    global0 = array<u32, 29>();
    global0 = array<u32, 29>();
    global0 = array<u32, 29>();
    let var_2 = vec2<bool>(var_1, var_1);
    var var_3 = func_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-601f)) - -1305f))), func_1());
    let var_4 = _wgslsmith_add_vec3_i32(-u_input.e.zzx, u_input.e.zxy << (~reverseBits(var_0.a.xzx) % vec3<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(~var_0.a.wx, _wgslsmith_f_op_f32(757f - -1685f), vec4<i32>(-35991i, -2147483647i, 1i, var_4.x), vec4<f32>(-1195f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-447f))), _wgslsmith_f_op_f32(498f + _wgslsmith_f_op_f32(f32(-1f) * -1244f)), -127f));
}


struct Struct_1 {
    a: u32,
    b: f32,
    c: u32,
    d: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec3<i32>,
    d: vec3<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: u32,
    d: vec3<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 8>;

var<private> global1: array<vec3<i32>, 10>;

var<private> global2: array<vec2<bool>, 19>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: u32) -> vec3<f32> {
    let var_0 = vec3<u32>(abs(global0[_wgslsmith_index_u32(35734u, 8u)]), arg_0, global0[_wgslsmith_index_u32(_wgslsmith_add_u32(~u_input.e.x, global0[_wgslsmith_index_u32(~(reverseBits(global0[_wgslsmith_index_u32(4294967295u, 8u)]) << (abs(global0[_wgslsmith_index_u32(49510u, 8u)]) % 32u)), 8u)]), 8u)]);
    let var_1 = vec3<i32>(0i, u_input.a, u_input.d.x);
    global1 = array<vec3<i32>, 10>();
    var var_2 = _wgslsmith_div_u32(~0u, _wgslsmith_mult_u32(4294967295u >> (arg_0 % 32u), ~u_input.e.x << (~13644u % 32u)));
    var var_3 = _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(1f * -1188f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(993f - 789f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -828f) + -577f) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(-2195f))))))));
    return _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.x) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(var_3.x)), _wgslsmith_f_op_f32(abs(var_3.x))))), _wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_3.x)))), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(var_3.x, _wgslsmith_f_op_f32(580f + -211f))))));
}

fn func_2(arg_0: vec4<bool>) -> u32 {
    var var_0 = -1000f;
    var var_1 = true;
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(sign(-1069f)), _wgslsmith_f_op_f32(ceil(-1734f)))) + vec2<f32>(1f, 1f)) * _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1f, 1f))));
    let var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3(57557u))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1775f, var_2.x, 1310f) + vec3<f32>(-482f, var_2.x, 1171f))))), all(select(arg_0.xyw, !arg_0.zxz, select(vec3<bool>(arg_0.x, false, false), arg_0.xyx, arg_0.xyz))))) + _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x)), 804f, _wgslsmith_f_op_f32(f32(-1f) * -384f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1225f, 1791f, -279f) + vec3<f32>(var_2.x, 387f, var_2.x)))) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1239f, var_2.x, -1711f) - vec3<f32>(-1735f, var_2.x, var_2.x)), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_2.x, 733f, var_2.x)))))));
    var var_4 = vec2<u32>(~_wgslsmith_mult_u32(_wgslsmith_add_u32(u_input.e.x, 0u), ~4294967295u), abs(~_wgslsmith_clamp_u32(global0[_wgslsmith_index_u32(4330u, 8u)], 45586u, global0[_wgslsmith_index_u32(u_input.e.x, 8u)]))) & ~vec2<u32>(min(_wgslsmith_mult_u32(0u, u_input.e.x), _wgslsmith_mod_u32(global0[_wgslsmith_index_u32(u_input.e.x, 8u)], u_input.e.x)), ~(14775u & u_input.e.x));
    return _wgslsmith_dot_vec2_u32(firstTrailingBit(vec2<u32>(var_4.x, u_input.e.x)), ~(u_input.e.zy >> (~max(vec2<u32>(global0[_wgslsmith_index_u32(28864u, 8u)], 4294967295u), u_input.e.zz) % vec2<u32>(32u))));
}

fn func_1(arg_0: bool, arg_1: vec4<f32>) -> Struct_1 {
    global0 = array<u32, 8>();
    let var_0 = 14554u;
    var var_1 = 112f;
    let var_2 = _wgslsmith_add_vec3_i32(vec3<i32>(i32(-1i) * -1i, -min(u_input.c.x, 0i), ~u_input.c.x), _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a, u_input.a, -30267i), vec3<i32>(abs(_wgslsmith_dot_vec3_i32(u_input.c, vec3<i32>(0i, u_input.d.x, 31511i))), ~u_input.d.x, u_input.a)));
    let var_3 = vec3<u32>(firstLeadingBit(~4294967295u), _wgslsmith_sub_u32((firstLeadingBit(4294967295u) << (_wgslsmith_add_u32(var_0, 1u) % 32u)) << (global0[_wgslsmith_index_u32(u_input.e.x, 8u)] % 32u), u_input.e.x), countOneBits(u_input.e.x));
    return Struct_1(firstTrailingBit(_wgslsmith_mod_u32(~func_2(vec4<bool>(false, arg_0, true, false)), 4739u)), _wgslsmith_f_op_f32(-arg_1.x), ~abs(_wgslsmith_mult_u32(reverseBits(1u), u_input.e.x)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(arg_1.x, arg_1.x)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1.x, 234f)))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec2<bool>, 19>();
    var var_0 = func_1(~_wgslsmith_mod_u32(global0[_wgslsmith_index_u32(u_input.e.x, 8u)], abs(4294967295u)) < (u_input.e.x >> (1u % 32u)), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(629f, -390f, 524f, -347f)) * vec4<f32>(1679f, -631f, -1303f, 318f)))), vec4<f32>(1000f, -455f, _wgslsmith_f_op_f32(f32(-1f) * -1785f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(1699f, -442f))))))));
    var var_1 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1534f, _wgslsmith_f_op_f32(-1000f - var_0.d), _wgslsmith_div_f32(var_0.d, var_0.d)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.d, var_0.d, var_0.d) + vec3<f32>(var_0.d, var_0.d, var_0.b))), vec3<bool>(true, true, true))), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(1f, var_0.b, _wgslsmith_f_op_f32(-var_0.b)))), all(vec4<bool>(true, true, true, any(vec4<bool>(false, false, true, false)))))), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -645f) * _wgslsmith_f_op_f32(select(var_0.b, 183f, true))), var_0.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))))));
    var_0 = func_1(!(var_1.x > -3379f), vec4<f32>(_wgslsmith_f_op_f32(var_1.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x))), 1192f, var_0.d, var_0.b));
    let var_2 = _wgslsmith_f_op_f32(func_1(true & any(vec4<bool>(true, true, true, true)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.d, _wgslsmith_f_op_f32(var_0.d - 1000f), _wgslsmith_f_op_f32(-740f * -126f), _wgslsmith_f_op_f32(-var_1.x)) + _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(2599f, var_0.b, 2695f, var_1.x)))))).d - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_1(false, vec4<f32>(419f, var_1.x, var_1.x, var_1.x)).b * _wgslsmith_f_op_f32(min(var_1.x, _wgslsmith_f_op_f32(max(var_1.x, var_1.x))))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_u32(4294967295u ^ abs(u_input.e.x), 1u), -1071f, 1u, vec3<u32>(22459u, firstLeadingBit(_wgslsmith_dot_vec4_u32(abs(vec4<u32>(45147u, global0[_wgslsmith_index_u32(1u, 8u)], global0[_wgslsmith_index_u32(0u, 8u)], 40027u)), ~vec4<u32>(4294967295u, var_0.a, 44126u, 48033u))), ~(~_wgslsmith_mod_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(58759u, 8u)], 8u)], var_0.c))), ~global0[_wgslsmith_index_u32(u_input.e.x, 8u)]);
}


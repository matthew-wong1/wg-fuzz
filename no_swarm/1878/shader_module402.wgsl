struct Struct_1 {
    a: f32,
    b: vec4<bool>,
    c: vec2<i32>,
    d: u32,
    e: vec2<i32>,
}

struct Struct_2 {
    a: f32,
    b: vec3<f32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: vec3<u32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec3<i32>,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 25>;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
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

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: i32, arg_1: bool) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -848f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1742f + -670f))))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(1288f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1523f)) - _wgslsmith_f_op_f32(f32(-1f) * -1388f)))));
    var var_1 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0, -189f, var_0) + vec3<f32>(-1177f, -1000f, -527f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-1234f, 111f, var_0) * vec3<f32>(633f, 330f, -1033f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(1906f, 2094f, 1948f))))))), Struct_1(-347f, vec4<bool>(true, all(select(vec2<bool>(true, arg_1), vec2<bool>(false, false), arg_1)), all(select(vec4<bool>(false, true, arg_1, false), vec4<bool>(arg_1, false, arg_1, false), vec4<bool>(arg_1, arg_1, true, false))), all(!vec4<bool>(arg_1, true, arg_1, arg_1))), min(vec2<i32>(_wgslsmith_div_i32(11120i, -1i), ~u_input.a.x), u_input.a.xz ^ vec2<i32>(arg_0, -28681i)), 423u, -(vec2<i32>(-1i) * -vec2<i32>(u_input.a.x, u_input.a.x))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.b.x) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -101f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -190f)))));
}

fn func_2() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(u_input.a.x, true)));
    let var_1 = u_input.b;
    var var_2 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_0, _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(var_0)), _wgslsmith_f_op_f32(abs(-1342f))))) + var_0), !(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true), false)), firstLeadingBit(~firstLeadingBit(u_input.a.zy | vec2<i32>(26375i, u_input.a.x))), global0[_wgslsmith_index_u32(abs(u_input.c.x), 25u)], firstTrailingBit(countOneBits(-vec2<i32>(91548i, -24166i))));
    var_2 = Struct_1(var_0, var_2.b, abs(min(var_2.c >> (u_input.d.zx % vec2<u32>(32u)), ~u_input.a.zx)), global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(var_1, u_input.b), ~var_2.d), ~1u) & _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(u_input.b, _wgslsmith_mod_vec4_u32(vec4<u32>(1u, 17787u, u_input.b.x, global0[_wgslsmith_index_u32(var_2.d, 25u)]), vec4<u32>(global0[_wgslsmith_index_u32(1u, 25u)], var_1.x, 1u, var_2.d))), _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(u_input.b.xw, var_1.zy), _wgslsmith_div_vec2_u32(var_1.wx, u_input.b.zx))), 25u)], -var_2.c);
    var_2 = Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_2.a - -1029f), 1030f, true)) * 1000f))), !select(vec4<bool>(all(var_2.b), var_2.b.x, true, all(vec3<bool>(var_2.b.x, false, false))), vec4<bool>(var_2.b.x, true, var_2.b.x, true), var_2.b.x), u_input.a.yx, _wgslsmith_div_u32(9803u, _wgslsmith_sub_u32(global0[_wgslsmith_index_u32(select(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(var_1.xyy, var_1.wyw), 25u)], _wgslsmith_sub_u32(36107u, 0u), true), 25u)], var_2.d)), vec2<i32>(-2147483647i, 5419i));
    return Struct_1(-687f, vec4<bool>(true, !var_2.b.x, ~(u_input.a.x ^ u_input.a.x) != -var_2.e.x, true), vec2<i32>(-8903i, select(1i, 53461i, select(false, var_2.b.x, true))), 0u, ~vec2<i32>(abs(var_2.e.x), select(-46941i, _wgslsmith_clamp_i32(var_2.c.x, u_input.a.x, -2147483647i), true)));
}

fn func_1(arg_0: bool, arg_1: i32) -> Struct_1 {
    global0 = array<u32, 25>();
    let var_0 = ~0i;
    let var_1 = func_2();
    var var_2 = Struct_1(var_1.a, var_1.b, var_1.c, _wgslsmith_mod_u32(34078u, _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(3155u, 25u)], 55214u, var_1.d), u_input.d), u_input.b.ywz & vec3<u32>(global0[_wgslsmith_index_u32(u_input.b.x, 25u)], global0[_wgslsmith_index_u32(var_1.d, 25u)], var_1.d)), 75941u)), vec2<i32>(select(_wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(arg_1, 11440i, u_input.a.x, var_0), vec4<i32>(-2147483647i, arg_1, -11792i, -46266i)), countOneBits(vec4<i32>(u_input.a.x, var_0, 70276i, var_1.e.x))), _wgslsmith_div_i32(-1i, firstLeadingBit(arg_1)), !var_1.b.x), -50891i));
    var var_3 = var_2.b.wyw;
    return var_1;
}

fn func_4(arg_0: Struct_1, arg_1: bool) -> i32 {
    var var_0 = _wgslsmith_clamp_vec4_u32(max(firstTrailingBit(u_input.b), ~vec4<u32>(arg_0.d, 1u, 939u, 29017u)) ^ ~abs(u_input.b & u_input.b), max(select(_wgslsmith_mod_vec4_u32(u_input.b, ~vec4<u32>(64082u, u_input.b.x, global0[_wgslsmith_index_u32(u_input.d.x, 25u)], arg_0.d)), ~(~vec4<u32>(0u, global0[_wgslsmith_index_u32(50581u, 25u)], arg_0.d, u_input.d.x)), arg_0.b), abs(~firstTrailingBit(u_input.b))), abs(~vec4<u32>(_wgslsmith_sub_u32(4294967295u, global0[_wgslsmith_index_u32(0u, 25u)]), global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.d.x, 4294967295u), 25u)], 25u)], _wgslsmith_mult_u32(17989u, 0u), ~10700u)));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_0.a))), arg_0.b, -vec2<i32>((0i ^ u_input.a.x) << (~global0[_wgslsmith_index_u32(var_0.x, 25u)] % 32u), u_input.a.x), 0u, vec2<i32>(_wgslsmith_div_i32(arg_0.e.x, u_input.a.x), _wgslsmith_clamp_i32(10164i, ~(-1i << (arg_0.d % 32u)), u_input.a.x)));
    var var_2 = var_1.e;
    var var_3 = 65528u;
    global0 = array<u32, 25>();
    return var_2.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<i32>(~u_input.a.x, ~func_4(func_1(true, u_input.a.x), true), countOneBits(-1i), 35584i);
    let var_1 = !vec4<bool>(true, !(!select(true, true, false)), !all(select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, false), false)), true);
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(1i), abs(~(~u_input.c.zx)) & vec2<u32>(abs(min(u_input.b.x, u_input.d.x)), 1u), vec3<i32>(reverseBits(var_0.x), 2147483647i | ~u_input.a.x, select(_wgslsmith_dot_vec2_i32(vec2<i32>(var_0.x, -2147483647i), u_input.a.yx), abs(-1i), !var_1.x)) | max(vec3<i32>(-2147483647i, 2147483647i, _wgslsmith_clamp_i32(u_input.a.x, u_input.a.x, var_0.x)), countOneBits(abs(var_0.zzw))), 59611u, -712f);
}


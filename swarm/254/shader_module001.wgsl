struct Struct_1 {
    a: bool,
    b: f32,
    c: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: i32,
    e: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: i32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 2>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_2() -> f32 {
    let var_0 = 15344u;
    global0 = array<bool, 2>();
    global0 = array<bool, 2>();
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1323f))) - 810f);
    global0 = array<bool, 2>();
    return 799f;
}

fn func_3() -> f32 {
    var var_0 = vec3<bool>(true, false, global0[_wgslsmith_index_u32(1u, 2u)]);
    var var_1 = abs(-(vec2<i32>(-1i) * -vec2<i32>(40952i, 2147483647i))) & _wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.a, select(u_input.a, _wgslsmith_add_i32(u_input.a, 71373i), !global0[_wgslsmith_index_u32(0u, 2u)])), -_wgslsmith_mod_vec2_i32(~vec2<i32>(-18231i, 9754i), vec2<i32>(36558i, u_input.a)), _wgslsmith_clamp_vec2_i32(_wgslsmith_mod_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(2147483647i, -10932i), vec2<i32>(2147483647i, -1i)), vec2<i32>(u_input.a, u_input.a)), -vec2<i32>(u_input.a, u_input.a), abs(-vec2<i32>(-13059i, u_input.a))));
    var_0 = !(!(!select(select(vec3<bool>(false, global0[_wgslsmith_index_u32(16641u, 2u)], true), vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 2u)], false, false), vec3<bool>(false, global0[_wgslsmith_index_u32(55428u, 2u)], global0[_wgslsmith_index_u32(0u, 2u)])), !vec3<bool>(global0[_wgslsmith_index_u32(110138u, 2u)], var_0.x, global0[_wgslsmith_index_u32(1u, 2u)]), vec3<bool>(var_0.x, var_0.x, true))));
    var var_2 = countOneBits(_wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(max(vec2<i32>(var_1.x, u_input.a), vec2<i32>(u_input.a, 1i)) << (vec2<u32>(1u, 1u) % vec2<u32>(32u)), vec2<i32>(var_1.x, 0i) >> (~vec2<u32>(25552u, 1u) % vec2<u32>(32u))), vec2<i32>(-1i, _wgslsmith_div_i32(var_1.x, -13381i))));
    let var_3 = !any(select(select(select(vec4<bool>(true, true, global0[_wgslsmith_index_u32(1u, 2u)], var_0.x), vec4<bool>(var_0.x, true, global0[_wgslsmith_index_u32(78404u, 2u)], global0[_wgslsmith_index_u32(0u, 2u)]), global0[_wgslsmith_index_u32(68867u, 2u)]), select(vec4<bool>(var_0.x, false, global0[_wgslsmith_index_u32(4294967295u, 2u)], global0[_wgslsmith_index_u32(44362u, 2u)]), vec4<bool>(true, false, true, var_0.x), vec4<bool>(var_0.x, var_0.x, false, true)), select(vec4<bool>(false, var_0.x, true, true), vec4<bool>(var_0.x, global0[_wgslsmith_index_u32(4294967295u, 2u)], var_0.x, true), var_0.x)), vec4<bool>(!global0[_wgslsmith_index_u32(43856u, 2u)], false && var_0.x, !var_0.x, true), !(!vec4<bool>(var_0.x, var_0.x, true, true))));
    return -868f;
}

fn func_1() -> i32 {
    global0 = array<bool, 2>();
    let var_0 = 1u;
    let var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(527f - -385f))), _wgslsmith_f_op_f32(794f + _wgslsmith_f_op_f32(func_2())), _wgslsmith_f_op_f32(-685f * _wgslsmith_f_op_f32(func_3())), _wgslsmith_f_op_f32(func_2())) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(vec4<f32>(2049f, 955f, 1372f, -229f), vec4<f32>(571f, 1253f, -100f, 1046f)))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1374f, 225f, 665f, -378f))))), true))));
    let var_2 = var_1.x;
    let var_3 = u_input.a;
    return u_input.a;
}

fn func_4(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: vec2<i32>) -> bool {
    var var_0 = vec2<bool>(true, true & arg_0.a);
    let var_1 = Struct_3(arg_0, Struct_1(!(1u < _wgslsmith_dot_vec2_u32(vec2<u32>(32996u, 4294967295u), vec2<u32>(97410u, 4294967295u))), 486f, select(select(arg_0.c, select(arg_0.c, vec2<bool>(global0[_wgslsmith_index_u32(21062u, 2u)], true), arg_0.c), vec2<bool>(var_0.x, arg_0.a)), vec2<bool>(true, global0[_wgslsmith_index_u32(~1u, 2u)]), !(!vec2<bool>(global0[_wgslsmith_index_u32(9108u, 2u)], arg_0.c.x)))), arg_0, 2147483647i, _wgslsmith_sub_u32(~min(1u, 4294967295u), _wgslsmith_mult_u32(50595u, 3460u) ^ firstTrailingBit(4294967295u)) >> (~1u % 32u));
    global0 = array<bool, 2>();
    let var_2 = -750f < _wgslsmith_div_f32(-1800f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b))));
    let var_3 = ~_wgslsmith_mult_i32(arg_2.x ^ -u_input.a, min(abs(var_1.d), var_1.d));
    return var_1.c.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(Struct_1(global0[_wgslsmith_index_u32(~(~_wgslsmith_clamp_u32(28658u, 4294967295u, 0u)), 2u)], _wgslsmith_f_op_f32(abs(-112f)), select(!(!vec2<bool>(true, global0[_wgslsmith_index_u32(1u, 2u)])), vec2<bool>(true, true), vec2<bool>(!global0[_wgslsmith_index_u32(1u, 2u)], true))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-1230f + -970f), _wgslsmith_div_f32(-1065f, 607f))), vec2<i32>(u_input.a & (_wgslsmith_mod_i32(u_input.a, -2147483647i) | ~u_input.a), func_1()));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -508f)), abs(reverseBits(-select(vec3<i32>(-12628i, u_input.a, u_input.a), vec3<i32>(u_input.a, u_input.a, -1408i), true))), ~u_input.a, _wgslsmith_add_vec4_u32(select(firstTrailingBit(vec4<u32>(1u, 1u, 1u, 1u)), vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 37154u), vec2<u32>(4294967295u, 4294967295u)), firstLeadingBit(78034u), 93992u, ~4294967295u), true), firstTrailingBit(~(~vec4<u32>(264u, 10487u, 4294967295u, 4294967295u)))));
}


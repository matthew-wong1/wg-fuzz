struct Struct_1 {
    a: bool,
    b: vec3<u32>,
    c: vec2<bool>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec4<bool>,
    c: vec2<u32>,
}

struct Struct_3 {
    a: u32,
    b: u32,
    c: vec2<f32>,
    d: vec3<i32>,
}

struct Struct_4 {
    a: vec4<i32>,
    b: vec2<f32>,
    c: u32,
    d: Struct_2,
    e: vec4<bool>,
}

struct Struct_5 {
    a: vec3<i32>,
    b: Struct_1,
    c: u32,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

var<private> global1: array<f32, 22>;

var<private> global2: array<vec2<f32>, 2>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_3) -> u32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(916f - -997f) - _wgslsmith_f_op_f32(abs(global1[_wgslsmith_index_u32(1u, 22u)]))))), _wgslsmith_f_op_f32(-arg_0.c.x), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(global0.x, 22u)])), 1000f, u_input.b.x <= ~14527u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-236f, arg_0.c.x)) - global1[_wgslsmith_index_u32(_wgslsmith_div_u32(arg_0.b, 4294967295u), 22u)]))) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global1[_wgslsmith_index_u32(~(~2806u), 22u)], _wgslsmith_f_op_f32(f32(-1f) * -682f), 217f, _wgslsmith_f_op_f32(round(1f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(u_input.b.x, 22u)], -1025f, -1211f, global1[_wgslsmith_index_u32(41069u, 22u)]) + vec4<f32>(arg_0.c.x, 204f, 1960f, global1[_wgslsmith_index_u32(65702u, 22u)])) + vec4<f32>(arg_0.c.x, global1[_wgslsmith_index_u32(4294967295u, 22u)], arg_0.c.x, arg_0.c.x))), !select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), true))));
    var var_1 = false;
    let var_2 = select(!(!select(vec3<bool>(true, true, false), select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(true, false, false)), select(true, false, true))), select(vec3<bool>(true, true, !any(vec4<bool>(false, false, true, false))), !select(select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(false, true, false)), select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), true), false), _wgslsmith_f_op_f32(arg_0.c.x + _wgslsmith_f_op_f32(sign(-1575f))) >= -1569f), true);
    var_1 = 0u > firstTrailingBit(abs(4294967295u));
    let var_3 = Struct_1(true, select(~(~vec3<u32>(global0.x, 0u, global0.x)), u_input.b, var_2.x), var_2.xy);
    return ~(~_wgslsmith_mod_u32(1u, ~_wgslsmith_dot_vec2_u32(u_input.b.yx, var_3.b.xx)));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_5, arg_2: vec4<u32>, arg_3: vec2<i32>) -> u32 {
    let var_0 = _wgslsmith_mod_u32(68359u, firstLeadingBit(_wgslsmith_mod_u32(arg_0.b.x, func_3(Struct_3(36029u, 15911u, global2[_wgslsmith_index_u32(arg_1.b.b.x, 2u)], vec3<i32>(arg_1.a.x, -2147483647i, -19103i))) << (_wgslsmith_sub_u32(0u, arg_1.c) % 32u))));
    global0 = reverseBits(~reverseBits(arg_2));
    var var_1 = arg_0;
    let var_2 = vec4<i32>(_wgslsmith_mult_i32(_wgslsmith_add_i32(1i, arg_1.a.x) ^ min(-u_input.a.x, 1i), arg_3.x), _wgslsmith_dot_vec2_i32(vec2<i32>(arg_3.x ^ -13680i, -20192i) | -arg_1.a.zx, vec2<i32>(~(arg_1.a.x << (arg_0.b.x % 32u)), 2147483647i)), -_wgslsmith_sub_i32(u_input.a.x, reverseBits(arg_1.a.x)), arg_3.x);
    global1 = array<f32, 22>();
    return ~_wgslsmith_sub_u32(min(~_wgslsmith_mod_u32(1u, 28362u), _wgslsmith_sub_u32(~49130u, u_input.b.x ^ 1u)), select(abs(0u), arg_2.x, !arg_1.b.a || select(var_1.c.x, arg_1.b.a, arg_0.a)));
}

fn func_1(arg_0: i32, arg_1: vec2<u32>) -> Struct_2 {
    let var_0 = Struct_5(reverseBits(-vec3<i32>(u_input.a.x, arg_0, u_input.a.x)), Struct_1(!(!all(vec2<bool>(true, false))), vec3<u32>(countOneBits(17127u), 1u, _wgslsmith_mod_u32(~arg_1.x, 0u)), vec2<bool>(true, true)), arg_1.x, vec2<bool>(true, true));
    let var_1 = _wgslsmith_dot_vec4_u32(min(reverseBits(_wgslsmith_sub_vec4_u32(vec4<u32>(47102u, 4294967295u, 1u, arg_1.x), vec4<u32>(u_input.b.x, u_input.b.x, 0u, 23610u))), ~vec4<u32>(func_2(var_0.b, Struct_5(u_input.a, var_0.b, arg_1.x, vec2<bool>(false, false)), vec4<u32>(52048u, global0.x, 66219u, var_0.c), u_input.a.xz), firstLeadingBit(global0.x), _wgslsmith_mult_u32(global0.x, global0.x), countOneBits(8830u))), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b.x, 1u, u_input.b.x, abs(var_0.c)), ~vec4<u32>(u_input.b.x, arg_1.x, 0u, u_input.b.x), ~(~vec4<u32>(0u, u_input.b.x, 15063u, 4294967295u))) << (vec4<u32>(~1u, 0u, 12061u, var_0.b.b.x) % vec4<u32>(32u)));
    global1 = array<f32, 22>();
    let var_2 = Struct_2(vec3<u32>(abs(arg_1.x), firstTrailingBit(select(95263u, 1u, true) & (12583u << (var_0.b.b.x % 32u))), _wgslsmith_clamp_u32(~var_1, ~func_3(Struct_3(global0.x, var_0.c, vec2<f32>(global1[_wgslsmith_index_u32(4294967295u, 22u)], -1804f), u_input.a)), _wgslsmith_dot_vec2_u32(firstLeadingBit(vec2<u32>(0u, var_1)), _wgslsmith_div_vec2_u32(global0.xy, global0.wy)))), vec4<bool>(all(vec4<bool>(var_0.d.x & var_0.d.x, var_0.b.c.x, var_0.b.a, var_0.d.x)), var_0.b.a, true, false | var_0.d.x), ~(vec2<u32>(_wgslsmith_clamp_u32(13495u, global0.x, u_input.b.x), countOneBits(74958u)) & _wgslsmith_mult_vec2_u32(arg_1, vec2<u32>(28709u, global0.x))));
    global1 = array<f32, 22>();
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a.x;
    var var_1 = func_1(~(-2147483647i), u_input.b.yz);
    let var_2 = firstLeadingBit(~_wgslsmith_clamp_vec3_u32(abs(global0.xxz), _wgslsmith_clamp_vec3_u32(global0.wyz, u_input.b, vec3<u32>(3069u, 1u, 1u)), abs(vec3<u32>(u_input.b.x, 1u, global0.x)))) >> (var_1.a % vec3<u32>(32u));
    var var_3 = func_1(-9581i, global0.zz);
    var var_4 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(u_input.b.x, 22u)], global1[_wgslsmith_index_u32(68787u, 22u)], 1327f, -913f) * vec4<f32>(global1[_wgslsmith_index_u32(global0.x, 22u)], 982f, global1[_wgslsmith_index_u32(var_3.a.x, 22u)], global1[_wgslsmith_index_u32(1u, 22u)])) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-259f, 347f, 506f, global1[_wgslsmith_index_u32(global0.x, 22u)]) + vec4<f32>(global1[_wgslsmith_index_u32(0u, 22u)], global1[_wgslsmith_index_u32(4294967295u, 22u)], global1[_wgslsmith_index_u32(4620u, 22u)], -1463f)))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.b.x, 22u)]), global1[_wgslsmith_index_u32(var_1.c.x, 22u)], 1285f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(68940u, 22u)]))))));
    var var_5 = -2005f;
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(vec3<u32>(var_2.x, ~var_1.a.x, 4294967295u)) | _wgslsmith_add_vec3_u32(~u_input.b | ~u_input.b, vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(var_3.a.x, var_1.c.x, 4294967295u, 4294967295u), vec4<u32>(4294967295u, 0u, u_input.b.x, var_2.x)), var_1.a.x, 1u)));
}


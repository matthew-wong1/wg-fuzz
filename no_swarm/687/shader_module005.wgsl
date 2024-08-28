struct Struct_1 {
    a: u32,
    b: vec4<f32>,
    c: i32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: i32,
    c: vec2<bool>,
    d: vec3<u32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(false, true, false);

var<private> global1: array<Struct_3, 18>;

var<private> global2: array<vec2<bool>, 10> = array<vec2<bool>, 10>(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true));

var<private> global3: array<vec2<i32>, 10>;

var<private> global4: Struct_3;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: bool, arg_1: i32, arg_2: Struct_3, arg_3: Struct_1) -> vec2<f32> {
    let var_0 = select(vec4<u32>(~_wgslsmith_mod_u32(global4.a.a, 11419u), _wgslsmith_mod_u32(~max(4294967295u, 26826u), ~0u), global4.a.a, abs(firstLeadingBit(85635u))), _wgslsmith_sub_vec4_u32(~abs(vec4<u32>(4294967295u, 32677u, 6511u, 0u)) >> (select(firstTrailingBit(vec4<u32>(u_input.a, 0u, arg_2.a.a, arg_2.a.a)), reverseBits(vec4<u32>(u_input.a, 15153u, 4294967295u, arg_3.a)), vec4<bool>(true, true, true, true)) % vec4<u32>(32u)), ~(~vec4<u32>(global4.a.a, arg_3.a, arg_2.a.a, u_input.a))), vec4<bool>(true, true || arg_0, !any(!vec3<bool>(false, true, arg_0)), global0.x));
    let var_1 = true || global0.x;
    global3 = array<vec2<i32>, 10>();
    global2 = array<vec2<bool>, 10>();
    global3 = array<vec2<i32>, 10>();
    return _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(arg_3.b.x, arg_2.a.b.x), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-arg_2.a.b.zx), vec2<f32>(_wgslsmith_f_op_f32(arg_3.b.x - -1442f), _wgslsmith_f_op_f32(global4.a.b.x - global4.a.b.x)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-arg_3.b.zy), arg_3.b.wy, !select(global0.zz, vec2<bool>(var_1, false), global0.xy)))));
}

fn func_2() -> i32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global4.a.b.x, global4.a.b.x)))), _wgslsmith_f_op_vec2_f32(func_3(false, i32(-1i) * -2147483647i, global1[_wgslsmith_index_u32(global4.a.a, 18u)], global4.a)))));
    let var_1 = _wgslsmith_f_op_vec2_f32(func_3(all(global0.zz), _wgslsmith_add_i32(abs(_wgslsmith_clamp_i32(2147483647i, 2147483647i, -28245i)), abs(global4.a.c)) & 38120i, global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(0u, u_input.a, u_input.b), _wgslsmith_mod_vec3_u32(vec3<u32>(28089u, 568u, 7320u), vec3<u32>(global4.a.a, u_input.b, 69880u))), countOneBits(select(vec3<u32>(u_input.b, global4.a.a, 1u), vec3<u32>(u_input.a, global4.a.a, global4.a.a), global0.x))), 18u)], global4.a)).x;
    global0 = !(!vec3<bool>(any(vec2<bool>(global0.x, false)), !global0.x, !global0.x));
    global3 = array<vec2<i32>, 10>();
    var var_2 = select(select(!(!select(vec4<bool>(true, false, true, global0.x), vec4<bool>(true, global0.x, false, true), vec4<bool>(global0.x, true, global0.x, global0.x))), select(vec4<bool>(any(vec2<bool>(true, global0.x)), global0.x, true, false), !(!vec4<bool>(true, global0.x, global0.x, global0.x)), true), false), !vec4<bool>(global0.x, true, -1384f >= _wgslsmith_f_op_f32(ceil(1000f)), !global0.x), select(vec4<bool>(all(vec2<bool>(false, false)), all(vec4<bool>(global0.x, false, global0.x, global0.x)), true, !global0.x), vec4<bool>(global0.x, _wgslsmith_mult_u32(0u, u_input.b) != 42236u, !any(vec4<bool>(global0.x, true, global0.x, global0.x)), !global0.x), global0.x));
    return ~1i;
}

fn func_1() -> Struct_3 {
    let var_0 = abs(countOneBits(_wgslsmith_clamp_vec3_u32(vec3<u32>(global4.a.a, global4.a.a, 1u) ^ vec3<u32>(u_input.a, 35486u, 98884u), ~vec3<u32>(108783u, global4.a.a, 20706u), reverseBits(vec3<u32>(u_input.b, global4.a.a, 22012u))))) >> (min(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a, _wgslsmith_div_u32(88787u, 41623u), 1u), ~(vec3<u32>(global4.a.a, 80611u, global4.a.a) | vec3<u32>(0u, 0u, u_input.b))), vec3<u32>(30874u, u_input.a, 21246u)) % vec3<u32>(32u));
    var var_1 = ~(~func_2());
    var var_2 = global2[_wgslsmith_index_u32(max(var_0.x, u_input.a), 10u)];
    global1 = array<Struct_3, 18>();
    var_1 = -1i;
    return global1[_wgslsmith_index_u32(var_0.x, 18u)];
}

fn func_4(arg_0: Struct_3) -> StorageBuffer {
    var var_0 = -2147483647i ^ global4.a.c;
    return StorageBuffer(_wgslsmith_clamp_vec4_u32(abs(vec4<u32>(16670u, arg_0.a.a, 2352u, abs(1733u))), _wgslsmith_div_vec4_u32(~(~vec4<u32>(26656u, 45307u, global4.a.a, 0u)), vec4<u32>(38766u, ~global4.a.a, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 0u, global4.a.a), vec3<u32>(arg_0.a.a, 4294967295u, u_input.b)), arg_0.a.a)), vec4<u32>(1u, abs(0u), func_1().a.a, u_input.a)), vec3<u32>(_wgslsmith_div_u32(_wgslsmith_mod_u32(global4.a.a, _wgslsmith_add_u32(28033u, arg_0.a.a)), ~global4.a.a & global4.a.a), ~15673u << (_wgslsmith_add_u32(u_input.b >> (88562u % 32u), arg_0.a.a) % 32u), _wgslsmith_clamp_u32(u_input.b, arg_0.a.a, 1u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global4.a.b.x, 1f));
    var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1361f, global4.a.b.x))));
    let var_1 = -8888i;
    let var_2 = -915f;
    global3 = array<vec2<i32>, 10>();
    let x = u_input.a;
    s_output = func_4(func_1());
}


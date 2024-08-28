struct Struct_1 {
    a: vec2<bool>,
    b: bool,
    c: bool,
    d: vec4<bool>,
    e: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<u32>,
    c: vec2<i32>,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: array<vec4<bool>, 12>;

var<private> global2: array<vec3<u32>, 7> = array<vec3<u32>, 7>(vec3<u32>(4294967295u, 8220u, 1u), vec3<u32>(0u, 57817u, 0u), vec3<u32>(18921u, 40418u, 36582u), vec3<u32>(18881u, 1912u, 5320u), vec3<u32>(111824u, 5340u, 38330u), vec3<u32>(355u, 58239u, 4294967295u), vec3<u32>(61661u, 1u, 5075u));

var<private> global3: array<vec2<i32>, 18>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_1(arg_0: vec2<f32>) -> u32 {
    var var_0 = _wgslsmith_clamp_u32(u_input.b.x, u_input.b.x, 4294967295u);
    global0 = vec3<bool>(true, true, !(!(u_input.b.x <= _wgslsmith_sub_u32(u_input.b.x, u_input.b.x))));
    let var_1 = ~u_input.b;
    let var_2 = arg_0.x;
    global3 = array<vec2<i32>, 18>();
    return 1u;
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<bool>, arg_3: f32) -> bool {
    var var_0 = arg_3;
    global3 = array<vec2<i32>, 18>();
    global3 = array<vec2<i32>, 18>();
    return !(!(!all(!vec3<bool>(arg_1.a.x, arg_1.a.x, global0.x))));
}

fn func_2(arg_0: u32, arg_1: vec2<u32>) -> u32 {
    let var_0 = global2[_wgslsmith_index_u32(~arg_1.x, 7u)];
    global0 = vec3<bool>(global0.x, true, true);
    var var_1 = vec2<f32>(-1655f, -660f);
    var var_2 = Struct_1(global0.yy, _wgslsmith_mod_i32(u_input.a, _wgslsmith_sub_i32(~3112i, ~u_input.a)) == _wgslsmith_clamp_i32(-_wgslsmith_sub_i32(u_input.a, -5276i), _wgslsmith_mod_i32(_wgslsmith_add_i32(-17567i, u_input.a), -u_input.a), u_input.a), global0.x || select(!(0i >= u_input.a), all(select(vec3<bool>(global0.x, global0.x, global0.x), vec3<bool>(global0.x, global0.x, global0.x), vec3<bool>(true, global0.x, true))), global0.x), !vec4<bool>(_wgslsmith_div_f32(1279f, -662f) == _wgslsmith_div_f32(var_1.x, var_1.x), true, func_3(Struct_1(vec2<bool>(global0.x, true), global0.x, false, global1[_wgslsmith_index_u32(1u, 12u)], u_input.a), Struct_1(vec2<bool>(true, true), true, true, global1[_wgslsmith_index_u32(arg_0, 12u)], -10556i), vec2<bool>(true, true), _wgslsmith_f_op_f32(ceil(var_1.x))), true), _wgslsmith_div_i32(~_wgslsmith_div_i32(-2147483647i, _wgslsmith_dot_vec2_i32(global3[_wgslsmith_index_u32(6593u, 18u)], vec2<i32>(u_input.a, u_input.a))), select(u_input.a, -abs(u_input.a), select(true, true, global0.x || global0.x))));
    let var_3 = ~(-40168i);
    return u_input.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~vec3<u32>(reverseBits(select(~10040u, ~48690u, all(vec3<bool>(true, global0.x, global0.x)))), abs(func_2(func_1(vec2<f32>(533f, -1365f)), ~vec2<u32>(u_input.b.x, 45487u))), func_1(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, 1287f) + vec2<f32>(1265f, 755f))))));
    var var_1 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1f, 1f)))));
    global2 = array<vec3<u32>, 7>();
    global1 = array<vec4<bool>, 12>();
    var_1 = vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_1.x))), _wgslsmith_f_op_f32(round(407f)));
    var var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-123f - _wgslsmith_f_op_f32(var_1.x - var_1.x)), var_1.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(971f + var_1.x), -1000f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x * 637f) - -1969f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x * 474f))), var_1.x));
    let var_3 = _wgslsmith_div_f32(var_1.x, var_2.x) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_2.x), var_2.x, all(select(global0.xx, vec2<bool>(true, false), global0.xx)))) + -813f);
    global2 = array<vec3<u32>, 7>();
    let var_4 = _wgslsmith_add_vec2_i32(max(vec2<i32>(-2147483647i, reverseBits(1i)), global3[_wgslsmith_index_u32(var_0.x, 18u)]), vec2<i32>(0i, -2147483647i));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_1.x, var_1.x, var_1.x, var_2.x))), _wgslsmith_f_op_vec4_f32(vec4<f32>(1110f, var_2.x, var_2.x, var_1.x) + vec4<f32>(962f, 1191f, var_1.x, 268f))))))), _wgslsmith_clamp_vec2_u32(~u_input.b.zy, reverseBits(_wgslsmith_div_vec2_u32(vec2<u32>(80045u, 9866u), vec2<u32>(36435u, var_0.x)) >> (vec2<u32>(0u, 35781u) % vec2<u32>(32u))), ~(~vec2<u32>(var_0.x, 0u))), _wgslsmith_mod_vec2_i32(abs(min(_wgslsmith_sub_vec2_i32(global3[_wgslsmith_index_u32(var_0.x, 18u)], vec2<i32>(var_4.x, -2820i)), ~global3[_wgslsmith_index_u32(0u, 18u)])), reverseBits(vec2<i32>(-1i) * -vec2<i32>(0i, var_4.x))), u_input.b.x, var_0.x);
}


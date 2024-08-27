struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(true);

var<private> global1: vec3<i32>;

var<private> global2: array<vec2<u32>, 29> = array<vec2<u32>, 29>(vec2<u32>(1u, 1u), vec2<u32>(0u, 4294967295u), vec2<u32>(1u, 0u), vec2<u32>(59529u, 0u), vec2<u32>(20910u, 1u), vec2<u32>(0u, 8037u), vec2<u32>(1u, 4294967295u), vec2<u32>(10381u, 8258u), vec2<u32>(0u, 0u), vec2<u32>(57241u, 15013u), vec2<u32>(9125u, 68177u), vec2<u32>(0u, 1u), vec2<u32>(3542u, 18957u), vec2<u32>(1u, 4294967295u), vec2<u32>(51518u, 60689u), vec2<u32>(46575u, 4294967295u), vec2<u32>(1u, 14619u), vec2<u32>(42142u, 3815u), vec2<u32>(71897u, 1u), vec2<u32>(4294967295u, 0u), vec2<u32>(1u, 56402u), vec2<u32>(1u, 5916u), vec2<u32>(5147u, 95643u), vec2<u32>(7243u, 0u), vec2<u32>(0u, 1u), vec2<u32>(33554u, 0u), vec2<u32>(1u, 53696u), vec2<u32>(4530u, 19408u), vec2<u32>(13942u, 66104u));

var<private> global3: array<Struct_1, 13>;

var<private> global4: array<vec2<u32>, 10> = array<vec2<u32>, 10>(vec2<u32>(90256u, 23026u), vec2<u32>(10042u, 78749u), vec2<u32>(14895u, 3297u), vec2<u32>(62121u, 34017u), vec2<u32>(44784u, 1u), vec2<u32>(41936u, 4294967295u), vec2<u32>(29662u, 4294967295u), vec2<u32>(4237u, 4294967295u), vec2<u32>(4294967295u, 0u), vec2<u32>(1u, 1u));

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_1(arg_0: vec3<u32>, arg_1: vec3<u32>) -> f32 {
    var var_0 = false;
    global3 = array<Struct_1, 13>();
    global4 = array<vec2<u32>, 10>();
    let var_1 = ~1u | countOneBits(arg_0.x);
    let var_2 = global3[_wgslsmith_index_u32(arg_1.x, 13u)];
    return _wgslsmith_div_f32(-1424f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-197f, _wgslsmith_f_op_f32(f32(-1f) * -557f)))));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<bool>) -> i32 {
    global0 = global3[_wgslsmith_index_u32(~abs(abs(1u)), 13u)];
    let var_0 = max(-(global1.yz & _wgslsmith_div_vec2_i32(select(global1.xz, vec2<i32>(-2147483647i, -2147483647i), global0.a), ~vec2<i32>(u_input.a, u_input.a))), vec2<i32>(global1.x, min(~max(global1.x, 31077i), -2147483647i)));
    var var_1 = vec2<u32>(abs(min(8612u, firstLeadingBit(abs(0u)))), _wgslsmith_div_u32(reverseBits(abs(0u)), ~(~42493u)));
    global3 = array<Struct_1, 13>();
    global4 = array<vec2<u32>, 10>();
    return _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_add_i32(var_0.x, ~global1.x), _wgslsmith_div_i32(_wgslsmith_div_i32(~1i, -u_input.a), global1.x), _wgslsmith_mult_i32(~(-12389i), 1i), u_input.a), select(vec4<i32>(abs(u_input.a), min(59562i, var_0.x), u_input.a, select(var_0.x, 0i, false)), vec4<i32>(2147483647i & global1.x, ~u_input.a, reverseBits(-2147483647i), _wgslsmith_dot_vec3_i32(vec3<i32>(global1.x, 4387i, -2147483647i), vec3<i32>(u_input.a, -19167i, u_input.a))), select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, true), vec4<bool>(arg_1.x, arg_1.x, arg_1.x, arg_1.x))) >> (vec4<u32>(var_1.x, select(countOneBits(var_1.x), 4294967295u << (var_1.x % 32u), all(arg_1)), var_1.x, reverseBits(_wgslsmith_clamp_u32(var_1.x, var_1.x, 0u))) % vec4<u32>(32u)));
}

fn func_2(arg_0: f32) -> Struct_1 {
    let var_0 = vec3<i32>(26818i, _wgslsmith_clamp_i32(~(-1i), -_wgslsmith_add_i32(func_3(Struct_1(true), vec2<bool>(false, false)), 47293i), u_input.a >> (abs(min(765u, 4294967295u)) % 32u)), func_3(Struct_1(false), vec2<bool>(true, false)));
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, _wgslsmith_f_op_f32(-arg_0), 905f))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-932f, 358f, arg_0)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, arg_0, 643f) * vec3<f32>(arg_0, arg_0, 1636f))))));
    let var_2 = _wgslsmith_add_vec2_i32(-firstLeadingBit(var_0.xz | var_0.xx), _wgslsmith_mult_vec2_i32(_wgslsmith_div_vec2_i32(global1.zy, vec2<i32>(var_0.x, var_0.x)), _wgslsmith_mult_vec2_i32(vec2<i32>(-61198i, var_0.x) << (global2[_wgslsmith_index_u32(1u, 29u)] % vec2<u32>(32u)), -vec2<i32>(global1.x, -1i)))) >> (global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_mod_u32(27488u, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), select(vec4<u32>(53468u, 0u, 0u, 4294967295u), vec4<u32>(0u, 7950u, 4294967295u, 67250u), vec4<bool>(global0.a, true, true, true)))), 16876u), 29u)] % vec2<u32>(32u));
    global2 = array<vec2<u32>, 29>();
    var var_3 = Struct_1(!global0.a);
    return Struct_1(global0.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(firstTrailingBit(vec3<u32>(71029u, 38883u, 9825u)), ~(~vec3<u32>(4294967295u, 0u, 12416u))))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-1510f, _wgslsmith_f_op_f32(-1012f + 358f)))))), -u_input.a < global1.x));
    let var_1 = global3[_wgslsmith_index_u32(4294967295u, 13u)];
    var var_2 = select(!vec4<bool>(all(vec2<bool>(global0.a, false)) && true, true, any(select(vec4<bool>(true, var_1.a, false, global0.a), vec4<bool>(var_1.a, global0.a, true, global0.a), vec4<bool>(false, global0.a, false, true))), var_1.a && all(vec4<bool>(false, true, global0.a, false))), !(!vec4<bool>(false, var_1.a & true, false & global0.a, any(vec2<bool>(true, false)))), _wgslsmith_clamp_i32(_wgslsmith_mod_i32(-1i, -4801i), i32(-1i) * -global1.x, -45014i) == _wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, 1i, u_input.a), vec3<i32>(global1.x, u_input.a, u_input.a)), u_input.a));
    global2 = array<vec2<u32>, 29>();
    let var_3 = i32(-1i) * -2147483647i;
    let var_4 = var_0;
    let var_5 = func_2(var_4);
    let var_6 = _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 1u, 4294967295u, 55223u), vec4<u32>(0u, 4294967295u, 4294967295u, 16763u)) << (47364u % 32u), ~27125u), firstLeadingBit(global4[_wgslsmith_index_u32(1u, 10u)])), ~_wgslsmith_dot_vec3_u32(abs(vec3<u32>(4294967295u, 4294967295u, 19766u)), vec3<u32>(1u, 1u, 1u) >> (firstTrailingBit(vec3<u32>(4294967295u, 0u, 44774u)) % vec3<u32>(32u))));
    global2 = array<vec2<u32>, 29>();
    let x = u_input.a;
    s_output = StorageBuffer(1818f, vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1975f)) - _wgslsmith_f_op_f32(func_1(vec3<u32>(23207u, 44678u, var_6), vec3<u32>(var_6, 4294967295u, 1u)))))), _wgslsmith_div_f32(var_4, -328f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1770f - 311f))) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(var_0))))), _wgslsmith_f_op_f32(-var_0)), ~(~0u), _wgslsmith_div_u32((var_6 | (18034u << (var_6 % 32u))) << (max(35433u, _wgslsmith_add_u32(var_6, var_6)) % 32u), ~1u));
}


struct Struct_1 {
    a: vec3<i32>,
    b: i32,
}

struct Struct_2 {
    a: f32,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: i32,
    d: vec4<u32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 29> = array<Struct_1, 29>(Struct_1(vec3<i32>(18958i, -28938i, 6821i), i32(-2147483648)), Struct_1(vec3<i32>(-1i, 0i, i32(-2147483648)), 33860i), Struct_1(vec3<i32>(-40844i, -1i, 33810i), 2147483647i), Struct_1(vec3<i32>(-1i, i32(-2147483648), i32(-2147483648)), 13294i), Struct_1(vec3<i32>(-28754i, 2147483647i, 38371i), -52778i), Struct_1(vec3<i32>(-1i, i32(-2147483648), i32(-2147483648)), -5606i), Struct_1(vec3<i32>(57013i, -15410i, 2147483647i), -44502i), Struct_1(vec3<i32>(2147483647i, -1i, 2147483647i), 1i), Struct_1(vec3<i32>(1i, 56951i, 1i), 1i), Struct_1(vec3<i32>(-5387i, 1i, -22813i), 0i), Struct_1(vec3<i32>(i32(-2147483648), -38517i, 0i), 4724i), Struct_1(vec3<i32>(0i, 1i, i32(-2147483648)), 3688i), Struct_1(vec3<i32>(-10189i, 5600i, -26189i), 2147483647i), Struct_1(vec3<i32>(1i, 2147483647i, 89584i), 0i), Struct_1(vec3<i32>(0i, 1i, 36172i), 14996i), Struct_1(vec3<i32>(-3050i, 2147483647i, 7347i), 19462i), Struct_1(vec3<i32>(34465i, -21869i, -12644i), 1i), Struct_1(vec3<i32>(1i, 2147483647i, 0i), 2147483647i), Struct_1(vec3<i32>(2147483647i, 0i, 1i), 1i), Struct_1(vec3<i32>(2147483647i, 32782i, 11643i), i32(-2147483648)), Struct_1(vec3<i32>(1i, 20473i, 1i), 1i), Struct_1(vec3<i32>(2147483647i, 1i, 4381i), 2147483647i), Struct_1(vec3<i32>(2147483647i, 0i, 0i), 1i), Struct_1(vec3<i32>(22791i, i32(-2147483648), 2147483647i), -34467i), Struct_1(vec3<i32>(-1i, -7766i, 64990i), -13272i), Struct_1(vec3<i32>(34351i, -1i, 2162i), -1i), Struct_1(vec3<i32>(i32(-2147483648), 2147483647i, 1555i), -1i), Struct_1(vec3<i32>(-14059i, -13311i, -22614i), 36176i), Struct_1(vec3<i32>(0i, 1i, 2147483647i), 1i));

var<private> global1: array<Struct_1, 19> = array<Struct_1, 19>(Struct_1(vec3<i32>(-3996i, 1i, 10665i), -86828i), Struct_1(vec3<i32>(-22399i, 2147483647i, 0i), i32(-2147483648)), Struct_1(vec3<i32>(i32(-2147483648), 68334i, 1i), 2866i), Struct_1(vec3<i32>(i32(-2147483648), 0i, -1i), 18593i), Struct_1(vec3<i32>(21681i, -1i, -61825i), 1i), Struct_1(vec3<i32>(19421i, 0i, i32(-2147483648)), -1i), Struct_1(vec3<i32>(0i, 1916i, i32(-2147483648)), 0i), Struct_1(vec3<i32>(i32(-2147483648), 2147483647i, -1i), -65618i), Struct_1(vec3<i32>(31534i, 3346i, -32554i), 15481i), Struct_1(vec3<i32>(2147483647i, 2147483647i, 2147483647i), -48857i), Struct_1(vec3<i32>(0i, -7258i, i32(-2147483648)), 1i), Struct_1(vec3<i32>(2147483647i, 45238i, 1i), -1i), Struct_1(vec3<i32>(1i, i32(-2147483648), -1i), 40445i), Struct_1(vec3<i32>(2147483647i, 10015i, 1i), 1i), Struct_1(vec3<i32>(-27467i, 45911i, i32(-2147483648)), 85429i), Struct_1(vec3<i32>(-1i, 52290i, -11662i), 2147483647i), Struct_1(vec3<i32>(2147483647i, 0i, 2147483647i), -37125i), Struct_1(vec3<i32>(13948i, 0i, i32(-2147483648)), -15020i), Struct_1(vec3<i32>(1715i, 0i, 1i), -9544i));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: vec3<i32>) -> vec3<bool> {
    let var_0 = _wgslsmith_sub_i32(_wgslsmith_add_i32(_wgslsmith_mod_i32(2147483647i, arg_0.x), 0i ^ _wgslsmith_dot_vec2_i32(arg_0.yy, vec2<i32>(u_input.b, arg_0.x))) >> (u_input.d.x % 32u), u_input.b);
    var var_1 = Struct_2(_wgslsmith_div_f32(-520f, _wgslsmith_f_op_f32(-725f - -244f)), vec4<i32>(-2147483647i, -9099i, 1i, arg_0.x & (i32(-1i) * -2147483647i)));
    global1 = array<Struct_1, 19>();
    var_1 = Struct_2(1702f, u_input.e);
    var_1 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1947f)))), select(~(-abs(vec4<i32>(var_0, 1i, var_0, 2399i))), vec4<i32>(firstLeadingBit(_wgslsmith_sub_i32(arg_0.x, 2147483647i)), ~(~arg_0.x), abs(2147483647i), (var_1.b.x & u_input.e.x) << (_wgslsmith_div_u32(u_input.d.x, u_input.d.x) % 32u)), all(vec4<bool>(u_input.d.x <= u_input.d.x, true, all(vec4<bool>(true, false, false, false)), true))));
    return vec3<bool>(all(vec4<bool>(true, true, true, true)), any(vec2<bool>(u_input.d.x == reverseBits(1u), false)), false);
}

fn func_2(arg_0: vec2<i32>, arg_1: vec3<i32>, arg_2: bool) -> vec3<bool> {
    var var_0 = Struct_2(-1304f, select(_wgslsmith_clamp_vec4_i32(_wgslsmith_div_vec4_i32(u_input.e << (vec4<u32>(u_input.d.x, 63434u, 3271u, 0u) % vec4<u32>(32u)), _wgslsmith_clamp_vec4_i32(u_input.e, vec4<i32>(arg_1.x, arg_0.x, arg_1.x, arg_0.x), u_input.e)), u_input.e, u_input.e), ~abs(u_input.e), true));
    global0 = array<Struct_1, 29>();
    let var_1 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(987f, var_0.a)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.a, 130f) * vec2<f32>(var_0.a, var_0.a)))))));
    var var_2 = !select(!(!(!vec3<bool>(false, arg_2, true))), select(!select(vec3<bool>(true, true, arg_2), vec3<bool>(true, arg_2, arg_2), vec3<bool>(true, false, true)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(arg_2, true, arg_2)), !func_3(arg_1)), true);
    var var_3 = func_3(arg_1);
    return func_3(-vec3<i32>(0i, 12270i, arg_0.x));
}

fn func_4(arg_0: vec3<f32>, arg_1: vec3<bool>, arg_2: Struct_2, arg_3: vec2<u32>) -> Struct_2 {
    let var_0 = false;
    let var_1 = global0[_wgslsmith_index_u32(arg_3.x, 29u)];
    let var_2 = vec4<bool>(arg_1.x, (true | arg_1.x) | !all(vec2<bool>(true, false)), true, any(!(!func_3(vec3<i32>(u_input.c, -86848i, arg_2.b.x)))));
    global1 = array<Struct_1, 19>();
    global1 = array<Struct_1, 19>();
    return arg_2;
}

fn func_1() -> Struct_2 {
    var var_0 = func_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(204f, -186f, 1362f))))))), select(!(!select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), true)), func_2(~select(u_input.a, u_input.a, false), ~abs(vec3<i32>(u_input.a.x, 21305i, 50449i)), true), select(true, false, true)), Struct_2(-1207f, firstTrailingBit(-u_input.e >> (_wgslsmith_sub_vec4_u32(u_input.d, vec4<u32>(u_input.d.x, 16760u, 1u, 34794u)) % vec4<u32>(32u)))), u_input.d.zw);
    var var_1 = all(vec3<bool>(all(select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true)), any(vec4<bool>(false, false, false, false)))), true, false));
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(-var_0.a), _wgslsmith_div_f32(var_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a)))));
    global0 = array<Struct_1, 29>();
    var_1 = false;
    return func_4(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a, 1846f, var_2.x) - vec3<f32>(955f, var_0.a, -1699f)) - vec3<f32>(var_2.x, var_0.a, var_0.a)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(340f, -779f, var_2.x)))))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(127f)) + _wgslsmith_f_op_f32(min(479f, var_2.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1611f, -2520f)) * _wgslsmith_f_op_f32(select(var_0.a, var_2.x, true))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2.x, -194f))), !(!func_3(vec3<i32>(1i, -7216i, -2147483647i))))), select(select(vec3<bool>(true, false, any(vec4<bool>(true, true, false, false))), vec3<bool>(35255u > u_input.d.x, all(vec3<bool>(false, true, false)), false), !select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), true)), vec3<bool>(select(any(vec3<bool>(true, false, false)), true, true), true, true), vec3<bool>(true, true, true)), Struct_2(var_0.a, ~u_input.e), ~_wgslsmith_mult_vec2_u32(u_input.d.yy, _wgslsmith_mult_vec2_u32(~vec2<u32>(u_input.d.x, 19242u), u_input.d.zz)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 19>();
    let var_0 = !(!any(vec4<bool>(true, true, true, true)));
    var var_1 = func_1();
    global0 = array<Struct_1, 29>();
    let var_2 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_1.a, var_1.a), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, var_1.a) - vec2<f32>(var_1.a, -1268f))))) + vec2<f32>(_wgslsmith_f_op_f32(-var_1.a), _wgslsmith_f_op_f32(var_1.a + _wgslsmith_f_op_f32(-548f * var_1.a))))));
    var var_3 = func_3(var_1.b.xwy).x;
    var_1 = Struct_2(_wgslsmith_f_op_f32(-var_2.x), var_1.b);
    let x = u_input.a;
    s_output = StorageBuffer(func_1().b.yz, 0u << (abs(~4453u | min(u_input.d.x, 0u)) % 32u), -36577i, -679f);
}


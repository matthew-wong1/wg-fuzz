struct Struct_1 {
    a: vec4<f32>,
    b: bool,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<f32>(829f, 1344f, 113f, 1067f), true);

var<private> global1: array<vec2<bool>, 6>;

var<private> global2: bool;

var<private> global3: vec3<i32> = vec3<i32>(26599i, -21592i, 16333i);

var<private> global4: f32 = 1000f;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: u32, arg_1: Struct_1) -> f32 {
    global0 = Struct_1(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_1.a.x, _wgslsmith_f_op_f32(arg_1.a.x + global0.a.x), arg_1.a.x, _wgslsmith_f_op_f32(sign(-474f))))), any(select(!vec3<bool>(arg_1.b, true, false), select(!vec3<bool>(global0.b, global0.b, true), !vec3<bool>(false, arg_1.b, true), global0.b), all(select(vec4<bool>(global0.b, arg_1.b, arg_1.b, arg_1.b), vec4<bool>(global0.b, true, global0.b, arg_1.b), global0.b)))));
    let var_0 = arg_1;
    var var_1 = var_0;
    let var_2 = arg_0;
    global3 = -((_wgslsmith_sub_vec3_i32(-vec3<i32>(1i, 2147483647i, global3.x), vec3<i32>(26181i, u_input.a, -2147483647i)) << (_wgslsmith_div_vec3_u32(~vec3<u32>(var_2, var_2, var_2), vec3<u32>(var_2, 1u, arg_0)) % vec3<u32>(32u))) << (vec3<u32>(_wgslsmith_add_u32(arg_0, arg_0), var_2, select(arg_0, var_2, any(vec3<bool>(true, var_1.b, false)))) % vec3<u32>(32u)));
    return -618f;
}

fn func_4(arg_0: vec2<f32>, arg_1: i32, arg_2: Struct_1, arg_3: vec4<bool>) -> bool {
    let var_0 = false;
    var var_1 = !any(!vec4<bool>(arg_3.x, 38941i >= u_input.a, true, global0.b));
    let var_2 = arg_2;
    var var_3 = _wgslsmith_clamp_vec2_i32(global3.xy, firstLeadingBit(~min(vec2<i32>(6472i, u_input.a), global3.yy) << (~vec2<u32>(1u, 1u) % vec2<u32>(32u))), ~_wgslsmith_clamp_vec2_i32(~vec2<i32>(-48354i, u_input.a), global3.xy, _wgslsmith_add_vec2_i32(global3.xy, global3.xx)));
    global3 = -countOneBits((vec3<i32>(arg_1, u_input.a, 1i) ^ abs(vec3<i32>(-28341i, -2147483647i, u_input.a))) >> (_wgslsmith_mod_vec3_u32(vec3<u32>(7539u, 0u, 28710u), max(vec3<u32>(4294967295u, 44561u, 1u), vec3<u32>(13146u, 39954u, 66051u))) % vec3<u32>(32u)));
    return countOneBits(max(1i, firstTrailingBit(20987i))) <= (global3.x >> (~1u % 32u));
}

fn func_2(arg_0: Struct_1) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1676f));
    global3 = countOneBits(~vec3<i32>(-25410i, ~(i32(-1i) * -1i), _wgslsmith_mult_i32(u_input.a, 16317i)));
    let var_1 = vec3<bool>(func_4(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(floor(arg_0.a.x)), _wgslsmith_f_op_f32(func_3(0u, arg_0)))), 2147483647i, Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0, -540f, arg_0.a.x, -824f) * global0.a) + vec4<f32>(-1211f, 498f, arg_0.a.x, -878f)), any(!vec4<bool>(true, true, false, global0.b))), select(vec4<bool>(true, global0.b, arg_0.b, true), !select(vec4<bool>(false, false, false, arg_0.b), vec4<bool>(false, false, arg_0.b, global0.b), true), select(select(vec4<bool>(true, false, false, global0.b), vec4<bool>(global0.b, false, global0.b, global0.b), vec4<bool>(global0.b, true, global0.b, true)), !vec4<bool>(false, false, arg_0.b, false), arg_0.a.x > arg_0.a.x))), true, all(select(select(vec3<bool>(true, global0.b, false), !vec3<bool>(global0.b, global0.b, true), !vec3<bool>(arg_0.b, arg_0.b, false)), vec3<bool>(true, true, true), select(!vec3<bool>(arg_0.b, false, true), !vec3<bool>(true, true, arg_0.b), vec3<bool>(true, arg_0.b, false)))));
    global0 = arg_0;
    let var_2 = arg_0;
    return abs(~_wgslsmith_div_u32(firstLeadingBit(reverseBits(1u)), 4294967295u));
}

fn func_1(arg_0: vec4<u32>) -> vec2<i32> {
    let var_0 = true;
    var var_1 = select(vec3<bool>(false, 2829u != ~arg_0.x, var_0), !(!select(vec3<bool>(global0.b, var_0, true), !vec3<bool>(global0.b, true, var_0), select(vec3<bool>(true, true, var_0), vec3<bool>(false, var_0, false), global0.b))), select(vec3<bool>(!all(global1[_wgslsmith_index_u32(4294967295u, 6u)]), global0.b, all(!global1[_wgslsmith_index_u32(arg_0.x, 6u)])), !vec3<bool>(var_0, global0.b, var_0), vec3<bool>(global0.b, false, all(vec3<bool>(var_0, false, var_0)))));
    var var_2 = global0.b;
    let var_3 = _wgslsmith_mult_u32(~func_2(Struct_1(global0.a, false)), arg_0.x) << (1u % 32u);
    var_2 = select(all(vec4<bool>(true, true, true, true)), !any(select(!vec3<bool>(false, false, var_1.x), select(vec3<bool>(var_0, true, global0.b), vec3<bool>(var_1.x, var_0, true), var_1.x), select(vec3<bool>(true, global0.b, global0.b), vec3<bool>(false, global0.b, var_1.x), true))), var_0 == any(!select(vec4<bool>(false, var_1.x, false, false), vec4<bool>(true, true, var_1.x, false), true)));
    return _wgslsmith_add_vec2_i32(~vec2<i32>(~global3.x, _wgslsmith_clamp_i32(global3.x, -u_input.a, -u_input.a)), abs(~_wgslsmith_clamp_vec2_i32(~vec2<i32>(u_input.a, global3.x), max(global3.xy, vec2<i32>(-29914i, 8233i)), vec2<i32>(u_input.a, -35633i) << (arg_0.wy % vec2<u32>(32u)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(vec4<u32>(_wgslsmith_div_u32(1u, 1u), 64312u, min(1u, 1u), 1u)) >> (vec2<u32>(1u, ~(~min(49112u, 1u))) % vec2<u32>(32u));
    global1 = array<vec2<bool>, 6>();
    global1 = array<vec2<bool>, 6>();
    var var_1 = Struct_1(vec4<f32>(global0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-2270f, _wgslsmith_f_op_f32(-global0.a.x))), -175f, 1000f), select(true, all(select(vec3<bool>(global0.b, global0.b, global0.b), vec3<bool>(true, false, global0.b), vec3<bool>(true, global0.b, true))), true & (global0.b & true)) || global0.b);
    let var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -839f)), _wgslsmith_f_op_f32(abs(-174f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a.x) + var_1.a.x), var_1.a.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1533f * _wgslsmith_f_op_f32(select(var_1.a.x, var_1.a.x, global0.b))) * var_1.a.x) < 540f);
    var var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(global0.a * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(global0.a)) - vec4<f32>(global0.a.x, global0.a.x, 871f, var_2.a.x)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(427f, var_1.a.x, -910f, global0.a.x)))))), global0.b);
    let var_4 = var_2;
    var var_5 = 16772u;
    var var_6 = 1u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_i32(countOneBits(~vec4<i32>(u_input.a, -23641i, 0i, -31962i)), vec4<i32>(_wgslsmith_div_i32(_wgslsmith_mod_i32(global3.x, 2213i), select(0i, 24200i, false)), var_0.x, 28431i, abs(global3.x))), ~_wgslsmith_clamp_i32(_wgslsmith_sub_i32(~global3.x, _wgslsmith_div_i32(u_input.a, var_0.x)), 1i, 1i), vec3<u32>(firstTrailingBit(_wgslsmith_add_u32(func_2(Struct_1(global0.a, false)), 1u)), 43253u, ~_wgslsmith_div_u32(_wgslsmith_mod_u32(0u, 61748u), _wgslsmith_mod_u32(36398u, 9420u))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1444f, _wgslsmith_f_op_f32(var_2.a.x * _wgslsmith_div_f32(var_3.a.x, var_4.a.x)), _wgslsmith_f_op_f32(f32(-1f) * -596f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_4.a.x) - 1563f))));
}


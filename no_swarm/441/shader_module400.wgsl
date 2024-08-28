struct Struct_1 {
    a: u32,
    b: vec2<f32>,
    c: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: i32,
    d: f32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 13>;

var<private> global1: vec3<u32>;

var<private> global2: array<i32, 2>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_1) -> vec2<bool> {
    global2 = array<i32, 2>();
    global0 = array<vec3<u32>, 13>();
    let var_0 = Struct_1(_wgslsmith_mod_u32(global1.x, ~(~global1.x)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0.b)) * arg_0.b), select(!vec2<bool>(arg_0.c.x, !arg_0.c.x), vec2<bool>(!(!arg_0.c.x), arg_0.c.x), !all(select(vec2<bool>(arg_0.c.x, arg_0.c.x), arg_0.c, vec2<bool>(false, false)))));
    var var_1 = vec4<f32>(529f, _wgslsmith_f_op_f32(-var_0.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-482f - -1580f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(907f))))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(-750f, -1320f)))), 242f)));
    let var_2 = u_input.a;
    return vec2<bool>(any(vec3<bool>(true, true, true)), var_0.c.x);
}

fn func_2() -> Struct_2 {
    let var_0 = -11039i;
    var var_1 = Struct_1(_wgslsmith_dot_vec2_u32(global1.zz, _wgslsmith_mod_vec2_u32(_wgslsmith_add_vec2_u32(global1.xx, ~vec2<u32>(global1.x, global1.x)), global1.zx)), vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1374f))), _wgslsmith_div_f32(1288f, 805f)), select(select(vec2<bool>(true, true), vec2<bool>(true, true), func_3(Struct_1(global1.x, vec2<f32>(-825f, 1535f), vec2<bool>(false, false)))), func_3(Struct_1(global1.x, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-273f, 145f)), vec2<bool>(true, true))), true));
    var var_2 = _wgslsmith_sub_u32(_wgslsmith_div_u32(_wgslsmith_div_u32(0u, var_1.a) >> (_wgslsmith_mult_u32(var_1.a, 53258u) % 32u), ~(1u >> (global1.x % 32u))) & var_1.a, global1.x);
    var var_3 = Struct_1(0u, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-184f, _wgslsmith_f_op_f32(step(-634f, 516f))))), var_1.b), vec2<bool>(((var_0 < var_0) && all(var_1.c)) && var_1.c.x, all(vec3<bool>(true, true, true))));
    let var_4 = Struct_1(_wgslsmith_mod_u32(~(~var_1.a), var_1.a), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(var_3.b, vec2<f32>(var_3.b.x, -609f))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-var_3.b))))), vec2<bool>(func_3(Struct_1(global1.x, _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.b.x, var_3.b.x)), var_3.c)).x, all(vec2<bool>(false, true & var_3.c.x))));
    return Struct_2(var_4, global0[_wgslsmith_index_u32(var_1.a, 13u)]);
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_2, arg_2: bool) -> vec3<f32> {
    var var_0 = func_2().a;
    global1 = func_2().b;
    var var_1 = func_2().a;
    global0 = array<vec3<u32>, 13>();
    let var_2 = _wgslsmith_dot_vec4_i32(reverseBits(countOneBits(abs(vec4<i32>(global2[_wgslsmith_index_u32(global1.x, 2u)], u_input.a, -18974i, -1i) >> (vec4<u32>(var_0.a, arg_0.x, var_0.a, var_1.a) % vec4<u32>(32u))))), vec4<i32>(_wgslsmith_mod_i32(1i, -(0i | global2[_wgslsmith_index_u32(0u, 2u)])), u_input.a, min(_wgslsmith_add_i32(max(-1i, 2147483647i), ~(-1i)), reverseBits(_wgslsmith_dot_vec3_i32(vec3<i32>(global2[_wgslsmith_index_u32(0u, 2u)], global2[_wgslsmith_index_u32(var_1.a, 2u)], u_input.a), vec3<i32>(6221i, -596i, global2[_wgslsmith_index_u32(arg_1.a.a, 2u)])))), global2[_wgslsmith_index_u32(func_2().a.a >> (arg_0.x % 32u), 2u)]));
    return _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.a.b.x, 134f, 172f))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(374f, -133f, -555f), vec3<f32>(755f, var_0.b.x, -1285f))))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.a.b.x, var_1.b.x, 860f))) * _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(vec3<f32>(var_1.b.x, arg_1.a.b.x, arg_1.a.b.x), vec3<f32>(arg_1.a.b.x, arg_1.a.b.x, 106f)))))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.a.b.x, -153f, var_1.b.x) + vec3<f32>(-424f, -430f, 1000f))) * _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_1.b.x, var_1.b.x, 124f), vec3<f32>(1811f, var_0.b.x, arg_1.a.b.x)))))), vec3<f32>(-1592f, _wgslsmith_f_op_f32(-1707f + _wgslsmith_f_op_f32(f32(-1f) * -2755f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(arg_1.a.b.x, var_1.b.x)), 970f))))));
}

fn func_5(arg_0: i32, arg_1: vec3<f32>, arg_2: Struct_2) -> Struct_1 {
    var var_0 = _wgslsmith_add_vec2_u32(global1.xy, global1.zz);
    let var_1 = !(!(!select(!vec3<bool>(false, arg_2.a.c.x, arg_2.a.c.x), select(vec3<bool>(arg_2.a.c.x, arg_2.a.c.x, arg_2.a.c.x), vec3<bool>(false, false, false), false), select(vec3<bool>(arg_2.a.c.x, arg_2.a.c.x, false), vec3<bool>(false, arg_2.a.c.x, false), vec3<bool>(arg_2.a.c.x, true, arg_2.a.c.x)))));
    var var_2 = Struct_1(~_wgslsmith_sub_u32(_wgslsmith_div_u32(92682u, global1.x) << (abs(37384u) % 32u), 0u), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.x) * -2079f), -976f))), vec2<bool>(!(arg_2.a.c.x | true) && func_3(arg_2.a).x, any(var_1)));
    let var_3 = vec4<bool>(true, arg_2.a.c.x, any(arg_2.a.c), true);
    let var_4 = reverseBits(max(abs(~vec4<u32>(global1.x, var_2.a, var_0.x, 1u)), _wgslsmith_mod_vec4_u32(vec4<u32>(var_0.x, 1u, 39417u, global1.x) << (vec4<u32>(arg_2.b.x, 0u, arg_2.b.x, var_2.a) % vec4<u32>(32u)), ~vec4<u32>(var_0.x, 4294967295u, global1.x, 4294967295u))) & vec4<u32>(_wgslsmith_dot_vec3_u32(~arg_2.b, vec3<u32>(63463u, var_0.x, global1.x)), arg_2.a.a, global1.x, 4294967295u));
    return func_2().a;
}

fn func_1(arg_0: bool, arg_1: vec3<bool>) -> vec4<bool> {
    var var_0 = func_5(countOneBits(u_input.a), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-249f + 552f), _wgslsmith_f_op_f32(ceil(-1000f)), -1781f), _wgslsmith_f_op_vec3_f32(func_4(max(global0[_wgslsmith_index_u32(global1.x, 13u)], global0[_wgslsmith_index_u32(global1.x, 13u)]), func_2(), arg_1.x && true))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1519f, -1000f, -588f)) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(136f, -494f, 1012f), vec3<f32>(129f, -381f, -712f), vec3<bool>(true, true, arg_1.x)))) * vec3<f32>(_wgslsmith_div_f32(-581f, 120f), _wgslsmith_div_f32(314f, -555f), _wgslsmith_f_op_f32(f32(-1f) * -1312f)))), func_2());
    var_0 = Struct_1(var_0.a, var_0.b, !vec2<bool>(true == (true & var_0.c.x), select(var_0.c.x, true, any(vec4<bool>(var_0.c.x, false, arg_1.x, true)))));
    global0 = array<vec3<u32>, 13>();
    let var_1 = !arg_1;
    var var_2 = func_2();
    return select(!select(select(!vec4<bool>(arg_0, arg_0, true, var_0.c.x), !vec4<bool>(true, false, var_2.a.c.x, var_1.x), !vec4<bool>(false, true, var_1.x, var_1.x)), !vec4<bool>(true, var_0.c.x, true, var_0.c.x), select(select(vec4<bool>(var_2.a.c.x, var_2.a.c.x, var_1.x, arg_1.x), vec4<bool>(false, arg_1.x, var_2.a.c.x, var_0.c.x), vec4<bool>(var_2.a.c.x, true, false, arg_0)), select(vec4<bool>(arg_1.x, false, false, var_2.a.c.x), vec4<bool>(false, var_1.x, var_1.x, var_1.x), vec4<bool>(true, true, var_0.c.x, false)), all(vec4<bool>(false, var_0.c.x, false, var_0.c.x)))), vec4<bool>(var_2.a.c.x, !(var_0.a < _wgslsmith_mult_u32(var_2.b.x, 0u)), !(!func_5(-1689i, vec3<f32>(var_0.b.x, var_0.b.x, var_0.b.x), Struct_2(Struct_1(82122u, var_0.b, arg_1.xz), global0[_wgslsmith_index_u32(0u, 13u)])).c.x), any(!select(vec4<bool>(arg_0, arg_0, var_2.a.c.x, arg_0), vec4<bool>(true, var_1.x, false, var_1.x), vec4<bool>(true, var_1.x, false, false)))), !arg_0);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<bool>(!(!(0u < global1.x)), !(any(vec2<bool>(true, true)) == !all(vec4<bool>(true, false, false, true))), any(func_1(false, vec3<bool>(true, true, true))));
    global2 = array<i32, 2>();
    let var_1 = func_2();
    global1 = min(_wgslsmith_div_vec3_u32(vec3<u32>(func_2().a.a, ~0u, 1u), ~global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_mult_u32(var_1.a.a, 4667u), _wgslsmith_sub_u32(1u, 1u), 19057u), 13u)]), vec3<u32>(_wgslsmith_div_u32(33328u, ~84241u), select(reverseBits(22151u), abs(_wgslsmith_dot_vec3_u32(global0[_wgslsmith_index_u32(var_1.a.a, 13u)], var_1.b)), all(vec3<bool>(var_0.x, var_1.a.c.x, var_0.x))), 26073u));
    var var_2 = 59214u;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(global2[_wgslsmith_index_u32(max(global1.x, 10154u), 2u)], -(global2[_wgslsmith_index_u32(~70480u, 2u)] ^ select(31908i, u_input.a, var_0.x)), _wgslsmith_sub_i32(~u_input.a >> (_wgslsmith_mult_u32(var_1.b.x, var_1.b.x) % 32u), u_input.a), global2[_wgslsmith_index_u32(max(var_1.a.a, ~1u), 2u)]), vec2<u32>(var_1.a.a >> (1u % 32u), (var_1.a.a & max(global1.x, 4294967295u)) & 35471u), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(~func_2().b.yx, ~(~global1.xz)), select(_wgslsmith_mod_vec2_u32(vec2<u32>(var_1.a.a, global1.x), global1.zz << (vec2<u32>(var_1.a.a, 0u) % vec2<u32>(32u))), ~_wgslsmith_mult_vec2_u32(global1.xx, var_1.b.xy), var_1.a.c.x)), 2u)], var_1.a.b.x, vec3<i32>(firstLeadingBit(-reverseBits(u_input.a)), 0i, 2147483647i));
}


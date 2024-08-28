struct Struct_1 {
    a: bool,
    b: bool,
    c: vec3<bool>,
    d: vec3<f32>,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_2,
    d: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: f32,
    c: Struct_3,
    d: Struct_2,
}

struct Struct_5 {
    a: vec2<i32>,
    b: vec3<u32>,
    c: Struct_1,
    d: Struct_4,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: vec4<bool>;

var<private> global2: array<i32, 7>;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: u32, arg_1: bool, arg_2: Struct_4) -> f32 {
    let var_0 = arg_1;
    var var_1 = Struct_4(31341i, _wgslsmith_f_op_f32(floor(arg_2.c.d.a.d.x)), Struct_3(global0.d.a, global0.c.c, arg_2.d, Struct_2(arg_2.d.a)), global0.c.d);
    var_1 = Struct_4(-1i, global0.b, var_1.c, arg_2.d);
    let var_2 = Struct_5(_wgslsmith_mod_vec2_i32(~max(_wgslsmith_mult_vec2_i32(u_input.b, u_input.c.xx), u_input.c.zx), max(vec2<i32>(_wgslsmith_sub_i32(arg_2.a, -37354i), global2[_wgslsmith_index_u32(arg_2.d.a.e, 7u)]), -u_input.b)), _wgslsmith_sub_vec3_u32(min(vec3<u32>(~global0.c.c.a.e, ~arg_2.d.a.e, 0u >> (var_1.c.c.a.e % 32u)), countOneBits(vec3<u32>(arg_2.c.a.e, 4294967295u, 23401u) & vec3<u32>(arg_2.c.c.a.e, var_1.d.a.e, 0u))), ~(~vec3<u32>(var_1.c.a.e, var_1.c.b.a.e, 4294967295u) << (countOneBits(vec3<u32>(1u, arg_2.d.a.e, arg_0)) % vec3<u32>(32u)))), Struct_1(arg_1, !((var_1.c.d.a.c.x != var_1.d.a.a) | var_1.c.c.a.b), global0.c.a.c, vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(305f - global0.d.a.d.x))), 1f, arg_2.b), 1u), arg_2);
    global2 = array<i32, 7>();
    return 1396f;
}

fn func_2() -> f32 {
    let var_0 = Struct_1(global0.c.a.a, true, global1.wyx, vec3<f32>(global0.c.c.a.d.x, _wgslsmith_f_op_f32(floor(-1142f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1000f, global0.b)))))), global0.c.a.e);
    var var_1 = true;
    let var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.c.a.d.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -656f), 670f), _wgslsmith_f_op_f32(func_3(~(~4294967295u), false, Struct_4(_wgslsmith_mod_i32(-2147483647i, global2[_wgslsmith_index_u32(global0.c.d.a.e, 7u)]), _wgslsmith_f_op_f32(ceil(var_0.d.x)), global0.c, global0.d))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.d.x + _wgslsmith_f_op_f32(-2417f + -711f)))));
    var_1 = any(!(!(!select(vec4<bool>(false, global0.d.a.a, true, false), vec4<bool>(global1.x, true, global0.c.b.a.c.x, true), vec4<bool>(var_0.b, global1.x, true, global0.d.a.c.x)))));
    let var_3 = global0.d.a;
    return -1609f;
}

fn func_1(arg_0: vec2<u32>) -> bool {
    var var_0 = global0.d.a.c;
    var var_1 = select(0u, 4294967295u, var_0.x);
    var var_2 = !vec4<bool>(-1526f > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.c.c.a.d.x * -1349f)), var_0.x, global1.x, global0.d.a.e == (1u >> (global0.d.a.e % 32u)));
    var var_3 = 4294967295u;
    var var_4 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2())), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(851f * -293f)), 312f, 256f))));
    return global0.c.a.a;
}

fn func_4(arg_0: f32, arg_1: bool, arg_2: f32, arg_3: Struct_2) -> Struct_2 {
    global0 = Struct_4(_wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_dot_vec3_i32(min(u_input.c, u_input.c), u_input.c), u_input.b.x), _wgslsmith_div_vec2_i32(u_input.b, vec2<i32>(u_input.c.x, 1i))), _wgslsmith_f_op_f32(-arg_0), Struct_3(Struct_1(any(!global1.zy), arg_3.a.a, !(!vec3<bool>(global0.c.d.a.a, global0.c.d.a.c.x, true)), vec3<f32>(arg_0, _wgslsmith_f_op_f32(-730f * -944f), _wgslsmith_f_op_f32(max(global0.d.a.d.x, -455f))), max(global0.c.b.a.e, arg_3.a.e)), global0.d, Struct_2(global0.d.a), Struct_2(global0.d.a)), global0.c.b);
    global1 = vec4<bool>(!(!select(0i == u_input.a, 10938u <= global0.c.b.a.e, global0.c.a.c.x)), all(!select(!vec4<bool>(true, true, false, global0.d.a.b), !vec4<bool>(true, arg_1, arg_3.a.b, true), !vec4<bool>(true, arg_3.a.a, true, true))), all(vec3<bool>(!(arg_2 >= 2553f), !any(vec4<bool>(true, false, true, true)), any(select(global0.d.a.c.zz, global1.xw, true)))), arg_3.a.b);
    var var_0 = _wgslsmith_mod_vec2_u32(select(vec2<u32>(_wgslsmith_clamp_u32(global0.d.a.e, global0.c.a.e, global0.d.a.e >> (1u % 32u)), ~_wgslsmith_mult_u32(4294967295u, arg_3.a.e)), _wgslsmith_div_vec2_u32(vec2<u32>(~0u, 0u), select(_wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, arg_3.a.e), vec2<u32>(13729u, 0u)), vec2<u32>(global0.d.a.e, arg_3.a.e), select(global0.d.a.c.yy, vec2<bool>(arg_1, true), false))), arg_3.a.d.x != _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(arg_0)), arg_2)), min(~(abs(vec2<u32>(37971u, arg_3.a.e)) >> (_wgslsmith_add_vec2_u32(vec2<u32>(40994u, 1u), vec2<u32>(arg_3.a.e, 29130u)) % vec2<u32>(32u))), ~(~vec2<u32>(global0.c.c.a.e, 4294967295u) << (~vec2<u32>(global0.d.a.e, global0.d.a.e) % vec2<u32>(32u)))));
    var_0 = vec2<u32>(~_wgslsmith_div_u32(arg_3.a.e, 50061u) & _wgslsmith_dot_vec2_u32(max(~vec2<u32>(151642u, global0.d.a.e), vec2<u32>(arg_3.a.e, 61483u) << (vec2<u32>(arg_3.a.e, 0u) % vec2<u32>(32u))), ~max(vec2<u32>(arg_3.a.e, arg_3.a.e), vec2<u32>(71800u, global0.d.a.e))), 1u);
    global1 = select(select(!select(vec4<bool>(arg_1, true, arg_3.a.c.x, false), vec4<bool>(true, global0.d.a.a, false, arg_1), true), vec4<bool>(all(select(global0.c.d.a.c, arg_3.a.c, false)), true, !arg_1 || false, global0.d.a.b), !all(select(vec4<bool>(global0.d.a.a, global1.x, true, false), vec4<bool>(false, true, false, true), false))), !select(vec4<bool>(true, select(arg_3.a.a, true, false), global2[_wgslsmith_index_u32(var_0.x, 7u)] > global0.a, all(vec4<bool>(true, true, false, global1.x))), select(vec4<bool>(true, arg_1, arg_3.a.c.x, false), !vec4<bool>(arg_1, true, global1.x, false), arg_1), !arg_1), any(!vec3<bool>(false, !global0.c.c.a.b, true)));
    return Struct_2(global0.c.c.a);
}

fn func_5(arg_0: Struct_2, arg_1: u32, arg_2: vec3<u32>, arg_3: bool) -> vec4<bool> {
    var var_0 = any(select(!(!(!arg_0.a.c.xy)), vec2<bool>(true, true), true));
    var var_1 = ~2147483647i;
    var var_2 = vec2<bool>(any(vec3<bool>(any(arg_0.a.c), true, true)), true);
    global2 = array<i32, 7>();
    var_2 = vec2<bool>(any(select(select(select(vec4<bool>(false, arg_0.a.a, arg_0.a.a, global1.x), vec4<bool>(arg_3, true, false, var_2.x), vec4<bool>(global0.c.d.a.c.x, true, var_2.x, global0.c.c.a.c.x)), vec4<bool>(true, true, var_2.x, true), global0.d.a.c.x), select(vec4<bool>(global0.d.a.a, false, arg_0.a.b, true), vec4<bool>(global0.d.a.c.x, arg_0.a.c.x, arg_3, var_2.x), true), 10206u == _wgslsmith_sub_u32(arg_0.a.e, 4294967295u))), arg_3);
    return vec4<bool>(arg_3, func_4(global0.c.c.a.d.x, global1.x, arg_0.a.d.x, func_4(_wgslsmith_f_op_f32(round(-1526f)), false, global0.c.b.a.d.x, Struct_2(global0.d.a))).a.c.x, firstTrailingBit(_wgslsmith_div_i32(~u_input.c.x, _wgslsmith_add_i32(-15540i, -28113i))) <= global2[_wgslsmith_index_u32(arg_1, 7u)], !(!(!global0.c.b.a.a)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_5(func_4(-1377f, func_1(~max(vec2<u32>(23096u, global0.c.b.a.e), vec2<u32>(global0.d.a.e, global0.c.b.a.e))), _wgslsmith_f_op_f32(-global0.b), Struct_2(Struct_1(all(global1.yw), true, select(global1.xxz, global1.zzw, global0.c.a.c), vec3<f32>(2328f, global0.b, global0.b), global0.d.a.e))), global0.c.c.a.e, ~vec3<u32>(global0.c.b.a.e, _wgslsmith_sub_u32(52280u, firstLeadingBit(20693u)), _wgslsmith_mod_u32(global0.c.c.a.e, 16710u & global0.c.a.e)), false);
    var var_0 = !(!global1.wz);
    global2 = array<i32, 7>();
    var var_1 = global0.c;
    var var_2 = Struct_2(func_4(-2082f, false, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global0.d.a.d.x * var_1.d.a.d.x), -1616f, global0.c.a.e <= 0u)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1109f + 433f))), Struct_2(global0.d.a)).a);
    let var_3 = Struct_1(!var_1.c.a.b, !(!global0.d.a.b | !select(global1.x, global0.d.a.a, var_1.a.b)), !(!vec3<bool>(true, func_5(Struct_2(Struct_1(true, var_1.d.a.b, vec3<bool>(global0.c.d.a.a, var_0.x, false), vec3<f32>(1564f, -227f, 634f), 38660u)), 22894u, vec3<u32>(0u, var_2.a.e, var_1.a.e), true).x, true)), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-var_2.a.d))), var_1.d.a.e & select(var_2.a.e, _wgslsmith_add_u32(~0u, ~var_1.c.a.e), all(!var_1.c.a.c.zy)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_i32(~vec4<i32>(u_input.c.x, ~global2[_wgslsmith_index_u32(var_1.b.a.e, 7u)], u_input.a, -27617i >> (global0.c.a.e % 32u)), vec4<i32>(-1i) * -(~vec4<i32>(global2[_wgslsmith_index_u32(var_1.a.e, 7u)], 1i, u_input.c.x, 1i))));
}


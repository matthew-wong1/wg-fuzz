struct Struct_1 {
    a: i32,
    b: vec3<u32>,
    c: bool,
    d: vec3<u32>,
    e: vec2<f32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 13>;

var<private> global1: Struct_2 = Struct_2(4294967295u, Struct_1(4972i, vec3<u32>(94131u, 103385u, 6574u), true, vec3<u32>(36288u, 38284u, 4294967295u), vec2<f32>(1035f, 1273f)), Struct_1(0i, vec3<u32>(4294967295u, 0u, 86851u), true, vec3<u32>(38356u, 23385u, 68686u), vec2<f32>(-626f, 1091f)));

var<private> global2: vec4<bool>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: f32, arg_1: vec4<u32>, arg_2: Struct_2) -> f32 {
    var var_0 = ~1u;
    var var_1 = vec3<i32>(1i, arg_2.b.a, abs(~_wgslsmith_mod_i32(0i, global1.c.a))) & (~(~vec3<i32>(global1.b.a, arg_2.b.a, 29260i)) & -vec3<i32>(~(-1i), global1.c.a, 13026i));
    let var_2 = Struct_2(~1u, global1.b, Struct_1(~(~(global1.c.a & arg_2.b.a)), _wgslsmith_mod_vec3_u32(~(~vec3<u32>(global0[_wgslsmith_index_u32(4294967295u, 13u)], arg_2.c.d.x, arg_1.x)), ~vec3<u32>(global1.b.b.x, global0[_wgslsmith_index_u32(arg_2.a, 13u)], 1u)), !((1i >> (arg_2.c.d.x % 32u)) > -1i), ~vec3<u32>(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global1.a, 13u)], 13u)], select(4294967295u, 0u, global2.x), firstTrailingBit(23733u)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_2.c.e * vec2<f32>(arg_2.c.e.x, 747f)) + _wgslsmith_f_op_vec2_f32(-global1.c.e)) + arg_2.b.e)));
    var var_3 = Struct_1(-select(_wgslsmith_mult_i32(~global1.c.a, 2147483647i), ~(arg_2.b.a | global1.b.a), !(false | global1.c.c)), _wgslsmith_mod_vec3_u32(vec3<u32>(35948u, arg_2.b.b.x, 4294967295u) << ((vec3<u32>(global0[_wgslsmith_index_u32(32770u, 13u)], 1u, var_2.a) ^ var_2.c.d) % vec3<u32>(32u)), var_2.b.d) & var_2.c.b, !(!(1i >= ~arg_2.b.a)), ~vec3<u32>(0u, 59571u, ~(~arg_1.x)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(arg_2.b.e, global1.b.e)))) + var_2.b.e));
    var var_4 = vec3<u32>(reverseBits(abs(firstTrailingBit(arg_1.x))) << (_wgslsmith_dot_vec4_u32(arg_1, ~arg_1) % 32u), 0u, 16533u);
    return _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global1.b.e.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(arg_2.c.e.x)), _wgslsmith_f_op_f32(exp2(var_3.e.x)))), true)) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(global1.b.e.x))))))), _wgslsmith_f_op_f32(abs(-1000f)), var_3.c));
}

fn func_2() -> Struct_2 {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f * 946f), _wgslsmith_f_op_f32(ceil(global1.c.e.x)));
    var var_1 = Struct_1(global1.b.a, global1.c.d, all(!global2.ywz) & any(!vec3<bool>(false, global2.x, false)), ((~global1.c.d >> (global1.b.b % vec3<u32>(32u))) & _wgslsmith_mod_vec3_u32(_wgslsmith_mult_vec3_u32(global1.b.b, vec3<u32>(4294967295u, 42561u, global1.b.b.x)), global1.c.d | global1.b.b)) ^ ~vec3<u32>(_wgslsmith_clamp_u32(65063u, 0u, u_input.a), ~0u, global1.b.b.x), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(func_3(global1.b.e.x, select(vec4<u32>(global0[_wgslsmith_index_u32(21495u, 13u)], global1.b.b.x, global1.a, u_input.a), vec4<u32>(u_input.a, u_input.a, global0[_wgslsmith_index_u32(7041u, 13u)], 1u), global2.x), Struct_2(71609u, Struct_1(global1.c.a, vec3<u32>(59042u, global1.b.d.x, 13984u), true, vec3<u32>(30068u, 47201u, 31577u), vec2<f32>(var_0, var_0)), global1.c))), -616f), global1.b.e));
    var var_2 = ~((vec2<u32>(15927u, global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(13444u, 22533u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 13u)], 13u)]), 13u)]) << (global1.b.d.xx % vec2<u32>(32u))) << (~global1.b.d.xy % vec2<u32>(32u)));
    var var_3 = true & global1.b.c;
    global2 = select(vec4<bool>(true, true, true, true), !(!select(vec4<bool>(false, false, false, true), vec4<bool>(var_1.c, false, true, false), 73109i == var_1.a)), false | (any(vec3<bool>(false, global1.b.c, global1.c.c)) || global1.b.c));
    return Struct_2(16853u, global1.b, global1.b);
}

fn func_4(arg_0: Struct_2, arg_1: vec2<i32>) -> Struct_1 {
    var var_0 = Struct_1(global1.b.a, global1.b.d, !arg_0.b.c, global1.b.b, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global1.b.e) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1878f, _wgslsmith_f_op_f32(abs(global1.b.e.x))))));
    var var_1 = arg_0;
    var_0 = func_2().c;
    var var_2 = 2147483647i;
    var var_3 = arg_1.x;
    return arg_0.c;
}

fn func_1(arg_0: bool, arg_1: vec3<i32>, arg_2: Struct_1, arg_3: vec2<i32>) -> u32 {
    global1 = Struct_2(u_input.a, global1.b, func_4(func_2(), arg_3));
    global1 = func_2();
    let var_0 = global1.b.a;
    let var_1 = select(select(vec4<bool>(true, false, all(vec4<bool>(global2.x, false, global2.x, true)), true != all(vec2<bool>(arg_0, global2.x))), vec4<bool>(!select(arg_2.c, false, arg_2.c), abs(global0[_wgslsmith_index_u32(10113u, 13u)]) <= global1.b.b.x, false, all(global2.ww) | func_2().c.c), false), vec4<bool>(true, func_2().b.c && false, !any(vec4<bool>(true, arg_2.c, arg_0, false)), true), true);
    let var_2 = vec2<f32>(global1.c.e.x, -2282f);
    return _wgslsmith_mult_u32(1u, _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(select(abs(vec4<u32>(u_input.a, 4294967295u, arg_2.d.x, 1u)), ~vec4<u32>(4294967295u, global1.c.d.x, global0[_wgslsmith_index_u32(global1.c.d.x, 13u)], 0u), vec4<bool>(arg_0, false, var_1.x, global2.x)), vec4<u32>(866u, 11685u, 0u, 4294967295u)), vec4<u32>(arg_2.d.x << (global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(49331u, global0[_wgslsmith_index_u32(0u, 13u)]), 13u)] % 32u), abs(arg_2.b.x & 17951u), 28052u, 4294967295u >> (~global1.a % 32u))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 13>();
    global1 = Struct_2(1u, global1.c, Struct_1((_wgslsmith_add_i32(37569i, 1i) >> (_wgslsmith_mod_u32(u_input.a, 4294967295u) % 32u)) >> (~func_1(true, vec3<i32>(59133i, 19894i, -6071i), Struct_1(global1.c.a, global1.b.b, global2.x, vec3<u32>(global1.a, 3146u, global1.b.b.x), vec2<f32>(1505f, 1274f)), vec2<i32>(global1.b.a, global1.b.a)) % 32u), firstLeadingBit(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.a, global0[_wgslsmith_index_u32(3639u, 13u)], 12659u), ~global1.b.d)), true, global1.c.d, _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(global1.b.e.x * 936f), _wgslsmith_div_f32(1497f, 544f))))));
    global1 = func_2();
    let var_0 = func_2().c;
    global2 = !vec4<bool>(any(!(!vec4<bool>(false, false, false, global2.x))), _wgslsmith_add_u32(~global0[_wgslsmith_index_u32(u_input.a, 13u)], ~0u) <= (_wgslsmith_dot_vec2_u32(var_0.b.xz, vec2<u32>(global0[_wgslsmith_index_u32(26978u, 13u)], var_0.b.x)) << (min(1u, 4294967295u) % 32u)), all(vec2<bool>(true, func_2().c.c)), !((-29283i <= var_0.a) != var_0.c));
    global1 = func_2();
    global1 = Struct_2(max(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(1u, 1u), 13u)], ~(_wgslsmith_mult_u32(53792u, global1.b.d.x) & ~65056u)), var_0, global1.c);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(max(var_0.e, var_0.e)));
}


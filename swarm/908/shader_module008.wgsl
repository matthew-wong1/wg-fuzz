struct Struct_1 {
    a: vec2<bool>,
    b: u32,
    c: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: vec2<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(1000f, 1166f, 619f);

var<private> global1: u32 = 22338u;

var<private> global2: array<vec4<bool>, 25>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3(arg_0: vec4<f32>, arg_1: vec2<bool>, arg_2: u32, arg_3: vec2<f32>) -> vec2<bool> {
    let var_0 = Struct_1(vec2<bool>(!arg_1.x, false), arg_2, select(!global2[_wgslsmith_index_u32(arg_2, 25u)], select(global2[_wgslsmith_index_u32(~(~u_input.c), 25u)], global2[_wgslsmith_index_u32(~(u_input.a | u_input.d.x), 25u)], any(vec3<bool>(arg_1.x, true, false))), any(!arg_1)));
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -538f)), _wgslsmith_f_op_f32(-arg_3.x), _wgslsmith_f_op_f32(-306f + _wgslsmith_f_op_f32(abs(1393f)))), arg_0.ywx)));
    let var_1 = u_input.e;
    let var_2 = ~vec3<u32>(reverseBits(u_input.a) ^ ~9663u, 6979u, _wgslsmith_dot_vec4_u32(~vec4<u32>(35207u, 9448u, 18847u, 47436u), ~vec4<u32>(u_input.b, 21643u, 73457u, arg_2))) ^ ~_wgslsmith_add_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(21088u, var_0.b, 0u) & vec3<u32>(u_input.a, 49173u, 1u), ~vec3<u32>(7903u, var_0.b, 11211u)), abs(firstTrailingBit(vec3<u32>(u_input.a, var_0.b, var_0.b))));
    global2 = array<vec4<bool>, 25>();
    return !vec2<bool>(all(!arg_1), !(!(false && arg_1.x)));
}

fn func_2() -> vec2<bool> {
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(107f, 1000f, -1044f) + vec3<f32>(-316f, global0.x, 230f)))))));
    let var_0 = u_input.e;
    let var_1 = Struct_1(func_3(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(global0.x + global0.x), _wgslsmith_f_op_f32(sign(-1387f)), global0.x, _wgslsmith_f_op_f32(global0.x + -488f)) - vec4<f32>(_wgslsmith_f_op_f32(select(-388f, -952f, false)), 3725f, -1692f, global0.x)), vec2<bool>(all(global2[_wgslsmith_index_u32(_wgslsmith_div_u32(4294967295u, u_input.b), 25u)]), select(false, any(vec3<bool>(true, true, false)), any(vec3<bool>(true, false, false)))), ~(~u_input.b >> (~u_input.c % 32u)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1767f, -1000f)), global0.x)), ~(~_wgslsmith_add_u32(u_input.b, u_input.c) | ~(~0u)), !vec4<bool>(false, true, select(-352f >= global0.x, func_3(vec4<f32>(-1037f, 162f, -1031f, -847f), vec2<bool>(false, false), 4294967295u, vec2<f32>(global0.x, global0.x)).x, global0.x == global0.x), any(vec3<bool>(false, false, false))));
    var var_2 = all(vec2<bool>(false, !var_1.a.x && !all(vec3<bool>(var_1.a.x, var_1.c.x, var_1.a.x))));
    var var_3 = ~(-vec4<i32>(reverseBits(-18046i), ~u_input.e, 1i, -12910i) ^ (firstLeadingBit(vec4<i32>(u_input.e, u_input.e, 0i, -4547i)) << (vec4<u32>(u_input.b, _wgslsmith_dot_vec4_u32(vec4<u32>(var_1.b, u_input.b, u_input.a, u_input.c), vec4<u32>(u_input.b, 0u, var_1.b, u_input.d.x)), u_input.a, ~var_1.b) % vec4<u32>(32u))));
    return vec2<bool>(!select(var_1.c.x, all(select(global2[_wgslsmith_index_u32(var_1.b, 25u)], vec4<bool>(false, var_1.c.x, false, false), var_1.c.x)), all(func_3(vec4<f32>(549f, global0.x, -644f, global0.x), vec2<bool>(var_1.a.x, true), 0u, global0.xy))), true && select(var_1.a.x, all(vec3<bool>(false, var_1.a.x, var_1.a.x)), all(!vec3<bool>(false, false, var_1.a.x))));
}

fn func_4(arg_0: Struct_2, arg_1: vec2<i32>) -> Struct_1 {
    let var_0 = Struct_2(arg_0.a);
    let var_1 = vec3<u32>(_wgslsmith_dot_vec4_u32(~(~(vec4<u32>(var_0.a.b, 4294967295u, 18149u, arg_0.a.b) << (vec4<u32>(1u, 1u, var_0.a.b, arg_0.a.b) % vec4<u32>(32u)))), ~(~_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.c, 1u, 29247u, var_0.a.b), vec4<u32>(arg_0.a.b, var_0.a.b, u_input.a, arg_0.a.b)))), _wgslsmith_sub_u32(107069u, 10601u), abs(arg_0.a.b));
    global0 = vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -378f), 620f, _wgslsmith_f_op_f32(-global0.x));
    let var_2 = !arg_0.a.a.x;
    let var_3 = !vec3<bool>(false, var_0.a.c.x, !any(vec2<bool>(true, false)) && true);
    return arg_0.a;
}

fn func_1(arg_0: vec2<bool>) -> Struct_1 {
    global1 = _wgslsmith_mod_u32(~1u, u_input.d.x);
    let var_0 = func_4(Struct_2(Struct_1(func_2(), 0u, global2[_wgslsmith_index_u32(u_input.c, 25u)])), abs((max(vec2<i32>(u_input.e, 80520i), vec2<i32>(-30131i, u_input.e)) ^ (vec2<i32>(-2147483647i, -10618i) & vec2<i32>(u_input.e, u_input.e))) ^ vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.e, u_input.e, -22890i), vec3<i32>(u_input.e, u_input.e, u_input.e)), -u_input.e)));
    let var_1 = var_0.a.x;
    global0 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x))) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.x, global0.x) + _wgslsmith_f_op_f32(f32(-1f) * -502f))), global0.x, global0.x);
    var var_2 = Struct_2(Struct_1(vec2<bool>(!(false != var_1), all(select(var_0.c.xyw, vec3<bool>(var_0.a.x, true, var_0.c.x), var_0.a.x))), abs(~32559u), select(vec4<bool>(true, false, true, !arg_0.x), var_0.c, var_0.a.x)));
    return func_4(Struct_2(func_4(Struct_2(Struct_1(var_0.c.zz, 47045u, vec4<bool>(var_0.a.x, var_0.a.x, false, false))), -(vec2<i32>(39888i, u_input.e) ^ vec2<i32>(u_input.e, u_input.e)))), ~(abs(_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.e, 2147483647i), vec2<i32>(u_input.e, -18601i))) | _wgslsmith_sub_vec2_i32(select(vec2<i32>(2147483647i, 2147483647i), vec2<i32>(58918i, -1i), true), abs(vec2<i32>(u_input.e, u_input.e)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mult_i32(~u_input.e, -(i32(-1i) * -32264i) << (~_wgslsmith_clamp_u32(47463u, u_input.b, u_input.a) % 32u)) >= 1i;
    var var_1 = func_1(!vec2<bool>(any(global2[_wgslsmith_index_u32(1u, 25u)]), !var_0));
    global1 = ~(~u_input.c >> (u_input.d.x % 32u));
    var var_2 = func_1(vec2<bool>(true, var_1.c.x));
    global1 = max(_wgslsmith_mod_u32(select(1u, ~u_input.b, false), ~(var_2.b ^ (u_input.b | u_input.c))), max(var_2.b, ~abs(var_1.b)));
    var var_3 = ~(~0u);
    var var_4 = -730f;
    let x = u_input.a;
    s_output = StorageBuffer(global0.yy, var_2.b);
}


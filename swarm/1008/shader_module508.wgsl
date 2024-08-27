struct Struct_1 {
    a: vec3<u32>,
    b: vec2<u32>,
    c: vec4<f32>,
    d: vec4<u32>,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<Struct_2, 13>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2) -> bool {
    global0 = arg_0.a;
    global0 = arg_0.a;
    global1 = array<Struct_2, 13>();
    var var_0 = -(~(-(~(~vec2<i32>(u_input.a, -2147483647i)))));
    global1 = array<Struct_2, 13>();
    return !all(select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, true), false), true), vec4<bool>(true, false, select(false, false, false), true), true));
}

fn func_2(arg_0: Struct_1, arg_1: f32, arg_2: u32, arg_3: Struct_2) -> vec2<u32> {
    global0 = arg_0;
    let var_0 = !select(select(vec2<bool>(true, true), vec2<bool>(true, true), select(select(vec2<bool>(false, false), vec2<bool>(true, true), true), vec2<bool>(true, false), 14016u < arg_3.a.d.x)), !select(vec2<bool>(true, true), vec2<bool>(true, true), select(false, true, true)), true);
    var var_1 = var_0;
    var var_2 = vec3<bool>(var_1.x, any(!vec4<bool>(false, 1i <= u_input.a, false, true)), !func_3(Struct_2(Struct_1(vec3<u32>(arg_0.a.x, 2726u, global0.e), vec2<u32>(global0.a.x, global0.d.x), vec4<f32>(arg_0.c.x, arg_3.a.c.x, -169f, 374f), vec4<u32>(4294967295u, 0u, 0u, arg_3.a.e), global0.e))));
    return global0.d.ww;
}

fn func_4(arg_0: Struct_1) -> Struct_2 {
    var var_0 = Struct_2(arg_0);
    var var_1 = vec3<bool>(true, true, false);
    let var_2 = global0.c.zxy;
    var var_3 = _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.c.x)), _wgslsmith_f_op_f32(exp2(arg_0.c.x)), -563f) - _wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-665f))), var_0.a.c.x, -320f))));
    var var_4 = firstTrailingBit(select(_wgslsmith_add_vec4_i32(abs(vec4<i32>(u_input.a, u_input.a, 27793i, -15108i)), -vec4<i32>(u_input.a, 7864i, 1i, u_input.a)), vec4<i32>(29276i, _wgslsmith_dot_vec2_i32(vec2<i32>(33760i, 8923i), select(vec2<i32>(u_input.a, 17368i), vec2<i32>(u_input.a, 1i), var_1.x)), u_input.a, 0i), true));
    return global1[_wgslsmith_index_u32(~(~_wgslsmith_div_u32(_wgslsmith_mult_u32(arg_0.d.x, 83333u), abs(global0.a.x))) << (~min(~0u, ~1u) % 32u), 13u)];
}

fn func_1() -> vec3<bool> {
    let var_0 = func_4(Struct_1(_wgslsmith_sub_vec3_u32(~(global0.a | vec3<u32>(11248u, global0.d.x, global0.e)), global0.a), ~(~func_2(Struct_1(vec3<u32>(global0.d.x, 0u, 4294967295u), vec2<u32>(global0.e, global0.b.x), global0.c, global0.d, global0.b.x), 481f, 33137u, global1[_wgslsmith_index_u32(28816u, 13u)])), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.c.x, 707f, -399f, global0.c.x)))), countOneBits(_wgslsmith_sub_vec4_u32(global0.d ^ vec4<u32>(4294967295u, global0.d.x, 10129u, global0.a.x), vec4<u32>(global0.b.x, global0.e, global0.b.x, global0.e))), 19241u << (~global0.d.x % 32u)));
    let var_1 = ~1u;
    global1 = array<Struct_2, 13>();
    var var_2 = vec2<i32>(-1i) * -((reverseBits(vec2<i32>(u_input.a, 2147483647i)) >> ((var_0.a.b & global0.a.xy) % vec2<u32>(32u))) << (global0.a.xy % vec2<u32>(32u)));
    var var_3 = func_4(var_0.a).a;
    return !vec3<bool>(!any(vec4<bool>(false, false, false, true)), !(!all(vec2<bool>(false, true))), !(min(var_2.x, -54976i) > _wgslsmith_sub_i32(0i, 39414i)));
}

fn func_5(arg_0: vec4<bool>) -> Struct_2 {
    let var_0 = ~(~vec3<u32>(abs(_wgslsmith_dot_vec4_u32(vec4<u32>(global0.d.x, 70605u, global0.e, 1u), vec4<u32>(global0.b.x, global0.b.x, 4294967295u, 4294967295u))), global0.e, global0.d.x));
    var var_1 = !all(!vec4<bool>(true, arg_0.x || false, arg_0.x || false, true));
    let var_2 = 0i;
    var_1 = 25880i > (u_input.a << (~(~(~0u)) % 32u));
    global0 = func_4(func_4(Struct_1(global0.a, (vec2<u32>(4294967295u, var_0.x) | global0.a.zx) | vec2<u32>(75953u, global0.a.x), global0.c, _wgslsmith_clamp_vec4_u32(global0.d, global0.d, firstLeadingBit(vec4<u32>(1u, 25906u, var_0.x, var_0.x))), 4294967295u)).a).a;
    return global1[_wgslsmith_index_u32(_wgslsmith_add_u32(max(reverseBits(countOneBits(global0.b.x)), ~abs(var_0.x)), _wgslsmith_sub_u32(_wgslsmith_mult_u32(global0.d.x, 77334u), 4294967295u) | global0.e) ^ 4294967295u, 13u)];
}

fn func_6(arg_0: Struct_2) -> Struct_1 {
    var var_0 = func_4(arg_0.a);
    global1 = array<Struct_2, 13>();
    var var_1 = select(vec2<u32>(13225u, global0.b.x), _wgslsmith_mod_vec2_u32(var_0.a.a.yy, vec2<u32>(var_0.a.b.x, 1u)), vec2<bool>(false, false)) ^ (~_wgslsmith_div_vec2_u32(global0.d.wz, vec2<u32>(82650u, 0u)) ^ var_0.a.b);
    global1 = array<Struct_2, 13>();
    let var_2 = func_4(var_0.a).a;
    return arg_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_6(func_5(vec4<bool>(any(func_1()), global0.a.x < _wgslsmith_mod_u32(40001u, 78008u), (72921u & global0.e) >= global0.d.x, false)));
    var var_0 = select(!(!vec4<bool>(true, select(true, false, false), false, true)), vec4<bool>(!((45690u < global0.d.x) || false), false, any(vec2<bool>(false, 13568u < global0.e)), func_1().x), vec4<bool>(func_1().x, false, false, !all(vec3<bool>(true, true, true))));
    global0 = Struct_1(~global0.d.yyw, func_5(!select(vec4<bool>(true, true, true, var_0.x), select(vec4<bool>(var_0.x, false, false, var_0.x), vec4<bool>(false, var_0.x, false, var_0.x), var_0.x), var_0.x)).a.d.xz, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(func_5(vec4<bool>(true, true, false, var_0.x)).a.c)))), global0.d, 0u);
    let var_1 = func_5(select(select(vec4<bool>(!var_0.x, true, true, true), select(vec4<bool>(false, var_0.x, var_0.x, var_0.x), !vec4<bool>(true, var_0.x, true, var_0.x), !var_0.x), all(!var_0.ww)), select(!select(vec4<bool>(var_0.x, false, var_0.x, var_0.x), vec4<bool>(var_0.x, var_0.x, true, false), true), !(!vec4<bool>(var_0.x, false, false, var_0.x)), vec4<bool>(false, var_0.x & var_0.x, -53312i <= u_input.a, true)), vec4<bool>(!var_0.x, true, (var_0.x | true) && (var_0.x | true), all(var_0.wz)))).a.c.x;
    let var_2 = false;
    let x = u_input.a;
    s_output = StorageBuffer(global0.a.zy, ~vec4<u32>(func_5(vec4<bool>(var_0.x, var_2, var_2, var_2)).a.b.x, ~global0.e, 95379u, _wgslsmith_dot_vec3_u32(~global0.d.xxz, global0.d.zxx)), ~vec3<u32>(global0.d.x, abs(1u), global0.e) & global0.a);
}


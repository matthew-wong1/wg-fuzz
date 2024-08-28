struct Struct_1 {
    a: i32,
    b: vec4<bool>,
    c: f32,
    d: i32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: i32,
}

struct Struct_3 {
    a: vec3<bool>,
    b: vec2<u32>,
    c: Struct_1,
    d: Struct_1,
    e: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_2,
    c: Struct_1,
    d: f32,
    e: vec2<f32>,
}

struct Struct_5 {
    a: Struct_3,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec2<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 19> = array<vec2<bool>, 19>(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false));

var<private> global1: f32;

var<private> global2: Struct_3;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_1(arg_0: vec2<bool>, arg_1: f32) -> Struct_1 {
    return global2.d;
}

fn func_3(arg_0: vec3<i32>, arg_1: f32) -> vec4<f32> {
    global0 = array<vec2<bool>, 19>();
    var var_0 = false;
    var var_1 = vec3<i32>(~(-2147483647i), -30015i, max(-2147483647i, ~min(i32(-1i) * -2147483647i, ~63080i)));
    let var_2 = u_input.c.x;
    let var_3 = Struct_4(Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global2.e.a * vec4<f32>(arg_1, 641f, global2.c.c, 792f))) * vec4<f32>(global2.e.a.x, 1358f, arg_1, arg_1)), -(~(-1i) << ((global2.b.x << (global2.b.x % 32u)) % 32u))), Struct_2(global2.e.a, ~abs(-1i) | arg_0.x), global2.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -454f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.d.c - arg_1))) * _wgslsmith_f_op_f32(f32(-1f) * -2167f)), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(func_1(vec2<bool>(true, true), global2.e.a.x).c)), -802f), _wgslsmith_f_op_f32(global2.d.c * -255f)));
    return var_3.a.a;
}

fn func_2(arg_0: bool, arg_1: Struct_4, arg_2: vec2<f32>, arg_3: f32) -> bool {
    global0 = array<vec2<bool>, 19>();
    global1 = global2.c.c;
    global0 = array<vec2<bool>, 19>();
    let var_0 = Struct_4(arg_1.a, Struct_2(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(func_3(firstLeadingBit(vec3<i32>(u_input.a, -3600i, -26193i)), _wgslsmith_f_op_f32(arg_1.a.a.x * arg_2.x))), arg_1.b.a)), _wgslsmith_div_i32(~(~(-1i)), ~(-24163i))), global2.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.x)), _wgslsmith_f_op_vec2_f32(-arg_1.a.a.xx));
    let var_1 = Struct_4(Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.d.c, _wgslsmith_f_op_f32(-275f * -740f), _wgslsmith_f_op_f32(min(var_0.b.a.x, arg_3)), -1000f)), _wgslsmith_sub_i32(min(var_0.a.b, var_0.a.b), u_input.a)), Struct_2(var_0.a.a, arg_1.a.b), func_1(select(select(vec2<bool>(false, false), func_1(vec2<bool>(false, true), -951f).b.yw, -2147483647i < global2.e.b), vec2<bool>(global2.a.x, u_input.d < 25236i), false), arg_3), _wgslsmith_f_op_vec4_f32(func_3(select(abs(vec3<i32>(var_0.c.a, var_0.a.b, 1i)), vec3<i32>(abs(-1i), ~(-11092i), -1i), false), 1616f)).x, _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(335f, 1482f), vec2<f32>(global2.c.c, arg_3))), arg_2, vec2<bool>(true, true)))), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_0.a.a.x, arg_2.x), vec2<f32>(_wgslsmith_f_op_f32(arg_2.x * global2.c.c), _wgslsmith_f_op_f32(sign(global2.d.c))))))));
    return global2.a.x;
}

fn func_4(arg_0: vec4<f32>, arg_1: vec4<bool>, arg_2: bool) -> Struct_1 {
    global1 = -1676f;
    var var_0 = _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.b.x, min(0u, _wgslsmith_dot_vec3_u32(countOneBits(u_input.b.wzz), vec3<u32>(global2.b.x, u_input.c.x, u_input.b.x) | u_input.b.yzz))), ~select(~abs(u_input.c), global2.b, false));
    var var_1 = Struct_1(-(~firstTrailingBit(global2.d.a)), vec4<bool>(any(select(!vec2<bool>(true, global2.a.x), vec2<bool>(arg_1.x, false), true)), true, global2.a.x, any(arg_1.xx)), arg_0.x, ~_wgslsmith_dot_vec2_i32(vec2<i32>(i32(-1i) * -21086i, -global2.d.d), vec2<i32>(global2.c.a, u_input.a) >> (global2.b % vec2<u32>(32u))));
    global0 = array<vec2<bool>, 19>();
    var var_2 = var_1.c;
    return func_1(vec2<bool>(true, true), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.c)) + _wgslsmith_f_op_f32(f32(-1f) * -815f)), 524f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global2.e.a;
    global2 = Struct_3(global2.c.b.wxx, global2.b, func_1(!(!(!global2.c.b.yy)), 153f), func_4(global2.e.a, vec4<bool>(!global2.c.b.x, func_2(true, Struct_4(Struct_2(global2.e.a, global2.d.d), Struct_2(vec4<f32>(global2.c.c, global2.c.c, global2.e.a.x, var_0.x), 2147483647i), Struct_1(25053i, global2.d.b, -796f, global2.d.a), -1066f, vec2<f32>(379f, global2.d.c)), vec2<f32>(var_0.x, var_0.x), global2.e.a.x) & all(global2.c.b), !(!global2.d.b.x), global2.a.x), !any(select(global0[_wgslsmith_index_u32(u_input.c.x, 19u)], vec2<bool>(true, false), global2.c.b.zx))), Struct_2(_wgslsmith_f_op_vec4_f32(global2.e.a + vec4<f32>(_wgslsmith_f_op_f32(max(-218f, var_0.x)), 809f, var_0.x, 1913f)), _wgslsmith_dot_vec2_i32(vec2<i32>(firstTrailingBit(-2147483647i), u_input.a), ~vec2<i32>(u_input.d, u_input.d) & -vec2<i32>(15955i, 0i))));
    let var_1 = _wgslsmith_clamp_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(~(-12393i), ~u_input.a, -u_input.d), vec3<i32>(u_input.d, _wgslsmith_mod_i32(global2.e.b, u_input.a), u_input.a)), vec3<i32>(1i, ~global2.e.b | ~(-2147483647i), _wgslsmith_mult_i32(global2.e.b, _wgslsmith_sub_i32(global2.d.d, u_input.d))), vec3<i32>(_wgslsmith_clamp_i32(_wgslsmith_add_i32(-2147483647i, 2147483647i), 18194i, ~u_input.d), ~(i32(-1i) * -1i), global2.c.a)) ^ reverseBits(~vec3<i32>(global2.d.d, u_input.a, u_input.a) >> (_wgslsmith_clamp_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(7026u, global2.b.x, 4294967295u), vec3<u32>(u_input.c.x, 0u, 0u)), abs(u_input.b.wxx), u_input.b.yww << (vec3<u32>(u_input.b.x, 1u, global2.b.x) % vec3<u32>(32u))) % vec3<u32>(32u)));
    var var_2 = _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(1u, ~4294967295u), ~vec2<u32>(u_input.b.x, global2.b.x)), ~(~_wgslsmith_div_vec2_u32(global2.b, global2.b))) << (global2.b.x % 32u);
    let var_3 = Struct_1(~45852i, !(!global2.d.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-282f, 1218f)) * _wgslsmith_f_op_vec4_f32(func_3(vec3<i32>(var_1.x, 2i, -2147483647i), 503f)).x))), _wgslsmith_mult_i32(_wgslsmith_mult_i32(i32(-1i) * -1i, 27949i), u_input.d));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global2.e.a))))), global2.e.a.x);
}


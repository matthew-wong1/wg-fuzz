struct Struct_1 {
    a: bool,
    b: f32,
    c: vec3<bool>,
    d: vec2<i32>,
    e: bool,
}

struct Struct_2 {
    a: bool,
    b: vec3<bool>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: bool,
    d: u32,
    e: u32,
}

struct Struct_4 {
    a: vec4<u32>,
    b: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: vec3<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
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

var<private> global0: i32;

var<private> global1: Struct_2;

var<private> global2: Struct_2;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3() -> bool {
    let var_0 = Struct_4(vec4<u32>(u_input.c.x, _wgslsmith_mod_u32(u_input.c.x, u_input.c.x), _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.c.x, u_input.c.x, u_input.c.x), vec3<u32>(u_input.c.x, u_input.c.x, u_input.c.x)), reverseBits(u_input.c)), ~47880u), global2.d.b);
    global0 = ~_wgslsmith_dot_vec2_i32(~(-min(vec2<i32>(global1.c.d.x, global2.c.d.x), vec2<i32>(global2.c.d.x, u_input.d))), _wgslsmith_mult_vec2_i32(global1.d.d, -u_input.a));
    var var_1 = _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_mult_i32(1i, ~(-2147483647i)) | (-76358i ^ _wgslsmith_dot_vec2_i32(global2.c.d, u_input.b.wx)), reverseBits(countOneBits(u_input.b.x)) << (var_0.a.x % 32u)), vec2<i32>(~_wgslsmith_dot_vec4_i32(u_input.b, _wgslsmith_div_vec4_i32(vec4<i32>(u_input.d, 1i, 0i, 25901i), u_input.b)), global2.c.d.x));
    global2 = Struct_2(any(vec2<bool>(!all(vec3<bool>(false, global2.a, false)), select(true, global2.a, u_input.c.x > u_input.c.x))), select(vec3<bool>(true, any(select(global2.c.c.yz, vec2<bool>(false, false), global1.d.e)), true), vec3<bool>(!(0u > var_0.a.x), all(vec4<bool>(false, false, global1.c.e, global1.b.x)), select(true, global1.c.c.x, !global1.c.e)), !(true | (global1.d.d.x <= global1.c.d.x))), global2.c, Struct_1(global2.d.e, _wgslsmith_f_op_f32(floor(var_0.b)), select(vec3<bool>(u_input.c.x < 55859u, true & global2.a, global1.d.e), vec3<bool>(true, true, false), any(vec4<bool>(false, true, false, global2.d.e))), vec2<i32>(u_input.b.x, global1.d.d.x), !global1.b.x));
    var var_2 = !global1.b;
    return false;
}

fn func_2() -> Struct_4 {
    global2 = Struct_2(!global2.a, global1.d.c, global2.c, Struct_1(any(vec4<bool>(true, true, true, true)), -1351f, vec3<bool>(true, select(true, true, true), all(vec4<bool>(false, false, global1.b.x, global1.c.c.x)) && global2.d.c.x), -(~vec2<i32>(global2.d.d.x, u_input.a.x)), global1.a));
    let var_0 = u_input.a.x;
    global2 = Struct_2(all(global2.d.c), !global2.b, global2.c, global2.d);
    global2 = Struct_2(func_3() && global1.a, global2.c.c, global1.d, Struct_1(global1.d.c.x, _wgslsmith_f_op_f32(-1314f * global1.d.b), !select(vec3<bool>(false, true, false), !vec3<bool>(global1.a, global2.a, global1.b.x), global1.d.c), select(u_input.a, ~u_input.a, global2.b.x), !func_3()));
    var var_1 = Struct_3(Struct_2(global1.c.a, vec3<bool>(!any(vec4<bool>(global1.b.x, global2.d.e, false, global2.b.x)), all(vec4<bool>(false, global2.d.e, false, global2.c.a)), global2.d.c.x), Struct_1(func_3(), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1246f))), vec3<bool>(global1.a, select(false, false, false), false), abs(u_input.b.xz) << ((vec2<u32>(u_input.c.x, 20201u) << (vec2<u32>(4294967295u, u_input.c.x) % vec2<u32>(32u))) % vec2<u32>(32u)), global2.c.e), global2.d), 1u, all(global2.c.c.xx), u_input.c.x, u_input.c.x);
    return Struct_4(_wgslsmith_mult_vec4_u32(~vec4<u32>(4294967295u, u_input.c.x, var_1.b, var_1.e), max(vec4<u32>(8720u, u_input.c.x, 4294967295u, 18696u), vec4<u32>(var_1.b, 0u, var_1.b, u_input.c.x)) ^ ~vec4<u32>(var_1.b, 0u, u_input.c.x, 1u)) << (max(~vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, 1u), _wgslsmith_add_vec4_u32(~vec4<u32>(var_1.d, var_1.b, 1598u, 16213u), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.c.x, 47200u, var_1.b, 35416u), vec4<u32>(var_1.d, var_1.b, 4294967295u, 1u)))) % vec4<u32>(32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.c.b - -1693f) * _wgslsmith_f_op_f32(672f + var_1.a.d.b)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_1.a.d.b)) * var_1.a.c.b))));
}

fn func_4(arg_0: Struct_4, arg_1: i32, arg_2: i32, arg_3: vec3<u32>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -281f));
    var var_1 = Struct_4(abs(firstLeadingBit(vec4<u32>(arg_3.x, _wgslsmith_dot_vec3_u32(u_input.c, vec3<u32>(arg_3.x, arg_0.a.x, arg_0.a.x)), _wgslsmith_dot_vec3_u32(vec3<u32>(11383u, arg_3.x, arg_0.a.x), vec3<u32>(u_input.c.x, arg_0.a.x, arg_3.x)), firstTrailingBit(1u)))), arg_0.b);
    let var_2 = Struct_1(any(global2.c.c) & all(select(!vec2<bool>(global2.a, global1.c.a), select(vec2<bool>(false, false), vec2<bool>(false, global2.d.e), global1.d.e), global1.b.yx)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.d.b - _wgslsmith_f_op_f32(var_1.b - 271f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1f)) - 786f)), select(select(!global2.c.c, global2.c.c, true), select(select(vec3<bool>(true, true, true), vec3<bool>(false, global1.a, global1.d.a), true), global1.b, global2.d.c), global2.d.c), select(select(-global2.c.d, -u_input.a, !(!vec2<bool>(global1.b.x, global2.a))), _wgslsmith_mult_vec2_i32(vec2<i32>(1i, u_input.d), ~global2.d.d), global1.a), global2.a);
    return global2.c;
}

fn func_1(arg_0: vec2<u32>, arg_1: vec3<u32>, arg_2: u32, arg_3: u32) -> StorageBuffer {
    var var_0 = global1.d;
    let var_1 = Struct_3(Struct_2(true, vec3<bool>(!(!global1.c.c.x), ~1i != var_0.d.x, global2.a), func_4(func_2(), i32(-1i) * -u_input.d, _wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(0i, u_input.d, -32261i, 0i)), ~u_input.b), u_input.c << (firstTrailingBit(arg_1) % vec3<u32>(32u))), global1.d), 4294967295u, var_0.c.x, _wgslsmith_div_u32(func_2().a.x, 45193u), u_input.c.x);
    global2 = var_1.a;
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.d.b, global2.c.b, 2406f, var_1.a.d.b) - vec4<f32>(global1.d.b, var_1.a.d.b, 227f, -261f))))))));
    var var_3 = func_2();
    return StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(min(1f, var_2.x))), vec4<f32>(var_2.x, -2334f, var_2.x, -963f), select(var_1.b, 1u, all(!vec4<bool>(global1.a, global1.d.c.x, global1.b.x, true))), ~(~var_1.e));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1(~u_input.c.xz, ~vec3<u32>(u_input.c.x ^ _wgslsmith_sub_u32(u_input.c.x, 28474u), 40776u, u_input.c.x), u_input.c.x, ~(u_input.c.x | 44406u));
}


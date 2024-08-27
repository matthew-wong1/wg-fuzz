struct Struct_1 {
    a: i32,
    b: vec2<i32>,
    c: vec3<bool>,
    d: vec3<bool>,
}

struct Struct_2 {
    a: bool,
    b: vec3<bool>,
    c: f32,
    d: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: i32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: f32,
    d: i32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec2<u32>, 23>;

var<private> global2: Struct_2 = Struct_2(true, vec3<bool>(true, false, false), -1505f, 21119u);

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: u32, arg_1: vec4<u32>, arg_2: vec2<bool>) -> bool {
    let var_0 = Struct_1(49408i, abs(u_input.b.wz), vec3<bool>(all(vec4<bool>(true, false, true, global2.b.x & global2.b.x)), true, true), vec3<bool>(global2.a, select(4294967295u, 19029u, global2.a) == 2597u, false));
    let var_1 = _wgslsmith_clamp_vec3_u32(vec3<u32>(max(~_wgslsmith_div_u32(arg_1.x, global2.d), arg_1.x), 1u, 0u), ~_wgslsmith_add_vec3_u32(~vec3<u32>(arg_0, arg_0, 2154u), max(_wgslsmith_div_vec3_u32(vec3<u32>(46050u, 36288u, arg_1.x), arg_1.wxy), ~vec3<u32>(arg_0, 1u, 1u))), vec3<u32>(~firstTrailingBit(0u), 71619u, ~global2.d >> (firstLeadingBit(_wgslsmith_div_u32(38781u, arg_1.x)) % 32u)));
    var var_2 = arg_1.xxw;
    var var_3 = ~select(~select(vec4<i32>(global0.b.x, u_input.b.x, global0.b.x, global0.b.x), vec4<i32>(global0.b.x, global0.b.x, -33156i, u_input.d), !vec4<bool>(arg_2.x, arg_2.x, false, false)), reverseBits(u_input.b), select(!select(vec4<bool>(var_0.c.x, global0.c.x, false, global0.d.x), vec4<bool>(false, global0.c.x, global0.c.x, true), vec4<bool>(true, true, false, false)), !select(vec4<bool>(false, arg_2.x, global0.c.x, true), vec4<bool>(global2.b.x, false, true, true), false), !var_0.c.x));
    let var_4 = vec4<u32>(27046u, _wgslsmith_add_u32(var_2.x, 0u), _wgslsmith_dot_vec3_u32(var_1, u_input.a), max(~_wgslsmith_dot_vec2_u32(vec2<u32>(var_2.x, var_1.x), vec2<u32>(var_1.x, arg_1.x)) | (arg_0 | ~4294967295u), _wgslsmith_dot_vec4_u32(~(~vec4<u32>(15196u, global2.d, 0u, 4294967295u)), ~_wgslsmith_add_vec4_u32(arg_1, vec4<u32>(26876u, arg_1.x, 35420u, 17146u)))));
    return var_0.c.x;
}

fn func_2(arg_0: Struct_1) -> vec2<u32> {
    let var_0 = Struct_2(true, vec3<bool>(func_3(~countOneBits(u_input.a.x), ~vec4<u32>(4294967295u, 0u, u_input.a.x, global2.d), vec2<bool>(!arg_0.c.x, !arg_0.c.x)), arg_0.a >= (-36990i & arg_0.a), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1767f - 1386f))) > _wgslsmith_f_op_f32(select(global2.c, _wgslsmith_f_op_f32(trunc(-1000f)), arg_0.d.x))), global2.c, 4294967295u);
    var var_1 = var_0.b.x;
    global2 = var_0;
    global1 = array<vec2<u32>, 23>();
    global1 = array<vec2<u32>, 23>();
    return ~(~(~vec2<u32>(34714u, 4294967295u)));
}

fn func_1(arg_0: bool) -> vec4<f32> {
    var var_0 = _wgslsmith_mult_u32(global2.d, ~(~_wgslsmith_dot_vec2_u32(func_2(Struct_1(global0.b.x, vec2<i32>(-1i, -34641i), vec3<bool>(global0.d.x, arg_0, global0.c.x), vec3<bool>(arg_0, global0.c.x, false))), _wgslsmith_sub_vec2_u32(vec2<u32>(37353u, 1u), u_input.a.yx))));
    global1 = array<vec2<u32>, 23>();
    global1 = array<vec2<u32>, 23>();
    var var_1 = vec3<bool>(all(vec3<bool>(false, false, all(select(global0.d.zz, global0.c.yy, global0.d.x)))), true, true);
    let var_2 = Struct_2(select(false, all(vec3<bool>(true, false, var_1.x)), all(select(select(vec2<bool>(true, true), vec2<bool>(true, true), false), vec2<bool>(var_1.x, true), false))), vec3<bool>(!(true | global0.d.x), any(select(global0.c.zy, vec2<bool>(false, global0.c.x), vec2<bool>(true, false))) || false, min(2147483647i, min(-20666i, global0.a)) < global0.b.x), _wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(select(-185f, _wgslsmith_f_op_f32(global2.c - _wgslsmith_f_op_f32(-1099f * global2.c)), (global2.b.x & true) | true))), 37516u);
    return _wgslsmith_f_op_vec4_f32(-vec4<f32>(-470f, var_2.c, 797f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-573f)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1671f, global2.c, global2.c, 526f))) * _wgslsmith_f_op_vec4_f32(func_1(!global2.b.x))));
    var var_2 = vec3<bool>(true, any(select(!select(global2.b.yy, vec2<bool>(global2.a, false), global0.d.yx), select(select(global2.b.yz, vec2<bool>(true, global0.d.x), global0.c.x), select(global2.b.yz, global2.b.yx, global0.c.yz), all(global0.c)), global0.c.yy)), global2.a);
    let var_3 = u_input.a.x >> (~(abs(_wgslsmith_mod_u32(52280u, global2.d)) << (~5804u % 32u)) % 32u);
    global2 = Struct_2(all(select(vec3<bool>(!global2.a, !var_2.x, true), vec3<bool>(var_2.x & false, false, global2.d >= var_3), all(select(vec2<bool>(var_2.x, global0.c.x), vec2<bool>(true, global0.c.x), false)))), select(!(!global2.b), global0.c, true), 1812f, select(9890u, ~(~10524u), true) & 1u);
    global0 = Struct_1(u_input.d, global0.b, select(!vec3<bool>(all(global2.b), !global0.c.x, true), select(!select(global2.b, vec3<bool>(true, true, var_2.x), true), !select(global2.b, vec3<bool>(global2.a, var_2.x, global2.a), false), var_2.x), vec3<bool>(global2.b.x, global2.a & global0.d.x, false)), vec3<bool>(all(global0.d), global0.d.x, !var_2.x));
    var var_4 = Struct_2(false, select(!vec3<bool>(global2.a, true, !global2.a), !global2.b, global2.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)), ~select(~45998u, ~(~u_input.a.x), global0.d.x));
    let x = u_input.a;
    s_output = StorageBuffer(min(abs((vec4<u32>(29904u, 26587u, 4294967295u, 0u) & vec4<u32>(global2.d, 85591u, var_3, 4385u)) >> (~vec4<u32>(4294967295u, global2.d, var_4.d, 0u) % vec4<u32>(32u))), ~(~_wgslsmith_sub_vec4_u32(vec4<u32>(36694u, 9707u, 1u, global2.d), vec4<u32>(var_4.d, u_input.e, 1u, 80118u)))), var_4.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_4.c)) - _wgslsmith_f_op_f32(-639f + _wgslsmith_f_op_f32(max(var_1.x, _wgslsmith_f_op_f32(f32(-1f) * -430f))))), ~(-_wgslsmith_dot_vec4_i32(-vec4<i32>(global0.a, 0i, -1i, global0.b.x), firstLeadingBit(vec4<i32>(global0.b.x, global0.b.x, u_input.b.x, -13355i)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_4.c, 842f, 992f), vec3<f32>(global2.c, global2.c, var_4.c))))));
}


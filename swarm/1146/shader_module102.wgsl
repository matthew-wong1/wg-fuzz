struct Struct_1 {
    a: vec3<bool>,
    b: u32,
}

struct Struct_2 {
    a: i32,
    b: i32,
    c: Struct_1,
    d: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec4<i32>,
    d: u32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: Struct_2;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_2() -> f32 {
    global1 = Struct_2(-countOneBits(~max(u_input.a.x, -11609i)), u_input.a.x, global1.c, _wgslsmith_f_op_f32(110f + _wgslsmith_f_op_f32(-global1.d)));
    let var_0 = Struct_2(u_input.a.x, global1.a, global1.c, -147f);
    return var_0.d;
}

fn func_3(arg_0: Struct_2, arg_1: bool, arg_2: f32) -> f32 {
    let var_0 = 38299u;
    let var_1 = Struct_1(global1.c.a, _wgslsmith_add_u32(0u, ~countOneBits(abs(17364u))));
    var var_2 = select(arg_0.c.a, vec3<bool>(var_1.a.x, arg_0.c.a.x, arg_1), select(!arg_0.c.a, !(!(!vec3<bool>(arg_1, false, arg_0.c.a.x))), vec3<bool>(all(vec3<bool>(true, var_1.a.x, arg_0.c.a.x)), global1.c.a.x, true)));
    let var_3 = Struct_2(~(~(~select(global1.a, arg_0.b, true))), i32(-1i) * -34616i, Struct_1(vec3<bool>(!(false | global1.c.a.x), (0u & arg_0.c.b) >= ~4294967295u, true), ((global1.c.b >> (4294967295u % 32u)) ^ _wgslsmith_mult_u32(global1.c.b, 4294967295u)) & ~15207u), _wgslsmith_f_op_f32(trunc(-1563f)));
    var var_4 = vec4<i32>(~var_3.b, arg_0.b, select(u_input.a.x, 1i, false), 33367i);
    return _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(var_3.d, _wgslsmith_f_op_f32(floor(-605f))))));
}

fn func_4(arg_0: f32, arg_1: bool, arg_2: Struct_1) -> f32 {
    global1 = Struct_2(global1.a, _wgslsmith_sub_i32(0i, -11611i), Struct_1(select(vec3<bool>(any(global1.c.a), true, false), vec3<bool>(global1.c.a.x, !arg_1, true), select(select(vec3<bool>(global1.c.a.x, false, arg_2.a.x), global1.c.a, false), select(global1.c.a, vec3<bool>(true, true, global1.c.a.x), arg_2.a), !global1.c.a.x)), arg_2.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(-246f))))));
    global1 = Struct_2(_wgslsmith_mult_i32(~_wgslsmith_div_i32(global1.a | -1i, 1i), firstLeadingBit(-30724i)), _wgslsmith_mult_i32(abs(abs(u_input.a.x)), 5793i ^ ~(~global1.a)), arg_2, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(global1.d, -299f)))))));
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1472f)));
    global0 = var_0;
    var var_1 = ~(~vec4<u32>(~arg_2.b & max(40484u, global1.c.b), ~(~0u), global1.c.b, ~(~61605u)));
    return _wgslsmith_f_op_f32(trunc(var_0));
}

fn func_1(arg_0: vec4<bool>) -> vec2<i32> {
    global1 = Struct_2(_wgslsmith_dot_vec3_i32(u_input.a.xyw, vec3<i32>(-1i, abs(global1.a), 0i) ^ _wgslsmith_mod_vec3_i32(vec3<i32>(-1i, u_input.a.x, -18082i), vec3<i32>(global1.a, -1i, u_input.b.x))), 33612i, global1.c, _wgslsmith_f_op_f32(func_2()));
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_2(-2147483647i, 2147483647i, Struct_1(vec3<bool>(arg_0.x, false, global1.c.a.x), global1.c.b), -489f), global1.c.a.x, _wgslsmith_div_f32(1057f, -1086f)))), true, Struct_1(vec3<bool>(true, true, any(arg_0.wwx)), 26279u))));
    var var_1 = abs(_wgslsmith_dot_vec2_u32(reverseBits(_wgslsmith_mod_vec2_u32(vec2<u32>(global1.c.b, global1.c.b), vec2<u32>(49424u, 4294967295u))), vec2<u32>(global1.c.b | global1.c.b, _wgslsmith_mod_u32(global1.c.b, global1.c.b))) >> (~global1.c.b % 32u));
    var var_2 = ~(_wgslsmith_sub_vec2_u32(reverseBits(~vec2<u32>(1u, 3820u)), reverseBits(reverseBits(vec2<u32>(global1.c.b, global1.c.b)))) ^ (vec2<u32>(~36461u, _wgslsmith_mod_u32(4294967295u, 49494u)) | ~(~vec2<u32>(4294967295u, global1.c.b))));
    let var_3 = vec2<i32>(~((global1.b | 68750i) << (4294967295u % 32u)), 4430i);
    return ~vec2<i32>(64962i, max(_wgslsmith_sub_i32(global1.a | global1.b, u_input.a.x), global1.a & -25461i));
}

fn func_5(arg_0: i32, arg_1: vec2<i32>, arg_2: vec4<u32>) -> vec3<bool> {
    return select(!select(select(global1.c.a, global1.c.a, true), vec3<bool>(false, global1.c.a.x, global1.d != -378f), true), vec3<bool>(global1.c.a.x, true, true), all(select(select(!vec4<bool>(global1.c.a.x, true, true, true), select(vec4<bool>(false, false, true, global1.c.a.x), vec4<bool>(global1.c.a.x, false, false, true), global1.c.a.x), select(vec4<bool>(true, global1.c.a.x, false, global1.c.a.x), vec4<bool>(false, global1.c.a.x, true, global1.c.a.x), global1.c.a.x)), vec4<bool>(false, global1.c.b < 42989u, false, any(global1.c.a.xz)), vec4<bool>(true && global1.c.a.x, false & global1.c.a.x, global1.c.a.x != global1.c.a.x, true))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<u32>(firstTrailingBit(27636u), _wgslsmith_dot_vec3_u32(~abs(max(vec3<u32>(2111u, 1u, global1.c.b), vec3<u32>(global1.c.b, global1.c.b, 4294967295u))), ~((vec3<u32>(global1.c.b, global1.c.b, global1.c.b) << (vec3<u32>(global1.c.b, global1.c.b, 1u) % vec3<u32>(32u))) << (vec3<u32>(14409u, global1.c.b, 1u) % vec3<u32>(32u)))));
    let var_1 = Struct_1(func_5(global1.a, _wgslsmith_add_vec2_i32(func_1(select(vec4<bool>(true, true, global1.c.a.x, global1.c.a.x), vec4<bool>(false, false, true, true), vec4<bool>(global1.c.a.x, global1.c.a.x, global1.c.a.x, true))), vec2<i32>(u_input.b.x, -20876i) << (~vec2<u32>(52707u, global1.c.b) % vec2<u32>(32u))), reverseBits(reverseBits(vec4<u32>(21102u, global1.c.b, 34192u, global1.c.b)))), 1u);
    let x = u_input.a;
    s_output = StorageBuffer(select(global1.a, reverseBits(u_input.a.x), any(!(!var_1.a))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.d - -1215f)) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global1.d)))), _wgslsmith_div_f32(global1.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.d - -370f) + _wgslsmith_f_op_f32(func_2()))))), vec4<i32>(reverseBits(global1.a), global1.a, -2147483647i, -_wgslsmith_div_i32(global1.b, global1.b) | ~u_input.a.x), ~var_1.b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-591f, -119f, global1.d, 371f), vec4<f32>(-472f, -805f, global1.d, 202f))))))));
}


struct Struct_1 {
    a: i32,
    b: i32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: u32,
}

struct Struct_4 {
    a: Struct_3,
    b: i32,
}

struct Struct_5 {
    a: f32,
    b: Struct_1,
    c: Struct_4,
    d: vec2<f32>,
    e: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec4<i32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: Struct_1 = Struct_1(2147483647i, -40049i);

var<private> global2: i32;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_2(arg_0: bool) -> Struct_2 {
    return Struct_2(-60978i, Struct_1(2147483647i, reverseBits(global1.a)), ~_wgslsmith_clamp_i32(countOneBits(1i), u_input.a, -85206i));
}

fn func_1(arg_0: Struct_1, arg_1: vec4<bool>) -> Struct_3 {
    global0 = ~(~(~(~firstTrailingBit(vec2<u32>(global0.x, 41451u)))));
    let var_0 = all(arg_1);
    return Struct_3(func_2(false), true, global0.x);
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_3, arg_2: i32, arg_3: vec4<i32>) -> i32 {
    let var_0 = Struct_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(309f * -336f) - _wgslsmith_f_op_f32(select(1160f, -290f, true))) - -892f) + 635f), Struct_1(countOneBits(func_2(func_1(arg_1.a.b, vec4<bool>(true, true, arg_1.b, arg_0.x)).b).b.a), abs(1i)), Struct_4(func_1(func_1(arg_1.a.b, !vec4<bool>(true, arg_1.b, true, arg_0.x)).a.b, vec4<bool>(true, true, true, true)), -(i32(-1i) * -global1.a)), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1165f, -621f), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-263f, -598f))), select(arg_0, arg_0, arg_0)))))), Struct_3(arg_1.a, arg_0.x, 1u));
    global2 = -(~(-2147483647i));
    return _wgslsmith_add_i32(firstLeadingBit(arg_1.a.b.b), _wgslsmith_add_i32(func_1(arg_1.a.b, !select(vec4<bool>(var_0.c.a.b, true, false, arg_0.x), vec4<bool>(var_0.c.a.b, arg_0.x, var_0.e.b, false), vec4<bool>(arg_1.b, true, true, false))).a.a, _wgslsmith_clamp_i32(arg_3.x, ~arg_1.a.a, global1.a)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_1(-_wgslsmith_mod_i32(global1.b, i32(-1i) * -16362i), 2147483647i);
    var var_0 = Struct_2(_wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(_wgslsmith_sub_vec3_i32(reverseBits(vec3<i32>(1i, u_input.a, global1.a)), _wgslsmith_add_vec3_i32(vec3<i32>(u_input.a, u_input.a, -3995i), vec3<i32>(-2147483647i, u_input.a, -10245i))), ~(-vec3<i32>(u_input.a, global1.a, u_input.a))), _wgslsmith_mod_vec3_i32(abs(~vec3<i32>(0i, -2147483647i, -2147483647i)), _wgslsmith_add_vec3_i32(min(vec3<i32>(-46847i, -18335i, global1.a), vec3<i32>(0i, u_input.a, 37011i)), ~vec3<i32>(global1.a, 2147483647i, global1.a)))), Struct_1(reverseBits(-(u_input.a ^ global1.a)), 0i), -_wgslsmith_mult_i32(_wgslsmith_mod_i32(u_input.a, -9078i ^ global1.b), ~_wgslsmith_mod_i32(global1.a, 15663i)));
    let x = u_input.a;
    s_output = StorageBuffer(func_3(select(vec2<bool>(true, true), !select(vec2<bool>(true, false), vec2<bool>(true, true), true), all(vec3<bool>(true, true, true))), func_1(var_0.b, vec4<bool>(true, true, all(vec3<bool>(false, false, false)), true)), -25146i, (~vec4<i32>(var_0.a, u_input.a, u_input.a, global1.a) << (~vec4<u32>(1045u, global0.x, u_input.b, 0u) % vec4<u32>(32u))) >> (vec4<u32>(19267u ^ u_input.b, ~u_input.b, ~4294967295u, u_input.b) % vec4<u32>(32u))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(580f, -329f)))))), ~vec4<i32>(u_input.a, ~1i, var_0.c, var_0.b.b), vec4<i32>(max(-1i, 1i), abs(-17497i & _wgslsmith_dot_vec4_i32(vec4<i32>(1i, 10825i, var_0.c, u_input.a), vec4<i32>(-2147483647i, 4229i, 23261i, u_input.a))), global1.b, -60172i));
}


struct Struct_1 {
    a: vec4<u32>,
    b: bool,
    c: vec2<bool>,
    d: u32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: Struct_2,
    d: vec3<i32>,
}

struct Struct_4 {
    a: Struct_1,
    b: vec4<u32>,
    c: Struct_3,
}

struct Struct_5 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5;

var<private> global1: bool = false;

var<private> global2: Struct_3 = Struct_3(Struct_2(-1189f, Struct_1(vec4<u32>(1u, 27129u, 26247u, 17790u), true, vec2<bool>(false, false), 1u)), true, Struct_2(140f, Struct_1(vec4<u32>(1u, 5346u, 0u, 29362u), true, vec2<bool>(true, true), 0u)), vec3<i32>(2147483647i, -1i, -4495i));

var<private> global3: vec2<f32>;

var<private> global4: vec4<u32>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_4, arg_2: Struct_3) -> u32 {
    let var_0 = vec2<u32>(arg_1.b.x, _wgslsmith_sub_u32(4294967295u, 1u));
    var var_1 = Struct_5(_wgslsmith_f_op_vec4_f32(-global0.a));
    global4 = min(vec4<u32>(min(select(firstTrailingBit(global2.c.b.a.x), firstLeadingBit(global4.x), arg_2.a.b.c.x), _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, global2.c.b.a.x, arg_2.a.b.a.x, 1u) >> (arg_1.b % vec4<u32>(32u)), vec4<u32>(u_input.b, global2.c.b.a.x, 872u, 0u))), reverseBits(u_input.b), _wgslsmith_add_u32(_wgslsmith_mult_u32(4294967295u, u_input.b) & _wgslsmith_mult_u32(36161u, u_input.b), (1u >> (arg_0.a.x % 32u)) << (~global4.x % 32u)), abs(_wgslsmith_add_u32(firstTrailingBit(var_0.x), arg_0.a.x))), vec4<u32>(~_wgslsmith_div_u32(global2.c.b.a.x, 0u), min(var_0.x, reverseBits(arg_1.b.x)), _wgslsmith_sub_u32(global2.c.b.a.x ^ u_input.b, _wgslsmith_mod_u32(45201u, arg_1.c.c.b.d)), 53485u) << (~vec4<u32>(abs(75814u), ~62694u, 1u, ~arg_0.d) % vec4<u32>(32u)));
    var_1 = Struct_5(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global0.a * var_1.a)));
    var var_2 = _wgslsmith_mult_u32(firstLeadingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.b.x, 28757u, arg_0.d, arg_1.b.x), arg_2.a.b.a) >> ((22364u << (arg_2.c.b.a.x % 32u)) % 32u)), 4294967295u) >= 1u;
    return var_0.x;
}

fn func_2(arg_0: vec3<bool>, arg_1: vec3<f32>, arg_2: bool, arg_3: u32) -> Struct_5 {
    global4 = ~firstLeadingBit(abs(global2.a.b.a));
    global4 = vec4<u32>(_wgslsmith_dot_vec4_u32(min(vec4<u32>(~0u, global4.x ^ 4294967295u, 43923u << (global2.a.b.d % 32u), func_3(Struct_1(vec4<u32>(arg_3, global2.c.b.d, 1u, global4.x), arg_2, vec2<bool>(arg_2, global2.c.b.b), global4.x), Struct_4(Struct_1(vec4<u32>(arg_3, 0u, 4294967295u, 39711u), false, vec2<bool>(global2.b, arg_0.x), u_input.b), global2.c.b.a, Struct_3(global2.a, arg_2, Struct_2(global3.x, Struct_1(vec4<u32>(global4.x, global4.x, 61154u, 20662u), true, vec2<bool>(true, false), 35690u)), vec3<i32>(-33294i, 1i, -36655i))), Struct_3(global2.a, global2.b, global2.a, vec3<i32>(u_input.d, -32525i, u_input.c)))), ~global2.c.b.a), global2.c.b.a), select(arg_3 << (global4.x % 32u), ~0u, false), 4294967295u, ~global4.x);
    var var_0 = 1000f;
    let var_1 = arg_0;
    global1 = false;
    return Struct_5(_wgslsmith_f_op_vec4_f32(select(global0.a, global0.a, select(!vec4<bool>(true, true, global2.b, true), !select(vec4<bool>(false, false, true, false), vec4<bool>(arg_2, arg_2, global2.a.b.c.x, global2.a.b.c.x), vec4<bool>(arg_2, true, global2.a.b.c.x, var_1.x)), select(vec4<bool>(false, false, arg_2, arg_2), !vec4<bool>(arg_0.x, var_1.x, global2.a.b.b, arg_2), select(vec4<bool>(global2.c.b.b, false, false, true), vec4<bool>(true, arg_2, true, arg_0.x), true))))));
}

fn func_4(arg_0: Struct_5, arg_1: vec3<bool>, arg_2: vec3<bool>) -> Struct_3 {
    let var_0 = Struct_3(global2.a, global2.a.b.c.x, Struct_2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -367f))), global2.c.b), vec3<i32>(max(1i, -2147483647i), -2147483647i, global2.d.x));
    let var_1 = Struct_4(var_0.c.b, ~vec4<u32>(_wgslsmith_mod_u32(0u, 1u), ~0u, ~global4.x, 1u) >> (~((global2.c.b.a ^ var_0.c.b.a) | abs(vec4<u32>(37153u, u_input.b, global2.c.b.a.x, var_0.a.b.d))) % vec4<u32>(32u)), var_0);
    var var_2 = true;
    let var_3 = vec2<u32>(global4.x, 4294967295u);
    let var_4 = var_0;
    return var_0;
}

fn func_1(arg_0: i32) -> vec2<bool> {
    global1 = global2.c.b.b;
    global2 = func_4(func_2(vec3<bool>(global2.a.b.b, firstTrailingBit(-3538i) >= (8770i << (u_input.b % 32u)), true), _wgslsmith_div_vec3_f32(global0.a.wyx, _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2162f, global0.a.x, 1000f))))), global2.c.b.b, global4.x), select(!vec3<bool>(0u >= u_input.b, all(vec2<bool>(global2.b, true)), global2.d.x < 0i), select(select(!vec3<bool>(global2.a.b.c.x, global2.a.b.c.x, false), select(vec3<bool>(global2.a.b.b, false, global2.a.b.b), vec3<bool>(global2.c.b.c.x, true, true), false), true), !select(vec3<bool>(global2.b, false, global2.b), vec3<bool>(false, true, false), vec3<bool>(global2.b, false, global2.b)), select(vec3<bool>(global2.b, false, global2.a.b.c.x), vec3<bool>(false, true, global2.b), vec3<bool>(global2.c.b.c.x, false, false))), any(vec3<bool>(true, true, true)) && all(select(vec2<bool>(global2.b, true), global2.c.b.c, false))), select(!select(vec3<bool>(global2.b, global2.b, false), vec3<bool>(global2.c.b.b, true, true), any(vec4<bool>(global2.c.b.c.x, global2.c.b.b, true, global2.a.b.b))), vec3<bool>(true, !(false | global2.c.b.c.x), any(vec4<bool>(true, true, true, true))), vec3<bool>(global2.b, global2.c.b.c.x == true, global2.a.b.b)));
    return select(select(vec2<bool>(global2.a.b.c.x, false), vec2<bool>(true, false), !select(global2.a.b.c, select(vec2<bool>(global2.a.b.b, false), global2.a.b.c, vec2<bool>(false, global2.b)), true)), vec2<bool>(global2.c.b.b, all(!vec3<bool>(global2.a.b.b, true, false))), func_4(Struct_5(global0.a), vec3<bool>(true, 2147483647i <= (global2.d.x << (global4.x % 32u)), true), !(!vec3<bool>(global2.b, true, false))).c.b.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(select(select(func_1(abs(0i)), global2.c.b.c, any(!vec3<bool>(false, global2.a.b.c.x, global2.a.b.c.x))), !func_4(Struct_5(global0.a), select(vec3<bool>(global2.c.b.b, global2.b, global2.b), vec3<bool>(true, global2.c.b.c.x, false), vec3<bool>(global2.a.b.b, global2.b, global2.b)), vec3<bool>(false, global2.b, true)).c.b.c, global2.a.b.c), !func_4(func_2(!vec3<bool>(false, global2.a.b.b, true), _wgslsmith_f_op_vec3_f32(global0.a.xzx + vec3<f32>(global2.a.a, global2.a.a, 149f)), global2.c.b.b, ~1u), vec3<bool>(global2.c.b.b, !global2.a.b.c.x, true), select(vec3<bool>(global2.c.b.c.x, global2.c.b.c.x, false), select(vec3<bool>(global2.c.b.b, global2.a.b.c.x, true), vec3<bool>(false, global2.a.b.b, false), false), select(vec3<bool>(true, false, true), vec3<bool>(global2.c.b.b, global2.b, global2.a.b.b), false))).c.b.c, select(vec2<bool>(!(!global2.a.b.b), global2.a.b.c.x), global2.a.b.c, !func_1(_wgslsmith_sub_i32(35298i, global2.d.x))));
    var var_1 = _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b, _wgslsmith_add_u32(global2.a.b.d ^ 1u, reverseBits(global4.x)), ~(~_wgslsmith_dot_vec2_u32(global4.xz, vec2<u32>(u_input.b, 1u))), global4.x), global2.c.b.a);
    var var_2 = -40426i;
    global4 = ~max(global2.c.b.a, global2.a.b.a);
    let var_3 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global0.a.zy * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-global0.a.ww), global0.a.xx, true)))), global0.a.xy);
    var var_4 = Struct_1(global2.a.b.a, (u_input.c == func_4(Struct_5(vec4<f32>(235f, global2.a.a, 618f, var_3.x)), vec3<bool>(true, global2.b, var_0.x), !vec3<bool>(false, global2.b, var_0.x)).d.x) & global2.c.b.b, var_0, ~max(13508u, ~var_1.x));
    var_4 = global2.a.b;
    let var_5 = var_4.a.yxz;
    let var_6 = Struct_4(global2.a.b, global2.c.b.a, func_4(func_2(vec3<bool>(var_4.c.x || true, var_0.x, true), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(global0.a.yyz)) * _wgslsmith_f_op_vec3_f32(ceil(global0.a.zww))), var_0.x, var_4.d), select(select(select(vec3<bool>(false, true, false), vec3<bool>(false, var_0.x, var_4.c.x), vec3<bool>(var_0.x, global2.b, var_4.c.x)), select(vec3<bool>(true, true, false), vec3<bool>(var_4.c.x, false, var_0.x), vec3<bool>(true, false, global2.b)), vec3<bool>(global2.c.b.b, global2.b, false)), select(select(vec3<bool>(var_0.x, false, global2.c.b.c.x), vec3<bool>(false, var_0.x, var_0.x), true), select(vec3<bool>(true, false, var_0.x), vec3<bool>(false, false, global2.c.b.c.x), vec3<bool>(var_4.b, false, var_4.b)), !vec3<bool>(global2.a.b.b, false, true)), global2.b), vec3<bool>(global2.c.b.b, u_input.b >= func_3(global2.a.b, Struct_4(global2.c.b, vec4<u32>(global4.x, 63175u, global4.x, 0u), Struct_3(global2.c, var_0.x, global2.a, global2.d)), Struct_3(Struct_2(-699f, global2.a.b), var_4.b, global2.a, global2.d)), !global2.b)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec4_i32(~vec4<i32>(_wgslsmith_clamp_i32(var_6.c.d.x, global2.d.x, var_6.c.d.x), -23879i, _wgslsmith_mult_i32(global2.d.x, global2.d.x), ~(-50937i)), vec4<i32>(global2.d.x, _wgslsmith_dot_vec3_i32(vec3<i32>(14647i, 1i, 1i), firstTrailingBit(var_6.c.d)), -2147483647i, i32(-1i) * -9618i), firstTrailingBit(~select(vec4<i32>(-51964i, u_input.c, var_6.c.d.x, u_input.a), vec4<i32>(-13672i, u_input.c, global2.d.x, u_input.c), vec4<bool>(false, var_0.x, var_4.c.x, var_4.b)))));
}


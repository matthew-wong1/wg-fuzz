struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: Struct_1,
    d: vec4<bool>,
    e: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_2,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: Struct_1;

var<private> global2: u32;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: u32, arg_1: vec2<i32>) -> u32 {
    let var_0 = 2147483647i;
    global0 = vec3<u32>(85402u, ~_wgslsmith_mult_u32(17718u, 2058u) ^ _wgslsmith_dot_vec2_u32(~vec2<u32>(global0.x, 1u) >> (vec2<u32>(41889u, 84113u) % vec2<u32>(32u)), vec2<u32>(u_input.b, reverseBits(22387u))), 1u);
    let var_1 = !global1.a.xxx;
    var var_2 = countOneBits(_wgslsmith_mod_i32(firstLeadingBit(_wgslsmith_add_i32(u_input.c, -26200i)), min(-16678i, _wgslsmith_sub_i32(arg_1.x, var_0))) << (arg_0 % 32u));
    let var_3 = -412f;
    return arg_0;
}

fn func_3(arg_0: u32, arg_1: vec3<u32>) -> Struct_2 {
    var var_0 = arg_1.x;
    var_0 = firstLeadingBit(global0.x);
    var var_1 = ~abs(vec3<u32>(1u, _wgslsmith_clamp_u32(1u, ~40464u, ~1u), ~38359u));
    var_1 = arg_1;
    global1 = Struct_1(!(!global1.a));
    return Struct_2(vec3<i32>(u_input.c, 2147483647i, -2147483647i), Struct_1(vec4<bool>(true, true, !global1.a.x, any(vec2<bool>(false, global1.a.x)))), Struct_1(global1.a), global1.a, Struct_1(!vec4<bool>(global1.a.x, global1.a.x, !global1.a.x, true)));
}

fn func_1(arg_0: u32, arg_1: Struct_2, arg_2: i32) -> vec3<u32> {
    global0 = vec3<u32>(arg_0, arg_0, ~4294967295u);
    global0 = max(vec3<u32>(abs(abs(~arg_0)), 57037u, global0.x), min(vec3<u32>(global0.x, 4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_0, 1u, u_input.a.x), vec3<u32>(0u, 36209u, 40068u))), _wgslsmith_add_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, 1u, 0u), vec3<u32>(4294967295u, 29327u, u_input.a.x)), reverseBits(vec3<u32>(3116u, arg_0, 0u)))) << (vec3<u32>(abs(u_input.b), ~(~10360u), 4294967295u) % vec3<u32>(32u)));
    let var_0 = !(!global1.a.x);
    var var_1 = func_3(firstLeadingBit(global0.x), ~vec3<u32>(u_input.a.x, ~reverseBits(u_input.b), global0.x | func_2(global0.x, arg_1.a.yx)));
    global1 = Struct_1(!vec4<bool>(func_3(_wgslsmith_sub_u32(u_input.a.x, arg_0), ~vec3<u32>(38279u, arg_0, 3177u)).e.a.x, false, true, false));
    return ~(~select(~vec3<u32>(42127u, global0.x, arg_0), select(vec3<u32>(arg_0, global0.x, global0.x), vec3<u32>(global0.x, 1u, 0u), vec3<bool>(var_1.e.a.x, false, false)), 4294967295u > global0.x)) & _wgslsmith_sub_vec3_u32(~vec3<u32>(58053u, global0.x, countOneBits(arg_0)), vec3<u32>(firstLeadingBit(u_input.a.x), u_input.a.x, u_input.a.x | _wgslsmith_mod_u32(4294967295u, global0.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = _wgslsmith_mult_u32(_wgslsmith_mult_u32(firstLeadingBit(17123u), global0.x), abs(13101u));
    global2 = firstTrailingBit(_wgslsmith_mod_u32(global0.x, 47192u));
    var var_0 = select(_wgslsmith_sub_vec3_u32(~(~vec3<u32>(u_input.b, u_input.a.x, 47634u)), ~(~vec3<u32>(4294967295u, u_input.a.x, 91710u))) ^ select(firstTrailingBit(vec3<u32>(u_input.a.x, u_input.a.x, global0.x)) | ~vec3<u32>(9498u, 55669u, 96818u), ~abs(vec3<u32>(41191u, 0u, 0u)), any(select(global1.a, vec4<bool>(false, false, false, global1.a.x), global1.a))), _wgslsmith_add_vec3_u32(vec3<u32>(_wgslsmith_div_u32(5353u, 1u), ~1u, min(global0.x, u_input.a.x)), func_1(4294967295u << (global0.x % 32u), Struct_2(vec3<i32>(-2147483647i, 71282i, 0i), Struct_1(global1.a), Struct_1(global1.a), global1.a, Struct_1(vec4<bool>(true, global1.a.x, global1.a.x, global1.a.x))), -2147483647i)) >> (~vec3<u32>(~global0.x, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 0u, u_input.a.x, 4294967295u), vec4<u32>(global0.x, 58085u, 1u, 10757u)), firstLeadingBit(global0.x)) % vec3<u32>(32u)), false);
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(sign(-1737f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1088f + -379f))), 3188f), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1241f), 288f))));
    var var_2 = Struct_3(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.x, _wgslsmith_f_op_f32(abs(var_1.x))) * vec2<f32>(1000f, _wgslsmith_f_op_f32(var_1.x - var_1.x))), Struct_2(func_3(~_wgslsmith_mod_u32(global0.x, u_input.b), _wgslsmith_div_vec3_u32(vec3<u32>(0u, var_0.x, 0u) | vec3<u32>(u_input.a.x, 1u, 13639u), _wgslsmith_mult_vec3_u32(vec3<u32>(var_0.x, u_input.b, 71704u), vec3<u32>(0u, u_input.a.x, global0.x)))).a, func_3(firstTrailingBit(~var_0.x), firstTrailingBit(vec3<u32>(1u, 27166u, 4294967295u))).b, func_3(40604u, ~vec3<u32>(0u, global0.x, 5157u)).e, vec4<bool>(global1.a.x, true, global1.a.x, false), func_3(4294967295u, ~(vec3<u32>(1u, var_0.x, var_0.x) >> (vec3<u32>(var_0.x, u_input.a.x, global0.x) % vec3<u32>(32u)))).c), Struct_1(global1.a));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-793f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_1.x)) * var_1.x)))));
    global0 = _wgslsmith_mult_vec3_u32(select(~abs(abs(vec3<u32>(20752u, u_input.b, 59170u))), _wgslsmith_div_vec3_u32(~min(vec3<u32>(u_input.b, u_input.b, 4294967295u), vec3<u32>(var_0.x, global0.x, 18867u)), vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 46748u, 37698u), vec3<u32>(var_0.x, 0u, 686u)), ~4294967295u, ~global0.x)), all(!select(vec2<bool>(false, true), var_2.c.a.wz, global1.a.zz))), ~vec3<u32>(4294967295u, u_input.b, u_input.b));
    var var_4 = !select(vec4<bool>(false, var_2.c.a.x, var_2.b.c.a.x, _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, u_input.c, u_input.c), var_2.b.a) <= ~25947i), !select(!global1.a, global1.a, any(global1.a.xzy)), all(func_3(_wgslsmith_dot_vec3_u32(vec3<u32>(6892u, var_0.x, global0.x), vec3<u32>(40724u, 4294967295u, u_input.b)), vec3<u32>(var_0.x, u_input.a.x, global0.x)).c.a.yw));
    global1 = var_2.c;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_i32(var_2.b.a.x, countOneBits(-26156i)), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_2.a.x * var_2.a.x))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-264f - var_1.x), var_1.x))), var_2.a));
}


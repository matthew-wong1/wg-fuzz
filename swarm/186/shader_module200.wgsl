struct Struct_1 {
    a: vec3<bool>,
    b: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec3<i32>,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: vec4<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 0i;

var<private> global1: Struct_1;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: Struct_1) -> i32 {
    global1 = Struct_1(select(arg_0.a, !arg_0.a, !(!vec3<bool>(arg_0.a.x, false, true))), _wgslsmith_f_op_f32(f32(-1f) * -2452f));
    global0 = -16586i;
    global0 = ~firstLeadingBit(select((i32(-1i) * -1i) >> (u_input.d % 32u), u_input.c.x, true));
    var var_0 = arg_2;
    var var_1 = reverseBits(_wgslsmith_sub_vec2_u32(u_input.b.zw, countOneBits(countOneBits(vec2<u32>(u_input.d, u_input.d))) << (_wgslsmith_add_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.b.x, 0u), vec2<u32>(u_input.d, u_input.d)), vec2<u32>(u_input.b.x, u_input.b.x)) % vec2<u32>(32u))));
    return 6477i;
}

fn func_2() -> Struct_1 {
    global0 = _wgslsmith_dot_vec3_i32(~vec3<i32>(2147483647i, -40891i, firstLeadingBit(u_input.a.x << (u_input.d % 32u))), countOneBits(max(min(vec3<i32>(u_input.c.x, u_input.a.x, u_input.a.x), -vec3<i32>(u_input.a.x, 2147483647i, 0i)), vec3<i32>(-1i, u_input.a.x, 1i))));
    var var_0 = Struct_1(global1.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.b + global1.b)));
    var_0 = Struct_1(!global1.a, 524f);
    let var_1 = var_0.a.x | false;
    global0 = _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(~(~vec3<i32>(-39080i, u_input.a.x, -1i)), _wgslsmith_div_vec3_i32(vec3<i32>(u_input.c.x >> (4294967295u % 32u), ~29601i, _wgslsmith_add_i32(0i, -1i)), countOneBits(vec3<i32>(u_input.c.x, -1i, 16997i)))), vec3<i32>(~func_3(Struct_1(vec3<bool>(var_0.a.x, var_0.a.x, true), var_0.b), vec4<f32>(global1.b, var_0.b, var_0.b, global1.b), Struct_1(global1.a, -778f)), 1i, 15114i));
    return Struct_1(!var_0.a, _wgslsmith_f_op_f32(global1.b - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2323f * 720f) - _wgslsmith_f_op_f32(max(-895f, -241f)))))));
}

fn func_1(arg_0: vec2<u32>, arg_1: f32, arg_2: Struct_1, arg_3: vec2<u32>) -> f32 {
    var var_0 = abs(~(~vec2<u32>(arg_3.x, 4294967295u) ^ vec2<u32>(u_input.b.x, arg_3.x))) | _wgslsmith_sub_vec2_u32(~_wgslsmith_mod_vec2_u32(select(vec2<u32>(1u, 12234u), arg_0, vec2<bool>(true, true)), u_input.b.xy << (arg_3 % vec2<u32>(32u))), arg_0);
    let var_1 = 41288u;
    global1 = Struct_1(vec3<bool>((1i | u_input.a.x) > u_input.c.x, !any(vec3<bool>(true, arg_2.a.x, global1.a.x)), arg_2.a.x), global1.b);
    var var_2 = func_2();
    let var_3 = 25495i;
    return 822f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.b))) * _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_div_f32(global1.b, global1.b), _wgslsmith_f_op_f32(func_1(vec2<u32>(56465u, 0u), global1.b, Struct_1(global1.a, global1.b), u_input.b.yy))))))));
    global0 = u_input.c.x;
    global0 = ~(0i ^ (-16247i | firstTrailingBit(-41633i))) & u_input.c.x;
    var var_1 = _wgslsmith_clamp_vec2_i32(select(u_input.a, u_input.a, vec2<bool>(_wgslsmith_f_op_f32(ceil(-2409f)) >= -142f, _wgslsmith_dot_vec4_u32(u_input.b, u_input.b) >= u_input.d)), ~(~vec2<i32>(-2147483647i, u_input.a.x)), u_input.c.zy);
    var var_2 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(global1.b, u_input.a, vec4<f32>(global1.b, global1.b, -1000f, _wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * var_0.x))), 24095i);
}


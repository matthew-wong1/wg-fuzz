struct Struct_1 {
    a: u32,
    b: f32,
    c: u32,
    d: u32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec4<i32>,
    c: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(true, false, true);

var<private> global1: bool;

var<private> global2: u32 = 76576u;

var<private> global3: vec4<u32> = vec4<u32>(4294967295u, 4294967295u, 0u, 0u);

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_2) -> vec4<bool> {
    return vec4<bool>(all(vec3<bool>(!global0.x, any(vec4<bool>(global0.x, global0.x, global0.x, global0.x)), _wgslsmith_f_op_f32(ceil(-986f)) < _wgslsmith_f_op_f32(trunc(arg_1.a)))), global0.x, arg_0.x, arg_0.x);
}

fn func_2(arg_0: i32) -> Struct_2 {
    global1 = any(!(!func_3(!vec3<bool>(true, global0.x, global0.x), Struct_2(-202f, Struct_1(4294967295u, 674f, u_input.a.x, u_input.a.x)))));
    global2 = u_input.a.x;
    var var_0 = global0.x;
    global2 = ~_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(~vec3<u32>(u_input.a.x, u_input.a.x, 4294967295u), global3.xwx), ~global3.yxy);
    var var_1 = select(~1u, 76663u, !(!global0.x));
    return Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1165f)))), Struct_1(~abs(11723u), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-290f + 1327f), -1000f)), _wgslsmith_mult_u32(min(~3308u, u_input.a.x), ~1u << (firstLeadingBit(global3.x) % 32u)), global3.x));
}

fn func_1() -> Struct_3 {
    var var_0 = 1i;
    let var_1 = func_2(-_wgslsmith_mult_i32(-20302i, 1i));
    var_0 = -7745i;
    global3 = firstLeadingBit(vec4<u32>(~(~u_input.a.x), 9233u, ~min(max(var_1.b.a, 37371u), _wgslsmith_mult_u32(28019u, 43017u)), ~(~47831u)));
    var var_2 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1515f), var_1.b.b), -714f) * _wgslsmith_f_op_f32(909f - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(var_1.b.b)))))), -(~vec4<i32>(-12119i, -2147483647i, 2147483647i, -1i)) | vec4<i32>(~40846i, -_wgslsmith_clamp_i32(-2147483647i, -10755i, -47238i), _wgslsmith_sub_i32(~56611i, i32(-1i) * -1i), 1i), ~4294967295u);
    return Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a - var_2.a))))), vec4<i32>(i32(-1i) * -2147483647i, var_2.b.x, _wgslsmith_add_i32(1i, var_2.b.x), var_2.b.x), _wgslsmith_dot_vec2_u32(abs(vec2<u32>(u_input.a.x >> (var_1.b.a % 32u), _wgslsmith_clamp_u32(4294967295u, u_input.a.x, var_2.c))), vec2<u32>(~10499u >> (abs(var_1.b.c) % 32u), u_input.a.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    global2 = var_0.c;
    var var_1 = func_2(~(~var_0.b.x));
    let var_2 = func_1();
    var var_3 = u_input.a << (vec4<u32>(reverseBits(~1u), ~var_1.b.c, _wgslsmith_dot_vec2_u32(u_input.a.yy, select(u_input.a.zx, max(u_input.a.yz, global3.xw), true)), countOneBits(_wgslsmith_div_u32(var_2.c & 9789u, abs(4294967295u)))) % vec4<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(-var_2.b.x);
}


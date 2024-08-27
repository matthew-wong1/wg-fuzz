struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: u32,
    c: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: vec2<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: Struct_3 = Struct_3(i32(-2147483648), 1u, Struct_1(vec4<u32>(1u, 12226u, 4294967295u, 19494u)));

var<private> global2: u32;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_2(arg_0: u32) -> i32 {
    let var_0 = _wgslsmith_mult_i32(u_input.c, _wgslsmith_mod_i32(u_input.b, global1.a));
    return u_input.c;
}

fn func_3(arg_0: i32) -> i32 {
    global2 = ~_wgslsmith_mod_u32(_wgslsmith_mod_u32(~_wgslsmith_clamp_u32(0u, 11454u, global1.c.a.x), _wgslsmith_add_u32(global1.b, global1.b) >> (reverseBits(global1.c.a.x) % 32u)), _wgslsmith_mult_u32(u_input.e, ~_wgslsmith_div_u32(13635u, 1u)));
    var var_0 = Struct_4((abs(firstLeadingBit(42114u)) ^ ~u_input.d.x) | _wgslsmith_sub_u32(_wgslsmith_mod_u32(min(0u, 4294967295u), global1.b << (global1.b % 32u)), _wgslsmith_clamp_u32(global1.b, global1.b, ~0u)), global1.c);
    var var_1 = Struct_4(u_input.d.x, var_0.b);
    global0 = !vec4<bool>(all(!vec3<bool>(true, global0.x, global0.x)) && true, all(global0.zzy), global0.x, true);
    var_0 = Struct_4(_wgslsmith_add_u32(~1u, 1u), var_1.b);
    return -9679i;
}

fn func_1(arg_0: vec4<bool>, arg_1: vec4<bool>, arg_2: vec3<u32>, arg_3: Struct_1) -> vec2<bool> {
    let var_0 = vec2<i32>(_wgslsmith_sub_i32(-1i, 2147483647i), ~max(func_2(19568u), global1.a)) | vec2<i32>(~(i32(-1i) * -global1.a), _wgslsmith_div_i32(u_input.c, -38407i << (abs(u_input.d.x) % 32u)));
    global0 = vec4<bool>(-1i != func_3(global1.a >> (~1u % 32u)), !(reverseBits(~u_input.e) <= ~firstTrailingBit(arg_3.a.x)), global0.x, false);
    var var_1 = -1i;
    var var_2 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1033f * -584f) + _wgslsmith_f_op_f32(min(1710f, 1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -172f)))), Struct_1(_wgslsmith_add_vec4_u32(arg_3.a, vec4<u32>(u_input.d.x, global1.b, arg_2.x, 1u) & _wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, arg_2.x, arg_2.x, 4294967295u), vec4<u32>(global1.c.a.x, 27069u, arg_3.a.x, arg_2.x), global1.c.a))));
    var_2 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(var_2.a, -1539f, false)))), _wgslsmith_f_op_f32(527f * var_2.a))) + _wgslsmith_f_op_f32(trunc(-602f))), arg_3);
    return !select(vec2<bool>(arg_0.x, true), !vec2<bool>(arg_1.x, true), ~u_input.a > arg_2.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1.c.a.x;
    let var_1 = vec2<i32>(-u_input.b, ~(_wgslsmith_mult_i32(global1.a, ~47682i) ^ u_input.c));
    let var_2 = select(select(!vec2<bool>(false == global0.x, global0.x & global0.x), global0.zy, global0.x), vec2<bool>(any(vec3<bool>(true, true, true)), true), func_1(vec4<bool>(global0.x, all(vec4<bool>(global0.x, global0.x, true, false)), any(global0.zx), true), !(!vec4<bool>(false, global0.x, global0.x, true)), abs(~global1.c.a.wxz >> (vec3<u32>(u_input.e, 0u, global1.c.a.x) % vec3<u32>(32u))), global1.c));
    let var_3 = ~(~_wgslsmith_dot_vec4_u32(select(global1.c.a, ~vec4<u32>(4294967295u, u_input.e, global1.c.a.x, 68393u), !global0.x), _wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, global1.c.a.x, global1.b, global1.b), _wgslsmith_clamp_vec4_u32(vec4<u32>(global1.c.a.x, 0u, global1.b, global1.c.a.x), vec4<u32>(4294967295u, 32161u, 968u, 4294967295u), vec4<u32>(3737u, 1748u, 1u, global1.b)))));
    global1 = Struct_3(-(~max(u_input.c, i32(-1i) * -9866i)), global1.c.a.x, Struct_1(firstLeadingBit(reverseBits(~global1.c.a))));
    var var_4 = countOneBits(u_input.e);
    global2 = ~4294967295u;
    let var_5 = global1.c.a;
    let var_6 = abs(vec3<i32>(global1.a, u_input.b, -52957i));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(u_input.e, reverseBits(min(~var_5.x, _wgslsmith_mod_u32(var_3, var_5.x))), var_3), var_3);
}


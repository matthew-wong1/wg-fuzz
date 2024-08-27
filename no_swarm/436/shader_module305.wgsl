struct Struct_1 {
    a: u32,
    b: bool,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_2(arg_0: i32, arg_1: Struct_2, arg_2: vec4<i32>, arg_3: f32) -> vec3<u32> {
    return ~vec3<u32>(~1u, 109559u, 4294967295u);
}

fn func_3() -> vec4<f32> {
    let var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1129f, -816f)))))), 456f, (true & global0.b) | true));
    global0 = Struct_1(global0.a, global0.b, _wgslsmith_sub_i32(2147483647i, -global0.c));
    var var_1 = reverseBits(vec4<i32>(global0.c, 2125i, abs(-73692i), global0.c));
    let var_2 = abs(_wgslsmith_dot_vec4_u32(~(~(~vec4<u32>(global0.a, global0.a, 0u, u_input.a))), vec4<u32>(1u, _wgslsmith_dot_vec3_u32(firstLeadingBit(vec3<u32>(9654u, global0.a, 88641u)), vec3<u32>(34323u, 0u, 4294967295u)), 60403u, ~17344u)));
    let var_3 = false;
    return _wgslsmith_f_op_vec4_f32(-vec4<f32>(-613f, _wgslsmith_f_op_f32(sign(var_0)), _wgslsmith_f_op_f32(sign(var_0)), var_0));
}

fn func_4(arg_0: vec3<u32>, arg_1: vec3<u32>, arg_2: vec4<f32>, arg_3: Struct_1) -> vec2<i32> {
    let var_0 = arg_3;
    let var_1 = Struct_1(1u, any(vec2<bool>(true, !(true && arg_3.b))), 51802i);
    global0 = var_1;
    let var_2 = 973f;
    var var_3 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(1340f))));
    return vec2<i32>(abs(-17868i), -1i & firstLeadingBit(-arg_3.c));
}

fn func_1() -> vec2<bool> {
    global0 = Struct_1(global0.a ^ 4294967295u, global0.b, -2147483647i);
    var var_0 = false;
    let var_1 = Struct_1(global0.a, true, global0.c);
    var var_2 = vec2<i32>(_wgslsmith_div_i32(~26810i, ~var_1.c), ~min(firstTrailingBit(~2147483647i), var_1.c));
    var_2 = abs(func_4(vec3<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, 51762u, global0.a, u_input.a), vec4<u32>(var_1.a, 0u, u_input.a, var_1.a)), ~vec4<u32>(u_input.a, 78859u, 62999u, u_input.a)), global0.a, global0.a), ~countOneBits(vec3<u32>(var_1.a, u_input.a, u_input.a)) >> (~func_2(var_1.c, Struct_2(Struct_1(var_1.a, true, -2147483647i), Struct_1(global0.a, true, global0.c), Struct_1(var_1.a, true, var_2.x), var_1), vec4<i32>(var_2.x, global0.c, global0.c, 1i), 231f) % vec3<u32>(32u)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(284f, 348f, -508f, -1848f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(1033f, 744f, 956f, 1238f))) * _wgslsmith_f_op_vec4_f32(func_3())), Struct_1(~abs(4294967295u), u_input.a <= var_1.a, -48781i)));
    return !select(select(select(!vec2<bool>(true, global0.b), !vec2<bool>(var_1.b, true), vec2<bool>(var_1.b, global0.b)), vec2<bool>(var_1.b, true), false), select(select(vec2<bool>(var_1.b, false), select(vec2<bool>(true, global0.b), vec2<bool>(true, global0.b), true), select(vec2<bool>(false, true), vec2<bool>(var_1.b, var_1.b), vec2<bool>(true, false))), vec2<bool>(var_1.b & true, var_1.b), !vec2<bool>(true, var_1.b)), any(vec4<bool>(false, var_1.b, true, !var_1.b)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -select(_wgslsmith_add_vec2_i32(-vec2<i32>(global0.c, global0.c), vec2<i32>(1i, 1i)), min(vec2<i32>(-2147483647i, global0.c), vec2<i32>(-39598i, global0.c)) << (_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.a, global0.a), vec2<u32>(13253u, 18520u), vec2<u32>(0u, 0u)) % vec2<u32>(32u)), !func_1()) << (min(vec2<u32>(4294967295u, ~0u) >> (~vec2<u32>(global0.a, global0.a) % vec2<u32>(32u)), vec2<u32>(select(_wgslsmith_sub_u32(u_input.a, u_input.a), ~84620u, all(vec2<bool>(false, global0.b))), _wgslsmith_clamp_u32(4294967295u, u_input.a, global0.a) | ~u_input.a)) % vec2<u32>(32u));
    global0 = Struct_1(~0u, global0.b, ~(-1i));
    let var_1 = Struct_1(global0.a, all(!(!(!vec3<bool>(global0.b, global0.b, true)))), -70983i);
    let var_2 = Struct_2(var_1, Struct_1(func_2(global0.c, Struct_2(var_1, Struct_1(var_1.a, global0.b, var_0.x), Struct_1(1u, var_1.b, var_0.x), var_1), firstLeadingBit(vec4<i32>(var_1.c, -1i, 32658i, -6125i)), 1639f).x, global0.b, 2147483647i), var_1, var_1);
    let var_3 = _wgslsmith_div_vec4_i32(~vec4<i32>(min(var_2.b.c, var_1.c), var_1.c, var_0.x & global0.c, -54748i), ~(~_wgslsmith_mult_vec4_i32(vec4<i32>(-1i, -462i, global0.c, var_1.c), vec4<i32>(var_2.b.c, -1i, var_0.x, var_0.x)))) << (reverseBits(reverseBits(firstTrailingBit(vec4<u32>(0u, var_2.d.a, var_2.b.a, 4294967295u) & vec4<u32>(1u, var_2.b.a, 1u, global0.a)))) % vec4<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(-1000f, ~(~0u), 1000f, ~_wgslsmith_clamp_u32(1u, firstTrailingBit(u_input.a) ^ func_2(var_2.d.c, var_2, var_3, 612f).x, 0u));
}


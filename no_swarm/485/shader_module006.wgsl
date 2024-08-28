struct Struct_1 {
    a: i32,
    b: bool,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> vec4<bool> {
    global0 = Struct_1(~arg_1.a, arg_0.b);
    var var_0 = vec3<bool>(false, select(arg_0.b, any(!vec2<bool>(arg_1.b, true)), !any(select(vec2<bool>(arg_0.b, arg_1.b), vec2<bool>(arg_0.b, true), arg_0.b))), !arg_0.b || false);
    var var_1 = _wgslsmith_sub_i32(1i, _wgslsmith_dot_vec2_i32(~min(vec2<i32>(-1i, arg_1.a), vec2<i32>(global0.a, 12473i)), _wgslsmith_mod_vec2_i32(abs(vec2<i32>(global0.a, arg_1.a)), _wgslsmith_sub_vec2_i32(vec2<i32>(global0.a, 1i), vec2<i32>(u_input.d, u_input.c)))) ^ ~0i);
    var var_2 = vec2<u32>(~(~_wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(1u, u_input.a)), vec2<u32>(1u, u_input.a))), reverseBits(u_input.a) >> (35130u % 32u));
    var var_3 = Struct_1(2147483647i, true);
    return vec4<bool>(true | !arg_0.b, select(select(!(false | arg_1.b), true, var_3.b), arg_0.b, u_input.a > u_input.a), !(!var_0.x), var_3.b);
}

fn func_2(arg_0: vec2<u32>) -> Struct_1 {
    let var_0 = Struct_1(select(-6419i, _wgslsmith_mult_i32(firstTrailingBit(-10196i), u_input.b), false), global0.b);
    let var_1 = func_3(Struct_1(select((0i << (arg_0.x % 32u)) ^ -u_input.b, global0.a, all(select(vec2<bool>(true, var_0.b), vec2<bool>(false, false), global0.b))), false == !(-2993i != var_0.a)), var_0);
    let var_2 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -467f))))))));
    var var_3 = var_0.b;
    global0 = var_0;
    return var_0;
}

fn func_1() -> StorageBuffer {
    global0 = func_2(select(_wgslsmith_div_vec2_u32(~vec2<u32>(u_input.a, u_input.a), firstLeadingBit(vec2<u32>(u_input.a, 26635u)) ^ ~vec2<u32>(4294967295u, 93672u)), ~vec2<u32>(u_input.a, u_input.a), select(!(!vec2<bool>(global0.b, global0.b)), !select(vec2<bool>(false, false), vec2<bool>(global0.b, global0.b), true), global0.b)));
    var var_0 = select(!select(!vec3<bool>(global0.b, global0.b, global0.b), !vec3<bool>(true, global0.b, true), !select(vec3<bool>(false, false, global0.b), vec3<bool>(global0.b, true, false), global0.b)), !(!(!vec3<bool>(true, false, global0.b))), select(select(select(vec3<bool>(global0.b, global0.b, global0.b), select(vec3<bool>(true, global0.b, global0.b), vec3<bool>(global0.b, true, false), vec3<bool>(true, true, true)), vec3<bool>(global0.b, true, false)), !(!vec3<bool>(global0.b, false, true)), false), select(vec3<bool>(global0.b, true, global0.b | global0.b), func_3(Struct_1(995i, false), func_2(vec2<u32>(u_input.a, 1u))).xyx, !select(vec3<bool>(false, false, global0.b), vec3<bool>(global0.b, false, global0.b), false)), func_3(Struct_1(-39656i, true), Struct_1(1i, !global0.b)).zyx));
    var var_1 = vec3<u32>(1u, 0u, ~abs(~u_input.a));
    var_0 = vec3<bool>(true, global0.b, !(!(min(1163i, 1i) > u_input.c)));
    let var_2 = func_2(var_1.zy);
    return StorageBuffer(select(_wgslsmith_div_vec2_u32(abs(~vec2<u32>(u_input.a, 8029u)), select(var_1.xz | var_1.xx, reverseBits(var_1.zy), true)), _wgslsmith_mod_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.a, 79372u), var_1.yy, vec2<u32>(var_1.x, var_1.x)) << (countOneBits(vec2<u32>(28047u, 4294967295u)) % vec2<u32>(32u)), vec2<u32>(2736u, ~u_input.a)), !(true != var_2.b)), _wgslsmith_f_op_f32(-691f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(-172f)))) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1329f, 1995f)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(9688i, true);
    let x = u_input.a;
    s_output = func_1();
}


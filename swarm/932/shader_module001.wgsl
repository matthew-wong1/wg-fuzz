struct Struct_1 {
    a: vec4<u32>,
    b: f32,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_1,
    c: vec2<i32>,
}

struct Struct_4 {
    a: Struct_1,
    b: f32,
    c: vec2<f32>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_5 {
    a: Struct_1,
    b: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: i32,
    d: vec2<u32>,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 12>;

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> u32 {
    var var_0 = vec4<bool>(any(vec4<bool>(true, true, true, true)) && false, !any(vec4<bool>(u_input.d.x < 42078u, 1u > u_input.e, true, all(vec3<bool>(true, true, true)))), true, all(!select(select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), true), vec3<bool>(true, true, true), true)));
    let var_1 = max(max(abs(_wgslsmith_clamp_vec2_i32(abs(u_input.a.zw), vec2<i32>(u_input.b, 28625i) >> (vec2<u32>(52349u, u_input.d.x) % vec2<u32>(32u)), ~vec2<i32>(-1i, u_input.c))), ~vec2<i32>(-2147483647i, reverseBits(u_input.b))), _wgslsmith_mult_vec2_i32(_wgslsmith_mult_vec2_i32(~vec2<i32>(u_input.c, -1i), vec2<i32>(-2147483647i >> (u_input.d.x % 32u), 73324i)), (vec2<i32>(-1i, u_input.a.x) | reverseBits(vec2<i32>(-2147483647i, u_input.b))) >> (~reverseBits(vec2<u32>(u_input.e, 4294967295u)) % vec2<u32>(32u))));
    var var_2 = vec4<u32>(abs(4294967295u), u_input.e, max(u_input.e & 1u, u_input.d.x) ^ _wgslsmith_div_u32(u_input.e ^ ~43684u, u_input.d.x), ~46438u);
    global0 = array<Struct_1, 12>();
    let var_3 = min(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d.x, 44836u, 0u), var_2.www), 1u);
    return 657u;
}

fn func_2(arg_0: Struct_5, arg_1: Struct_3) -> bool {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(-arg_1.b.b), 699f, arg_1.b.b, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_0.b - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(-784f))))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_0.a.b + _wgslsmith_f_op_f32(1377f - 2671f)), arg_0.b)))));
    let var_1 = func_3();
    global0 = array<Struct_1, 12>();
    let var_2 = arg_0;
    var var_3 = arg_1.c;
    return any(vec2<bool>(true, false));
}

fn func_1(arg_0: vec4<u32>, arg_1: vec2<i32>, arg_2: u32) -> bool {
    var var_0 = Struct_1(vec4<u32>(select(_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.d.x, arg_0.x), select(arg_0.xy, arg_0.zz, true)), arg_2, func_2(Struct_5(Struct_1(vec4<u32>(u_input.e, 66960u, 4294967295u, 27738u), 743f), 1099f), Struct_3(arg_0.wz, global0[_wgslsmith_index_u32(arg_2, 12u)], vec2<i32>(-2147483647i, arg_1.x)))), abs(27227u), arg_0.x, _wgslsmith_sub_u32(min(16983u, 4294967295u) >> (~arg_0.x % 32u), ~arg_2)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(1638f * -109f), -1242f)) + 1150f));
    var_0 = Struct_1(vec4<u32>(1u | ~var_0.a.x, 98675u, 4294967295u, ~(~_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.x, 71u, 4294967295u), var_0.a.xzz))), var_0.b);
    let var_1 = true;
    var var_2 = Struct_5(Struct_1(var_0.a, _wgslsmith_f_op_f32(-184f - _wgslsmith_f_op_f32(-292f - _wgslsmith_f_op_f32(select(435f, var_0.b, var_1))))), 704f);
    return ~(~(~u_input.d.x) | min(~28414u, _wgslsmith_mult_u32(4800u, arg_2))) < ~(~arg_2);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 1436f;
    let var_1 = all(vec2<bool>(true, func_1(select(vec4<u32>(0u, 4294967295u, u_input.d.x, 11319u), vec4<u32>(u_input.e, 1u, 0u, u_input.d.x), false), u_input.a.xw, 1511u) || !all(vec3<bool>(false, false, false))));
    let var_2 = ~(~(~u_input.e));
    global0 = array<Struct_1, 12>();
    global0 = array<Struct_1, 12>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(min(-1093f, -451f)), _wgslsmith_f_op_f32(step(-431f, _wgslsmith_f_op_f32(step(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-2274f, -607f))))))));
}


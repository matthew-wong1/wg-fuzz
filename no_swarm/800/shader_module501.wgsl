struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<i32>(-6374i, 125i));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_2) -> vec4<u32> {
    let var_0 = select(select(countOneBits(_wgslsmith_mod_vec4_i32(~vec4<i32>(arg_0.a.a.x, -1i, global0.a.x, global0.a.x), firstTrailingBit(vec4<i32>(arg_0.a.a.x, 2182i, global0.a.x, arg_0.a.a.x)))), ~vec4<i32>(global0.a.x, global0.a.x, -3567i, global0.a.x << (4294967295u % 32u)), all(vec3<bool>(true, true, true))), ~(~(~vec4<i32>(global0.a.x, 25120i, -2147483647i, 1i))), all(vec3<bool>((u_input.a >> (u_input.a % 32u)) <= abs(1u), !any(vec4<bool>(false, true, false, false)), true)));
    let var_1 = _wgslsmith_dot_vec2_u32(~vec2<u32>(select(u_input.a, ~94003u, true), ~1u), vec2<u32>(u_input.a, abs(2314u)));
    global0 = Struct_1(abs(-vec2<i32>(arg_0.b.a.x, abs(global0.a.x))));
    let var_2 = Struct_2(Struct_1(countOneBits(arg_0.b.a)), Struct_1(vec2<i32>(-(~global0.a.x), i32(-1i) * -31084i)));
    let var_3 = vec2<bool>(false, any(vec2<bool>(select(true, true, true), true)));
    return ~vec4<u32>(max(37422u, ~0u), u_input.a, countOneBits(~u_input.a >> (reverseBits(u_input.a) % 32u)), u_input.a);
}

fn func_2() -> vec2<i32> {
    var var_0 = 44895u;
    var var_1 = false;
    var_1 = true;
    global0 = Struct_1(global0.a);
    let var_2 = min(vec4<u32>(_wgslsmith_div_u32(5597u, ~_wgslsmith_mod_u32(19238u, u_input.a)), _wgslsmith_mod_u32(38044u, _wgslsmith_dot_vec2_u32(vec2<u32>(10403u, 1u), vec2<u32>(u_input.a, u_input.a) ^ vec2<u32>(u_input.a, u_input.a))), reverseBits(~u_input.a), u_input.a << (_wgslsmith_mult_u32(6301u & u_input.a, ~u_input.a) % 32u)), _wgslsmith_add_vec4_u32(abs(~vec4<u32>(51016u, u_input.a, 58200u, 0u)) ^ ~(~vec4<u32>(4294967295u, 4294967295u, u_input.a, 1u)), _wgslsmith_add_vec4_u32(~vec4<u32>(1u, 1u, u_input.a, u_input.a) ^ func_3(Struct_2(Struct_1(global0.a), Struct_1(vec2<i32>(global0.a.x, global0.a.x)))), firstLeadingBit(abs(vec4<u32>(u_input.a, 1u, u_input.a, u_input.a))))));
    return abs(reverseBits(vec2<i32>(max(global0.a.x, select(2147483647i, global0.a.x, true)), -52127i)));
}

fn func_1(arg_0: bool, arg_1: Struct_1, arg_2: vec3<i32>) -> u32 {
    let var_0 = arg_2;
    global0 = Struct_1(func_2() | arg_1.a);
    let var_1 = Struct_1(firstLeadingBit(vec2<i32>(arg_1.a.x, 8605i)));
    global0 = Struct_1(arg_1.a << (select(vec2<u32>(u_input.a, _wgslsmith_clamp_u32(u_input.a, u_input.a, 4294967295u)), vec2<u32>(firstTrailingBit(u_input.a), u_input.a), true) % vec2<u32>(32u)));
    let var_2 = arg_2.x;
    return _wgslsmith_div_u32(u_input.a, u_input.a & u_input.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<u32>(u_input.a, u_input.a, (_wgslsmith_dot_vec4_u32(max(vec4<u32>(u_input.a, u_input.a, 96855u, u_input.a), vec4<u32>(u_input.a, 6586u, u_input.a, 4294967295u)), ~vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a)) | func_1(true, Struct_1(vec2<i32>(global0.a.x, global0.a.x)), -vec3<i32>(-1i, 1i, 1i))) & reverseBits(~4353u), u_input.a);
    global0 = Struct_1(global0.a);
    global0 = Struct_1(vec2<i32>(-2147483647i, abs(abs(_wgslsmith_div_i32(4837i, -1i)))));
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1063f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(-581f)), _wgslsmith_div_f32(316f, 2071f), true)))), 474f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(2070f)))), _wgslsmith_f_op_f32(abs(-100f)));
    let var_2 = select(-2147483647i > ~(global0.a.x << (1u % 32u)), false, true);
    var var_3 = Struct_2(Struct_1(vec2<i32>(0i, _wgslsmith_div_i32(-20424i, 31074i))), Struct_1(vec2<i32>(~(global0.a.x ^ -2147483647i), global0.a.x >> (40717u % 32u))));
    var_3 = Struct_2(Struct_1(vec2<i32>(~_wgslsmith_add_i32(global0.a.x, -2147483647i), ~var_3.a.a.x & global0.a.x)), var_3.b);
    let var_4 = Struct_2(var_3.b, var_3.a);
    var var_5 = vec4<f32>(-771f, 1170f, _wgslsmith_f_op_f32(f32(-1f) * -643f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_1.x))), _wgslsmith_f_op_f32(-var_1.x))));
    let x = u_input.a;
    s_output = StorageBuffer(i32(-1i) * -_wgslsmith_mult_i32(_wgslsmith_clamp_i32(-1i, var_4.a.a.x, var_4.a.a.x), global0.a.x), select(vec2<u32>(48333u, u_input.a), ~var_0.wy, vec2<bool>(true, true)) & select(vec2<u32>(_wgslsmith_mod_u32(1u, var_0.x), ~39652u), func_3(var_4).zx, all(!vec3<bool>(var_2, var_2, true))), _wgslsmith_f_op_f32(exp2(var_5.x)));
}


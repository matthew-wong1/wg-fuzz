struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
    b: Struct_2,
    c: vec3<bool>,
    d: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: u32,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_1(arg_0: i32, arg_1: Struct_2, arg_2: vec3<i32>) -> Struct_2 {
    var var_0 = true;
    var_0 = -_wgslsmith_clamp_i32(arg_0, u_input.b, ~max(arg_2.x, arg_2.x)) > -7293i;
    let var_1 = Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_1.b.a), _wgslsmith_div_f32(arg_1.b.a, -1511f), true)));
    let var_2 = Struct_3(vec4<i32>(-arg_0, arg_0, 1i, reverseBits(_wgslsmith_dot_vec2_i32(u_input.d.yy >> (u_input.a.zx % vec2<u32>(32u)), vec2<i32>(-957i, u_input.b)))), Struct_2(arg_1.a, Struct_1(var_1.a)), arg_1.a.xzy, any(arg_1.a.yx) || arg_1.a.x);
    var_0 = var_2.b.a.x;
    return var_2.b;
}

fn func_2(arg_0: Struct_2) -> bool {
    return !func_1(1i, Struct_2(vec4<bool>(arg_0.a.x, false, -1i >= u_input.d.x, all(vec2<bool>(arg_0.a.x, arg_0.a.x))), Struct_1(arg_0.b.a)), u_input.d).a.x;
}

fn func_3(arg_0: u32, arg_1: Struct_2, arg_2: i32) -> Struct_3 {
    var var_0 = _wgslsmith_div_u32(1u, 59718u);
    let var_1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-666f))) - _wgslsmith_f_op_f32(-func_1(-53238i, arg_1, u_input.d).b.a)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1265f)))));
    var_0 = _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(~vec4<u32>(32325u, 4294967295u, abs(u_input.a.x), reverseBits(u_input.a.x)), _wgslsmith_clamp_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(1u, 1u, 1u, 4294967295u), countOneBits(vec4<u32>(arg_0, 32313u, u_input.c, 1u))), ~abs(vec4<u32>(1u, arg_0, 4294967295u, 5982u)), vec4<u32>(37531u, 1u << (u_input.c % 32u), firstLeadingBit(1u), _wgslsmith_dot_vec2_u32(u_input.a.yx, u_input.a.xz)))), vec4<u32>(~(~1u), _wgslsmith_div_u32(u_input.a.x, firstLeadingBit(max(u_input.c, u_input.a.x))), u_input.a.x, reverseBits(firstTrailingBit(abs(arg_0)))));
    var_0 = u_input.c;
    let var_2 = arg_1;
    return Struct_3(abs((countOneBits(vec4<i32>(arg_2, 0i, u_input.b, u_input.d.x)) << ((vec4<u32>(u_input.a.x, 6488u, 102972u, arg_0) & vec4<u32>(u_input.e, 12802u, arg_0, 4294967295u)) % vec4<u32>(32u))) & reverseBits(vec4<i32>(0i, arg_2, 7791i, u_input.d.x))), func_1(-22014i, var_2, reverseBits(-(~vec3<i32>(u_input.d.x, arg_2, 2147483647i)))), !(!(!var_2.a.zyw)), ~_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0, 28546u, arg_0) | vec3<u32>(u_input.e, u_input.a.x, 20308u), vec3<u32>(arg_0, 67276u, u_input.c)) == 4943u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<bool>(true, true);
    var_0 = vec2<bool>(all(select(select(vec3<bool>(false, var_0.x, false), vec3<bool>(var_0.x, false, var_0.x), select(vec3<bool>(false, false, var_0.x), vec3<bool>(true, var_0.x, var_0.x), false)), !(!vec3<bool>(var_0.x, false, var_0.x)), any(!vec4<bool>(false, var_0.x, var_0.x, true)))), true);
    var var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(685f + -1837f))), 1124f)));
    var var_2 = func_3(~u_input.e, Struct_2(vec4<bool>(_wgslsmith_mult_i32(-62698i, u_input.b) >= _wgslsmith_mult_i32(u_input.b, 2147483647i), func_2(func_1(u_input.b, Struct_2(vec4<bool>(var_0.x, false, false, false), Struct_1(261f)), vec3<i32>(u_input.b, u_input.b, 73535i))), false, var_0.x), Struct_1(var_1.a)), u_input.d.x);
    var var_3 = u_input.d.x;
    var var_4 = _wgslsmith_sub_u32(u_input.e, u_input.e) & (u_input.c | _wgslsmith_add_u32(1u, ~firstLeadingBit(0u)));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.a.x ^ -_wgslsmith_mod_i32(_wgslsmith_div_i32(u_input.b, var_2.a.x), 0i), ~_wgslsmith_mult_vec4_u32(~vec4<u32>(u_input.a.x, 4294967295u, u_input.c, 39082u), ~vec4<u32>(u_input.e, 49266u, 37008u, u_input.a.x)) ^ (~select(vec4<u32>(u_input.e, u_input.a.x, u_input.c, 4294967295u), vec4<u32>(u_input.a.x, u_input.c, u_input.a.x, u_input.c), var_2.b.a) >> (~(~vec4<u32>(u_input.c, 1u, 26312u, 0u)) % vec4<u32>(32u))));
}


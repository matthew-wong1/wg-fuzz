struct Struct_1 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<i32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 1> = array<Struct_1, 1>(Struct_1(vec4<i32>(-1i, -4970i, i32(-2147483648), 0i)));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<i32>, arg_1: u32) -> bool {
    var var_0 = -vec2<i32>(~_wgslsmith_mod_i32(_wgslsmith_mod_i32(-2147483647i, u_input.c.x), _wgslsmith_mult_i32(u_input.c.x, u_input.c.x)), abs(u_input.c.x) ^ ~arg_0.x);
    var var_1 = 0u;
    var_1 = arg_1;
    var var_2 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1419f), _wgslsmith_f_op_f32(561f - 311f))) * _wgslsmith_div_f32(-1217f, _wgslsmith_f_op_f32(round(294f)))))));
    global0 = array<Struct_1, 1>();
    return !(!any(vec2<bool>(true, true)));
}

fn func_2(arg_0: i32, arg_1: Struct_1, arg_2: Struct_1) -> i32 {
    let var_0 = select(vec4<bool>(select(arg_2.a.x >= arg_0, false, true), (~u_input.d.x ^ (u_input.d.x >> (4294967295u % 32u))) != 38153u, false, false), vec4<bool>(~4294967295u > (~u_input.d.x >> (~u_input.b % 32u)), all(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true))), !func_3(arg_2.a.ywx, 4294967295u), ~(57768u << (u_input.b % 32u)) <= ~u_input.d.x), !(!select(select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, true)), vec4<bool>(true, true, true, true), true)));
    let var_1 = _wgslsmith_add_vec2_i32(~(firstTrailingBit(vec2<i32>(3806i, arg_2.a.x)) >> ((vec2<u32>(u_input.b, 0u) >> (_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.b, 2208u), vec2<u32>(u_input.d.x, 1u), vec2<u32>(u_input.b, u_input.d.x)) % vec2<u32>(32u))) % vec2<u32>(32u))), _wgslsmith_clamp_vec2_i32(-vec2<i32>(-17418i, arg_1.a.x), _wgslsmith_div_vec2_i32(abs(vec2<i32>(0i, 0i)), vec2<i32>(1i, arg_1.a.x) | vec2<i32>(-1800i, arg_1.a.x)) | (vec2<i32>(-1i) * -arg_1.a.wy), arg_1.a.yz));
    global0 = array<Struct_1, 1>();
    var var_2 = Struct_1(countOneBits(reverseBits(arg_1.a)));
    var var_3 = all(select(vec3<bool>(var_0.x, !var_0.x, false), select(!var_0.wyy, var_0.wzw, u_input.d.x != u_input.d.x), var_0.zzy)) & any(!select(select(var_0, var_0, var_0), var_0, var_0));
    return ~arg_1.a.x;
}

fn func_1(arg_0: vec4<u32>, arg_1: vec3<u32>, arg_2: vec2<i32>, arg_3: vec3<i32>) -> u32 {
    let var_0 = 4294967295u;
    let var_1 = vec3<bool>(true, true, true);
    let var_2 = Struct_1(u_input.c | vec4<i32>(~(-arg_3.x), func_2(-u_input.c.x, Struct_1(u_input.c), Struct_1(vec4<i32>(arg_2.x, -2147483647i, arg_3.x, arg_2.x))), reverseBits(_wgslsmith_dot_vec2_i32(u_input.c.yy, vec2<i32>(-1i, arg_3.x))), -2147483647i));
    let var_3 = u_input.c.ywz;
    var var_4 = func_3(-abs(vec3<i32>(-1i) * -u_input.c.zzw), firstTrailingBit(27090u));
    return u_input.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.c.x;
    var var_1 = global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(abs(21666u), _wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(~u_input.b, 12759u, _wgslsmith_add_u32(u_input.d.x, u_input.b))), u_input.d | vec3<u32>(~u_input.b, min(u_input.b, 1u), func_1(vec4<u32>(0u, u_input.d.x, 4294967295u, 1u), vec3<u32>(0u, 96172u, 42256u), vec2<i32>(-2147483647i, u_input.a), u_input.c.wzy)))), 1u)];
    let var_2 = ~(_wgslsmith_add_u32(u_input.d.x, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 4294967295u, 4294967295u, u_input.d.x), _wgslsmith_add_vec4_u32(vec4<u32>(1860u, u_input.d.x, u_input.b, 59938u), vec4<u32>(1u, u_input.d.x, 1u, u_input.b)))) << (13104u % 32u));
    var_1 = global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(0u, u_input.d.x), 1u)];
    let var_3 = Struct_1(_wgslsmith_div_vec4_i32(vec4<i32>((0i ^ var_0) & _wgslsmith_dot_vec4_i32(var_1.a, var_1.a), _wgslsmith_mod_i32(reverseBits(var_1.a.x), 19459i), 2147483647i ^ min(u_input.a, -1i), u_input.a), vec4<i32>(var_1.a.x, 43935i, -23201i, _wgslsmith_mult_i32(_wgslsmith_div_i32(-1i, u_input.a), -5466i))));
    var_1 = var_3;
    global0 = array<Struct_1, 1>();
    let x = u_input.a;
    s_output = StorageBuffer(~(~abs(~vec2<u32>(4294967295u, 0u))));
}


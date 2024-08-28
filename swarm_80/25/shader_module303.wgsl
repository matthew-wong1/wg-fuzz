struct Struct_1 {
    a: u32,
    b: i32,
}

struct Struct_2 {
    a: i32,
    b: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec2<i32>,
    d: vec2<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 6> = array<Struct_2, 6>(Struct_2(22074i, 16645u), Struct_2(2147483647i, 1u), Struct_2(-10485i, 47973u), Struct_2(7229i, 0u), Struct_2(-1i, 1u), Struct_2(i32(-2147483648), 0u));

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_1() -> i32 {
    var var_0 = -vec3<i32>(1i, _wgslsmith_clamp_i32(~(-2147483647i), 2305i, u_input.b.x), -select(1i, -1i, true));
    let var_1 = Struct_1(45346u, _wgslsmith_dot_vec4_i32(select(~vec4<i32>(14490i, -1i, var_0.x, -1i), vec4<i32>(_wgslsmith_mult_i32(var_0.x, 13808i), -77292i, u_input.b.x, _wgslsmith_div_i32(var_0.x, -1i)), false), _wgslsmith_mod_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(1i, var_0.x, -1i, -2147483647i), vec4<i32>(31725i, u_input.b.x, -2147483647i, -4439i)) | vec4<i32>(-2147483647i, var_0.x, u_input.b.x, u_input.b.x), ~vec4<i32>(1i, var_0.x, -12983i, -1i) & ~vec4<i32>(var_0.x, u_input.a, u_input.b.x, 2147483647i))));
    let var_2 = global0[_wgslsmith_index_u32(~_wgslsmith_div_u32(~(~4294967295u ^ (var_1.a << (var_1.a % 32u))), _wgslsmith_mod_u32(_wgslsmith_div_u32(30555u, 1u) >> (_wgslsmith_div_u32(var_1.a, 1u) % 32u), ~var_1.a & 0u)), 6u)];
    var var_3 = var_1;
    let var_4 = Struct_1(1u, ~abs(var_2.a) & ~1i);
    return -2147483647i;
}

fn func_3(arg_0: i32, arg_1: u32, arg_2: vec2<bool>, arg_3: Struct_2) -> i32 {
    global0 = array<Struct_2, 6>();
    var var_0 = Struct_1(_wgslsmith_clamp_u32(1u, arg_1, min(min(4294967295u, arg_3.b), ~37229u)) | 4294967295u, arg_0);
    var var_1 = Struct_1(var_0.a, 2147483647i);
    let var_2 = _wgslsmith_clamp_vec2_i32(min((~u_input.b ^ countOneBits(u_input.b)) | vec2<i32>(abs(var_0.b), ~95325i), u_input.b), -u_input.b & vec2<i32>(5891i, 1i), vec2<i32>(-var_1.b, min(var_1.b ^ (i32(-1i) * -57727i), ~u_input.a)));
    var var_3 = Struct_1(~(~var_1.a), -2147483647i);
    return u_input.b.x;
}

fn func_4(arg_0: Struct_1, arg_1: i32) -> i32 {
    global0 = array<Struct_2, 6>();
    let var_0 = ~vec2<i32>(_wgslsmith_sub_i32(17385i, 0i), _wgslsmith_div_i32(arg_1 & select(arg_1, 6033i, false), countOneBits(_wgslsmith_div_i32(14727i, arg_1))));
    return -66789i;
}

fn func_2(arg_0: vec3<f32>) -> vec2<u32> {
    let var_0 = Struct_2(u_input.b.x, 0u);
    global0 = array<Struct_2, 6>();
    let var_1 = Struct_1(~var_0.b, func_4(Struct_1(~_wgslsmith_mod_u32(var_0.b, 1354u), func_1()), -(~func_3(-32163i, 30452u, vec2<bool>(true, false), Struct_2(2147483647i, 40430u)))));
    var var_2 = select(vec2<bool>(any(vec4<bool>(true, true, true, true)), true), select(vec2<bool>(any(vec4<bool>(false, false, true, true)), false), select(vec2<bool>(true, -51380i == var_0.a), select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false)), true), select(vec2<bool>(true, true), vec2<bool>(false, true), select(vec2<bool>(true, true), vec2<bool>(true, true), true))), !(_wgslsmith_f_op_f32(trunc(1773f)) <= _wgslsmith_f_op_f32(-519f + arg_0.x))), false);
    var_2 = select(!select(vec2<bool>(!var_2.x, true), !(!vec2<bool>(var_2.x, var_2.x)), false), !(!(!select(vec2<bool>(false, var_2.x), vec2<bool>(true, false), vec2<bool>(var_2.x, var_2.x)))), select(select(!select(vec2<bool>(var_2.x, var_2.x), vec2<bool>(true, var_2.x), vec2<bool>(true, var_2.x)), !vec2<bool>(var_2.x, false), select(vec2<bool>(false, false), select(vec2<bool>(false, var_2.x), vec2<bool>(false, true), var_2.x), select(vec2<bool>(var_2.x, var_2.x), vec2<bool>(var_2.x, true), var_2.x))), !(!select(vec2<bool>(false, true), vec2<bool>(true, var_2.x), vec2<bool>(false, true))), select(select(!vec2<bool>(var_2.x, var_2.x), vec2<bool>(false, var_2.x), true || var_2.x), vec2<bool>(var_2.x, all(vec3<bool>(var_2.x, var_2.x, var_2.x))), any(vec4<bool>(var_2.x, false, var_2.x, true)))));
    return vec2<u32>(1u, var_1.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = all(!select(vec4<bool>(true, true, any(vec4<bool>(false, false, true, true)), -18801i == u_input.b.x), vec4<bool>(true, all(vec4<bool>(true, true, false, true)), all(vec4<bool>(true, false, false, true)), true), vec4<bool>(select(false, true, false), any(vec4<bool>(false, true, true, true)), true, any(vec4<bool>(true, true, true, true)))));
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1f, 1f, 1f))));
    global0 = array<Struct_2, 6>();
    let var_2 = var_1;
    global0 = array<Struct_2, 6>();
    var var_3 = var_0;
    let var_4 = u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(1u, ~abs(1u), vec2<i32>(_wgslsmith_add_i32(_wgslsmith_mult_i32(firstLeadingBit(2147483647i), -41190i), 0i), min(1i, func_1())), ~countOneBits(func_2(vec3<f32>(-515f, var_2.x, var_2.x))), countOneBits(-(~abs(var_4))));
}


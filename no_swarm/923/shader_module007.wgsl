struct Struct_1 {
    a: vec3<bool>,
    b: u32,
    c: f32,
    d: i32,
    e: i32,
}

struct Struct_2 {
    a: i32,
    b: vec2<u32>,
    c: bool,
    d: vec2<u32>,
    e: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: u32,
}

struct Struct_4 {
    a: bool,
    b: Struct_3,
    c: Struct_3,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 32>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: f32) -> i32 {
    var var_0 = Struct_1(select(!select(vec3<bool>(false, false, true), select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(false, false, true)), vec3<bool>(true, false, false)), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), all(vec2<bool>(true, false))), true), global0[_wgslsmith_index_u32(~abs(~(global0[_wgslsmith_index_u32(1u, 32u)] >> (global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(22901u, 32u)], 32u)] % 32u))), 32u)], arg_0, _wgslsmith_dot_vec4_i32(min(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.c.x, u_input.c.x, u_input.b, 0i), vec4<i32>(1i, 1i, u_input.b, 1i)), firstTrailingBit(vec4<i32>(u_input.b, -1i, u_input.c.x, u_input.c.x))), max(vec4<i32>(2147483647i, u_input.b, u_input.a.x, u_input.a.x) & vec4<i32>(u_input.c.x, -31230i, 1i, u_input.c.x), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.c.x, 1i, 0i, u_input.c.x), vec4<i32>(-6138i, -2147483647i, u_input.a.x, u_input.a.x)))) ^ -2147483647i, _wgslsmith_mult_i32(-2147483647i, firstLeadingBit(~min(u_input.a.x, -2147483647i))));
    var var_1 = ~(-_wgslsmith_sub_i32(_wgslsmith_clamp_i32(536i, u_input.c.x, var_0.d), select(var_0.e, 1i, var_0.a.x))) | ~(0i | (~0i & select(u_input.a.x, 0i, false)));
    var_0 = Struct_1(!select(var_0.a, !vec3<bool>(var_0.a.x, var_0.a.x, var_0.a.x), !vec3<bool>(false, true, var_0.a.x)), 1u, 1000f, 19040i, var_0.e);
    let var_2 = Struct_2(_wgslsmith_div_i32(-var_0.e, u_input.b), _wgslsmith_mult_vec2_u32(vec2<u32>(max(min(var_0.b, 1u), global0[_wgslsmith_index_u32(_wgslsmith_div_u32(16123u, var_0.b), 32u)]), 12794u), ~firstLeadingBit(firstLeadingBit(vec2<u32>(1u, 2663u)))), true, vec2<u32>(~60400u, global0[_wgslsmith_index_u32((~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(40408u, 32u)], 32u)] | countOneBits(global0[_wgslsmith_index_u32(var_0.b, 32u)])) | firstLeadingBit(firstLeadingBit(4294967295u)), 32u)]), Struct_1(vec3<bool>(any(vec2<bool>(var_0.a.x, var_0.a.x)), any(var_0.a.xx), _wgslsmith_f_op_f32(f32(-1f) * -236f) != _wgslsmith_f_op_f32(round(arg_0))), var_0.b, 827f, var_0.e, var_0.d));
    global0 = array<u32, 32>();
    return 0i;
}

fn func_2(arg_0: Struct_2, arg_1: u32, arg_2: Struct_4) -> bool {
    global0 = array<u32, 32>();
    global0 = array<u32, 32>();
    let var_0 = Struct_4(_wgslsmith_sub_i32(u_input.a.x, func_3(-1619f)) >= firstTrailingBit(1i), Struct_3(arg_0.e.a.x, _wgslsmith_div_u32(_wgslsmith_div_u32(global0[_wgslsmith_index_u32(arg_0.e.b, 32u)], 4294967295u), ~1u)), Struct_3(arg_0.c, abs(reverseBits(_wgslsmith_sub_u32(arg_0.e.b, arg_0.b.x)))), arg_2.d);
    var var_1 = select(!arg_0.e.a, arg_0.e.a, !select(vec3<bool>(!arg_0.c, u_input.a.x <= -1997i, true), vec3<bool>(var_0.a, true, true), arg_2.a));
    global0 = array<u32, 32>();
    return false;
}

fn func_1(arg_0: vec2<bool>, arg_1: i32) -> vec2<bool> {
    global0 = array<u32, 32>();
    var var_0 = Struct_3(!all(vec2<bool>(true, func_2(Struct_2(-60115i, vec2<u32>(global0[_wgslsmith_index_u32(1u, 32u)], 53804u), arg_0.x, vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(13161u, 32u)], 32u)], 32u)], 45505u), Struct_1(vec3<bool>(false, arg_0.x, arg_0.x), global0[_wgslsmith_index_u32(1u, 32u)], -980f, -1i, 34172i)), global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 32u)], 32u)], Struct_4(true, Struct_3(arg_0.x, 17875u), Struct_3(true, 4294967295u), vec3<f32>(274f, 278f, 1283f))))), firstLeadingBit(countOneBits(1u)));
    let var_1 = ~0u;
    var var_2 = vec2<bool>(any(vec2<bool>(!(!arg_0.x), countOneBits(8056i) >= ~arg_1)), countOneBits(~_wgslsmith_clamp_u32(var_1, 0u, global0[_wgslsmith_index_u32(var_0.b, 32u)])) <= ~(global0[_wgslsmith_index_u32(var_0.b, 32u)] >> (4294967295u % 32u)));
    let var_3 = var_2.x;
    return !arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(select(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, all(vec2<bool>(true, true)))), !select(vec2<bool>(true, true), vec2<bool>(false, false), true), true), ~u_input.c.x);
    let var_1 = vec4<u32>(~global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(firstTrailingBit(4294967295u), global0[_wgslsmith_index_u32(0u, 32u)] ^ 1u, firstLeadingBit(0u)), ~(vec3<u32>(4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 32u)], 32u)], 32u)], global0[_wgslsmith_index_u32(4294967295u, 32u)]) ^ vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 32u)], 32u)], global0[_wgslsmith_index_u32(3633u, 32u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4424u, 32u)], 32u)]))), 32u)], 14167u, 21947u, countOneBits(abs(min(select(1u, 19771u, true), 1u))));
    var_0 = !select(!(!(!vec2<bool>(var_0.x, true))), select(func_1(vec2<bool>(var_0.x, true), 1i), vec2<bool>(var_0.x, var_0.x), false), !select(vec2<bool>(var_0.x, var_0.x), !vec2<bool>(true, var_0.x), func_2(Struct_2(u_input.b, var_1.zx, var_0.x, vec2<u32>(0u, var_1.x), Struct_1(vec3<bool>(true, var_0.x, false), var_1.x, -1404f, u_input.c.x, u_input.c.x)), 8419u, Struct_4(var_0.x, Struct_3(var_0.x, 4294967295u), Struct_3(false, 10064u), vec3<f32>(144f, 1094f, 747f)))));
    var var_2 = u_input.c.zxx;
    var_0 = !vec2<bool>(all(select(vec3<bool>(false, var_0.x, var_0.x), vec3<bool>(false, true, var_0.x), true)) | var_0.x, any(!select(vec2<bool>(true, var_0.x), vec2<bool>(var_0.x, var_0.x), vec2<bool>(var_0.x, false))));
    let x = u_input.a;
    s_output = StorageBuffer(i32(-1i) * -1i, -abs(u_input.a ^ u_input.c));
}


struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<u32>,
}

struct Struct_3 {
    a: u32,
    b: f32,
    c: i32,
}

struct Struct_4 {
    a: vec3<i32>,
    b: vec2<f32>,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec2<i32>,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(33685u, 70561u);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_2(arg_0: i32, arg_1: bool, arg_2: Struct_2) -> bool {
    let var_0 = 772f;
    global0 = _wgslsmith_div_vec2_u32(~reverseBits(~_wgslsmith_mult_vec2_u32(arg_2.c.xy, vec2<u32>(global0.x, 11320u))), arg_2.a.a);
    let var_1 = select(~(vec4<u32>(~0u, 0u, ~1u, 4294967295u) ^ _wgslsmith_clamp_vec4_u32(vec4<u32>(0u, arg_2.b.a.x, 4294967295u, 34534u), countOneBits(vec4<u32>(4294967295u, 23262u, arg_2.b.a.x, 26843u)), max(vec4<u32>(29943u, global0.x, arg_2.b.a.x, 0u), vec4<u32>(global0.x, arg_2.b.a.x, 47447u, global0.x)))), vec4<u32>(~64173u, 0u, global0.x, global0.x), !select(!select(vec4<bool>(arg_1, true, true, arg_1), vec4<bool>(false, false, arg_1, true), false), !vec4<bool>(arg_1, arg_1, arg_1, arg_1), true));
    var var_2 = Struct_3(var_1.x << (global0.x % 32u), _wgslsmith_f_op_f32(sign(-302f)), _wgslsmith_add_i32(u_input.a & ((-52369i ^ arg_0) | (u_input.d << (1u % 32u))), 5559i));
    let var_3 = arg_1;
    return false;
}

fn func_1() -> u32 {
    let var_0 = func_2(-u_input.c, false, Struct_2(Struct_1(select(~vec2<u32>(global0.x, 1u), ~vec2<u32>(42023u, global0.x), true)), Struct_1(_wgslsmith_add_vec2_u32(vec2<u32>(global0.x, 1u), vec2<u32>(global0.x, 1u)) | vec2<u32>(4294967295u, global0.x)), ~_wgslsmith_mult_vec3_u32(~vec3<u32>(global0.x, 1u, global0.x), select(vec3<u32>(1u, 0u, global0.x), vec3<u32>(global0.x, 1u, 59001u), false))));
    global0 = ~_wgslsmith_add_vec2_u32(vec2<u32>(abs(~0u), global0.x), ~(~vec2<u32>(global0.x, global0.x)));
    global0 = _wgslsmith_sub_vec2_u32(~vec2<u32>(~firstTrailingBit(global0.x), countOneBits(1u)), min(_wgslsmith_mult_vec2_u32(vec2<u32>(17828u, ~global0.x), ~vec2<u32>(global0.x, 1u)), vec2<u32>(5632u, firstTrailingBit(~global0.x))));
    return ~_wgslsmith_add_u32(_wgslsmith_clamp_u32(global0.x, _wgslsmith_mult_u32(~global0.x, ~8371u), global0.x), min(79833u, global0.x));
}

fn func_3(arg_0: u32, arg_1: Struct_2, arg_2: f32) -> u32 {
    global0 = max(~arg_1.a.a, vec2<u32>(firstTrailingBit(~(~1375u)), _wgslsmith_add_u32(0u, 9438u)));
    var var_0 = 4294967295u;
    var_0 = 0u;
    var var_1 = Struct_2(Struct_1(vec2<u32>(71559u, max(54808u, ~arg_1.c.x))), arg_1.a, arg_1.c);
    var_1 = Struct_2(arg_1.a, Struct_1(vec2<u32>(global0.x, _wgslsmith_mult_u32(1u, ~arg_1.a.a.x))), var_1.c);
    return var_1.a.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = ~vec2<u32>(func_1(), select(global0.x, func_3(global0.x, Struct_2(Struct_1(vec2<u32>(global0.x, global0.x)), Struct_1(vec2<u32>(global0.x, global0.x)), vec3<u32>(0u, 4294967295u, 16861u)), 1122f), select(false, true, true)));
    let x = u_input.a;
    s_output = StorageBuffer(18745i, _wgslsmith_mod_i32(-_wgslsmith_mult_i32(~(-1i), abs(u_input.d)), _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(max(vec4<i32>(27248i, -21633i, u_input.b.x, u_input.c), vec4<i32>(-1i, -22517i, 2147483647i, u_input.b.x)), vec4<i32>(u_input.a, u_input.b.x, -32223i, u_input.d) ^ vec4<i32>(u_input.a, u_input.d, -24751i, u_input.c)), ~_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.d, 0i, u_input.c, 2147483647i), vec4<i32>(-2147483647i, u_input.c, u_input.d, u_input.d)))), u_input.b.xy, min(u_input.d, u_input.d) << (4294967295u % 32u), _wgslsmith_f_op_f32(1f + 2607f));
}


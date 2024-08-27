struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct Struct_3 {
    a: vec3<bool>,
    b: u32,
    c: vec4<f32>,
    d: Struct_1,
}

struct Struct_4 {
    a: vec2<bool>,
    b: i32,
    c: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: i32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: Struct_3 = Struct_3(vec3<bool>(false, false, true), 38237u, vec4<f32>(-962f, 1000f, 839f, -969f), Struct_1(vec4<bool>(false, true, false, true)));

var<private> global2: array<vec3<u32>, 32> = array<vec3<u32>, 32>(vec3<u32>(0u, 30402u, 0u), vec3<u32>(0u, 40025u, 32482u), vec3<u32>(29851u, 17624u, 1u), vec3<u32>(53492u, 36667u, 4294967295u), vec3<u32>(508u, 13529u, 19546u), vec3<u32>(79998u, 49261u, 49074u), vec3<u32>(103049u, 78538u, 9910u), vec3<u32>(32344u, 0u, 42613u), vec3<u32>(48482u, 4294967295u, 4294967295u), vec3<u32>(75000u, 4294967295u, 17371u), vec3<u32>(0u, 29480u, 4294967295u), vec3<u32>(67445u, 1u, 4294967295u), vec3<u32>(1u, 4294967295u, 55369u), vec3<u32>(1u, 43782u, 35168u), vec3<u32>(18651u, 19815u, 18854u), vec3<u32>(23804u, 0u, 0u), vec3<u32>(85648u, 79332u, 33017u), vec3<u32>(4294967295u, 0u, 81161u), vec3<u32>(2611u, 0u, 1u), vec3<u32>(70108u, 4294967295u, 0u), vec3<u32>(61259u, 16528u, 7048u), vec3<u32>(0u, 1u, 59006u), vec3<u32>(4294967295u, 1u, 17979u), vec3<u32>(54706u, 0u, 0u), vec3<u32>(4294967295u, 1u, 15665u), vec3<u32>(26639u, 0u, 53562u), vec3<u32>(25154u, 61451u, 6934u), vec3<u32>(4294967295u, 1u, 16986u), vec3<u32>(1u, 3475u, 1u), vec3<u32>(0u, 0u, 66076u), vec3<u32>(5033u, 1u, 1u), vec3<u32>(33396u, 61903u, 42103u));

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_4) -> bool {
    var var_0 = abs(global1.b);
    var_0 = firstTrailingBit(1u);
    global1 = Struct_3(global1.d.a.xzw, firstTrailingBit(abs(~1u) << (_wgslsmith_clamp_u32(global1.b, select(42287u, 41288u, false), global1.b) % 32u)), global1.c, global1.d);
    global2 = array<vec3<u32>, 32>();
    var var_1 = max(select(firstTrailingBit(~(~vec2<u32>(global1.b, 4294967295u))), min(~vec2<u32>(77879u, global1.b), _wgslsmith_sub_vec2_u32(vec2<u32>(55187u, global1.b), vec2<u32>(57044u, global1.b))) << (vec2<u32>(~global1.b, ~1u) % vec2<u32>(32u)), select(select(global1.a.xx, vec2<bool>(arg_0.x, true), !arg_1.a.x), select(vec2<bool>(false, global1.d.a.x), vec2<bool>(arg_0.x, arg_0.x), false), any(arg_1.a))), countOneBits(_wgslsmith_mult_vec2_u32((vec2<u32>(0u, 38422u) ^ vec2<u32>(global1.b, 4294967295u)) ^ countOneBits(vec2<u32>(1u, 62286u)), vec2<u32>(1u, global1.b ^ 0u))));
    return false;
}

fn func_2(arg_0: u32) -> vec3<bool> {
    global0 = false;
    let var_0 = _wgslsmith_f_op_f32(-global1.c.x);
    var var_1 = all(vec2<bool>(_wgslsmith_sub_i32(u_input.b, i32(-1i) * -2147483647i) != firstLeadingBit(-22475i), func_3(vec2<bool>(arg_0 > arg_0, false), Struct_4(vec2<bool>(true, true), -1i, _wgslsmith_f_op_f32(-var_0)))));
    let var_2 = global1.d;
    let var_3 = vec3<f32>(-326f, 1f, _wgslsmith_f_op_f32(-738f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1233f))));
    return vec3<bool>(global1.d.a.x, false, var_2.a.x);
}

fn func_1(arg_0: vec4<f32>, arg_1: vec4<u32>) -> vec4<u32> {
    var var_0 = vec4<f32>(1604f, -1025f, -1469f, global1.c.x);
    let var_1 = global1.b;
    var var_2 = Struct_3(select(!global1.a, func_2(arg_1.x), func_2(_wgslsmith_add_u32(global1.b, 1u))), ~4636u, _wgslsmith_f_op_vec4_f32(exp2(global1.c)), global1.d);
    global2 = array<vec3<u32>, 32>();
    let var_3 = -1616f;
    return vec4<u32>(~reverseBits(global1.b), _wgslsmith_mult_u32(max(0u, ~global1.b), abs(firstLeadingBit(var_2.b))), arg_1.x, var_2.b);
}

fn func_4(arg_0: i32, arg_1: Struct_4, arg_2: vec4<u32>) -> Struct_1 {
    global0 = ~1u < min(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_2.x, 0u), arg_2.wz), _wgslsmith_div_u32(global1.b, ~(arg_2.x << (29894u % 32u))));
    var var_0 = Struct_2(vec2<u32>(~global1.b, ~arg_2.x));
    let var_1 = global1.c.x;
    global2 = array<vec3<u32>, 32>();
    let var_2 = global1.b;
    return Struct_1(!(!select(!global1.d.a, !global1.d.a, true)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1.c.x;
    let var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global1.c))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global1.c + vec4<f32>(_wgslsmith_f_op_f32(-global1.c.x), _wgslsmith_f_op_f32(trunc(global1.c.x)), 292f, 1949f))));
    var var_2 = _wgslsmith_f_op_vec4_f32(ceil(var_1));
    let var_3 = reverseBits(vec2<i32>(-_wgslsmith_sub_i32(-1i, -2147483647i), -35716i));
    global1 = Struct_3(global1.d.a.zzx, _wgslsmith_sub_u32(~global1.b, select(~4294967295u, 44904u, select(any(global1.d.a), all(global1.d.a), var_3.x > 54197i))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1851f, -910f, 124f, var_2.x) * _wgslsmith_f_op_vec4_f32(max(global1.c, vec4<f32>(-933f, -1688f, global1.c.x, global1.c.x)))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(global1.c * var_1)))))), func_4(-22431i, Struct_4(vec2<bool>(global1.a.x, true), u_input.a.x, _wgslsmith_f_op_f32(-global1.c.x)), select(func_1(var_1, vec4<u32>(global1.b, global1.b, global1.b, global1.b)) & firstTrailingBit(vec4<u32>(global1.b, global1.b, global1.b, global1.b)), _wgslsmith_mult_vec4_u32(func_1(vec4<f32>(global1.c.x, global1.c.x, 772f, -369f), vec4<u32>(13455u, global1.b, 36069u, global1.b)), ~vec4<u32>(global1.b, global1.b, 0u, global1.b)), any(!vec3<bool>(global1.a.x, global1.a.x, global1.a.x)))));
    let var_4 = vec2<u32>(abs(global1.b), ~_wgslsmith_sub_u32(global1.b, ~(global1.b << (global1.b % 32u))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-global1.c.x), _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(abs(vec4<i32>(35802i, u_input.a.x, var_3.x, u_input.a.x)), select(vec4<i32>(10983i, -910i, var_3.x, -62641i) & vec4<i32>(u_input.a.x, var_3.x, 71809i, u_input.a.x), _wgslsmith_sub_vec4_i32(vec4<i32>(var_3.x, var_3.x, var_3.x, u_input.a.x), vec4<i32>(var_3.x, var_3.x, u_input.b, var_3.x)), global1.a.x)), ~(~vec4<i32>(var_3.x, u_input.a.x, var_3.x, -2576i))), u_input.a.x, var_1.wzz);
}


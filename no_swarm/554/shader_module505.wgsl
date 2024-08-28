struct Struct_1 {
    a: f32,
    b: vec4<i32>,
}

struct Struct_2 {
    a: vec4<u32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: bool,
    b: Struct_1,
}

struct Struct_5 {
    a: vec2<bool>,
    b: f32,
    c: Struct_4,
    d: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 8>;

var<private> global1: vec4<i32> = vec4<i32>(1i, 1579i, 1i, -5879i);

var<private> global2: vec4<u32> = vec4<u32>(0u, 1u, 4294967295u, 4294967295u);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_1(arg_0: i32, arg_1: f32, arg_2: Struct_1, arg_3: u32) -> Struct_2 {
    global2 = ~(~_wgslsmith_add_vec4_u32(global0[_wgslsmith_index_u32(arg_3, 8u)], max(reverseBits(vec4<u32>(global2.x, global2.x, 8312u, global2.x)), vec4<u32>(u_input.a.x, u_input.a.x, 10323u, 0u))));
    var var_0 = _wgslsmith_dot_vec2_i32(countOneBits(~vec2<i32>(-arg_2.b.x, arg_0)), select(vec2<i32>(-1i) * -arg_2.b.zx, (~vec2<i32>(-33605i, -1i) ^ vec2<i32>(global1.x, 45680i)) | vec2<i32>(19405i, abs(global1.x)), vec2<bool>(!(29314u < global2.x), any(vec3<bool>(true, true, true)))));
    var var_1 = 4294967295u;
    var_0 = 8293i;
    let var_2 = -199f;
    return Struct_2(vec4<u32>(global2.x, 4294967295u, global2.x, select(61815u, ~(~0u), true)));
}

fn func_3(arg_0: vec3<f32>, arg_1: bool, arg_2: vec3<bool>) -> u32 {
    global2 = max(_wgslsmith_mult_vec4_u32(abs(vec4<u32>(max(global2.x, 1u), func_1(global1.x, arg_0.x, Struct_1(arg_0.x, vec4<i32>(-1i, global1.x, 0i, 17987i)), u_input.a.x).a.x, _wgslsmith_div_u32(4294967295u, u_input.a.x), ~global2.x)), firstTrailingBit(firstLeadingBit(vec4<u32>(u_input.a.x, 84829u, 0u, 4294967295u)))), vec4<u32>(~(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.a.x, 1u, global2.x), vec4<u32>(global2.x, u_input.a.x, 44575u, 4294967295u)) ^ ~global2.x), 8643u, global2.x, 5410u));
    return 0u;
}

fn func_2(arg_0: i32, arg_1: vec4<u32>, arg_2: Struct_5) -> vec4<u32> {
    global2 = ~vec4<u32>(u_input.a.x, func_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.b, -964f, 140f)), arg_2.c.a || arg_2.a.x, !vec3<bool>(arg_2.a.x, true, arg_2.a.x)), u_input.a.x, global2.x) | vec4<u32>(~(~firstTrailingBit(0u)), _wgslsmith_mult_u32(global2.x, 0u) << (abs(_wgslsmith_sub_u32(u_input.a.x, 1842u)) % 32u), select(~(~1671u), 1u, all(!vec4<bool>(true, arg_2.a.x, false, arg_2.c.a))), ~abs(_wgslsmith_mod_u32(global2.x, 4294967295u)));
    var var_0 = 528f;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(977f * _wgslsmith_f_op_f32(-arg_2.b)));
    global1 = vec4<i32>(-_wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(26458i, 354i) >> (global2.zy % vec2<u32>(32u)), reverseBits(vec2<i32>(-11734i, global1.x))), -(vec2<i32>(8859i, arg_2.c.b.b.x) ^ arg_2.c.b.b.xy)), -42407i, _wgslsmith_mult_i32(i32(-1i) * -24803i, i32(-1i) * -19422i), i32(-1i) * -_wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(arg_2.c.b.b.yx, vec2<i32>(global1.x, arg_0)), _wgslsmith_add_vec2_i32(arg_2.c.b.b.yx, vec2<i32>(33295i, -67022i))));
    let var_2 = vec2<f32>(-120f, 1f);
    return vec4<u32>(~(~(~abs(global2.x))), ~abs(4294967295u), arg_1.x, arg_1.x & arg_1.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    let var_1 = vec3<u32>(0u, ~global2.x | abs(abs(u_input.a.x)), u_input.a.x);
    let var_2 = _wgslsmith_mod_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(~(-58936i), 1i, _wgslsmith_clamp_i32(_wgslsmith_mod_i32(global1.x, global1.x), _wgslsmith_clamp_i32(global1.x, global1.x, global1.x), ~(-2147483647i)), -2147483647i), _wgslsmith_add_vec4_i32((vec4<i32>(global1.x, 0i, global1.x, global1.x) | vec4<i32>(1i, global1.x, global1.x, -5393i)) ^ _wgslsmith_clamp_vec4_i32(vec4<i32>(0i, global1.x, global1.x, global1.x), vec4<i32>(-2147483647i, 88220i, 2147483647i, -16446i), vec4<i32>(global1.x, global1.x, 17622i, 2257i)), ~max(vec4<i32>(global1.x, global1.x, 40157i, global1.x), vec4<i32>(global1.x, global1.x, 39066i, global1.x))), vec4<i32>(_wgslsmith_clamp_i32(34060i, -38636i, -global1.x), 6903i, -abs(-6312i), ~(-1i))), -vec4<i32>(_wgslsmith_sub_i32(_wgslsmith_mod_i32(global1.x, -2130i), _wgslsmith_clamp_i32(4765i, global1.x, -29774i)), 0i, global1.x, -1i));
    let var_3 = ~(vec4<u32>(var_1.x << (~1u % 32u), 18799u | min(u_input.a.x, 4294967295u), (0u >> (u_input.a.x % 32u)) ^ (1u << (global2.x % 32u)), 0u) << (global0[_wgslsmith_index_u32(global2.x, 8u)] % vec4<u32>(32u)));
    var var_4 = Struct_3(func_1(21773i, 1753f, Struct_1(_wgslsmith_f_op_f32(996f * -650f), vec4<i32>(0i, _wgslsmith_dot_vec3_i32(vec3<i32>(var_2.x, 2147483647i, 20786i), global1.zyz), ~global1.x, global1.x << (var_1.x % 32u))), var_3.x));
    var var_5 = var_2.xww;
    var_5 = countOneBits(-global1.wyx);
    let var_6 = ~(vec3<i32>(var_2.x, -1i, -50137i) << (u_input.a % vec3<u32>(32u)));
    global2 = ~_wgslsmith_mult_vec4_u32(func_2(var_5.x, ~(global0[_wgslsmith_index_u32(global2.x, 8u)] ^ var_4.a.a), Struct_5(vec2<bool>(true, true), _wgslsmith_f_op_f32(round(-1945f)), Struct_4(false, Struct_1(552f, var_2)), _wgslsmith_f_op_f32(f32(-1f) * -626f))), var_4.a.a);
    let x = u_input.a;
    s_output = StorageBuffer(select(func_1(~_wgslsmith_dot_vec3_i32(vec3<i32>(9811i, var_5.x, 2147483647i), vec3<i32>(var_2.x, -24594i, 39167i)), _wgslsmith_div_f32(-1312f, _wgslsmith_f_op_f32(662f - 1249f)), Struct_1(_wgslsmith_f_op_f32(round(-1875f)), _wgslsmith_mod_vec4_i32(vec4<i32>(global1.x, 21322i, var_6.x, global1.x), var_2)), 33391u >> (_wgslsmith_div_u32(23976u, var_4.a.a.x) % 32u)).a.x, func_3(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1832f, 577f, -324f), vec3<f32>(-404f, 308f, -1342f), vec3<bool>(var_0, var_0, false))), _wgslsmith_div_vec3_f32(vec3<f32>(-2643f, 536f, 795f), vec3<f32>(-767f, 1000f, -628f))), true, !select(vec3<bool>(var_0, false, true), vec3<bool>(var_0, var_0, false), vec3<bool>(false, var_0, var_0))), true));
}


struct Struct_1 {
    a: vec2<i32>,
    b: vec4<f32>,
    c: u32,
    d: vec3<u32>,
    e: u32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_2,
    d: Struct_1,
    e: f32,
}

struct Struct_4 {
    a: bool,
    b: Struct_1,
    c: vec3<i32>,
    d: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(false, Struct_1(vec2<i32>(1i, 1i), vec4<f32>(-1874f, 602f, 582f, 1097f), 0u, vec3<u32>(4294967295u, 103593u, 0u), 85290u), vec3<i32>(-35558i, -44567i, -1i), 2147483647i);

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3() -> vec2<i32> {
    let var_0 = select(global0.d, u_input.c, !any(vec2<bool>(true, true)));
    let var_1 = Struct_2(vec2<bool>(any(vec3<bool>(!global0.a, global0.a | global0.a, !global0.a)), false), Struct_1(-countOneBits(~u_input.a.yx), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(global0.b.b, vec4<f32>(612f, global0.b.b.x, global0.b.b.x, global0.b.b.x)) - global0.b.b))), _wgslsmith_dot_vec3_u32(u_input.b, global0.b.d), reverseBits(firstTrailingBit(abs(u_input.b))), ~u_input.b.x), global0.b, global0.b, global0.b);
    var var_2 = firstLeadingBit(~vec2<i32>(u_input.a.x, ~0i));
    var var_3 = Struct_1(~var_1.d.a, global0.b.b, var_1.e.e, ~u_input.b, countOneBits(42189u));
    let var_4 = countOneBits(_wgslsmith_add_i32(1i, select(-select(var_1.b.a.x, u_input.a.x, var_1.a.x), firstTrailingBit(-11498i) ^ _wgslsmith_mod_i32(var_0, global0.b.a.x), all(select(vec4<bool>(false, var_1.a.x, var_1.a.x, false), vec4<bool>(global0.a, global0.a, false, global0.a), true)))));
    return vec2<i32>(var_2.x, 1i);
}

fn func_2(arg_0: Struct_4, arg_1: Struct_4, arg_2: Struct_4, arg_3: u32) -> vec3<bool> {
    let var_0 = vec2<bool>(-62372i >= firstLeadingBit(i32(-1i) * -arg_0.b.a.x), true);
    global0 = Struct_4(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(global0.b.b.x, _wgslsmith_f_op_f32(-569f * -1691f)), _wgslsmith_f_op_f32(min(arg_1.b.b.x, -624f)))) < arg_1.b.b.x, arg_0.b, select(~(~vec3<i32>(u_input.c, arg_0.d, global0.c.x)) << (vec3<u32>(arg_2.b.e >> (arg_2.b.c % 32u), _wgslsmith_mod_u32(u_input.b.x, arg_2.b.d.x), _wgslsmith_mult_u32(34048u, global0.b.c)) % vec3<u32>(32u)), vec3<i32>(-8929i, arg_0.b.a.x, 1i >> (_wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.b.x, 0u, 1u), vec4<u32>(28362u, arg_3, 0u, arg_1.b.c)) % 32u)), !arg_0.a), ~(-8489i));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global0.b.b.x)) + _wgslsmith_f_op_f32(trunc(arg_0.b.b.x))));
    let var_2 = func_3();
    var var_3 = _wgslsmith_f_op_f32(f32(-1f) * -170f);
    return vec3<bool>(!(!arg_2.a), !(all(select(vec2<bool>(var_0.x, var_0.x), vec2<bool>(true, true), var_0)) || select(arg_1.a, all(vec4<bool>(false, arg_2.a, true, arg_1.a)), var_2.x >= -27099i)), global0.a);
}

fn func_4(arg_0: vec3<bool>) -> i32 {
    let var_0 = ~(_wgslsmith_div_vec2_i32(global0.c.zx, -max(vec2<i32>(u_input.c, 18056i), global0.b.a)) ^ global0.b.a);
    var var_1 = _wgslsmith_dot_vec2_i32(vec2<i32>(1i, _wgslsmith_div_i32(-54742i, _wgslsmith_dot_vec2_i32(global0.c.xy, -vec2<i32>(-2147483647i, var_0.x)))), firstTrailingBit(vec2<i32>(_wgslsmith_mult_i32(u_input.c, 1i), -32172i) | (select(vec2<i32>(var_0.x, 2147483647i), var_0, arg_0.yx) & countOneBits(u_input.a.ww))));
    let var_2 = abs(~(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.b.x, u_input.b.x) >> (u_input.b.xz % vec2<u32>(32u)), vec2<u32>(84892u, u_input.b.x)) & ~vec2<u32>(1u, 0u)));
    var var_3 = !global0.a;
    var var_4 = false;
    return _wgslsmith_clamp_i32(var_0.x, func_3().x, min(-15468i, u_input.c));
}

fn func_1() -> i32 {
    return _wgslsmith_clamp_i32(abs(_wgslsmith_sub_i32(-(~0i), func_4(func_2(Struct_4(global0.a, Struct_1(vec2<i32>(1i, global0.c.x), vec4<f32>(1000f, 1000f, 1093f, 1159f), u_input.b.x, vec3<u32>(33450u, 1u, 4993u), 34399u), global0.c, global0.d), Struct_4(global0.a, Struct_1(u_input.a.zz, global0.b.b, 38368u, u_input.b, 4294967295u), u_input.a.wyz, u_input.c), Struct_4(global0.a, Struct_1(vec2<i32>(u_input.a.x, u_input.c), vec4<f32>(-986f, global0.b.b.x, global0.b.b.x, -247f), u_input.b.x, u_input.b, u_input.b.x), u_input.a.zwx, u_input.a.x), global0.b.d.x)))), -u_input.c, u_input.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_4(!(-2147483647i < u_input.c), Struct_1(firstLeadingBit(abs(global0.b.a)) & u_input.a.wy, _wgslsmith_f_op_vec4_f32(-global0.b.b), global0.b.c, _wgslsmith_add_vec3_u32(min(max(vec3<u32>(82206u, 0u, 1u), u_input.b), firstTrailingBit(global0.b.d)), u_input.b), _wgslsmith_dot_vec3_u32(abs(u_input.b << (global0.b.d % vec3<u32>(32u))), _wgslsmith_mult_vec3_u32(~vec3<u32>(global0.b.d.x, global0.b.c, 0u), ~vec3<u32>(59834u, global0.b.d.x, 36170u)))), _wgslsmith_clamp_vec3_i32(vec3<i32>(abs(1i), u_input.c, 1i), u_input.a.ywy, vec3<i32>(u_input.c, _wgslsmith_add_i32(~u_input.a.x, 8835i >> (0u % 32u)), -global0.c.x)), func_1() | 1i);
    global0 = Struct_4(func_2(Struct_4(global0.a, global0.b, (vec3<i32>(-2147483647i, 0i, 8236i) ^ vec3<i32>(global0.d, global0.c.x, global0.d)) | vec3<i32>(u_input.a.x, global0.b.a.x, -20226i), _wgslsmith_clamp_i32(1i, 1i, ~(-12122i))), Struct_4(all(vec4<bool>(true, true, true, true)), Struct_1(min(vec2<i32>(0i, u_input.a.x), vec2<i32>(global0.c.x, u_input.c)), global0.b.b, u_input.b.x, select(u_input.b, vec3<u32>(3601u, global0.b.d.x, 1u), vec3<bool>(true, false, true)), countOneBits(27454u)), max(firstLeadingBit(vec3<i32>(u_input.a.x, -1i, 26055i)), ~global0.c), func_4(vec3<bool>(true, true, global0.a)) | -u_input.a.x), Struct_4(!(!global0.a), global0.b, abs(reverseBits(vec3<i32>(global0.d, 40619i, 149i))), countOneBits(_wgslsmith_add_i32(u_input.a.x, global0.d))), u_input.b.x).x, Struct_1(abs(vec2<i32>(1i, 1i)), global0.b.b, firstLeadingBit(global0.b.c), ~(~u_input.b), _wgslsmith_sub_u32(_wgslsmith_clamp_u32(~u_input.b.x, ~global0.b.e, 44565u), u_input.b.x)), vec3<i32>(countOneBits(2147483647i), 5218i, -19754i), -23904i);
    let var_0 = Struct_2(!vec2<bool>(true, any(!vec3<bool>(true, false, global0.a))), Struct_1(vec2<i32>(global0.c.x, -2147483647i) | _wgslsmith_add_vec2_i32(global0.b.a, u_input.a.xw), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(abs(global0.b.b))))), ~_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.b.x, 73377u), u_input.b.yz, vec2<u32>(global0.b.e, 1u)), u_input.b.yy), reverseBits(~_wgslsmith_mod_vec3_u32(vec3<u32>(global0.b.c, u_input.b.x, global0.b.c), vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x))), abs(15543u)), global0.b, global0.b, global0.b);
    let var_1 = Struct_3(Struct_1(global0.b.a, _wgslsmith_f_op_vec4_f32(-global0.b.b), u_input.b.x, _wgslsmith_clamp_vec3_u32(vec3<u32>(select(u_input.b.x, u_input.b.x, false), 1u, ~35305u), ~vec3<u32>(var_0.e.c, var_0.c.d.x, 100265u), u_input.b ^ ~vec3<u32>(1u, u_input.b.x, u_input.b.x)), u_input.b.x), var_0, Struct_2(select(func_2(Struct_4(false, Struct_1(global0.b.a, vec4<f32>(-669f, -357f, var_0.d.b.x, var_0.d.b.x), 4294967295u, global0.b.d, global0.b.d.x), u_input.a.wwy, var_0.c.a.x), Struct_4(var_0.a.x, global0.b, vec3<i32>(global0.c.x, var_0.b.a.x, var_0.b.a.x), 20794i), Struct_4(var_0.a.x, Struct_1(vec2<i32>(14231i, global0.d), var_0.c.b, u_input.b.x, u_input.b, var_0.d.c), global0.c, var_0.e.a.x), u_input.b.x).zx, var_0.a, false), Struct_1(vec2<i32>(var_0.c.a.x, var_0.d.a.x) << (~u_input.b.zz % vec2<u32>(32u)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b.b.x, global0.b.b.x, -1000f, -300f) - vec4<f32>(-1876f, -2192f, global0.b.b.x, var_0.b.b.x)), _wgslsmith_f_op_vec4_f32(global0.b.b * vec4<f32>(global0.b.b.x, var_0.b.b.x, 445f, -1245f))), var_0.b.e, var_0.c.d, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, 80275u, 0u) | global0.b.d, global0.b.d)), Struct_1(vec2<i32>(_wgslsmith_div_i32(-2147483647i, global0.d), -32389i), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.b.b.x, -1438f, -1223f, global0.b.b.x) - vec4<f32>(global0.b.b.x, -2506f, 513f, -2520f)), var_0.b.b), _wgslsmith_dot_vec3_u32(global0.b.d, ~u_input.b), ~u_input.b, ~80801u ^ _wgslsmith_mod_u32(global0.b.d.x, global0.b.c)), Struct_1(~abs(global0.b.a), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2393f), -396f, _wgslsmith_f_op_f32(max(-1000f, 244f)), _wgslsmith_f_op_f32(floor(var_0.b.b.x))), ~29301u, abs(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.b.x, var_0.c.c, global0.b.e), u_input.b, global0.b.d)), u_input.b.x), var_0.d), var_0.e, 1074f);
    var var_2 = Struct_3(Struct_1(global0.c.xy, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(1016f, var_1.c.e.b.x, -969f, var_0.e.b.x), _wgslsmith_f_op_vec4_f32(var_0.e.b + vec4<f32>(var_1.c.b.b.x, 746f, 396f, 1222f))))), u_input.b.x, vec3<u32>(20669u, 3901u, global0.b.d.x), ~45408u >> (global0.b.c % 32u)), Struct_2(vec2<bool>(true, _wgslsmith_sub_u32(4294967295u, global0.b.c) <= _wgslsmith_clamp_u32(4294967295u, u_input.b.x, var_0.c.c)), Struct_1(global0.b.a | abs(vec2<i32>(u_input.c, 41499i)), vec4<f32>(_wgslsmith_f_op_f32(var_1.e - var_1.a.b.x), global0.b.b.x, global0.b.b.x, 897f), 4294967295u, _wgslsmith_mult_vec3_u32(~vec3<u32>(global0.b.e, var_1.b.c.d.x, 0u), var_1.b.c.d), 7345u), var_0.e, Struct_1(max(abs(vec2<i32>(var_1.d.a.x, 13079i)), ~var_0.c.a), vec4<f32>(_wgslsmith_f_op_f32(floor(-1405f)), _wgslsmith_f_op_f32(trunc(-1000f)), _wgslsmith_f_op_f32(ceil(1000f)), _wgslsmith_f_op_f32(step(var_1.e, -163f))), reverseBits(_wgslsmith_dot_vec2_u32(global0.b.d.yx, vec2<u32>(4294967295u, u_input.b.x))), ~abs(var_1.d.d), 48445u), Struct_1(-vec2<i32>(8699i, 54823i), vec4<f32>(_wgslsmith_f_op_f32(-1026f - var_1.b.c.b.x), -191f, 1690f, var_0.e.b.x), ~firstTrailingBit(75583u), ~abs(global0.b.d), 1438u)), Struct_2(vec2<bool>(global0.a, !(!var_1.b.a.x)), Struct_1(vec2<i32>(1i, 33067i), global0.b.b, ~global0.b.e, _wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, 4294967295u, var_0.b.e), _wgslsmith_sub_vec3_u32(vec3<u32>(34923u, var_0.e.e, 875u), global0.b.d)), 1u), var_0.e, global0.b, global0.b), Struct_1(global0.c.xz, global0.b.b, _wgslsmith_sub_u32(~abs(4294967295u), var_0.c.d.x), (~vec3<u32>(global0.b.e, u_input.b.x, var_1.b.b.e) & (vec3<u32>(global0.b.d.x, var_0.d.d.x, 74953u) | vec3<u32>(global0.b.c, 1u, 74306u))) << (vec3<u32>(~4294967295u, u_input.b.x ^ 75808u, 4294967295u) % vec3<u32>(32u)), max(23051u, 1u)), -2051f);
    var var_3 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(global0.b.b.x, _wgslsmith_mod_i32(1i, var_2.c.c.a.x));
}


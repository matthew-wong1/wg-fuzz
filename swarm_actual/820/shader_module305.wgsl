struct Struct_1 {
    a: vec3<f32>,
    b: i32,
    c: vec4<i32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: i32,
    c: u32,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: vec4<f32>,
    c: i32,
    d: u32,
    e: vec2<u32>,
}

struct Struct_5 {
    a: f32,
    b: Struct_1,
    c: Struct_4,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: vec3<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec3<u32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: Struct_2 = Struct_2(vec2<i32>(-2396i, -1980i), -107903i, 80500u, Struct_1(vec3<f32>(-1000f, -1000f, -838f), 1i, vec4<i32>(i32(-2147483648), -34468i, -1i, 5278i)), Struct_1(vec3<f32>(-172f, 746f, -1589f), 2147483647i, vec4<i32>(2147483647i, 2147483647i, 1i, 2147483647i)));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_4) -> u32 {
    var var_0 = ~firstLeadingBit(_wgslsmith_mult_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(54978u, 1991u, 5982u, global1.c), vec4<u32>(u_input.c.x, 0u, arg_0.e.x, 2326u), vec4<u32>(1u, 4294967295u, u_input.c.x, arg_0.a.c)) << (~vec4<u32>(1u, global1.c, arg_0.d, global1.c) % vec4<u32>(32u)), ~(~vec4<u32>(arg_0.d, 1u, global1.c, arg_0.a.c))));
    let var_1 = 0i;
    var var_2 = arg_0.a;
    global1 = arg_0.a;
    global0 = any(!select(vec3<bool>(true, true, true), select(select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), false), vec3<bool>(true, true, true), true), all(vec4<bool>(false, true, false, false))));
    return 4294967295u;
}

fn func_2() -> bool {
    var var_0 = -45198i;
    var var_1 = vec3<u32>((select(global1.c, u_input.c.x & 28499u, u_input.a.x < u_input.a.x) & firstLeadingBit(~0u)) >> (_wgslsmith_sub_u32(0u, _wgslsmith_mod_u32(0u, global1.c << (0u % 32u))) % 32u), _wgslsmith_add_u32(0u >> (u_input.c.x % 32u), _wgslsmith_mod_u32(u_input.c.x, func_3(Struct_4(Struct_2(vec2<i32>(u_input.d, 1i), 1i, global1.c, global1.d, global1.e), vec4<f32>(global1.d.a.x, global1.d.a.x, global1.e.a.x, global1.d.a.x), -1i, global1.c, u_input.c.xy)))), u_input.a.x);
    let var_2 = Struct_2(global1.d.c.zw, -2147483647i, 81075u, global1.d, global1.e);
    var_1 = vec3<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(var_2.c, select(global1.c, u_input.c.x, false), 15394u, u_input.c.x), _wgslsmith_clamp_vec4_u32(vec4<u32>(var_1.x, ~var_2.c, 0u >> (u_input.a.x % 32u), 4294967295u), ~vec4<u32>(20732u, global1.c, 87541u, var_2.c), vec4<u32>(36712u, 0u >> (var_1.x % 32u), ~4294967295u, global1.c))), global1.c, ~var_1.x);
    var_0 = -abs(u_input.b.x);
    return any(select(!vec2<bool>(all(vec3<bool>(false, false, true)), true), select(!select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false)), vec2<bool>(true, true), true), select(vec2<bool>(true, true), vec2<bool>(true, true), true)));
}

fn func_1(arg_0: vec3<u32>) -> Struct_2 {
    let var_0 = u_input.a.x;
    let var_1 = 52369u;
    var var_2 = select(vec4<bool>(select(true, !all(vec4<bool>(false, false, true, false)), !all(vec3<bool>(false, false, false))), ~_wgslsmith_mult_u32(var_0, var_1) <= 4294967295u, any(vec3<bool>(any(vec3<bool>(false, true, false)), false, true)), u_input.d != _wgslsmith_dot_vec2_i32(~u_input.b.wy, vec2<i32>(24446i, u_input.b.x))), select(vec4<bool>(global1.d.a.x != _wgslsmith_div_f32(-266f, global1.d.a.x), true, (171f > global1.e.a.x) | true, func_2()), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(true, all(vec2<bool>(true, false)), false, func_2()), any(vec2<bool>(true, false)) & false), vec4<bool>(_wgslsmith_dot_vec3_i32(global1.e.c.zyz, vec3<i32>(-15741i, global1.d.c.x, -1i)) > countOneBits(0i), func_2(), true, firstTrailingBit(7467u) > ~4294967295u)), true);
    let var_3 = Struct_2(vec2<i32>(u_input.b.x >> (arg_0.x % 32u), abs(_wgslsmith_div_i32(global1.a.x, -2147483647i) << (18177u % 32u))), _wgslsmith_mult_i32(-1i, -reverseBits(-1i)), var_0, Struct_1(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(select(global1.d.a, _wgslsmith_f_op_vec3_f32(-global1.d.a), var_2.yxx)))), -_wgslsmith_div_i32(_wgslsmith_mod_i32(0i, 1i), _wgslsmith_div_i32(global1.b, -1i)), abs(u_input.b)), global1.e);
    let var_4 = var_3.d;
    return Struct_2(vec2<i32>(-(~1i), -34939i), _wgslsmith_mod_i32(15655i, ~_wgslsmith_sub_i32(i32(-1i) * -2147483647i, var_3.a.x)), ~(~arg_0.x), Struct_1(vec3<f32>(global1.e.a.x, -760f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -457f), _wgslsmith_f_op_f32(trunc(var_4.a.x)))), _wgslsmith_clamp_i32(0i, reverseBits(-1i), _wgslsmith_add_i32(1i, ~u_input.b.x)), vec4<i32>(abs(-55492i), ~(~0i), u_input.d, _wgslsmith_div_i32(global1.b, var_3.e.c.x) | ~var_3.b)), var_4);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.c.x;
    let var_1 = max(_wgslsmith_mult_vec3_u32(u_input.a, firstLeadingBit(u_input.a)), ~u_input.a);
    global1 = func_1(u_input.a);
    global1 = Struct_2(reverseBits(global1.d.c.xx), _wgslsmith_div_i32((func_1(vec3<u32>(0u, var_1.x, 4274u)).a.x ^ 24132i) | _wgslsmith_sub_i32(u_input.b.x | global1.d.c.x, _wgslsmith_mod_i32(global1.a.x, u_input.d)), global1.e.c.x), ~var_1.x, Struct_1(vec3<f32>(_wgslsmith_div_f32(global1.e.a.x, _wgslsmith_f_op_f32(-523f - -1238f)), 532f, global1.e.a.x), countOneBits(u_input.b.x), _wgslsmith_mult_vec4_i32(reverseBits(vec4<i32>(1i, global1.e.c.x, global1.a.x, global1.a.x)), vec4<i32>(-13066i, global1.e.b, 1i & u_input.d, ~22026i))), global1.e);
    var_0 = 1u;
    var var_2 = vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, u_input.d ^ (i32(-1i) * -32101i)), ~reverseBits(vec2<i32>(434i, -37485i))), _wgslsmith_add_i32(_wgslsmith_mult_i32(_wgslsmith_div_i32(u_input.d, ~2147483647i), _wgslsmith_add_i32(global1.e.b, -2147483647i)), 4097i), 24510i);
    var var_3 = false & !(global1.d.a.x >= _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global1.e.a.x))));
    var var_4 = Struct_3(Struct_2(global1.a, u_input.d, _wgslsmith_mult_u32(~var_1.x, 1u & _wgslsmith_add_u32(5711u, var_1.x)), global1.d, global1.d));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(~var_1.x, ~var_1.x, u_input.c.x, abs(var_4.a.c)), _wgslsmith_mod_vec4_u32(~vec4<u32>(4294967295u, 23796u, var_1.x, 34169u), vec4<u32>(4294967295u, 14606u, 58008u, var_4.a.c))), ~(~abs(vec4<u32>(0u, global1.c, global1.c, global1.c)))), -(firstTrailingBit(u_input.b.x) << (var_4.a.c % 32u)), var_1, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(global1.d.a.x, 832f, true)), global1.e.a.x), _wgslsmith_f_op_f32(-global1.d.a.x), _wgslsmith_f_op_f32(select(-1146f, _wgslsmith_f_op_f32(f32(-1f) * -348f), true)))));
}


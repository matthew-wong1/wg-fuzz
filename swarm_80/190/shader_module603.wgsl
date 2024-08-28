struct Struct_1 {
    a: i32,
    b: vec3<bool>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: vec3<u32>,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(i32(-2147483648), vec3<u32>(23990u, 68209u, 1u), vec3<bool>(true, false, true));

var<private> global1: array<i32, 18> = array<i32, 18>(30311i, -20202i, -30137i, -32871i, -9624i, 18849i, 40424i, -1i, -38387i, -48684i, i32(-2147483648), 0i, 1i, -22067i, 2147483647i, -36864i, 1i, 2147483647i);

var<private> global2: i32;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3(arg_0: f32, arg_1: vec3<u32>, arg_2: vec3<i32>) -> u32 {
    let var_0 = 236u;
    var var_1 = vec4<bool>(true, false, global0.c.x, !((1u == arg_1.x) != !global0.c.x) && (true & !all(vec2<bool>(global0.c.x, global0.c.x))));
    let var_2 = !(!vec2<bool>(global0.c.x || true, !(!var_1.x)));
    var_1 = !vec4<bool>(true && var_1.x, true, all(vec2<bool>(var_1.x | global0.c.x, true)), !(arg_0 <= arg_0));
    var var_3 = arg_0;
    return global0.b.x;
}

fn func_2(arg_0: u32) -> i32 {
    var var_0 = Struct_2(_wgslsmith_div_vec4_u32(_wgslsmith_mod_vec4_u32(u_input.d, vec4<u32>(global0.b.x, ~arg_0, ~u_input.c, 49684u)), vec4<u32>(firstLeadingBit(u_input.d.x), ~arg_0, _wgslsmith_mod_u32(30406u, 4294967295u), arg_0 ^ 4294967295u) ^ ~u_input.d), Struct_1(~global1[_wgslsmith_index_u32(~arg_0, 18u)] ^ min(~global0.a, 23659i), vec3<bool>(any(vec4<bool>(global0.c.x, global0.c.x, global0.c.x, global0.c.x)) && true, all(select(vec4<bool>(global0.c.x, true, true, true), vec4<bool>(global0.c.x, global0.c.x, true, global0.c.x), vec4<bool>(global0.c.x, global0.c.x, global0.c.x, true))), global0.c.x)));
    var var_1 = vec3<i32>(22053i, 57595i, global0.a);
    global0 = Struct_3(~1i, abs(vec3<u32>(func_3(_wgslsmith_div_f32(-264f, 598f), var_0.a.xxx, _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a, var_1.x, u_input.a), vec3<i32>(79024i, 1i, global1[_wgslsmith_index_u32(var_0.a.x, 18u)]))), arg_0, 1u)), select(var_0.b.b, global0.c, global0.c));
    let var_2 = Struct_2(_wgslsmith_mult_vec4_u32(firstLeadingBit(_wgslsmith_div_vec4_u32(var_0.a, vec4<u32>(80144u, arg_0, 4294967295u, 60995u))), min(~u_input.d, ~vec4<u32>(u_input.d.x, 0u, u_input.d.x, var_0.a.x))) >> (~(~var_0.a) % vec4<u32>(32u)), Struct_1(-_wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(-368i, -1i, u_input.b, 34586i), vec4<i32>(-13943i, global1[_wgslsmith_index_u32(global0.b.x, 18u)], var_1.x, -12574i)), vec4<i32>(global0.a, -2147483647i, 1i, global0.a)), !var_0.b.b));
    global1 = array<i32, 18>();
    return _wgslsmith_add_i32(_wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(-vec4<i32>(var_0.b.a, var_1.x, global1[_wgslsmith_index_u32(var_0.a.x, 18u)], u_input.a) >> (var_0.a % vec4<u32>(32u)), ~vec4<i32>(u_input.a, var_2.b.a, -1i, 6971i) | ~vec4<i32>(var_1.x, var_1.x, -2147483647i, -6210i)), -1i, abs(~0i | global0.a)), _wgslsmith_dot_vec2_i32(vec2<i32>(-52332i, _wgslsmith_add_i32(var_0.b.a, _wgslsmith_dot_vec2_i32(vec2<i32>(var_0.b.a, -54696i), var_1.xz))), var_1.yx));
}

fn func_1() -> vec3<u32> {
    var var_0 = global0.c.x;
    let var_1 = vec2<i32>(func_2(4294967295u), reverseBits(_wgslsmith_clamp_i32(-4931i, global1[_wgslsmith_index_u32(select(u_input.d.x, 1u, global0.c.x), 18u)], 23246i))) | (-(~(~vec2<i32>(46576i, 1i))) | ~(-_wgslsmith_add_vec2_i32(vec2<i32>(-2147483647i, global1[_wgslsmith_index_u32(7065u, 18u)]), vec2<i32>(global0.a, global1[_wgslsmith_index_u32(7163u, 18u)]))));
    var var_2 = all(!select(select(vec4<bool>(global0.c.x, global0.c.x, global0.c.x, true), vec4<bool>(global0.c.x, false, global0.c.x, true), global0.c.x), vec4<bool>(any(vec3<bool>(global0.c.x, false, true)), global0.c.x, !global0.c.x, false), false));
    let var_3 = Struct_2(_wgslsmith_mult_vec4_u32(reverseBits(u_input.d), u_input.d), Struct_1(_wgslsmith_add_i32(1i, -1i ^ _wgslsmith_mod_i32(global1[_wgslsmith_index_u32(u_input.d.x, 18u)], 0i)), global0.c));
    var var_4 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-1060f - 1154f), _wgslsmith_f_op_f32(-1324f * 567f)))));
    return vec3<u32>(var_3.a.x, 1u, _wgslsmith_div_u32(global0.b.x, 4294967295u));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<i32, 18>();
    let var_0 = 0u;
    global0 = Struct_3(2147483647i, _wgslsmith_sub_vec3_u32(global0.b, _wgslsmith_div_vec3_u32(select(u_input.d.wyy, global0.b, global0.c), u_input.d.xxz)) ^ global0.b, vec3<bool>(global0.c.x || false, !(true & global0.c.x), true));
    global0 = Struct_3(-global0.a & -(~u_input.a), select(((global0.b & vec3<u32>(1u, 4294967295u, u_input.d.x)) << (vec3<u32>(1u, var_0, u_input.d.x) % vec3<u32>(32u))) >> (_wgslsmith_clamp_vec3_u32(u_input.d.ywz, ~vec3<u32>(u_input.d.x, 30611u, u_input.d.x), func_1()) % vec3<u32>(32u)), u_input.d.zzz, !select(select(vec3<bool>(true, global0.c.x, true), vec3<bool>(false, global0.c.x, global0.c.x), global0.c), select(global0.c, global0.c, false), all(global0.c.yz))), global0.c);
    var var_1 = Struct_3(u_input.a, ~(~max(_wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, u_input.d.x, 11116u), vec3<u32>(global0.b.x, 46870u, global0.b.x)), vec3<u32>(var_0, global0.b.x, u_input.c))), select(global0.c, vec3<bool>(any(!vec4<bool>(global0.c.x, true, false, global0.c.x)), _wgslsmith_dot_vec3_u32(global0.b, u_input.d.ywx) != countOneBits(global0.b.x), select(global0.c.x & global0.c.x, any(vec3<bool>(global0.c.x, global0.c.x, false)), true)), all(!(!vec3<bool>(true, global0.c.x, global0.c.x)))));
    var var_2 = Struct_2(u_input.d, Struct_1(select(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_add_u32(4294967295u, var_1.b.x), countOneBits(u_input.d.x)), 18u)], global1[_wgslsmith_index_u32(72274u, 18u)], true), global0.c));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(reverseBits(0u), ~19439u, _wgslsmith_mult_u32(_wgslsmith_div_u32(_wgslsmith_clamp_u32(0u, 0u, 1u), ~var_2.a.x), ~_wgslsmith_dot_vec3_u32(global0.b, vec3<u32>(var_1.b.x, u_input.c, 0u))), _wgslsmith_div_u32(_wgslsmith_add_u32(0u, 4294967295u), ~20138u) >> (var_0 % 32u)), 12531i, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(trunc(-464f)), _wgslsmith_f_op_f32(round(1000f))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1000f, 777f)))))));
}


struct Struct_1 {
    a: vec3<bool>,
    b: u32,
    c: u32,
}

struct Struct_2 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 18> = array<bool, 18>(false, true, true, false, false, false, false, false, false, true, true, false, true, false, true, false, false, false);

var<private> global1: array<u32, 28>;

var<private> global2: array<u32, 31> = array<u32, 31>(20311u, 37344u, 32402u, 4294967295u, 79243u, 1u, 36136u, 4294967295u, 37589u, 40109u, 41268u, 4294967295u, 0u, 37444u, 97133u, 16610u, 84173u, 4294967295u, 0u, 4294967295u, 4294967295u, 0u, 1u, 9082u, 4294967295u, 21341u, 175018u, 4294967295u, 4294967295u, 4294967295u, 19508u);

var<private> global3: vec4<bool> = vec4<bool>(true, true, false, false);

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: bool) -> f32 {
    let var_0 = global1[_wgslsmith_index_u32(countOneBits(76120u), 28u)];
    let var_1 = abs(37753u);
    var var_2 = _wgslsmith_dot_vec2_i32(-max(vec2<i32>(-4417i, 26280i), vec2<i32>(max(-7156i, -1925i), _wgslsmith_mult_i32(4752i, 0i))), ~vec2<i32>(-33000i, _wgslsmith_clamp_i32(abs(-2147483647i), _wgslsmith_div_i32(70481i, 1i), 0i)));
    var var_3 = Struct_1(!select(vec3<bool>(select(false, true, true), true, !global0[_wgslsmith_index_u32(0u, 18u)]), !select(vec3<bool>(arg_0, global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(21601u, 31u)], 18u)], true), vec3<bool>(global0[_wgslsmith_index_u32(22480u, 18u)], arg_0, true), false), global3.xyw), abs(_wgslsmith_dot_vec2_u32(~_wgslsmith_mult_vec2_u32(u_input.b.zy, u_input.b.zz), _wgslsmith_sub_vec2_u32(u_input.b.zx, vec2<u32>(global1[_wgslsmith_index_u32(var_1, 28u)], var_1)))), var_1);
    var var_4 = !((i32(-1i) * -7827i) != _wgslsmith_dot_vec3_i32(vec3<i32>(1i, 1i, 1i), abs(vec3<i32>(-45290i, -2147483647i, -29980i))));
    return 1f;
}

fn func_2() -> bool {
    global2 = array<u32, 31>();
    let var_0 = _wgslsmith_f_op_f32(func_3(true));
    var var_1 = select(!vec4<bool>(any(vec4<bool>(true, global0[_wgslsmith_index_u32(87140u, 18u)], false, global3.x)) && true, true, global3.x, global3.x), vec4<bool>(any(!select(vec4<bool>(global3.x, true, true, global3.x), vec4<bool>(global0[_wgslsmith_index_u32(1u, 18u)], global3.x, true, true), vec4<bool>(global3.x, global0[_wgslsmith_index_u32(u_input.b.x, 18u)], global0[_wgslsmith_index_u32(u_input.b.x, 18u)], global3.x))), true, any(vec2<bool>(any(vec2<bool>(global0[_wgslsmith_index_u32(0u, 18u)], false)), global3.x)), !(all(vec3<bool>(false, global3.x, global0[_wgslsmith_index_u32(27913u, 18u)])) & true)), global3.x);
    global0 = array<bool, 18>();
    var_1 = select(vec4<bool>(any(select(vec4<bool>(true, true, global3.x, false), vec4<bool>(false, false, true, false), vec4<bool>(global0[_wgslsmith_index_u32(u_input.a, 18u)], true, false, true))) || all(select(vec4<bool>(global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(41659u, 31u)], 18u)], true, var_1.x, true), vec4<bool>(true, true, true, true), vec4<bool>(true, global0[_wgslsmith_index_u32(4294967295u, 18u)], true, global3.x))), global3.x && var_1.x, !(true && all(vec4<bool>(true, false, true, global0[_wgslsmith_index_u32(1u, 18u)]))), true), select(select(select(vec4<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 18u)], var_1.x, var_1.x, global0[_wgslsmith_index_u32(0u, 18u)]), !vec4<bool>(true, false, var_1.x, true), true), select(select(vec4<bool>(global0[_wgslsmith_index_u32(58711u, 18u)], var_1.x, false, true), vec4<bool>(var_1.x, var_1.x, true, global0[_wgslsmith_index_u32(42891u, 18u)]), vec4<bool>(var_1.x, global3.x, true, false)), vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.b.x, 18u)], global0[_wgslsmith_index_u32(0u, 18u)], global3.x), select(vec4<bool>(true, var_1.x, false, global0[_wgslsmith_index_u32(83985u, 18u)]), vec4<bool>(global3.x, false, false, false), false)), select(!vec4<bool>(global0[_wgslsmith_index_u32(10957u, 18u)], var_1.x, var_1.x, true), vec4<bool>(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.b.x, 31u)], 31u)], 28u)], 18u)], true, global0[_wgslsmith_index_u32(18045u, 18u)], global3.x), select(vec4<bool>(global3.x, false, false, false), vec4<bool>(global3.x, var_1.x, global3.x, global3.x), false))), !vec4<bool>(global3.x, var_1.x && true, all(vec4<bool>(global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(22995u, 31u)], 28u)], 31u)], 18u)], false, true, global0[_wgslsmith_index_u32(107663u, 18u)])), true), global0[_wgslsmith_index_u32(9269u, 18u)]), false && (!var_1.x & true));
    return false;
}

fn func_1() -> vec4<bool> {
    let var_0 = -vec2<i32>(_wgslsmith_div_i32(-1136i, -1i), _wgslsmith_div_i32(_wgslsmith_sub_i32(1i, -29643i), -21913i)) << ((_wgslsmith_clamp_vec2_u32(u_input.b.yx, u_input.b.yx, select(_wgslsmith_div_vec2_u32(vec2<u32>(83189u, 50271u), u_input.b.yy), ~vec2<u32>(1u, 4294967295u), true)) | (_wgslsmith_mod_vec2_u32(~u_input.b.yx, vec2<u32>(u_input.a, global2[_wgslsmith_index_u32(42943u, 31u)])) | _wgslsmith_mod_vec2_u32(~u_input.b.xx, select(vec2<u32>(99844u, global2[_wgslsmith_index_u32(4780u, 31u)]), vec2<u32>(22589u, 51481u), false)))) % vec2<u32>(32u));
    let var_1 = Struct_2(!(!global3.yzw));
    global3 = !select(select(vec4<bool>(true, true, true, any(vec4<bool>(false, var_1.a.x, true, global3.x))), vec4<bool>(!global0[_wgslsmith_index_u32(4294967295u, 18u)], !global3.x, false, all(vec2<bool>(false, false))), vec4<bool>(select(true, global3.x, global3.x), false, func_2(), !var_1.a.x)), !(!vec4<bool>(true, true, true, var_1.a.x)), vec4<bool>(false, !global0[_wgslsmith_index_u32(83501u, 18u)] == true, global3.x, true));
    var var_2 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(-827f))));
    var var_3 = Struct_2(!(!vec3<bool>(true, any(var_1.a.zy), true)));
    return !select(select(select(!vec4<bool>(var_3.a.x, var_3.a.x, var_1.a.x, var_3.a.x), !vec4<bool>(true, var_3.a.x, var_1.a.x, global3.x), select(vec4<bool>(var_1.a.x, true, var_3.a.x, global3.x), vec4<bool>(true, false, var_1.a.x, var_1.a.x), false)), vec4<bool>(any(vec2<bool>(true, false)), global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(48241u, 28u)], 28u)] > global2[_wgslsmith_index_u32(4294967295u, 31u)], global3.x || global3.x, any(vec3<bool>(true, true, true))), !(!vec4<bool>(var_3.a.x, true, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 28u)], 18u)], var_3.a.x))), !(!(!vec4<bool>(global3.x, var_3.a.x, global3.x, var_1.a.x))), any(vec2<bool>(var_3.a.x, global3.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<u32, 31>();
    global3 = !vec4<bool>(global0[_wgslsmith_index_u32(~60093u, 18u)], global0[_wgslsmith_index_u32(~u_input.a, 18u)], all(vec2<bool>(global3.x, true)) && true, true);
    global0 = array<bool, 18>();
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-187f)))) + _wgslsmith_f_op_f32(select(332f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, -1075f)), any(func_1())))) - -995f);
    global2 = array<u32, 31>();
    var var_1 = Struct_2(global3.xzx);
    let var_2 = Struct_1(!vec3<bool>(!(global3.x || false), all(var_1.a), select(true, true, func_1().x)), 0u, ~(~abs(0u)));
    var var_3 = func_1();
    let var_4 = Struct_2(!select(vec3<bool>(true, var_0 > var_0, true), select(var_2.a, !vec3<bool>(false, true, var_1.a.x), !var_3.wxz), !select(global3.wxy, var_3.zxz, vec3<bool>(var_1.a.x, var_2.a.x, var_1.a.x))));
    let x = u_input.a;
    s_output = StorageBuffer(-299f);
}


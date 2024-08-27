struct Struct_1 {
    a: i32,
    b: i32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: bool,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec3<f32>,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec4<u32>,
    d: vec3<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(2216i, -8342i);

var<private> global1: array<vec4<bool>, 3>;

var<private> global2: array<u32, 30>;

var<private> global3: array<bool, 18> = array<bool, 18>(true, true, false, true, false, false, false, false, false, false, false, true, false, true, false, true, true, false);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> bool {
    global2 = array<u32, 30>();
    return !select(global3[_wgslsmith_index_u32(~global2[_wgslsmith_index_u32(4294967295u >> (_wgslsmith_mod_u32(0u, u_input.a.x) % 32u), 30u)], 18u)], any(select(!vec3<bool>(true, false, global3[_wgslsmith_index_u32(u_input.a.x, 18u)]), vec3<bool>(global3[_wgslsmith_index_u32(21607u, 18u)], global3[_wgslsmith_index_u32(48420u, 18u)], true), !vec3<bool>(global3[_wgslsmith_index_u32(17827u, 18u)], global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(103925u, 30u)], 18u)], false))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(783f, -229f, true))) >= _wgslsmith_f_op_f32(913f + _wgslsmith_f_op_f32(sign(-983f))));
}

fn func_2() -> u32 {
    var var_0 = Struct_2(!(!vec3<bool>(global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(19434u, 30u)], 30u)], 18u)], true, any(global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a.x, 30u)], 30u)], 3u)]))), _wgslsmith_add_i32(global0.a ^ global0.a, 1i) <= ~2147483647i);
    let var_1 = Struct_2(select(vec3<bool>(func_3(), true, !var_0.a.x && var_0.b), select(var_0.a, select(!var_0.a, select(var_0.a, var_0.a, vec3<bool>(var_0.a.x, true, true)), var_0.a.x), select(!var_0.a, select(var_0.a, var_0.a, var_0.a), var_0.a)), select(select(vec3<bool>(false, var_0.b, true), select(var_0.a, vec3<bool>(var_0.b, global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(48904u, 30u)], 18u)], true), var_0.a), vec3<bool>(var_0.a.x, true, global3[_wgslsmith_index_u32(4294967295u, 18u)])), vec3<bool>(!global3[_wgslsmith_index_u32(u_input.a.x, 18u)], true, true), !select(var_0.a, vec3<bool>(false, var_0.a.x, true), vec3<bool>(var_0.a.x, true, false)))), var_0.a.x);
    let var_2 = vec2<bool>(func_3(), !var_0.b);
    global1 = array<vec4<bool>, 3>();
    var var_3 = select(var_0.a, select(select(select(!vec3<bool>(var_1.b, true, global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a.x, 30u)], 18u)]), !vec3<bool>(false, var_1.b, true), !var_1.a), !select(vec3<bool>(var_1.b, var_2.x, global3[_wgslsmith_index_u32(u_input.a.x, 18u)]), vec3<bool>(global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 30u)], 18u)], var_2.x, false), var_0.a.x), var_1.a), vec3<bool>(var_1.a.x, var_1.b, false), var_1.a.x), var_1.a);
    return global2[_wgslsmith_index_u32(~_wgslsmith_div_u32(1u, _wgslsmith_add_u32(4294967295u, u_input.a.x)) & min(u_input.a.x, _wgslsmith_mult_u32(30377u, abs(~4294967295u))), 30u)];
}

fn func_1(arg_0: f32) -> u32 {
    var var_0 = ~global0.a;
    var var_1 = false;
    let var_2 = vec3<u32>(1u, 4294967295u, 0u);
    global2 = array<u32, 30>();
    var var_3 = 11078i;
    return _wgslsmith_div_u32(countOneBits(~min(u_input.a.x, u_input.a.x)), _wgslsmith_add_u32(~(func_2() ^ (4294967295u << (u_input.a.x % 32u))), 12678u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !all(vec3<bool>(!(!global3[_wgslsmith_index_u32(u_input.a.x, 18u)]), false, global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(global2[_wgslsmith_index_u32(4294967295u, 30u)], global2[_wgslsmith_index_u32(~u_input.a.x, 30u)]), 18u)]));
    global2 = array<u32, 30>();
    var var_1 = global1[_wgslsmith_index_u32(max(global2[_wgslsmith_index_u32(~17497u, 30u)], _wgslsmith_add_u32(_wgslsmith_clamp_u32(_wgslsmith_clamp_u32(0u, 8180u, 15506u) & abs(0u), func_1(-309f), 0u), u_input.a.x)), 3u)];
    var var_2 = Struct_1(-82972i, abs(global0.a) | -(~firstTrailingBit(2147483647i)));
    global3 = array<bool, 18>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(step(2789f, -1508f)), global0.b << (9371u % 32u), min(vec4<u32>(~(~u_input.a.x), ~_wgslsmith_clamp_u32(82497u, 72965u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(27513u, 30u)], 30u)]), global2[_wgslsmith_index_u32(abs(max(46849u, 1580u)), 30u)], global2[_wgslsmith_index_u32(~47189u, 30u)] >> (0u % 32u)), vec4<u32>(~627u, ~_wgslsmith_add_u32(13722u, 45358u), _wgslsmith_add_u32(_wgslsmith_mod_u32(1u, global2[_wgslsmith_index_u32(0u, 30u)]), ~4294967295u), 2626u)), vec3<i32>(var_2.b, global0.b, -var_2.a), _wgslsmith_f_op_f32(-296f + 796f));
}


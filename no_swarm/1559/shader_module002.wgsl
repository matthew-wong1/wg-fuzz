struct Struct_1 {
    a: vec4<bool>,
    b: u32,
}

struct Struct_2 {
    a: u32,
    b: bool,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec3<u32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: i32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(i32(-2147483648), Struct_2(4294967295u, true), 0u);

var<private> global1: i32 = -1i;

var<private> global2: vec2<bool> = vec2<bool>(true, true);

var<private> global3: Struct_3 = Struct_3(-31521i, Struct_2(14574u, true), 1u);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_2) -> bool {
    let var_0 = arg_0;
    return global0.b.b;
}

fn func_2(arg_0: u32, arg_1: i32) -> i32 {
    let var_0 = Struct_1(vec4<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(535f - -839f) * _wgslsmith_f_op_f32(491f - -146f)) > _wgslsmith_f_op_f32(ceil(-1907f)), true, global0.b.b, func_3(Struct_2(u_input.b, global0.b.b)) & (_wgslsmith_dot_vec2_i32(u_input.a.xz, u_input.d.xx) > (2147483647i | u_input.d.x))), ~(~_wgslsmith_add_u32(global3.c, 4294967295u)));
    let var_1 = !vec3<bool>(true, all(!var_0.a.yy), global2.x);
    var var_2 = select(var_1.zy, vec2<bool>(all(select(var_0.a, !var_0.a, any(var_0.a))), true), (global0.b.b & true) | true);
    var var_3 = _wgslsmith_f_op_f32(f32(-1f) * -658f);
    var var_4 = vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -697f) * -2132f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(-828f))))))), -1000f);
    return firstTrailingBit(_wgslsmith_clamp_i32(_wgslsmith_sub_i32(global0.a >> (global0.b.a % 32u), global0.a), _wgslsmith_mult_i32(global0.a, global0.a), (u_input.d.x ^ -79062i) >> (arg_0 % 32u))) >> (10274u % 32u);
}

fn func_1(arg_0: vec4<f32>, arg_1: vec3<i32>) -> i32 {
    var var_0 = Struct_3(-(func_2(~38130u, -13212i << (u_input.c.x % 32u)) << (~(u_input.b | 4294967295u) % 32u)), global0.b, global3.b.a);
    let var_1 = _wgslsmith_div_vec2_i32(vec2<i32>(31397i, _wgslsmith_mult_i32(~_wgslsmith_dot_vec3_i32(vec3<i32>(0i, 0i, -8184i), arg_1), -2147483647i)), vec2<i32>(_wgslsmith_sub_i32(1i, _wgslsmith_add_i32(u_input.a.x ^ 2147483647i, var_0.a)), _wgslsmith_div_i32(_wgslsmith_div_i32(6801i, ~u_input.a.x), var_0.a)));
    global2 = select(vec2<bool>(!all(!vec4<bool>(global2.x, global2.x, var_0.b.b, var_0.b.b)), !(!(u_input.c.x < 60146u))), vec2<bool>(((global3.c ^ global3.c) << (0u % 32u)) > ~43504u, true), abs(var_0.b.a) == _wgslsmith_add_u32(~(4294967295u >> (var_0.c % 32u)), 11271u));
    var_0 = Struct_3(global0.a, global0.b, ~abs(_wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(var_0.c, 13505u, 67911u, global0.c)), ~vec4<u32>(var_0.c, global3.c, 31784u, 7490u))));
    var var_2 = Struct_3(~var_0.a, Struct_2(75259u << (u_input.b % 32u), true), _wgslsmith_mod_u32(37725u, var_0.c));
    return -45207i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -143f), _wgslsmith_f_op_f32(floor(115f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-609f + -459f))) - _wgslsmith_f_op_f32(-712f - _wgslsmith_f_op_f32(f32(-1f) * -262f))), 587f));
    let var_1 = Struct_3(max(func_1(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_0, 1162f, var_0, var_0))), u_input.a.yww), ~global3.a), global3.b, ~(~reverseBits(~26572u)));
    let var_2 = Struct_1(vec4<bool>(any(!(!vec3<bool>(global3.b.b, var_1.b.b, true))), true, true, !global2.x), ~((var_1.b.a | (4294967295u | global3.b.a)) << (u_input.b % 32u)));
    global1 = 1i;
    let var_3 = max(96320u, global0.c);
    let var_4 = ~(~vec2<u32>(~21154u, ~48946u));
    let x = u_input.a;
    s_output = StorageBuffer(global0.a, 388f, -reverseBits(~_wgslsmith_add_i32(global0.a, 20379i)), select(reverseBits(u_input.c.zz), firstTrailingBit(~vec2<u32>(var_1.c, 1u)), any(!select(var_2.a, vec4<bool>(global2.x, true, global0.b.b, var_1.b.b), true))));
}


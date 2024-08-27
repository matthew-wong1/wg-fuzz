struct Struct_1 {
    a: vec4<bool>,
    b: bool,
    c: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: u32,
    d: vec3<u32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: i32,
    d: vec4<f32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 3>;

var<private> global1: Struct_1 = Struct_1(vec4<bool>(true, true, true, false), true, 23901u);

var<private> global2: array<u32, 15>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: bool, arg_3: bool) -> u32 {
    let var_0 = Struct_1(select(vec4<bool>(any(global1.a), arg_1.x && arg_3, !(!arg_3), true), vec4<bool>(true, true, true, true), global1.b), arg_2, arg_0.c);
    let var_1 = Struct_1(!var_0.a, arg_1.x, ~(min(~global1.c, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, arg_0.c), vec2<u32>(var_0.c, global1.c))) ^ global2[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(u_input.d.yy, vec2<u32>(var_0.c, arg_0.c)), 15u)]));
    global2 = array<u32, 15>();
    global0 = array<i32, 3>();
    let var_2 = Struct_1(vec4<bool>(true, arg_3, true, !all(vec3<bool>(true, var_0.a.x, true))), select(true, !(select(false, true, false) && true), global0[_wgslsmith_index_u32(var_0.c, 3u)] >= 1i), ~(~global1.c));
    return u_input.a;
}

fn func_3(arg_0: Struct_1, arg_1: bool) -> bool {
    global2 = array<u32, 15>();
    global1 = Struct_1(arg_0.a, countOneBits(abs(_wgslsmith_mult_u32(4294967295u, arg_0.c))) <= ((_wgslsmith_div_u32(arg_0.c, 32379u) ^ global1.c) >> (_wgslsmith_dot_vec2_u32(min(u_input.d.zz, u_input.d.zx), vec2<u32>(0u, 1u) & u_input.d.zx) % 32u)), _wgslsmith_mult_u32(u_input.c, min(57779u, _wgslsmith_dot_vec2_u32(vec2<u32>(58069u, 4294967295u), u_input.d.xy)) >> (4294967295u % 32u)));
    let var_0 = vec4<bool>(all(!arg_0.a.wx), true, all(vec3<bool>(select(all(vec2<bool>(arg_0.a.x, global1.b)), arg_1, false), true, true)), all(select(select(vec2<bool>(false, global1.a.x), !global1.a.xx, !global1.b), !arg_0.a.yw, !all(vec2<bool>(global1.a.x, false)))));
    var var_1 = arg_0;
    var_1 = Struct_1(var_0, var_0.x, 20995u);
    return any(!(!vec3<bool>(var_1.b, false, false))) & (2147483647i != _wgslsmith_add_i32(-20711i, ~(1i | global0[_wgslsmith_index_u32(27678u, 3u)])));
}

fn func_1(arg_0: i32, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    let var_0 = max(62973u, ~(~func_2(Struct_1(vec4<bool>(true, arg_2.a.x, true, true), true, 1u), arg_2.a.zzx, !global1.b, true)));
    global2 = array<u32, 15>();
    let var_1 = select(!arg_2.a, select(!vec4<bool>(func_3(Struct_1(vec4<bool>(false, true, arg_2.b, false), true, arg_2.c), false), arg_2.b && arg_1.a.x, arg_1.b, true), select(vec4<bool>(any(vec3<bool>(arg_1.b, false, false)), !global1.b, arg_2.b, true), select(global1.a, select(vec4<bool>(arg_1.b, global1.a.x, false, global1.a.x), global1.a, true), vec4<bool>(arg_1.a.x, true, false, false)), !global1.a), false == global1.a.x), !select(vec4<bool>(true || arg_1.b, arg_1.b && arg_1.b, true, !global1.b), select(vec4<bool>(true, false, global1.b, arg_2.a.x), select(arg_1.a, vec4<bool>(global1.a.x, true, global1.b, arg_1.a.x), arg_1.a), vec4<bool>(false, global1.b, false, true)), vec4<bool>(arg_1.c == 42776u, arg_2.b, global1.a.x, true)));
    var var_2 = global2[_wgslsmith_index_u32(arg_2.c, 15u)];
    global1 = arg_2;
    return Struct_1(select(var_1, global1.a, all(!var_1) || true), !(!(_wgslsmith_dot_vec2_i32(u_input.b.xz, vec2<i32>(1i, -37222i)) <= _wgslsmith_add_i32(-40663i, -44055i))), global1.c);
}

fn func_4(arg_0: bool, arg_1: Struct_1) -> bool {
    var var_0 = u_input.d;
    let var_1 = Struct_1(global1.a, all(select(vec4<bool>(!arg_1.a.x, false, arg_1.a.x, global1.b), vec4<bool>(var_0.x <= 12251u, -2147483647i > u_input.b.x, true, !global1.a.x), vec4<bool>(arg_1.b, u_input.b.x != u_input.b.x, 3014u != u_input.c, false))), _wgslsmith_clamp_u32(~(~abs(60201u)), ~global2[_wgslsmith_index_u32(~(4294967295u | var_0.x), 15u)], ~countOneBits(var_0.x >> (1u % 32u))));
    global1 = func_1(-(~_wgslsmith_div_i32(u_input.b.x & global0[_wgslsmith_index_u32(4294967295u, 3u)], global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(global1.c, 6781u, global2[_wgslsmith_index_u32(4294967295u, 15u)]), 3u)])), func_1(56710i, arg_1, var_1), func_1(global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(var_0.xx, vec2<u32>(16950u, u_input.c)), 3u)] << (_wgslsmith_mult_u32(_wgslsmith_sub_u32(46376u, var_0.x), _wgslsmith_dot_vec4_u32(vec4<u32>(112637u, var_0.x, 40529u, global1.c), vec4<u32>(var_1.c, global1.c, arg_1.c, 6277u))) % 32u), func_1(2147483647i, arg_1, arg_1), Struct_1(var_1.a, false, 39210u)));
    global2 = array<u32, 15>();
    var var_2 = vec2<f32>(-435f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -798f), 1485f)))));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 3>();
    let var_0 = Struct_1(vec4<bool>(true | all(!vec3<bool>(true, false, global1.a.x)), !global1.b, all(select(global1.a.xy, !global1.a.zz, global1.b || false)), true), select(global1.a.x, !all(vec3<bool>(global1.b, global1.a.x, global1.b)), global1.a.x), u_input.c);
    global1 = var_0;
    let var_1 = Struct_1(select(var_0.a, vec4<bool>(true, true, false, var_0.a.x), !var_0.b), func_4(false, func_1(u_input.e.x, var_0, var_0)), 97281u);
    global1 = func_1(_wgslsmith_add_i32(abs(u_input.e.x), _wgslsmith_div_i32(_wgslsmith_mult_i32(_wgslsmith_mult_i32(global0[_wgslsmith_index_u32(var_0.c, 3u)], global0[_wgslsmith_index_u32(u_input.d.x, 3u)]), u_input.e.x), ~global0[_wgslsmith_index_u32(0u, 3u)] >> (var_1.c % 32u))), func_1(1i, var_1, var_1), Struct_1(vec4<bool>(var_1.a.x, !func_4(var_0.a.x, Struct_1(vec4<bool>(var_1.b, true, var_1.a.x, var_0.b), true, 0u)), !(false || var_0.a.x), true), any(!(!vec3<bool>(global1.b, false, global1.b))), 28474u));
    global2 = array<u32, 15>();
    let var_2 = vec2<i32>(_wgslsmith_mod_i32(2147483647i, max(-u_input.b.x, -2147483647i) | ~(0i >> (0u % 32u))), global0[_wgslsmith_index_u32(28246u, 3u)]);
    let var_3 = u_input.e.x;
    let var_4 = Struct_1(!var_1.a, (!func_1(2147483647i, var_1, var_1).a.x | (global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(global2[_wgslsmith_index_u32(u_input.d.x, 15u)], var_0.c), 3u)] != -var_3)) & true, select(global2[_wgslsmith_index_u32(var_1.c, 15u)], _wgslsmith_dot_vec4_u32(~select(vec4<u32>(4294967295u, 1u, global1.c, 4294967295u), vec4<u32>(1u, var_0.c, u_input.d.x, 0u), var_1.a), _wgslsmith_mod_vec4_u32(~vec4<u32>(4294967295u, global1.c, 1u, 55381u), min(vec4<u32>(var_0.c, 64058u, 1u, 1u), vec4<u32>(0u, global1.c, 4294967295u, global2[_wgslsmith_index_u32(var_0.c, 15u)])))), false));
    let x = u_input.a;
    s_output = StorageBuffer(select(vec2<i32>(~var_3, 1i << (var_0.c % 32u)), vec2<i32>(~2147483647i, var_3) >> (~vec2<u32>(var_1.c, 82242u) % vec2<u32>(32u)), !(!vec2<bool>(global1.a.x, false))), ~var_3, _wgslsmith_clamp_i32(-1i, -firstLeadingBit(select(var_2.x, -2147483647i, true)), _wgslsmith_clamp_i32(-48010i, min(-1i, firstLeadingBit(-5706i)), ~106607i)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -974f)), 1000f, _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(select(-600f, -532f, var_1.a.x))), _wgslsmith_f_op_f32(ceil(159f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(floor(-434f)), _wgslsmith_f_op_f32(floor(1674f)), -860f) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, -515f, 102f) + vec3<f32>(1135f, 1081f, 1041f)), _wgslsmith_div_vec3_f32(vec3<f32>(310f, -979f, 1007f), vec3<f32>(-1413f, -155f, 1642f))))));
}


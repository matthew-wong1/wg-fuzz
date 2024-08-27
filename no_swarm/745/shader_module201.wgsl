struct Struct_1 {
    a: vec4<f32>,
    b: vec3<bool>,
    c: vec4<f32>,
    d: bool,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: i32,
}

struct Struct_4 {
    a: Struct_2,
    b: u32,
    c: vec4<f32>,
    d: Struct_3,
}

struct Struct_5 {
    a: vec3<u32>,
    b: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: u32,
    d: vec4<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 6>;

var<private> global1: vec4<bool> = vec4<bool>(true, false, true, false);

var<private> global2: array<bool, 4>;

var<private> global3: array<Struct_4, 27>;

var<private> global4: i32;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_1() -> vec3<bool> {
    return select(!vec3<bool>(all(!vec4<bool>(true, global1.x, global1.x, false)), true, global1.x), global1.zzy, select(select(global1.xzy, vec3<bool>(global1.x, true, true), true), !vec3<bool>(all(vec4<bool>(global1.x, global2[_wgslsmith_index_u32(16664u, 4u)], false, true)), true, all(vec4<bool>(global1.x, global2[_wgslsmith_index_u32(98727u, 4u)], false, false))), vec3<bool>(false, !global2[_wgslsmith_index_u32(44259u >> (u_input.a.x % 32u), 4u)], false)));
}

fn func_2() -> f32 {
    var var_0 = _wgslsmith_mult_u32(_wgslsmith_sub_u32(_wgslsmith_mod_u32(u_input.a.x >> (u_input.c % 32u), _wgslsmith_div_u32(u_input.a.x, 47719u)), max(select(4294967295u, u_input.a.x, false), u_input.c ^ u_input.a.x)), 28373u) < ~_wgslsmith_mod_u32(u_input.a.x, _wgslsmith_sub_u32(~u_input.c, u_input.a.x));
    return _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(899f))));
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: vec2<f32>) -> f32 {
    var var_0 = firstTrailingBit(u_input.b.x);
    return arg_2.x;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = !vec4<bool>(all(!(!global1.yzy)), global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(~1u, u_input.a.x) >> (4294967295u % 32u), 4u)], !(global1.x == all(vec2<bool>(global2[_wgslsmith_index_u32(43736u, 4u)], global1.x))), global1.x);
    var var_0 = 0i;
    var var_1 = !all(!func_1());
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1326f) * -678f) + -557f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(665f))))), _wgslsmith_f_op_f32(func_3(~u_input.a.x, Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(131f, -2328f, 1277f, 1210f), vec4<f32>(-2114f, -410f, 142f, 131f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-191f, 1822f, 1000f, 2074f))), select(global1.zzw, vec3<bool>(global1.x, global2[_wgslsmith_index_u32(u_input.c, 4u)], global2[_wgslsmith_index_u32(u_input.c, 4u)]), !global1.wwy), vec4<f32>(_wgslsmith_f_op_f32(362f + -298f), -138f, -109f, _wgslsmith_div_f32(-321f, -668f)), false, _wgslsmith_f_op_f32(f32(-1f) * -1415f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-2175f, -1078f)))))))), 271f);
    let var_3 = select(vec3<bool>(select(global2[_wgslsmith_index_u32(28766u, 4u)], true, func_1().x | any(global1.zw)), select(true, true, false), true), func_1(), _wgslsmith_f_op_f32(func_3(0u, Struct_1(_wgslsmith_f_op_vec4_f32(trunc(var_2)), select(global1.ywy, vec3<bool>(global1.x, global1.x, global2[_wgslsmith_index_u32(u_input.c, 4u)]), global1.wxy), var_2, func_1().x, _wgslsmith_f_op_f32(func_3(17127u, Struct_1(var_2, vec3<bool>(false, false, global2[_wgslsmith_index_u32(u_input.a.x, 4u)]), var_2, false, 106f), var_2.ww))), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.x, var_2.x) + var_2.zw))) != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-642f)) - -146f));
    global3 = array<Struct_4, 27>();
    global1 = select(select(select(vec4<bool>(var_2.x != var_2.x, all(vec3<bool>(false, global1.x, var_3.x)), true, true), !vec4<bool>(global1.x, true, global2[_wgslsmith_index_u32(37083u, 4u)], var_3.x), select(vec4<bool>(true, true, true, true), vec4<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 4u)], true, false, false), true)), vec4<bool>(global1.x, global1.x || !global2[_wgslsmith_index_u32(u_input.c, 4u)], var_3.x, all(select(vec4<bool>(true, global2[_wgslsmith_index_u32(9213u, 4u)], true, true), vec4<bool>(global2[_wgslsmith_index_u32(4294967295u, 4u)], false, global1.x, global2[_wgslsmith_index_u32(4294967295u, 4u)]), global2[_wgslsmith_index_u32(2717u, 4u)]))), vec4<bool>((global1.x && var_3.x) || (global1.x | global1.x), global2[_wgslsmith_index_u32(reverseBits(u_input.a.x), 4u)], global2[_wgslsmith_index_u32(~_wgslsmith_div_u32(u_input.c, u_input.c), 4u)], true & (u_input.b.x == u_input.e))), !vec4<bool>(!(!global1.x), (u_input.c << (u_input.a.x % 32u)) <= (1u >> (u_input.c % 32u)), !(!global2[_wgslsmith_index_u32(u_input.c, 4u)]), any(!vec4<bool>(false, global1.x, false, global1.x))), any(vec2<bool>(true, false && all(global1.xw))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b, _wgslsmith_f_op_vec4_f32(-var_2), _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, -50377i << (u_input.c % 32u)), u_input.d.ww) | _wgslsmith_div_i32(u_input.b.x, ~(u_input.e ^ -1i)));
}


struct Struct_1 {
    a: vec3<bool>,
    b: vec4<i32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: bool,
    c: vec3<bool>,
    d: u32,
    e: vec3<bool>,
}

struct Struct_3 {
    a: bool,
    b: i32,
}

struct Struct_4 {
    a: bool,
    b: Struct_2,
    c: vec3<i32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec2<u32>,
    d: i32,
    e: u32,
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

var<private> global0: u32;

var<private> global1: array<f32, 10>;

var<private> global2: Struct_4;

var<private> global3: array<vec2<u32>, 8>;

var<private> global4: vec3<u32>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_4) -> u32 {
    let var_0 = arg_0.zw;
    let var_1 = !global2.d.a.x;
    let var_2 = select(false, all(arg_1.b.c), !(_wgslsmith_mod_i32(1i, 1i) > u_input.a.x));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.x - -874f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_0.x, global1[_wgslsmith_index_u32(u_input.b, 10u)], var_2)) * _wgslsmith_div_f32(arg_0.x, -413f)))));
    let var_4 = u_input.a.xz & ((-vec2<i32>(global2.c.x, u_input.a.x) & abs(global2.d.b.xy)) | firstLeadingBit(arg_1.c.xz));
    return 1u;
}

fn func_2(arg_0: u32) -> Struct_1 {
    let var_0 = u_input.a.x;
    global1 = array<f32, 10>();
    var var_1 = _wgslsmith_clamp_i32(~abs(-_wgslsmith_add_i32(var_0, global2.d.b.x)), u_input.d, firstLeadingBit(max(22014i, ~_wgslsmith_mult_i32(-27599i, 0i))));
    let var_2 = select(!vec3<bool>(any(global2.d.a.xx), true, global2.d.a.x), vec3<bool>(any(global2.b.e.xx), 1u == _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, global2.b.d, global4.x, u_input.c.x), vec4<u32>(global4.x, arg_0, arg_0, 1u)), func_3(vec4<f32>(global1[_wgslsmith_index_u32(u_input.c.x, 10u)], 1702f, global1[_wgslsmith_index_u32(arg_0, 10u)], global1[_wgslsmith_index_u32(arg_0, 10u)]), Struct_4(true, Struct_2(vec3<u32>(72535u, arg_0, u_input.c.x), global2.d.a.x, vec3<bool>(global2.a, false, false), global2.b.a.x, vec3<bool>(global2.a, global2.b.b, true)), vec3<i32>(var_0, var_0, var_0), Struct_1(global2.d.a, global2.d.b)))), _wgslsmith_f_op_f32(min(-1296f, 1f)) > global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(global2.b.a.x, 59514u) | u_input.c, reverseBits(vec2<u32>(0u, global4.x))), 10u)]), vec3<bool>(true, true, true));
    let var_3 = _wgslsmith_f_op_f32(944f + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1256f), _wgslsmith_f_op_f32(557f + global1[_wgslsmith_index_u32(arg_0, 10u)])))))) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(0u, 92747u), 10u)]))));
    return Struct_1(vec3<bool>(var_3, !var_3, global2.a), vec4<i32>(min(~(19182i ^ u_input.a.x), global2.c.x), ~(-u_input.a.x), 1i, _wgslsmith_sub_i32(reverseBits(i32(-1i) * -20543i), ~(global2.c.x >> (arg_0 % 32u)))));
}

fn func_1(arg_0: u32) -> f32 {
    let var_0 = func_2(3176u);
    let var_1 = !all(func_2((arg_0 ^ 4294967295u) >> (abs(1u) % 32u)).a.xx);
    let var_2 = ~(29722u & global2.b.a.x);
    let var_3 = 11218i;
    let var_4 = global2.b;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_mod_u32(_wgslsmith_sub_u32(u_input.c.x, global2.b.d), arg_0 & 19692u), 1u), 10u)] * global1[_wgslsmith_index_u32(8682u, 10u)]));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = global2.b.a.x;
    global4 = vec3<u32>(~92514u, countOneBits(global2.b.a.x), ~(~u_input.b));
    var var_0 = !select(true, all(select(vec3<bool>(false, false, global2.a), !vec3<bool>(global2.a, true, global2.b.c.x), select(global2.d.a, global2.d.a, true))), all(global2.d.a));
    let var_1 = Struct_3(true, global2.c.x);
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(~countOneBits(59402u)))) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(global1[_wgslsmith_index_u32(abs(1u), 10u)])), 1059f)));
    var var_3 = global2.d.b;
    global0 = reverseBits(27891u >> (0u % 32u));
    var var_4 = Struct_2(global2.b.a, var_1.a, select(select(!global2.d.a, vec3<bool>(false, var_1.a, var_1.a), all(global2.b.e.zy)), func_2(global4.x).a, select(vec3<bool>(true, true, var_1.a), !(!global2.b.c), true)), 4294967295u, !vec3<bool>(global2.b.c.x, var_1.a, any(!global2.b.e)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_u32(~(~79594u), 965u, ~1u));
}


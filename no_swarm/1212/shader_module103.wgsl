struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: u32,
    d: vec4<u32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec2<i32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 25>;

var<private> global1: array<i32, 17>;

var<private> global2: array<Struct_3, 31>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_2() -> i32 {
    global0 = array<bool, 25>();
    global2 = array<Struct_3, 31>();
    global0 = array<bool, 25>();
    var var_0 = 121f;
    var var_1 = 2933u;
    return 0i;
}

fn func_3(arg_0: i32) -> bool {
    var var_0 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-729f, 1f, _wgslsmith_f_op_f32(ceil(-674f)))))));
    var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-882f, var_0.x, -104f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_0.x, -586f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(303f, var_0.x, 431f) - vec3<f32>(var_0.x, -1477f, var_0.x)))) - _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-644f, var_0.x, var_0.x)))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_0.x, var_0.x, var_0.x))))))));
    let var_1 = select(vec4<bool>(global0[_wgslsmith_index_u32(0u, 25u)], false, any(vec2<bool>(false, global0[_wgslsmith_index_u32(4294967295u, 25u)])), all(vec3<bool>(global0[_wgslsmith_index_u32(u_input.c & 0u, 25u)], !global0[_wgslsmith_index_u32(u_input.d.x, 25u)], global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(1u, u_input.c), 25u)]))), !(!(!(!vec4<bool>(true, true, global0[_wgslsmith_index_u32(138201u, 25u)], true)))), abs(43922u) != u_input.d.x);
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_0.x)) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(var_0.x)))))));
    global0 = array<bool, 25>();
    return global0[_wgslsmith_index_u32(0u, 25u)];
}

fn func_1(arg_0: Struct_1) -> u32 {
    var var_0 = Struct_2(func_2(), Struct_1(select(abs(~arg_0.a), countOneBits(u_input.b.wx), vec2<bool>(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d.x, arg_0.a.x), arg_0.a), 25u)], true))));
    global2 = array<Struct_3, 31>();
    var var_1 = u_input.a;
    global2 = array<Struct_3, 31>();
    let var_2 = select(vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(var_0.a, 0i, global1[_wgslsmith_index_u32(u_input.d.x, 17u)]), select(vec3<i32>(0i, global1[_wgslsmith_index_u32(var_0.b.a.x, 17u)], -2147483647i), vec3<i32>(u_input.e.x, 2147483647i, var_0.a), vec3<bool>(true, true, global0[_wgslsmith_index_u32(var_0.b.a.x, 25u)]))) ^ u_input.a, u_input.e.x, -_wgslsmith_clamp_i32(select(16102i, -22224i, true), _wgslsmith_mult_i32(global1[_wgslsmith_index_u32(0u, 17u)], 1i), _wgslsmith_dot_vec2_i32(vec2<i32>(global1[_wgslsmith_index_u32(var_0.b.a.x, 17u)], -2147483647i), vec2<i32>(global1[_wgslsmith_index_u32(arg_0.a.x, 17u)], var_0.a))), global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(4294967295u ^ arg_0.a.x, var_0.b.a.x, _wgslsmith_mod_u32(~7213u, 33954u)), 17u)]), _wgslsmith_sub_vec4_i32(_wgslsmith_sub_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(37569i, -2147483647i, var_0.a, 1i), vec4<i32>(27208i, var_0.a, -1i, u_input.a)), vec4<i32>(-2147483647i, 5077i, u_input.e.x, 0i) ^ vec4<i32>(global1[_wgslsmith_index_u32(arg_0.a.x, 17u)], u_input.a, u_input.e.x, var_0.a)) ^ -vec4<i32>(u_input.e.x, var_0.a, 0i, global1[_wgslsmith_index_u32(53176u, 17u)]), ~vec4<i32>(i32(-1i) * -2147483647i, var_0.a & var_0.a, ~1i, firstTrailingBit(u_input.e.x))), select(vec4<bool>(global0[_wgslsmith_index_u32(14072u, 25u)] || any(vec4<bool>(global0[_wgslsmith_index_u32(u_input.c, 25u)], false, global0[_wgslsmith_index_u32(63456u, 25u)], false)), true, all(select(vec3<bool>(true, global0[_wgslsmith_index_u32(var_0.b.a.x, 25u)], global0[_wgslsmith_index_u32(var_0.b.a.x, 25u)]), vec3<bool>(true, global0[_wgslsmith_index_u32(35748u, 25u)], global0[_wgslsmith_index_u32(0u, 25u)]), false)), global0[_wgslsmith_index_u32(abs(~35775u), 25u)]), select(!(!vec4<bool>(global0[_wgslsmith_index_u32(arg_0.a.x, 25u)], false, global0[_wgslsmith_index_u32(0u, 25u)], false)), vec4<bool>(!global0[_wgslsmith_index_u32(var_0.b.a.x, 25u)], false, true, -21584i == global1[_wgslsmith_index_u32(28821u, 17u)]), func_3(-u_input.a)), vec4<bool>(true, 1i != var_0.a, any(vec4<bool>(false, global0[_wgslsmith_index_u32(arg_0.a.x, 25u)], false, global0[_wgslsmith_index_u32(u_input.d.x, 25u)])) != true, false)));
    return _wgslsmith_sub_u32(32116u, _wgslsmith_mod_u32(firstTrailingBit(arg_0.a.x ^ 0u), u_input.d.x)) ^ 4294967295u;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_3, 31>();
    var var_0 = !vec2<bool>(false, global0[_wgslsmith_index_u32((~u_input.d.x ^ (u_input.c | u_input.c)) & func_1(Struct_1(vec2<u32>(u_input.c, u_input.b.x))), 25u)]);
    var var_1 = global2[_wgslsmith_index_u32(10147u, 31u)];
    var var_2 = !select(!select(select(vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.c, 25u)], true, var_0.x), vec4<bool>(true, true, global0[_wgslsmith_index_u32(0u, 25u)], var_0.x), true), select(vec4<bool>(global0[_wgslsmith_index_u32(1u, 25u)], global0[_wgslsmith_index_u32(u_input.d.x, 25u)], global0[_wgslsmith_index_u32(32491u, 25u)], false), vec4<bool>(var_0.x, global0[_wgslsmith_index_u32(80796u, 25u)], false, true), true), select(vec4<bool>(false, var_0.x, false, global0[_wgslsmith_index_u32(18531u, 25u)]), vec4<bool>(var_0.x, true, false, true), false)), vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.b.x, 25u)], func_3(u_input.a) && true, var_0.x), !vec4<bool>(global1[_wgslsmith_index_u32(43418u, 17u)] <= 2147483647i, var_1.b.x <= 70585u, all(vec3<bool>(var_0.x, global0[_wgslsmith_index_u32(37137u, 25u)], global0[_wgslsmith_index_u32(var_1.a.a.x, 25u)])), all(vec2<bool>(var_0.x, true))));
    var_2 = select(!vec4<bool>(false, func_3(19759i), select(false, all(vec2<bool>(var_2.x, false)), true), false), !(!select(!vec4<bool>(false, var_2.x, false, global0[_wgslsmith_index_u32(4294967295u, 25u)]), select(vec4<bool>(var_0.x, false, var_2.x, var_0.x), vec4<bool>(true, false, false, false), vec4<bool>(true, var_2.x, var_0.x, global0[_wgslsmith_index_u32(1u, 25u)])), true)), var_2.x && true);
    let x = u_input.a;
    s_output = StorageBuffer(0i, _wgslsmith_f_op_f32(-540f * -1692f), firstTrailingBit(u_input.e), vec4<i32>(-u_input.a, ~global1[_wgslsmith_index_u32(~u_input.b.x, 17u)], ~abs(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(var_1.b.x, u_input.c), 17u)]), _wgslsmith_mod_i32(global1[_wgslsmith_index_u32(var_1.b.x, 17u)], global1[_wgslsmith_index_u32(17436u | (25396u | var_1.a.a.x), 17u)])));
}


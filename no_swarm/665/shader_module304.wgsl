struct Struct_1 {
    a: vec3<i32>,
    b: vec4<f32>,
    c: u32,
}

struct Struct_2 {
    a: u32,
    b: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec4<i32>,
    d: vec3<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 12>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_2() -> Struct_2 {
    let var_0 = Struct_2(1u, global0[_wgslsmith_index_u32(2229u, 12u)]);
    let var_1 = Struct_2(var_0.a, var_0.b);
    var var_2 = vec4<bool>(true, any(vec3<bool>(true, true, true)), false, any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true)));
    global0 = array<f32, 12>();
    let var_3 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(317f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -880f)))));
    return var_1;
}

fn func_1() -> Struct_2 {
    let var_0 = func_2();
    let var_1 = var_0;
    global0 = array<f32, 12>();
    let var_2 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(983f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global0[_wgslsmith_index_u32(47741u, 12u)], var_1.b))), var_1.b))), vec3<f32>(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32((u_input.b.x ^ u_input.b.x) ^ u_input.e.x, 12u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b - -861f)), -1029f));
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.b - var_1.b) + var_0.b);
    return var_1;
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_2, arg_3: Struct_1) -> bool {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(612f + _wgslsmith_f_op_f32(-arg_0.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_2.b * 1308f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_0.b - _wgslsmith_f_op_f32(-arg_1.b)), 996f)) + 148f));
    let var_1 = countOneBits(u_input.c.xx);
    var var_2 = (arg_0.a != _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 9978u, _wgslsmith_dot_vec2_u32(vec2<u32>(49607u, 13653u), u_input.e.yx)), firstLeadingBit(u_input.e))) && true;
    var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(vec2<f32>(1367f, 153f), arg_3.b.xw))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(749f, arg_0.b))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(arg_3.b.yw, vec2<f32>(_wgslsmith_f_op_f32(-arg_3.b.x), _wgslsmith_f_op_f32(574f + arg_1.b)), select(vec2<bool>(false, true), vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false)))))));
    let var_3 = ~7911u;
    return u_input.e.x < _wgslsmith_mod_u32(var_3, u_input.e.x & 41238u);
}

fn func_4(arg_0: bool) -> vec4<f32> {
    var var_0 = Struct_2(~9591u, _wgslsmith_f_op_f32(select(-473f, _wgslsmith_f_op_f32(floor(global0[_wgslsmith_index_u32(~26424u << (_wgslsmith_div_u32(3146u, 95180u) % 32u), 12u)])), true)));
    var var_1 = u_input.e;
    let var_2 = _wgslsmith_mult_i32(u_input.c.x, 49018i);
    let var_3 = Struct_1(u_input.c.wxz, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1000f, var_0.b, 859f, -645f))) - _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global0[_wgslsmith_index_u32(u_input.e.x, 12u)], -1831f, var_0.b, -232f)))), vec4<f32>(254f, _wgslsmith_f_op_f32(-var_0.b), _wgslsmith_f_op_f32(trunc(908f)), global0[_wgslsmith_index_u32(countOneBits(15169u), 12u)]))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-398f, 364f, var_0.b, 215f)))), select(!vec4<bool>(arg_0, arg_0, arg_0, false), select(vec4<bool>(true, false, true, arg_0), !vec4<bool>(true, true, arg_0, arg_0), false), vec4<bool>(func_3(Struct_2(0u, 462f), Struct_2(u_input.e.x, global0[_wgslsmith_index_u32(1u, 12u)]), Struct_2(41482u, global0[_wgslsmith_index_u32(var_1.x, 12u)]), Struct_1(vec3<i32>(var_2, 38185i, var_2), vec4<f32>(global0[_wgslsmith_index_u32(22080u, 12u)], var_0.b, var_0.b, global0[_wgslsmith_index_u32(1u, 12u)]), 642u)), true, arg_0, true)))), ~abs(var_0.a));
    let var_4 = 31863i;
    return var_3.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(vec3<i32>(u_input.a, 1i, -2147483647i), _wgslsmith_f_op_vec4_f32(func_4(func_3(Struct_2(~u_input.b.x, global0[_wgslsmith_index_u32(1u, 12u)]), func_1(), Struct_2(func_2().a, 1000f), Struct_1(_wgslsmith_sub_vec3_i32(vec3<i32>(-13445i, -42488i, -14436i), u_input.c.wzz), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1000f, -1000f, global0[_wgslsmith_index_u32(u_input.e.x, 12u)], global0[_wgslsmith_index_u32(0u, 12u)]))), 1u)))), u_input.e.x);
    let var_1 = var_0;
    let var_2 = _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(~u_input.e.zx, ~vec2<u32>(u_input.b.x, 2401u) | u_input.e.zx), select(_wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u >> (var_1.c % 32u), ~4294967295u), max(vec2<u32>(u_input.b.x, var_1.c), u_input.e.yz) & abs(u_input.b)), u_input.b, !select(select(vec2<bool>(true, true), vec2<bool>(true, true), true), vec2<bool>(true, true), false)));
    var var_3 = ~(~54760u);
    var_3 = var_0.c;
    let var_4 = ~_wgslsmith_add_i32(-(~u_input.a), var_0.a.x) | select(var_0.a.x, ~u_input.a, false);
    var_3 = 38665u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-404f - -483f), var_0.b.x) * _wgslsmith_f_op_vec2_f32(-var_0.b.xy))));
}


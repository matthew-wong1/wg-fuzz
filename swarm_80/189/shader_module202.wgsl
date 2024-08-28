struct Struct_1 {
    a: vec4<f32>,
    b: bool,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: bool,
    b: f32,
    c: Struct_1,
    d: bool,
    e: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 814f;

var<private> global1: array<Struct_2, 8> = array<Struct_2, 8>(Struct_2(36797u), Struct_2(37758u), Struct_2(0u), Struct_2(0u), Struct_2(1u), Struct_2(57908u), Struct_2(4294967295u), Struct_2(0u));

var<private> global2: array<f32, 13> = array<f32, 13>(-1000f, -268f, 458f, 1758f, 1000f, 1473f, 626f, -1052f, 147f, -566f, -1269f, 578f, 403f);

var<private> global3: vec4<u32>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> vec2<bool> {
    var var_0 = _wgslsmith_div_u32(global3.x >> (u_input.d % 32u), ~(~1u));
    let var_1 = true;
    var var_2 = Struct_2(global3.x);
    var var_3 = Struct_3(u_input.b.x >= ~_wgslsmith_dot_vec2_i32(select(u_input.b.zx, vec2<i32>(-26i, 1i), vec2<bool>(var_1, false)), u_input.b.xz), _wgslsmith_f_op_f32(613f * global2[_wgslsmith_index_u32(~(~firstLeadingBit(4294967295u)), 13u)]), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(u_input.c, 13u)])), -982f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-455f, global2[_wgslsmith_index_u32(u_input.c, 13u)]))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(global3.x, 13u)])))), var_1), true, ~u_input.b.x);
    var_0 = var_2.a;
    return select(vec2<bool>(!var_3.c.b, any(!vec3<bool>(var_1, false, var_3.a))), select(!vec2<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 13u)] < -207f, true), select(!(!vec2<bool>(var_3.d, var_3.c.b)), vec2<bool>(true, true), select(vec2<bool>(false, var_3.a), vec2<bool>(false, true), var_3.d)), !select(vec2<bool>(false, var_1), !vec2<bool>(true, var_3.c.b), select(vec2<bool>(var_1, true), vec2<bool>(var_1, true), vec2<bool>(var_1, var_3.d)))), true);
}

fn func_4(arg_0: u32, arg_1: i32, arg_2: Struct_3, arg_3: vec2<bool>) -> i32 {
    let var_0 = any(vec3<bool>(!(!(!arg_2.d)), func_3().x == (605f > _wgslsmith_f_op_f32(step(arg_2.c.a.x, global2[_wgslsmith_index_u32(u_input.a.x, 13u)]))), any(select(vec4<bool>(arg_2.d, true, arg_2.d, arg_3.x), select(vec4<bool>(false, true, arg_3.x, true), vec4<bool>(false, true, false, true), vec4<bool>(arg_3.x, false, arg_3.x, false)), any(vec2<bool>(false, arg_2.c.b))))));
    global0 = arg_2.c.a.x;
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_2.c.a.x)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(arg_2.b, global2[_wgslsmith_index_u32(arg_0, 13u)])), 661f)))), 669f, arg_2.c.a.x, _wgslsmith_f_op_f32(select(-1044f, 1f, all(!select(vec3<bool>(true, var_0, var_0), vec3<bool>(arg_3.x, true, false), vec3<bool>(false, arg_3.x, false))))));
    global0 = _wgslsmith_f_op_f32(floor(arg_2.b));
    let var_2 = Struct_2(arg_0);
    return arg_2.e ^ arg_1;
}

fn func_2() -> u32 {
    var var_0 = select(all(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, false)), all(vec2<bool>(false, true)))), !(u_input.d < ~1u), false);
    var var_1 = func_4(max(~firstLeadingBit(1u), _wgslsmith_dot_vec2_u32(abs(u_input.a.xx), vec2<u32>(1u, 1u))), -_wgslsmith_div_i32(u_input.b.x, 59358i), Struct_3(true, _wgslsmith_div_f32(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(80635u, 13u)] * 2044f), 1549f), Struct_1(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1000f, global2[_wgslsmith_index_u32(u_input.a.x, 13u)], -1347f, -859f), vec4<f32>(-190f, global2[_wgslsmith_index_u32(u_input.c, 13u)], 298f, -361f), true)), true), true, 0i), select(vec2<bool>(any(vec2<bool>(true, false)), false), select(select(vec2<bool>(true, false), vec2<bool>(true, false), false), func_3(), false), vec2<bool>(true, true))) & ~2732i;
    var var_2 = Struct_3(_wgslsmith_mult_u32(select(0u, _wgslsmith_dot_vec4_u32(vec4<u32>(52279u, 44611u, 0u, global3.x), vec4<u32>(4294967295u, 58083u, u_input.c, 1u)), true), 37571u) < 1u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(~global3.x, global3.x), 13u)])), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(global2[_wgslsmith_index_u32(4294967295u, 13u)], global2[_wgslsmith_index_u32(4294967295u, 13u)], 951f, global2[_wgslsmith_index_u32(45612u, 13u)]))), vec4<f32>(global2[_wgslsmith_index_u32(global3.x, 13u)], global2[_wgslsmith_index_u32(33154u, 13u)], global2[_wgslsmith_index_u32(global3.x, 13u)], global2[_wgslsmith_index_u32(global3.x, 13u)]))), any(select(vec2<bool>(true, true), vec2<bool>(false, false), false))), func_3().x, 0i);
    let var_3 = Struct_3(all(!(!(!vec2<bool>(var_2.d, true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-1043f, -1099f))))), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2[_wgslsmith_index_u32(3895u, 13u)], global2[_wgslsmith_index_u32(3016u, 13u)], global2[_wgslsmith_index_u32(global3.x, 13u)], var_2.c.a.x) - vec4<f32>(global2[_wgslsmith_index_u32(3653u, 13u)], -205f, var_2.b, -1198f)), _wgslsmith_f_op_vec4_f32(-var_2.c.a), select(vec4<bool>(true, var_2.a, true, true), vec4<bool>(false, false, true, true), false)))), var_2.c.b), var_2.a, -42449i);
    global2 = array<f32, 13>();
    return 4294967295u;
}

fn func_1(arg_0: vec3<bool>, arg_1: vec3<f32>, arg_2: vec2<i32>, arg_3: i32) -> i32 {
    var var_0 = all(arg_0);
    global3 = vec4<u32>(~u_input.c, func_2(), reverseBits(global3.x), firstLeadingBit(_wgslsmith_dot_vec4_u32((vec4<u32>(global3.x, 75200u, u_input.c, 0u) << (vec4<u32>(global3.x, global3.x, u_input.c, 0u) % vec4<u32>(32u))) >> (reverseBits(vec4<u32>(11531u, global3.x, 27162u, 1u)) % vec4<u32>(32u)), _wgslsmith_mod_vec4_u32(vec4<u32>(23206u, global3.x, 0u, 24241u), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a.x, 62760u, 1u, global3.x), vec4<u32>(u_input.a.x, u_input.d, 4294967295u, u_input.a.x))))));
    var var_1 = vec4<u32>(u_input.a.x, min(_wgslsmith_mod_u32(min(global3.x >> (4294967295u % 32u), 76474u), select(~global3.x, _wgslsmith_div_u32(4294967295u, global3.x), arg_0.x & true)), _wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(1u, global3.x, 0u, 0u)), ~vec4<u32>(19752u, 6486u, u_input.a.x, 1u)) ^ countOneBits(global3.x)), global3.x, u_input.c);
    let var_2 = arg_0.x;
    var var_3 = Struct_3(true, -2948f, Struct_1(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.x, 1351f, arg_1.x, global2[_wgslsmith_index_u32(global3.x, 13u)]))))), arg_0.x), !((210f >= _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(0u, 13u)] + global2[_wgslsmith_index_u32(1u, 13u)])) && all(select(vec4<bool>(true, var_2, true, arg_0.x), vec4<bool>(var_2, true, true, arg_0.x), false))), 61479i ^ func_4(~0u << (_wgslsmith_mult_u32(48601u, var_1.x) % 32u), u_input.b.x, Struct_3(20055i > arg_2.x, _wgslsmith_f_op_f32(select(global2[_wgslsmith_index_u32(0u, 13u)], arg_1.x, var_2)), Struct_1(vec4<f32>(-1452f, global2[_wgslsmith_index_u32(global3.x, 13u)], arg_1.x, 990f), var_2), !var_2, abs(u_input.b.x)), !arg_0.yy));
    return ~var_3.e;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<i32>(func_1(vec3<bool>(all(select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, true))), false, select(true, false, true) & false), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1403f), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(u_input.c, 13u)]), _wgslsmith_f_op_f32(f32(-1f) * -804f)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(global2[_wgslsmith_index_u32(u_input.d, 13u)], 1000f, global2[_wgslsmith_index_u32(20611u, 13u)]), vec3<f32>(-790f, 759f, -1959f)))), min(vec2<i32>(u_input.b.x, u_input.b.x & -28394i), firstLeadingBit(select(vec2<i32>(u_input.b.x, -11299i), u_input.b.zx, false))), u_input.b.x), -24808i, u_input.b.x);
    var var_1 = u_input.b.xz;
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + 143f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-983f, _wgslsmith_div_f32(1066f, global2[_wgslsmith_index_u32(global3.x, 13u)]))))));
    let var_2 = max(23002u, _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(global3.x, global3.x), vec2<u32>(0u >> (global3.x % 32u), global3.x)), ~firstLeadingBit(global3.x << (u_input.a.x % 32u))));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(1u, 13u)]));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(u_input.b.x, ~var_1.x, countOneBits(_wgslsmith_div_i32(i32(-1i) * -2147483647i, -2147483647i))));
}


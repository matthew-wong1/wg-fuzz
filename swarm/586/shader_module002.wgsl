struct Struct_1 {
    a: vec3<i32>,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
}

struct Struct_4 {
    a: u32,
    b: Struct_3,
    c: bool,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: vec4<u32>,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 3>;

var<private> global1: array<Struct_1, 15>;

var<private> global2: array<f32, 23>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2() -> f32 {
    global1 = array<Struct_1, 15>();
    var var_0 = global1[_wgslsmith_index_u32(u_input.b.x, 15u)];
    global2 = array<f32, 23>();
    global2 = array<f32, 23>();
    global2 = array<f32, 23>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-213f)));
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_1) -> vec3<bool> {
    var var_0 = _wgslsmith_f_op_f32(abs(global2[_wgslsmith_index_u32(~u_input.a, 23u)]));
    global0 = array<Struct_4, 3>();
    let var_1 = select(!(!vec4<bool>(global2[_wgslsmith_index_u32(u_input.b.x, 23u)] < 1259f, true, true, false)), select(vec4<bool>(true, all(vec4<bool>(false, false, true, true)) | false, all(vec2<bool>(true, false)), true), !vec4<bool>(13601u < u_input.b.x, true, any(vec2<bool>(true, true)), true), vec4<bool>(true, false, true, !all(vec4<bool>(false, true, false, false)))), !select(vec4<bool>(true, true, true, true), !select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, true), true), !(global2[_wgslsmith_index_u32(u_input.b.x, 23u)] != 676f)));
    let var_2 = vec2<bool>(any(vec2<bool>(var_1.x, var_1.x)), _wgslsmith_div_i32(-arg_1.a.x, _wgslsmith_dot_vec3_i32(vec3<i32>(1i, 1i, arg_1.a.x), arg_1.a) << (~u_input.b.x % 32u)) <= -arg_1.b);
    let var_3 = _wgslsmith_mod_vec4_i32(~(~(vec4<i32>(arg_0.x, arg_0.x, arg_0.x, arg_0.x) | countOneBits(vec4<i32>(2147483647i, arg_0.x, arg_1.b, arg_0.x)))), vec4<i32>(arg_1.b, (arg_1.b & arg_0.x) ^ arg_0.x, arg_1.a.x, 1i));
    return !select(select(select(!var_1.ywz, vec3<bool>(true, var_2.x, true), var_2.x), !vec3<bool>(false, var_1.x, var_1.x), var_1.yzx), var_1.wyw, select(!(!vec3<bool>(true, false, var_2.x)), vec3<bool>(any(var_1), true, true), var_1.xwy));
}

fn func_1(arg_0: Struct_4) -> bool {
    let var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-130f - global2[_wgslsmith_index_u32(arg_0.b.a.x, 23u)]) + 427f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(44312u, 23u)] * global2[_wgslsmith_index_u32(arg_0.b.a.x, 23u)])))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2()))));
    return any(vec3<bool>(!arg_0.c, true, (arg_0.d.a.x >= _wgslsmith_div_i32(-1i, arg_0.d.a.x)) && any(func_3(vec4<i32>(-2779i, arg_0.d.a.x, -4723i, arg_0.d.a.x), Struct_1(arg_0.d.a, -1i)))));
}

fn func_4(arg_0: u32, arg_1: vec3<i32>, arg_2: u32, arg_3: Struct_1) -> u32 {
    var var_0 = _wgslsmith_dot_vec2_u32(vec2<u32>(arg_0, arg_0) & u_input.b.yz, vec2<u32>(countOneBits(max(4294967295u, ~12951u)), firstTrailingBit(abs(arg_0))));
    let var_1 = _wgslsmith_f_op_f32(-996f + global2[_wgslsmith_index_u32(arg_0, 23u)]);
    var var_2 = func_3(vec4<i32>(arg_1.x & -firstTrailingBit(1i), 1i, _wgslsmith_dot_vec3_i32(-(~vec3<i32>(arg_3.b, -1i, -2147483647i)), ~vec3<i32>(-14521i, 1853i, 0i)), _wgslsmith_sub_i32(_wgslsmith_div_i32(1i, -26129i), arg_3.b)), global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(~vec2<u32>(arg_2, u_input.a), ~u_input.b.zz) >> (_wgslsmith_mult_u32(~_wgslsmith_sub_u32(4294967295u, 41668u), select(0u, arg_2 ^ arg_2, true)) % 32u), 15u)]).yy;
    let var_3 = Struct_2(global1[_wgslsmith_index_u32(u_input.a, 15u)]);
    var var_4 = _wgslsmith_dot_vec4_u32(select(firstTrailingBit(_wgslsmith_mult_vec4_u32(vec4<u32>(arg_2, arg_0, 24395u, 1u), vec4<u32>(u_input.a, 107760u, arg_2, u_input.a))), firstLeadingBit(vec4<u32>(3364u, u_input.a, 4294967295u, 0u)), var_2.x) ^ (vec4<u32>(_wgslsmith_mult_u32(arg_2, 4294967295u), arg_2, _wgslsmith_mod_u32(arg_2, 31465u), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 1u, u_input.a, u_input.a), vec4<u32>(u_input.b.x, arg_2, arg_2, 64076u))) << (vec4<u32>(1u, _wgslsmith_mod_u32(41761u, 10608u), _wgslsmith_sub_u32(u_input.a, arg_0), ~8584u) % vec4<u32>(32u))), ~vec4<u32>(1u, ~(~4294967295u), 42469u, u_input.a));
    return _wgslsmith_div_u32(~0u, _wgslsmith_sub_u32(~abs(~arg_2), 1u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~func_4(select(~select(4294967295u, u_input.b.x, true), u_input.a, func_1(global0[_wgslsmith_index_u32(countOneBits(30134u), 3u)])), countOneBits(~(~vec3<i32>(-5347i, 24657i, -2147483647i))), 1u, Struct_1(vec3<i32>(abs(2147483647i), 1i, i32(-1i) * -2147483647i), -22558i));
    global2 = array<f32, 23>();
    var var_1 = 19866u;
    let var_2 = ~(i32(-1i) * -(~(~(-55988i))));
    global0 = array<Struct_4, 3>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-539f, 527f, -1344f, global2[_wgslsmith_index_u32(0u, 23u)]) - vec4<f32>(global2[_wgslsmith_index_u32(var_0, 23u)], global2[_wgslsmith_index_u32(var_0, 23u)], -1206f, global2[_wgslsmith_index_u32(u_input.b.x, 23u)])))), _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(72402u, 23u)] - _wgslsmith_f_op_f32(floor(global2[_wgslsmith_index_u32(~(~u_input.b.x), 23u)]))), _wgslsmith_clamp_vec4_u32(max(countOneBits(vec4<u32>(5981u, u_input.a, 4294967295u, 4294967295u)), firstLeadingBit(~vec4<u32>(var_0, 23933u, 4294967295u, 37363u))), ~_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, 0u, 54583u, u_input.b.x), vec4<u32>(8867u, var_0, u_input.a, u_input.b.x)) >> (~(~vec4<u32>(4294967295u, 4294967295u, var_0, var_0)) % vec4<u32>(32u)), ~_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, var_0, var_0, u_input.a), ~vec4<u32>(1032u, 4294967295u, 76778u, u_input.b.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global2[_wgslsmith_index_u32(0u, 23u)]))) * global2[_wgslsmith_index_u32(var_0, 23u)]) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1347f - 1000f) + _wgslsmith_f_op_f32(min(-519f, global2[_wgslsmith_index_u32(0u, 23u)]))) * _wgslsmith_f_op_f32(func_2()))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-253f * global2[_wgslsmith_index_u32(var_0, 23u)]))));
}


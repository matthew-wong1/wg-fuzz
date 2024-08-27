struct Struct_1 {
    a: bool,
    b: i32,
    c: i32,
    d: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: vec4<u32> = vec4<u32>(4294967295u, 1u, 23890u, 1u);

var<private> global2: array<vec4<u32>, 11>;

var<private> global3: array<bool, 26>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3() -> vec4<bool> {
    global3 = array<bool, 26>();
    var var_0 = 0u;
    let var_1 = Struct_2(Struct_1(any(vec2<bool>(select(global3[_wgslsmith_index_u32(global1.x, 26u)], false, false), false)), 2147483647i, -7397i, _wgslsmith_add_vec2_u32(~vec2<u32>(global1.x, 4294967295u), min(vec2<u32>(global1.x, 37454u), reverseBits(vec2<u32>(global1.x, 73878u))))), Struct_1(!(!any(vec2<bool>(false, false))), -7605i, 1214i << (_wgslsmith_dot_vec4_u32(global2[_wgslsmith_index_u32(~global1.x, 11u)], firstLeadingBit(global2[_wgslsmith_index_u32(18672u, 11u)])) % 32u), ~global1.xz));
    var_0 = 4294967295u;
    global0 = any(select(select(!select(vec3<bool>(true, var_1.b.a, false), vec3<bool>(global3[_wgslsmith_index_u32(37422u, 26u)], global3[_wgslsmith_index_u32(1u, 26u)], false), vec3<bool>(true, global3[_wgslsmith_index_u32(18480u, 26u)], true)), vec3<bool>(true, true, true), false), vec3<bool>(true, var_1.a.a, var_1.b.a), all(vec4<bool>(any(vec3<bool>(var_1.a.a, false, global3[_wgslsmith_index_u32(global1.x, 26u)])), true, !global3[_wgslsmith_index_u32(45850u, 26u)], select(var_1.a.a, true, var_1.b.a)))));
    return vec4<bool>(any(!select(select(vec3<bool>(var_1.a.a, var_1.a.a, true), vec3<bool>(global3[_wgslsmith_index_u32(43768u, 26u)], global3[_wgslsmith_index_u32(var_1.a.d.x, 26u)], false), vec3<bool>(global3[_wgslsmith_index_u32(18364u, 26u)], global3[_wgslsmith_index_u32(global1.x, 26u)], var_1.a.a)), vec3<bool>(true, var_1.b.a, global3[_wgslsmith_index_u32(1806u, 26u)]), select(vec3<bool>(false, global3[_wgslsmith_index_u32(global1.x, 26u)], var_1.a.a), vec3<bool>(var_1.a.a, true, false), vec3<bool>(true, true, true)))), any(!(!select(vec3<bool>(global3[_wgslsmith_index_u32(4294967295u, 26u)], global3[_wgslsmith_index_u32(4294967295u, 26u)], true), vec3<bool>(global3[_wgslsmith_index_u32(global1.x, 26u)], var_1.a.a, false), vec3<bool>(false, true, var_1.a.a)))), any(!(!select(vec4<bool>(var_1.a.a, var_1.a.a, false, var_1.a.a), vec4<bool>(global3[_wgslsmith_index_u32(4294967295u, 26u)], false, true, global3[_wgslsmith_index_u32(1u, 26u)]), global3[_wgslsmith_index_u32(87419u, 26u)]))), var_1.b.a);
}

fn func_4(arg_0: vec4<f32>, arg_1: vec3<u32>, arg_2: Struct_2, arg_3: vec4<bool>) -> i32 {
    let var_0 = arg_1.x;
    var var_1 = var_0;
    var var_2 = _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(max(_wgslsmith_clamp_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(arg_2.a.b, -28785i), vec2<i32>(26960i, arg_2.a.b)), vec2<i32>(14690i, -2147483647i), vec2<i32>(arg_2.b.b, arg_2.a.c)), select(vec2<i32>(0i, 1i), abs(vec2<i32>(8779i, arg_2.b.b)), select(vec2<bool>(arg_3.x, global3[_wgslsmith_index_u32(1u, 26u)]), arg_3.yz, arg_3.zx))), vec2<i32>(~(-2248i), u_input.a & _wgslsmith_clamp_i32(arg_2.b.c, -1i, arg_2.b.b)), vec2<i32>(-1i) * -min(vec2<i32>(arg_2.b.b, 26347i), vec2<i32>(arg_2.a.b, arg_2.a.b))), -vec2<i32>(select(0i, -16492i, any(arg_3.xy)), ~(arg_2.a.b >> (4985u % 32u))));
    global0 = arg_2.a.a || true;
    var_1 = 102315u;
    return arg_2.b.c;
}

fn func_2(arg_0: vec3<u32>) -> vec2<bool> {
    let var_0 = Struct_1(true, u_input.a, u_input.a, abs(select(select(global1.zx, global1.wy, false), reverseBits(vec2<u32>(1u, global1.x)), vec2<bool>(true, global3[_wgslsmith_index_u32(24184u, 26u)]))) & _wgslsmith_mult_vec2_u32(arg_0.zx, ~(vec2<u32>(arg_0.x, global1.x) >> (vec2<u32>(24024u, global1.x) % vec2<u32>(32u)))));
    let var_1 = _wgslsmith_sub_u32(~(~_wgslsmith_clamp_u32(select(18341u, 91646u, global3[_wgslsmith_index_u32(1u, 26u)]), 37680u, ~175777u)), abs(_wgslsmith_mod_u32(_wgslsmith_mult_u32(16396u | global1.x, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, global1.x, global1.x, 4294967295u), vec4<u32>(arg_0.x, 1722u, 0u, 39176u))), reverseBits(firstTrailingBit(1u)))));
    let var_2 = true;
    var var_3 = func_4(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, -1370f, 759f, 1269f) + vec4<f32>(-1000f, 1042f, 1812f, -1078f)))))), _wgslsmith_mod_vec3_u32(arg_0, ~vec3<u32>(35129u, 1u, 23619u) ^ ~vec3<u32>(arg_0.x, 0u, var_1)), Struct_2(var_0, Struct_1(any(select(vec3<bool>(global3[_wgslsmith_index_u32(1u, 26u)], var_0.a, false), vec3<bool>(var_2, true, false), var_2)), u_input.a, ~(i32(-1i) * -1i), vec2<u32>(global1.x, arg_0.x))), select(select(!vec4<bool>(true, false, false, var_2), select(select(vec4<bool>(true, var_0.a, false, true), vec4<bool>(false, true, global3[_wgslsmith_index_u32(arg_0.x, 26u)], true), true), vec4<bool>(var_2, var_0.a, true, var_2), 23399i < var_0.c), !vec4<bool>(true, var_0.a, true, var_0.a)), select(vec4<bool>(false, false, global3[_wgslsmith_index_u32(~0u, 26u)], true), select(select(vec4<bool>(var_2, var_0.a, true, false), vec4<bool>(global3[_wgslsmith_index_u32(var_0.d.x, 26u)], var_0.a, global3[_wgslsmith_index_u32(4294967295u, 26u)], var_0.a), false), !vec4<bool>(var_0.a, false, var_2, var_0.a), false || global3[_wgslsmith_index_u32(4294967295u, 26u)]), !func_3()), true));
    var var_4 = Struct_2(var_0, Struct_1(func_3().x, (u_input.a >> (var_0.d.x % 32u)) ^ -1i, ~(u_input.a << (var_1 % 32u)), vec2<u32>(~var_1, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, arg_0.x, var_1, var_1), global2[_wgslsmith_index_u32(4294967295u, 11u)])) >> (vec2<u32>(~global1.x, 48490u) % vec2<u32>(32u))));
    return !(!(!select(select(vec2<bool>(true, var_0.a), vec2<bool>(true, true), true), func_3().yw, var_4.b.c <= -1i)));
}

fn func_1() -> u32 {
    let var_0 = 0u;
    global0 = all(select(vec2<bool>(!global3[_wgslsmith_index_u32(global1.x, 26u)], _wgslsmith_add_i32(15716i, 1i) == -u_input.a), func_2(vec3<u32>(~4294967295u, _wgslsmith_div_u32(var_0, 4294967295u), _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, global1.x), global1.xx))), (2147483647i == _wgslsmith_add_i32(u_input.a, 2147483647i)) && !(!global3[_wgslsmith_index_u32(4294967295u, 26u)])));
    var var_1 = global1.yzw;
    var var_2 = firstTrailingBit(_wgslsmith_dot_vec2_i32(-vec2<i32>(1i, u_input.a), vec2<i32>(-1i) * -select(vec2<i32>(1463i, u_input.a), vec2<i32>(25973i, u_input.a), false)));
    var var_3 = ~631i;
    return _wgslsmith_dot_vec4_u32(global2[_wgslsmith_index_u32(1u, 11u)], vec4<u32>(~global1.x, ~1u, ~(~(~global1.x)), _wgslsmith_clamp_u32(~countOneBits(0u), var_0, _wgslsmith_clamp_u32(~var_0, _wgslsmith_dot_vec4_u32(global2[_wgslsmith_index_u32(var_1.x, 11u)], global2[_wgslsmith_index_u32(var_1.x, 11u)]), var_1.x))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = !global3[_wgslsmith_index_u32(min(func_1(), global1.x), 26u)];
    let var_0 = ~_wgslsmith_mod_vec3_u32(global1.wyw, _wgslsmith_add_vec3_u32(_wgslsmith_add_vec3_u32(global1.yzw, vec3<u32>(34808u, global1.x, global1.x)), vec3<u32>(global1.x, 4294967295u, global1.x ^ global1.x)));
    let x = u_input.a;
    s_output = StorageBuffer(~(vec2<i32>(u_input.a & u_input.a, u_input.a & u_input.a) & firstTrailingBit(vec2<i32>(u_input.a, -1i))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1000f))) * _wgslsmith_f_op_f32(select(-205f, _wgslsmith_f_op_f32(trunc(1f)), select(true, true, true)))));
}


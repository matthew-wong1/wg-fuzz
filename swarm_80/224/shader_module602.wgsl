struct Struct_1 {
    a: i32,
    b: vec2<f32>,
}

struct Struct_2 {
    a: i32,
    b: vec3<bool>,
    c: bool,
    d: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<f32>,
    c: vec4<f32>,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 16>;

var<private> global1: vec4<bool> = vec4<bool>(false, true, false, true);

var<private> global2: f32;

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_2) -> bool {
    let var_0 = (4294967295u & firstLeadingBit(_wgslsmith_dot_vec4_u32(~vec4<u32>(8465u, arg_0.d, 0u, 91592u), vec4<u32>(51384u, arg_0.d, 1u, arg_0.d)))) != select(_wgslsmith_add_u32(_wgslsmith_add_u32(abs(arg_0.d), 64730u), 102002u), global0[_wgslsmith_index_u32(34736u << (~arg_0.d % 32u), 16u)], all(select(!vec4<bool>(arg_0.b.x, arg_0.b.x, false, true), !vec4<bool>(false, arg_0.c, arg_0.c, false), vec4<bool>(arg_0.c, arg_0.b.x, arg_0.c, true))));
    global0 = array<u32, 16>();
    let var_1 = select(~_wgslsmith_mod_u32(firstTrailingBit(firstLeadingBit(60862u)), ~(~arg_0.d)), global0[_wgslsmith_index_u32(countOneBits(_wgslsmith_div_u32(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(36425u, 16u)], 4206u), vec2<u32>(global0[_wgslsmith_index_u32(4294967295u, 16u)], 4294967295u)), 1u), 16u)], _wgslsmith_dot_vec4_u32(~vec4<u32>(arg_0.d, 81805u, global0[_wgslsmith_index_u32(0u, 16u)], 32754u), max(vec4<u32>(arg_0.d, arg_0.d, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(arg_0.d, 16u)], 16u)], 4294967295u), vec4<u32>(0u, 52008u, global0[_wgslsmith_index_u32(12201u, 16u)], 12597u))))), 16u)], abs(~_wgslsmith_dot_vec4_i32(u_input.a, vec4<i32>(arg_0.a, arg_0.a, -2147483647i, u_input.a.x))) > -select(arg_0.a & 23271i, ~u_input.a.x, !arg_0.b.x));
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(vec4<f32>(1000f, 1000f, -1021f, -1000f), vec4<f32>(1555f, 177f, 2373f, -705f))))))) * _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(811f, _wgslsmith_f_op_f32(min(1030f, -892f)), _wgslsmith_div_f32(-1017f, -501f), 1f)))));
    let var_3 = arg_0;
    return false;
}

fn func_2(arg_0: vec2<bool>, arg_1: vec3<u32>, arg_2: u32, arg_3: bool) -> vec4<i32> {
    var var_0 = vec2<bool>(!all(select(select(vec2<bool>(true, arg_0.x), vec2<bool>(global1.x, false), false), vec2<bool>(true, true), func_3(Struct_2(u_input.a.x, vec3<bool>(arg_0.x, false, arg_0.x), arg_3, arg_1.x)))), true);
    var_0 = select(!(!(!(!arg_0))), vec2<bool>(func_3(Struct_2(~(-4477i), vec3<bool>(true, global1.x, true), all(global1.zyw), 1u)), !(!func_3(Struct_2(u_input.a.x, global1.yzw, true, arg_1.x)))), !vec2<bool>(any(arg_0), all(global1.xxw)));
    let var_1 = -u_input.a.x;
    let var_2 = Struct_1(var_1, _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1f, 1f))));
    let var_3 = var_2;
    return u_input.a;
}

fn func_1(arg_0: vec3<u32>, arg_1: vec2<i32>, arg_2: f32) -> vec2<i32> {
    let var_0 = arg_2;
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-270f, -113f) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(1347f, -667f))) - _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1000f, 754f))), vec2<f32>(arg_2, var_0)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-521f, -2117f)) - _wgslsmith_div_vec2_f32(vec2<f32>(arg_2, var_0), vec2<f32>(-325f, -409f))))) * vec2<f32>(-1275f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)));
    var var_2 = vec2<u32>(max(~(~_wgslsmith_dot_vec3_u32(arg_0, vec3<u32>(global0[_wgslsmith_index_u32(arg_0.x, 16u)], arg_0.x, arg_0.x))), 0u), 61241u);
    var var_3 = _wgslsmith_clamp_vec3_i32(vec3<i32>(~_wgslsmith_add_i32(32602i & arg_1.x, _wgslsmith_mod_i32(-24751i, arg_1.x)), _wgslsmith_dot_vec4_i32(func_2(global1.yw, select(arg_0, arg_0, global1.ywz), ~4294967295u, all(global1.zw)), u_input.a), max(u_input.a.x, 1i)), _wgslsmith_clamp_vec3_i32(~(~(-u_input.a.yzx)), -_wgslsmith_mod_vec3_i32(firstTrailingBit(u_input.a.yxw), func_2(global1.wx, arg_0, var_2.x, global1.x).wwx), vec3<i32>(~(~u_input.a.x), _wgslsmith_sub_i32(2147483647i, func_2(vec2<bool>(global1.x, true), vec3<u32>(32856u, arg_0.x, 4294967295u), 32649u, global1.x).x), u_input.a.x)), (func_2(global1.yz, ~arg_0, 98648u, true).ywx << (select(~arg_0, arg_0, global1.x) % vec3<u32>(32u))) & firstTrailingBit(vec3<i32>(9109i, -2147483647i >> (arg_0.x % 32u), -2147483647i & arg_1.x)));
    let var_4 = Struct_1(_wgslsmith_dot_vec2_i32(var_3.zz, (-var_3.yy & firstLeadingBit(vec2<i32>(var_3.x, 9734i))) << (~arg_0.zx % vec2<u32>(32u))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.x, _wgslsmith_f_op_f32(max(875f, var_0))) * vec2<f32>(_wgslsmith_f_op_f32(-2481f + -1302f), _wgslsmith_f_op_f32(trunc(var_1.x))))));
    return var_3.xz;
}

fn func_4(arg_0: Struct_2, arg_1: vec2<i32>) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-517f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1000f)))));
    global0 = array<u32, 16>();
    var var_1 = firstTrailingBit(0u);
    var_1 = countOneBits(max(_wgslsmith_dot_vec2_u32(~firstLeadingBit(vec2<u32>(arg_0.d, 0u)), (vec2<u32>(0u, global0[_wgslsmith_index_u32(1u, 16u)]) ^ vec2<u32>(arg_0.d, 65573u)) << (_wgslsmith_mod_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(global0[_wgslsmith_index_u32(32181u, 16u)], arg_0.d)) % vec2<u32>(32u))), arg_0.d));
    var var_2 = Struct_1(-24020i, vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -960f), _wgslsmith_f_op_f32(f32(-1f) * -1000f)));
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = abs(u_input.a.wwz ^ -u_input.a.zxz);
    var var_1 = func_4(Struct_2(-u_input.a.x, global1.xwz, global1.x, 1u), func_1(vec3<u32>(0u, 1u, ~(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 16u)], 16u)], 16u)])), _wgslsmith_mult_vec2_i32(vec2<i32>(~2147483647i, 0i & u_input.a.x), abs(vec2<i32>(var_0.x, 1i))), -506f));
    let var_2 = Struct_1(82221i, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-741f, 1473f)) - _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-486f, 840f))))))));
    let var_3 = abs(~1u);
    var_1 = func_4(Struct_2(_wgslsmith_dot_vec4_i32(u_input.a, ~u_input.a), func_4(Struct_2(var_1.a & u_input.a.x, vec3<bool>(global1.x, var_1.c, true), !var_1.b.x, var_1.d), func_1(vec3<u32>(global0[_wgslsmith_index_u32(var_1.d, 16u)], 37259u, global0[_wgslsmith_index_u32(var_3, 16u)]) & vec3<u32>(27833u, 1u, 4294967295u), abs(u_input.a.zx), _wgslsmith_div_f32(var_2.b.x, var_2.b.x))).b, var_1.b.x, 42666u), vec2<i32>(-1i) * -vec2<i32>(u_input.a.x, func_1(vec3<u32>(0u, var_1.d, 6023u), vec2<i32>(-54470i, -2147483647i), var_2.b.x).x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_2.b.x)))) - _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_2.b))))), vec3<f32>(-703f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(-252f)))), 1f), _wgslsmith_f_op_f32(-1478f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(1278f)), -1605f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1942f, var_2.b.x, -1656f, 814f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1063f, var_2.b.x, 1451f, 245f)), select(vec4<bool>(var_1.b.x, var_1.b.x, false, var_1.c), vec4<bool>(true, global1.x, var_1.c, false), true))))), min(~var_1.d, ~max(global0[_wgslsmith_index_u32(20956u, 16u)], 55363u)) & _wgslsmith_dot_vec2_u32(vec2<u32>(26970u, 1u), _wgslsmith_clamp_vec2_u32(vec2<u32>(1u, 1u), ~vec2<u32>(32046u, var_1.d), _wgslsmith_mod_vec2_u32(vec2<u32>(23475u, 89353u), vec2<u32>(var_3, 4294967295u)))), _wgslsmith_mod_u32(1u, var_1.d));
}


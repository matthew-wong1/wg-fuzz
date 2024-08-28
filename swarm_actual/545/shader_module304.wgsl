struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: u32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: f32,
    d: vec3<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: Struct_1;

var<private> global2: bool = true;

var<private> global3: vec2<i32>;

var<private> global4: array<u32, 4>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: i32) -> vec2<i32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f));
    global2 = true;
    var var_1 = Struct_2(!vec2<bool>(true & any(vec4<bool>(true, true, global1.a.x, global1.a.x)), any(global1.a.zx)));
    var var_2 = !var_1.a.x;
    var var_3 = Struct_1(global1.a);
    return ~firstTrailingBit(-reverseBits(u_input.b.zy | vec2<i32>(u_input.b.x, global3.x)));
}

fn func_2(arg_0: vec3<u32>, arg_1: vec2<u32>) -> Struct_2 {
    global0 = (abs(-_wgslsmith_dot_vec3_i32(u_input.b, u_input.b)) ^ _wgslsmith_div_i32(-1577i << (1u % 32u), u_input.a)) ^ -45398i;
    let var_0 = _wgslsmith_dot_vec3_u32(~(~countOneBits(arg_0)) >> (arg_0 % vec3<u32>(32u)), vec3<u32>(~global4[_wgslsmith_index_u32(1u, 4u)], 0u, arg_1.x));
    let var_1 = (i32(-1i) * -_wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(global3.x, global3.x), u_input.b.yy), func_3(u_input.e))) | global3.x;
    var var_2 = global1.a.x;
    global2 = any(select(select(global1.a, !global1.a, vec3<bool>(false, global1.a.x, true)), vec3<bool>(global1.a.x | true, global1.a.x | true, all(vec3<bool>(global1.a.x, global1.a.x, true))), global1.a)) != global1.a.x;
    return Struct_2(vec2<bool>(true, global1.a.x));
}

fn func_4(arg_0: Struct_2, arg_1: i32) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1414f)) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1558f) * _wgslsmith_f_op_f32(trunc(-669f))), _wgslsmith_f_op_f32(-1098f * _wgslsmith_f_op_f32(abs(-1064f)))))));
    var var_1 = Struct_1(select(!global1.a, select(select(select(vec3<bool>(arg_0.a.x, arg_0.a.x, global1.a.x), vec3<bool>(arg_0.a.x, true, true), global1.a.x), select(global1.a, vec3<bool>(global1.a.x, arg_0.a.x, false), true), arg_0.a.x && true), !select(vec3<bool>(global1.a.x, arg_0.a.x, false), vec3<bool>(true, true, global1.a.x), false), select(!vec3<bool>(false, arg_0.a.x, arg_0.a.x), global1.a, global1.a)), vec3<bool>(true, arg_0.a.x, arg_0.a.x & true)));
    let var_2 = ~countOneBits(u_input.b);
    var var_3 = Struct_1(select(global1.a, var_1.a, ~abs(4294967295u) < max(~349u, reverseBits(u_input.c))));
    let var_4 = _wgslsmith_mult_vec2_u32(_wgslsmith_sub_vec2_u32(~(vec2<u32>(10402u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(38126u, 4u)], 4u)]) | vec2<u32>(u_input.d, global4[_wgslsmith_index_u32(18523u, 4u)])), _wgslsmith_sub_vec2_u32(select(_wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(global4[_wgslsmith_index_u32(62582u, 4u)], u_input.d)), select(vec2<u32>(1u, global4[_wgslsmith_index_u32(0u, 4u)]), vec2<u32>(u_input.c, 1u), vec2<bool>(var_3.a.x, true)), var_3.a.yx), ~_wgslsmith_sub_vec2_u32(vec2<u32>(32161u, u_input.c), vec2<u32>(u_input.d, 4294967295u)))), vec2<u32>(1u, 1u));
    return 29916u;
}

fn func_1() -> f32 {
    var var_0 = Struct_2(!vec2<bool>(true, global1.a.x));
    var var_1 = !(func_4(func_2(~vec3<u32>(4294967295u, 38118u, 13594u), ~vec2<u32>(39275u, u_input.c)), _wgslsmith_dot_vec2_i32(~vec2<i32>(u_input.a, 1i), vec2<i32>(64361i, 16001i))) != (~u_input.d << (~global4[_wgslsmith_index_u32(max(21025u, 4294967295u), 4u)] % 32u)));
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(607f, -944f, 1000f) * vec3<f32>(1223f, -924f, 550f)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1861f, 120f, -543f) - vec3<f32>(664f, 2204f, 1308f)) + vec3<f32>(-362f, 958f, 1668f)))));
    var var_3 = abs(~u_input.c);
    var var_4 = -6811i;
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(var_2.x)), _wgslsmith_f_op_f32(step(116f, _wgslsmith_f_op_f32(f32(-1f) * -1189f))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_1()))) - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -631f), 1332f)))))));
    var var_1 = Struct_1(global1.a);
    let var_2 = all(select(!select(vec2<bool>(false, global1.a.x), !vec2<bool>(global1.a.x, true), var_1.a.zy), vec2<bool>(any(vec2<bool>(false, true)), all(global1.a.xz) & (var_0 <= -2251f)), true));
    let var_3 = select(select(select(select(vec4<bool>(true, true, global1.a.x, true), vec4<bool>(global1.a.x, true, true, false), !vec4<bool>(var_1.a.x, false, true, var_1.a.x)), !select(vec4<bool>(global1.a.x, true, var_1.a.x, false), vec4<bool>(var_2, true, var_1.a.x, false), vec4<bool>(var_2, true, var_2, global1.a.x)), all(vec4<bool>(false, false, true, var_2))), vec4<bool>(true, global1.a.x, any(select(vec4<bool>(false, var_1.a.x, false, global1.a.x), vec4<bool>(true, var_2, true, var_1.a.x), vec4<bool>(var_1.a.x, true, true, true))), true), select(vec4<bool>(191f < var_0, !var_2, true, any(vec2<bool>(var_2, false))), select(vec4<bool>(var_1.a.x, var_2, var_2, var_1.a.x), select(vec4<bool>(false, global1.a.x, false, false), vec4<bool>(true, true, true, false), global1.a.x), !vec4<bool>(global1.a.x, true, false, false)), vec4<bool>(!var_1.a.x, func_2(vec3<u32>(u_input.c, u_input.d, 16524u), vec2<u32>(u_input.d, 4294967295u)).a.x, global1.a.x, true))), select(select(!select(vec4<bool>(false, var_2, true, var_2), vec4<bool>(var_2, global1.a.x, var_2, false), true), !(!vec4<bool>(var_1.a.x, true, global1.a.x, true)), select(!vec4<bool>(true, global1.a.x, false, false), select(vec4<bool>(global1.a.x, var_1.a.x, global1.a.x, var_2), vec4<bool>(true, var_1.a.x, true, false), true), true)), !select(vec4<bool>(true, var_2, true, true), select(vec4<bool>(false, global1.a.x, true, var_2), vec4<bool>(var_2, false, global1.a.x, true), global1.a.x), true == var_2), true), !(!(!(u_input.d >= 36539u))));
    var var_4 = func_2(~(_wgslsmith_mod_vec3_u32(min(vec3<u32>(global4[_wgslsmith_index_u32(4294967295u, 4u)], 5390u, 35775u), vec3<u32>(u_input.d, u_input.c, 0u)), _wgslsmith_mult_vec3_u32(vec3<u32>(global4[_wgslsmith_index_u32(4294967295u, 4u)], 0u, u_input.c), vec3<u32>(global4[_wgslsmith_index_u32(u_input.d, 4u)], global4[_wgslsmith_index_u32(u_input.c, 4u)], 1u))) ^ vec3<u32>(~48002u, 54919u, 1u)), _wgslsmith_mult_vec2_u32(vec2<u32>(global4[_wgslsmith_index_u32(firstLeadingBit(abs(57943u)), 4u)], ~reverseBits(19422u)), vec2<u32>(1u, max(4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d, global4[_wgslsmith_index_u32(u_input.d, 4u)]), vec2<u32>(98712u, u_input.d))))));
    let x = u_input.a;
    s_output = StorageBuffer(global4[_wgslsmith_index_u32(abs(_wgslsmith_mult_u32(~global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(8643u, 4u)], 4u)] | ~u_input.d, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(_wgslsmith_sub_u32(1u, u_input.d), 4u)], 4u)] << (_wgslsmith_sub_u32(u_input.c, 0u) % 32u))), 4u)], _wgslsmith_mod_u32(firstLeadingBit(_wgslsmith_add_u32(84549u, 1u)), u_input.d) << (func_4(Struct_2(vec2<bool>(var_3.x, var_1.a.x)), -1i) % 32u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1324f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-171f, -760f, var_0) * vec3<f32>(-736f, -1083f, 770f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(424f, 2493f, var_0)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 + var_0))))));
}


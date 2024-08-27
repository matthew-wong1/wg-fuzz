struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: u32,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<bool>,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 13>;

var<private> global1: array<bool, 15>;

var<private> global2: u32 = 12142u;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec3<bool>, arg_1: vec2<bool>, arg_2: vec4<i32>) -> f32 {
    global2 = 4294967295u;
    global1 = array<bool, 15>();
    let var_0 = arg_0.x;
    let var_1 = vec3<i32>(_wgslsmith_sub_i32(2147483647i, ~(-70415i)), 35896i, firstLeadingBit(arg_2.x));
    var var_2 = global0[_wgslsmith_index_u32(max(firstTrailingBit(1330u) << (countOneBits(_wgslsmith_clamp_u32(1u, 1u, ~u_input.b)) % 32u), u_input.a.x), 13u)];
    return _wgslsmith_f_op_f32(select(1224f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_div_f32(965f, _wgslsmith_f_op_f32(-1697f * var_2.a.a)) - var_2.c.c.a))), var_0));
}

fn func_2(arg_0: vec4<i32>) -> Struct_2 {
    var var_0 = Struct_3(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec3<bool>(false, global1[_wgslsmith_index_u32(u_input.a.x, 15u)], global1[_wgslsmith_index_u32(u_input.b, 15u)]), vec2<bool>(true, true), vec4<i32>(arg_0.x, 35524i, 30394i, arg_0.x) | vec4<i32>(4329i, arg_0.x, arg_0.x, -14424i))))), !vec3<bool>(true || !global1[_wgslsmith_index_u32(864u, 15u)], true, false), Struct_2(arg_0, _wgslsmith_mult_u32(30844u, ~_wgslsmith_clamp_u32(74036u, 4294967295u, 0u)), Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-595f, 409f), 240f, all(vec3<bool>(true, global1[_wgslsmith_index_u32(4294967295u, 15u)], global1[_wgslsmith_index_u32(u_input.b, 15u)])))))));
    let var_1 = _wgslsmith_dot_vec3_i32(vec3<i32>(var_0.c.a.x, var_0.c.a.x, arg_0.x), vec3<i32>(arg_0.x, -(~(-2147483647i)), select(~44511i, ~var_0.c.a.x, !global1[_wgslsmith_index_u32(1u, 15u)]))) & firstTrailingBit(var_0.c.a.x);
    var_0 = global0[_wgslsmith_index_u32(~(~u_input.b), 13u)];
    let var_2 = _wgslsmith_mod_vec2_u32(vec2<u32>(1u ^ abs(countOneBits(var_0.c.b)), _wgslsmith_div_u32(~1u, var_0.c.b)), u_input.a);
    let var_3 = Struct_4(var_0.c);
    return Struct_2(~reverseBits(vec4<i32>(var_0.c.a.x, -1i, ~2147483647i, -6433i)), ~(~_wgslsmith_dot_vec2_u32(firstLeadingBit(u_input.a), var_2)), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_3.a.c.a), var_3.a.c.a))));
}

fn func_1(arg_0: vec2<i32>, arg_1: u32) -> u32 {
    global1 = array<bool, 15>();
    global0 = array<Struct_3, 13>();
    global0 = array<Struct_3, 13>();
    var var_0 = func_2(abs(abs(vec4<i32>(arg_0.x, ~arg_0.x, ~(-16031i), arg_0.x))));
    var var_1 = Struct_2(var_0.a, 4294967295u, var_0.c);
    return _wgslsmith_div_u32(arg_1, var_0.b);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = u_input.b;
    let var_0 = true & all(vec2<bool>(true, !(true || global1[_wgslsmith_index_u32(u_input.b, 15u)])));
    global2 = _wgslsmith_sub_u32(77679u, max(reverseBits(func_1(vec2<i32>(-1i, -54312i), 1u)), _wgslsmith_mult_u32(~select(u_input.b, 4294967295u, var_0), _wgslsmith_div_u32(_wgslsmith_div_u32(u_input.a.x, 43195u), ~u_input.b))));
    global2 = _wgslsmith_mult_u32((u_input.b | ~_wgslsmith_mod_u32(1u, 74178u)) ^ u_input.a.x, u_input.a.x);
    let var_1 = vec4<bool>(true, var_0, all(vec4<bool>(true, false, true, true)), select(true, var_0, !global1[_wgslsmith_index_u32(select(~u_input.a.x, 1u, var_0), 15u)]));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(-(~21149i), _wgslsmith_mod_i32(firstTrailingBit(-33270i), 19369i), 1i, _wgslsmith_div_i32(-1i, 8415i)) | ~vec4<i32>(1i, 1i, 1i, 1i));
}


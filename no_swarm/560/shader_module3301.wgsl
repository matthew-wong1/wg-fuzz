struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: f32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 5> = array<vec2<f32>, 5>(vec2<f32>(-2223f, 110f), vec2<f32>(-101f, -280f), vec2<f32>(-110f, 274f), vec2<f32>(-1000f, 481f), vec2<f32>(-2150f, 1000f));

var<private> global1: array<vec2<i32>, 17>;

var<private> global2: array<vec2<u32>, 13> = array<vec2<u32>, 13>(vec2<u32>(46569u, 4294967295u), vec2<u32>(81667u, 4523u), vec2<u32>(4294967295u, 52429u), vec2<u32>(48271u, 3154u), vec2<u32>(1u, 4294967295u), vec2<u32>(25483u, 14251u), vec2<u32>(27169u, 1u), vec2<u32>(54859u, 38865u), vec2<u32>(0u, 66795u), vec2<u32>(4146u, 74485u), vec2<u32>(0u, 1u), vec2<u32>(69280u, 46891u), vec2<u32>(4294967295u, 0u));

var<private> global3: array<Struct_1, 21>;

var<private> global4: Struct_1 = Struct_1(true);

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> i32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1922f, -1044f, _wgslsmith_f_op_f32(-1125f + 349f), -720f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(136f, -1904f, 1236f, 2160f)))), vec4<bool>(global4.a, global4.a, any(vec2<bool>(true, global4.a)), all(vec2<bool>(global4.a, global4.a))))) + _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(min(2355f, -374f)), _wgslsmith_f_op_f32(select(-835f, -549f, global4.a)), 1f, _wgslsmith_f_op_f32(ceil(936f)))))) * _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2226f) - -1048f), _wgslsmith_f_op_f32(f32(-1f) * -1273f), -139f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(931f + 183f) + _wgslsmith_f_op_f32(-718f - -823f))))));
    global1 = array<vec2<i32>, 17>();
    let var_1 = ~_wgslsmith_add_vec3_u32(~vec3<u32>(u_input.a.x, 31749u, u_input.a.x) << (_wgslsmith_div_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), u_input.a), abs(vec3<u32>(9498u, u_input.a.x, u_input.a.x))) % vec3<u32>(32u)), u_input.a);
    let var_2 = i32(-1i) * -23568i;
    let var_3 = vec2<bool>(select(var_0.x == _wgslsmith_f_op_f32(f32(-1f) * -175f), !global4.a, any(select(vec3<bool>(false, true, true), vec3<bool>(global4.a, true, global4.a), !vec3<bool>(global4.a, true, false)))), true);
    return -(2147483647i >> (u_input.a.x % 32u));
}

fn func_2(arg_0: u32, arg_1: vec4<bool>, arg_2: vec3<u32>, arg_3: Struct_1) -> bool {
    var var_0 = arg_3;
    var var_1 = arg_1.wz;
    global0 = array<vec2<f32>, 5>();
    var_0 = Struct_1(true);
    var var_2 = -vec4<i32>(func_3(), -u_input.d, abs(u_input.d), max(max(~(-1i), -2147483647i), _wgslsmith_sub_i32(-1i, 18602i)));
    return !any(!arg_1.yxy);
}

fn func_1(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: bool) -> i32 {
    let var_0 = _wgslsmith_div_i32(firstTrailingBit(min(abs(-32279i), -12146i)), select(0i, u_input.b, func_2(~7842u, vec4<bool>(global4.a, true, true, false), u_input.a, global3[_wgslsmith_index_u32(firstLeadingBit(1u), 21u)]))) >> (30603u % 32u);
    let var_1 = -u_input.c;
    global3 = array<Struct_1, 21>();
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1216f, -1588f, -240f, 114f))), vec4<f32>(245f, 1000f, 1621f, -154f))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(-2212f, -744f, -712f, -1000f) - vec4<f32>(-699f, -936f, 1229f, 2126f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 828f, 352f, -1999f)))), vec4<f32>(_wgslsmith_div_f32(-2165f, -130f), _wgslsmith_f_op_f32(f32(-1f) * -203f), _wgslsmith_f_op_f32(-2039f + 1451f), -699f))));
    global2 = array<vec2<u32>, 13>();
    return ~(-4283i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    let var_1 = _wgslsmith_mod_vec2_i32(firstTrailingBit(vec2<i32>(2147483647i, u_input.d)), global1[_wgslsmith_index_u32(reverseBits(_wgslsmith_sub_u32(38860u, u_input.a.x)) | u_input.a.x, 17u)] ^ _wgslsmith_clamp_vec2_i32(vec2<i32>(1i >> (u_input.a.x % 32u), max(-3890i, u_input.c)), firstLeadingBit(vec2<i32>(2147483647i, u_input.b)), vec2<i32>(~0i, reverseBits(50531i))));
    let var_2 = Struct_1(_wgslsmith_add_i32(countOneBits(func_1(vec3<i32>(-1i, var_1.x, -48773i), global3[_wgslsmith_index_u32(14132u, 21u)], true)), -1i) > u_input.b);
    var var_3 = !(!vec2<bool>((true | var_2.a) & false, (u_input.a.x < 0u) || !var_2.a));
    let var_4 = _wgslsmith_sub_u32(firstLeadingBit(max(7034u, 17884u)), ~((countOneBits(u_input.a.x) | 4294967295u) >> (max(1u, ~77772u) % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_i32(-(i32(-1i) * -var_1.x), u_input.b), vec4<i32>(min(_wgslsmith_dot_vec4_i32(~vec4<i32>(u_input.c, -2147483647i, var_1.x, -2147483647i), abs(vec4<i32>(2147483647i, 2147483647i, -1i, u_input.b))), ~_wgslsmith_mod_i32(0i, -22452i)), _wgslsmith_sub_i32(-1i, firstLeadingBit(u_input.c) ^ reverseBits(u_input.b)), var_1.x, _wgslsmith_mod_i32(func_1(-vec3<i32>(u_input.b, var_1.x, -33811i), var_2, var_3.x), -u_input.c)), _wgslsmith_f_op_f32(f32(-1f) * -1524f), ~(~firstTrailingBit(~vec4<u32>(u_input.a.x, 4294967295u, 4294967295u, 3940u))));
}


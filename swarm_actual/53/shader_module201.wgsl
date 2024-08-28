struct Struct_1 {
    a: bool,
    b: f32,
    c: u32,
}

struct Struct_2 {
    a: i32,
    b: vec2<bool>,
    c: i32,
    d: u32,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<u32, 2>;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> i32 {
    global0 = global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 2u)] >> (_wgslsmith_sub_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(1u, 2u)], 55759u, 0u, 79894u), vec4<u32>(0u, 52116u, 4294967295u, 0u)) >> (~1u % 32u), 2u)], 2u)], global1[_wgslsmith_index_u32(abs(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 2u)], 2u)]), 2u)]) % 32u), 2u)], 2u)];
    let var_0 = vec2<f32>(-229f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1470f), -1667f)) * _wgslsmith_f_op_f32(-562f * -307f)) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -500f))))));
    global1 = array<u32, 2>();
    let var_1 = select(vec2<bool>(true, true), select(vec2<bool>(true, false), select(!select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false)), select(vec2<bool>(false, false), vec2<bool>(true, true), true), all(select(vec2<bool>(true, false), vec2<bool>(false, false), false))), true), !select(select(vec2<bool>(false, true), select(vec2<bool>(false, false), vec2<bool>(true, false), true), vec2<bool>(true, false)), select(select(vec2<bool>(true, false), vec2<bool>(true, false), true), select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true)), true), vec2<bool>(any(vec3<bool>(true, false, false)), any(vec2<bool>(true, true)))));
    let var_2 = min(global1[_wgslsmith_index_u32(~4118u, 2u)], countOneBits(global1[_wgslsmith_index_u32(min(~24529u, ~_wgslsmith_dot_vec2_u32(vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(13422u, 2u)], 2u)], global1[_wgslsmith_index_u32(0u, 2u)]), vec2<u32>(1u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(85329u, 2u)], 2u)]))), 2u)]));
    return u_input.a;
}

fn func_2(arg_0: bool, arg_1: Struct_2, arg_2: Struct_1) -> vec4<u32> {
    global0 = min(4294967295u, arg_1.d);
    var var_0 = _wgslsmith_div_i32(0i, arg_1.a);
    var var_1 = vec2<i32>(func_3(), _wgslsmith_sub_i32(~(-12526i), -1i));
    var var_2 = vec4<u32>(arg_1.d, firstTrailingBit(arg_1.d & 51107u), 15202u, max(global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(0u, 2u)], 2u)], 1u)) & ~(~_wgslsmith_add_vec4_u32(vec4<u32>(0u, arg_1.d, 20267u, 4294967295u) >> (vec4<u32>(arg_2.c, 50222u, arg_1.d, arg_2.c) % vec4<u32>(32u)), _wgslsmith_add_vec4_u32(vec4<u32>(45931u, arg_1.d, 0u, 1u), vec4<u32>(84305u, 1u, 0u, 1u))));
    let var_3 = Struct_1(!(arg_1.e.x | arg_1.e.x), -432f, select(4294967295u, arg_1.d, !(_wgslsmith_f_op_f32(arg_2.b - 1095f) > -426f)));
    return vec4<u32>(~(~select(4840u, ~global1[_wgslsmith_index_u32(var_3.c, 2u)], arg_2.a)), ~23370u, (~(4294967295u ^ arg_2.c) ^ ~firstTrailingBit(var_2.x)) ^ 14725u, _wgslsmith_mod_u32(1u, var_3.c));
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_2, arg_2: vec2<bool>) -> Struct_1 {
    let var_0 = arg_1;
    let var_1 = select(vec3<i32>(_wgslsmith_div_i32(_wgslsmith_sub_i32(~0i, 2147483647i), arg_0.x), arg_0.x, _wgslsmith_clamp_i32(~(-90171i), 2147483647i, ~countOneBits(u_input.a))), firstLeadingBit(_wgslsmith_add_vec3_i32(vec3<i32>(arg_1.c, func_3(), 1334i), arg_0.zyz)), select(vec3<bool>(var_0.b.x, select(any(vec3<bool>(false, arg_1.e.x, arg_1.e.x)), all(vec4<bool>(true, var_0.b.x, true, true)), false), true), !select(vec3<bool>(true, true, true), vec3<bool>(arg_1.b.x, var_0.e.x, arg_1.b.x), vec3<bool>(true, arg_2.x, true)), var_0.b.x));
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -460f), _wgslsmith_f_op_f32(-237f - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-985f - _wgslsmith_f_op_f32(-1000f * 1120f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -917f)))))), _wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(241f - -522f) * 2267f), -475f))));
    let var_3 = arg_1.d;
    global1 = array<u32, 2>();
    return Struct_1(!(!(!var_0.e.x)), var_2.x, 1u);
}

fn func_1(arg_0: Struct_1) -> u32 {
    global0 = ~4294967295u;
    let var_0 = func_4(countOneBits(-(vec4<i32>(-4379i, u_input.a, -2147483647i, u_input.a) >> (vec4<u32>(39678u, 1u, arg_0.c, 0u) % vec4<u32>(32u)))) << (select(reverseBits(vec4<u32>(arg_0.c, 74731u, global1[_wgslsmith_index_u32(1u, 2u)], 4294967295u)) ^ vec4<u32>(0u, 5517u, arg_0.c, global1[_wgslsmith_index_u32(4294967295u, 2u)]), firstTrailingBit(func_2(arg_0.a, Struct_2(u_input.a, vec2<bool>(true, true), u_input.a, 0u, vec2<bool>(true, arg_0.a)), arg_0)), select(vec4<bool>(arg_0.a, arg_0.a, arg_0.a, arg_0.a), vec4<bool>(true, false, false, arg_0.a), u_input.a < u_input.a)) % vec4<u32>(32u)), Struct_2(9581i, select(vec2<bool>(true, !arg_0.a), vec2<bool>(true, arg_0.a), vec2<bool>(arg_0.a, arg_0.a == true)), 2147483647i, _wgslsmith_mult_u32(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 2u)], 2u)], 2u)], 2u)], 2u)], 2u)], 2u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(arg_0.c, 2u)], 2u)] & global1[_wgslsmith_index_u32(arg_0.c, 2u)]) << (_wgslsmith_clamp_u32(firstLeadingBit(1u), select(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(arg_0.c, 2u)], 2u)], 14150u, arg_0.a), ~23050u) % 32u), select(select(!vec2<bool>(arg_0.a, arg_0.a), !vec2<bool>(arg_0.a, true), !vec2<bool>(arg_0.a, true)), vec2<bool>(any(vec2<bool>(false, false)), select(false, arg_0.a, true)), select(vec2<bool>(false, true), !vec2<bool>(arg_0.a, true), true))), !select(vec2<bool>(arg_0.a, arg_0.a), select(select(vec2<bool>(true, arg_0.a), vec2<bool>(true, arg_0.a), arg_0.a), vec2<bool>(false, arg_0.a), !arg_0.a), !vec2<bool>(false, arg_0.a)));
    var var_1 = global1[_wgslsmith_index_u32(1u, 2u)];
    var var_2 = vec2<bool>(arg_0.a, arg_0.a);
    var var_3 = _wgslsmith_div_u32(2261u >> (abs(0u) % 32u), global1[_wgslsmith_index_u32(1u, 2u)] & ~(countOneBits(var_0.c) << (firstLeadingBit(arg_0.c) % 32u)));
    return arg_0.c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_sub_vec2_u32(vec2<u32>(global1[_wgslsmith_index_u32(abs(1u), 2u)], ~0u), vec2<u32>(1u, 78753u)) ^ countOneBits(countOneBits(vec2<u32>(func_1(Struct_1(true, 418f, global1[_wgslsmith_index_u32(86274u, 2u)])), 62921u)));
    var var_1 = !vec3<bool>(true || (_wgslsmith_div_f32(-284f, -275f) > _wgslsmith_f_op_f32(round(-794f))), true, select((global1[_wgslsmith_index_u32(0u, 2u)] ^ global1[_wgslsmith_index_u32(51100u, 2u)]) < _wgslsmith_dot_vec4_u32(vec4<u32>(0u, var_0.x, 75005u, global1[_wgslsmith_index_u32(0u, 2u)]), vec4<u32>(global1[_wgslsmith_index_u32(27607u, 2u)], 19479u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_0.x, 2u)], 2u)], 39951u)), !all(vec2<bool>(false, false)), !select(true, false, true)));
    var var_2 = Struct_2(-firstLeadingBit(u_input.a), vec2<bool>(var_1.x, all(vec4<bool>(true, all(vec3<bool>(var_1.x, var_1.x, var_1.x)), true, 4294967295u < var_0.x))), _wgslsmith_dot_vec4_i32(vec4<i32>(-46160i, abs(45538i | u_input.a), min(-u_input.a, 2147483647i), -61425i), vec4<i32>(2147483647i, 1i, 8919i, -2147483647i >> (global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 2u)], 2u)] % 32u)) ^ abs(select(vec4<i32>(u_input.a, -63059i, u_input.a, -1640i), vec4<i32>(13888i, u_input.a, u_input.a, u_input.a), vec4<bool>(false, var_1.x, true, true)))), firstTrailingBit(global1[_wgslsmith_index_u32(~(~(var_0.x ^ var_0.x)), 2u)]), select(select(select(var_1.zz, !var_1.xx, !var_1.yy), var_1.yz, true), vec2<bool>(false, reverseBits(u_input.a) >= u_input.a), select(!var_1.x, true, false)));
    let var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1220f, -168f, 222f, -965f)) * vec4<f32>(1484f, -633f, -1832f, 391f)), _wgslsmith_div_vec4_f32(vec4<f32>(-975f, -605f, 1000f, 463f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(451f, 1055f, -1012f, 1469f))), !(!vec4<bool>(true, var_1.x, true, true)))) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1000f, -845f, -515f, 1627f)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-165f, -1208f, -1003f, 735f), vec4<f32>(-927f, 1331f, -406f, -258f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1597f, 1410f, 396f, 238f) + vec4<f32>(-823f, -563f, 191f, 1000f))), select(!vec4<bool>(var_1.x, var_2.b.x, var_2.b.x, var_2.b.x), select(vec4<bool>(var_2.b.x, false, false, var_1.x), vec4<bool>(true, var_1.x, false, var_2.b.x), vec4<bool>(true, var_1.x, false, var_1.x)), true)))) - vec4<f32>(1000f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-384f - 1000f)), -1646f), _wgslsmith_f_op_f32(-913f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1103f, 885f)) - _wgslsmith_f_op_f32(271f * 616f))), _wgslsmith_f_op_f32(531f * _wgslsmith_f_op_f32(abs(635f)))));
    let var_4 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_3))), _wgslsmith_f_op_vec4_f32(var_3 * var_3))) + var_3);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_4.x) - _wgslsmith_f_op_f32(-var_3.x)), -528f, -463f))));
}


struct Struct_1 {
    a: vec4<u32>,
    b: vec4<f32>,
    c: vec3<u32>,
    d: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 15> = array<vec3<f32>, 15>(vec3<f32>(-232f, -530f, 1796f), vec3<f32>(142f, -1783f, -1518f), vec3<f32>(-199f, 2121f, 422f), vec3<f32>(-949f, 1043f, 1091f), vec3<f32>(-1344f, -299f, -1018f), vec3<f32>(1690f, -114f, -276f), vec3<f32>(-521f, 339f, -430f), vec3<f32>(-170f, -114f, 1000f), vec3<f32>(-539f, 424f, 848f), vec3<f32>(-409f, 2359f, 1000f), vec3<f32>(710f, 494f, -923f), vec3<f32>(-141f, -658f, 532f), vec3<f32>(-920f, 1020f, 727f), vec3<f32>(1353f, -317f, 1163f), vec3<f32>(-940f, 141f, 973f));

var<private> global1: array<i32, 11>;

var<private> global2: array<vec2<bool>, 15>;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: f32) -> u32 {
    global2 = array<vec2<bool>, 15>();
    let var_0 = vec2<u32>(4309u, ~(~(~(~arg_0.c.x))));
    var var_1 = true;
    global0 = array<vec3<f32>, 15>();
    var var_2 = u_input.a.xz >> (reverseBits(~vec2<u32>(u_input.b.x, arg_1.x) << ((_wgslsmith_mult_vec2_u32(arg_1.yz, arg_0.c.zy) & _wgslsmith_sub_vec2_u32(vec2<u32>(31970u, 81060u), var_0)) % vec2<u32>(32u))) % vec2<u32>(32u));
    return ~abs((var_0.x & select(0u, u_input.b.x, false)) & _wgslsmith_mod_u32(19955u, _wgslsmith_add_u32(1u, u_input.b.x)));
}

fn func_2(arg_0: f32, arg_1: vec2<f32>, arg_2: f32) -> Struct_1 {
    global2 = array<vec2<bool>, 15>();
    global1 = array<i32, 11>();
    var var_0 = vec4<i32>(62006i, _wgslsmith_mult_i32(-22743i, -37589i >> (~u_input.b.x % 32u)), 0i, ~(u_input.a.x << (func_3(Struct_1(vec4<u32>(48707u, 79455u, u_input.b.x, u_input.b.x), vec4<f32>(-504f, arg_0, arg_0, arg_1.x), vec3<u32>(u_input.b.x, 67123u, u_input.b.x), -620f), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.b.x, 7186u, 4294967295u), vec3<u32>(0u, u_input.b.x, 4294967295u)), _wgslsmith_f_op_f32(ceil(-340f))) % 32u)));
    let var_1 = vec3<bool>(!all(vec3<bool>(true, true, true)), any(!vec3<bool>(any(global2[_wgslsmith_index_u32(1u, 15u)]), true, true)), all(vec4<bool>(true, true, true, true)));
    var_0 = ~_wgslsmith_clamp_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, -1i, u_input.a.x, 29543i), vec4<i32>(2147483647i, -8233i, -2147483647i, 45402i)), _wgslsmith_add_i32(u_input.a.x, var_0.x), -var_0.x, select(1i, -1i, var_1.x)), _wgslsmith_sub_vec4_i32(~vec4<i32>(global1[_wgslsmith_index_u32(u_input.b.x, 11u)], u_input.a.x, 0i, u_input.a.x), reverseBits(vec4<i32>(-1i, u_input.a.x, global1[_wgslsmith_index_u32(10968u, 11u)], global1[_wgslsmith_index_u32(11912u, 11u)])))), vec4<i32>(~(-var_0.x), -2147483647i, global1[_wgslsmith_index_u32(34090u, 11u)] & ~0i, 33642i), vec4<i32>(_wgslsmith_sub_i32(u_input.a.x, 1082i), -1i, global1[_wgslsmith_index_u32(0u, 11u)], ~1i) | -(vec4<i32>(-38141i, u_input.a.x, -1i, var_0.x) | vec4<i32>(-7490i, -1i, u_input.a.x, 2147483647i)));
    return Struct_1(~select(~select(vec4<u32>(u_input.b.x, u_input.b.x, 4294967295u, 1u), vec4<u32>(0u, u_input.b.x, 0u, 1u), true), abs(~vec4<u32>(u_input.b.x, 51630u, 17110u, 4294967295u)), any(var_1)), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(1233f)))), -113f, 463f, -1338f), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2, _wgslsmith_f_op_f32(189f * arg_2), arg_2, 659f) * _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(160f, 1000f, 664f, arg_2)), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.x, -253f, arg_1.x, arg_0) + vec4<f32>(arg_1.x, 3032f, 1746f, 1000f))))))), firstTrailingBit(countOneBits(select(vec3<u32>(u_input.b.x, u_input.b.x, 0u) | vec3<u32>(46426u, u_input.b.x, 1u), vec3<u32>(72930u, u_input.b.x, 1u), any(var_1)))), _wgslsmith_f_op_f32(step(-1386f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -394f))))));
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: vec4<bool>, arg_3: i32) -> Struct_1 {
    let var_0 = Struct_1(~(~arg_1.a), vec4<f32>(_wgslsmith_div_f32(func_2(-1000f, _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.d, arg_1.d) * arg_1.b.zw), _wgslsmith_f_op_f32(f32(-1f) * -336f)).b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_1.b.x)) * _wgslsmith_div_f32(2059f, arg_1.d))), -536f, -2633f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_1.d))), _wgslsmith_f_op_f32(-arg_1.b.x)))), ~countOneBits(arg_1.a.zxx), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_1.d))))));
    var var_1 = vec3<f32>(_wgslsmith_div_f32(func_2(var_0.b.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_1.b.xw)), var_0.d).d, _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.b.x), -847f)))), 446f, -865f);
    let var_2 = Struct_1(max(abs(vec4<u32>(4294967295u, var_0.c.x, 9834u, var_0.a.x)), abs(var_0.a)) >> (func_2(_wgslsmith_f_op_f32(min(-300f, arg_1.b.x)), var_0.b.wz, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -941f))).a % vec4<u32>(32u)), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_1.x), -440f, true)), -1222f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1646f)), arg_1.d) * vec4<f32>(354f, -937f, _wgslsmith_f_op_f32(645f * var_1.x), _wgslsmith_f_op_f32(var_1.x * 134f))), var_0.c, 1345f);
    global1 = array<i32, 11>();
    let var_3 = Struct_1(abs(arg_1.a), var_2.b, ~reverseBits(vec3<u32>(7641u, 1u, var_2.a.x)), var_1.x);
    return func_2(arg_1.b.x, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(var_3.b.xw)) * _wgslsmith_f_op_vec2_f32(var_0.b.zx * _wgslsmith_f_op_vec2_f32(-var_3.b.yw))), 1135f);
}

fn func_1() -> Struct_1 {
    return func_4(firstTrailingBit(u_input.a.x), func_2(-149f, _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(795f, 537f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -702f))), vec4<bool>(!all(vec2<bool>(true, true)), any(vec3<bool>(false, u_input.b.x < u_input.b.x, true)), select(any(vec2<bool>(false, false)), all(vec4<bool>(true, false, false, false)), true), select(firstTrailingBit(global1[_wgslsmith_index_u32(u_input.b.x, 11u)]), global1[_wgslsmith_index_u32(firstTrailingBit(u_input.b.x), 11u)], false) > ~(~u_input.a.x)), u_input.a.x);
}

fn func_5(arg_0: Struct_1) -> Struct_1 {
    global0 = array<vec3<f32>, 15>();
    global1 = array<i32, 11>();
    global2 = array<vec2<bool>, 15>();
    var var_0 = u_input.a.x;
    let var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_0.d), -308f));
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<i32, 11>();
    global1 = array<i32, 11>();
    let var_0 = firstTrailingBit(countOneBits(u_input.a.zz));
    let var_1 = func_5(func_1());
    let var_2 = Struct_1(vec4<u32>(_wgslsmith_dot_vec2_u32(var_1.c.yx, vec2<u32>(70927u, _wgslsmith_dot_vec2_u32(var_1.c.xz, vec2<u32>(u_input.b.x, u_input.b.x)))), _wgslsmith_mult_u32(u_input.b.x, _wgslsmith_sub_u32(1u, 0u)), var_1.c.x, 6844u), var_1.b, max(~vec3<u32>(u_input.b.x, firstLeadingBit(4294967295u), _wgslsmith_mult_u32(var_1.c.x, u_input.b.x)), ~(~select(vec3<u32>(0u, u_input.b.x, 56983u), var_1.c, false))), 996f);
    let var_3 = 1u;
    let var_4 = vec2<u32>(var_1.a.x, 4294967295u);
    let x = u_input.a;
    s_output = StorageBuffer(1174f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(739f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.b.x - var_1.d)))));
}


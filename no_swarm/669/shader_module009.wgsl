struct Struct_1 {
    a: vec2<u32>,
    b: f32,
    c: i32,
    d: bool,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: f32,
    d: u32,
    e: bool,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: Struct_4,
    b: Struct_4,
    c: u32,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 32> = array<vec4<i32>, 32>(vec4<i32>(-19290i, -1i, 2147483647i, 1i), vec4<i32>(16500i, 1i, -1i, 5610i), vec4<i32>(0i, i32(-2147483648), -1i, 1i), vec4<i32>(28722i, i32(-2147483648), 2147483647i, i32(-2147483648)), vec4<i32>(15093i, 1i, 11258i, 50387i), vec4<i32>(0i, -1i, -3543i, 35464i), vec4<i32>(-1i, -18643i, 2147483647i, -9729i), vec4<i32>(0i, -1i, 1i, 0i), vec4<i32>(-1i, 1i, 27036i, 0i), vec4<i32>(0i, 2147483647i, -1i, 0i), vec4<i32>(-1i, -9477i, 2147483647i, -13714i), vec4<i32>(-1i, 0i, -55364i, 2147483647i), vec4<i32>(0i, 1i, -47055i, 35323i), vec4<i32>(53547i, 8423i, 2147483647i, 0i), vec4<i32>(1i, 2147483647i, 40713i, -40738i), vec4<i32>(-28224i, -13953i, -1i, -15887i), vec4<i32>(2147483647i, 45852i, -6482i, 35045i), vec4<i32>(42887i, 2194i, 2147483647i, -31188i), vec4<i32>(0i, -1i, 1i, 1i), vec4<i32>(13655i, 2147483647i, 1i, -1955i), vec4<i32>(-21529i, 48253i, -1i, i32(-2147483648)), vec4<i32>(-566i, 1i, 24527i, -21059i), vec4<i32>(13939i, -17956i, 1i, i32(-2147483648)), vec4<i32>(-45881i, 18235i, 10254i, 18915i), vec4<i32>(-1i, -30904i, 0i, -4746i), vec4<i32>(56691i, 42334i, i32(-2147483648), 14898i), vec4<i32>(-9540i, 2147483647i, -627i, 2147483647i), vec4<i32>(2147483647i, -1i, 1281i, 2147483647i), vec4<i32>(0i, 7235i, i32(-2147483648), i32(-2147483648)), vec4<i32>(41468i, 1i, 2147483647i, -1i), vec4<i32>(8329i, -1i, 2147483647i, -20779i), vec4<i32>(23517i, 1i, 11081i, -12151i));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: vec2<u32>, arg_1: i32, arg_2: vec3<bool>) -> vec2<i32> {
    var var_0 = Struct_4(Struct_1(vec2<u32>(1u, firstTrailingBit(arg_0.x)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(1000f)), _wgslsmith_div_f32(-935f, -771f))), 1f)), u_input.a, true, u_input.b));
    let var_1 = true;
    let var_2 = Struct_2(Struct_1(~_wgslsmith_add_vec2_u32(~arg_0, vec2<u32>(var_0.a.a.x, var_0.a.a.x)), _wgslsmith_f_op_f32(-var_0.a.b), ~1i, var_0.a.b <= _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(126f - var_0.a.b))), -2147483647i), Struct_1(vec2<u32>(~(~var_0.a.a.x), _wgslsmith_clamp_u32(_wgslsmith_sub_u32(11755u, arg_0.x), 8172u ^ var_0.a.a.x, max(4294967295u, 20024u))), var_0.a.b, 0i, false, max(~arg_1, -_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, arg_1, -1i), vec3<i32>(var_0.a.c, -33644i, 20377i)))));
    global0 = array<vec4<i32>, 32>();
    let var_3 = vec3<bool>(all(vec3<bool>(true, select(arg_2.x, var_1, any(vec3<bool>(false, true, arg_2.x))), var_2.a.a.x == 81224u)), var_0.a.d, !var_2.a.d);
    return -vec2<i32>(var_0.a.e, ~(~var_0.a.c));
}

fn func_2(arg_0: vec3<u32>, arg_1: vec4<u32>, arg_2: i32, arg_3: f32) -> u32 {
    global0 = array<vec4<i32>, 32>();
    var var_0 = _wgslsmith_mod_vec2_i32(func_3(_wgslsmith_mult_vec2_u32(vec2<u32>(28207u, 46804u), vec2<u32>(arg_1.x, 0u)) & (_wgslsmith_mod_vec2_u32(arg_0.yx, arg_1.wy) >> (vec2<u32>(arg_0.x, arg_1.x) % vec2<u32>(32u))), ~(~arg_2), select(vec3<bool>(true, true, true), !select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(false, false, false)), any(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true))))), max(vec2<i32>(u_input.b, -arg_2) & max(vec2<i32>(arg_2, u_input.b), vec2<i32>(1i, arg_2)), _wgslsmith_sub_vec2_i32(reverseBits(_wgslsmith_div_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(-1318i, arg_2))), _wgslsmith_div_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(-340i, 5023i), vec2<i32>(arg_2, -3814i)), _wgslsmith_sub_vec2_i32(vec2<i32>(3961i, arg_2), vec2<i32>(-37232i, -38260i))))));
    let var_1 = Struct_4(Struct_1(arg_0.zz, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_3 * 392f))))), var_0.x | ~(~var_0.x), true, _wgslsmith_div_i32(firstTrailingBit(-var_0.x), arg_2)));
    var_0 = ~_wgslsmith_clamp_vec2_i32(vec2<i32>(abs(_wgslsmith_div_i32(-23720i, var_0.x)), 0i), -_wgslsmith_mult_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(var_1.a.e, 1i), vec2<i32>(u_input.b, var_1.a.c)), ~vec2<i32>(-1i, arg_2)), -abs(_wgslsmith_add_vec2_i32(vec2<i32>(-19858i, arg_2), vec2<i32>(15493i, -14753i))));
    var var_2 = Struct_2(Struct_1(arg_0.xy, _wgslsmith_f_op_f32(exp2(1f)), -_wgslsmith_div_i32(~(-17204i), u_input.a), any(!(!vec2<bool>(false, var_1.a.d))), -1i), Struct_1(~(min(arg_1.wz, arg_1.zw) << (reverseBits(vec2<u32>(var_1.a.a.x, 63520u)) % vec2<u32>(32u))), _wgslsmith_f_op_f32(-arg_3), ~2147483647i, !any(vec2<bool>(false, var_1.a.d)) || var_1.a.d, 50412i));
    return ~(_wgslsmith_clamp_u32(~(~0u), firstTrailingBit(var_2.b.a.x), _wgslsmith_dot_vec3_u32(~arg_1.wxx, _wgslsmith_div_vec3_u32(arg_0, arg_1.xzw))) & _wgslsmith_clamp_u32(4294967295u, _wgslsmith_sub_u32(var_2.b.a.x, abs(var_2.a.a.x)), 25710u));
}

fn func_1(arg_0: f32) -> f32 {
    global0 = array<vec4<i32>, 32>();
    global0 = array<vec4<i32>, 32>();
    var var_0 = min(4294967295u, ~(_wgslsmith_mult_u32(~1u, func_2(vec3<u32>(4294967295u, 4294967295u, 4198u), vec4<u32>(82247u, 4294967295u, 16177u, 138087u), u_input.a, arg_0)) ^ _wgslsmith_add_u32(17710u, firstLeadingBit(4294967295u))));
    var var_1 = select(true, true, !any(vec3<bool>(true, all(vec4<bool>(true, true, false, false)), all(vec3<bool>(false, true, false)))));
    let var_2 = Struct_2(Struct_1(countOneBits(vec2<u32>(1u, 1u)), arg_0, u_input.a, true, _wgslsmith_sub_i32((i32(-1i) * -1i) ^ (u_input.a >> (26490u % 32u)), countOneBits(u_input.b))), Struct_1(reverseBits(~_wgslsmith_div_vec2_u32(vec2<u32>(0u, 73418u), vec2<u32>(49596u, 15787u))), 553f, u_input.b, !any(select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(true, false, false))), u_input.b << (func_2(vec3<u32>(14424u, 1u, 1u), ~vec4<u32>(10850u, 57943u, 3807u, 4294967295u), -u_input.b, _wgslsmith_f_op_f32(step(arg_0, arg_0))) % 32u)));
    return -992f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(515f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + -2183f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(222f * 546f))) - -489f));
    global0 = array<vec4<i32>, 32>();
    global0 = array<vec4<i32>, 32>();
    var var_1 = ~min(func_2(~(~vec3<u32>(91359u, 78101u, 1u)), ~vec4<u32>(1u, 1u, 1u, 1u), ~select(u_input.b, u_input.a, false), 1f), ~firstLeadingBit(min(4294967295u, 34704u)));
    let var_2 = u_input.a;
    var var_3 = Struct_5(Struct_4(Struct_1(vec2<u32>(1u, 1u), _wgslsmith_f_op_f32(f32(-1f) * -1093f), -24856i, true, 1i)), Struct_4(Struct_1(select(~vec2<u32>(78846u, 56353u), ~vec2<u32>(45710u, 66007u), true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f - var_0) - var_0), var_2, select(any(vec4<bool>(true, true, false, false)), true, true), -(u_input.a | var_2))), firstLeadingBit(4294967295u), Struct_1(vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 4294967295u, 70331u, 90096u), vec4<u32>(2797u, 0u, 27149u, 0u)), func_2(vec3<u32>(0u, 4294967295u, 4294967295u), vec4<u32>(0u, 9145u, 5493u, 6451u), -2147483647i, var_0)) | _wgslsmith_div_vec2_u32(vec2<u32>(35272u, 1u), ~vec2<u32>(1u, 1u)), _wgslsmith_f_op_f32(min(605f, _wgslsmith_f_op_f32(min(var_0, _wgslsmith_f_op_f32(round(-862f)))))), _wgslsmith_dot_vec4_i32(global0[_wgslsmith_index_u32(1u, 32u)], reverseBits(firstLeadingBit(vec4<i32>(var_2, 2147483647i, 0i, 731i)))), false, var_2));
    let x = u_input.a;
    s_output = StorageBuffer(min(abs(~firstLeadingBit(var_2)), 58525i), _wgslsmith_add_i32(_wgslsmith_div_i32(~u_input.a, ~(-1i)), 1i) << (~select(reverseBits(var_3.b.a.a.x), var_3.a.a.a.x & var_3.a.a.a.x, true) % 32u));
}


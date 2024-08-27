struct Struct_1 {
    a: u32,
    b: vec3<f32>,
    c: bool,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
    b: vec2<bool>,
    c: vec4<bool>,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 16>;

var<private> global1: array<f32, 7> = array<f32, 7>(2385f, -455f, 196f, -456f, 158f, 862f, 1147f);

var<private> global2: array<Struct_1, 8> = array<Struct_1, 8>(Struct_1(64378u, vec3<f32>(-232f, -1185f, -118f), true, false), Struct_1(61081u, vec3<f32>(1000f, -1580f, 730f), false, false), Struct_1(1u, vec3<f32>(178f, 145f, 1036f), false, false), Struct_1(0u, vec3<f32>(453f, 919f, 415f), true, false), Struct_1(85373u, vec3<f32>(1821f, -313f, 2448f), true, true), Struct_1(80371u, vec3<f32>(1931f, -1411f, -419f), true, false), Struct_1(1u, vec3<f32>(-417f, 245f, -312f), false, true), Struct_1(49068u, vec3<f32>(-1650f, 286f, -1123f), false, true));

var<private> global3: f32;

var<private> global4: f32 = -1088f;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_2(arg_0: u32) -> vec3<i32> {
    global1 = array<f32, 7>();
    var var_0 = global2[_wgslsmith_index_u32(abs(_wgslsmith_div_u32(~(~arg_0), 1u)), 8u)];
    global4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-810f * _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(~(~arg_0), 7u)] - 826f)));
    var var_1 = vec4<f32>(global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(arg_0, 31976u), vec2<u32>(0u, 0u)), ~(~vec2<u32>(var_0.a, 4294967295u))), 16u)], -2040f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.c, 16u)]), -458f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -433f))));
    var var_2 = u_input.b.x;
    return ~(-vec3<i32>(-(u_input.a.x << (u_input.c % 32u)), firstLeadingBit(u_input.a.x) >> ((u_input.c ^ 0u) % 32u), _wgslsmith_div_i32(2147483647i, u_input.a.x) | _wgslsmith_mod_i32(u_input.b.x, u_input.a.x)));
}

fn func_1(arg_0: vec2<u32>) -> vec3<i32> {
    global0 = array<f32, 16>();
    global1 = array<f32, 7>();
    let var_0 = u_input.c;
    global0 = array<f32, 16>();
    let var_1 = -1i;
    return -(~_wgslsmith_mult_vec3_i32(abs(func_2(arg_0.x)), vec3<i32>(2009i >> (var_0 % 32u), 2147483647i, max(u_input.b.x, 2147483647i))));
}

fn func_3(arg_0: bool) -> vec2<bool> {
    global2 = array<Struct_1, 8>();
    global2 = array<Struct_1, 8>();
    var var_0 = reverseBits(_wgslsmith_add_vec4_u32(~firstTrailingBit(vec4<u32>(u_input.c, 0u, 44799u, 4294967295u)), ~countOneBits(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.c, 45443u, 1u, u_input.c), vec4<u32>(24201u, u_input.c, 1u, u_input.c)))));
    var var_1 = -18355i;
    var var_2 = var_0.zzz;
    return !select(vec2<bool>(true, all(select(vec2<bool>(false, false), vec2<bool>(arg_0, true), vec2<bool>(arg_0, arg_0)))), select(vec2<bool>(true, true), vec2<bool>(u_input.a.x > u_input.a.x, arg_0), vec2<bool>(any(vec2<bool>(false, arg_0)), false)), !select(select(vec2<bool>(arg_0, false), vec2<bool>(arg_0, arg_0), vec2<bool>(true, true)), vec2<bool>(true, true), any(vec2<bool>(arg_0, arg_0))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(abs(_wgslsmith_add_vec3_i32(_wgslsmith_mod_vec3_i32(func_1(vec2<u32>(4294967295u, u_input.c)), vec3<i32>(u_input.a.x, u_input.b.x, -17019i)), abs(vec3<i32>(4354i, u_input.a.x, -2147483647i) >> (vec3<u32>(4294967295u, u_input.c, u_input.c) % vec3<u32>(32u))))), select(!vec2<bool>(any(vec4<bool>(false, false, false, true)), true), func_3(false), !vec2<bool>(true, func_3(false).x)), select(select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, select(false, false, false))), vec4<bool>(any(vec2<bool>(true, false)), false, true, !select(false, false, false)), select(vec4<bool>(true, true, all(vec3<bool>(true, false, false)), true), vec4<bool>(true, true, true, true), true)), select(_wgslsmith_mod_vec3_u32(max(vec3<u32>(u_input.c, 13066u, u_input.c) ^ vec3<u32>(u_input.c, 1u, u_input.c), vec3<u32>(u_input.c, u_input.c, u_input.c)), _wgslsmith_sub_vec3_u32(min(vec3<u32>(u_input.c, 0u, 90667u), vec3<u32>(1u, 4294967295u, 79959u)), vec3<u32>(1u, 17326u, 0u) & vec3<u32>(u_input.c, u_input.c, u_input.c))), vec3<u32>(0u, select(0u, firstLeadingBit(u_input.c), false), ~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 73449u, 9027u), vec3<u32>(11253u, 0u, u_input.c))), any(vec2<bool>(true, true)) | func_3(true).x));
    global1 = array<f32, 7>();
    var var_1 = _wgslsmith_clamp_vec4_i32(vec4<i32>(2147483647i, _wgslsmith_dot_vec2_i32(var_0.a.yx, _wgslsmith_clamp_vec2_i32(firstTrailingBit(vec2<i32>(0i, 92639i)), vec2<i32>(u_input.a.x, 30260i) ^ var_0.a.yz, u_input.b ^ u_input.a)), u_input.a.x, ~u_input.a.x), _wgslsmith_sub_vec4_i32(vec4<i32>(21011i, u_input.b.x | u_input.a.x, abs(u_input.a.x), max(var_0.a.x, 21297i)), abs(vec4<i32>(u_input.b.x, 37735i, u_input.b.x, u_input.b.x))) >> (vec4<u32>(~_wgslsmith_mult_u32(1u, u_input.c), ~21530u, u_input.c, var_0.d.x) % vec4<u32>(32u)), vec4<i32>(~(~(~18238i)), var_0.a.x, firstLeadingBit(abs(-26149i)), ~_wgslsmith_dot_vec2_i32(vec2<i32>(-18582i, -1i) | u_input.a, vec2<i32>(0i, 57571i))));
    var var_2 = global0[_wgslsmith_index_u32(0u, 16u)];
    let var_3 = _wgslsmith_f_op_f32(abs(global1[_wgslsmith_index_u32(4294967295u, 7u)]));
    var var_4 = Struct_2(global2[_wgslsmith_index_u32(u_input.c ^ _wgslsmith_dot_vec3_u32(~var_0.d << (~vec3<u32>(1u, 0u, var_0.d.x) % vec3<u32>(32u)), vec3<u32>(39000u, var_0.d.x, ~39364u)), 8u)], global2[_wgslsmith_index_u32(var_0.d.x, 8u)], global2[_wgslsmith_index_u32(~(~abs(abs(4294967295u))), 8u)]);
    let var_5 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3, -1216f, -396f, -294f)))), vec4<f32>(_wgslsmith_f_op_f32(select(global1[_wgslsmith_index_u32(u_input.c, 7u)], 1194f, var_4.b.d)), _wgslsmith_f_op_f32(exp2(global1[_wgslsmith_index_u32(var_4.a.a, 7u)])), _wgslsmith_f_op_f32(var_3 * var_4.b.b.x), var_4.a.b.x), var_0.c.x)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-1164f, -269f, var_3, var_3), vec4<f32>(-227f, var_4.b.b.x, var_4.a.b.x, 602f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1164f, var_3, var_4.c.b.x, 1049f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(634f, var_4.b.b.x, -1000f, 316f)))))))));
    var var_6 = _wgslsmith_sub_i32(~_wgslsmith_mult_i32(-115302i, i32(-1i) * -u_input.b.x), _wgslsmith_mult_i32(-var_0.a.x, ~u_input.b.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(-278f))))))), abs(countOneBits(var_4.c.a)));
}


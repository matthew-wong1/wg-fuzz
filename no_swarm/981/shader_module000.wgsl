struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 13>;

var<private> global1: array<f32, 24> = array<f32, 24>(-715f, 1144f, 1282f, 1000f, -225f, -1040f, -186f, -244f, -670f, -981f, -1000f, 1398f, 401f, -1233f, 1278f, 1120f, 569f, -410f, 442f, -278f, 571f, 1061f, 121f, 583f);

var<private> global2: bool = false;

var<private> global3: array<Struct_1, 20>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<bool>) -> i32 {
    let var_0 = Struct_2(global3[_wgslsmith_index_u32(_wgslsmith_div_u32(~select(1u, ~0u, arg_0.x), ~(~(~0u))), 20u)]);
    global2 = !(!arg_0.x);
    global2 = arg_0.x;
    let var_1 = vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(~4294967295u, reverseBits(min(20645u, 14279u))), _wgslsmith_sub_vec2_u32(u_input.c.xy, u_input.c.yz | vec2<u32>(u_input.c.x, 1u))), ~(~68630u << (firstLeadingBit(u_input.c.x) % 32u)) | _wgslsmith_clamp_u32(~u_input.c.x, u_input.c.x, (u_input.c.x | 47028u) >> (u_input.c.x % 32u)), u_input.c.x);
    let var_2 = 515f;
    return 1i;
}

fn func_2(arg_0: vec2<bool>) -> Struct_2 {
    let var_0 = Struct_1(-abs(-vec3<i32>(u_input.a, u_input.b, 0i) | ~vec3<i32>(1i, u_input.a, u_input.a)));
    var var_1 = Struct_1(vec3<i32>(0i, max(-var_0.a.x, 1i) | _wgslsmith_clamp_i32(31223i ^ u_input.b, max(var_0.a.x, 17124i), ~12527i), -(~func_3(arg_0))));
    global3 = array<Struct_1, 20>();
    var var_2 = Struct_1(vec3<i32>(1i, -7240i, 10011i >> (~(0u ^ u_input.c.x) % 32u)));
    var_2 = var_0;
    return Struct_2(Struct_1(vec3<i32>(_wgslsmith_mod_i32(u_input.a, ~var_0.a.x), 1i, abs(27835i))));
}

fn func_4(arg_0: Struct_2, arg_1: f32, arg_2: Struct_1) -> bool {
    let var_0 = all(vec3<bool>(true, true, false | !all(vec4<bool>(false, false, true, true))));
    var var_1 = vec4<i32>(reverseBits(func_2(select(vec2<bool>(false, var_0), vec2<bool>(var_0, var_0), false)).a.a.x) >> (~u_input.c.x % 32u), _wgslsmith_add_i32(arg_0.a.a.x, _wgslsmith_sub_i32(min(-23373i, -4023i), arg_0.a.a.x) | -(i32(-1i) * -7739i)), arg_0.a.a.x, 1i);
    var var_2 = ~min(vec4<i32>(_wgslsmith_clamp_i32(reverseBits(u_input.b), -var_1.x, -21882i), ~countOneBits(18681i), -arg_0.a.a.x, ~1i), ~(~vec4<i32>(14790i, arg_2.a.x, 2147483647i, 1i)));
    global0 = array<vec2<i32>, 13>();
    var_2 = _wgslsmith_div_vec4_i32((~vec4<i32>(var_2.x, u_input.a, arg_2.a.x, u_input.a) | firstLeadingBit(~vec4<i32>(arg_0.a.a.x, -10591i, 1i, arg_0.a.a.x))) ^ (vec4<i32>(-1i) * -vec4<i32>(arg_0.a.a.x, var_2.x, arg_0.a.a.x, -28791i)), _wgslsmith_clamp_vec4_i32(abs(vec4<i32>(-1941i, i32(-1i) * -2147483647i, u_input.a << (0u % 32u), _wgslsmith_sub_i32(arg_2.a.x, var_1.x))), countOneBits(vec4<i32>(-1i) * -vec4<i32>(-1i, var_2.x, 40629i, -2147483647i)), _wgslsmith_mod_vec4_i32(_wgslsmith_sub_vec4_i32(~vec4<i32>(arg_2.a.x, 0i, arg_2.a.x, u_input.b), ~vec4<i32>(-2147483647i, arg_2.a.x, 0i, var_2.x)), vec4<i32>(25626i, -2147483647i, _wgslsmith_mod_i32(arg_0.a.a.x, 39526i), -1i))));
    return !((var_0 || (!var_0 & (arg_0.a.a.x == 0i))) || var_0);
}

fn func_1() -> Struct_1 {
    global2 = func_4(func_2(vec2<bool>(any(vec2<bool>(true, true)), all(vec4<bool>(true, false, true, false)) || true)), global1[_wgslsmith_index_u32(u_input.c.x, 24u)], func_2(select(select(vec2<bool>(true, true), vec2<bool>(false, false), true), select(vec2<bool>(true, true), vec2<bool>(true, true), u_input.c.x == u_input.c.x), vec2<bool>(true, true))).a);
    var var_0 = global3[_wgslsmith_index_u32(u_input.c.x, 20u)];
    global3 = array<Struct_1, 20>();
    let var_1 = vec3<bool>(any(select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, false)), select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, false))), vec4<bool>(any(vec2<bool>(false, true)), 10676u > u_input.c.x, func_4(Struct_2(Struct_1(vec3<i32>(u_input.b, var_0.a.x, u_input.b))), 1008f, Struct_1(vec3<i32>(1i, 0i, 40712i))), all(vec2<bool>(true, false))), !any(vec3<bool>(true, false, true)))), true, false);
    var var_2 = global3[_wgslsmith_index_u32(~86084u, 20u)];
    return Struct_1(var_2.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    global0 = array<vec2<i32>, 13>();
    let var_1 = vec3<u32>(23517u, min(countOneBits(_wgslsmith_dot_vec3_u32(u_input.c, vec3<u32>(u_input.c.x, 0u, 37924u) & u_input.c)), (_wgslsmith_dot_vec4_u32(vec4<u32>(25350u, u_input.c.x, 18910u, 1u), vec4<u32>(u_input.c.x, 10616u, 73105u, 4294967295u)) | ~0u) << ((81156u << (_wgslsmith_sub_u32(u_input.c.x, 1u) % 32u)) % 32u)), ~(~(~min(u_input.c.x, u_input.c.x))));
    let var_2 = Struct_1(-(~var_0.a));
    let var_3 = vec4<bool>(any(!select(select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), false), vec3<bool>(false, true, false), true)), all(!select(select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(true, false, false)), select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), false), vec3<bool>(false, false, false))), true, func_1().a.x != -1i);
    let var_4 = Struct_1(-vec3<i32>(var_2.a.x, max(-1i, var_0.a.x), min(abs(-25586i), var_0.a.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(u_input.c.x, 24u)], global1[_wgslsmith_index_u32(0u, 24u)], global1[_wgslsmith_index_u32(0u, 24u)], global1[_wgslsmith_index_u32(4294967295u, 24u)])) * _wgslsmith_f_op_vec4_f32(max(vec4<f32>(532f, global1[_wgslsmith_index_u32(75598u, 24u)], global1[_wgslsmith_index_u32(99090u, 24u)], global1[_wgslsmith_index_u32(u_input.c.x, 24u)]), vec4<f32>(global1[_wgslsmith_index_u32(u_input.c.x, 24u)], -538f, -1449f, 296f))))))), ~vec3<u32>(1u, ~1u, _wgslsmith_div_u32(var_1.x, firstLeadingBit(u_input.c.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -610f)));
}


struct Struct_1 {
    a: f32,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: f32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 10> = array<Struct_1, 10>(Struct_1(2378f, vec3<f32>(-1327f, -576f, -538f)), Struct_1(1332f, vec3<f32>(479f, 1470f, -725f)), Struct_1(-523f, vec3<f32>(161f, -1096f, -1601f)), Struct_1(-3370f, vec3<f32>(1524f, 2777f, -259f)), Struct_1(-876f, vec3<f32>(1292f, 328f, 381f)), Struct_1(1000f, vec3<f32>(1231f, 849f, 912f)), Struct_1(-1791f, vec3<f32>(708f, -618f, -478f)), Struct_1(164f, vec3<f32>(-164f, 407f, 358f)), Struct_1(-1000f, vec3<f32>(1565f, 1000f, -602f)), Struct_1(-962f, vec3<f32>(-423f, 689f, -676f)));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: vec2<i32>, arg_1: u32) -> u32 {
    let var_0 = -1000f;
    var var_1 = global0[_wgslsmith_index_u32(u_input.a, 10u)];
    var_1 = global0[_wgslsmith_index_u32(9055u, 10u)];
    var var_2 = 24180u;
    var_1 = global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(countOneBits(firstLeadingBit(u_input.a)), ~37370u), 10u)];
    return 72220u;
}

fn func_3(arg_0: vec2<i32>, arg_1: vec3<u32>, arg_2: Struct_1) -> u32 {
    let var_0 = vec4<bool>(any(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), true, true, true);
    var var_1 = Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -505f), _wgslsmith_f_op_f32(select(arg_2.b.x, _wgslsmith_f_op_f32(f32(-1f) * -574f), var_0.x)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_2.b * arg_2.b) + vec3<f32>(arg_2.b.x, arg_2.b.x, arg_2.a)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_2.b) + _wgslsmith_f_op_vec3_f32(min(vec3<f32>(183f, arg_2.a, arg_2.a), vec3<f32>(arg_2.a, arg_2.b.x, arg_2.a)))))));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-537f - _wgslsmith_f_op_f32(var_1.a + arg_2.a)))));
    var_1 = Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-1000f, var_1.a))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(abs(arg_2.b.x)), 161f, _wgslsmith_f_op_f32(min(var_2, arg_2.a))), _wgslsmith_f_op_vec3_f32(max(var_1.b, vec3<f32>(-1505f, 475f, arg_2.a))))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, _wgslsmith_f_op_f32(ceil(arg_2.b.x)), _wgslsmith_f_op_f32(ceil(var_2))) - _wgslsmith_f_op_vec3_f32(arg_2.b - _wgslsmith_div_vec3_f32(var_1.b, vec3<f32>(var_2, var_1.a, arg_2.a))))));
    let var_3 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~select(vec4<u32>(u_input.b, u_input.b, 29179u, u_input.b), ~vec4<u32>(11595u, arg_1.x, arg_1.x, 4737u), vec4<bool>(true, var_0.x, var_0.x, true)) << (~vec4<u32>(0u, ~4294967295u, 0u, arg_1.x) % vec4<u32>(32u)), ~vec4<u32>(u_input.a, _wgslsmith_dot_vec3_u32(arg_1, ~arg_1), arg_1.x | (arg_1.x >> (arg_1.x % 32u)), ~arg_1.x)), 10u)];
    return 0u;
}

fn func_1() -> i32 {
    var var_0 = global0[_wgslsmith_index_u32((u_input.b | _wgslsmith_mult_u32(func_2(firstTrailingBit(vec2<i32>(1i, 1i)), u_input.a), _wgslsmith_add_u32(~u_input.a, u_input.a >> (0u % 32u)))) & u_input.b, 10u)];
    global0 = array<Struct_1, 10>();
    var var_1 = countOneBits(1i);
    global0 = array<Struct_1, 10>();
    var var_2 = vec3<u32>(min(_wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(0u, u_input.a, u_input.a)), abs(~vec3<u32>(0u, u_input.b, 9376u))), _wgslsmith_mult_u32(~u_input.b, _wgslsmith_div_u32(u_input.a, 9218u))), ~func_3(vec2<i32>(1i, 1i), (vec3<u32>(1u, 18343u, 1u) << (vec3<u32>(u_input.a, u_input.b, u_input.b) % vec3<u32>(32u))) ^ _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b, 0u, 4294967295u), vec3<u32>(u_input.a, 25570u, u_input.a)), Struct_1(_wgslsmith_f_op_f32(-var_0.a), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-2081f, var_0.b.x, -1001f))))), _wgslsmith_add_u32(0u, u_input.b));
    return _wgslsmith_dot_vec2_i32(vec2<i32>(~(i32(-1i) * -2147483647i), -abs(5499i)), _wgslsmith_mult_vec2_i32(reverseBits(_wgslsmith_div_vec2_i32(vec2<i32>(0i, -2147483647i), vec2<i32>(1i, -1i))), vec2<i32>(0i >> (0u % 32u), 1i))) << (var_2.x % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(1512f, vec3<f32>(1f, -1211f, -414f));
    let var_1 = -vec4<i32>(func_1(), -2147483647i, max(i32(-1i) * -1i, _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, 2147483647i, -40935i), vec3<i32>(-15291i, -49411i, -54534i))), firstTrailingBit(firstTrailingBit(1i))) | (vec4<i32>(func_1() & 1i, 0i, -(i32(-1i) * -15534i), firstLeadingBit(1i)) >> (_wgslsmith_mod_vec4_u32(firstTrailingBit(~vec4<u32>(0u, u_input.b, u_input.a, 4294967295u)), ~vec4<u32>(u_input.a, u_input.b, u_input.b, u_input.a)) % vec4<u32>(32u)));
    var var_2 = vec4<u32>(4294967295u, ~12167u, u_input.a, 15222u);
    global0 = array<Struct_1, 10>();
    var var_3 = true;
    var_2 = _wgslsmith_mult_vec4_u32(_wgslsmith_sub_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a << (u_input.a % 32u), ~u_input.a, _wgslsmith_clamp_u32(var_2.x, 28421u, var_2.x), ~var_2.x), firstLeadingBit(~vec4<u32>(u_input.a, u_input.a, 1u, 62794u))), firstLeadingBit((vec4<u32>(1u, var_2.x, 0u, 5733u) << (vec4<u32>(var_2.x, 1u, var_2.x, var_2.x) % vec4<u32>(32u))) | reverseBits(vec4<u32>(22908u, 72037u, var_2.x, var_2.x)))), _wgslsmith_sub_vec4_u32(~select(vec4<u32>(var_2.x, 79784u, u_input.b, 0u), _wgslsmith_add_vec4_u32(vec4<u32>(1u, var_2.x, 2734u, 1u), vec4<u32>(0u, u_input.b, 76710u, u_input.b)), select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, false), false)), ~(~firstTrailingBit(vec4<u32>(u_input.b, u_input.a, var_2.x, 126948u)))));
    var var_4 = Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(var_0.a, -844f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1815f)) - -478f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1f, _wgslsmith_f_op_f32(-var_0.b.x), all(vec4<bool>(true, true, false, true))))), ~_wgslsmith_div_u32(0u, 749u) > ~max(u_input.b, var_2.x))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(var_0.b * var_0.b), _wgslsmith_f_op_vec3_f32(vec3<f32>(641f, var_0.a, -2259f) - var_0.b), true))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-513f, -477f, 254f)), _wgslsmith_f_op_vec3_f32(select(var_0.b, var_0.b, false))))), all(vec4<bool>(true, true, true, true)))));
    let var_5 = ~u_input.b;
    let x = u_input.a;
    s_output = StorageBuffer(~(min(~vec4<u32>(1u, var_5, 4294967295u, u_input.a), abs(vec4<u32>(0u, var_2.x, var_2.x, var_5))) >> (vec4<u32>(0u, 24612u, var_2.x, ~0u) % vec4<u32>(32u))), ~vec4<u32>(16262u, func_3(_wgslsmith_div_vec2_i32(var_1.zz, vec2<i32>(37128i, 1472i)), vec3<u32>(var_5, 4294967295u, 4294967295u), Struct_1(-214f, vec3<f32>(-1277f, 437f, 396f))), abs(~15081u), abs(var_2.x)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(317f, _wgslsmith_f_op_f32(sign(-1099f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))))), ~(~_wgslsmith_clamp_vec4_u32(~vec4<u32>(1u, 0u, 1u, u_input.a), ~vec4<u32>(70932u, var_2.x, 59997u, var_2.x), min(vec4<u32>(var_5, 67014u, var_2.x, var_2.x), vec4<u32>(37965u, 1u, 104468u, 43588u)))));
}


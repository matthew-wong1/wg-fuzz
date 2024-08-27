struct Struct_1 {
    a: u32,
    b: vec4<i32>,
    c: vec3<f32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: u32,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: vec3<bool>,
    d: Struct_2,
    e: Struct_2,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(4424u, vec4<i32>(-41804i, 2147483647i, i32(-2147483648), -1i), vec3<f32>(105f, 597f, -611f));

var<private> global1: f32 = -1387f;

var<private> global2: array<f32, 26> = array<f32, 26>(-192f, -401f, 699f, 420f, 718f, -1128f, -373f, -1000f, 1118f, 911f, 931f, 1823f, -2176f, 431f, -236f, -540f, 634f, 190f, -386f, -1481f, -1115f, -1000f, -386f, -1788f, 844f, 1635f);

var<private> global3: Struct_2 = Struct_2(vec4<i32>(-1i, 1i, 25555i, 1i), Struct_1(1u, vec4<i32>(14640i, i32(-2147483648), 1779i, 27330i), vec3<f32>(-1669f, 677f, 365f)), 19788u);

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: f32, arg_2: Struct_1) -> u32 {
    var var_0 = arg_2;
    let var_1 = select(any(select(select(select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(true, false, false)), vec3<bool>(true, false, true), vec3<bool>(false, false, true)), !select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, false)), vec3<bool>(true, all(vec3<bool>(true, false, false)), true))), true, !(_wgslsmith_f_op_f32(abs(-1863f)) != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_1)) - _wgslsmith_f_op_f32(min(-483f, global2[_wgslsmith_index_u32(51972u, 26u)])))));
    let var_2 = arg_0;
    var_0 = arg_2;
    var var_3 = arg_0;
    return global3.c;
}

fn func_2() -> bool {
    let var_0 = true;
    let var_1 = vec2<u32>(_wgslsmith_clamp_u32(~(~global0.a), func_3(global3.b, _wgslsmith_div_f32(global3.b.c.x, 859f), global3.b), func_3(Struct_1(0u, global3.b.b, global0.c), 833f, global3.b)), _wgslsmith_add_u32(~(~global3.b.a), global0.a)) ^ _wgslsmith_mod_vec2_u32(reverseBits(~_wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, 13414u), vec2<u32>(global0.a, global0.a))), ~(~(~vec2<u32>(global0.a, global0.a))));
    var var_2 = Struct_2(_wgslsmith_sub_vec4_i32(-(firstTrailingBit(vec4<i32>(0i, u_input.a, 60445i, -2147483647i)) ^ abs(global3.a)), global0.b), global3.b, 1u);
    global0 = Struct_1(firstTrailingBit(0u), global0.b, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-378f)))), _wgslsmith_f_op_f32(f32(-1f) * -1376f), global3.b.c.x));
    var var_3 = Struct_2(vec4<i32>(-1i) * -firstTrailingBit(_wgslsmith_mod_vec4_i32(global0.b, global3.a)), var_2.b, firstLeadingBit(53514u));
    return false || all(vec2<bool>(any(select(vec4<bool>(var_0, var_0, false, var_0), vec4<bool>(var_0, var_0, var_0, false), vec4<bool>(var_0, true, var_0, var_0))), -958f != _wgslsmith_f_op_f32(round(var_3.b.c.x))));
}

fn func_1(arg_0: f32, arg_1: u32, arg_2: bool) -> vec4<u32> {
    let var_0 = Struct_3(!(func_2() != arg_2), Struct_2(abs(~(~global3.a)), global3.b, 0u), select(select(!select(vec3<bool>(arg_2, true, true), vec3<bool>(false, arg_2, false), vec3<bool>(arg_2, arg_2, arg_2)), !select(vec3<bool>(true, arg_2, false), vec3<bool>(arg_2, arg_2, false), vec3<bool>(arg_2, arg_2, arg_2)), vec3<bool>(!arg_2, true, all(vec3<bool>(true, true, false)))), !select(!vec3<bool>(arg_2, true, arg_2), vec3<bool>(arg_2, arg_2, true), arg_2 && true), true), Struct_2(global3.a, Struct_1(arg_1, min(-global0.b, max(global3.a, global3.b.b)), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(global3.b.c - global0.c), _wgslsmith_f_op_vec3_f32(abs(global3.b.c))))), 13170u), Struct_2(global0.b, Struct_1((arg_1 >> (4294967295u % 32u)) ^ arg_1, abs(abs(global3.b.b)), _wgslsmith_f_op_vec3_f32(-global0.c)), min(global3.b.a, global3.c) & global0.a));
    var var_1 = Struct_2(var_0.d.b.b, global3.b, global0.a);
    var var_2 = select(vec4<bool>(var_0.c.x, arg_0 == _wgslsmith_f_op_f32(ceil(global0.c.x)), !all(!var_0.c), arg_2), vec4<bool>(any(!(!var_0.c)), arg_2, var_0.a, false), var_0.a);
    var var_3 = var_0.e;
    var var_4 = any(!var_2.yw);
    return abs(~vec4<u32>(max(var_0.e.c, global3.b.a), ~94986u, max(var_1.b.a, _wgslsmith_add_u32(0u, 1u)), var_1.c));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = max(~_wgslsmith_div_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(global0.a, 1u, global0.a, 4294967295u), _wgslsmith_mod_vec4_u32(vec4<u32>(global0.a, 1u, 50020u, global0.a), vec4<u32>(43232u, global3.b.a, 82794u, global0.a))), ~(~vec4<u32>(global3.b.a, 1u, global3.b.a, global3.b.a))), ~(func_1(global0.c.x, _wgslsmith_mult_u32(0u, 0u), any(vec3<bool>(true, true, false))) >> (max(abs(vec4<u32>(1u, 2467u, global0.a, 27084u)), func_1(global0.c.x, 54183u, true)) % vec4<u32>(32u))));
    var var_1 = _wgslsmith_dot_vec3_u32(~var_0.yxx, firstTrailingBit(var_0.zzy));
    let var_2 = _wgslsmith_add_i32(global0.b.x, (u_input.a & global3.b.b.x) << (var_0.x % 32u));
    var_0 = ~vec4<u32>(global0.a, abs(global3.c), 54581u, ~global3.c);
    let var_3 = _wgslsmith_add_u32(global0.a, global3.b.a);
    let var_4 = !(!vec4<bool>(true, true, any(vec2<bool>(true, true)), true));
    let x = u_input.a;
    s_output = StorageBuffer(var_2, _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(firstTrailingBit(1u) >> (min(firstTrailingBit(4294967295u), countOneBits(var_3)) % 32u), 26u)] + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.b.c.x * global0.c.x))))), _wgslsmith_add_vec4_u32(~func_1(-1000f, 10173u, var_4.x), vec4<u32>(~40522u, abs(var_3) ^ ~var_0.x, ~_wgslsmith_div_u32(28465u, var_3), var_0.x)));
}


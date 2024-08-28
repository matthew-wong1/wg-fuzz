struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: f32,
    b: vec4<f32>,
    c: vec2<i32>,
    d: bool,
    e: i32,
}

struct Struct_3 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: u32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec3<f32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<Struct_2, 11> = array<Struct_2, 11>(Struct_2(1000f, vec4<f32>(288f, -855f, -1001f, -1106f), vec2<i32>(i32(-2147483648), 35408i), false, -36203i), Struct_2(1566f, vec4<f32>(947f, -1635f, 757f, 101f), vec2<i32>(2147483647i, -88354i), false, -1i), Struct_2(-726f, vec4<f32>(-1000f, 1423f, -162f, 1271f), vec2<i32>(-45465i, 19635i), true, -1i), Struct_2(532f, vec4<f32>(1059f, -2027f, 1136f, -321f), vec2<i32>(-18843i, -1i), true, 10411i), Struct_2(-1126f, vec4<f32>(-395f, 737f, 809f, -116f), vec2<i32>(-1128i, i32(-2147483648)), false, -1688i), Struct_2(1000f, vec4<f32>(-299f, 1000f, 1718f, 409f), vec2<i32>(-11593i, 2147483647i), false, 37850i), Struct_2(-911f, vec4<f32>(2210f, 1519f, -344f, 566f), vec2<i32>(61051i, 13873i), true, -7188i), Struct_2(-1750f, vec4<f32>(913f, 718f, -1683f, -1188f), vec2<i32>(i32(-2147483648), i32(-2147483648)), false, 1i), Struct_2(-533f, vec4<f32>(-522f, 2324f, -349f, -555f), vec2<i32>(-1i, 0i), false, -1i), Struct_2(-762f, vec4<f32>(219f, -385f, -1114f, 2420f), vec2<i32>(-13090i, 2147483647i), true, 35679i), Struct_2(1000f, vec4<f32>(800f, -977f, 1196f, -861f), vec2<i32>(-1i, 22867i), true, i32(-2147483648)));

var<private> global2: f32 = -1095f;

var<private> global3: vec3<u32> = vec3<u32>(0u, 25095u, 0u);

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_2(arg_0: vec4<bool>, arg_1: vec3<bool>, arg_2: vec2<u32>) -> u32 {
    let var_0 = 377f;
    global3 = _wgslsmith_mult_vec3_u32(~(~(~vec3<u32>(1u, global3.x, 4294967295u))), u_input.b.xwy);
    var var_1 = 13561i;
    var var_2 = Struct_3(vec3<bool>(arg_0.x, true, arg_1.x));
    global0 = arg_2.x;
    return reverseBits(~_wgslsmith_add_u32(63952u, abs(4254u)));
}

fn func_1() -> Struct_2 {
    global3 = vec3<u32>(_wgslsmith_add_u32(4294967295u ^ ~(~global3.x), u_input.a), _wgslsmith_mod_u32(func_2(!select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, true)), vec3<bool>(any(vec3<bool>(false, false, false)), true, false), ~vec2<u32>(31204u, 54034u)), u_input.a), 4294967295u);
    global3 = max(_wgslsmith_add_vec3_u32(u_input.b.xzz, ~countOneBits(u_input.b.xzw)), ~(_wgslsmith_sub_vec3_u32(~vec3<u32>(10401u, u_input.c, global3.x), vec3<u32>(72860u, u_input.b.x, 4294967295u) & vec3<u32>(u_input.a, global3.x, u_input.b.x)) ^ vec3<u32>(u_input.c, 0u & global3.x, u_input.c)));
    let var_0 = false;
    let var_1 = _wgslsmith_clamp_i32(u_input.d.x, -(u_input.d.x >> (_wgslsmith_div_u32(min(u_input.a, 1u), select(92120u, global3.x, var_0)) % 32u)), u_input.d.x);
    let var_2 = 1924u;
    return global1[_wgslsmith_index_u32(firstLeadingBit(~25361u), 11u)];
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_2, arg_2: vec3<bool>) -> f32 {
    global2 = arg_1.b.x;
    let var_0 = -8265i;
    global3 = reverseBits(vec3<u32>(1u, _wgslsmith_dot_vec4_u32(u_input.b, vec4<u32>(47452u, 14216u, u_input.c, global3.x)), global3.x)) ^ ~_wgslsmith_div_vec3_u32(~(~u_input.b.xwz), ~vec3<u32>(global3.x, u_input.b.x, 64898u));
    global0 = ~global3.x;
    var var_1 = vec4<bool>(arg_1.d || (~global3.x >= (global3.x >> (~17860u % 32u))), select(~0i >= firstTrailingBit(arg_1.c.x), arg_0.x != _wgslsmith_f_op_f32(-arg_0.x), false), select(false, select(!(!arg_2.x), any(arg_2), arg_1.d), true), arg_1.d);
    return arg_0.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(~(~global3.x));
    var var_1 = _wgslsmith_f_op_f32(651f + _wgslsmith_f_op_f32(func_3(vec2<f32>(-1485f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -590f) - _wgslsmith_f_op_f32(f32(-1f) * -195f))), func_1(), vec3<bool>(true, true, true))));
    var var_2 = select(select(vec4<bool>(true, !all(vec2<bool>(true, false)), all(vec3<bool>(true, true, true)), !(u_input.d.x == u_input.d.x)), vec4<bool>(true, true, any(select(vec2<bool>(false, false), vec2<bool>(true, true), true)), true), vec4<bool>(any(select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), true)), true, any(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false))), any(select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(false, true, true))))), !select(select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true)), select(select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, false), false), vec4<bool>(true, true, true, true), true), false), vec4<bool>(true, all(!select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true))), true, any(vec4<bool>(true, true, true, true))));
    global2 = -733f;
    let var_3 = global1[_wgslsmith_index_u32(~1u, 11u)];
    var var_4 = Struct_2(_wgslsmith_f_op_f32(var_3.a * _wgslsmith_f_op_f32(-var_3.b.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(var_3.b * vec4<f32>(-496f, var_3.a, 477f, 1124f)), var_3.b))), vec2<i32>(var_3.c.x, 8758i), !(!(_wgslsmith_sub_i32(-9765i, var_3.c.x) >= ~var_3.e)), abs(u_input.d.x));
    let var_5 = vec4<u32>(var_0, 0u, 8594u, countOneBits(~_wgslsmith_mult_u32(13016u, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.c, 0u, global3.x), vec4<u32>(48773u, global3.x, var_0, var_0)))));
    let x = u_input.a;
    s_output = StorageBuffer(abs(u_input.d.x), 1u, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_4.a, _wgslsmith_f_op_f32(max(var_3.a, var_3.a)), _wgslsmith_f_op_f32(var_4.b.x * var_3.b.x)))), vec2<i32>(u_input.d.x, func_1().c.x << (countOneBits(1u) % 32u)));
}


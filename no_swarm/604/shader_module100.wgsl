struct Struct_1 {
    a: vec3<bool>,
    b: vec2<i32>,
    c: vec4<i32>,
    d: i32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: bool,
    c: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
    b: vec3<bool>,
    c: vec4<f32>,
}

struct Struct_4 {
    a: u32,
    b: Struct_2,
    c: Struct_2,
    d: vec4<f32>,
    e: i32,
}

struct Struct_5 {
    a: Struct_1,
    b: u32,
    c: vec2<f32>,
    d: vec4<bool>,
    e: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: u32,
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

var<private> global0: i32;

var<private> global1: array<Struct_4, 12>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_4) -> vec3<u32> {
    var var_0 = ~u_input.a;
    var_0 = ~_wgslsmith_sub_u32(~(~_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.x, 46865u, 56577u, 43552u), arg_0)), arg_1.a);
    let var_1 = Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-arg_1.d), _wgslsmith_f_op_vec4_f32(max(arg_1.d, arg_1.d)))))), vec3<bool>(-2147483647i > arg_1.b.c.c.x, arg_1.c.b, arg_1.c.c.a.x), vec4<f32>(988f, arg_1.d.x, arg_1.d.x, _wgslsmith_f_op_f32(exp2(arg_1.d.x))));
    global0 = ((_wgslsmith_mult_i32(arg_1.e >> (4294967295u % 32u), _wgslsmith_add_i32(1i, arg_1.c.c.b.x)) >> (_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(arg_0.wy, arg_0.zy), 77172u) % 32u)) & -17111i) << (firstLeadingBit(arg_0.x) % 32u);
    let var_2 = vec3<bool>(all(vec2<bool>(var_1.b.x, var_1.b.x)), any(!vec2<bool>(any(vec3<bool>(arg_1.c.a.x, false, arg_1.b.a.x)), !arg_1.c.b)), any(vec2<bool>(true, true)));
    return vec3<u32>(arg_0.x, ~(_wgslsmith_mod_u32(arg_1.a, 46454u >> (u_input.a % 32u)) & _wgslsmith_dot_vec4_u32(arg_0, arg_0)), _wgslsmith_mod_u32(u_input.a, arg_1.a));
}

fn func_2(arg_0: Struct_3, arg_1: Struct_2) -> u32 {
    global0 = -(~(-9182i));
    global0 = arg_1.c.c.x;
    let var_0 = !(!vec3<bool>(arg_1.c.a.x, any(!vec2<bool>(arg_0.b.x, false)), any(!arg_1.a.zz)));
    var var_1 = _wgslsmith_dot_vec3_u32(vec3<u32>(countOneBits(_wgslsmith_mult_u32(1u, 42762u)) >> (_wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(22603u, u_input.c, u_input.c, 0u)), vec4<u32>(39626u, u_input.c, u_input.a, u_input.a)) % 32u), ~_wgslsmith_sub_u32(0u, u_input.c) & u_input.c, abs(1u)), vec3<u32>(~_wgslsmith_mod_u32(43882u, 1959u), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.a, ~27424u), ~func_3(vec4<u32>(u_input.a, u_input.c, 49494u, u_input.c), global1[_wgslsmith_index_u32(1u, 12u)])), 1u));
    global1 = array<Struct_4, 12>();
    return firstTrailingBit(1u);
}

fn func_1(arg_0: Struct_4) -> i32 {
    let var_0 = _wgslsmith_dot_vec3_u32(vec3<u32>(~func_2(Struct_3(arg_0.d, vec3<bool>(false, arg_0.b.c.a.x, false), vec4<f32>(1234f, 707f, 431f, -617f)), arg_0.b), _wgslsmith_add_u32(abs(arg_0.a), arg_0.a), 4294967295u << (~arg_0.a % 32u)) >> ((_wgslsmith_add_vec3_u32(vec3<u32>(12710u, u_input.a, 39123u) << (vec3<u32>(arg_0.a, arg_0.a, u_input.c) % vec3<u32>(32u)), min(vec3<u32>(arg_0.a, arg_0.a, arg_0.a), vec3<u32>(0u, 17169u, arg_0.a))) ^ vec3<u32>(_wgslsmith_mult_u32(arg_0.a, 0u), u_input.c, 0u)) % vec3<u32>(32u)), vec3<u32>(~(~1u), _wgslsmith_mod_u32(u_input.a, arg_0.a << (func_3(vec4<u32>(0u, 0u, 0u, u_input.c), arg_0).x % 32u)), ~firstTrailingBit(_wgslsmith_mod_u32(arg_0.a, u_input.a))));
    let var_1 = Struct_2(arg_0.b.a, all(!vec4<bool>(select(false, arg_0.b.c.a.x, arg_0.c.a.x), !arg_0.c.c.a.x, arg_0.c.b, !arg_0.b.b)), Struct_1(!select(arg_0.c.c.a, arg_0.c.a.zzy, select(arg_0.b.a.x, false, arg_0.b.b)), ~(vec2<i32>(58909i, -44619i) ^ u_input.b.xy), u_input.b, -4191i));
    var var_2 = Struct_2(var_1.a, abs(-var_1.c.c.x) != (arg_0.b.c.d ^ ~(~13082i)), arg_0.b.c);
    let var_3 = Struct_5(var_2.c, 4294967295u, vec2<f32>(_wgslsmith_f_op_f32(arg_0.d.x + _wgslsmith_f_op_f32(f32(-1f) * -1382f)), _wgslsmith_f_op_f32(arg_0.d.x * arg_0.d.x)), select(vec4<bool>(true, all(!vec2<bool>(false, arg_0.c.c.a.x)), -982f < arg_0.d.x, all(select(vec3<bool>(arg_0.b.c.a.x, var_1.c.a.x, true), var_1.c.a, true))), vec4<bool>(false, true || all(var_1.c.a.yz), var_1.b, select(var_2.a.x, true, true)), select(vec4<bool>(var_1.a.x, true, any(arg_0.c.c.a.yz), all(vec3<bool>(var_2.c.a.x, arg_0.b.a.x, false))), !select(vec4<bool>(var_1.b, var_2.b, arg_0.b.a.x, false), var_1.a, false), !vec4<bool>(true, true, true, var_1.b))), Struct_3(vec4<f32>(_wgslsmith_div_f32(1102f, _wgslsmith_f_op_f32(1166f + arg_0.d.x)), _wgslsmith_f_op_f32(ceil(1113f)), arg_0.d.x, _wgslsmith_f_op_f32(floor(-1000f))), var_2.a.xxw, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_0.d.x, arg_0.d.x, arg_0.d.x, 1960f), _wgslsmith_f_op_vec4_f32(-arg_0.d))), arg_0.d, true))));
    var var_4 = Struct_2(vec4<bool>(true, var_1.b, true, select(false, false, !(!var_1.b))), !((i32(-1i) * -var_2.c.d) == firstLeadingBit(max(1i, 27275i))), Struct_1(!select(var_3.e.b, var_1.c.a, !var_3.a.a), _wgslsmith_sub_vec2_i32(firstTrailingBit(reverseBits(vec2<i32>(arg_0.c.c.b.x, 22333i))), vec2<i32>(firstTrailingBit(-792i), min(-2147483647i, u_input.b.x))), var_1.c.c ^ firstLeadingBit(abs(vec4<i32>(var_1.c.c.x, u_input.b.x, var_2.c.c.x, var_2.c.c.x))), _wgslsmith_clamp_i32(~abs(var_2.c.d), min(1394i << (u_input.c % 32u), var_3.a.b.x << (u_input.c % 32u)), -1i)));
    return _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, -43089i, -52148i >> (_wgslsmith_mult_u32(countOneBits(u_input.a), ~4294967295u) % 32u), _wgslsmith_sub_i32(36376i, -(~arg_0.c.c.d))), ~(~(~var_4.c.c)) | select(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b.x, 4295i, var_2.c.c.x, arg_0.c.c.b.x), ~var_4.c.c), -select(arg_0.c.c.c, vec4<i32>(-41401i, arg_0.b.c.b.x, 1i, -19247i), arg_0.b.a.x), true));
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: Struct_1) -> Struct_1 {
    global0 = select(arg_2.d, arg_0.c.x, arg_2.a.x);
    var var_0 = ~vec2<u32>(6157u, _wgslsmith_div_u32(u_input.c, 5899u));
    global1 = array<Struct_4, 12>();
    global0 = u_input.b.x;
    global1 = array<Struct_4, 12>();
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mod_vec3_i32(vec3<i32>(~(-(u_input.b.x ^ 22509i)), ~(-u_input.b.x | max(u_input.b.x, -34265i)), u_input.b.x << (u_input.a % 32u)), vec3<i32>(u_input.b.x, firstTrailingBit(-1i), u_input.b.x));
    let var_1 = func_4(Struct_1(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, false)), _wgslsmith_clamp_vec2_i32(reverseBits(vec2<i32>(u_input.b.x, -1i) | u_input.b.wx), vec2<i32>(-var_0.x, -u_input.b.x), var_0.xy), -_wgslsmith_div_vec4_i32(vec4<i32>(var_0.x, var_0.x, -2147483647i, -35829i), u_input.b), func_1(global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.a, 4294967295u, 18108u) ^ 1u, 12u)])), false, Struct_1(vec3<bool>(true, true, true), ~vec2<i32>(u_input.b.x, 6539i) << (_wgslsmith_sub_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(64998u, u_input.c), vec2<u32>(0u, 1u), vec2<u32>(u_input.c, 4294967295u)), _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.c, 0u), vec2<u32>(u_input.c, 17831u))) % vec2<u32>(32u)), _wgslsmith_mult_vec4_i32(u_input.b, u_input.b), -27395i));
    let var_2 = abs(_wgslsmith_mod_vec4_u32(_wgslsmith_mod_vec4_u32(~vec4<u32>(4294967295u, 2744u, 4294967295u, 4294967295u), select(vec4<u32>(u_input.c, 36358u, u_input.c, u_input.c), vec4<u32>(4294967295u, 4294967295u, 1u, 1u), vec4<bool>(var_1.a.x, false, var_1.a.x, false))), firstTrailingBit(~vec4<u32>(0u, u_input.c, u_input.c, u_input.c))) | vec4<u32>(~(~33168u), 4294967295u, abs(~16882u), ~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.c, u_input.c), vec3<u32>(u_input.c, 366u, u_input.c))));
    let var_3 = Struct_2(select(!(!vec4<bool>(var_1.a.x, var_1.a.x, false, false)), vec4<bool>(!(1u <= u_input.a), any(select(vec4<bool>(var_1.a.x, var_1.a.x, true, true), vec4<bool>(var_1.a.x, false, var_1.a.x, true), vec4<bool>(var_1.a.x, true, false, true))), !all(vec4<bool>(var_1.a.x, true, false, var_1.a.x)), func_4(Struct_1(var_1.a, vec2<i32>(-8564i, var_1.b.x), vec4<i32>(var_0.x, -1i, var_0.x, 48287i), var_1.d), !var_1.a.x, Struct_1(var_1.a, var_0.zy, vec4<i32>(u_input.b.x, u_input.b.x, 15274i, 44379i), -1i)).a.x), !(!vec4<bool>(true, false, var_1.a.x, true))), var_1.a.x, var_1);
    var var_4 = vec3<bool>(all(var_3.a), false, (1u <= (~1u & reverseBits(u_input.a))) & (!(u_input.a <= u_input.a) & var_3.b));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(-33465i, 1i, _wgslsmith_div_i32(~0i, var_1.d), min(_wgslsmith_add_i32(55031i, var_1.b.x) << (~u_input.c % 32u), _wgslsmith_clamp_i32(_wgslsmith_add_i32(var_1.d, 17921i), ~var_1.b.x, var_3.c.d))));
}


struct Struct_1 {
    a: vec2<f32>,
    b: vec3<bool>,
    c: bool,
    d: vec2<i32>,
    e: vec4<u32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
    c: vec3<f32>,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: Struct_2,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: vec2<u32>,
    d: vec2<u32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: vec4<f32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 5> = array<u32, 5>(15670u, 15038u, 2729u, 19648u, 17016u);

var<private> global1: array<vec4<bool>, 28> = array<vec4<bool>, 28>(vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, false));

var<private> global2: u32;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2, arg_1: u32) -> bool {
    global2 = ~countOneBits(_wgslsmith_div_u32(31925u << ((u_input.d.x | 4294967295u) % 32u), _wgslsmith_sub_u32(arg_1, ~arg_0.b.e.x)));
    global1 = array<vec4<bool>, 28>();
    let var_0 = u_input.b.x;
    let var_1 = true;
    global0 = array<u32, 5>();
    return _wgslsmith_sub_i32(firstTrailingBit(_wgslsmith_mult_i32(u_input.e.x, _wgslsmith_clamp_i32(0i, var_0, arg_0.b.d.x))), var_0) == 0i;
}

fn func_2(arg_0: i32) -> Struct_4 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(sign(-1000f)), 1338f, _wgslsmith_f_op_f32(1000f * -591f), _wgslsmith_f_op_f32(step(1086f, -287f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1614f, -229f, -1219f, 1197f), vec4<f32>(-1000f, 1203f, 974f, -1359f)))))));
    let var_1 = Struct_2(select(vec3<bool>(false, func_3(Struct_2(vec3<bool>(true, true, false), Struct_1(vec2<f32>(-459f, 1169f), vec3<bool>(true, false, true), true, vec2<i32>(u_input.b.x, 0i), vec4<u32>(0u, 4294967295u, 4294967295u, global0[_wgslsmith_index_u32(3398u, 5u)])), var_0.xyy), _wgslsmith_clamp_u32(49857u, 20288u, global0[_wgslsmith_index_u32(30975u, 5u)])), _wgslsmith_dot_vec2_u32(u_input.d, vec2<u32>(u_input.a.x, 0u)) >= _wgslsmith_mod_u32(u_input.a.x, global0[_wgslsmith_index_u32(1u, 5u)])), select(vec3<bool>(true, true, true), vec3<bool>(all(vec2<bool>(false, true)), false, true), !select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(true, true, false))), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x + var_0.x) + _wgslsmith_f_op_f32(floor(var_0.x))), _wgslsmith_f_op_f32(min(var_0.x, _wgslsmith_f_op_f32(trunc(-274f))))), vec3<bool>(false, 12897u <= _wgslsmith_sub_u32(u_input.c.x, u_input.c.x), all(vec3<bool>(true, true, true))), true, ~_wgslsmith_mod_vec2_i32(_wgslsmith_div_vec2_i32(u_input.e.ww, vec2<i32>(39025i, arg_0)), vec2<i32>(-3856i, u_input.e.x) & vec2<i32>(-33104i, u_input.e.x)), vec4<u32>(_wgslsmith_clamp_u32(65902u, global0[_wgslsmith_index_u32(1u, 5u)], global0[_wgslsmith_index_u32(10395u, 5u)]) | u_input.d.x, ~36964u | _wgslsmith_clamp_u32(4294967295u, global0[_wgslsmith_index_u32(50521u, 5u)], global0[_wgslsmith_index_u32(92341u, 5u)]), ~(u_input.c.x >> (4294967295u % 32u)), ~58966u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.x, _wgslsmith_f_op_f32(var_0.x - 275f), var_0.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(507f, 264f, var_0.x) - _wgslsmith_f_op_vec3_f32(-var_0.xxy)), true))));
    let var_2 = Struct_3(53381u);
    let var_3 = Struct_3(_wgslsmith_dot_vec3_u32(var_1.b.e.xwz, ~vec3<u32>(1u, ~var_2.a, 4349u)));
    global2 = select(var_1.b.e.x, select(0u, ~var_3.a, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(586f * -1000f), _wgslsmith_f_op_f32(f32(-1f) * -1956f))) <= _wgslsmith_f_op_f32(sign(var_1.b.a.x))), true);
    return Struct_4(var_1, vec2<u32>(~(~var_3.a), 4294967295u) >> ((u_input.d | vec2<u32>(countOneBits(4294967295u), 0u)) % vec2<u32>(32u)));
}

fn func_1(arg_0: Struct_3, arg_1: vec2<i32>) -> Struct_1 {
    global0 = array<u32, 5>();
    global2 = global0[_wgslsmith_index_u32(abs(~global0[_wgslsmith_index_u32(arg_0.a, 5u)] & (~(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(arg_0.a, 5u)], 5u)]) & arg_0.a)), 5u)];
    var var_0 = countOneBits(~(~firstLeadingBit(~66431i)));
    var var_1 = func_2(arg_1.x);
    let var_2 = true;
    return var_1.a.b;
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: u32) -> f32 {
    var var_0 = ~countOneBits(~func_2(12404i).a.b.e.x);
    global2 = func_1(Struct_3(select(~firstTrailingBit(arg_0), global0[_wgslsmith_index_u32(~(~22484u), 5u)], !(!arg_1.c))), select(-_wgslsmith_div_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.b.x, 27441i), arg_1.d, vec2<i32>(2147483647i, arg_1.d.x)), u_input.e.zw), ~arg_1.d, !arg_1.c)).e.x;
    let var_1 = false;
    let var_2 = _wgslsmith_f_op_vec2_f32(-arg_1.a);
    global2 = arg_1.e.x;
    return arg_1.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = false;
    var var_1 = 1i;
    let var_2 = ~abs(firstLeadingBit(abs(~1u)));
    var var_3 = Struct_3(var_2);
    var_3 = Struct_3(_wgslsmith_div_u32(~(~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, 1u, var_2), vec3<u32>(u_input.d.x, u_input.c.x, var_2))), u_input.d.x & (1u ^ var_2)));
    let var_4 = !select(select(!(!vec2<bool>(false, var_0)), vec2<bool>(var_0, !var_0), vec2<bool>(true, true)), !vec2<bool>(var_0, true), var_0);
    let var_5 = Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(func_4(~var_3.a, func_1(Struct_3(1u), u_input.e.wx), 26908u)), 994f)), vec3<bool>(var_0, true, !var_0), true, firstLeadingBit(func_2(-u_input.e.x).a.b.d) >> (~(~_wgslsmith_mult_vec2_u32(vec2<u32>(40726u, u_input.a.x), u_input.c)) % vec2<u32>(32u)), firstLeadingBit(~(~vec4<u32>(global0[_wgslsmith_index_u32(45586u, 5u)], u_input.c.x, 4294967295u, 4294967295u)) | reverseBits(vec4<u32>(global0[_wgslsmith_index_u32(1u, 5u)], 1u, u_input.c.x, u_input.a.x))));
    let x = u_input.a;
    s_output = StorageBuffer(select(u_input.e.www, u_input.b.zzy, var_5.b.x), firstTrailingBit(~vec3<i32>(u_input.e.x, 67848i, 14299i)) ^ vec3<i32>(-1i << (var_2 % 32u), 1i, -3221i), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_5.a.x, var_5.a.x, var_5.a.x, 876f)), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1017f, var_5.a.x, -1088f, -1000f))))), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_5.a.x, var_5.a.x, var_5.a.x, -2309f)))), max(u_input.e, select(_wgslsmith_mult_vec4_i32(vec4<i32>(14769i, u_input.e.x, -1i, u_input.b.x) << (var_5.e % vec4<u32>(32u)), u_input.b), u_input.b, var_5.b.x)));
}


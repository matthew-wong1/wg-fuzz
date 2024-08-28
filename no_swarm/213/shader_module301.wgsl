struct Struct_1 {
    a: f32,
    b: vec2<f32>,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: u32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec4<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 18>;

var<private> global1: array<Struct_1, 27> = array<Struct_1, 27>(Struct_1(-544f, vec2<f32>(-2030f, -266f), vec3<u32>(0u, 44578u, 1u)), Struct_1(904f, vec2<f32>(-377f, 271f), vec3<u32>(0u, 4294967295u, 4294967295u)), Struct_1(-112f, vec2<f32>(461f, -1283f), vec3<u32>(1u, 1u, 73868u)), Struct_1(-438f, vec2<f32>(2358f, 606f), vec3<u32>(4294967295u, 1u, 28837u)), Struct_1(-1104f, vec2<f32>(-229f, -221f), vec3<u32>(5334u, 56654u, 118639u)), Struct_1(1135f, vec2<f32>(-337f, 2272f), vec3<u32>(14008u, 0u, 1u)), Struct_1(-2632f, vec2<f32>(-1031f, -685f), vec3<u32>(1u, 30585u, 110913u)), Struct_1(-601f, vec2<f32>(-311f, -166f), vec3<u32>(11498u, 4294967295u, 4784u)), Struct_1(933f, vec2<f32>(-1178f, 944f), vec3<u32>(1u, 36161u, 4294967295u)), Struct_1(-1097f, vec2<f32>(435f, -1741f), vec3<u32>(1u, 45731u, 43022u)), Struct_1(122f, vec2<f32>(-910f, -332f), vec3<u32>(47379u, 1u, 1u)), Struct_1(-336f, vec2<f32>(2349f, 666f), vec3<u32>(986u, 59594u, 4294967295u)), Struct_1(255f, vec2<f32>(-845f, 552f), vec3<u32>(6019u, 4294967295u, 0u)), Struct_1(152f, vec2<f32>(-255f, -1000f), vec3<u32>(35502u, 10334u, 12535u)), Struct_1(315f, vec2<f32>(1000f, 1000f), vec3<u32>(5228u, 0u, 55126u)), Struct_1(1000f, vec2<f32>(-381f, 968f), vec3<u32>(19451u, 1u, 0u)), Struct_1(1381f, vec2<f32>(774f, -1158f), vec3<u32>(92350u, 9037u, 779u)), Struct_1(1696f, vec2<f32>(1305f, -532f), vec3<u32>(1u, 1u, 3778u)), Struct_1(253f, vec2<f32>(-782f, 415f), vec3<u32>(148u, 0u, 27396u)), Struct_1(1367f, vec2<f32>(2384f, 1000f), vec3<u32>(1u, 0u, 52191u)), Struct_1(1000f, vec2<f32>(-875f, -1000f), vec3<u32>(14110u, 1825u, 0u)), Struct_1(-661f, vec2<f32>(316f, -622f), vec3<u32>(19971u, 75568u, 1u)), Struct_1(-327f, vec2<f32>(-379f, 106f), vec3<u32>(4614u, 0u, 4294967295u)), Struct_1(965f, vec2<f32>(1354f, -600f), vec3<u32>(11725u, 1u, 4294967295u)), Struct_1(-201f, vec2<f32>(-104f, 1108f), vec3<u32>(43953u, 1u, 20575u)), Struct_1(-1000f, vec2<f32>(-341f, 201f), vec3<u32>(9767u, 24745u, 1u)), Struct_1(-1323f, vec2<f32>(-1740f, -1401f), vec3<u32>(4294967295u, 1u, 71110u)));

var<private> global2: array<vec2<f32>, 7>;

var<private> global3: vec2<f32> = vec2<f32>(-441f, 1778f);

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> vec4<f32> {
    var var_0 = true;
    var var_1 = true;
    var var_2 = arg_2;
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(abs(187f)), _wgslsmith_f_op_f32(912f * global3.x), arg_2.b.x, _wgslsmith_f_op_f32(floor(arg_2.b.x))))) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(ceil(var_2.a)), arg_2.a, _wgslsmith_f_op_f32(-arg_0.a), var_2.b.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-953f, 1479f, -963f, arg_2.b.x), vec4<f32>(-2158f, arg_0.b.x, 608f, -155f))), vec4<bool>(true, true, true, true)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.a, _wgslsmith_f_op_f32(2357f + global3.x), arg_1.a, _wgslsmith_f_op_f32(598f + arg_0.a)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global3.x, 1193f, 204f, -1289f))) * _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-440f, 1968f, arg_0.b.x, -1088f))))) - vec4<f32>(_wgslsmith_f_op_f32(arg_2.b.x - -483f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_2.a))), arg_1.a, _wgslsmith_f_op_f32(min(-1101f, 894f)))));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: vec2<f32>) -> u32 {
    var var_0 = u_input.b.x;
    var var_1 = _wgslsmith_mult_vec3_i32(-vec3<i32>(countOneBits(u_input.b.x), _wgslsmith_sub_i32(18501i, 53885i), ~firstLeadingBit(u_input.b.x)), vec3<i32>(31872i, -8718i & _wgslsmith_add_i32(u_input.b.x ^ u_input.b.x, -u_input.b.x), _wgslsmith_sub_i32(~u_input.b.x | _wgslsmith_add_i32(1i, u_input.b.x), u_input.b.x)));
    let var_2 = vec2<bool>(false, all(vec2<bool>(true, true)));
    let var_3 = Struct_1(global3.x, _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(329f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(global3.x * 529f))))), firstLeadingBit(~vec3<u32>(4294967295u, ~17787u, arg_0.c.x)));
    var_0 = abs(var_1.x);
    return abs(~51631u);
}

fn func_2(arg_0: Struct_1) -> vec4<f32> {
    global2 = array<vec2<f32>, 7>();
    global2 = array<vec2<f32>, 7>();
    var var_0 = -925f;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1727f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global3.x, arg_0.b.x)))), true || all(select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, true), true)))));
    let var_2 = _wgslsmith_sub_vec3_u32(u_input.d ^ vec3<u32>(countOneBits(1u), ~58594u, _wgslsmith_mod_u32(u_input.a.x, 76885u)), vec3<u32>(u_input.c, _wgslsmith_clamp_u32(func_3(Struct_1(global3.x, vec2<f32>(-1000f, 372f), vec3<u32>(arg_0.c.x, u_input.c, arg_0.c.x)), vec4<f32>(1216f, -1006f, -565f, -382f), vec2<f32>(arg_0.a, 479f)), arg_0.c.x, ~arg_0.c.x), u_input.d.x)) | vec3<u32>(firstLeadingBit(abs(u_input.c >> (u_input.d.x % 32u))), ~(_wgslsmith_dot_vec2_u32(u_input.a, arg_0.c.xy) & (1u << (arg_0.c.x % 32u))), _wgslsmith_mult_u32(0u, _wgslsmith_mod_u32(arg_0.c.x, ~82388u)));
    return vec4<f32>(-376f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_0.b.x, -535f))) * _wgslsmith_f_op_f32(round(-787f))) - -606f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.b.x, 199f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.b.x) - 203f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(func_1(Struct_1(global3.x, global2[_wgslsmith_index_u32(u_input.c, 7u)], u_input.d), global1[_wgslsmith_index_u32(37565u, 27u)], Struct_1(-1154f, vec2<f32>(-1000f, global3.x), u_input.d))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_2(global1[_wgslsmith_index_u32(u_input.d.x, 27u)])) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.x, 647f, global3.x, 251f))))) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1331f, global3.x, 461f, global3.x))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-867f * global3.x), _wgslsmith_f_op_f32(global3.x * global3.x), _wgslsmith_f_op_f32(f32(-1f) * -1755f), global3.x) * vec4<f32>(_wgslsmith_f_op_vec4_f32(func_2(global1[_wgslsmith_index_u32(0u, 27u)])).x, global3.x, _wgslsmith_f_op_f32(-global3.x), _wgslsmith_f_op_f32(f32(-1f) * -405f))), vec4<bool>(any(vec3<bool>(true, false, true)), true, true, all(vec4<bool>(false, true, true, false))))));
    let var_1 = select(vec4<bool>(true, 63167i != _wgslsmith_div_i32(~2147483647i, u_input.b.x & u_input.b.x), any(vec4<bool>(true, any(vec2<bool>(false, true)), false, true)), all(select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true)))), vec4<bool>(firstLeadingBit(_wgslsmith_div_i32(u_input.b.x, -2746i)) == 1i, false, !(!all(vec4<bool>(false, true, false, false))), true), !vec4<bool>(all(global0[_wgslsmith_index_u32(1u, 18u)]), true, _wgslsmith_f_op_vec4_f32(func_2(global1[_wgslsmith_index_u32(u_input.a.x, 27u)])).x <= _wgslsmith_f_op_f32(f32(-1f) * -239f), true));
    let var_2 = global1[_wgslsmith_index_u32(u_input.a.x, 27u)];
    let var_3 = ~firstLeadingBit(var_2.c.yz);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.b.x * var_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_2.a, 369f))))), _wgslsmith_f_op_f32(select(global3.x, _wgslsmith_f_op_f32(min(-1775f, _wgslsmith_f_op_f32(floor(1000f)))), true)), reverseBits(vec4<i32>(1i >> (var_2.c.x % 32u), countOneBits(min(-1i, u_input.b.x)), 19482i, ~u_input.b.x)), -2147483647i);
}


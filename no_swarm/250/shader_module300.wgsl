struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec3<u32>,
    b: u32,
    c: i32,
    d: Struct_1,
    e: bool,
}

struct Struct_3 {
    a: vec4<f32>,
    b: vec2<u32>,
    c: Struct_2,
    d: Struct_2,
}

struct Struct_4 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
    d: i32,
    e: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 11> = array<f32, 11>(-1331f, -1280f, -202f, 1286f, 1740f, 747f, 267f, -974f, 696f, 777f, 581f);

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: i32, arg_1: Struct_3, arg_2: Struct_1, arg_3: u32) -> bool {
    var var_0 = ~(_wgslsmith_clamp_vec3_i32(vec3<i32>(~(-11722i), abs(u_input.a), -30982i), -vec3<i32>(u_input.a, u_input.d, 35674i), max(vec3<i32>(-24255i, 69486i, u_input.a), vec3<i32>(u_input.a, 0i, 1i))) >> (~vec3<u32>(1u, max(0u, arg_3), ~0u) % vec3<u32>(32u)));
    var var_1 = Struct_4(~(~u_input.c), arg_1.c.d, Struct_1(false), ~(-abs(33968i)), arg_2.a);
    let var_2 = Struct_3(arg_1.a, vec2<u32>(arg_3, _wgslsmith_mod_u32(~18491u, _wgslsmith_clamp_u32(u_input.b.x, var_1.a, _wgslsmith_sub_u32(1u, var_1.a)))), arg_1.d, Struct_2(arg_1.c.a, arg_1.b.x, var_0.x >> (74059u % 32u), Struct_1(all(vec3<bool>(false, arg_1.d.e, var_1.c.a)) == arg_2.a), !arg_1.c.d.a));
    var_1 = Struct_4(_wgslsmith_add_u32(min(_wgslsmith_add_u32(var_2.b.x, u_input.b.x) >> (41065u % 32u), ~1u), select(_wgslsmith_dot_vec4_u32(~vec4<u32>(var_2.d.a.x, u_input.b.x, arg_1.d.b, 22250u), ~vec4<u32>(9194u, 105146u, 17749u, 0u)), arg_1.d.a.x ^ firstTrailingBit(0u), true)), var_2.c.d, var_2.d.d, _wgslsmith_dot_vec3_i32(~(-vec3<i32>(var_2.d.c, var_0.x, arg_0)), ~(~vec3<i32>(u_input.a, -54582i, -3349i))), arg_2.a);
    let var_3 = Struct_3(vec4<f32>(1225f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-431f, -1000f)), _wgslsmith_f_op_f32(abs(640f))) * _wgslsmith_f_op_f32(abs(1342f))), -2491f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(-1000f)), _wgslsmith_f_op_f32(f32(-1f) * -756f))))), min(vec2<u32>(~(arg_1.d.b >> (var_2.c.b % 32u)), max(_wgslsmith_mod_u32(arg_3, 4294967295u), select(var_1.a, arg_1.b.x, false))), var_2.d.a.zx), var_2.d, Struct_2(vec3<u32>(_wgslsmith_add_u32(var_2.d.b | var_2.c.a.x, _wgslsmith_mod_u32(21276u, 1u)), var_1.a, reverseBits(var_1.a)), ~(~arg_1.c.a.x), _wgslsmith_mult_i32(-(-26930i >> (arg_1.b.x % 32u)), _wgslsmith_dot_vec2_i32(-var_0.zz, ~vec2<i32>(-4980i, var_0.x))), Struct_1(var_1.e), arg_1.c.d.a));
    return var_3.d.e;
}

fn func_2(arg_0: vec3<f32>, arg_1: f32, arg_2: u32) -> bool {
    var var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1589f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 + arg_0.x)), arg_0.x)), -1000f));
    let var_1 = Struct_4(~(~_wgslsmith_mult_u32(u_input.c, ~arg_2)), Struct_1(true), Struct_1(func_3(-2147483647i, Struct_3(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(249f, arg_1, 900f, 703f), vec4<f32>(global0[_wgslsmith_index_u32(u_input.b.x, 11u)], arg_1, global0[_wgslsmith_index_u32(0u, 11u)], 1174f))), vec2<u32>(arg_2, 0u), Struct_2(u_input.b, arg_2, -2504i, Struct_1(false), false), Struct_2(u_input.b, arg_2, u_input.a, Struct_1(true), true)), Struct_1(any(vec3<bool>(true, true, true))), u_input.b.x)), -47169i, (countOneBits(~u_input.c) | ~_wgslsmith_mult_u32(1u, 684u)) == 36853u);
    let var_2 = _wgslsmith_dot_vec4_i32(countOneBits(~_wgslsmith_mult_vec4_i32(vec4<i32>(17353i, var_1.d, -13039i, u_input.d), vec4<i32>(u_input.d, 1i, u_input.d, 0i)) | vec4<i32>(i32(-1i) * -60430i, _wgslsmith_mod_i32(var_1.d, u_input.d), 1i, 1i)), ~(abs(_wgslsmith_mod_vec4_i32(vec4<i32>(var_1.d, var_1.d, -18257i, var_1.d), vec4<i32>(var_1.d, u_input.a, var_1.d, u_input.d))) ^ ~vec4<i32>(-59262i, var_1.d, u_input.d, 0i)));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.b.x, 11u)] - arg_0.x), _wgslsmith_f_op_f32(round(arg_1)))), _wgslsmith_f_op_f32(-arg_0.x)))));
    var var_3 = var_1.c;
    return var_1.c.a || all(select(vec4<bool>(select(false, true, var_1.e), all(vec2<bool>(var_3.a, true)), 2147483647i >= var_1.d, var_3.a), vec4<bool>(var_1.c.a, true, var_3.a, all(vec2<bool>(var_1.e, var_1.e))), vec4<bool>(false, !var_3.a, var_1.a >= arg_2, any(vec3<bool>(var_3.a, var_3.a, var_1.b.a)))));
}

fn func_1(arg_0: Struct_3, arg_1: Struct_3) -> bool {
    global0 = array<f32, 11>();
    let var_0 = Struct_1(func_2(_wgslsmith_f_op_vec3_f32(arg_0.a.zxw + _wgslsmith_f_op_vec3_f32(-arg_0.a.zwy)), -520f, u_input.b.x));
    var var_1 = arg_0.c;
    var_1 = arg_1.c;
    let var_2 = select(var_1.a.x, u_input.b.x, true) & _wgslsmith_mod_u32(~select(4294967295u, firstTrailingBit(var_1.b), true), 5429u);
    return var_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 11>();
    var var_0 = !select(!vec4<bool>(true, any(vec2<bool>(true, true)), true, true), vec4<bool>(true, true, true, true), !vec4<bool>(all(vec2<bool>(true, false)), true, false, func_1(Struct_3(vec4<f32>(1521f, -1000f, -806f, -1085f), u_input.b.yx, Struct_2(vec3<u32>(27631u, u_input.c, 56792u), u_input.c, u_input.a, Struct_1(false), false), Struct_2(u_input.b, 4294967295u, u_input.d, Struct_1(true), true)), Struct_3(vec4<f32>(global0[_wgslsmith_index_u32(69528u, 11u)], 1000f, global0[_wgslsmith_index_u32(u_input.c, 11u)], 841f), vec2<u32>(0u, 4294967295u), Struct_2(u_input.b, u_input.c, -2147483647i, Struct_1(false), false), Struct_2(u_input.b, u_input.b.x, -15820i, Struct_1(false), false)))));
    let var_1 = Struct_3(vec4<f32>(-594f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global0[_wgslsmith_index_u32(1u, 11u)])) - _wgslsmith_f_op_f32(1945f + -1448f)))), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(countOneBits(abs(vec4<u32>(0u, u_input.c, 1u, u_input.c))), _wgslsmith_mult_vec4_u32(vec4<u32>(1u, u_input.c, 4294967295u, u_input.b.x), ~vec4<u32>(4294967295u, 1u, 50436u, u_input.c))), 11u)], global0[_wgslsmith_index_u32(u_input.c, 11u)]), ~abs(reverseBits(vec2<u32>(u_input.c, 70187u))), Struct_2(~vec3<u32>(u_input.b.x, ~u_input.c, ~63216u), ~countOneBits(1u), _wgslsmith_mult_i32(countOneBits(-u_input.a), ~u_input.d), Struct_1(any(var_0.zzy)), true), Struct_2(vec3<u32>(31486u | ~u_input.b.x, ~(~u_input.b.x), u_input.b.x), u_input.b.x, abs(u_input.a), Struct_1(all(!var_0.yz)), var_0.x));
    let var_2 = Struct_3(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(var_1.a, _wgslsmith_f_op_vec4_f32(sign(var_1.a))), vec4<f32>(711f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a.x - -436f)), _wgslsmith_f_op_f32(-191f * _wgslsmith_div_f32(global0[_wgslsmith_index_u32(u_input.b.x, 11u)], -571f)), -1000f)), u_input.b.xz, var_1.d, Struct_2(vec3<u32>(u_input.c << (_wgslsmith_mod_u32(15751u, var_1.d.b) % 32u), _wgslsmith_mod_u32(6417u, var_1.c.b), min(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, 0u, u_input.c), vec3<u32>(var_1.c.b, 0u, 22973u)))), ~48789u, -abs(u_input.a << (u_input.c % 32u)), var_1.d.d, false));
    let var_3 = Struct_4(max(0u, 48523u), Struct_1(!var_2.d.e), var_1.c.d, var_2.c.c, true);
    global0 = array<f32, 11>();
    let x = u_input.a;
    s_output = StorageBuffer(var_2.a.zx);
}


struct Struct_1 {
    a: bool,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec4<f32>,
}

struct Struct_4 {
    a: bool,
    b: vec4<u32>,
    c: Struct_3,
    d: Struct_2,
    e: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: i32,
    d: vec4<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 11> = array<Struct_2, 11>(Struct_2(Struct_1(true, false), vec4<i32>(-1i, 1i, 12094i, 39942i), Struct_1(true, true)), Struct_2(Struct_1(false, false), vec4<i32>(44329i, -1i, -20672i, -1394i), Struct_1(false, true)), Struct_2(Struct_1(false, true), vec4<i32>(2147483647i, 2147483647i, i32(-2147483648), -1i), Struct_1(true, true)), Struct_2(Struct_1(false, true), vec4<i32>(-27514i, i32(-2147483648), -22121i, 19541i), Struct_1(true, true)), Struct_2(Struct_1(false, true), vec4<i32>(1i, 49366i, 2147483647i, -32239i), Struct_1(false, true)), Struct_2(Struct_1(false, false), vec4<i32>(-14806i, i32(-2147483648), -48984i, -7363i), Struct_1(true, true)), Struct_2(Struct_1(false, true), vec4<i32>(-1i, 2147483647i, 39481i, 14888i), Struct_1(false, false)), Struct_2(Struct_1(true, false), vec4<i32>(22283i, 2147483647i, 1i, -46719i), Struct_1(true, false)), Struct_2(Struct_1(true, false), vec4<i32>(-32592i, -8261i, 0i, i32(-2147483648)), Struct_1(false, false)), Struct_2(Struct_1(false, true), vec4<i32>(-6154i, -21701i, -30550i, i32(-2147483648)), Struct_1(false, false)), Struct_2(Struct_1(true, true), vec4<i32>(2147483647i, i32(-2147483648), 7441i, i32(-2147483648)), Struct_1(true, true)));

var<private> global1: array<vec3<f32>, 5>;

var<private> global2: Struct_4;

var<private> global3: array<i32, 15> = array<i32, 15>(7695i, 0i, 2696i, -10224i, 0i, 1i, -11556i, -454i, 1i, 24962i, 1i, 1i, 0i, -2407i, 1i);

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> vec4<u32> {
    global0 = array<Struct_2, 11>();
    global0 = array<Struct_2, 11>();
    global2 = Struct_4(any(select(select(vec3<bool>(global2.d.c.b, true, true), vec3<bool>(global2.c.a, global2.c.a, true), global2.c.a), select(vec3<bool>(true, true, global2.a), vec3<bool>(false, global2.d.c.b, global2.a), true), global2.a)) == false, global2.b, Struct_3(!select(false, false, any(vec4<bool>(global2.c.a, global2.c.a, true, global2.d.c.a))), _wgslsmith_f_op_vec4_f32(trunc(global2.c.b))), Struct_2(global2.d.a, vec4<i32>(global2.d.b.x, u_input.a.x, reverseBits(-2147483647i), 1i), Struct_1(true, true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.c.b.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(251f)) - global2.e)) - 141f));
    global2 = Struct_4(!(u_input.a.x >= (i32(-1i) * -1i)) != any(!select(vec3<bool>(false, global2.a, true), vec3<bool>(global2.a, false, false), true)), _wgslsmith_sub_vec4_u32(global2.b, global2.b), global2.c, Struct_2(Struct_1(true, !global2.c.a && true), select(-(vec4<i32>(-1i, global3[_wgslsmith_index_u32(0u, 15u)], u_input.a.x, u_input.a.x) >> (global2.b % vec4<u32>(32u))), reverseBits(_wgslsmith_mult_vec4_i32(vec4<i32>(7993i, u_input.a.x, -2147483647i, -1i), global2.d.b)), !(!vec4<bool>(global2.a, global2.c.a, global2.a, false))), global2.d.a), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.c.b.x)), -376f)));
    var var_0 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(global2.c.b.wyy, vec3<f32>(-1027f, 672f, global2.e))))) * vec3<f32>(_wgslsmith_f_op_f32(step(873f, 771f)), -2161f, _wgslsmith_f_op_f32(global2.c.b.x * _wgslsmith_f_op_f32(round(global2.c.b.x))))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-508f))) + _wgslsmith_f_op_f32(global2.e * _wgslsmith_f_op_f32(-global2.e))), _wgslsmith_f_op_f32(trunc(-849f)), _wgslsmith_f_op_f32(ceil(1752f)))));
    return vec4<u32>(min(global2.b.x, ~global2.b.x ^ firstTrailingBit(max(1u, global2.b.x))), global2.b.x, countOneBits(abs(~4294967295u)) << (reverseBits(~max(global2.b.x, global2.b.x)) % 32u), ~global2.b.x);
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_4(false, func_3(), global2.c, Struct_2(Struct_1(true, true), ~_wgslsmith_mod_vec4_i32(global2.d.b, ~vec4<i32>(u_input.a.x, -1018i, global3[_wgslsmith_index_u32(global2.b.x, 15u)], 0i)), global2.d.c), global2.c.b.x);
    global3 = array<i32, 15>();
    let var_1 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + _wgslsmith_f_op_f32(ceil(213f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.c.b.x - var_0.e)), _wgslsmith_f_op_f32(-var_0.c.b.x), var_0.e)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-var_0.c.b.x), _wgslsmith_f_op_f32(-var_0.e), var_0.e, _wgslsmith_f_op_f32(-global2.e)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global2.c.b + global2.c.b))) * vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(global2.e, global2.e, global2.c.a)))), -2823f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -675f), -717f), _wgslsmith_f_op_f32(-global2.c.b.x))), !(!(!select(vec4<bool>(false, var_0.c.a, var_0.d.c.b, false), vec4<bool>(var_0.a, var_0.d.a.a, var_0.d.c.b, global2.d.a.b), false)))));
    global2 = Struct_4(any(select(select(vec2<bool>(var_0.c.a, true), vec2<bool>(global2.d.c.b, var_0.a), vec2<bool>(false, false)), vec2<bool>(false, true), var_0.d.c.a)), ~(~_wgslsmith_clamp_vec4_u32(vec4<u32>(39518u, var_0.b.x, var_0.b.x, 20232u), reverseBits(vec4<u32>(global2.b.x, 0u, 0u, var_0.b.x)), ~vec4<u32>(var_0.b.x, 14479u, global2.b.x, 0u))), Struct_3(global2.a, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.c.b.x, -272f, 1619f, 1000f) - global2.c.b) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1742f, var_1.x, 2207f, global2.e))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_0.e, 255f, 1369f, -260f)))), global2.a))), global2.d, var_0.e);
    var var_2 = ~(~_wgslsmith_dot_vec4_i32(global2.d.b, vec4<i32>(-6887i, var_0.d.b.x, -55304i << (0u % 32u), u_input.a.x)));
    return var_0.d.c;
}

fn func_1(arg_0: vec4<bool>) -> Struct_1 {
    var var_0 = firstTrailingBit(vec3<u32>(global2.b.x, 1u, global2.b.x));
    var_0 = ~global2.b.xwz;
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.e + global2.c.b.x)))), _wgslsmith_f_op_f32(max(1f, _wgslsmith_f_op_f32(min(-926f, global2.c.b.x)))));
    global0 = array<Struct_2, 11>();
    var var_2 = -20731i;
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = (global3[_wgslsmith_index_u32(global2.b.x, 15u)] << (~(~1u) % 32u)) >> (62015u % 32u);
    let var_1 = func_1(!vec4<bool>(any(select(vec3<bool>(true, false, global2.a), vec3<bool>(true, false, false), false)), true, true, global2.a));
    global0 = array<Struct_2, 11>();
    let var_2 = -2147483647i;
    var var_3 = global2.b;
    let var_4 = vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -252f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1286f)) * -124f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global2.c.b.x + -214f), -196f, func_2().a)) + _wgslsmith_f_op_f32(-global2.c.b.x))));
    let x = u_input.a;
    s_output = StorageBuffer(~var_3.x, vec2<u32>(5731u, ~var_3.x), global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(~(global2.b.x & var_3.x), ~_wgslsmith_add_u32(89134u, var_3.x)), 15u)] << (~(~(~0u)) % 32u), _wgslsmith_sub_vec4_i32(~vec4<i32>(u_input.a.x ^ u_input.a.x, ~var_2, -1i, 14301i), firstLeadingBit((global2.d.b & global2.d.b) << (firstLeadingBit(vec4<u32>(var_3.x, 20492u, 1u, var_3.x)) % vec4<u32>(32u)))), global2.b.x);
}


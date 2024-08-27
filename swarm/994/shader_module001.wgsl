struct Struct_1 {
    a: vec3<bool>,
    b: f32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
    b: vec4<u32>,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_3,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: i32,
    d: u32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 10>;

var<private> global1: vec3<i32>;

var<private> global2: array<bool, 4>;

var<private> global3: vec2<bool> = vec2<bool>(false, false);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> bool {
    global0 = array<Struct_3, 10>();
    let var_0 = ~(~countOneBits(vec2<u32>(countOneBits(38205u), _wgslsmith_add_u32(u_input.b, 4294967295u))));
    global1 = vec3<i32>(_wgslsmith_add_i32(_wgslsmith_sub_i32(-u_input.c, global1.x), countOneBits(global1.x)), min(u_input.e.x, -28212i), _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(-9733i, global1.x), vec2<i32>(-2147483647i, -29002i), vec2<i32>(u_input.c, 0i)) << (firstTrailingBit(u_input.a.xy) % vec2<u32>(32u)), ~vec2<i32>(global1.x, global1.x)), vec2<i32>(8209i, 29091i)));
    let var_1 = ~vec4<i32>(~u_input.c, abs(u_input.c), -min(_wgslsmith_sub_i32(-22543i, u_input.c), countOneBits(u_input.c)), 2147483647i);
    let var_2 = _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_add_i32(-34479i, _wgslsmith_clamp_i32(var_1.x ^ 2147483647i, global1.x, -1i)), _wgslsmith_add_i32(1i, min(_wgslsmith_dot_vec4_i32(var_1, vec4<i32>(global1.x, global1.x, 0i, var_1.x)), 1i))), global1.zx);
    return false;
}

fn func_2() -> u32 {
    global2 = array<bool, 4>();
    global3 = vec2<bool>(true && func_3(), func_3());
    var var_0 = 1442f;
    global1 = max(_wgslsmith_sub_vec3_i32(vec3<i32>(2147483647i, 1i, global1.x) << (vec3<u32>(17682u, u_input.a.x, u_input.a.x) % vec3<u32>(32u)), _wgslsmith_add_vec3_i32(vec3<i32>(global1.x, -1i, -43290i), vec3<i32>(u_input.c, global1.x, global1.x) | vec3<i32>(u_input.c, 47906i, 19765i))), vec3<i32>(global1.x, -8948i, ~global1.x)) << ((u_input.a << (u_input.a % vec3<u32>(32u))) % vec3<u32>(32u));
    var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(380f, _wgslsmith_f_op_f32(f32(-1f) * -108f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(708f + 344f)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(747f)) - 126f))), _wgslsmith_f_op_f32(f32(-1f) * -315f)))));
    return _wgslsmith_div_u32(4294967295u, ~(~(~1u)));
}

fn func_1() -> vec3<u32> {
    let var_0 = vec2<i32>(~55806i, max(_wgslsmith_sub_i32(_wgslsmith_mult_i32(u_input.c, 2147483647i) ^ -2147483647i, ~global1.x), ~_wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(global1.xy, vec2<i32>(0i, -2147483647i)), _wgslsmith_sub_vec2_i32(global1.xz, vec2<i32>(44735i, global1.x)))));
    global2 = array<bool, 4>();
    var var_1 = _wgslsmith_sub_vec2_i32(abs(_wgslsmith_div_vec2_i32(vec2<i32>(global1.x | var_0.x, firstLeadingBit(u_input.c)), -select(u_input.e, u_input.e, vec2<bool>(false, global3.x)))), ~(~var_0));
    var var_2 = 1i;
    global2 = array<bool, 4>();
    return vec3<u32>(abs(_wgslsmith_mod_u32(~0u, min(11422u, u_input.a.x))) >> (_wgslsmith_mod_u32(u_input.d, _wgslsmith_mult_u32(u_input.a.x ^ 4294967295u, func_2())) % 32u), 41935u, u_input.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<f32>(-653f, 735f);
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-664f, -2258f, var_0.x, 510f), vec4<f32>(var_0.x, var_0.x, var_0.x, 1783f))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(571f, 374f, var_0.x, 1435f) + vec4<f32>(var_0.x, var_0.x, -697f, 266f))), vec4<f32>(1479f, _wgslsmith_div_f32(917f, var_0.x), _wgslsmith_f_op_f32(var_0.x * var_0.x), _wgslsmith_f_op_f32(f32(-1f) * -346f)))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-176f, var_0.x, -1205f, 2262f)) + _wgslsmith_div_vec4_f32(vec4<f32>(var_0.x, var_0.x, var_0.x, -308f), vec4<f32>(1189f, var_0.x, var_0.x, var_0.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, var_0.x, -525f)))), !(!select(vec4<bool>(false, global3.x, false, false), vec4<bool>(global3.x, global3.x, true, global2[_wgslsmith_index_u32(20339u, 4u)]), vec4<bool>(global2[_wgslsmith_index_u32(u_input.d, 4u)], true, false, true))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_0.x, var_0.x, -1456f, -762f))))) + _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(221f, var_0.x, 948f, var_0.x))))));
    global2 = array<bool, 4>();
    let var_2 = true;
    var var_3 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32((func_1() ^ ~(~vec3<u32>(u_input.d, 1u, 0u))) & _wgslsmith_mult_vec3_u32(vec3<u32>(reverseBits(u_input.a.x), 33970u >> (1u % 32u), ~u_input.d), u_input.a), u_input.a), 10u)];
    var var_4 = global1.x > ~(_wgslsmith_dot_vec2_i32(~vec2<i32>(u_input.c, u_input.e.x), u_input.e) & u_input.e.x);
    let var_5 = vec3<bool>(true, true, false);
    var var_6 = Struct_4(Struct_1(vec3<bool>(global2[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.a.x, _wgslsmith_mod_u32(var_3.a.x, u_input.b)), 4u)], var_5.x, false), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x - var_0.x)) * 1000f)), global0[_wgslsmith_index_u32(u_input.d, 10u)], Struct_1(var_5, -1823f));
    let var_7 = Struct_1(select(vec3<bool>(select(all(vec2<bool>(global3.x, var_6.a.a.x)), var_2, all(vec3<bool>(false, var_2, var_2))), var_2 && !global3.x, true), var_6.c.a, vec3<bool>(false, global3.x, true || var_5.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x + 246f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.x, var_1.x) + var_6.c.b))), var_1.x));
    let x = u_input.a;
    s_output = StorageBuffer(114f, abs(select(vec4<u32>(_wgslsmith_mult_u32(var_3.a.x, u_input.d), ~4294967295u, _wgslsmith_dot_vec3_u32(var_3.a.ywx, vec3<u32>(4294967295u, u_input.a.x, var_3.b.x)), var_3.a.x), vec4<u32>(4294967295u, u_input.b, ~var_6.b.b.x, u_input.b), !(!vec4<bool>(var_5.x, true, false, var_7.a.x)))));
}


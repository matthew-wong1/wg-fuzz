struct Struct_1 {
    a: vec4<bool>,
    b: vec2<u32>,
    c: i32,
    d: vec4<bool>,
    e: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
    d: vec4<f32>,
    e: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: i32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: u32,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(1i, Struct_2(Struct_1(vec4<bool>(false, true, true, true), vec2<u32>(57212u, 49627u), 1068i, vec4<bool>(true, true, false, false), vec2<f32>(-1331f, 727f)), Struct_1(vec4<bool>(false, true, true, false), vec2<u32>(12142u, 0u), 0i, vec4<bool>(false, true, true, true), vec2<f32>(870f, 752f)), -267f, vec4<f32>(176f, -1292f, -1098f, 1000f), Struct_1(vec4<bool>(false, true, false, false), vec2<u32>(59560u, 1u), 1i, vec4<bool>(false, true, false, false), vec2<f32>(1027f, 635f))));

var<private> global1: vec2<i32> = vec2<i32>(i32(-2147483648), 3146i);

var<private> global2: array<Struct_2, 1> = array<Struct_2, 1>(Struct_2(Struct_1(vec4<bool>(true, true, true, false), vec2<u32>(0u, 35288u), i32(-2147483648), vec4<bool>(true, false, false, false), vec2<f32>(-942f, 1152f)), Struct_1(vec4<bool>(true, true, false, true), vec2<u32>(0u, 1u), 2147483647i, vec4<bool>(false, false, true, false), vec2<f32>(-1512f, -1000f)), -984f, vec4<f32>(-1218f, -997f, 1000f, 284f), Struct_1(vec4<bool>(false, false, true, false), vec2<u32>(4294967295u, 1154u), i32(-2147483648), vec4<bool>(false, true, false, false), vec2<f32>(416f, 202f))));

var<private> global3: array<vec3<i32>, 20>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3() -> f32 {
    global0 = Struct_3(u_input.d.x, global2[_wgslsmith_index_u32(global0.b.a.b.x, 1u)]);
    let var_0 = Struct_1(global0.b.e.d, ~_wgslsmith_mult_vec2_u32(firstTrailingBit(firstLeadingBit(vec2<u32>(u_input.b, 1461u))), ~global0.b.b.b), _wgslsmith_sub_i32(global1.x, _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(global0.b.e.c, global0.a, global0.a, global1.x)), select(vec4<i32>(2147483647i, 0i, 20131i, 0i), vec4<i32>(u_input.c, -15537i, -1i, global0.a), vec4<bool>(global0.b.e.a.x, true, true, false))), min(_wgslsmith_div_i32(0i, global0.a), _wgslsmith_mod_i32(-5092i, u_input.d.x)))), select(!vec4<bool>(true, all(vec2<bool>(true, false)), global0.b.a.d.x || global0.b.e.d.x, all(vec2<bool>(true, false))), vec4<bool>(true, !global0.b.b.d.x, !global0.b.b.a.x && !global0.b.a.d.x, !(!global0.b.a.d.x)), -_wgslsmith_dot_vec2_i32(u_input.d, u_input.d) > -global0.a), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-global0.b.b.e))), _wgslsmith_f_op_vec2_f32(global0.b.b.e * _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(global0.b.b.e * vec2<f32>(global0.b.c, global0.b.e.e.x)))))));
    let var_1 = Struct_3(i32(-1i) * -1i, global2[_wgslsmith_index_u32(24737u, 1u)]);
    let var_2 = ~u_input.b;
    let var_3 = Struct_1(select(global0.b.e.a, var_1.b.e.a, !all(vec4<bool>(false, var_1.b.e.a.x, var_0.d.x, var_0.d.x)) | var_1.b.e.d.x), ((~u_input.a >> (var_0.b % vec2<u32>(32u))) & var_1.b.a.b) & (reverseBits(select(var_1.b.e.b, vec2<u32>(4294967295u, var_0.b.x), false)) ^ countOneBits(~vec2<u32>(34280u, 0u))), ~(~_wgslsmith_mult_i32(var_1.b.e.c, ~2147483647i)), var_0.a, vec2<f32>(-2032f, -1649f));
    return -1029f;
}

fn func_2(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: vec2<u32>) -> vec2<f32> {
    let var_0 = _wgslsmith_f_op_f32(func_3());
    var var_1 = 1u << (min(arg_2.x ^ ~0u, 58045u) % 32u);
    global2 = array<Struct_2, 1>();
    let var_2 = arg_1.b.x;
    let var_3 = _wgslsmith_f_op_vec3_f32(-global0.b.d.xwy);
    return vec2<f32>(_wgslsmith_f_op_f32(-var_3.x), 411f);
}

fn func_1(arg_0: vec4<i32>, arg_1: vec2<bool>, arg_2: vec2<i32>, arg_3: vec4<u32>) -> Struct_1 {
    return Struct_1(global0.b.a.a, u_input.a, -2147483647i, global0.b.a.d, _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_2(global0.b.e.d, global0.b.e, vec2<u32>(44369u, 1u))) + global0.b.e.e) * global0.b.e.e))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_3(_wgslsmith_div_i32(global1.x, _wgslsmith_mod_i32(-1i, _wgslsmith_mod_i32(abs(-29020i), firstTrailingBit(-46343i)))), Struct_2(Struct_1(select(select(global0.b.a.d, global0.b.b.a, true), global0.b.b.a, select(vec4<bool>(false, true, global0.b.e.d.x, false), global0.b.e.a, vec4<bool>(global0.b.e.d.x, global0.b.b.a.x, true, global0.b.e.d.x))), vec2<u32>(68674u, ~u_input.a.x), global1.x, !select(global0.b.b.d, vec4<bool>(false, global0.b.e.d.x, global0.b.e.a.x, false), global0.b.b.d.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global0.b.e.e))), Struct_1(vec4<bool>(global0.b.a.c < global0.a, true, global0.b.e.a.x, true), vec2<u32>(1u, abs(1488u)), -u_input.c, global0.b.e.a, global0.b.a.e), 1426f, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-845f - global0.b.c), global0.b.a.e.x, global0.b.d.x, -1000f) - _wgslsmith_div_vec4_f32(vec4<f32>(global0.b.a.e.x, global0.b.d.x, 1525f, 345f), vec4<f32>(global0.b.c, global0.b.a.e.x, global0.b.a.e.x, -380f))), global0.b.e));
    let var_0 = global0.b.e;
    var var_1 = global0.b.b.a.x;
    let var_2 = ~(_wgslsmith_add_vec4_i32(~_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.c, u_input.d.x, var_0.c, global0.b.a.c), vec4<i32>(-24654i, 0i, -1i, 5299i)), _wgslsmith_mod_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(var_0.c, var_0.c, -15196i, global1.x), vec4<i32>(u_input.c, -2147483647i, 2147483647i, var_0.c)), _wgslsmith_mod_vec4_i32(vec4<i32>(36391i, -63862i, -6142i, -1i), vec4<i32>(0i, 8536i, u_input.c, 2147483647i)))) | ~(select(vec4<i32>(global1.x, global1.x, 45029i, -2147483647i), vec4<i32>(-22587i, global0.b.a.c, u_input.c, 7590i), vec4<bool>(true, global0.b.b.a.x, global0.b.e.a.x, global0.b.a.d.x)) ^ vec4<i32>(u_input.d.x, global1.x, global0.b.a.c, global0.b.b.c)));
    let var_3 = Struct_3(_wgslsmith_mult_i32(var_2.x, i32(-1i) * -var_0.c), Struct_2(func_1(select(~var_2, max(var_2, vec4<i32>(1403i, var_0.c, u_input.c, var_2.x)), global0.b.b.a.x), global0.b.a.a.zz, min(vec2<i32>(u_input.c, var_0.c), vec2<i32>(-2147483647i, 5879i)), vec4<u32>(1u, _wgslsmith_sub_u32(var_0.b.x, global0.b.b.b.x), ~var_0.b.x, ~4318u)), Struct_1(select(var_0.d, vec4<bool>(var_0.d.x, global0.b.a.a.x, true, global0.b.e.a.x), true), ~_wgslsmith_add_vec2_u32(u_input.a, u_input.a), _wgslsmith_sub_i32(1i, global0.a) | global1.x, var_0.a, global0.b.d.xy), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(941f + -2009f)) + global0.b.e.e.x), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1367f), _wgslsmith_f_op_f32(-1627f - _wgslsmith_div_f32(var_0.e.x, var_0.e.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.e.x - var_0.e.x), _wgslsmith_f_op_f32(global0.b.b.e.x + var_0.e.x)), _wgslsmith_f_op_f32(var_0.e.x - -450f)), func_1(var_2, select(global0.b.e.d.zy, vec2<bool>(true, global0.b.a.d.x), var_0.d.zy), ~(-var_2.zy), vec4<u32>(1819u, u_input.b, 4294967295u, 16456u) ^ _wgslsmith_div_vec4_u32(vec4<u32>(0u, var_0.b.x, var_0.b.x, 0u), vec4<u32>(0u, 0u, u_input.b, 0u)))));
    global1 = ~(vec2<i32>(0i << (var_0.b.x % 32u), firstTrailingBit(firstTrailingBit(u_input.c))) & firstLeadingBit(u_input.d));
    global2 = array<Struct_2, 1>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(var_3.b.d.x, var_3.b.a.e.x)), var_3.b.a.e.x)) + var_3.b.c) * var_0.e.x), (~52494u ^ countOneBits(~u_input.b)) << (var_3.b.e.b.x % 32u), abs(~(26898u >> (var_3.b.e.b.x % 32u))), global1.x, var_3.b.b.e.x);
}


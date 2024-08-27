struct Struct_1 {
    a: i32,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<f32>,
    d: vec3<i32>,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: f32;

var<private> global2: array<bool, 11>;

var<private> global3: array<vec3<i32>, 26>;

var<private> global4: array<Struct_1, 31>;

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_1(arg_0: Struct_1) -> f32 {
    global2 = array<bool, 11>();
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(1f)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(1629f, -175f) * _wgslsmith_f_op_f32(-233f * -140f)))))));
}

fn func_3() -> vec3<i32> {
    global2 = array<bool, 11>();
    global2 = array<bool, 11>();
    global2 = array<bool, 11>();
    var var_0 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(ceil(-1211f)), -1163f, -195f), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-804f, -1063f) - _wgslsmith_div_f32(1021f, -1015f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(Struct_1(global0.x, global2[_wgslsmith_index_u32(u_input.a, 11u)]))) + _wgslsmith_f_op_f32(f32(-1f) * -1056f)), _wgslsmith_f_op_f32(func_1(Struct_1(global0.x, global2[_wgslsmith_index_u32(37691u, 11u)]))))))));
    return vec3<i32>(8428i, ~u_input.b, _wgslsmith_clamp_i32(countOneBits(_wgslsmith_clamp_i32(25654i, 0i, -18980i)), _wgslsmith_dot_vec2_i32(reverseBits(global0.zz), global0.wy) >> (u_input.a % 32u), _wgslsmith_mod_i32(firstTrailingBit(0i), 22318i)));
}

fn func_2(arg_0: Struct_1) -> vec4<bool> {
    global2 = array<bool, 11>();
    var var_0 = vec2<u32>(~1u, ~(~(~max(0u, 23829u))));
    let var_1 = Struct_2(Struct_1(global0.x, arg_0.b), Struct_1(_wgslsmith_mod_i32(arg_0.a, ~(-27733i)), global2[_wgslsmith_index_u32(((u_input.d & u_input.d) | (4294967295u & var_0.x)) >> (1u % 32u), 11u)]), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(781f, 1000f)))))) + _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(1534f, 707f) * vec2<f32>(1131f, 1000f)), _wgslsmith_div_vec2_f32(vec2<f32>(-1553f, -130f), vec2<f32>(116f, 153f)), true))))), func_3(), !select(select(vec3<bool>(arg_0.b, false, arg_0.b), select(vec3<bool>(true, true, global2[_wgslsmith_index_u32(1u, 11u)]), vec3<bool>(global2[_wgslsmith_index_u32(0u, 11u)], arg_0.b, false), vec3<bool>(true, true, global2[_wgslsmith_index_u32(4294967295u, 11u)])), select(vec3<bool>(false, false, arg_0.b), vec3<bool>(true, true, global2[_wgslsmith_index_u32(u_input.a, 11u)]), vec3<bool>(true, arg_0.b, false))), vec3<bool>(true, global2[_wgslsmith_index_u32(~u_input.a, 11u)], false), !(!vec3<bool>(false, true, arg_0.b))));
    global3 = array<vec3<i32>, 26>();
    let var_2 = var_1.e.zz;
    return !select(!(!(!vec4<bool>(var_2.x, true, true, true))), select(select(!vec4<bool>(true, var_2.x, var_1.a.b, arg_0.b), !vec4<bool>(false, arg_0.b, true, arg_0.b), false), select(!vec4<bool>(false, global2[_wgslsmith_index_u32(36659u, 11u)], false, true), !vec4<bool>(false, arg_0.b, true, var_2.x), select(vec4<bool>(var_2.x, var_1.a.b, var_1.b.b, var_1.e.x), vec4<bool>(arg_0.b, var_2.x, false, true), vec4<bool>(false, false, global2[_wgslsmith_index_u32(54397u, 11u)], true))), !select(vec4<bool>(var_2.x, true, false, false), vec4<bool>(var_1.e.x, true, true, true), true)), !select(true, true, var_1.c.x <= var_1.c.x));
}

fn func_4(arg_0: Struct_2, arg_1: vec4<i32>) -> Struct_2 {
    var var_0 = u_input.a;
    let var_1 = ~(~_wgslsmith_sub_vec4_u32(vec4<u32>(~1u, _wgslsmith_div_u32(54772u, 4294967295u), ~u_input.a, _wgslsmith_add_u32(1u, 80698u)), ~vec4<u32>(u_input.a, u_input.a, u_input.d, 0u)));
    var_0 = _wgslsmith_dot_vec4_u32(firstLeadingBit(~(var_1 << (var_1 % vec4<u32>(32u)))), _wgslsmith_clamp_vec4_u32(~select(vec4<u32>(1u, 79548u, var_1.x, 7366u), var_1, vec4<bool>(arg_0.a.b, arg_0.b.b, global2[_wgslsmith_index_u32(var_1.x, 11u)], false)), var_1, _wgslsmith_add_vec4_u32(vec4<u32>(u_input.d, 4294967295u, u_input.a, var_1.x), firstTrailingBit(var_1)))) ^ 1242u;
    var var_2 = arg_0;
    let var_3 = _wgslsmith_div_i32(~1i, firstLeadingBit(min(22422i, min(_wgslsmith_mod_i32(-10318i, -2147483647i), _wgslsmith_dot_vec2_i32(arg_0.d.xz, arg_1.zw)))));
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(Struct_2(global4[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_div_u32(1u, _wgslsmith_div_u32(0u, u_input.a))), 31u)], Struct_1(~(~u_input.c), false), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(func_1(Struct_1(global0.x, true))), _wgslsmith_f_op_f32(select(553f, -2236f, false))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-203f, 1096f)) * _wgslsmith_div_vec2_f32(vec2<f32>(-942f, -608f), vec2<f32>(-1286f, -829f))))), min(vec3<i32>(1i, 1i, -31571i >> (u_input.d % 32u)), global0.ywy), vec3<bool>(all(vec2<bool>(true, false)), true, false)), ~_wgslsmith_div_vec4_i32(select(~vec4<i32>(-2147483647i, 5873i, global0.x, 31373i), ~vec4<i32>(global0.x, global0.x, global0.x, global0.x), func_2(Struct_1(-1041i, global2[_wgslsmith_index_u32(97243u, 11u)]))), ~min(vec4<i32>(1i, global0.x, global0.x, -10965i), vec4<i32>(global0.x, global0.x, -2147483647i, global0.x))));
    var var_1 = func_4(func_4(Struct_2(global4[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.a, min(u_input.d, u_input.a)), 31u)], var_0.a, vec2<f32>(_wgslsmith_f_op_f32(var_0.c.x - var_0.c.x), _wgslsmith_f_op_f32(f32(-1f) * -1033f)), func_3(), vec3<bool>(true, any(var_0.e.zx), var_0.b.a < var_0.a.a)), firstLeadingBit(vec4<i32>(2147483647i, u_input.c, ~global0.x, func_3().x))), vec4<i32>(1i, _wgslsmith_dot_vec4_i32(vec4<i32>(~var_0.b.a, -17796i, var_0.b.a, -var_0.b.a), abs(-vec4<i32>(global0.x, -54807i, var_0.b.a, var_0.d.x))), -func_4(Struct_2(Struct_1(1i, var_0.b.b), global4[_wgslsmith_index_u32(82128u, 31u)], var_0.c, vec3<i32>(global0.x, u_input.b, -1i), vec3<bool>(true, var_0.e.x, global2[_wgslsmith_index_u32(0u, 11u)])), vec4<i32>(-15344i, -15812i, 2147483647i, -14134i)).b.a, var_0.a.a)).e.zx;
    let var_2 = any(var_0.e);
    global0 = vec4<i32>(-1i) * -vec4<i32>(reverseBits(var_0.a.a << (59969u % 32u)), 33477i, -1i, _wgslsmith_mod_i32(44859i >> (u_input.a % 32u), 2147483647i << (0u % 32u)));
    let var_3 = Struct_1(-2147483647i, any(!select(vec2<bool>(var_2, false), vec2<bool>(var_0.a.b, var_2), !global2[_wgslsmith_index_u32(u_input.d, 11u)])));
    var_0 = func_4(Struct_2(func_4(Struct_2(func_4(Struct_2(var_0.b, Struct_1(5783i, var_1.x), var_0.c, vec3<i32>(var_3.a, var_3.a, var_3.a), var_0.e), vec4<i32>(global0.x, var_0.d.x, 26353i, 76507i)).a, func_4(Struct_2(Struct_1(-1i, var_2), Struct_1(-8962i, true), var_0.c, global0.wwy, var_0.e), vec4<i32>(global0.x, -2147483647i, var_3.a, u_input.b)).b, _wgslsmith_f_op_vec2_f32(-vec2<f32>(265f, -1306f)), _wgslsmith_sub_vec3_i32(global0.yyx, vec3<i32>(u_input.c, global0.x, var_0.a.a)), vec3<bool>(var_0.e.x, false, var_2)), select(vec4<i32>(var_3.a, 1i, var_0.d.x, -3468i), vec4<i32>(var_0.d.x, var_3.a, -1i, -1i), var_2) & _wgslsmith_mod_vec4_i32(vec4<i32>(var_3.a, -1i, global0.x, var_0.b.a), vec4<i32>(var_0.a.a, -45154i, 1i, -2147483647i))).b, var_3, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(round(var_0.c)), var_0.c, true)), _wgslsmith_add_vec3_i32(abs(select(vec3<i32>(1i, var_3.a, global0.x), global0.xyx, var_2)), global3[_wgslsmith_index_u32(u_input.a, 26u)]), var_0.e), _wgslsmith_sub_vec4_i32(vec4<i32>(~u_input.b, max(global0.x, var_3.a), -2147483647i, _wgslsmith_div_i32(42568i, var_3.a)), _wgslsmith_sub_vec4_i32(vec4<i32>(-22820i, 4160i, var_3.a, -2147483647i), vec4<i32>(2147483647i, var_0.a.a, global0.x, 14052i) >> (vec4<u32>(0u, 1u, u_input.a, 12020u) % vec4<u32>(32u)))) | vec4<i32>(select(1i, -u_input.b, select(var_2, var_0.a.b, var_3.b)), _wgslsmith_mult_i32(~(-1i), ~var_0.b.a), u_input.c, _wgslsmith_sub_i32(global0.x, i32(-1i) * -2147483647i)));
    var_0 = func_4(Struct_2(var_0.b, func_4(Struct_2(func_4(Struct_2(Struct_1(0i, true), Struct_1(1i, false), var_0.c, vec3<i32>(1i, -1i, global0.x), var_0.e), vec4<i32>(u_input.b, u_input.c, -4810i, var_0.d.x)).a, Struct_1(u_input.b, var_2), var_0.c, var_0.d, func_2(Struct_1(var_3.a, true)).zyw), vec4<i32>(countOneBits(0i), _wgslsmith_sub_i32(1i, 2147483647i), -39380i >> (u_input.d % 32u), ~45813i)).a, vec2<f32>(-832f, var_0.c.x), _wgslsmith_add_vec3_i32(global3[_wgslsmith_index_u32(max(16508u ^ u_input.a, u_input.d), 26u)], ~vec3<i32>(1i, -18560i, u_input.c) ^ ~vec3<i32>(global0.x, u_input.c, global0.x)), select(!(!vec3<bool>(var_3.b, true, true)), var_0.e, func_4(Struct_2(global4[_wgslsmith_index_u32(0u, 31u)], var_3, var_0.c, var_0.d, var_0.e), vec4<i32>(1i, -52493i, -2012i, u_input.c) << (vec4<u32>(u_input.a, 29101u, u_input.a, u_input.a) % vec4<u32>(32u))).e)), min(vec4<i32>(-global0.x, _wgslsmith_sub_i32(1i, var_0.d.x), 1i, reverseBits(u_input.b)) | _wgslsmith_mod_vec4_i32(~vec4<i32>(27587i, var_3.a, global0.x, var_3.a), abs(vec4<i32>(var_3.a, var_3.a, var_0.a.a, -23900i))), vec4<i32>(min(global0.x | 0i, var_0.a.a), global0.x, firstTrailingBit(u_input.b) & min(var_0.b.a, 5106i), -20292i)));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.c.x);
}


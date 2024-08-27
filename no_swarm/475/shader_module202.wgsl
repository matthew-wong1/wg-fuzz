struct Struct_1 {
    a: i32,
    b: bool,
    c: vec4<i32>,
    d: vec4<f32>,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: bool,
    d: Struct_1,
    e: vec2<bool>,
}

struct Struct_3 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: vec2<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<f32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 1>;

var<private> global1: array<f32, 19> = array<f32, 19>(326f, -1468f, -442f, -946f, -855f, -501f, -1828f, -758f, -1527f, -636f, 379f, -1629f, 1000f, 859f, 605f, -1842f, 2621f, 590f, 319f);

var<private> global2: vec3<i32> = vec3<i32>(27335i, 2147483647i, 0i);

var<private> global3: Struct_2;

var<private> global4: f32 = 1514f;

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_3, arg_1: u32, arg_2: vec3<i32>, arg_3: Struct_1) -> vec2<i32> {
    let var_0 = ~1751i;
    global3 = Struct_2(Struct_1(_wgslsmith_add_i32(min(_wgslsmith_sub_i32(arg_0.a.x, 60974i), -1i), -4414i << (arg_1 % 32u)), false, _wgslsmith_mod_vec4_i32(-(~arg_3.c), u_input.a), global3.d.d, i32(-1i) * -16161i), false, false, arg_3, global3.e);
    global1 = array<f32, 19>();
    return _wgslsmith_add_vec2_i32(arg_3.c.yw, firstTrailingBit(-(~vec2<i32>(arg_2.x, arg_0.a.x) ^ (global3.a.c.zw ^ u_input.b))));
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_3(func_3(Struct_3(min(~vec2<i32>(global2.x, 7868i), vec2<i32>(3679i, global3.a.e))), _wgslsmith_dot_vec2_u32(firstLeadingBit(select(vec2<u32>(30943u, 24753u), vec2<u32>(54586u, 1u), false)), ~vec2<u32>(1u, 1u)), u_input.a.wwx << (~vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u)), Struct_1(-abs(global3.a.e), _wgslsmith_f_op_f32(-1145f + global3.d.d.x) != _wgslsmith_f_op_f32(310f * global3.d.d.x), _wgslsmith_clamp_vec4_i32(-vec4<i32>(global3.a.a, 24247i, 1i, u_input.d), vec4<i32>(-26519i, global3.a.e, global3.a.e, 0i) ^ u_input.a, vec4<i32>(-11114i, u_input.a.x, global3.d.e, global3.d.a)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-390f, global1[_wgslsmith_index_u32(35581u, 19u)], -1902f, -636f)), vec4<f32>(global1[_wgslsmith_index_u32(58741u, 19u)], global1[_wgslsmith_index_u32(30589u, 19u)], -419f, global3.a.d.x), false)), 27563i)));
    global4 = global1[_wgslsmith_index_u32(firstLeadingBit(~(~1u)), 19u)];
    var var_1 = Struct_2(global3.a, true, any(vec3<bool>(any(global3.e), !(!global3.e.x), all(!global3.e))), Struct_1(~(-var_0.a.x), any(vec4<bool>(global3.a.b, global3.a.b, true, false)), ~vec4<i32>(min(global2.x, u_input.c.x), -2160i, var_0.a.x & u_input.c.x, var_0.a.x), global3.a.d, min(~var_0.a.x, -2147483647i) | 0i), select(vec2<bool>(global3.d.b, global3.e.x), global3.e, vec2<bool>(!all(global3.e), global3.b)));
    var var_2 = global3.e;
    var var_3 = Struct_2(global3.a, !var_2.x, var_2.x, var_1.d, vec2<bool>(var_2.x, all(!select(vec3<bool>(global3.c, false, global3.a.b), vec3<bool>(true, global3.c, true), vec3<bool>(false, var_1.c, false)))));
    return Struct_1(1i, true, firstTrailingBit(-_wgslsmith_mult_vec4_i32(_wgslsmith_clamp_vec4_i32(var_1.d.c, var_1.a.c, vec4<i32>(-2147483647i, var_3.d.c.x, var_0.a.x, 74930i)), max(vec4<i32>(var_0.a.x, var_1.a.c.x, -4252i, 1i), var_3.d.c))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_3.a.d)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(trunc(var_3.a.d.x)), var_1.d.d.x, _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(0u, 19u)] * -1348f), _wgslsmith_f_op_f32(global3.d.d.x - var_1.a.d.x))))), firstTrailingBit(_wgslsmith_dot_vec3_i32(~var_3.a.c.xwz, firstTrailingBit(global3.d.c.zwx))) << (1u % 32u));
}

fn func_1() -> vec3<u32> {
    var var_0 = func_2();
    var var_1 = max(~(-_wgslsmith_add_vec4_i32(u_input.a, vec4<i32>(6093i, var_0.c.x, -1i, -2147483647i))), vec4<i32>(_wgslsmith_div_i32(-countOneBits(global2.x), u_input.d), var_0.e, ~func_2().a, ~(u_input.b.x | _wgslsmith_dot_vec2_i32(vec2<i32>(var_0.a, var_0.a), vec2<i32>(-12533i, global3.a.e)))));
    let var_2 = var_0.d.xyy;
    var_0 = func_2();
    global1 = array<f32, 19>();
    return _wgslsmith_sub_vec3_u32(_wgslsmith_add_vec3_u32(select(~vec3<u32>(58195u, 1u, 1u), ~vec3<u32>(53517u, 4294967295u, 14994u), select(var_0.b, global3.b, true)) >> (vec3<u32>(~0u, 1u, _wgslsmith_mult_u32(115710u, 530u)) % vec3<u32>(32u)), vec3<u32>(1u, 1u, 1u)), vec3<u32>(_wgslsmith_dot_vec2_u32(abs(vec2<u32>(4294967295u, 4294967295u)), ~(~vec2<u32>(17226u, 147222u))), ~select(~3777u, 11525u, global3.c), min(~reverseBits(55187u), 1u)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<u32>, 1>();
    var var_0 = global3.e.x;
    let var_1 = ~u_input.a.xyx;
    var var_2 = ~_wgslsmith_div_vec3_u32(~select(vec3<u32>(23555u, 0u, 4294967295u), func_1(), false), select(reverseBits(min(vec3<u32>(27262u, 15586u, 31599u), vec3<u32>(47646u, 32491u, 1u))), vec3<u32>(1u, 1u, _wgslsmith_clamp_u32(0u, 4294967295u, 1u)), !any(vec3<bool>(false, false, false))));
    let var_3 = Struct_1(select(u_input.b.x, 2147483647i, all(!vec4<bool>(global3.e.x, global3.a.b, true, global3.b))), !any(select(vec4<bool>(true, true, true, global3.a.b), !vec4<bool>(global3.c, false, true, true), true)), _wgslsmith_mod_vec4_i32(u_input.a, min(select(~u_input.a, ~u_input.a, select(vec4<bool>(global3.d.b, true, false, global3.a.b), vec4<bool>(true, global3.b, global3.d.b, global3.a.b), vec4<bool>(global3.a.b, false, global3.a.b, false))), vec4<i32>(~42174i, 0i, var_1.x, 2147483647i))), _wgslsmith_f_op_vec4_f32(global3.a.d * global3.a.d), abs(u_input.a.x) >> (var_2.x % 32u));
    global0 = array<vec4<u32>, 1>();
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(var_2.x, 19u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(6268u, 19u)])))), _wgslsmith_f_op_f32(var_3.d.x + _wgslsmith_div_f32(-584f, _wgslsmith_f_op_f32(trunc(var_3.d.x))))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-func_2().d.x) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.d.d.x - -341f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(370f)))))), var_2.yx);
}


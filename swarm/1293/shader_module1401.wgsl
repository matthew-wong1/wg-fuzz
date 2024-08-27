struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: i32,
    c: vec2<bool>,
    d: vec4<u32>,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<i32, 7> = array<i32, 7>(0i, -1i, -17751i, 1i, 2147483647i, 14134i, -1i);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3() -> vec2<bool> {
    let var_0 = Struct_2(vec4<u32>(~_wgslsmith_mod_u32(firstTrailingBit(0u), 72152u), 89908u, _wgslsmith_sub_u32(u_input.b, 4294967295u), _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b), vec4<u32>(40064u, 4294967295u, 25349u, u_input.b)) | (firstLeadingBit(33846u) << (~u_input.b % 32u))), -global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 0u, 0u, 17582u), firstLeadingBit(vec4<u32>(u_input.b, u_input.b, 4294967295u, 20155u))), 7u)], vec2<bool>(true, !(!any(vec3<bool>(false, false, false)))), ~firstTrailingBit(vec4<u32>(u_input.b >> (1123u % 32u), firstLeadingBit(u_input.b), ~u_input.b, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, u_input.b, 11360u), vec3<u32>(0u, 1u, u_input.b)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(421f, -1518f, -681f))), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1107f, 845f, -407f)))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-492f, 658f, -291f), _wgslsmith_div_vec3_f32(vec3<f32>(913f, -1000f, 366f), vec3<f32>(-1000f, 984f, 257f)))))));
    var var_1 = Struct_1(-(_wgslsmith_sub_vec3_i32(vec3<i32>(global1[_wgslsmith_index_u32(var_0.d.x, 7u)], -27634i, -6122i), -vec3<i32>(1i, u_input.a, -2147483647i)) << (vec3<u32>(~u_input.b, _wgslsmith_dot_vec2_u32(var_0.d.ww, var_0.a.yw), u_input.b) % vec3<u32>(32u))));
    let var_2 = vec2<bool>(any(vec4<bool>(false, var_0.c.x && all(vec3<bool>(false, true, var_0.c.x)), all(select(vec3<bool>(var_0.c.x, false, var_0.c.x), vec3<bool>(var_0.c.x, false, true), vec3<bool>(false, var_0.c.x, var_0.c.x))), false)), any(select(select(vec4<bool>(var_0.c.x, true, false, true), select(vec4<bool>(var_0.c.x, var_0.c.x, var_0.c.x, var_0.c.x), vec4<bool>(var_0.c.x, false, var_0.c.x, true), vec4<bool>(false, var_0.c.x, false, false)), !vec4<bool>(var_0.c.x, var_0.c.x, var_0.c.x, var_0.c.x)), select(vec4<bool>(false, true, false, true), select(vec4<bool>(var_0.c.x, var_0.c.x, true, var_0.c.x), vec4<bool>(true, var_0.c.x, false, true), vec4<bool>(true, var_0.c.x, var_0.c.x, true)), false || var_0.c.x), !(!vec4<bool>(var_0.c.x, var_0.c.x, var_0.c.x, var_0.c.x)))));
    var var_3 = Struct_2(~var_0.a, _wgslsmith_clamp_i32(_wgslsmith_mod_i32(26089i, var_0.b), _wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(var_1.a.zz, select(var_1.a.xx, vec2<i32>(-1i, var_0.b), var_2)), abs(_wgslsmith_add_i32(-2147483647i, global1[_wgslsmith_index_u32(u_input.b, 7u)]))), var_0.b), var_0.c, vec4<u32>(var_0.a.x, _wgslsmith_dot_vec4_u32(var_0.a, var_0.a), ~abs(~1u), var_0.d.x), var_0.e);
    var_3 = Struct_2(~vec4<u32>(countOneBits(var_0.a.x), _wgslsmith_add_u32(~var_3.d.x, _wgslsmith_add_u32(41535u, var_3.a.x)), ~var_3.a.x << (1u % 32u), var_0.d.x << (_wgslsmith_dot_vec2_u32(var_0.a.wy, vec2<u32>(0u, u_input.b)) % 32u)), 0i, var_2, select(_wgslsmith_mod_vec4_u32(firstLeadingBit(vec4<u32>(23837u, var_0.d.x, u_input.b, u_input.b)), _wgslsmith_mod_vec4_u32(~var_0.a, ~vec4<u32>(8685u, var_0.a.x, 71823u, u_input.b))), vec4<u32>(97890u, ~1u, var_0.a.x, ~(var_3.d.x & 82099u)), select(vec4<bool>(false, !var_3.c.x, any(vec2<bool>(false, true)), !var_2.x), vec4<bool>(false, true, !var_2.x, true), vec4<bool>(var_3.c.x || var_2.x, true, true, any(vec4<bool>(false, var_3.c.x, false, var_0.c.x))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(102f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.e.x)), _wgslsmith_f_op_f32(var_3.e.x - _wgslsmith_f_op_f32(min(-1957f, -277f))))));
    return select(var_2, select(select(vec2<bool>(false, false), !vec2<bool>(var_0.c.x, true), !var_0.c.x), var_3.c, !var_2.x), false);
}

fn func_2(arg_0: Struct_1, arg_1: i32, arg_2: f32) -> Struct_1 {
    var var_0 = firstTrailingBit(4294967295u);
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1057f, -743f, arg_2), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 604f, 392f))))))));
    var var_2 = !select(!vec2<bool>(all(vec2<bool>(true, true)), u_input.b < u_input.b), !func_3(), all(vec4<bool>(true, true, true, true)) & !all(vec4<bool>(false, true, false, true)));
    var var_3 = ~(-2147483647i);
    var var_4 = ~_wgslsmith_clamp_vec4_i32(~(select(vec4<i32>(35315i, -26310i, u_input.a, global1[_wgslsmith_index_u32(4294967295u, 7u)]), vec4<i32>(arg_1, 30574i, arg_1, 10804i), vec4<bool>(var_2.x, true, false, false)) | -vec4<i32>(global1[_wgslsmith_index_u32(4294967295u, 7u)], -2147483647i, 1i, 2147483647i)), max(vec4<i32>(global1[_wgslsmith_index_u32(1u, 7u)], -2147483647i, arg_0.a.x, -14269i) | firstLeadingBit(vec4<i32>(global1[_wgslsmith_index_u32(68804u, 7u)], global1[_wgslsmith_index_u32(29788u, 7u)], 9986i, 2147483647i)), min(vec4<i32>(arg_0.a.x, -6843i, u_input.a, global1[_wgslsmith_index_u32(0u, 7u)]) >> (vec4<u32>(u_input.b, u_input.b, u_input.b, 0u) % vec4<u32>(32u)), vec4<i32>(u_input.a, u_input.a, -21328i, global1[_wgslsmith_index_u32(21921u, 7u)]))), select(-vec4<i32>(u_input.a, u_input.a, -17959i, u_input.a), vec4<i32>(-1i, global1[_wgslsmith_index_u32(1u, 7u)], 0i, -12768i), vec4<bool>(var_2.x, true, true, var_2.x)) >> (select(vec4<u32>(5771u, 1u, u_input.b, 0u), firstLeadingBit(vec4<u32>(u_input.b, 1u, 49232u, 74404u)), select(vec4<bool>(false, false, false, var_2.x), vec4<bool>(false, var_2.x, true, false), var_2.x)) % vec4<u32>(32u)));
    return Struct_1(vec3<i32>(-select(-2147483647i, max(arg_1, 2147483647i), true), ~(arg_1 & _wgslsmith_div_i32(0i, var_4.x)), select(reverseBits(~1i), -_wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.a.x, 0i, 2147483647i, arg_1), vec4<i32>(0i, var_4.x, var_4.x, 40400i)), true)));
}

fn func_4(arg_0: Struct_1) -> vec4<u32> {
    var var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1000f, -142f)) * _wgslsmith_f_op_f32(step(-906f, -319f))))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-903f + -839f) - -550f) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-382f)), 890f)))));
    let var_1 = select(~5069u, _wgslsmith_div_u32(1u, 1u), true && func_3().x);
    var var_2 = !(!vec4<bool>(true, true, true, any(vec4<bool>(false, true, false, false))));
    var var_3 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(-933f, _wgslsmith_f_op_f32(f32(-1f) * -423f))))) * -458f), _wgslsmith_div_f32(212f, _wgslsmith_f_op_f32(ceil(255f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(-666f, _wgslsmith_div_f32(798f, 1248f)))))));
    var var_4 = 2112f;
    return ~max(firstLeadingBit(~(~vec4<u32>(var_1, var_1, 50507u, 0u))), ~(~(~vec4<u32>(var_1, 4294967295u, 4250u, u_input.b))));
}

fn func_1() -> Struct_1 {
    global1 = array<i32, 7>();
    global0 = -1i;
    let var_0 = Struct_2(func_4(func_2(Struct_1(reverseBits(vec3<i32>(20112i, 2551i, u_input.a))), ~_wgslsmith_sub_i32(u_input.a, global1[_wgslsmith_index_u32(u_input.b, 7u)]), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(1000f, -515f), _wgslsmith_f_op_f32(828f * 1475f))))), abs(global1[_wgslsmith_index_u32(~((u_input.b & 1u) << (_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 4294967295u, u_input.b, u_input.b), vec4<u32>(u_input.b, u_input.b, 35936u, u_input.b)) % 32u)), 7u)]), vec2<bool>(true, true), ~vec4<u32>(max(39984u, _wgslsmith_sub_u32(u_input.b, u_input.b)), ~u_input.b, ~abs(0u), 1u), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(449f + -329f)), _wgslsmith_div_f32(-137f, -918f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(526f)) + -473f))));
    global1 = array<i32, 7>();
    var var_1 = ~max(var_0.b, -u_input.a);
    return func_2(Struct_1(abs(vec3<i32>(_wgslsmith_sub_i32(u_input.a, global1[_wgslsmith_index_u32(u_input.b, 7u)]), -var_0.b, _wgslsmith_dot_vec3_i32(vec3<i32>(global1[_wgslsmith_index_u32(29433u, 7u)], -2866i, 27067i), vec3<i32>(1834i, var_0.b, global1[_wgslsmith_index_u32(81360u, 7u)]))))), 2147483647i, _wgslsmith_f_op_f32(326f - _wgslsmith_f_op_f32(var_0.e.x * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0.e.x), var_0.e.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = false;
    var var_1 = func_1();
    var_0 = false;
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1230f, 796f, 463f, 1000f), vec4<f32>(-400f, -1038f, -1000f, 931f), vec4<bool>(true, true, false, false)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(599f, -702f, -442f, 310f))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-355f, 1194f, -1252f, -631f), vec4<f32>(1243f, 478f, -1000f, -162f), false)), vec4<f32>(-746f, -500f, -1483f, 1624f))), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-800f, -397f, 1000f, 1180f)))))));
    var_1 = Struct_1(reverseBits(vec3<i32>(~var_1.a.x, -13765i, _wgslsmith_dot_vec2_i32(vec2<i32>(-4880i, 0i), ~var_1.a.zz))));
    var_0 = true;
    var var_3 = Struct_1(var_1.a);
    let var_4 = Struct_1(abs(vec3<i32>(var_1.a.x, var_1.a.x, -_wgslsmith_mult_i32(var_1.a.x, 29784i))));
    var var_5 = Struct_1(vec3<i32>(-2147483647i, global1[_wgslsmith_index_u32(select(21386u, u_input.b, true), 7u)], u_input.a));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(global1[_wgslsmith_index_u32((_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, 106941u, u_input.b), vec3<u32>(2178u, 44191u, 1u)) >> ((u_input.b ^ 45826u) % 32u)) >> (u_input.b % 32u), 7u)], ~(-_wgslsmith_add_i32(var_4.a.x, -13388i)), ~(-2147483647i)), _wgslsmith_mult_vec3_i32(var_5.a, var_4.a), abs(~firstLeadingBit(~vec3<u32>(u_input.b, 5392u, u_input.b))));
}


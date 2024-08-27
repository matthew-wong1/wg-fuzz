struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: u32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: array<vec4<i32>, 8> = array<vec4<i32>, 8>(vec4<i32>(0i, -6866i, -1i, 15352i), vec4<i32>(1i, 2147483647i, 0i, -19417i), vec4<i32>(-4732i, i32(-2147483648), -1i, 15413i), vec4<i32>(-56557i, 876i, 1i, 29956i), vec4<i32>(i32(-2147483648), 2147483647i, 1i, 1i), vec4<i32>(2147483647i, 4711i, -32213i, 2674i), vec4<i32>(i32(-2147483648), 0i, -49165i, 16527i), vec4<i32>(-2801i, -19066i, -71774i, i32(-2147483648)));

var<private> global2: Struct_1;

var<private> global3: vec3<i32>;

var<private> global4: Struct_2;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_1(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec2<i32>, arg_3: bool) -> Struct_2 {
    global0 = vec4<bool>(!(!arg_3), all(vec2<bool>(false, global0.x)), global0.x, arg_3);
    global0 = vec4<bool>(false && all(global0.zyz), true, (4294967295u >> (~arg_1.a.a.x % 32u)) >= (firstLeadingBit(reverseBits(0u)) ^ global4.a.a.x), true);
    return Struct_2(Struct_1(~(~(global2.a ^ global2.a))));
}

fn func_3(arg_0: vec3<i32>) -> bool {
    var var_0 = Struct_2(func_1(Struct_2(Struct_1(~vec3<u32>(36212u, 0u, u_input.e.x))), func_1(Struct_2(global4.a), Struct_2(global4.a), abs(arg_0.xz) >> (u_input.e.xz % vec2<u32>(32u)), any(vec2<bool>(global0.x, global0.x))), _wgslsmith_add_vec2_i32(firstLeadingBit(global3.yy) & vec2<i32>(arg_0.x, 1211i), arg_0.xy), select(true, global0.x, true)).a);
    let var_1 = vec3<f32>(-340f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(-103f, 1000f, all(vec4<bool>(false, true, true, global0.x)))), _wgslsmith_f_op_f32(f32(-1f) * -266f)))), 690f);
    let var_2 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_1 - _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, var_1.x, -2039f))))))));
    let var_3 = global4.a;
    global2 = var_0.a;
    return !global0.x;
}

fn func_2(arg_0: Struct_2, arg_1: vec3<u32>, arg_2: bool) -> vec2<bool> {
    let var_0 = !(arg_2 || func_3(~(~vec3<i32>(6569i, -1i, 0i))));
    var var_1 = Struct_2(Struct_1(~_wgslsmith_div_vec3_u32(vec3<u32>(1u, 1u, 1u), ~vec3<u32>(arg_1.x, 59723u, global4.a.a.x))));
    let var_2 = func_1(func_1(Struct_2(Struct_1(~vec3<u32>(arg_1.x, 24963u, 8411u))), arg_0, global3.xz, global0.x), Struct_2(Struct_1(firstTrailingBit(_wgslsmith_mod_vec3_u32(arg_0.a.a, u_input.e)))), _wgslsmith_add_vec2_i32(-(~firstTrailingBit(vec2<i32>(-1i, global3.x))), vec2<i32>(_wgslsmith_div_i32(~(-65776i), _wgslsmith_mult_i32(-12370i, 1i)), u_input.a)), true);
    let var_3 = select(vec4<u32>(327u, _wgslsmith_dot_vec4_u32(~vec4<u32>(var_1.a.a.x, arg_1.x, 23291u, global4.a.a.x), vec4<u32>(0u, 0u, global2.a.x, 0u)), 1u, arg_0.a.a.x) ^ vec4<u32>(4294967295u, firstTrailingBit(firstLeadingBit(var_2.a.a.x)), ~firstTrailingBit(u_input.d), _wgslsmith_add_u32(arg_1.x, 37167u) | ~arg_1.x), vec4<u32>(1u, global2.a.x, _wgslsmith_mult_u32(~1u, ~arg_1.x), u_input.d) & _wgslsmith_mult_vec4_u32(vec4<u32>(~var_1.a.a.x, ~59378u, ~var_2.a.a.x, 1u), vec4<u32>(arg_0.a.a.x, 18046u, 55537u, 1u) & (vec4<u32>(arg_1.x, 4294967295u, var_2.a.a.x, 58209u) & vec4<u32>(35432u, var_1.a.a.x, var_1.a.a.x, var_2.a.a.x))), arg_2);
    global2 = func_1(func_1(func_1(var_2, Struct_2(func_1(Struct_2(global4.a), arg_0, vec2<i32>(-48754i, -72348i), true).a), min(vec2<i32>(global3.x, 26513i), ~global3.yx), func_3(~vec3<i32>(17144i, -1i, -9292i))), Struct_2(func_1(Struct_2(Struct_1(global2.a)), Struct_2(Struct_1(vec3<u32>(var_2.a.a.x, var_2.a.a.x, arg_0.a.a.x))), -vec2<i32>(u_input.c, 0i), global0.x).a), -select(abs(global3.xx), max(global3.xz, global3.xx), true), false), arg_0, abs(global3.xy), false).a;
    return vec2<bool>(true, !var_0);
}

fn func_4(arg_0: bool, arg_1: vec3<f32>, arg_2: vec4<i32>) -> Struct_2 {
    let var_0 = Struct_2(Struct_1(global2.a));
    var var_1 = var_0.a.a;
    let var_2 = select(global0.xyw, vec3<bool>(true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.x - 1437f) - _wgslsmith_f_op_f32(arg_1.x + 200f)) > -749f, false), all(!select(!vec4<bool>(false, true, arg_0, true), vec4<bool>(arg_0, false, global0.x, true), !vec4<bool>(true, global0.x, false, global0.x))));
    let var_3 = reverseBits(_wgslsmith_mod_vec2_i32(abs(~firstLeadingBit(arg_2.xx)), _wgslsmith_add_vec2_i32(~arg_2.xy << ((vec2<u32>(global2.a.x, global4.a.a.x) | u_input.e.zz) % vec2<u32>(32u)), global3.zy)));
    var var_4 = !(!select(!vec2<bool>(var_2.x, global0.x), vec2<bool>(false, var_2.x), _wgslsmith_mult_u32(u_input.d, 37847u) >= _wgslsmith_mod_u32(u_input.e.x, 8703u)));
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec4<i32>, 8>();
    var var_0 = func_4(all(select(!vec2<bool>(true, global0.x), func_2(func_1(Struct_2(global4.a), Struct_2(global4.a), global3.yy, global0.x), vec3<u32>(u_input.d, global4.a.a.x, global4.a.a.x), global0.x), global0.zy)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(707f, _wgslsmith_f_op_f32(trunc(-251f)), _wgslsmith_f_op_f32(abs(-944f))) + vec3<f32>(-234f, _wgslsmith_f_op_f32(-269f * 491f), _wgslsmith_f_op_f32(min(-239f, 741f))))), _wgslsmith_div_vec4_i32(_wgslsmith_sub_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(-3205i, 16010i, -1i, -24583i), countOneBits(vec4<i32>(u_input.b, 1i, u_input.b, -6103i)), global1[_wgslsmith_index_u32(_wgslsmith_div_u32(global2.a.x, 4294967295u), 8u)]), global1[_wgslsmith_index_u32(13182u & _wgslsmith_dot_vec4_u32(vec4<u32>(global2.a.x, 8618u, 28690u, global2.a.x), vec4<u32>(0u, 4294967295u, 1u, 47939u)), 8u)]), (abs(vec4<i32>(u_input.c, global3.x, u_input.b, -20161i)) | vec4<i32>(u_input.a, -4969i, global3.x, global3.x)) >> (_wgslsmith_sub_vec4_u32(vec4<u32>(35420u, 3350u, global4.a.a.x, global4.a.a.x) | vec4<u32>(29723u, global4.a.a.x, 0u, global4.a.a.x), ~vec4<u32>(u_input.e.x, u_input.e.x, u_input.e.x, 109667u)) % vec4<u32>(32u))));
    var var_1 = func_1(func_4((true || (global4.a.a.x < 6220u)) | !global0.x, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(801f, 1000f, -135f))) * _wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(vec3<f32>(-2895f, -942f, -426f), vec3<f32>(323f, 693f, 1286f)), vec3<f32>(-1063f, -1031f, -134f)))), abs(global1[_wgslsmith_index_u32(~69716u, 8u)] | -global1[_wgslsmith_index_u32(global4.a.a.x, 8u)])), func_4(!all(vec2<bool>(false, true)) && true, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -762f)), _wgslsmith_f_op_f32(-1207f + _wgslsmith_f_op_f32(-326f + 632f)), 809f), vec4<i32>(-2147483647i, 1i, _wgslsmith_div_i32(52397i, 6696i) ^ global3.x, -_wgslsmith_div_i32(-27032i, u_input.c))), vec2<i32>(firstLeadingBit(1i), _wgslsmith_dot_vec2_i32(min(global3.zx, ~vec2<i32>(6043i, -1i)), _wgslsmith_add_vec2_i32(-global3.zy, min(global3.yx, global3.xz)))), !(select(~u_input.e.x, u_input.d, true) > ~18801u)).a;
    var var_2 = func_1(Struct_2(Struct_1(~global4.a.a)), func_4(false, vec3<f32>(_wgslsmith_f_op_f32(-1134f - -942f), _wgslsmith_f_op_f32(-251f - _wgslsmith_f_op_f32(f32(-1f) * -835f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(1259f, 1069f))))), vec4<i32>(global3.x, ~_wgslsmith_mult_i32(global3.x, global3.x), -(~(-1i)), global3.x)), _wgslsmith_div_vec2_i32(_wgslsmith_mult_vec2_i32(global3.xz, ~global3.xz >> (vec2<u32>(global4.a.a.x, 23009u) % vec2<u32>(32u))), ~global3.xy), true).a;
    let var_3 = Struct_1(vec3<u32>(792u, abs(65851u), _wgslsmith_mult_u32(global2.a.x, ~1u)));
    var var_4 = func_4(!func_2(Struct_2(func_4(global0.x, vec3<f32>(-905f, -139f, -1271f), vec4<i32>(-20564i, global3.x, global3.x, global3.x)).a), ~u_input.e, any(select(vec4<bool>(false, global0.x, global0.x, global0.x), vec4<bool>(true, global0.x, false, global0.x), false))).x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(-584f, 474f, -1675f) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-191f, 1598f, 1388f) * vec3<f32>(1000f, -180f, -1013f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(239f, 491f, 579f), vec3<f32>(-184f, 370f, 785f))))))), countOneBits(global1[_wgslsmith_index_u32(u_input.d, 8u)])).a;
    let var_5 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-347f, 797f)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-1591f, -1000f) - vec2<f32>(-1084f, 132f))))))));
    var_2 = global4.a;
    let x = u_input.a;
    s_output = StorageBuffer(abs(-abs(global1[_wgslsmith_index_u32(var_3.a.x, 8u)])), _wgslsmith_add_u32(~abs(~4294967295u), ~global2.a.x));
}


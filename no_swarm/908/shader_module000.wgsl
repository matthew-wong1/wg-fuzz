struct Struct_1 {
    a: vec3<bool>,
    b: vec2<bool>,
    c: vec4<i32>,
    d: i32,
    e: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
}

struct Struct_4 {
    a: vec4<u32>,
}

struct Struct_5 {
    a: bool,
    b: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 21>;

var<private> global1: bool = false;

var<private> global2: Struct_3;

var<private> global3: array<vec4<u32>, 8>;

var<private> global4: array<vec3<u32>, 21> = array<vec3<u32>, 21>(vec3<u32>(0u, 0u, 69439u), vec3<u32>(0u, 26083u, 87433u), vec3<u32>(45602u, 0u, 1u), vec3<u32>(0u, 4294967295u, 15634u), vec3<u32>(88569u, 1u, 4294967295u), vec3<u32>(34535u, 4294967295u, 4294967295u), vec3<u32>(9737u, 59369u, 1u), vec3<u32>(4294967295u, 63410u, 62963u), vec3<u32>(0u, 0u, 1u), vec3<u32>(4294967295u, 57900u, 18683u), vec3<u32>(85703u, 32128u, 19932u), vec3<u32>(1397u, 87105u, 52120u), vec3<u32>(47519u, 0u, 3698u), vec3<u32>(45707u, 27070u, 4294967295u), vec3<u32>(0u, 4294967295u, 29581u), vec3<u32>(0u, 4294967295u, 0u), vec3<u32>(0u, 4294967295u, 1u), vec3<u32>(0u, 4294967295u, 1u), vec3<u32>(28606u, 31382u, 1u), vec3<u32>(27508u, 0u, 15654u), vec3<u32>(32180u, 9160u, 1u));

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_2(arg_0: vec4<i32>, arg_1: bool) -> u32 {
    global0 = array<vec2<i32>, 21>();
    let var_0 = Struct_3(global2.a);
    return _wgslsmith_dot_vec3_u32(global4[_wgslsmith_index_u32(u_input.c, 21u)], _wgslsmith_sub_vec3_u32(vec3<u32>(0u, u_input.c, u_input.b.x), global4[_wgslsmith_index_u32(u_input.a.x, 21u)]));
}

fn func_3(arg_0: vec2<bool>) -> vec2<u32> {
    let var_0 = ~0u;
    global4 = array<vec3<u32>, 21>();
    global4 = array<vec3<u32>, 21>();
    let var_1 = Struct_1(vec3<bool>(!select(all(vec3<bool>(arg_0.x, false, arg_0.x)), arg_0.x, true), any(select(!vec3<bool>(arg_0.x, arg_0.x, arg_0.x), !vec3<bool>(arg_0.x, true, arg_0.x), false)), abs(0i) < ~_wgslsmith_dot_vec2_i32(global0[_wgslsmith_index_u32(4294967295u, 21u)], global0[_wgslsmith_index_u32(var_0, 21u)])), vec2<bool>(arg_0.x, var_0 > reverseBits(~0u)), vec4<i32>(32720i, 2147483647i, _wgslsmith_clamp_i32(0i, ~(16292i >> (0u % 32u)), -2147483647i << (u_input.a.x % 32u)), -1i), i32(-1i) * -1i, -global0[_wgslsmith_index_u32(1u, 21u)]);
    let var_2 = countOneBits(-_wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-16870i, -62461i, -7666i, var_1.d), var_1.c) ^ _wgslsmith_sub_i32(var_1.d, var_1.e.x), _wgslsmith_dot_vec3_i32(firstLeadingBit(var_1.c.zyx), min(vec3<i32>(2147483647i, 1i, 30907i), vec3<i32>(38740i, var_1.e.x, 34474i)))));
    return u_input.a;
}

fn func_1(arg_0: vec3<f32>) -> vec2<u32> {
    let var_0 = _wgslsmith_mod_vec2_u32(~min(u_input.a, ~vec2<u32>(1u, u_input.a.x)), vec2<u32>(func_2(-vec4<i32>(-1i, -1i, 1i, 1126i), any(vec4<bool>(false, true, false, false))), 1u)) | select(_wgslsmith_sub_vec2_u32(func_3(vec2<bool>(false, true)), _wgslsmith_div_vec2_u32(u_input.a, vec2<u32>(30532u, 2908u))), abs(u_input.a), vec2<bool>(true && all(vec2<bool>(false, true)), true));
    let var_1 = _wgslsmith_sub_i32(abs(-1i), _wgslsmith_sub_i32(firstTrailingBit(_wgslsmith_mod_i32(abs(60367i), 0i << (var_0.x % 32u))), ~_wgslsmith_dot_vec2_i32(-vec2<i32>(2147483647i, -2147483647i), firstLeadingBit(vec2<i32>(13249i, 1i)))));
    let var_2 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(698f, global2.a.x, global2.a.x, global2.a.x))), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(250f, arg_0.x, -1000f, arg_0.x))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, -562f, global2.a.x, -890f)) - vec4<f32>(_wgslsmith_f_op_f32(exp2(arg_0.x)), -598f, arg_0.x, arg_0.x))), vec4<f32>(arg_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) + 1000f) * _wgslsmith_f_op_f32(659f * _wgslsmith_f_op_f32(-arg_0.x))), global2.a.x)));
    let var_3 = vec2<bool>(true, false || (true | !select(true, true, true)));
    let var_4 = select(~(~(~_wgslsmith_mod_vec4_i32(vec4<i32>(var_1, var_1, var_1, 48971i), vec4<i32>(0i, var_1, 0i, var_1)))), -vec4<i32>(abs(39353i), ~1i, firstLeadingBit(var_1), 5375i) | _wgslsmith_clamp_vec4_i32(~_wgslsmith_div_vec4_i32(vec4<i32>(1i, -14493i, -33272i, var_1), vec4<i32>(-30965i, 1i, var_1, var_1)), select(vec4<i32>(-1i, 1i, var_1, -31106i), -vec4<i32>(var_1, -1i, var_1, var_1), var_3.x | true), -vec4<i32>(var_1, 2147483647i, -9472i, 14354i) << (min(global3[_wgslsmith_index_u32(4294967295u, 8u)], global3[_wgslsmith_index_u32(var_0.x, 8u)]) % vec4<u32>(32u))), any(!(!select(var_3, vec2<bool>(true, false), var_3))));
    return _wgslsmith_clamp_vec2_u32(vec2<u32>(max(1u, ~16832u), ~((var_0.x >> (43790u % 32u)) << (4294967295u % 32u))), vec2<u32>(firstTrailingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(12077u, 37768u, 4294967295u, 108272u), vec4<u32>(62453u, u_input.c, var_0.x, 7514u))) << (~11932u % 32u), _wgslsmith_mult_u32(abs(u_input.b.x) ^ u_input.c, 0u)), max(var_0, ~_wgslsmith_mult_vec2_u32(vec2<u32>(var_0.x, u_input.c), _wgslsmith_add_vec2_u32(u_input.b, vec2<u32>(u_input.a.x, 44973u)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = false;
    var var_1 = ~(-(vec2<i32>(~2147483647i, 1i) << (firstTrailingBit(func_1(vec3<f32>(global2.a.x, 2333f, global2.a.x))) % vec2<u32>(32u))));
    global4 = array<vec3<u32>, 21>();
    let var_2 = Struct_1(vec3<bool>(true, var_0 || !(var_0 & var_0), select(any(!vec4<bool>(var_0, true, var_0, var_0)), all(!vec4<bool>(var_0, true, var_0, true)), _wgslsmith_f_op_f32(global2.a.x - global2.a.x) >= global2.a.x)), vec2<bool>(true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-320f, 103f, var_0)) * global2.a.x) < global2.a.x), vec4<i32>(var_1.x, var_1.x, firstLeadingBit(abs(var_1.x) << (u_input.c % 32u)), 32120i), max(~var_1.x, ~13151i), -vec2<i32>(-849i, var_1.x));
    var var_3 = vec4<u32>(4294967295u, ~_wgslsmith_mult_u32(~countOneBits(u_input.c), u_input.a.x), abs(0u), u_input.c);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(global2.a.x, _wgslsmith_div_f32(1000f, 354f)), _wgslsmith_mult_u32(var_3.x, var_3.x));
}


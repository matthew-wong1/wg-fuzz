struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: f32,
    c: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
    b: bool,
    c: vec3<u32>,
}

struct Struct_4 {
    a: u32,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec3<i32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<bool, 32> = array<bool, 32>(true, false, true, true, false, true, false, false, false, false, false, false, true, true, true, false, true, true, true, false, true, true, true, true, true, true, true, true, false, true, false, true);

var<private> global2: array<vec3<i32>, 27>;

var<private> global3: Struct_1;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3(arg_0: Struct_2, arg_1: f32) -> f32 {
    var var_0 = !(!select(vec4<bool>(arg_0.c.a >= global3.a, true, select(false, global1[_wgslsmith_index_u32(63794u, 32u)], global1[_wgslsmith_index_u32(0u, 32u)]), false), select(!vec4<bool>(false, global1[_wgslsmith_index_u32(44649u, 32u)], false, false), !vec4<bool>(global1[_wgslsmith_index_u32(arg_0.c.a, 32u)], global1[_wgslsmith_index_u32(arg_0.c.a, 32u)], global1[_wgslsmith_index_u32(global3.a, 32u)], global1[_wgslsmith_index_u32(arg_0.c.a, 32u)]), !global1[_wgslsmith_index_u32(1u, 32u)]), !(!vec4<bool>(true, false, true, global1[_wgslsmith_index_u32(arg_0.c.a, 32u)]))));
    var_0 = !select(select(vec4<bool>(true, true, false, global1[_wgslsmith_index_u32(abs(4294967295u), 32u)]), vec4<bool>(var_0.x, true, !var_0.x, global1[_wgslsmith_index_u32(47949u, 32u)]), vec4<bool>(1497f != arg_1, var_0.x, false, true)), vec4<bool>(var_0.x, true, global1[_wgslsmith_index_u32(0u << (~global3.a % 32u), 32u)], 55594u <= (global3.a | 57481u)), any(vec2<bool>(all(var_0.yw), true)));
    var var_1 = vec4<f32>(arg_0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_0.b)))), _wgslsmith_f_op_f32(trunc(-1106f)), arg_0.b);
    global1 = array<bool, 32>();
    return _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_0.b, _wgslsmith_f_op_f32(-arg_1))))));
}

fn func_2(arg_0: vec2<u32>) -> vec4<f32> {
    global2 = array<vec3<i32>, 27>();
    let var_0 = Struct_4(~_wgslsmith_div_u32(min(~0u, arg_0.x ^ arg_0.x), global3.a), Struct_1(~4294967295u));
    global1 = array<bool, 32>();
    var var_1 = false;
    global0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1414f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1534f), _wgslsmith_f_op_f32(f32(-1f) * -539f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(541f + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-118f + -425f)))) * _wgslsmith_f_op_f32(func_3(Struct_2(u_input.d, _wgslsmith_f_op_f32(113f - 1374f), var_0.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-785f)))))));
    return _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1572f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1091f + _wgslsmith_f_op_f32(max(-724f, 1836f)))), 857f, _wgslsmith_f_op_f32(-722f + 323f)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1370f, 360f, 529f, 967f))) * _wgslsmith_div_vec4_f32(vec4<f32>(-212f, -1452f, 2397f, -444f), vec4<f32>(-447f, 1112f, 1000f, -216f))) * vec4<f32>(_wgslsmith_f_op_f32(254f * -159f), _wgslsmith_f_op_f32(470f - -1099f), 1390f, _wgslsmith_f_op_f32(-382f - 1226f)))));
}

fn func_1(arg_0: vec3<bool>) -> vec3<u32> {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(759f, 1000f, 553f, -1071f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f))) * vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -125f), _wgslsmith_f_op_f32(-1193f - _wgslsmith_f_op_f32(938f + -1632f)), _wgslsmith_f_op_f32(f32(-1f) * -258f), -1784f)) + _wgslsmith_f_op_vec4_f32(func_2(countOneBits(vec2<u32>(~63422u, 1u)))));
    global0 = -1526f;
    let var_1 = select(select(vec3<bool>(false, arg_0.x, !arg_0.x), !vec3<bool>(true, true, arg_0.x), select(!select(vec3<bool>(true, arg_0.x, global1[_wgslsmith_index_u32(global3.a, 32u)]), vec3<bool>(arg_0.x, true, false), arg_0), vec3<bool>(true, true, u_input.d.x < -14656i), all(arg_0))), arg_0, _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(-vec4<i32>(u_input.d.x, u_input.a, 1i, 1i), ~vec4<i32>(u_input.a, 10905i, 15932i, u_input.b.x)), abs(_wgslsmith_clamp_vec4_i32(vec4<i32>(-16153i, -1i, u_input.d.x, -571i), vec4<i32>(u_input.b.x, u_input.c.x, 0i, u_input.b.x), vec4<i32>(u_input.a, u_input.b.x, -44934i, u_input.c.x)))) != -30827i);
    global1 = array<bool, 32>();
    let var_2 = Struct_1(~(global3.a & ~(~23616u)));
    return firstLeadingBit(countOneBits(~_wgslsmith_add_vec3_u32(~vec3<u32>(global3.a, global3.a, 4294967295u), abs(vec3<u32>(global3.a, 0u, 10618u)))));
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_2, arg_2: vec2<i32>) -> Struct_1 {
    global2 = array<vec3<i32>, 27>();
    var var_0 = Struct_4(arg_0.x, arg_1.c);
    let var_1 = !(_wgslsmith_f_op_vec4_f32(func_2(~firstTrailingBit(vec2<u32>(8491u, 1u)))).x <= arg_1.b);
    var var_2 = Struct_1(arg_1.c.a);
    var_0 = Struct_4(var_2.a, arg_1.c);
    return arg_1.c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<u32>(~global3.a, ~(~global3.a));
    let var_1 = Struct_4(0u, func_4(func_1(select(select(vec3<bool>(false, true, global1[_wgslsmith_index_u32(var_0.x, 32u)]), vec3<bool>(true, false, true), vec3<bool>(global1[_wgslsmith_index_u32(var_0.x, 32u)], global1[_wgslsmith_index_u32(global3.a, 32u)], false)), !vec3<bool>(global1[_wgslsmith_index_u32(global3.a, 32u)], global1[_wgslsmith_index_u32(global3.a, 32u)], true), global1[_wgslsmith_index_u32(1u, 32u)])), Struct_2(u_input.d, -878f, Struct_1(37088u)), vec2<i32>(u_input.a, _wgslsmith_dot_vec3_i32(~vec3<i32>(u_input.b.x, u_input.d.x, 40194i), abs(global2[_wgslsmith_index_u32(49109u, 27u)])))));
    var var_2 = vec2<f32>(710f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1028f)) - 201f) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(926f * -188f)))) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_div_f32(542f, -345f) + -1885f), 413f, any(select(vec4<bool>(false, global1[_wgslsmith_index_u32(1u, 32u)], global1[_wgslsmith_index_u32(var_1.a, 32u)], false), vec4<bool>(true, false, true, global1[_wgslsmith_index_u32(global3.a, 32u)]), global1[_wgslsmith_index_u32(4294967295u, 32u)]))))));
    global3 = func_4(_wgslsmith_mult_vec3_u32(_wgslsmith_mod_vec3_u32(~vec3<u32>(61474u, 55737u, 26635u), ~vec3<u32>(global3.a, var_0.x, var_0.x)), _wgslsmith_clamp_vec3_u32(vec3<u32>(0u, var_1.a, global3.a), vec3<u32>(var_0.x, global3.a, var_1.b.a), _wgslsmith_mod_vec3_u32(vec3<u32>(1u, var_1.b.a, 4294967295u), vec3<u32>(13379u, 0u, 1u)))) << (_wgslsmith_clamp_vec3_u32(vec3<u32>(var_1.b.a, ~1u, 37259u), vec3<u32>(var_0.x & global3.a, ~var_0.x, global3.a), ~vec3<u32>(1u, 4294967295u, global3.a)) % vec3<u32>(32u)), Struct_2(vec3<i32>(0i, _wgslsmith_div_i32(-2147483647i, -2147483647i), u_input.b.x & _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, u_input.a, u_input.b.x), vec3<i32>(u_input.a, u_input.d.x, -25961i))), 394f, func_4(_wgslsmith_mod_vec3_u32(~vec3<u32>(var_0.x, var_1.b.a, 0u), reverseBits(vec3<u32>(var_1.a, 23541u, global3.a))), Struct_2(select(global2[_wgslsmith_index_u32(global3.a, 27u)], global2[_wgslsmith_index_u32(var_0.x, 27u)], global1[_wgslsmith_index_u32(19953u, 32u)]), _wgslsmith_f_op_f32(f32(-1f) * -373f), var_1.b), firstLeadingBit(u_input.b))), -_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.b.x, -7235i), _wgslsmith_add_vec2_i32(u_input.d.zz, u_input.b)) & _wgslsmith_mod_vec2_i32(~(vec2<i32>(-74663i, 2147483647i) & u_input.b), -vec2<i32>(u_input.d.x, -33471i)));
    var var_3 = global2[_wgslsmith_index_u32(global3.a, 27u)];
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(firstTrailingBit(-(u_input.a & u_input.b.x)), var_3.x, firstLeadingBit(reverseBits(-18263i | u_input.d.x))), 2147483647i, var_1.b.a | max(_wgslsmith_add_u32(global3.a, 19975u), ~func_1(vec3<bool>(global1[_wgslsmith_index_u32(global3.a, 32u)], false, global1[_wgslsmith_index_u32(var_0.x, 32u)])).x));
}


struct Struct_1 {
    a: vec2<bool>,
    b: i32,
    c: bool,
    d: vec4<f32>,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: vec4<i32>,
    d: vec2<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: vec4<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<bool>(false, false), 2147483647i, true, vec4<f32>(-315f, -1301f, 1435f, 423f), vec3<i32>(30222i, i32(-2147483648), 0i));

var<private> global1: array<vec2<u32>, 2> = array<vec2<u32>, 2>(vec2<u32>(38540u, 3432u), vec2<u32>(10218u, 26811u));

var<private> global2: f32;

var<private> global3: vec3<f32>;

var<private> global4: i32 = i32(-2147483648);

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec3<u32>, arg_1: u32) -> vec2<bool> {
    var var_0 = min(_wgslsmith_add_u32(1u | firstTrailingBit(reverseBits(0u)), 60212u), arg_1);
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -464f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.d.x) + global3.x)) + global3.x);
    var var_2 = vec4<u32>(arg_0.x, 4294967295u, u_input.b.x, ~(~arg_0.x));
    global2 = -933f;
    let var_3 = Struct_1(!select(select(vec2<bool>(false, global0.c), vec2<bool>(true, false), !global0.a), global0.a, any(select(vec4<bool>(global0.c, true, global0.c, true), vec4<bool>(global0.a.x, false, global0.a.x, global0.c), vec4<bool>(true, global0.c, global0.a.x, true)))), -16125i, true, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1757f, 912f)) - _wgslsmith_f_op_f32(min(-1319f, global3.x))), global0.d.x, global3.x, _wgslsmith_div_f32(-234f, global0.d.x))), vec3<i32>(u_input.e, global0.e.x, -(-2147483647i & global0.e.x)));
    return !vec2<bool>(true | ((arg_1 < 28178u) | var_3.c), true);
}

fn func_2(arg_0: vec2<u32>, arg_1: vec4<f32>, arg_2: Struct_1, arg_3: bool) -> Struct_1 {
    let var_0 = vec2<bool>(all(vec3<bool>(arg_2.a.x, any(global0.a), true)) | !(_wgslsmith_f_op_f32(global0.d.x + -1486f) >= _wgslsmith_div_f32(arg_2.d.x, arg_2.d.x)), true);
    var var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_2.d.x))), _wgslsmith_f_op_f32(f32(-1f) * -910f))), arg_1.x, global3.x));
    var var_2 = 36889i;
    global0 = Struct_1(select(select(func_3(firstLeadingBit(vec3<u32>(0u, 4294967295u, 4294967295u)), ~arg_0.x), vec2<bool>(global0.c, true), arg_3), func_3(~vec3<u32>(u_input.a.x, 22472u, u_input.b.x), ~(~arg_0.x)), arg_2.a), ~(-arg_2.b), true, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(var_1.x - -546f), _wgslsmith_div_f32(var_1.x, -528f), _wgslsmith_f_op_f32(floor(913f)), _wgslsmith_f_op_f32(f32(-1f) * -1179f)) - arg_2.d), global0.d), global0.e);
    let var_3 = arg_2;
    return Struct_1(arg_2.a, _wgslsmith_add_i32(_wgslsmith_add_i32(1i, -_wgslsmith_dot_vec3_i32(global0.e, vec3<i32>(-1i, -2147483647i, -43256i))), 20029i), (u_input.c.x | _wgslsmith_dot_vec3_i32(vec3<i32>(arg_2.e.x, global0.b, u_input.c.x), vec3<i32>(-38683i, global0.b, arg_2.e.x) >> (vec3<u32>(arg_0.x, 4294967295u, arg_0.x) % vec3<u32>(32u)))) > abs(~(-u_input.e)), _wgslsmith_f_op_vec4_f32(global0.d * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1284f, global3.x, global3.x, global0.d.x) * vec4<f32>(global0.d.x, 2191f, 1141f, arg_1.x)) - arg_2.d) * _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(global0.d * global0.d))))), abs(abs(_wgslsmith_mult_vec3_i32(vec3<i32>(-2147483647i, u_input.c.x, var_3.e.x), global0.e))) << (~select(vec3<u32>(u_input.b.x, 45781u, u_input.a.x), ~vec3<u32>(arg_0.x, arg_0.x, u_input.a.x), true) % vec3<u32>(32u)));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32, arg_3: Struct_1) -> vec4<f32> {
    var var_0 = !(!(arg_1.a.x | all(select(vec4<bool>(false, false, false, global0.c), vec4<bool>(arg_0.c, arg_0.a.x, global0.a.x, false), vec4<bool>(false, arg_1.a.x, false, arg_3.c)))));
    global2 = -1608f;
    let var_1 = arg_1;
    global4 = _wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.b, -1i | global0.b, -17980i, -39896i), -(vec4<i32>(-20944i, 2147483647i, arg_1.e.x, 0i) << (select(vec4<u32>(u_input.d.x, 0u, 4294967295u, u_input.b.x), vec4<u32>(u_input.b.x, 4294967295u, u_input.d.x, 4294967295u), vec4<bool>(var_1.c, var_1.a.x, arg_1.c, true)) % vec4<u32>(32u)))) & (arg_1.b >> (u_input.d.x % 32u));
    var var_2 = Struct_1(vec2<bool>(!global0.a.x || arg_1.c, !any(!vec3<bool>(true, arg_1.a.x, arg_3.c))), 1i, max(_wgslsmith_clamp_i32(~(-35550i), u_input.e, reverseBits(-27677i)), _wgslsmith_mult_i32(var_1.b, -26116i) << (abs(60871u) % 32u)) == 10777i, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_1.d.x), arg_0.d.x)) + arg_1.d.x), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-208f, _wgslsmith_f_op_f32(min(646f, arg_3.d.x))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.x))), _wgslsmith_f_op_f32(sign(arg_3.d.x)), _wgslsmith_f_op_f32(round(-852f))), abs(~vec3<i32>(~u_input.e, -arg_1.e.x, _wgslsmith_dot_vec4_i32(vec4<i32>(-5805i, -1i, arg_2, -7952i), vec4<i32>(arg_3.b, 1i, -7086i, arg_1.b)))));
    return arg_0.d;
}

fn func_1(arg_0: vec2<i32>) -> Struct_1 {
    let var_0 = Struct_1(select(!global0.a, select(select(vec2<bool>(true, global0.a.x), !global0.a, global0.a), global0.a, vec2<bool>(all(vec4<bool>(global0.c, true, global0.a.x, global0.a.x)), true)), global0.a.x), 1i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global3.x))) - global0.d.x) > _wgslsmith_f_op_f32(-global3.x), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_4(Struct_1(global0.a, 0i, true, global0.d, vec3<i32>(-43115i, global0.b, u_input.c.x)), func_2(vec2<u32>(u_input.a.x, u_input.b.x), vec4<f32>(global0.d.x, 185f, -649f, global0.d.x), Struct_1(global0.a, global0.b, global0.c, vec4<f32>(global3.x, 605f, global3.x, global3.x), u_input.c.zwz), global0.c), -u_input.e, Struct_1(vec2<bool>(global0.a.x, global0.c), arg_0.x, true, global0.d, vec3<i32>(global0.e.x, u_input.e, global0.e.x)))) * _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(global0.d * vec4<f32>(global3.x, -1672f, global3.x, global3.x))))))), vec3<i32>(max(_wgslsmith_div_i32(arg_0.x, 0i), ~(-881i)), ~(~_wgslsmith_mult_i32(global0.b, 36655i)), (_wgslsmith_sub_i32(5037i, 1i) ^ arg_0.x) >> (1u % 32u)));
    return var_0;
}

fn func_5(arg_0: i32, arg_1: vec2<i32>, arg_2: Struct_1, arg_3: i32) -> i32 {
    var var_0 = vec4<f32>(arg_2.d.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-810f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_2.d.x, arg_2.d.x)))), global0.d.x)), 1000f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global0.d.x), _wgslsmith_f_op_f32(f32(-1f) * -355f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_4(Struct_1(vec2<bool>(arg_2.c, global0.a.x), u_input.e, false, vec4<f32>(global0.d.x, global3.x, 211f, arg_2.d.x), arg_2.e), arg_2, 1295i >> (0u % 32u), Struct_1(vec2<bool>(arg_2.a.x, true), arg_0, false, vec4<f32>(986f, 421f, -1672f, arg_2.d.x), arg_2.e))).x))));
    let var_1 = arg_2;
    let var_2 = func_2(vec2<u32>(69613u & ~(~u_input.a.x), max(u_input.a.x, ~1u) & ((0u & u_input.a.x) | 37230u)), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(abs(arg_2.d)), _wgslsmith_f_op_vec4_f32(-arg_2.d))), func_1(_wgslsmith_mult_vec2_i32(vec2<i32>(arg_0, 0i) | max(arg_2.e.xy, u_input.c.yy), ~(-vec2<i32>(var_1.e.x, -22560i)))), !(!all(vec2<bool>(false, var_1.a.x))));
    var var_3 = func_2(reverseBits(global1[_wgslsmith_index_u32(abs(_wgslsmith_div_u32(1u, u_input.b.x)) >> (~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, 4294967295u), u_input.b) % 32u), 2u)]), arg_2.d, Struct_1(func_1(global0.e.zx).a, -69665i, any(vec2<bool>(true, arg_2.a.x)), arg_2.d, _wgslsmith_clamp_vec3_i32(-vec3<i32>(0i, var_2.b, u_input.e), arg_2.e, min(u_input.c.wwz, var_2.e)) >> (min(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<u32>(u_input.a.x, 3196u, u_input.d.x)), select(vec3<u32>(u_input.b.x, 4294967295u, 1u), vec3<u32>(u_input.b.x, 0u, u_input.b.x), vec3<bool>(global0.c, true, var_2.a.x))) % vec3<u32>(32u))), global0.c);
    var var_4 = func_1(_wgslsmith_add_vec2_i32(abs(firstTrailingBit(var_2.e.zz | vec2<i32>(-1i, global0.b))), ~firstTrailingBit(vec2<i32>(u_input.e, -2147483647i))));
    return func_1(_wgslsmith_add_vec2_i32(max(var_2.e.xy, max(var_1.e.zz, vec2<i32>(2147483647i, arg_1.x))), vec2<i32>(var_1.b, 61312i))).e.x;
}

@compute
@workgroup_size(1)
fn main() {
    global4 = global0.e.x;
    let var_0 = _wgslsmith_sub_i32(_wgslsmith_div_i32(func_5(_wgslsmith_dot_vec4_i32(vec4<i32>(-15626i, u_input.e, 2147483647i, u_input.c.x), u_input.c) << (1u % 32u), ~(-vec2<i32>(-2147483647i, u_input.e)), func_1(reverseBits(vec2<i32>(17915i, global0.b))), func_1(u_input.c.ww << (global1[_wgslsmith_index_u32(36372u, 2u)] % vec2<u32>(32u))).e.x), u_input.e), u_input.e);
    let var_1 = u_input.c;
    var var_2 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.x) - func_1(firstLeadingBit(global0.e.zy)).d.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1565f, 1471f))) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.d.x, global0.d.x) * global3.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global3.x, -1272f)))) * _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(956f, -1000f, -320f)))));
    let var_3 = func_2(vec2<u32>(firstTrailingBit(u_input.d.x), _wgslsmith_mult_u32(_wgslsmith_mod_u32(u_input.d.x, 0u), _wgslsmith_mult_u32(u_input.d.x, u_input.b.x)) ^ 0u), global0.d, Struct_1(!vec2<bool>(!global0.c, true), var_1.x, any(!func_2(vec2<u32>(0u, 4294967295u), vec4<f32>(global3.x, 245f, 1433f, 884f), Struct_1(global0.a, var_1.x, global0.a.x, global0.d, vec3<i32>(u_input.e, 24237i, -7750i)), global0.a.x).a), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(817f, global3.x, global0.d.x, 706f) - vec4<f32>(-2316f, -176f, -1290f, -117f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.d.x, global3.x, 334f, -1000f) + global0.d)) * _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(global0.d + global0.d)))), vec3<i32>(-var_1.x, select(~2147483647i, 0i, all(vec4<bool>(true, global0.a.x, global0.c, global0.c))), global0.e.x)), !(579f != _wgslsmith_f_op_f32(floor(-1273f))));
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-980f * global3.x) + _wgslsmith_f_op_f32(1610f + var_2.x))) - -461f));
    var var_5 = Struct_1(func_3(_wgslsmith_mult_vec3_u32(select(vec3<u32>(0u, 4294967295u, u_input.d.x), vec3<u32>(u_input.b.x, u_input.a.x, u_input.d.x), vec3<bool>(var_3.a.x, false, global0.a.x)) ^ ~vec3<u32>(4294967295u, 0u, 0u), vec3<u32>(1u, 1u, 1u) >> (_wgslsmith_add_vec3_u32(vec3<u32>(1u, 27120u, u_input.a.x), vec3<u32>(u_input.d.x, 0u, u_input.d.x)) % vec3<u32>(32u))), 1u), _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(_wgslsmith_mult_vec2_i32(u_input.c.zw, func_1(var_3.e.yz).e.xz), _wgslsmith_div_vec2_i32(global0.e.yz, ~var_3.e.zy)), select(-u_input.c.xz, vec2<i32>(5931i, 1i), true)), global0.c, var_3.d, _wgslsmith_sub_vec3_i32(~global0.e, vec3<i32>(abs(-var_3.b), ~var_0, u_input.e)));
    var var_6 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-var_2.xx), global0.d.zy, var_5.a));
    let x = u_input.a;
    s_output = StorageBuffer(~(~(~select(vec4<u32>(4294967295u, u_input.a.x, 23320u, u_input.b.x), vec4<u32>(4294967295u, u_input.a.x, 4294967295u, 28593u), var_3.a.x))), _wgslsmith_mult_vec2_u32(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(~u_input.d.x, 18161u), 2u)], min(vec2<u32>(u_input.d.x, 1u), vec2<u32>(u_input.b.x, u_input.d.x))) & abs(u_input.a & u_input.a), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(exp2(var_5.d)))), 656f);
}


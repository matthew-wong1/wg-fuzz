struct Struct_1 {
    a: f32,
    b: i32,
    c: u32,
    d: f32,
    e: vec2<f32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: i32,
    c: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
    b: Struct_2,
    c: Struct_1,
    d: vec3<i32>,
}

struct Struct_4 {
    a: Struct_2,
    b: vec3<bool>,
    c: u32,
    d: vec4<i32>,
    e: u32,
}

struct Struct_5 {
    a: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 20>;

var<private> global1: array<vec2<i32>, 13> = array<vec2<i32>, 13>(vec2<i32>(-3280i, -6253i), vec2<i32>(-67600i, 37387i), vec2<i32>(2147483647i, i32(-2147483648)), vec2<i32>(-1i, -1i), vec2<i32>(-6878i, 2147483647i), vec2<i32>(-4635i, -31611i), vec2<i32>(0i, 1i), vec2<i32>(i32(-2147483648), 39128i), vec2<i32>(12222i, 18317i), vec2<i32>(26959i, 39578i), vec2<i32>(1i, 12277i), vec2<i32>(0i, i32(-2147483648)), vec2<i32>(-15994i, 38682i));

var<private> global2: bool = false;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3() -> vec3<bool> {
    var var_0 = Struct_3(vec4<u32>(_wgslsmith_dot_vec2_u32(u_input.c, ~u_input.c), u_input.c.x, ~0u, 32960u), Struct_2(vec4<bool>(true, !select(true, true, true), false, !(u_input.c.x <= u_input.c.x)), _wgslsmith_mod_i32(-2147483647i, select(~41825i, firstTrailingBit(u_input.a), 0u != u_input.c.x)), Struct_1(-510f, 39191i, 0u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(681f + -676f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-252f, 985f) + vec2<f32>(-223f, 251f)) + _wgslsmith_f_op_vec2_f32(round(vec2<f32>(1709f, -652f)))))), Struct_1(_wgslsmith_f_op_f32(floor(842f)), _wgslsmith_add_i32(u_input.a, -(~(-15906i))), u_input.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1429f))), vec2<f32>(_wgslsmith_f_op_f32(floor(640f)), 507f)), min(abs(vec3<i32>(~(-1i), u_input.a, _wgslsmith_add_i32(u_input.a, u_input.b.x))), abs(_wgslsmith_mod_vec3_i32(~vec3<i32>(u_input.a, u_input.b.x, 1i), ~u_input.b.xzy))));
    let var_1 = 0u;
    let var_2 = ~_wgslsmith_add_vec2_i32(reverseBits(max(abs(vec2<i32>(0i, var_0.b.c.b)), ~u_input.b.wz)), _wgslsmith_add_vec2_i32(u_input.b.xx, _wgslsmith_clamp_vec2_i32(select(global1[_wgslsmith_index_u32(4294967295u, 13u)], vec2<i32>(var_0.b.c.b, 28959i), var_0.b.a.x), ~vec2<i32>(u_input.b.x, -1i), vec2<i32>(-16533i, 2147483647i))));
    global2 = select(any(vec2<bool>(false, var_0.b.c.a >= _wgslsmith_f_op_f32(-444f * var_0.b.c.d))), (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -466f)) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(2900f)))) & any(!(!var_0.b.a.ww)), false);
    let var_3 = global0[_wgslsmith_index_u32(~select(var_0.b.c.c, 5486u, select(true, var_0.b.a.x, var_0.b.a.x)), 20u)];
    return vec3<bool>(!(var_0.c.a >= -2119f) != var_3.a, true, var_1 != 1u);
}

fn func_4(arg_0: Struct_4, arg_1: vec4<f32>, arg_2: i32) -> vec4<bool> {
    global1 = array<vec2<i32>, 13>();
    let var_0 = _wgslsmith_dot_vec2_i32(~(-vec2<i32>(2147483647i, 0i) | vec2<i32>(arg_0.d.x, arg_2)), arg_0.d.ww ^ ~vec2<i32>(-arg_0.a.c.b, reverseBits(-2147483647i)));
    global1 = array<vec2<i32>, 13>();
    global1 = array<vec2<i32>, 13>();
    global0 = array<Struct_5, 20>();
    return vec4<bool>(any(!select(!arg_0.a.a, arg_0.a.a, all(arg_0.b.xy))), false, true, !(_wgslsmith_div_f32(871f, _wgslsmith_f_op_f32(max(arg_1.x, arg_0.a.c.a))) < arg_0.a.c.d));
}

fn func_2(arg_0: i32) -> Struct_2 {
    var var_0 = u_input.c.x;
    let var_1 = global1[_wgslsmith_index_u32(103463u, 13u)];
    let var_2 = select(func_4(Struct_4(Struct_2(select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, true), false), -arg_0, Struct_1(-190f, 14180i, 4294967295u, -795f, vec2<f32>(1081f, -1002f))), func_3(), u_input.c.x, u_input.b, reverseBits(~u_input.c.x)), vec4<f32>(_wgslsmith_f_op_f32(sign(-1221f)), _wgslsmith_f_op_f32(705f * _wgslsmith_f_op_f32(ceil(227f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1011f), _wgslsmith_f_op_f32(f32(-1f) * -190f), false)), _wgslsmith_f_op_f32(round(-892f))), ~(~_wgslsmith_dot_vec4_i32(vec4<i32>(arg_0, -1i, -1i, -2529i), vec4<i32>(1i, u_input.a, 44798i, 1i)))), select(vec4<bool>(true, true, true, true), !vec4<bool>(true, true, true, all(vec2<bool>(true, true))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(345f + -1208f))) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(631f - -767f))), all(select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, true), false), vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, true)), true)));
    let var_3 = global0[_wgslsmith_index_u32(u_input.c.x, 20u)];
    global2 = var_3.a && func_3().x;
    return Struct_2(vec4<bool>(true, !var_2.x, (true & (u_input.c.x > 52762u)) | var_3.a, all(vec2<bool>(func_4(Struct_4(Struct_2(vec4<bool>(false, true, var_3.a, var_2.x), arg_0, Struct_1(-494f, 3991i, u_input.c.x, 630f, vec2<f32>(1294f, -492f))), var_2.wzz, u_input.c.x, u_input.b, u_input.c.x), vec4<f32>(1748f, 845f, -562f, 1114f), -1i).x, any(var_2)))), ~(u_input.a | -min(var_1.x, u_input.b.x)), Struct_1(_wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -350f))), countOneBits(abs(firstLeadingBit(0i))), u_input.c.x >> (u_input.c.x % 32u), _wgslsmith_f_op_f32(1021f + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(1118f)), -1584f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1577f, 1000f))))) + vec2<f32>(-784f, -1613f))));
}

fn func_1() -> Struct_2 {
    return func_2(-46193i);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = false;
    var var_0 = func_1();
    var var_1 = global0[_wgslsmith_index_u32(1u, 20u)];
    var var_2 = var_0.b;
    let var_3 = func_2(-27861i).c;
    var var_4 = Struct_4(func_2(_wgslsmith_div_i32(2147483647i, _wgslsmith_div_i32(-1i, -var_0.b))), !vec3<bool>(true && any(vec2<bool>(false, var_0.a.x)), false, var_1.a), _wgslsmith_mult_u32(_wgslsmith_clamp_u32(abs(var_0.c.c), 1u << (u_input.c.x % 32u), countOneBits(countOneBits(u_input.c.x))), _wgslsmith_mult_u32(61577u, 1u) ^ ~var_0.c.c), max(u_input.b, countOneBits(u_input.b)), ~0u);
    var_1 = Struct_5(func_3().x);
    var_1 = global0[_wgslsmith_index_u32(firstLeadingBit(~u_input.c.x), 20u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1f, 1f, 1f, 1f))))), vec4<i32>(_wgslsmith_dot_vec3_i32(var_4.d.zyx, firstLeadingBit(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.a, 2147483647i, var_3.b), u_input.b.wxy))), -_wgslsmith_sub_i32(var_3.b, -29571i & var_4.a.b), _wgslsmith_sub_i32(15402i, func_1().c.b), var_0.b));
}


struct Struct_1 {
    a: bool,
    b: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: f32,
    c: i32,
    d: Struct_1,
    e: vec2<bool>,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: i32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: vec2<f32>,
    d: vec2<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 12> = array<Struct_2, 12>(Struct_2(Struct_1(true, vec2<f32>(-236f, 170f))), Struct_2(Struct_1(true, vec2<f32>(158f, -346f))), Struct_2(Struct_1(false, vec2<f32>(-1000f, 317f))), Struct_2(Struct_1(true, vec2<f32>(736f, 292f))), Struct_2(Struct_1(true, vec2<f32>(1079f, -2313f))), Struct_2(Struct_1(false, vec2<f32>(2120f, 1148f))), Struct_2(Struct_1(false, vec2<f32>(-644f, -1000f))), Struct_2(Struct_1(false, vec2<f32>(-178f, -648f))), Struct_2(Struct_1(true, vec2<f32>(1000f, 1162f))), Struct_2(Struct_1(true, vec2<f32>(1000f, 1677f))), Struct_2(Struct_1(true, vec2<f32>(1140f, -1481f))), Struct_2(Struct_1(false, vec2<f32>(196f, -1333f))));

var<private> global1: Struct_2;

var<private> global2: array<vec2<i32>, 3> = array<vec2<i32>, 3>(vec2<i32>(4047i, -1i), vec2<i32>(0i, -25464i), vec2<i32>(-1i, 1i));

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> vec2<i32> {
    global1 = global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.d.x, ~4294967295u), 12u)];
    let var_0 = ~u_input.d.x;
    let var_1 = vec4<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(max(vec4<i32>(u_input.c, 0i, u_input.a, 28241i), vec4<i32>(2147483647i, u_input.a, -35057i, u_input.c)) & vec4<i32>(u_input.a, 1i, u_input.a, -2147483647i), vec4<i32>(-8510i, ~2147483647i, u_input.c, abs(u_input.c))), countOneBits(-vec4<i32>(-2147483647i, u_input.c, -1i, u_input.c)) & -select(vec4<i32>(u_input.a, u_input.a, -1i, u_input.c), vec4<i32>(-38909i, u_input.a, u_input.c, u_input.a), global1.a.a)), -2147483647i, u_input.a, u_input.c);
    global1 = Struct_2(Struct_1(true, _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(select(global1.a.b, _wgslsmith_f_op_vec2_f32(-global1.a.b), true))))));
    global0 = array<Struct_2, 12>();
    return vec2<i32>(var_1.x, var_1.x);
}

fn func_2() -> f32 {
    global1 = global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_clamp_u32(_wgslsmith_sub_u32(_wgslsmith_mod_u32(_wgslsmith_clamp_u32(33014u, 35823u, u_input.d.x), _wgslsmith_mult_u32(27087u, u_input.d.x)), firstTrailingBit(u_input.b.x)), 1u, 1u), u_input.d.x), 12u)];
    let var_0 = Struct_4(global1.a);
    global2 = array<vec2<i32>, 3>();
    var var_1 = -func_3();
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.a.b.x, -435f, global1.a.b.x) + vec3<f32>(878f, global1.a.b.x, -262f)) * _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(147f, global1.a.b.x, 431f)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-418f, var_0.a.b.x, -131f) + _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global1.a.b.x, 686f, 569f)))), select(!vec3<bool>(false, global1.a.a, false), select(vec3<bool>(global1.a.a, global1.a.a, true), vec3<bool>(global1.a.a, false, true), true), !vec3<bool>(global1.a.a, true, false)))) * vec3<f32>(-387f, -115f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(var_0.a.b.x)))))) * _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a.b.x, -262f, var_0.a.b.x) * vec3<f32>(-560f, global1.a.b.x, 266f)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.a.b.x, 1393f, var_0.a.b.x)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.a.b.x, var_0.a.b.x, var_0.a.b.x)) - _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global1.a.b.x, var_0.a.b.x, global1.a.b.x)))) + _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global1.a.b.x, 1250f, -2018f)))))))));
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_2.x * global1.a.b.x)));
}

fn func_1(arg_0: bool, arg_1: Struct_4) -> vec3<bool> {
    let var_0 = ~max(-_wgslsmith_div_vec4_i32(reverseBits(vec4<i32>(u_input.c, u_input.a, -2147483647i, u_input.a)), ~vec4<i32>(u_input.c, u_input.a, u_input.c, -1i)), vec4<i32>(-28517i, countOneBits(2147483647i) & _wgslsmith_dot_vec3_i32(vec3<i32>(-1290i, u_input.a, u_input.c), vec3<i32>(22982i, u_input.c, u_input.a)), 0i, _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(11724i, 41390i, -2147483647i, u_input.a), vec4<i32>(u_input.a, 0i, -1i, u_input.a)), 43552i)));
    let var_1 = Struct_1(select(true | (arg_1.a.b.x >= arg_1.a.b.x), true, arg_1.a.a || !arg_1.a.a), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + 1646f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global1.a.b.x)) + _wgslsmith_f_op_f32(func_2()))));
    var var_2 = _wgslsmith_add_vec4_i32(var_0, -(var_0 ^ vec4<i32>(_wgslsmith_clamp_i32(-51108i, 79420i, 0i), var_0.x & var_0.x, 0i, ~(-48229i))));
    let var_3 = reverseBits(~(~vec4<u32>(u_input.d.x, u_input.b.x, u_input.d.x, u_input.b.x)) >> (vec4<u32>(~u_input.d.x, u_input.d.x, u_input.d.x, _wgslsmith_mult_u32(1u, ~u_input.b.x)) % vec4<u32>(32u)));
    let var_4 = vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -675f), 776f);
    return vec3<bool>(!(!global1.a.a), var_1.a && any(vec3<bool>(true & global1.a.a, var_1.a || true, all(vec4<bool>(true, false, arg_1.a.a, true)))), var_1.b.x > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_1.b.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true && ((4294967295u < abs(u_input.d.x)) && any(select(func_1(global1.a.a, Struct_4(Struct_1(false, global1.a.b))), vec3<bool>(global1.a.a, global1.a.a, global1.a.a), func_1(global1.a.a, Struct_4(global1.a)))));
    let var_1 = u_input.d;
    var var_2 = select(!vec2<bool>(!func_1(global1.a.a, Struct_4(Struct_1(global1.a.a, global1.a.b))).x, global1.a.a), select(select(!vec2<bool>(global1.a.a, global1.a.a), vec2<bool>(true, global1.a.a), vec2<bool>(!global1.a.a, !global1.a.a)), !(!(!vec2<bool>(true, global1.a.a))), select(vec2<bool>(true, true), vec2<bool>(true, true), !(!global1.a.a))), false);
    global2 = array<vec2<i32>, 3>();
    let var_3 = global1.a.b.x;
    let var_4 = _wgslsmith_dot_vec3_u32(countOneBits(abs(u_input.d)), vec3<u32>(~(~var_1.x), ~(~(~46371u)), _wgslsmith_add_u32(u_input.b.x, _wgslsmith_mod_u32(var_1.x, var_1.x)) | ~min(1u, 75850u)));
    var var_5 = global1.a;
    global1 = Struct_2(global1.a);
    let var_6 = Struct_3(-6611i & u_input.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(759f))), _wgslsmith_f_op_f32(func_2())), abs(-reverseBits(_wgslsmith_mult_i32(26148i, 1i))), global1.a, !(!select(func_1(true, Struct_4(Struct_1(false, var_5.b))).xz, !vec2<bool>(var_2.x, true), func_1(var_5.a, Struct_4(global1.a)).zz)));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1378f)), -719f, _wgslsmith_f_op_f32(step(global1.a.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_6.d.b.x + 1292f) * -1287f))), _wgslsmith_f_op_f32(-var_5.b.x)), select(9030u, _wgslsmith_add_u32(~(~1u), var_4), !func_1(any(var_6.e), Struct_4(Struct_1(var_5.a, vec2<f32>(-227f, -745f)))).x), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a.b.x)) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_5.b.x, global1.a.b.x))), 1529f), var_5.b, 14635u);
}


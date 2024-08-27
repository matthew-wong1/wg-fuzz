struct Struct_1 {
    a: vec2<u32>,
    b: bool,
    c: vec3<bool>,
    d: i32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec4<bool>,
    c: vec3<bool>,
    d: vec2<f32>,
    e: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: bool,
    e: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: u32,
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

var<private> global0: array<vec2<u32>, 19>;

var<private> global1: f32;

var<private> global2: array<u32, 13>;

var<private> global3: array<vec2<i32>, 18>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: u32, arg_1: Struct_2) -> bool {
    var var_0 = select(u_input.b, ~u_input.b, arg_1.a) | -vec4<i32>(_wgslsmith_mult_i32(firstTrailingBit(u_input.b.x), u_input.a), 0i, firstTrailingBit(_wgslsmith_add_i32(u_input.a, u_input.a)), ~max(u_input.b.x, 18003i));
    let var_1 = Struct_2(vec4<bool>(all(select(select(vec3<bool>(false, false, false), arg_1.a.yxy, true), !arg_1.b.wwx, arg_1.c.x && false)), false, arg_1.c.x, false), select(!vec4<bool>(any(arg_1.a.yy), arg_1.c.x, false, arg_1.a.x), !arg_1.b, vec4<bool>(!all(vec3<bool>(true, arg_1.b.x, false)), true, arg_1.b.x, arg_1.c.x)), arg_1.a.yyw, vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-1396f, _wgslsmith_f_op_f32(-arg_1.d.x)), _wgslsmith_f_op_f32(-arg_1.d.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1221f) - -772f))), !(!arg_1.c.x));
    global3 = array<vec2<i32>, 18>();
    global1 = arg_1.d.x;
    let var_2 = -1086f;
    return arg_1.c.x & arg_1.e;
}

fn func_2() -> u32 {
    global2 = array<u32, 13>();
    var var_0 = _wgslsmith_mult_i32(~(-(-u_input.a ^ 35893i)), u_input.a);
    let var_1 = vec3<bool>(all(vec4<bool>(true, true, true, true)) && (_wgslsmith_add_i32(abs(u_input.b.x), -2147483647i) <= select(u_input.a, _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, u_input.a, 0i, -1i), u_input.b), false)), true, true);
    let var_2 = Struct_3(Struct_1(_wgslsmith_sub_vec2_u32(~vec2<u32>(35620u, 1u), max(vec2<u32>(18166u, 0u), ~global0[_wgslsmith_index_u32(u_input.c, 19u)])), func_3(u_input.d, Struct_2(select(vec4<bool>(var_1.x, var_1.x, false, var_1.x), vec4<bool>(var_1.x, var_1.x, true, var_1.x), vec4<bool>(false, false, true, var_1.x)), select(vec4<bool>(false, false, false, var_1.x), vec4<bool>(var_1.x, false, var_1.x, true), vec4<bool>(var_1.x, false, true, var_1.x)), vec3<bool>(false, false, false), _wgslsmith_f_op_vec2_f32(-vec2<f32>(264f, -1135f)), !var_1.x)), var_1, u_input.a), Struct_1(global0[_wgslsmith_index_u32(~u_input.d, 19u)], true, vec3<bool>(!var_1.x, false, !var_1.x), max((u_input.b.x << (33493u % 32u)) << (15394u % 32u), _wgslsmith_mod_i32(-1i, max(-2147483647i, 1i)))), Struct_1(global0[_wgslsmith_index_u32(74872u, 19u)], !var_1.x, select(var_1, var_1, vec3<bool>(true || var_1.x, true, true)), 2944i), var_1.x, false);
    let var_3 = Struct_2(vec4<bool>(false == any(!vec4<bool>(var_2.c.c.x, var_2.a.c.x, true, true)), true, any(vec2<bool>(true, var_1.x)), all(!var_1.zz)), !select(select(select(vec4<bool>(false, false, false, var_2.b.b), vec4<bool>(var_2.c.b, var_1.x, false, var_1.x), vec4<bool>(false, false, var_2.b.b, var_1.x)), !vec4<bool>(false, var_2.c.c.x, false, var_1.x), vec4<bool>(true, var_2.c.c.x, false, var_2.b.c.x)), select(select(vec4<bool>(true, var_1.x, false, false), vec4<bool>(var_2.e, var_2.c.b, false, var_2.e), var_2.d), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, var_1.x)), any(vec4<bool>(var_1.x, var_2.b.c.x, var_1.x, var_1.x)) & !var_1.x), var_2.c.c, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -411f), 335f) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-381f, 611f))), !any(select(!vec3<bool>(false, var_2.d, false), !vec3<bool>(false, var_2.c.b, var_2.a.c.x), vec3<bool>(var_2.c.b, var_2.c.c.x, var_2.e))));
    return var_2.a.a.x;
}

fn func_1() -> bool {
    var var_0 = _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-805f, _wgslsmith_f_op_f32(select(-745f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-2613f)) + _wgslsmith_f_op_f32(-1000f + -359f)), !any(vec2<bool>(false, true)))), 1007f)));
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-var_0.x), var_0.x, _wgslsmith_f_op_f32(-var_0.x)) * _wgslsmith_div_vec3_f32(vec3<f32>(var_0.x, var_0.x, 611f), vec3<f32>(-137f, var_0.x, var_0.x))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, 333f, var_0.x) + _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, var_0.x, var_0.x) * vec3<f32>(var_0.x, -2281f, -1000f))))));
    global3 = array<vec2<i32>, 18>();
    return (func_2() & _wgslsmith_mult_u32(~1u, ~u_input.c)) > u_input.d;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<bool>(all(!vec4<bool>(func_1(), true, true, true)), true);
    let var_1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -526f)) - _wgslsmith_f_op_f32(max(1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1589f)) - 141f))))));
    var var_2 = Struct_3(Struct_1(~(vec2<u32>(global2[_wgslsmith_index_u32(1u, 13u)], u_input.d) & vec2<u32>(global2[_wgslsmith_index_u32(u_input.c, 13u)], 4294967295u)), var_0.x, vec3<bool>(all(select(var_0, vec2<bool>(var_0.x, var_0.x), var_0.x)), var_0.x, -473f >= var_1), abs(u_input.a) >> ((countOneBits(u_input.c) ^ ~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(70018u, 13u)], 13u)], 13u)]) % 32u)), Struct_1(~vec2<u32>(108551u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.c, 13u)], 13u)]) << (vec2<u32>(_wgslsmith_sub_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.c, 13u)], 13u)], global2[_wgslsmith_index_u32(u_input.d, 13u)]), ~22321u) % vec2<u32>(32u)), true, !vec3<bool>(var_0.x, true, false), _wgslsmith_mod_i32(-1i, u_input.a)), Struct_1(_wgslsmith_mult_vec2_u32(firstTrailingBit(vec2<u32>(u_input.c, global2[_wgslsmith_index_u32(0u, 13u)])), select(global0[_wgslsmith_index_u32(22598u, 19u)] << (vec2<u32>(4294967295u, 4294967295u) % vec2<u32>(32u)), global0[_wgslsmith_index_u32(u_input.d, 19u)] << (vec2<u32>(u_input.c, 49948u) % vec2<u32>(32u)), all(vec3<bool>(true, var_0.x, false)))), var_0.x, select(select(vec3<bool>(var_0.x, true, var_0.x), select(vec3<bool>(true, var_0.x, var_0.x), vec3<bool>(var_0.x, false, var_0.x), true), select(vec3<bool>(var_0.x, false, var_0.x), vec3<bool>(true, false, true), false)), !vec3<bool>(var_0.x, false, false), (var_1 < -1031f) | var_0.x), abs(_wgslsmith_div_i32(-2147483647i, 2132i)) ^ min(u_input.b.x, u_input.a << (0u % 32u))), all(!var_0), any(!(!(!vec4<bool>(false, true, var_0.x, true)))));
    global1 = -326f;
    global3 = array<vec2<i32>, 18>();
    global3 = array<vec2<i32>, 18>();
    let x = u_input.a;
    s_output = StorageBuffer(var_1);
}


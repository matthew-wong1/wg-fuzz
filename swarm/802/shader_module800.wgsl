struct Struct_1 {
    a: vec3<i32>,
    b: vec4<f32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: Struct_1,
    d: vec3<bool>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
    d: f32,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_1,
    c: i32,
    d: vec3<bool>,
    e: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: u32,
    d: vec2<u32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 13>;

var<private> global1: u32 = 52972u;

var<private> global2: vec2<f32> = vec2<f32>(161f, 563f);

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: vec3<i32>, arg_1: bool, arg_2: Struct_2, arg_3: Struct_1) -> vec3<i32> {
    let var_0 = Struct_3(arg_2.b);
    global1 = 11861u;
    let var_1 = arg_2;
    var var_2 = var_1.d;
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.b.x * _wgslsmith_f_op_f32(step(932f, -755f))));
    return var_1.b.a;
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_5(Struct_2(_wgslsmith_div_vec2_f32(vec2<f32>(846f, -542f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.x, 1300f)))), Struct_1(func_3(~vec3<i32>(2147483647i, u_input.e.x, -1i), -877f > global2.x, Struct_2(vec2<f32>(global2.x, -375f), Struct_1(vec3<i32>(u_input.e.x, u_input.e.x, u_input.e.x), vec4<f32>(global2.x, global2.x, 658f, 1000f)), Struct_1(vec3<i32>(u_input.e.x, 20250i, 1i), vec4<f32>(global2.x, 368f, -680f, global2.x)), vec3<bool>(global0[_wgslsmith_index_u32(68823u, 13u)], false, true)), Struct_1(vec3<i32>(-2147483647i, u_input.e.x, u_input.e.x), vec4<f32>(-320f, global2.x, 1292f, global2.x))), vec4<f32>(global2.x, _wgslsmith_f_op_f32(trunc(global2.x)), global2.x, _wgslsmith_f_op_f32(-global2.x))), Struct_1(reverseBits(~vec3<i32>(-3713i, -1i, 6739i)), vec4<f32>(global2.x, -1359f, global2.x, _wgslsmith_div_f32(global2.x, global2.x))), vec3<bool>(!(!global0[_wgslsmith_index_u32(1u, 13u)]), true, all(select(vec2<bool>(true, global0[_wgslsmith_index_u32(0u, 13u)]), vec2<bool>(false, false), global0[_wgslsmith_index_u32(u_input.c, 13u)])))), Struct_1(vec3<i32>(-2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.e.x, u_input.e.x, u_input.e.x), countOneBits(vec3<i32>(-15855i, u_input.e.x, 0i))), u_input.e.x | u_input.e.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, 1232f, global2.x, -206f))) + vec4<f32>(_wgslsmith_f_op_f32(-577f - global2.x), _wgslsmith_f_op_f32(-global2.x), global2.x, global2.x))), -2147483647i, vec3<bool>(all(!select(vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.b.x, 13u)], false, false), vec4<bool>(true, false, global0[_wgslsmith_index_u32(0u, 13u)], global0[_wgslsmith_index_u32(0u, 13u)]), false)), !global0[_wgslsmith_index_u32(0u, 13u)], select(true, true, true)), !global0[_wgslsmith_index_u32((~22103u >> (u_input.b.x % 32u)) | _wgslsmith_mult_u32(~10049u, _wgslsmith_dot_vec4_u32(vec4<u32>(39008u, u_input.c, u_input.d.x, 55874u), vec4<u32>(u_input.d.x, u_input.d.x, u_input.b.x, 63088u))), 13u)]);
    var var_1 = !any(var_0.d.yx);
    global1 = abs(0u);
    var var_2 = abs((func_3(abs(var_0.a.b.a), false, Struct_2(vec2<f32>(358f, global2.x), Struct_1(vec3<i32>(var_0.c, -4642i, u_input.e.x), var_0.a.b.b), Struct_1(var_0.b.a, var_0.a.b.b), vec3<bool>(true, false, false)), var_0.b).x & ~abs(-4684i)) | var_0.b.a.x);
    global1 = 4294967295u;
    return Struct_1(var_0.a.b.a, vec4<f32>(global2.x, _wgslsmith_f_op_f32(-1271f - 177f), 1697f, global2.x));
}

fn func_1(arg_0: vec3<i32>) -> Struct_5 {
    var var_0 = Struct_3(func_2());
    let var_1 = var_0.a;
    global2 = func_2().b.xy;
    let var_2 = vec4<bool>((var_0.a.b.x >= func_2().b.x) && any(select(vec2<bool>(global0[_wgslsmith_index_u32(u_input.a, 13u)], true), !vec2<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 13u)], global0[_wgslsmith_index_u32(u_input.b.x, 13u)]), select(global0[_wgslsmith_index_u32(20804u, 13u)], global0[_wgslsmith_index_u32(1u, 13u)], true))), all(vec4<bool>(global0[_wgslsmith_index_u32(~33230u, 13u)], !global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(4294967295u, u_input.c), 13u)], true, global0[_wgslsmith_index_u32(u_input.c, 13u)])), true, global0[_wgslsmith_index_u32(select(~0u, u_input.d.x, global0[_wgslsmith_index_u32(abs(u_input.b.x) | _wgslsmith_mult_u32(u_input.a, 24312u), 13u)] | global0[_wgslsmith_index_u32(min(u_input.a, _wgslsmith_add_u32(16924u, 1u)), 13u)]), 13u)]);
    global2 = var_0.a.b.xy;
    return Struct_5(Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1216f, var_0.a.b.x))), func_2(), Struct_1(var_0.a.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_1.b - vec4<f32>(1000f, global2.x, 179f, -217f)) - _wgslsmith_f_op_vec4_f32(-var_0.a.b))), var_2.wyy), var_0.a, var_0.a.a.x, vec3<bool>(var_2.x, all(!var_2.yyy), global0[_wgslsmith_index_u32(reverseBits(4294967295u), 13u)]), true);
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_5, arg_2: Struct_4, arg_3: bool) -> u32 {
    var var_0 = func_2();
    var var_1 = arg_1.a.d.xx;
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0.b.zxy) + vec3<f32>(-1499f, arg_2.d, var_0.b.x)), func_1(firstLeadingBit(vec3<i32>(u_input.e.x, 15249i, 7772i))).b.b.xxy)) * _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(arg_1.b.b.yxw, var_0.b.wwy))))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_1.b.b.wyz - vec3<f32>(404f, 960f, 2209f))) + vec3<f32>(126f, _wgslsmith_f_op_f32(round(var_0.b.x)), _wgslsmith_f_op_f32(-357f + -151f))), arg_2.a.b.yww));
    var_0 = Struct_1(func_1(_wgslsmith_sub_vec3_i32(arg_1.a.c.a, ~arg_2.b.a)).b.a >> (~vec3<u32>(u_input.d.x, 75233u, _wgslsmith_dot_vec2_u32(u_input.b, u_input.b)) % vec3<u32>(32u)), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(arg_1.a.a.x, _wgslsmith_f_op_f32(f32(-1f) * -891f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(391f - 1257f) - _wgslsmith_f_op_f32(-497f - global2.x)), arg_2.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_2.x, arg_2.a.b.x)))) * _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-928f, var_2.x, arg_2.b.b.x, 190f))))));
    let var_3 = _wgslsmith_f_op_f32(-global2.x);
    return 4294967295u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = abs(0u);
    global1 = ~(~countOneBits(20521u)) >> (~func_4(min(vec3<i32>(-6021i, 0i, -2147483647i), vec3<i32>(34332i, u_input.e.x, 9592i)) & select(vec3<i32>(u_input.e.x, -1i, 0i), vec3<i32>(u_input.e.x, 4295i, -35435i), vec3<bool>(false, true, global0[_wgslsmith_index_u32(59230u, 13u)])), func_1(~vec3<i32>(u_input.e.x, 1969i, -1i)), Struct_4(func_1(vec3<i32>(17124i, u_input.e.x, u_input.e.x)).b, Struct_1(vec3<i32>(u_input.e.x, 7412i, u_input.e.x), vec4<f32>(-298f, 196f, 1297f, global2.x)), global0[_wgslsmith_index_u32(4821u, 13u)], _wgslsmith_f_op_f32(trunc(global2.x))), true) % 32u);
    let var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global2.x, 1000f, global2.x, 176f)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(global2.x, -558f, -229f, global2.x) * _wgslsmith_f_op_vec4_f32(vec4<f32>(967f, 816f, -852f, -1807f) + vec4<f32>(global2.x, -418f, global2.x, global2.x))))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -458f))), _wgslsmith_f_op_f32(global2.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1916f - 702f) - global2.x)), _wgslsmith_f_op_f32(global2.x + -591f), global2.x));
    var var_2 = func_1(firstTrailingBit(-vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.e.x, 0i, u_input.e.x, 1i), vec4<i32>(u_input.e.x, 2147483647i, -31765i, -2147483647i)), _wgslsmith_div_i32(u_input.e.x, u_input.e.x), 0i)));
    var var_3 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(1u);
}


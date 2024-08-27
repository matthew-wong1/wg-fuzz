struct Struct_1 {
    a: vec4<u32>,
    b: f32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: f32,
    c: vec2<bool>,
    d: bool,
    e: vec3<bool>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec2<i32>,
}

struct Struct_4 {
    a: vec3<i32>,
    b: vec3<bool>,
    c: bool,
}

struct Struct_5 {
    a: vec3<u32>,
    b: bool,
    c: Struct_3,
    d: Struct_1,
    e: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(290f, 1474f);

var<private> global1: Struct_5 = Struct_5(vec3<u32>(1314u, 1u, 0u), true, Struct_3(vec2<f32>(-130f, -412f), vec2<i32>(29199i, i32(-2147483648))), Struct_1(vec4<u32>(44025u, 18584u, 1u, 1u), 1000f), -882f);

var<private> global2: array<Struct_3, 32>;

var<private> global3: u32;

var<private> global4: Struct_3 = Struct_3(vec2<f32>(1222f, 775f), vec2<i32>(-3401i, -30317i));

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3(arg_0: vec4<i32>, arg_1: bool) -> vec2<f32> {
    let var_0 = Struct_5(vec3<u32>(~1u, countOneBits(~global1.a.x), 4294967295u), global1.b, global1.c, global1.d, global0.x);
    global1 = var_0;
    let var_1 = (22656u == min(var_0.a.x, var_0.a.x)) & global1.b;
    global1 = var_0;
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(max(1358f, var_0.c.a.x)), var_0.c.a.x) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, global4.a.x)) * _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-340f, 352f)))))) - global4.a);
    return global4.a;
}

fn func_2() -> Struct_3 {
    global0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(1613f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global0.x, 615f)) * _wgslsmith_f_op_f32(-global4.a.x)) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1000f * global0.x))))));
    var var_0 = global1.d.a;
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(global4.a.x, global1.d.b, -1000f) + vec3<f32>(global4.a.x, 1188f, 1000f)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.d.b, 1071f, -2312f) - vec3<f32>(global4.a.x, global0.x, global4.a.x)), vec3<f32>(global1.c.a.x, -458f, -508f)))));
    var var_2 = 32257u;
    let var_3 = Struct_3(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.e * global1.e) * _wgslsmith_f_op_f32(var_1.x + -1768f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(579f + 477f), -962f)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global4.a) * _wgslsmith_div_vec2_f32(vec2<f32>(1291f, var_1.x), vec2<f32>(global1.c.a.x, -1656f))))), global4.b);
    return Struct_3(_wgslsmith_f_op_vec2_f32(func_3(firstTrailingBit(vec4<i32>(9625i, u_input.a.x, -23440i, var_3.b.x) << (global1.d.a % vec4<u32>(32u))) ^ (-vec4<i32>(1i, u_input.a.x, -2147483647i, var_3.b.x) | select(vec4<i32>(-29197i, u_input.a.x, var_3.b.x, global4.b.x), vec4<i32>(-22104i, -28389i, -30321i, var_3.b.x), global1.b)), true)), u_input.a.yy);
}

fn func_1() -> vec3<i32> {
    global3 = 46981u;
    let var_0 = _wgslsmith_sub_i32(select(global1.c.b.x << (16260u % 32u), -1i, all(select(vec4<bool>(global1.b, global1.b, global1.b, true), vec4<bool>(global1.b, true, global1.b, global1.b), false)) || true), (1i >> (~(~global1.a.x) % 32u)) >> (global1.d.a.x % 32u));
    global4 = Struct_3(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(global4.a.x, global4.a.x) - global4.a))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(global1.c.a * global1.c.a))))))), _wgslsmith_mod_vec2_i32(global1.c.b, _wgslsmith_add_vec2_i32(abs(vec2<i32>(var_0, u_input.a.x)), vec2<i32>(_wgslsmith_div_i32(u_input.a.x, global4.b.x), var_0))));
    global4 = func_2();
    global1 = Struct_5(_wgslsmith_mult_vec3_u32(~global1.a, global1.d.a.yzw), global1.b, global1.c, global1.d, global1.e);
    return _wgslsmith_mult_vec3_i32(-vec3<i32>(~(-2147483647i), ~(-2147483647i), 1i), -u_input.a) & -firstTrailingBit(max(u_input.a, vec3<i32>(-1i, -2486i, -13611i)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_3, 32>();
    var var_0 = _wgslsmith_mod_vec3_i32(_wgslsmith_clamp_vec3_i32(~_wgslsmith_clamp_vec3_i32(vec3<i32>(-20085i, -19337i, 0i), u_input.a, u_input.a), ~select(u_input.a, u_input.a, global1.b), max(u_input.a ^ vec3<i32>(global4.b.x, global1.c.b.x, 77012i), ~u_input.a)) | ~vec3<i32>(_wgslsmith_dot_vec2_i32(global1.c.b, vec2<i32>(1i, 2147483647i)), u_input.a.x ^ 10658i, 51084i), _wgslsmith_sub_vec3_i32(func_1(), _wgslsmith_mod_vec3_i32(-u_input.a | vec3<i32>(1i, global4.b.x, u_input.a.x), u_input.a)));
    var_0 = u_input.a;
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global1.c.a.x))) + _wgslsmith_div_f32(global0.x, _wgslsmith_f_op_f32(exp2(global0.x))));
    let var_2 = true;
    var var_3 = !select(!select(vec3<bool>(false, true, global1.b), select(vec3<bool>(var_2, false, global1.b), vec3<bool>(true, var_2, true), true), var_2), select(vec3<bool>(var_2, any(vec2<bool>(var_2, global1.b)), global0.x > global4.a.x), vec3<bool>(true, var_2, false), !(global1.b | true)), select(vec3<bool>(true, true, true), !select(vec3<bool>(var_2, true, var_2), vec3<bool>(true, global1.b, true), vec3<bool>(false, false, global1.b)), all(vec2<bool>(true, true))));
    let var_4 = -982f;
    let x = u_input.a;
    s_output = StorageBuffer(~30340u, u_input.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-232f - _wgslsmith_f_op_f32(floor(var_4))), global1.c.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1355f)))));
}


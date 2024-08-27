struct Struct_1 {
    a: vec3<bool>,
    b: vec4<f32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: vec3<i32>,
    d: vec2<f32>,
}

struct Struct_3 {
    a: u32,
    b: vec2<f32>,
    c: i32,
}

struct Struct_4 {
    a: Struct_2,
}

struct Struct_5 {
    a: Struct_2,
    b: vec3<bool>,
    c: f32,
    d: vec3<f32>,
    e: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec4<u32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: f32,
    d: vec2<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 5>;

var<private> global1: array<Struct_3, 10> = array<Struct_3, 10>(Struct_3(36982u, vec2<f32>(-789f, 562f), -36086i), Struct_3(1u, vec2<f32>(196f, -2166f), -1i), Struct_3(10356u, vec2<f32>(298f, 136f), 16189i), Struct_3(0u, vec2<f32>(-423f, 815f), -32484i), Struct_3(60097u, vec2<f32>(-112f, 1687f), 2147483647i), Struct_3(0u, vec2<f32>(-405f, -512f), -8892i), Struct_3(4294967295u, vec2<f32>(-1139f, 1001f), 1i), Struct_3(4726u, vec2<f32>(-141f, -934f), 14636i), Struct_3(75291u, vec2<f32>(-1304f, 542f), -24077i), Struct_3(4294967295u, vec2<f32>(-1628f, 1004f), i32(-2147483648)));

var<private> global2: i32;

var<private> global3: Struct_4 = Struct_4(Struct_2(true, Struct_1(vec3<bool>(true, true, true), vec4<f32>(-1405f, -681f, 1142f, -312f)), vec3<i32>(9151i, 20951i, 34933i), vec2<f32>(294f, -405f)));

var<private> global4: vec2<f32>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: f32, arg_1: bool, arg_2: vec3<f32>) -> vec3<i32> {
    var var_0 = all(global3.a.b.a);
    global2 = u_input.b.x;
    var var_1 = Struct_4(Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.x)) > _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(arg_0)))), Struct_1(vec3<bool>(arg_1, arg_2.x <= global3.a.d.x, all(global3.a.b.a.zx)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-228f, global4.x, global4.x, -1713f))), u_input.b.wzx, vec2<f32>(_wgslsmith_div_f32(895f, _wgslsmith_f_op_f32(-arg_0)), _wgslsmith_f_op_f32(-197f - 1633f))));
    var var_2 = vec3<f32>(arg_2.x, _wgslsmith_f_op_f32(var_1.a.b.b.x - _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(global3.a.d.x, _wgslsmith_f_op_f32(188f + global3.a.d.x)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(var_1.a.d.x))))))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(312f)) + _wgslsmith_f_op_f32(-global3.a.b.b.x)) * _wgslsmith_f_op_f32(f32(-1f) * -1631f)))));
    global1 = array<Struct_3, 10>();
    return vec3<i32>(u_input.d, _wgslsmith_mod_i32(global3.a.c.x, 1i), -abs(2147483647i));
}

fn func_2(arg_0: f32) -> vec2<bool> {
    let var_0 = ~_wgslsmith_add_vec3_i32(-u_input.b.yzw, func_3(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(-906f - 205f))), true, vec3<f32>(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(-2150f * -1248f), -1524f)));
    let var_1 = ~abs(vec2<u32>(0u >> (~u_input.c.x % 32u), ~3633u));
    var var_2 = global3.a.b.b.x;
    let var_3 = !select(select(vec3<bool>(global3.a.b.a.x, global3.a.b.a.x | true, false), !select(global3.a.b.a, global3.a.b.a, global3.a.b.a), global3.a.b.a), select(!global3.a.b.a, select(!vec3<bool>(false, true, global3.a.a), global3.a.b.a, true), global3.a.b.a), !(!vec3<bool>(global3.a.a, true, global3.a.b.a.x)));
    let var_4 = countOneBits(select(vec4<i32>(_wgslsmith_mod_i32(var_0.x ^ global3.a.c.x, _wgslsmith_div_i32(global3.a.c.x, -2147483647i)), var_0.x, _wgslsmith_mod_i32(-2729i, _wgslsmith_clamp_i32(-1289i, -1i, -2147483647i)), u_input.d), u_input.b, vec4<bool>(true, all(!vec4<bool>(false, true, false, global3.a.a)), var_3.x, false)));
    return var_3.xy;
}

fn func_1() -> Struct_5 {
    let var_0 = !vec3<bool>(global3.a.b.a.x, true, !(any(vec4<bool>(global3.a.b.a.x, global3.a.a, false, true)) || true));
    global1 = array<Struct_3, 10>();
    let var_1 = Struct_3(u_input.c.x, global3.a.b.b.yw, global3.a.c.x);
    let var_2 = firstTrailingBit(vec2<i32>(1i, ~21272i));
    var var_3 = !func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.b.x - var_1.b.x))));
    return Struct_5(Struct_2(func_2(_wgslsmith_div_f32(627f, var_1.b.x)).x && ((1484i != var_1.c) != false), Struct_1(var_0, _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(global3.a.b.b - global3.a.b.b), vec4<f32>(global4.x, global3.a.b.b.x, -2123f, global4.x)))), ~global3.a.c, vec2<f32>(_wgslsmith_f_op_f32(exp2(var_1.b.x)), _wgslsmith_f_op_f32(floor(1556f)))), select(!var_0, vec3<bool>(var_0.x, true, false && (global3.a.b.a.x || false)), select(vec3<bool>(global3.a.a, true, false), !var_0, !(!global3.a.b.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-483f * global3.a.b.b.x) + _wgslsmith_f_op_f32(f32(-1f) * -496f)), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-global3.a.b.b.ywz), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global4.x, -190f, -657f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.a.b.b.x, 910f, 216f)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(global4.x, 1722f, global3.a.d.x), vec3<f32>(var_1.b.x, -673f, var_1.b.x), var_0))))))), var_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let var_1 = u_input.c.x;
    var var_2 = global1[_wgslsmith_index_u32(42589u, 10u)];
    let var_3 = vec2<i32>(-2147483647i, 55265i);
    var var_4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global3.a.b.b.x))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1030f + global4.x))), _wgslsmith_f_op_f32(ceil(-215f)), _wgslsmith_f_op_f32(global3.a.d.x + -1000f)) * var_0.a.b.b));
    let var_5 = func_1().a.b.b;
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(-u_input.b), _wgslsmith_clamp_vec4_i32(u_input.b, vec4<i32>(-1i) * -vec4<i32>(var_3.x, var_2.c, var_3.x, 0i), vec4<i32>(_wgslsmith_div_i32(var_3.x, 1i), var_2.c, select(u_input.a, global3.a.c.x, var_0.b.x), -var_0.a.c.x)) << (u_input.c % vec4<u32>(32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.b.x)), _wgslsmith_mod_vec2_u32(~(countOneBits(u_input.c.yy) ^ firstTrailingBit(vec2<u32>(4294967295u, 17648u))), firstTrailingBit(_wgslsmith_mult_vec2_u32(vec2<u32>(var_2.a, 57187u), u_input.c.zy))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_4.x - var_2.b.x), var_4.x, !(!global3.a.b.a.x)))));
}


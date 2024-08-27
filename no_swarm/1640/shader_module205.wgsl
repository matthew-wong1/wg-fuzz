struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec3<u32>,
    c: bool,
    d: Struct_1,
    e: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec2<i32>,
    d: vec2<i32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: array<vec4<f32>, 14> = array<vec4<f32>, 14>(vec4<f32>(-243f, 215f, 2308f, 119f), vec4<f32>(-1468f, -102f, 256f, 261f), vec4<f32>(1000f, -1771f, -1038f, -133f), vec4<f32>(-286f, 406f, 1447f, -1186f), vec4<f32>(542f, -2169f, 624f, -2972f), vec4<f32>(-217f, -450f, 435f, 1373f), vec4<f32>(-1050f, 387f, -1561f, -959f), vec4<f32>(-333f, 1000f, -521f, 938f), vec4<f32>(1063f, -304f, -215f, 2229f), vec4<f32>(112f, 1588f, -173f, -1555f), vec4<f32>(731f, 1000f, -337f, 276f), vec4<f32>(465f, 202f, 892f, -232f), vec4<f32>(3318f, 540f, 1038f, 909f), vec4<f32>(763f, -1066f, -231f, -1181f));

var<private> global2: Struct_3;

var<private> global3: f32;

var<private> global4: vec2<i32>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: i32) -> f32 {
    var var_0 = _wgslsmith_sub_i32(abs(global4.x), -(u_input.e.x ^ u_input.c.x));
    var var_1 = Struct_3(Struct_1(u_input.a), vec2<i32>(global2.b.x >> (u_input.b.x % 32u), _wgslsmith_mult_i32(global4.x, abs(global4.x & -2147483647i))));
    var_1 = Struct_3(Struct_1(((u_input.a ^ global2.a.a) >> (~1u % 32u)) ^ ~(21282u ^ global2.a.a)), _wgslsmith_mult_vec2_i32(vec2<i32>(_wgslsmith_add_i32(var_1.b.x, 0i) << (~u_input.b.x % 32u), u_input.c.x), ~_wgslsmith_mult_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(1i, 0i), var_1.b), ~u_input.e.zx)));
    var var_2 = u_input.d.x;
    global0 = vec3<bool>(false, global0.x, true);
    return _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(334f, 195f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1000f, 2694f, true))) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(-1055f)), _wgslsmith_div_f32(785f, -570f)))))));
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_3(Struct_1(~(~global2.a.a)), u_input.c);
    var var_1 = false;
    var_1 = global0.x;
    var var_2 = Struct_2(vec2<u32>(1u, global2.a.a), u_input.b.wxw, false, Struct_1(~var_0.a.a), 4294967295u);
    let var_3 = _wgslsmith_f_op_f32(794f - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(1i)) - _wgslsmith_f_op_f32(sign(-1728f))))));
    return Struct_1(_wgslsmith_dot_vec4_u32(select(~u_input.b ^ vec4<u32>(var_0.a.a, global2.a.a, 1u, u_input.a), abs(vec4<u32>(0u, 0u, 1u, var_2.d.a)), true), firstTrailingBit(u_input.b | u_input.b)));
}

fn func_1(arg_0: i32, arg_1: vec2<i32>, arg_2: f32, arg_3: vec2<f32>) -> Struct_1 {
    global3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(521f)));
    var var_0 = Struct_3(func_2(), ~(~global2.b) ^ ~(~firstTrailingBit(u_input.e.yw)));
    var var_1 = 1u;
    global2 = Struct_3(global2.a, vec2<i32>(0i, ~global4.x));
    let var_2 = abs(var_0.a.a);
    return var_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = Struct_3(func_1(-_wgslsmith_sub_i32(firstLeadingBit(0i), -24589i), vec2<i32>(-74117i, 1i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1578f * -365f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(505f, 180f))))), _wgslsmith_div_vec2_i32(select(~global2.b, min(vec2<i32>(-7407i, global2.b.x), vec2<i32>(1i, u_input.c.x)), select(global0.yz, vec2<bool>(global0.x, global0.x), global0.x)) & ((global2.b & u_input.e.yy) & global2.b), vec2<i32>(i32(-1i) * -2147483647i, -19352i >> (~4294967295u % 32u))));
    let var_0 = false;
    let var_1 = 34689u << (~_wgslsmith_add_u32(func_1(global4.x, vec2<i32>(u_input.e.x, global4.x), -831f, _wgslsmith_f_op_vec2_f32(vec2<f32>(1050f, 1587f) + vec2<f32>(265f, 168f))).a, ~69401u) % 32u);
    global3 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-2809f - 342f))), _wgslsmith_f_op_f32(func_3(u_input.e.x)), true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -246f) - _wgslsmith_f_op_f32(-108f - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(-1129f, -1325f)), 1430f))))));
    var var_2 = u_input.e.yww;
    global0 = vec3<bool>(select(!(_wgslsmith_dot_vec3_i32(u_input.e.xxz, u_input.e.xzz) != abs(-21551i)), false, false), all(global0.xz), ~(_wgslsmith_sub_u32(47984u, 1u) | (var_1 | 0u)) == max(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, 1u) << (u_input.b.xx % vec2<u32>(32u)), u_input.b.zy), func_2().a));
    let x = u_input.a;
    s_output = StorageBuffer(~abs(_wgslsmith_add_u32(select(global2.a.a, 1u, global0.x), ~1u)), select(_wgslsmith_mult_vec2_u32(firstTrailingBit(u_input.b.yw), u_input.b.yy), _wgslsmith_mult_vec2_u32(vec2<u32>(var_1, 37959u), ~u_input.b.zz) ^ _wgslsmith_sub_vec2_u32(vec2<u32>(75798u, global2.a.a), vec2<u32>(41701u, 0u)), _wgslsmith_f_op_f32(select(-288f, 1305f, true)) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(270f - 1790f) * -363f)));
}


struct Struct_1 {
    a: vec2<i32>,
    b: bool,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: f32,
    d: Struct_1,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: vec2<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 16>;

var<private> global1: array<Struct_3, 22>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec4<u32>, arg_1: bool, arg_2: i32) -> bool {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1243f)));
    var var_1 = Struct_1(-vec2<i32>(_wgslsmith_clamp_i32(1i, _wgslsmith_dot_vec2_i32(u_input.b.xx, vec2<i32>(u_input.b.x, u_input.b.x)), -u_input.b.x), u_input.b.x), arg_1);
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -647f)) * 1404f);
    let var_3 = max(u_input.a.x, 1u);
    global1 = array<Struct_3, 22>();
    return false;
}

fn func_2(arg_0: vec3<i32>, arg_1: vec4<u32>) -> Struct_2 {
    global0 = array<vec3<bool>, 16>();
    var var_0 = Struct_1(vec2<i32>(_wgslsmith_mult_i32(-2147483647i, u_input.b.x), _wgslsmith_clamp_i32(arg_0.x, -(arg_0.x | 26208i), -u_input.b.x)), true);
    let var_1 = var_0.b;
    var var_2 = false;
    var_2 = func_3(~(_wgslsmith_div_vec4_u32(arg_1, vec4<u32>(arg_1.x, 9591u, arg_1.x, 30567u)) << (vec4<u32>(arg_1.x, 0u, u_input.a.x, u_input.a.x) % vec4<u32>(32u))), all(!vec4<bool>(var_0.b, false, var_0.b, false)), _wgslsmith_sub_i32(~(-arg_0.x), _wgslsmith_mult_i32(~948i, -6130i << (u_input.a.x % 32u)))) | var_0.b;
    return Struct_2(_wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(~vec2<i32>(-1i, -2338i), vec2<i32>(2147483647i, firstTrailingBit(arg_0.x))), var_0.a.x), Struct_1(_wgslsmith_add_vec2_i32(min(vec2<i32>(1i, -15650i), vec2<i32>(1i, var_0.a.x)), vec2<i32>(11490i, 28630i)) & vec2<i32>(1i, ~var_0.a.x), true), Struct_1(_wgslsmith_mod_vec2_i32(arg_0.xz, arg_0.zy), select(all(vec3<bool>(true, var_0.b, var_0.b)), select(var_0.b != false, true, true), true)), Struct_1(arg_0.zx, var_0.b));
}

fn func_4(arg_0: Struct_2) -> bool {
    global0 = array<vec3<bool>, 16>();
    global0 = array<vec3<bool>, 16>();
    global1 = array<Struct_3, 22>();
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-1979f)), _wgslsmith_f_op_f32(select(-1060f, 1893f, arg_0.c.b)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1000f - -242f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-994f, 1850f)) - _wgslsmith_f_op_f32(max(-1844f, 912f)))) * _wgslsmith_f_op_f32(-1f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(792f - 2342f) * _wgslsmith_f_op_f32(f32(-1f) * -552f)) + 143f)));
    let var_1 = global0[_wgslsmith_index_u32(~(~abs(_wgslsmith_dot_vec3_u32(u_input.a.wyz, u_input.a.xzz)) << (_wgslsmith_mult_u32(u_input.a.x, firstLeadingBit(4294967295u)) % 32u)), 16u)];
    return ~(~u_input.a.x) <= 1u;
}

fn func_1() -> Struct_1 {
    let var_0 = !(false != func_4(func_2(vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x), ~vec4<u32>(63923u, 20007u, 1u, u_input.a.x))));
    let var_1 = global1[_wgslsmith_index_u32(~_wgslsmith_sub_u32(~firstLeadingBit(u_input.a.x), _wgslsmith_mod_u32(u_input.a.x, 0u)), 22u)];
    global1 = array<Struct_3, 22>();
    let var_2 = var_1.b;
    let var_3 = var_1.d.a ^ var_2.a;
    return var_1.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(-_wgslsmith_add_i32(~countOneBits(u_input.b.x), 0i), func_1(), func_1(), func_2(u_input.b ^ firstTrailingBit(u_input.b), ~u_input.a).b);
    let var_1 = vec4<bool>(func_4(var_0), select(false, true, func_4(Struct_2(-82753i, Struct_1(vec2<i32>(-2147483647i, -2147483647i), false), func_1(), func_2(u_input.b, vec4<u32>(u_input.a.x, 0u, 0u, u_input.a.x)).b))), false, true | (func_3(u_input.a, u_input.b.x < -33291i, _wgslsmith_div_i32(u_input.b.x, u_input.b.x)) || func_1().b));
    let var_2 = _wgslsmith_mult_vec3_u32(u_input.a.wzx, max(vec3<u32>(u_input.a.x | ~u_input.a.x, u_input.a.x, 18927u), u_input.a.wzx));
    global1 = array<Struct_3, 22>();
    let var_3 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(425f, -549f, -1296f))), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(240f, -885f, 777f))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-529f, 1692f, 238f), vec3<f32>(1019f, -981f, -1343f), false))))))));
    var var_4 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_3.yy + var_3.yz)), _wgslsmith_f_op_vec2_f32(trunc(var_3.yy))));
    let x = u_input.a;
    s_output = StorageBuffer(max(~(~vec4<u32>(41599u, 15546u, 31191u, 35612u)), ~u_input.a), _wgslsmith_div_f32(2517f, -103f), var_3.zx, -1044f);
}


struct Struct_1 {
    a: vec2<i32>,
    b: vec3<i32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: i32,
    b: i32,
    c: Struct_3,
    d: i32,
    e: bool,
}

struct Struct_5 {
    a: Struct_4,
    b: i32,
    c: Struct_4,
    d: f32,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: u32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec2<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 17>;

var<private> global1: bool = true;

var<private> global2: bool;

var<private> global3: vec3<i32>;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
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

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: Struct_3) -> bool {
    global2 = _wgslsmith_mult_i32(global3.x, 1i) < -_wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(-u_input.d, vec4<i32>(0i, u_input.d.x, -16498i, global3.x) >> (vec4<u32>(u_input.c, u_input.c, 61647u, u_input.c) % vec4<u32>(32u)), select(vec4<i32>(1i, u_input.d.x, -2147483647i, 1i), vec4<i32>(32566i, u_input.a, global3.x, 0i), arg_0.a)), -_wgslsmith_sub_vec4_i32(vec4<i32>(3327i, 2319i, -2147483647i, -35665i), u_input.d));
    var var_0 = _wgslsmith_clamp_vec2_u32(_wgslsmith_mod_vec2_u32(~max(vec2<u32>(u_input.c, u_input.c), vec2<u32>(1u, 21816u)), ~vec2<u32>(33187u, u_input.c)), ~(vec2<u32>(u_input.c, min(15613u, u_input.c)) << (~(~vec2<u32>(u_input.c, u_input.c)) % vec2<u32>(32u))), ~vec2<u32>(u_input.c, _wgslsmith_add_u32(u_input.c, 1u)));
    let var_1 = Struct_4(-_wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(u_input.b, u_input.b), countOneBits(vec4<i32>(-1i, 9049i, global3.x, 26330i))) ^ ~(i32(-1i) * -2147483647i), u_input.d.x, arg_0, min(-u_input.a, global3.x), true);
    var var_2 = select(select(!select(vec2<bool>(var_1.c.a, arg_0.a), select(vec2<bool>(var_1.e, arg_0.a), vec2<bool>(arg_0.a, true), true), all(vec3<bool>(true, arg_0.a, true))), select(select(select(vec2<bool>(true, false), vec2<bool>(false, var_1.c.a), arg_0.a), select(vec2<bool>(false, arg_0.a), vec2<bool>(arg_0.a, arg_0.a), vec2<bool>(false, arg_0.a)), vec2<bool>(false, arg_0.a)), select(!vec2<bool>(arg_0.a, true), !vec2<bool>(false, var_1.e), select(vec2<bool>(true, true), vec2<bool>(false, true), arg_0.a)), _wgslsmith_f_op_f32(ceil(1617f)) != _wgslsmith_f_op_f32(-326f + -141f)), vec2<bool>(!(!arg_0.a), !var_1.e)), vec2<bool>(true, false), !(_wgslsmith_sub_i32(2147483647i, -u_input.d.x) < global3.x));
    var var_3 = firstLeadingBit(var_0.x);
    return false;
}

fn func_2(arg_0: bool, arg_1: Struct_4) -> vec4<bool> {
    let var_0 = vec2<bool>(-10966i > arg_1.a, !(!(!arg_0) & false));
    var var_1 = u_input.c;
    global0 = array<Struct_5, 17>();
    global2 = true;
    let var_2 = _wgslsmith_mod_vec2_i32(vec2<i32>(-65764i, ~firstLeadingBit(-u_input.b.x)), ~vec2<i32>(-31296i, -26534i) << (_wgslsmith_clamp_vec2_u32(vec2<u32>(27217u, ~u_input.c), _wgslsmith_div_vec2_u32(vec2<u32>(u_input.c, 4294967295u), firstTrailingBit(vec2<u32>(0u, 0u))), vec2<u32>(abs(u_input.c), _wgslsmith_dot_vec3_u32(vec3<u32>(55341u, u_input.c, 12398u), vec3<u32>(u_input.c, u_input.c, 6800u)))) % vec2<u32>(32u)));
    return vec4<bool>(arg_0, arg_1.c.a, !all(vec4<bool>(arg_1.c.a, u_input.c > u_input.c, select(arg_0, var_0.x, arg_1.e), func_3(arg_1.c))), any(!vec2<bool>(true, var_0.x)));
}

fn func_4(arg_0: Struct_5, arg_1: vec2<i32>, arg_2: vec3<bool>) -> Struct_4 {
    global1 = 4294967295u > u_input.c;
    global2 = arg_2.x;
    let var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-276f, arg_0.d))), vec2<f32>(522f, arg_0.d)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-759f, 1285f))))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.d)), 2397f), any(vec3<bool>(true, arg_2.x, true)))), vec2<f32>(_wgslsmith_f_op_f32(-arg_0.d), _wgslsmith_f_op_f32(arg_0.d * _wgslsmith_f_op_f32(f32(-1f) * -500f))));
    var var_1 = Struct_2(arg_2, Struct_1(~arg_1, -abs(vec3<i32>(2147483647i, -2147483647i, -1i))));
    return Struct_4(_wgslsmith_div_i32(global3.x, _wgslsmith_add_i32(arg_1.x, 0i)), min(_wgslsmith_add_i32(1i, arg_0.c.a), 1i), Struct_3(all(vec4<bool>(arg_0.d != -607f, true, arg_0.c.c.a || true, all(arg_2.yz)))), _wgslsmith_dot_vec2_i32(abs(reverseBits(vec2<i32>(-18248i, 1i) | vec2<i32>(20498i, global3.x))), u_input.d.zx), !(!(!(-1093f >= var_0.x))));
}

fn func_1(arg_0: vec4<u32>) -> f32 {
    let var_0 = func_4(global0[_wgslsmith_index_u32(arg_0.x, 17u)], -(~vec2<i32>(~u_input.b.x, _wgslsmith_clamp_i32(-11390i, -2147483647i, u_input.d.x))), vec3<bool>(any(!func_2(false, Struct_4(2147483647i, global3.x, Struct_3(false), 2147483647i, false))), false, all(vec4<bool>(true, true, true, any(vec3<bool>(false, true, false))))));
    let var_1 = arg_0.wy;
    let var_2 = 1f;
    var var_3 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1369f, var_2))))))))));
    global0 = array<Struct_5, 17>();
    return var_3.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_5, 17>();
    global0 = array<Struct_5, 17>();
    global3 = u_input.b.xwy;
    var var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(func_1(vec4<u32>(u_input.c, u_input.c, u_input.c, u_input.c))), _wgslsmith_div_f32(1123f, 1347f), _wgslsmith_f_op_f32(290f + -1099f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1461f, 2305f, 2535f))))), vec3<f32>(-391f, 754f, _wgslsmith_f_op_f32(sign(-1620f))));
    var var_1 = vec4<bool>(false, any(!vec2<bool>(false, any(vec3<bool>(false, false, true)))), false, true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 12290u, 39187u), ~_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.c, 613u, u_input.c), vec3<u32>(u_input.c, 165675u, 44185u)) >> ((~vec3<u32>(u_input.c, 36118u, u_input.c) ^ reverseBits(vec3<u32>(u_input.c, u_input.c, u_input.c))) % vec3<u32>(32u))), _wgslsmith_dot_vec3_i32(u_input.d.wxy, -vec3<i32>(-2147483647i, -1i, firstTrailingBit(global3.x))), _wgslsmith_f_op_vec2_f32(var_0.yz * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(var_0.yy, vec2<f32>(var_0.x, -313f))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, var_0.x))))), u_input.d.x);
}


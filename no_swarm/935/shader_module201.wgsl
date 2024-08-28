struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: Struct_2,
    c: vec3<bool>,
    d: f32,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
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

var<private> global0: vec4<bool>;

var<private> global1: array<Struct_1, 2> = array<Struct_1, 2>(Struct_1(false), Struct_1(false));

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3(arg_0: bool, arg_1: Struct_2, arg_2: f32, arg_3: i32) -> bool {
    var var_0 = _wgslsmith_f_op_f32(-arg_2);
    var var_1 = Struct_1(global0.x);
    var var_2 = Struct_4(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2 * arg_2) * arg_2) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_2)))))), Struct_2(_wgslsmith_clamp_vec3_i32(vec3<i32>(-1i, u_input.b.x, u_input.a.x), vec3<i32>(arg_3, -1987i, -55019i), _wgslsmith_mod_vec3_i32(arg_1.a, arg_1.a)) & firstLeadingBit(~arg_1.a)), select(vec3<bool>(any(vec3<bool>(true, global0.x, global0.x)) | global0.x, any(!global0.xwx), any(vec4<bool>(false, var_1.a, arg_0, arg_0))), vec3<bool>(any(select(global0.wyy, vec3<bool>(false, arg_0, global0.x), global0.x)), true, true), select(!select(global0.xxz, vec3<bool>(var_1.a, arg_0, arg_0), arg_0), !vec3<bool>(arg_0, arg_0, var_1.a), 4294967295u <= _wgslsmith_dot_vec3_u32(vec3<u32>(2804u, 4294967295u, 29958u), vec3<u32>(4294967295u, 60697u, 4294967295u)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1090f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2 + arg_2))) - -857f), global0.zzy);
    var var_3 = Struct_2(_wgslsmith_mod_vec3_i32(~(-vec3<i32>(6411i, 0i, 40446i)), vec3<i32>(-12464i, var_2.b.a.x, 2147483647i)));
    var var_4 = _wgslsmith_add_u32(~(~0u), _wgslsmith_mult_u32(1u >> (firstTrailingBit(0u) % 32u), _wgslsmith_div_u32(~4294967295u, abs(4294967295u))) ^ 35037u);
    return var_1.a;
}

fn func_2() -> Struct_2 {
    global1 = array<Struct_1, 2>();
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1074f), 182f, func_3(global0.x, Struct_2(vec3<i32>(u_input.a.x, -2119i, u_input.b.x)), -468f, u_input.b.x))))), _wgslsmith_f_op_f32(f32(-1f) * -691f))));
    let var_1 = Struct_1(global0.x);
    var var_2 = abs(_wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(select(~vec3<i32>(u_input.b.x, 35866i, -1i), ~vec3<i32>(5709i, 27185i, 2147483647i), global0.xwz), min(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.a.x, -1i, u_input.a.x), vec3<i32>(-6423i, -4947i, u_input.a.x)), _wgslsmith_add_vec3_i32(vec3<i32>(u_input.a.x, u_input.b.x, u_input.a.x), vec3<i32>(u_input.b.x, 1i, u_input.b.x)))), vec3<i32>(firstLeadingBit(u_input.a.x), u_input.b.x, _wgslsmith_mod_i32(u_input.a.x, 1i))));
    var var_3 = _wgslsmith_mult_vec4_i32(firstLeadingBit(select(vec4<i32>(-2147483647i, ~2147483647i, _wgslsmith_sub_i32(u_input.b.x, 0i), _wgslsmith_sub_i32(-22349i, u_input.b.x)), -_wgslsmith_sub_vec4_i32(vec4<i32>(-2147483647i, 31660i, 15586i, u_input.b.x), vec4<i32>(-4717i, 53683i, u_input.b.x, u_input.b.x)), !(!vec4<bool>(global0.x, false, global0.x, false)))), -(~firstLeadingBit(vec4<i32>(u_input.a.x, 0i, -1i, 35895i))));
    return Struct_2(vec3<i32>(u_input.a.x, var_3.x, 0i));
}

fn func_1() -> Struct_2 {
    var var_0 = func_2();
    var_0 = func_2();
    global0 = select(!(!vec4<bool>(2147483647i >= var_0.a.x, true, true, true)), vec4<bool>(global0.x, select(true, global0.x, -1158f <= _wgslsmith_f_op_f32(floor(-775f))), global0.x, any(global0.yxw)), !(!select(vec4<bool>(global0.x, true, global0.x, global0.x), select(vec4<bool>(true, global0.x, true, global0.x), vec4<bool>(global0.x, true, false, true), true), vec4<bool>(false, true, global0.x, global0.x))));
    let var_1 = global1[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_mult_u32(1u, firstTrailingBit(4294967295u))), 2u)];
    global1 = array<Struct_1, 2>();
    return Struct_2(~vec3<i32>(-1i, _wgslsmith_mult_i32(var_0.a.x, i32(-1i) * -1i), -1i));
}

fn func_4(arg_0: Struct_2, arg_1: vec2<u32>, arg_2: vec2<i32>) -> Struct_1 {
    let var_0 = arg_0;
    let var_1 = Struct_3(global1[_wgslsmith_index_u32(arg_1.x, 2u)], Struct_1(global0.x), func_1());
    let var_2 = min(reverseBits((vec4<i32>(0i, var_1.c.a.x, var_1.c.a.x, 2147483647i) & vec4<i32>(var_1.c.a.x, -2147483647i, var_0.a.x, arg_2.x)) ^ (vec4<i32>(-4840i, 9579i, 2147483647i, -1i) | vec4<i32>(u_input.a.x, u_input.a.x, var_0.a.x, u_input.b.x))), firstLeadingBit(max(abs(vec4<i32>(var_0.a.x, 8870i, 0i, var_0.a.x)), ~vec4<i32>(var_1.c.a.x, 2147483647i, arg_2.x, var_1.c.a.x)))) ^ vec4<i32>(var_0.a.x, -2147483647i, ~reverseBits(var_0.a.x) ^ arg_2.x, arg_2.x);
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(-1611f)))));
    var var_4 = var_3;
    return Struct_1(true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(func_1(), vec2<u32>(~16632u, reverseBits(_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(6406u, 0u, 45314u), vec3<u32>(0u, 4294967295u, 55224u)), _wgslsmith_add_vec3_u32(vec3<u32>(0u, 1u, 34553u), vec3<u32>(4294967295u, 76523u, 11360u))))), max(u_input.b, u_input.b));
    let var_1 = _wgslsmith_div_i32(1i, u_input.a.x) ^ 34900i;
    global1 = array<Struct_1, 2>();
    let x = u_input.a;
    s_output = StorageBuffer(338f);
}


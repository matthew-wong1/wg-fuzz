struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: vec3<bool>,
}

struct Struct_3 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(751f, -1172f, 983f, 363f);

var<private> global1: vec3<f32> = vec3<f32>(879f, -760f, -489f);

var<private> global2: bool = true;

var<private> global3: array<Struct_1, 13>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec2<i32>, arg_1: vec2<f32>, arg_2: f32) -> u32 {
    let var_0 = _wgslsmith_clamp_vec2_i32(arg_0, firstTrailingBit(vec2<i32>(min(u_input.b, -70876i), abs(-32329i))), arg_0);
    return ~u_input.a.x;
}

fn func_2(arg_0: vec3<f32>, arg_1: vec4<f32>) -> Struct_1 {
    let var_0 = Struct_1(vec3<i32>(_wgslsmith_mult_i32(~(i32(-1i) * -4976i), 0i << (~u_input.a.x % 32u)), _wgslsmith_mult_i32(u_input.b, u_input.b), 0i));
    var var_1 = global3[_wgslsmith_index_u32(28893u << (1u % 32u), 13u)];
    global1 = global0.yxw;
    var_1 = Struct_1(vec3<i32>(-_wgslsmith_div_i32(32412i, -1i), 35060i, var_0.a.x) ^ abs(_wgslsmith_clamp_vec3_i32(var_0.a | vec3<i32>(var_0.a.x, var_1.a.x, -45018i), var_0.a, var_0.a)));
    var var_2 = Struct_3(vec4<bool>(any(vec4<bool>(true, true, true, any(vec4<bool>(false, false, false, false)))), -(~var_0.a.x) > -(i32(-1i) * -2147483647i), true, true));
    return global3[_wgslsmith_index_u32(~_wgslsmith_add_u32(_wgslsmith_mod_u32(firstTrailingBit(~u_input.c), func_3(var_0.a.yx, global1.xz, _wgslsmith_f_op_f32(1247f - global0.x))), ~1u), 13u)];
}

fn func_1() -> Struct_3 {
    var var_0 = func_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, 1291f, global0.x) * global0.wyx), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, global1.x, -1000f, global1.x) * vec4<f32>(global1.x, global1.x, global0.x, global0.x)), vec4<f32>(global1.x, 257f, global0.x, global1.x)) * _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, 1528f, global1.x, global1.x) - vec4<f32>(1638f, 142f, global0.x, -1000f)))))));
    global3 = array<Struct_1, 13>();
    var var_1 = (48104u & _wgslsmith_add_u32(firstLeadingBit(u_input.a.x), 4294967295u)) >> (u_input.a.x % 32u);
    let var_2 = global3[_wgslsmith_index_u32(1u, 13u)];
    global0 = _wgslsmith_div_vec4_f32(vec4<f32>(-679f, 309f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(680f * _wgslsmith_f_op_f32(ceil(global1.x))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(-210f)), _wgslsmith_f_op_f32(abs(global0.x))))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(global1.x))))), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global1.x, _wgslsmith_f_op_f32(global1.x + global1.x), global1.x, -647f))));
    return Struct_3(vec4<bool>(true, ~u_input.c == ~_wgslsmith_sub_u32(u_input.c, u_input.c), true, true));
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_3, arg_2: vec3<i32>, arg_3: Struct_3) -> Struct_1 {
    global1 = global0.zyx;
    let var_0 = select(arg_3.a.xzx, select(!(!arg_1.a.zxz), vec3<bool>(all(func_1().a.yyw), arg_1.a.x | false, -439f > _wgslsmith_f_op_f32(global1.x + global1.x)), true), func_1().a.xzx);
    var var_1 = 0u;
    global3 = array<Struct_1, 13>();
    var_1 = arg_0.x;
    return Struct_1(vec3<i32>(_wgslsmith_clamp_i32(~_wgslsmith_sub_i32(u_input.b, u_input.b), arg_2.x, -arg_2.x), arg_2.x, -1199i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(_wgslsmith_add_vec4_u32(vec4<u32>(~_wgslsmith_add_u32(u_input.c, u_input.c), firstTrailingBit(u_input.a.x), u_input.a.x, u_input.a.x), vec4<u32>(16601u, ~u_input.a.x, 11639u, _wgslsmith_dot_vec3_u32(~vec3<u32>(4294967295u, u_input.a.x, 82382u), firstTrailingBit(vec3<u32>(u_input.a.x, 4294967295u, u_input.a.x))))), Struct_3(vec4<bool>(u_input.b == 4470i, any(select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(false, false, true))), true, !(6314i != u_input.b))), vec3<i32>(u_input.b, -6501i, u_input.b) | ~(-(vec3<i32>(u_input.b, u_input.b, u_input.b) | vec3<i32>(-5702i, 26039i, -2147483647i))), func_1());
    let var_1 = func_1();
    let var_2 = Struct_2(global3[_wgslsmith_index_u32(firstLeadingBit(abs(u_input.a.x)), 13u)], select(func_4(~(vec4<u32>(0u, 11900u, 7369u, 15589u) ^ vec4<u32>(4294967295u, 7626u, u_input.a.x, 53249u)), func_1(), -_wgslsmith_mult_vec3_i32(var_0.a, vec3<i32>(u_input.b, u_input.b, 2853i)), Struct_3(vec4<bool>(false, var_1.a.x, false, true))).a.zx, -(~(~var_0.a.xx)), !(!func_1().a.xy)), func_1().a.wzz);
    var var_3 = var_2;
    let var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-461f)) + -1406f) - -479f)) + 1141f);
    let var_5 = var_4;
    var var_6 = !(!(!(!var_2.c)));
    let x = u_input.a;
    s_output = StorageBuffer(max(firstLeadingBit(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a.x, 0u, u_input.c, u_input.a.x), vec4<u32>(19251u, 44838u, u_input.a.x, u_input.c))), vec4<u32>(4294967295u, 4294967295u & u_input.a.x, ~4294967295u, 1u)) | vec4<u32>(1u, 18679u >> ((u_input.a.x << (4294967295u % 32u)) % 32u), 24321u, ~(~u_input.c)));
}


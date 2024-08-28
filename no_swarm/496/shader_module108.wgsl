struct Struct_1 {
    a: u32,
    b: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec2<i32>,
    d: vec4<i32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: i32, arg_1: i32, arg_2: f32, arg_3: Struct_1) -> vec2<i32> {
    let var_0 = Struct_1(21511u, abs(arg_1));
    let var_1 = firstLeadingBit(arg_3.b) == -1i;
    let var_2 = abs(arg_0);
    let var_3 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-659f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-228f * arg_2))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_2))), _wgslsmith_f_op_f32(-488f * _wgslsmith_f_op_f32(f32(-1f) * -244f))), true));
    let var_4 = u_input.e.yy;
    return vec2<i32>(20985i, _wgslsmith_dot_vec3_i32(-u_input.a, max(u_input.d.xyy ^ abs(u_input.a), vec3<i32>(34331i, min(u_input.b, 2147483647i), arg_1))));
}

fn func_2(arg_0: u32, arg_1: vec4<f32>, arg_2: Struct_1, arg_3: vec3<bool>) -> bool {
    let var_0 = _wgslsmith_dot_vec2_i32(firstLeadingBit(func_3(~arg_2.b, 1i, _wgslsmith_f_op_f32(abs(arg_1.x)), arg_2)) & vec2<i32>(~arg_2.b, 2147483647i), reverseBits(vec2<i32>(arg_2.b, -u_input.c.x)));
    var var_1 = Struct_1(0u, -2147483647i);
    let var_2 = ~u_input.e.x;
    var var_3 = Struct_1(~(_wgslsmith_add_u32(~0u, ~u_input.e.x) | ~u_input.e.x), 10788i);
    var_1 = arg_2;
    return true;
}

fn func_4(arg_0: vec4<f32>, arg_1: vec4<i32>) -> Struct_1 {
    var var_0 = u_input.e.x;
    var_0 = 4294967295u;
    return Struct_1(1u, reverseBits(_wgslsmith_dot_vec4_i32(abs(arg_1), ~u_input.d)) | u_input.b);
}

fn func_1(arg_0: Struct_1, arg_1: vec4<i32>) -> vec3<bool> {
    var var_0 = func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, 1007f, -692f, 426f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1149f, -249f, 1909f, -2304f))))), _wgslsmith_sub_vec4_i32(select(arg_1, vec4<i32>(0i, 38257i, 11574i, 0i), vec4<bool>(func_2(u_input.e.x, vec4<f32>(1338f, 1546f, 111f, -435f), Struct_1(u_input.e.x, 2204i), vec3<bool>(true, true, false)), false, true, true)), -select(vec4<i32>(25756i, u_input.c.x, 26049i, -2147483647i), vec4<i32>(arg_0.b, u_input.c.x, u_input.a.x, arg_0.b) << (vec4<u32>(u_input.e.x, u_input.e.x, 65038u, 0u) % vec4<u32>(32u)), vec4<bool>(true, true, false, false))));
    let var_1 = arg_0;
    var var_2 = Struct_1(~(~61779u), abs(_wgslsmith_sub_i32(~_wgslsmith_mod_i32(u_input.b, 2147483647i), arg_1.x)));
    var var_3 = var_2.a;
    var var_4 = Struct_1(~var_2.a, 31571i);
    return select(!select(vec3<bool>(true, true, true), select(select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, false)), vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(true, true, false))), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), true), vec3<bool>(true, true, true))), vec3<bool>(any(select(select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, false)), vec4<bool>(true, true, true, false), true)), all(vec3<bool>(true, true, true)), any(select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true)))), true);
}

fn func_5(arg_0: u32, arg_1: u32, arg_2: vec3<bool>) -> bool {
    let var_0 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(vec4<f32>(1453f, -1134f, -1000f, 460f), vec4<f32>(1000f, 1637f, 694f, 362f))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(276f, 1000f, -1259f, 602f), vec4<f32>(-2281f, -1240f, 392f, 861f), arg_2.x)))))));
    var var_1 = u_input.d;
    var_1 = vec4<i32>(-_wgslsmith_clamp_i32(~(~u_input.a.x), _wgslsmith_mod_i32(~var_1.x, var_1.x), ~2147483647i), 17388i >> (arg_0 % 32u), _wgslsmith_sub_i32(_wgslsmith_add_i32(-5519i, abs(31077i)), var_1.x), firstLeadingBit(_wgslsmith_sub_i32(firstLeadingBit(~(-1i)), func_3(var_1.x, -42042i, -742f, Struct_1(u_input.e.x, 81206i)).x | 1i)));
    var_1 = countOneBits(u_input.d) ^ (vec4<i32>(24463i & var_1.x, 12688i, u_input.d.x, abs(-1i)) >> (u_input.e % vec4<u32>(32u)));
    var var_2 = ~_wgslsmith_clamp_u32(arg_0, firstTrailingBit(func_4(_wgslsmith_f_op_vec4_f32(-var_0), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.d.x, var_1.x, u_input.d.x, u_input.c.x), vec4<i32>(u_input.d.x, -71618i, 1i, 5600i))).a), 0u);
    return !(!arg_2.x) | arg_2.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    var_0 = (abs(u_input.e.x) << (~u_input.e.x % 32u)) >= 11226u;
    let var_1 = ~(~u_input.e);
    var var_2 = _wgslsmith_f_op_f32(select(1000f, _wgslsmith_f_op_f32(floor(-2273f)), func_5(4294967295u, 34545u, select(vec3<bool>(true, true, true), func_1(Struct_1(var_1.x, u_input.b), select(vec4<i32>(u_input.a.x, 34448i, -7832i, 0i), vec4<i32>(38820i, u_input.c.x, -39031i, u_input.b), vec4<bool>(false, false, false, true))), vec3<bool>(true, true, var_1.x == 23280u)))));
    var var_3 = func_4(vec4<f32>(-1595f, _wgslsmith_f_op_f32(round(-596f)), -750f, 1030f), abs(_wgslsmith_clamp_vec4_i32(~vec4<i32>(u_input.a.x, u_input.a.x, 55704i, u_input.d.x) << (~var_1 % vec4<u32>(32u)), u_input.d, vec4<i32>(1i, ~u_input.a.x, u_input.d.x, u_input.c.x))));
    let x = u_input.a;
    s_output = StorageBuffer(-259f, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-395f))), -1422f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1672f - -1159f) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(208f, 677f)))), -1079f);
}


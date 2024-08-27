struct Struct_1 {
    a: vec4<i32>,
    b: vec4<bool>,
}

struct Struct_2 {
    a: f32,
    b: vec4<f32>,
}

struct Struct_3 {
    a: vec2<u32>,
    b: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: u32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: vec2<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3() -> vec4<f32> {
    var var_0 = Struct_3(vec2<u32>(~(~u_input.c), 1u), _wgslsmith_mod_u32(~(~4294967295u) ^ u_input.c, _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_sub_u32(u_input.c, 1u), ~3269u, 0u, 4294967295u), select(vec4<u32>(0u, 30266u, u_input.d, u_input.a), vec4<u32>(u_input.a, u_input.c, u_input.a, u_input.d) ^ vec4<u32>(u_input.a, u_input.c, u_input.d, 4294967295u), false))));
    let var_1 = false;
    let var_2 = Struct_3(firstTrailingBit(countOneBits(_wgslsmith_clamp_vec2_u32(vec2<u32>(78883u, u_input.c), _wgslsmith_clamp_vec2_u32(vec2<u32>(99119u, 31095u), var_0.a, vec2<u32>(var_0.a.x, 1751u)), ~var_0.a))), u_input.e.x);
    var_0 = Struct_3(_wgslsmith_mod_vec2_u32(_wgslsmith_sub_vec2_u32(firstTrailingBit(_wgslsmith_clamp_vec2_u32(u_input.e.zz, vec2<u32>(77629u, 0u), vec2<u32>(4294967295u, u_input.d))), _wgslsmith_sub_vec2_u32(var_2.a, _wgslsmith_add_vec2_u32(vec2<u32>(var_0.b, 11349u), vec2<u32>(var_2.a.x, 4294967295u)))), u_input.e.yy), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d, ~var_0.b, var_2.b), abs(~select(vec3<u32>(30306u, var_2.a.x, var_0.a.x), vec3<u32>(var_2.b, u_input.d, 0u), true))));
    var var_3 = var_2;
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-112f, -1000f, -1000f, 434f), vec4<f32>(1167f, 154f, 240f, 1000f))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-863f, 1098f, 799f, 1000f) + vec4<f32>(-162f, -439f, 257f, -1017f))))) * vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -634f), 1f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-401f * -1000f))), -713f)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-1945f, _wgslsmith_f_op_f32(select(-1681f, 132f, false)), _wgslsmith_f_op_f32(647f + -721f), -1382f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1082f, -1483f, -858f, 581f)))));
}

fn func_2(arg_0: f32) -> i32 {
    var var_0 = u_input.b;
    let var_1 = Struct_2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-120f)) - _wgslsmith_div_f32(arg_0, arg_0)), _wgslsmith_f_op_f32(-arg_0), select(true, true, false))), 1044f, select(all(vec4<bool>(false, false, true, true)), (4294967295u > u_input.e.x) & true, all(vec2<bool>(true, true))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3())));
    var_0 = _wgslsmith_sub_i32(-40787i, 0i);
    let var_2 = Struct_1(select(vec4<i32>(select(u_input.b ^ u_input.b, -42561i, true), -2147483647i, -102200i, ~0i), min(vec4<i32>(-1262i, u_input.b, 60903i, u_input.b) << (vec4<u32>(1u, 26226u, 0u, u_input.a) % vec4<u32>(32u)), _wgslsmith_mod_vec4_i32(~vec4<i32>(-39677i, u_input.b, u_input.b, -2147483647i), countOneBits(vec4<i32>(u_input.b, 20624i, -2147483647i, u_input.b)))), vec4<bool>(any(vec3<bool>(true, true, true)), all(select(vec2<bool>(false, false), vec2<bool>(true, true), true)), true, any(select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, false), true)))), select(select(select(select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, false)), select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, false)), select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, true))), vec4<bool>(u_input.b >= -2147483647i, true, true, all(vec4<bool>(false, false, true, true))), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true), select(vec4<bool>(arg_0 == arg_0, true, u_input.d >= 4294967295u, any(vec3<bool>(false, true, false))), vec4<bool>(all(vec3<bool>(true, false, false)), all(vec4<bool>(false, true, false, false)), true, all(vec2<bool>(true, false))), true)));
    let var_3 = _wgslsmith_f_op_vec4_f32(func_3());
    return _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_clamp_i32(-2147483647i, -2147483647i, u_input.b), u_input.b, var_2.a.x), var_2.a.xww);
}

fn func_1() -> f32 {
    let var_0 = Struct_1(firstLeadingBit(vec4<i32>(~u_input.b, -2147483647i, min(30795i, u_input.b), u_input.b)) & vec4<i32>(u_input.b, ~(~u_input.b), func_2(_wgslsmith_div_f32(900f, 732f)), ~(-2147483647i)), !select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true), false));
    var var_1 = _wgslsmith_dot_vec3_i32(~(vec3<i32>(-2147483647i, -2147483647i, u_input.b) ^ -vec3<i32>(-54726i, u_input.b, u_input.b)) | var_0.a.zyy, min(var_0.a.yyz, _wgslsmith_add_vec3_i32(_wgslsmith_mult_vec3_i32(var_0.a.wwy, vec3<i32>(30653i, var_0.a.x, u_input.b)) | (var_0.a.zzz | var_0.a.zyz), vec3<i32>(-2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(23539i, u_input.b, -2147483647i, var_0.a.x), var_0.a), -1i))));
    var_1 = u_input.b;
    var_1 = ~(~_wgslsmith_dot_vec4_i32(vec4<i32>(max(var_0.a.x, 2147483647i), u_input.b, func_2(134f), var_0.a.x ^ -23436i), abs(var_0.a) ^ -var_0.a));
    var var_2 = Struct_3(~vec2<u32>(u_input.d, ~4294967295u), ~u_input.d);
    return _wgslsmith_f_op_f32(floor(-420f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_add_u32(u_input.c, u_input.a);
    let var_1 = ~(~firstTrailingBit(51488i));
    var var_2 = Struct_2(_wgslsmith_f_op_f32(-1452f + _wgslsmith_f_op_f32(974f * _wgslsmith_f_op_f32(f32(-1f) * -689f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1001f, 1036f, 989f, 434f)))))) + vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1()) + _wgslsmith_div_f32(-129f, -401f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -422f), -787f), 581f, -289f)));
    let var_3 = Struct_3(_wgslsmith_clamp_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.e.x, u_input.e.x), u_input.e.yx), u_input.e.zy, vec2<u32>(firstTrailingBit(abs(4294967295u)), _wgslsmith_div_u32(abs(var_0), var_0))), u_input.a);
    var_2 = Struct_2(_wgslsmith_f_op_f32(708f + _wgslsmith_f_op_vec4_f32(func_3()).x), vec4<f32>(_wgslsmith_f_op_f32(var_2.a * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1197f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_vec4_f32(func_3()).x - 608f), 1267f, var_2.a));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(var_1, var_1, -27493i), vec3<i32>(2147483647i, -2147483647i, var_1) >> (vec3<u32>(var_0, 1u, var_3.b) % vec3<u32>(32u))) << (countOneBits(abs(u_input.e)) % vec3<u32>(32u)), -abs(firstLeadingBit(vec3<i32>(-74681i, 1i, 1727i)))), vec4<u32>(1u, _wgslsmith_dot_vec4_u32((vec4<u32>(var_3.b, 0u, 31732u, var_0) | vec4<u32>(var_0, 4294967295u, 0u, 14607u)) << (vec4<u32>(4294967295u, 41400u, 0u, var_3.a.x) % vec4<u32>(32u)), abs(vec4<u32>(var_3.a.x, 0u, var_0, 0u)) | ~vec4<u32>(var_3.a.x, 40720u, var_3.b, 26809u)), reverseBits(~(~u_input.c)), _wgslsmith_clamp_u32(101280u, ~var_3.a.x, 24160u) ^ abs(u_input.a)), -abs(abs(vec2<i32>(var_1, -2147483647i) >> (vec2<u32>(var_3.a.x, 28703u) % vec2<u32>(32u)))), u_input.d);
}


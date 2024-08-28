struct Struct_1 {
    a: bool,
    b: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec4<bool>,
    c: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: vec2<f32>,
}

struct Struct_5 {
    a: vec3<f32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 21>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_1() -> vec3<i32> {
    var var_0 = u_input.b.x;
    global0 = array<Struct_1, 21>();
    var_0 = -(~(~u_input.b.x) >> (0u % 32u));
    return _wgslsmith_sub_vec3_i32(-(~(~vec3<i32>(1149i, u_input.b.x, u_input.b.x))), ~max(reverseBits(vec3<i32>(-2147483647i, u_input.b.x, u_input.a)), firstTrailingBit(vec3<i32>(-12077i, 1633i, -11160i))));
}

fn func_3() -> vec3<i32> {
    global0 = array<Struct_1, 21>();
    var var_0 = global0[_wgslsmith_index_u32(1u, 21u)];
    var_0 = Struct_1(true, _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b.x, -2424f, _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(var_0.b.x, var_0.b.x))), -243f) + vec4<f32>(_wgslsmith_f_op_f32(-var_0.b.x), _wgslsmith_f_op_f32(-740f - _wgslsmith_div_f32(var_0.b.x, var_0.b.x)), _wgslsmith_f_op_f32(select(var_0.b.x, var_0.b.x, var_0.a)), var_0.b.x)));
    var var_1 = _wgslsmith_add_i32(-abs(u_input.b.x), -(i32(-1i) * -5419i));
    var var_2 = 4379i ^ _wgslsmith_dot_vec4_i32(max(vec4<i32>(u_input.b.x, u_input.a, u_input.b.x, -1i), vec4<i32>(u_input.a, u_input.a, 1i, 9033i)) | -min(vec4<i32>(u_input.a, u_input.b.x, -2147483647i, 0i), vec4<i32>(u_input.a, u_input.a, 16345i, 15563i)), vec4<i32>(u_input.a, firstTrailingBit(abs(u_input.a)), 2147483647i, firstLeadingBit(u_input.a)));
    return vec3<i32>(u_input.a, 0i, _wgslsmith_clamp_i32(1i, -40727i, -79341i));
}

fn func_2(arg_0: Struct_1) -> vec3<i32> {
    global0 = array<Struct_1, 21>();
    var var_0 = u_input.b;
    var var_1 = u_input.b.x;
    let var_2 = _wgslsmith_div_vec2_i32(~_wgslsmith_clamp_vec2_i32(vec2<i32>(_wgslsmith_add_i32(u_input.a, -31076i), _wgslsmith_div_i32(u_input.a, u_input.a)), vec2<i32>(u_input.a, -1i) ^ abs(vec2<i32>(var_0.x, 1i)), select(max(u_input.b, vec2<i32>(var_0.x, 15159i)), vec2<i32>(21670i, u_input.b.x), arg_0.a && arg_0.a)), _wgslsmith_mult_vec2_i32(-u_input.b, _wgslsmith_div_vec2_i32(u_input.b, -_wgslsmith_mod_vec2_i32(u_input.b, u_input.b))));
    return abs(~(-func_3()));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mod_i32(-_wgslsmith_dot_vec3_i32(reverseBits(~vec3<i32>(-8491i, u_input.a, 0i)), _wgslsmith_clamp_vec3_i32(func_1(), func_2(Struct_1(false, vec4<f32>(293f, 459f, 519f, 1419f))), countOneBits(vec3<i32>(2147483647i, -25619i, u_input.a)))), -1i);
    let var_1 = u_input.b.x;
    var_0 = _wgslsmith_sub_i32(max(_wgslsmith_div_i32(~countOneBits(var_1), (var_1 << (3859u % 32u)) >> (firstLeadingBit(39351u) % 32u)), max(~_wgslsmith_mult_i32(u_input.b.x, -42445i), 7091i)), var_1 & u_input.a);
    let var_2 = Struct_2(Struct_1(!any(vec2<bool>(true, true)), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(322f, -1812f, 570f, 1000f) * vec4<f32>(995f, -1894f, -2114f, 176f))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_u32(40392u, _wgslsmith_add_u32(_wgslsmith_sub_u32(max(9498u, 4294967295u), 1u), 1u)), i32(-1i) * -37572i, -_wgslsmith_mult_i32(-62265i, -_wgslsmith_dot_vec4_i32(vec4<i32>(-9075i, -29113i, u_input.a, u_input.a), vec4<i32>(-17496i, -1i, u_input.a, 0i))));
}


struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: u32,
    d: u32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec4<i32>,
    d: i32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 9> = array<vec3<i32>, 9>(vec3<i32>(3957i, -88544i, -1570i), vec3<i32>(1i, 1i, -1i), vec3<i32>(23122i, 5210i, 1i), vec3<i32>(-50710i, 0i, -18248i), vec3<i32>(423i, 2803i, 2147483647i), vec3<i32>(40430i, 25352i, 0i), vec3<i32>(-46213i, 47044i, 1i), vec3<i32>(1i, 8071i, -51792i), vec3<i32>(2147483647i, 20057i, 2147483647i));

var<private> global1: array<vec3<bool>, 32>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: Struct_1) -> u32 {
    global1 = array<vec3<bool>, 32>();
    let var_0 = Struct_1(arg_0.a);
    global0 = array<vec3<i32>, 9>();
    return 82640u;
}

fn func_2() -> i32 {
    let var_0 = _wgslsmith_div_vec2_u32(~vec2<u32>(1u, u_input.c), u_input.a.yx) >> (vec2<u32>(abs(abs(func_3(Struct_1(true)))), u_input.c) % vec2<u32>(32u));
    let var_1 = Struct_1(all(!vec4<bool>(any(vec4<bool>(false, false, false, false)), var_0.x >= u_input.a.x, false, select(true, false, false))));
    let var_2 = true;
    var var_3 = var_1.a;
    let var_4 = _wgslsmith_f_op_f32(f32(-1f) * -1089f);
    return 2147483647i;
}

fn func_4(arg_0: u32, arg_1: i32, arg_2: f32) -> Struct_1 {
    let var_0 = vec4<i32>(_wgslsmith_mod_i32(arg_1, arg_1), _wgslsmith_mod_i32(0i, arg_1), ~arg_1, max(reverseBits(u_input.e.x), -firstLeadingBit(36595i << (arg_0 % 32u))));
    global0 = array<vec3<i32>, 9>();
    let var_1 = var_0;
    let var_2 = firstLeadingBit(_wgslsmith_div_vec2_i32(vec2<i32>(0i, _wgslsmith_clamp_i32(var_1.x, -5637i, u_input.b.x)), abs(-var_1.xw))) & _wgslsmith_mult_vec2_i32(vec2<i32>(var_0.x, -6403i), vec2<i32>(-1i, -var_0.x));
    let var_3 = Struct_1(any(!select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, false)))));
    return Struct_1(var_1.x <= 21644i);
}

fn func_5(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: Struct_1) -> f32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(step(-597f, -258f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(-1000f, 1731f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f)))) + _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1810f, _wgslsmith_f_op_f32(select(1131f, 589f, false))), vec2<f32>(_wgslsmith_f_op_f32(-422f + -806f), -2998f))))));
    var var_1 = arg_1;
    global1 = array<vec3<bool>, 32>();
    var_1 = arg_1;
    global0 = array<vec3<i32>, 9>();
    return _wgslsmith_f_op_f32(min(-1248f, _wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_0.x))))));
}

fn func_1(arg_0: vec4<u32>) -> StorageBuffer {
    let var_0 = select(any(vec4<bool>(true, any(global1[_wgslsmith_index_u32(14294u << (arg_0.x % 32u), 32u)]), any(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false))), true)), false, true);
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_5(vec2<i32>(_wgslsmith_div_i32(firstTrailingBit(-27236i), max(u_input.e.x, -23881i)), ~(u_input.b.x >> (4294967295u % 32u))), func_4(0u << (u_input.d % 32u), func_2(), _wgslsmith_f_op_f32(f32(-1f) * -1219f)), Struct_1(any(select(vec2<bool>(var_0, var_0), vec2<bool>(var_0, var_0), var_0))))) * _wgslsmith_f_op_f32(-498f + -1009f));
    var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-674f)))))));
    var var_2 = 5874u;
    var_1 = -124f;
    return StorageBuffer(62560u, ~u_input.b << (abs(vec4<u32>(~91943u, _wgslsmith_clamp_u32(u_input.c, arg_0.x, arg_0.x), u_input.d, 1u ^ u_input.a.x)) % vec4<u32>(32u)), _wgslsmith_add_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b.x, select(u_input.e.x, u_input.e.x, var_0), reverseBits(u_input.b.x), u_input.e.x), _wgslsmith_sub_vec4_i32(_wgslsmith_sub_vec4_i32(u_input.b, vec4<i32>(u_input.e.x, u_input.b.x, u_input.e.x, -21394i)), vec4<i32>(u_input.e.x, -6485i, u_input.b.x, u_input.e.x))), (_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.e.x, u_input.e.x, 15533i, u_input.b.x), vec4<i32>(2147483647i, -11031i, -1i, -1i)) & u_input.b) >> (~arg_0 % vec4<u32>(32u))), i32(-1i) * -20410i, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(func_5(vec2<i32>(2147483647i, 56341i), Struct_1(var_0), Struct_1(false))), _wgslsmith_f_op_f32(f32(-1f) * -3232f))))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1(vec4<u32>(firstLeadingBit(~u_input.d) << (93188u % 32u), u_input.a.x, ~_wgslsmith_mod_u32(u_input.c, ~u_input.a.x), max(_wgslsmith_add_u32(u_input.a.x, 22370u), u_input.a.x)));
}


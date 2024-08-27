struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: vec4<i32>,
}

struct Struct_3 {
    a: i32,
    b: u32,
    c: u32,
}

struct Struct_4 {
    a: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(-100f, -215f, -1148f, -244f);

var<private> global1: array<Struct_1, 28>;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec4<i32>, arg_1: bool) -> f32 {
    var var_0 = arg_1;
    var var_1 = -(~u_input.a.x ^ (2147483647i >> (u_input.b % 32u)));
    let var_2 = _wgslsmith_add_u32(u_input.b, 48347u);
    let var_3 = _wgslsmith_f_op_f32(1719f - _wgslsmith_f_op_f32(floor(-624f)));
    let var_4 = ~(~select(-countOneBits(arg_0), _wgslsmith_div_vec4_i32(vec4<i32>(arg_0.x, arg_0.x, u_input.a.x, -26271i), _wgslsmith_mod_vec4_i32(vec4<i32>(10897i, u_input.a.x, arg_0.x, -2147483647i), arg_0)), !arg_1));
    return 1f;
}

fn func_2() -> vec3<i32> {
    global1 = array<Struct_1, 28>();
    var var_0 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(-1189f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec4<i32>(1850i, 2147483647i, u_input.a.x, -17925i), true))))), global0.x), global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global0.x, _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(global0.x, global0.x)))))), _wgslsmith_f_op_f32(global0.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2069f + 1264f) * global0.x))));
    let var_1 = u_input.a.x;
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -644f), -2367f, var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1671f * -1255f) * _wgslsmith_div_f32(-1000f, 355f))))));
    var var_3 = -37852i;
    return abs(u_input.a);
}

fn func_4(arg_0: i32) -> Struct_1 {
    let var_0 = Struct_2(firstLeadingBit(countOneBits(vec4<i32>(u_input.a.x, u_input.a.x, 45460i, u_input.a.x)) >> ((vec4<u32>(u_input.b, u_input.b, 0u, 0u) >> (vec4<u32>(1u, 1u, 0u, u_input.b) % vec4<u32>(32u))) % vec4<u32>(32u))) & _wgslsmith_sub_vec4_i32(_wgslsmith_clamp_vec4_i32(~vec4<i32>(arg_0, arg_0, arg_0, u_input.a.x), vec4<i32>(4266i, u_input.a.x, 2147483647i, u_input.a.x), vec4<i32>(arg_0, 0i, arg_0, arg_0) ^ vec4<i32>(-2757i, u_input.a.x, arg_0, 0i)), ~(-vec4<i32>(2147483647i, arg_0, u_input.a.x, 29728i))));
    global1 = array<Struct_1, 28>();
    global1 = array<Struct_1, 28>();
    var var_1 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(sign(global0.x)), 476f)))));
    let var_2 = firstLeadingBit(firstLeadingBit(_wgslsmith_clamp_i32(-54470i, arg_0 << (~1u % 32u), ~48847i)));
    return global1[_wgslsmith_index_u32(abs(1u), 28u)];
}

fn func_1(arg_0: Struct_3, arg_1: bool) -> Struct_2 {
    var var_0 = arg_0;
    let var_1 = var_0.c;
    var var_2 = abs(_wgslsmith_sub_u32(var_0.c, (_wgslsmith_mod_u32(u_input.b, arg_0.b) & _wgslsmith_div_u32(u_input.b, 2310u)) | 4294967295u));
    let var_3 = func_4(-_wgslsmith_dot_vec3_i32(func_2(), _wgslsmith_sub_vec3_i32(u_input.a ^ u_input.a, u_input.a)));
    var var_4 = arg_0;
    return Struct_2(firstLeadingBit(_wgslsmith_add_vec4_i32(vec4<i32>(-35452i, 21913i, -19289i, -60531i), vec4<i32>(0i, var_3.a.x, u_input.a.x, u_input.a.x)) | abs(vec4<i32>(-2147483647i, var_4.a, var_0.a, u_input.a.x))) >> (~max(reverseBits(vec4<u32>(arg_0.c, var_4.c, 4294967295u, var_0.b)), _wgslsmith_mult_vec4_u32(vec4<u32>(7873u, 4294967295u, 1u, 1560u), vec4<u32>(1u, u_input.b, 25944u, 4294967295u))) % vec4<u32>(32u)));
}

fn func_5(arg_0: Struct_2, arg_1: vec2<u32>, arg_2: Struct_4, arg_3: u32) -> StorageBuffer {
    global1 = array<Struct_1, 28>();
    let var_0 = Struct_3(u_input.a.x, ~firstLeadingBit(arg_1.x), _wgslsmith_clamp_u32(~min(u_input.b, firstLeadingBit(1u)), max(firstTrailingBit(arg_3), 9792u), _wgslsmith_div_u32(14875u, arg_3)));
    var var_1 = -2147483647i;
    var_1 = var_0.a;
    global1 = array<Struct_1, 28>();
    return StorageBuffer(arg_3, vec4<f32>(-127f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -260f))), _wgslsmith_f_op_f32(arg_2.a + _wgslsmith_f_op_f32(func_3(vec4<i32>(var_0.a, 2147483647i, var_0.a, 13339i), select(true, true, true)))), -381f));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 28>();
    let x = u_input.a;
    s_output = func_5(func_1(Struct_3(-1353i, ~(~4294967295u), firstTrailingBit(~0u)), !(0u != u_input.b)), vec2<u32>(u_input.b, ~4294967295u), Struct_4(_wgslsmith_f_op_f32(f32(-1f) * -1000f)), 129801u);
}


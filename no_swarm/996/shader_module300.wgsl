struct Struct_1 {
    a: i32,
    b: u32,
    c: u32,
    d: vec2<i32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: bool,
}

struct Struct_3 {
    a: vec2<bool>,
    b: u32,
    c: Struct_1,
    d: Struct_1,
    e: Struct_2,
}

struct Struct_4 {
    a: vec3<bool>,
    b: bool,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: vec3<i32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 3> = array<f32, 3>(428f, -1091f, 182f);

var<private> global1: array<vec3<i32>, 9>;

var<private> global2: f32 = -747f;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: bool, arg_1: bool, arg_2: Struct_2) -> f32 {
    let var_0 = Struct_2(u_input.a.yx | ~vec2<u32>(0u, 0u), true);
    global0 = array<f32, 3>();
    let var_1 = select(!(!(!(!vec2<bool>(true, arg_2.b)))), select(!select(!vec2<bool>(arg_1, arg_2.b), select(vec2<bool>(true, var_0.b), vec2<bool>(var_0.b, false), vec2<bool>(var_0.b, arg_2.b)), false), vec2<bool>(all(vec3<bool>(false, false, arg_1)), true), all(select(select(vec3<bool>(false, arg_0, true), vec3<bool>(true, var_0.b, arg_0), vec3<bool>(false, true, arg_1)), !vec3<bool>(true, arg_1, true), vec3<bool>(var_0.b, true, true)))), arg_0);
    var var_2 = Struct_3(var_1, ~31114u, Struct_1(firstTrailingBit(u_input.b), ~1u, ~reverseBits(countOneBits(1u)), abs(firstLeadingBit(-vec2<i32>(17625i, -13082i)))), Struct_1(u_input.b, var_0.a.x, countOneBits(_wgslsmith_add_u32(arg_2.a.x << (3070u % 32u), 31360u)), vec2<i32>(-u_input.b, u_input.b)), Struct_2(min(vec2<u32>(10042u, var_0.a.x), arg_2.a & vec2<u32>(var_0.a.x, var_0.a.x)) & ~(~arg_2.a), false));
    global0 = array<f32, 3>();
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-332f)) + -1278f);
}

fn func_2(arg_0: vec2<i32>) -> vec2<i32> {
    var var_0 = Struct_2(_wgslsmith_clamp_vec2_u32(reverseBits(~_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x), vec2<u32>(0u, u_input.a.x))), _wgslsmith_mult_vec2_u32(~(~u_input.a.yz), ~u_input.a.yy), vec2<u32>(~u_input.a.x, 4294967295u)), !(!(_wgslsmith_f_op_f32(func_3(false, true, Struct_2(vec2<u32>(u_input.a.x, u_input.a.x), true))) != _wgslsmith_f_op_f32(trunc(1441f)))));
    return abs(arg_0) & vec2<i32>(_wgslsmith_mult_i32(_wgslsmith_add_i32(~u_input.b, arg_0.x >> (1u % 32u)), u_input.b), u_input.b);
}

fn func_1() -> Struct_2 {
    let var_0 = Struct_1(~u_input.b, ~4294967295u, 35287u, ~(-_wgslsmith_add_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.b, u_input.b), vec2<i32>(2147483647i, -17072i)), func_2(vec2<i32>(2147483647i, u_input.b)))));
    global0 = array<f32, 3>();
    let var_1 = Struct_3(!vec2<bool>(any(vec4<bool>(true, false, false, false)), false), var_0.b, Struct_1(u_input.b, 4294967295u, _wgslsmith_add_u32(firstLeadingBit(~4294967295u), firstLeadingBit(u_input.a.x & 4294967295u)), vec2<i32>(~_wgslsmith_add_i32(11595i, -20588i), 8709i)), var_0, Struct_2(~u_input.a.yy, select(true | (var_0.b == 4294967295u), _wgslsmith_mod_i32(u_input.b, -2147483647i) == var_0.d.x, any(vec2<bool>(true, true)))));
    var var_2 = max(_wgslsmith_div_u32(~(~reverseBits(1u)), 1u), _wgslsmith_dot_vec2_u32(var_1.e.a, _wgslsmith_div_vec2_u32(max(vec2<u32>(u_input.a.x, 4294967295u), _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a.x, 1u), vec2<u32>(var_0.c, u_input.a.x))), ~(~vec2<u32>(16212u, 4294967295u)))));
    var var_3 = vec2<i32>(var_1.c.d.x, firstTrailingBit(-2147483647i));
    return Struct_2(vec2<u32>(var_1.b, abs(var_1.b)), any(vec3<bool>(var_1.a.x, !any(vec2<bool>(false, var_1.e.b)), var_1.a.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    var var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(-1575f))));
    global2 = -582f;
    global2 = _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(4294967295u, abs(var_0.a.x), u_input.a.x, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 0u), vec2<u32>(4294967295u, 4294967295u)))), vec4<u32>(max(1u, var_0.a.x), _wgslsmith_sub_u32(u_input.a.x, ~40265u), 0u << (_wgslsmith_mult_u32(var_0.a.x, 1u) % 32u), u_input.a.x)), 3u)]);
    var var_2 = u_input.a.zz;
    global1 = array<vec3<i32>, 9>();
    var var_3 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer((vec4<i32>(-1i) * -vec4<i32>(u_input.b, -2147483647i, 2147483647i, u_input.b)) | select(vec4<i32>(_wgslsmith_div_i32(u_input.b, u_input.b), u_input.b, -u_input.b, ~u_input.b), _wgslsmith_div_vec4_i32(vec4<i32>(-2577i, -9235i, 2147483647i, -2147483647i), vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b)) << (_wgslsmith_div_vec4_u32(vec4<u32>(var_2.x, var_0.a.x, 10971u, 5705u), vec4<u32>(37046u, 1u, 0u, 25219u)) % vec4<u32>(32u)), !(!vec4<bool>(var_3.b, var_3.b, var_3.b, var_3.b))), vec3<i32>(~(-2147483647i), ~u_input.b, u_input.b << (1u % 32u)), global1[_wgslsmith_index_u32(firstTrailingBit(~max(u_input.a.x, firstTrailingBit(u_input.a.x))), 9u)], abs(_wgslsmith_mult_vec4_i32(-vec4<i32>(u_input.b, 2147483647i, -24369i, -11414i), _wgslsmith_mult_vec4_i32(reverseBits(vec4<i32>(15395i, u_input.b, 55982i, u_input.b)), -vec4<i32>(u_input.b, u_input.b, 2147483647i, u_input.b)))));
}


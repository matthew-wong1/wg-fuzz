struct Struct_1 {
    a: vec4<u32>,
    b: u32,
    c: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<u32>,
    c: f32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 23>;

var<private> global1: array<Struct_1, 11>;

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: u32) -> u32 {
    var var_0 = max(arg_1.yy, select(~vec2<i32>(-arg_1.x, _wgslsmith_sub_i32(u_input.d.x, -62089i)), max(-(u_input.a | vec2<i32>(-41622i, u_input.d.x)), arg_1.zx), vec2<bool>(true, true)));
    let var_1 = Struct_1(max(firstTrailingBit(arg_0.a), arg_0.a), arg_2, 1u);
    var var_2 = global1[_wgslsmith_index_u32(0u, 11u)];
    let var_3 = var_1.a;
    let var_4 = _wgslsmith_f_op_f32(f32(-1f) * -339f);
    return select(_wgslsmith_div_u32(68382u, ~1210u), firstLeadingBit(~reverseBits(~37142u)), all(select(vec2<bool>(true, true), select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true)), true), -1000f <= _wgslsmith_div_f32(var_4, 676f))));
}

fn func_2(arg_0: vec2<bool>, arg_1: bool) -> u32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(971f, -1433f), _wgslsmith_div_vec2_f32(vec2<f32>(1048f, 3214f), vec2<f32>(-858f, -573f)))))))));
    global0 = array<vec4<i32>, 23>();
    var var_1 = global1[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.c, ~(~22251u)), 11u)];
    let var_2 = 5085u ^ _wgslsmith_mult_u32(81933u, func_3(global1[_wgslsmith_index_u32(13375u, 11u)], vec3<i32>(2147483647i, u_input.a.x, u_input.d.x) >> (_wgslsmith_mod_vec3_u32(var_1.a.yxy, vec3<u32>(u_input.c, 86076u, u_input.c)) % vec3<u32>(32u)), var_1.c));
    let var_3 = arg_1;
    return ~(~32175u);
}

fn func_1() -> u32 {
    global1 = array<Struct_1, 11>();
    var var_0 = !(~u_input.c > (firstTrailingBit(u_input.c) | select(max(12032u, 4294967295u), u_input.c, false)));
    let var_1 = Struct_1(vec4<u32>(_wgslsmith_mod_u32(u_input.c >> ((u_input.c & 0u) % 32u), func_2(vec2<bool>(false, false), u_input.a.x <= 52714i)), max(~(~1u), u_input.c | _wgslsmith_clamp_u32(4294967295u, 4294967295u, u_input.c)), u_input.c, u_input.c), ~3033u, _wgslsmith_div_u32(0u, u_input.c));
    var var_2 = Struct_1(vec4<u32>(4294967295u, countOneBits(4294967295u << (u_input.c % 32u)), _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(var_1.a.zyy, vec3<u32>(var_1.a.x, var_1.c, u_input.c)), func_2(vec2<bool>(true, true), false)), ~(~4294967295u)) >> (((vec4<u32>(25995u, var_1.c, var_1.c, u_input.c) << (min(vec4<u32>(1u, 46318u, 43618u, var_1.c), var_1.a) % vec4<u32>(32u))) & ~(~vec4<u32>(var_1.c, var_1.b, 1197u, var_1.c))) % vec4<u32>(32u)), var_1.a.x, func_3(var_1, select(vec3<i32>(-u_input.b, _wgslsmith_div_i32(u_input.d.x, 0i), u_input.b), _wgslsmith_clamp_vec3_i32(abs(vec3<i32>(u_input.a.x, -38256i, -4551i)), _wgslsmith_add_vec3_i32(vec3<i32>(1i, -1i, -43609i), vec3<i32>(50442i, u_input.d.x, 18993i)), vec3<i32>(u_input.d.x, u_input.a.x, u_input.b)), vec3<bool>(true, true, true)), u_input.c));
    global1 = array<Struct_1, 11>();
    return _wgslsmith_mod_u32(var_1.b, 52064u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(~((u_input.c ^ u_input.c) & 0u), 1u), 11u)];
    var_0 = global1[_wgslsmith_index_u32(min(func_1(), _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(_wgslsmith_mod_vec4_u32(~var_0.a, var_0.a ^ var_0.a), vec4<u32>(~8976u, countOneBits(u_input.c), 0u >> (var_0.a.x % 32u), ~var_0.b)), abs(var_0.a))), 11u)];
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1f))));
    var_0 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, ~(func_1() | 24149u), (_wgslsmith_mult_u32(20397u, var_0.b) ^ 55356u) & ~(4294967295u >> (u_input.c % 32u))), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.c, u_input.c, func_2(select(vec2<bool>(false, false), vec2<bool>(true, false), false), var_0.b > u_input.c)), select(~vec3<u32>(1u, 0u, var_0.c), _wgslsmith_div_vec3_u32(~var_0.a.yyx, vec3<u32>(u_input.c, 27642u, 1u)), vec3<bool>(true, true, true)))), 11u)];
    let var_2 = global1[_wgslsmith_index_u32(_wgslsmith_div_u32(func_1(), var_0.b), 11u)];
    var var_3 = Struct_1(vec4<u32>(var_2.c, max(~(4294967295u | var_0.b), min(u_input.c, var_0.c) << (func_2(vec2<bool>(true, true), true) % 32u)), 1u, min(var_0.c, _wgslsmith_dot_vec2_u32(vec2<u32>(29508u, 47347u) << (vec2<u32>(var_0.a.x, 27416u) % vec2<u32>(32u)), ~var_0.a.xx))), var_0.c, ~var_0.b);
    let var_4 = ~4294967295u;
    var var_5 = !(!select(select(select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, false), false), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), false), u_input.b >= -2147483647i), vec4<bool>(true, true, true, true), false));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -305f) + _wgslsmith_f_op_f32(min(-1201f, _wgslsmith_f_op_f32(round(949f))))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(324f, -1858f)))), _wgslsmith_div_f32(276f, -1438f)), var_0.a ^ vec4<u32>(~(1u << (u_input.c % 32u)), ~abs(23315u), var_2.c ^ _wgslsmith_add_u32(6153u, u_input.c), _wgslsmith_dot_vec2_u32(var_2.a.zw, var_3.a.wy << (vec2<u32>(var_4, var_3.c) % vec2<u32>(32u)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1304f)))) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(-565f, _wgslsmith_f_op_f32(f32(-1f) * -264f)) + _wgslsmith_f_op_f32(f32(-1f) * -631f))), var_0.a.wz);
}


struct Struct_1 {
    a: vec2<i32>,
    b: vec3<u32>,
    c: bool,
    d: vec4<f32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec4<bool>,
    c: Struct_1,
    d: u32,
    e: vec3<bool>,
}

struct Struct_3 {
    a: f32,
    b: vec2<i32>,
    c: vec2<u32>,
}

struct Struct_4 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 2147483647i;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_4) -> bool {
    let var_0 = !arg_0.a;
    let var_1 = _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -426f))));
    global0 = -31689i;
    global0 = -60650i ^ _wgslsmith_mod_i32(max(-2147483647i, abs(u_input.b)), u_input.b);
    let var_2 = Struct_3(var_1, ~firstLeadingBit(_wgslsmith_mod_vec2_i32(vec2<i32>(-15996i, -1i), vec2<i32>(u_input.b, u_input.b))) & (max(vec2<i32>(47415i, 49204i), u_input.c.xx) >> (vec2<u32>(~4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 63436u), vec2<u32>(0u, u_input.a))) % vec2<u32>(32u))), ~abs(_wgslsmith_add_vec2_u32(~vec2<u32>(0u, u_input.a), ~vec2<u32>(1u, 19655u))));
    return true;
}

fn func_2() -> Struct_2 {
    global0 = ~_wgslsmith_dot_vec4_i32(-(u_input.c & vec4<i32>(1227i, 25729i, -22349i, u_input.c.x)), abs(u_input.c)) | 2147483647i;
    let var_0 = Struct_4(select(select(vec2<bool>(u_input.b <= -33286i, true), vec2<bool>(true, true), all(vec4<bool>(false, true, false, true)) || false), vec2<bool>(true, func_3(Struct_4(vec2<bool>(true, false)))), !select(select(vec2<bool>(true, true), vec2<bool>(false, true), true), select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true)), select(vec2<bool>(false, false), vec2<bool>(true, true), false))));
    global0 = -40361i;
    global0 = min(u_input.b, 20109i);
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -1000f);
    return Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(678f * 403f), _wgslsmith_f_op_f32(ceil(621f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(659f))), 2204f, _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(f32(-1f) * -612f)))), vec4<bool>(true, !all(vec4<bool>(false, true, true, var_0.a.x)), var_0.a.x | all(select(vec2<bool>(var_0.a.x, var_0.a.x), var_0.a, var_0.a)), (_wgslsmith_div_i32(u_input.b, u_input.c.x) & (29935i << (u_input.a % 32u))) != _wgslsmith_add_i32(u_input.c.x << (u_input.a % 32u), -26065i)), Struct_1(vec2<i32>(u_input.c.x, -11485i), firstTrailingBit(countOneBits(vec3<u32>(10751u, 1u, 0u) >> (vec3<u32>(u_input.a, u_input.a, 2150u) % vec3<u32>(32u)))), var_0.a.x, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-676f, 390f, 1749f, -1966f) + vec4<f32>(-1530f, 387f, -611f, -564f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-588f, 568f, 1844f, -2281f)))), reverseBits(~51676u), select(vec3<bool>(false, var_0.a.x, false), select(vec3<bool>(var_0.a.x, all(vec4<bool>(var_0.a.x, var_0.a.x, true, true)), u_input.c.x <= 59164i), vec3<bool>(true, false, true), false), !(!vec3<bool>(var_0.a.x, false, true))));
}

fn func_1(arg_0: bool, arg_1: i32) -> Struct_4 {
    let var_0 = func_2();
    let var_1 = !func_2().b.x;
    global0 = ~arg_1;
    global0 = _wgslsmith_mod_i32(-u_input.b | firstTrailingBit(~1i), 1i);
    global0 = arg_1;
    return Struct_4(!vec2<bool>(func_3(Struct_4(vec2<bool>(arg_0, var_0.c.c))) & any(vec3<bool>(var_0.b.x, true, arg_0)), !(var_0.c.d.x != 212f)));
}

fn func_4(arg_0: vec4<u32>, arg_1: vec4<i32>, arg_2: Struct_4) -> vec2<i32> {
    global0 = -u_input.b << (arg_0.x % 32u);
    var var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(-635f, -1194f));
    var var_1 = min(arg_0 >> (select(_wgslsmith_mod_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a, arg_0.x, 75192u, 4294967295u), vec4<u32>(27923u, u_input.a, 54002u, 4294967295u), arg_0), arg_0), arg_0, false) % vec4<u32>(32u)), max(firstLeadingBit(vec4<u32>(4294967295u, firstTrailingBit(arg_0.x), 4294967295u, 4294967295u)), reverseBits(_wgslsmith_sub_vec4_u32(min(vec4<u32>(4294967295u, u_input.a, 1u, arg_0.x), vec4<u32>(arg_0.x, u_input.a, arg_0.x, u_input.a)), vec4<u32>(1u, 1u, 1u, arg_0.x)))));
    var var_2 = 4294967295u == _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(firstTrailingBit(abs(vec2<u32>(u_input.a, arg_0.x))), var_1.wx), vec2<u32>(84074u, _wgslsmith_sub_u32(_wgslsmith_mult_u32(arg_0.x, 0u), ~u_input.a)));
    let var_3 = 65720u >= arg_0.x;
    return -vec2<i32>(~u_input.b, -(i32(-1i) * -2147483647i)) >> ((vec2<u32>(1u, var_1.x) << (~var_1.yx % vec2<u32>(32u))) % vec2<u32>(32u));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = u_input.b;
    global0 = firstLeadingBit(reverseBits(~2147483647i));
    var var_0 = -select(vec2<i32>(50973i, ~_wgslsmith_div_i32(1i, 10304i)), ~_wgslsmith_mod_vec2_i32(u_input.c.wx, -vec2<i32>(u_input.c.x, u_input.c.x)), all(vec2<bool>(true, true)));
    global0 = u_input.b ^ -(~_wgslsmith_div_i32(u_input.c.x, ~var_0.x));
    var_0 = _wgslsmith_div_vec2_i32(-min(-(~vec2<i32>(2147483647i, -1i)), vec2<i32>(_wgslsmith_clamp_i32(10008i, u_input.c.x, 2147483647i), ~(-28205i))), select(func_4(~(~vec4<u32>(u_input.a, u_input.a, 12523u, u_input.a)), vec4<i32>(-20346i, u_input.c.x, -1i, _wgslsmith_mod_i32(u_input.b, u_input.c.x)), func_1(true, _wgslsmith_div_i32(1i, u_input.b))), vec2<i32>(-35952i, ~(0i << (u_input.a % 32u))), select(vec2<bool>(true, true), vec2<bool>(true, func_1(false, u_input.c.x).a.x), !func_2().e.zx)));
    global0 = -_wgslsmith_div_i32(u_input.c.x, 2147483647i);
    let var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, 565f, -1305f, -1486f) + vec4<f32>(834f, -636f, 761f, 786f)), vec4<f32>(110f, 1356f, -1800f, -967f))) * vec4<f32>(1f, 1f, 1f, 1f)))), !(!func_2().b), Struct_1(~(u_input.c.ww & vec2<i32>(var_0.x, 2147483647i)), ~abs(vec3<u32>(u_input.a, 4294967295u, u_input.a)), func_1(all(vec3<bool>(true, false, true)), 29310i << (u_input.a % 32u)).a.x & true, vec4<f32>(_wgslsmith_f_op_f32(-func_2().c.d.x), _wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(trunc(985f))), -1000f, 105f)), u_input.a, vec3<bool>(false, false, true));
    var var_2 = func_2().a.xyy;
    var_0 = -(_wgslsmith_sub_vec2_i32(vec2<i32>(firstLeadingBit(-12509i), -51850i), countOneBits(var_1.c.a >> (vec2<u32>(var_1.c.b.x, u_input.a) % vec2<u32>(32u)))) & _wgslsmith_mod_vec2_i32(var_1.c.a, firstLeadingBit(_wgslsmith_sub_vec2_i32(var_1.c.a, vec2<i32>(2147483647i, 1i)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(var_2.x, var_2.x), vec2<i32>(firstLeadingBit(27403i), -36047i));
}


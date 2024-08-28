struct Struct_1 {
    a: vec2<u32>,
    b: vec3<u32>,
    c: f32,
    d: bool,
    e: f32,
}

struct Struct_2 {
    a: f32,
    b: vec4<i32>,
    c: i32,
    d: i32,
    e: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: u32,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: f32,
    d: vec4<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: bool;

var<private> global2: f32 = 244f;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: f32) -> vec4<i32> {
    global2 = arg_0;
    return vec4<i32>((u_input.a.x << (global0.b.x % 32u)) ^ -1i, _wgslsmith_mod_i32(_wgslsmith_div_i32(~(~(-2147483647i)), u_input.a.x), ~u_input.a.x), _wgslsmith_mod_i32(firstTrailingBit(_wgslsmith_mult_i32(_wgslsmith_mult_i32(u_input.a.x, 6212i), u_input.a.x)), abs(-(u_input.a.x | -25914i))), ~u_input.a.x);
}

fn func_2(arg_0: bool, arg_1: f32, arg_2: vec3<bool>) -> vec2<f32> {
    var var_0 = Struct_2(arg_1, ~countOneBits(-func_3(1000f)), u_input.a.x, 1i, Struct_1(vec2<u32>(global0.b.x, global0.b.x), global0.b, _wgslsmith_f_op_f32(global0.c + global0.c), arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.e))));
    global1 = global0.d;
    let var_1 = var_0.e;
    var_0 = Struct_2(var_0.a, _wgslsmith_mod_vec4_i32(var_0.b, ~var_0.b), var_0.c, ~_wgslsmith_dot_vec3_i32(~vec3<i32>(14778i, var_0.c, u_input.a.x), abs(vec3<i32>(var_0.c, -26839i, 3123i))), var_0.e);
    var_0 = Struct_2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(abs(-396f)))), var_0.b, _wgslsmith_add_i32(_wgslsmith_mod_i32(u_input.a.x, -2147483647i), ~_wgslsmith_dot_vec4_i32(var_0.b, var_0.b)), min(0i, firstTrailingBit(-4364i)), var_0.e);
    return vec2<f32>(-2104f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(370f - _wgslsmith_f_op_f32(-241f + arg_1)), 555f));
}

fn func_1(arg_0: Struct_2) -> Struct_1 {
    global2 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-962f)) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(global0.c)))))))));
    let var_0 = i32(-1i) * -50046i;
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(max(global0.e, _wgslsmith_f_op_f32(sign(-2556f)))), global0.e) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_2(false, -285f, vec3<bool>(global0.d, true, arg_0.e.d)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(arg_0.e.c, global0.e), vec2<f32>(-523f, 1120f))))));
    var var_2 = ~_wgslsmith_dot_vec2_u32(abs(global0.a << (global0.b.xy % vec2<u32>(32u))), abs(vec2<u32>(26813u, arg_0.e.b.x))) == global0.a.x;
    global0 = arg_0.e;
    return Struct_1(vec2<u32>(reverseBits(_wgslsmith_dot_vec2_u32(firstTrailingBit(vec2<u32>(4782u, arg_0.e.a.x)), vec2<u32>(global0.b.x, 1u))), _wgslsmith_dot_vec3_u32(abs(select(global0.b, vec3<u32>(1u, 59392u, global0.a.x), vec3<bool>(global0.d, arg_0.e.d, true))), _wgslsmith_sub_vec3_u32(reverseBits(global0.b), firstLeadingBit(global0.b)))), (abs(max(vec3<u32>(global0.b.x, 0u, 12920u), vec3<u32>(global0.b.x, arg_0.e.b.x, arg_0.e.b.x))) | ~vec3<u32>(global0.b.x, 21082u, arg_0.e.b.x)) | arg_0.e.b, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(sign(426f)))), arg_0.e.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_2(!global0.d, 219f, select(vec3<bool>(true, global0.d, global0.d), vec3<bool>(false, arg_0.e.d, global0.d), vec3<bool>(true, true, false)))).x) + var_1.x));
}

fn func_4(arg_0: Struct_2, arg_1: vec2<u32>, arg_2: vec3<i32>, arg_3: vec2<u32>) -> Struct_1 {
    let var_0 = global0.b;
    var var_1 = arg_0.e;
    return arg_0.e;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_4(Struct_2(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1000f, _wgslsmith_div_f32(global0.e, -901f)) * -1931f), _wgslsmith_div_vec4_i32(-vec4<i32>(42623i, u_input.a.x, u_input.a.x, u_input.a.x), ~(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, -2147483647i) << (vec4<u32>(40249u, global0.b.x, 28761u, 9732u) % vec4<u32>(32u)))), 1i, 16883i, func_1(Struct_2(global0.c, vec4<i32>(u_input.a.x, u_input.a.x, -5485i, -2147483647i) >> (vec4<u32>(global0.b.x, global0.a.x, 61373u, global0.b.x) % vec4<u32>(32u)), u_input.a.x, u_input.a.x, Struct_1(global0.b.yz, vec3<u32>(global0.a.x, global0.a.x, 0u), -1070f, true, 889f)))), vec2<u32>(max(1u, ~global0.b.x), min(4294967295u, ~(~0u))), firstLeadingBit(vec3<i32>(u_input.a.x >> (~1u % 32u), ~(-11135i) >> (global0.a.x % 32u), u_input.a.x)), func_1(Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global0.e))), -vec4<i32>(0i, -1i, 1i, 2147483647i), u_input.a.x, -(~(-2147483647i)), func_1(Struct_2(255f, vec4<i32>(u_input.a.x, u_input.a.x, -9288i, u_input.a.x), u_input.a.x, -2147483647i, Struct_1(global0.b.yz, vec3<u32>(global0.b.x, global0.b.x, 4294967295u), 161f, global0.d, 833f))))).a);
    global2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-1441f, _wgslsmith_f_op_vec2_f32(func_2(func_1(Struct_2(global0.e, vec4<i32>(-62028i, 2147483647i, -25476i, u_input.a.x), 2147483647i, 44629i, Struct_1(global0.b.xz, global0.b, global0.c, true, global0.c))).d, _wgslsmith_f_op_f32(284f * _wgslsmith_f_op_f32(global0.e + global0.c)), vec3<bool>(any(vec3<bool>(global0.d, global0.d, true)), global0.d, func_1(Struct_2(-2498f, vec4<i32>(u_input.a.x, 2248i, u_input.a.x, -2147483647i), u_input.a.x, 2147483647i, Struct_1(vec2<u32>(12181u, 110363u), global0.b, global0.e, global0.d, global0.c))).d))).x)), _wgslsmith_f_op_vec2_f32(func_2(any(vec3<bool>(true, 6119i <= u_input.a.x, all(vec2<bool>(true, global0.d)))), global0.e, vec3<bool>(true, any(!vec3<bool>(false, false, global0.d)), false))).x);
    var var_0 = -1620f;
    let var_1 = Struct_1(select(func_1(Struct_2(_wgslsmith_f_op_f32(global0.c * global0.e), ~vec4<i32>(u_input.a.x, u_input.a.x, -1i, u_input.a.x), -u_input.a.x, u_input.a.x, Struct_1(vec2<u32>(global0.a.x, global0.b.x), global0.b, 984f, true, 1002f))).b.yy, global0.a, !all(vec2<bool>(true, global0.d))), global0.b, -1007f, false, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.e) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global0.e + global0.c))))));
    var var_2 = ~_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, ~1u, ~global0.a.x), vec3<u32>(global0.b.x & 0u, var_1.b.x, abs(0u))), firstTrailingBit(4294967295u));
    let x = u_input.a;
    s_output = StorageBuffer(func_4(Struct_2(_wgslsmith_f_op_f32(-var_1.e), -vec4<i32>(u_input.a.x, -14832i, 0i, -1i), u_input.a.x, 2147483647i, func_1(Struct_2(var_1.e, vec4<i32>(-1i, u_input.a.x, 61777i, u_input.a.x), u_input.a.x, u_input.a.x, Struct_1(vec2<u32>(0u, global0.a.x), var_1.b, global0.e, false, -1877f)))), vec2<u32>(var_1.a.x, _wgslsmith_clamp_u32(23743u, _wgslsmith_dot_vec4_u32(vec4<u32>(global0.a.x, 63493u, var_1.b.x, global0.b.x), vec4<u32>(1u, 0u, 47184u, var_1.b.x)), abs(13869u))), -(~(~vec3<i32>(u_input.a.x, u_input.a.x, 1i))), vec2<u32>(_wgslsmith_mult_u32(6165u, ~global0.b.x), 45514u)).b, countOneBits(_wgslsmith_mod_vec4_u32(select(_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, 18149u, var_1.b.x, 37113u), vec4<u32>(0u, 47043u, 1u, global0.a.x)), vec4<u32>(53717u, 19465u, 1u, 4294967295u) ^ vec4<u32>(74444u, global0.a.x, var_1.b.x, 4294967295u), select(global0.d, true, var_1.d)), ~_wgslsmith_mod_vec4_u32(vec4<u32>(global0.b.x, global0.b.x, var_1.b.x, global0.a.x), vec4<u32>(0u, var_1.a.x, 53229u, 0u)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1034f) + func_1(Struct_2(global0.e, firstTrailingBit(vec4<i32>(-1i, 15121i, -8440i, u_input.a.x)), ~1i, _wgslsmith_div_i32(62060i, u_input.a.x), var_1)).c), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-494f, _wgslsmith_f_op_f32(floor(-1547f)), _wgslsmith_f_op_f32(f32(-1f) * -959f), -1718f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(global0.c, global0.c, 919f, -172f), vec4<f32>(var_1.c, 291f, global0.c, global0.c))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.e, global0.e)));
}


struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<u32>,
}

struct Struct_3 {
    a: bool,
    b: u32,
    c: Struct_1,
    d: vec4<i32>,
    e: vec3<i32>,
}

struct Struct_4 {
    a: Struct_2,
    b: vec3<i32>,
    c: Struct_3,
}

struct Struct_5 {
    a: bool,
    b: i32,
    c: bool,
    d: bool,
    e: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5;

var<private> global1: array<vec3<i32>, 15> = array<vec3<i32>, 15>(vec3<i32>(1i, 2147483647i, 2147483647i), vec3<i32>(-398i, i32(-2147483648), 1i), vec3<i32>(-9317i, -1i, -30687i), vec3<i32>(19095i, -9049i, -21002i), vec3<i32>(35949i, 0i, 30110i), vec3<i32>(i32(-2147483648), 22804i, -4286i), vec3<i32>(21894i, i32(-2147483648), 18271i), vec3<i32>(1i, 39097i, i32(-2147483648)), vec3<i32>(32877i, -17656i, -28857i), vec3<i32>(1835i, 244i, -11794i), vec3<i32>(25472i, 40899i, -13187i), vec3<i32>(1i, 40733i, 0i), vec3<i32>(-7068i, -1i, 2147483647i), vec3<i32>(1i, -42378i, -1i), vec3<i32>(2147483647i, 1i, 53749i));

var<private> global2: u32 = 1u;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_4, arg_1: i32) -> bool {
    var var_0 = _wgslsmith_f_op_f32(618f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(-131f)), _wgslsmith_f_op_f32(1363f + 1209f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(974f)) + _wgslsmith_f_op_f32(1225f + -493f)))) - _wgslsmith_f_op_f32(f32(-1f) * -928f)));
    global0 = Struct_5(all(!(!vec4<bool>(global0.d, arg_0.c.a, global0.d, global0.a))), u_input.a.x, arg_0.c.a, global0.c, _wgslsmith_div_i32(global0.e, arg_0.b.x) >> (arg_0.a.a.a.x % 32u));
    let var_1 = min(~firstLeadingBit((arg_0.a.b.a.x & 4294967295u) << (1u % 32u)), 4294967295u);
    let var_2 = arg_0.a;
    let var_3 = Struct_3(any(select(!(!vec4<bool>(arg_0.c.a, false, arg_0.c.a, global0.a)), select(vec4<bool>(global0.c, arg_0.c.a, true, false), !vec4<bool>(arg_0.c.a, arg_0.c.a, false, global0.a), false), !arg_0.c.a)), 56239u, arg_0.a.a, reverseBits(_wgslsmith_sub_vec4_i32(_wgslsmith_mult_vec4_i32(~u_input.a, -arg_0.c.d), firstTrailingBit(vec4<i32>(arg_1, u_input.a.x, 2147483647i, 2147483647i)))), -_wgslsmith_mod_vec3_i32(vec3<i32>(-33034i, global0.e, arg_0.c.e.x), u_input.a.wwz) | _wgslsmith_mult_vec3_i32(firstTrailingBit(~u_input.a.yzy), _wgslsmith_div_vec3_i32(global1[_wgslsmith_index_u32(18465u, 15u)], abs(arg_0.c.e))));
    return !var_3.a;
}

fn func_2(arg_0: vec4<bool>, arg_1: Struct_2, arg_2: bool) -> u32 {
    let var_0 = true;
    var var_1 = !(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -426f)))) != 717f);
    let var_2 = vec4<bool>(3372u != arg_1.b.a.x, true && arg_2, !any(select(!vec3<bool>(true, arg_2, var_0), select(arg_0.xyw, vec3<bool>(arg_2, false, arg_0.x), arg_0.xyw), arg_0.xzz)), !(func_3(Struct_4(arg_1, global1[_wgslsmith_index_u32(25153u, 15u)], Struct_3(true, 4294967295u, Struct_1(arg_1.a.a), vec4<i32>(-1i, global0.b, global0.b, 1i), u_input.a.xwy)), global0.e) && false));
    var var_3 = Struct_5(!(!(-8764i < ~u_input.a.x)), -2147483647i, true, any(select(!vec3<bool>(true, var_0, arg_0.x), arg_0.yzy, select(all(arg_0.yw), !var_0, true))), _wgslsmith_div_i32(u_input.a.x, _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(-u_input.a, vec4<i32>(52981i, 2147483647i, u_input.a.x, -10722i)), _wgslsmith_sub_vec4_i32(vec4<i32>(2147483647i, u_input.a.x, global0.e, u_input.a.x), ~u_input.a))));
    var_1 = false;
    return _wgslsmith_dot_vec4_u32(min(~vec4<u32>(1u, 4661u, ~arg_1.c.x, ~1u), _wgslsmith_add_vec4_u32(arg_1.a.a, ~(~vec4<u32>(arg_1.a.a.x, 70493u, 27730u, 0u)))), _wgslsmith_mod_vec4_u32(vec4<u32>(abs(_wgslsmith_div_u32(0u, 23191u)), arg_1.b.a.x, firstLeadingBit(53725u), firstLeadingBit(1u)), firstLeadingBit(vec4<u32>(max(1u, arg_1.c.x), arg_1.a.a.x, 97588u, _wgslsmith_dot_vec2_u32(vec2<u32>(arg_1.c.x, 1u), vec2<u32>(arg_1.b.a.x, arg_1.c.x))))));
}

fn func_1(arg_0: vec3<u32>) -> Struct_1 {
    return Struct_1(vec4<u32>(abs(~14081u) >> (arg_0.x % 32u), 0u, 12902u, ~func_2(!vec4<bool>(true, global0.c, true, global0.a), Struct_2(Struct_1(vec4<u32>(arg_0.x, arg_0.x, 1u, arg_0.x)), Struct_1(vec4<u32>(arg_0.x, arg_0.x, arg_0.x, arg_0.x)), vec3<u32>(arg_0.x, 16375u, 1u)), global0.c)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = ~1u;
    var var_0 = vec4<bool>(any(select(select(!vec2<bool>(global0.a, global0.d), select(vec2<bool>(true, true), vec2<bool>(global0.d, false), vec2<bool>(true, global0.d)), true), !select(vec2<bool>(global0.a, true), vec2<bool>(global0.a, true), global0.a), vec2<bool>(true, true))), false, false, !(!(!global0.d & any(vec3<bool>(true, false, global0.a)))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(490f - 1f)));
    var var_2 = Struct_4(Struct_2(func_1(abs(~vec3<u32>(14902u, 46365u, 4294967295u))), func_1(~vec3<u32>(62752u, 18089u, 6376u)), ~(~vec3<u32>(93286u, 54694u, 1u))), abs(~(-global1[_wgslsmith_index_u32(4294967295u, 15u)])), Struct_3(var_0.x, ~54574u, func_1(~vec3<u32>(9605u, 1u, 1u)), select(reverseBits(-u_input.a), abs(vec4<i32>(-18744i, u_input.a.x, u_input.a.x, global0.e)), select(!vec4<bool>(true, global0.c, false, global0.d), vec4<bool>(true, true, global0.a, global0.c), vec4<bool>(var_0.x, var_0.x, true, true))), select(u_input.a.zzy, ~vec3<i32>(global0.b, -2147483647i, -1i), global0.a)));
    let var_3 = var_2.a.b.a.yz;
    var var_4 = Struct_4(var_2.a, u_input.a.yzz, Struct_3(var_2.c.a, 12149u, func_1(vec3<u32>(~4294967295u, 1u, var_2.a.a.a.x)), vec4<i32>(firstTrailingBit(i32(-1i) * -46586i), -1i, -2147483647i, 622i), vec3<i32>(var_2.b.x, _wgslsmith_div_i32(u_input.a.x, -15043i), -1i) >> (~vec3<u32>(3305u, 1u, var_3.x) % vec3<u32>(32u))));
    var var_5 = func_1(vec3<u32>(~firstLeadingBit(~var_3.x), 12823u, _wgslsmith_dot_vec3_u32(~vec3<u32>(var_4.a.c.x, 43619u, 0u), ~var_2.a.b.a.yyy) & (_wgslsmith_div_u32(61215u, 4294967295u) | var_4.a.a.a.x)));
    var var_6 = var_2.c.c;
    var_2 = Struct_4(Struct_2(Struct_1(func_1(~vec3<u32>(49507u, var_2.a.c.x, var_5.a.x)).a), func_1(vec3<u32>(var_2.a.b.a.x, abs(var_3.x), var_4.a.b.a.x)), func_1(var_2.a.b.a.xyw).a.zzx), select(_wgslsmith_add_vec3_i32(vec3<i32>(var_4.c.d.x, global0.b, _wgslsmith_clamp_i32(global0.e, -1i, var_4.c.e.x)), var_4.c.e), max(-var_4.b, u_input.a.ywz), var_0.x), Struct_3(all(!select(var_0.xwx, var_0.xzx, var_0.wxx)), _wgslsmith_dot_vec4_u32(vec4<u32>(22984u << (var_4.c.b % 32u), max(var_5.a.x, var_4.a.a.a.x), max(var_3.x, var_6.a.x), abs(18034u)), ~_wgslsmith_sub_vec4_u32(vec4<u32>(var_2.c.c.a.x, var_2.c.b, var_3.x, 4294967295u), var_4.c.c.a)), Struct_1(vec4<u32>(9368u, 0u, abs(var_5.a.x), min(var_6.a.x, 1u))), _wgslsmith_sub_vec4_i32(vec4<i32>(_wgslsmith_add_i32(4160i, 24218i), var_2.b.x, u_input.a.x, _wgslsmith_sub_i32(var_4.c.e.x, -3722i)), vec4<i32>(_wgslsmith_dot_vec2_i32(var_4.b.yz, u_input.a.zx), _wgslsmith_mult_i32(global0.e, global0.e), 1i, -var_4.b.x)), vec3<i32>(-(~global0.b), 33450i, global0.b ^ (-25271i | u_input.a.x))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1, _wgslsmith_f_op_f32(trunc(-483f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1 - -1690f) - 1123f), -1000f)));
}


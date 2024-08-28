struct Struct_1 {
    a: vec4<i32>,
    b: vec4<f32>,
}

struct Struct_2 {
    a: i32,
    b: vec4<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<bool>,
    c: f32,
    d: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: u32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<i32>(0i, 1i, -11515i, 13308i), vec4<f32>(-859f, -145f, -125f, 1675f));

var<private> global1: array<vec2<f32>, 26>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: Struct_3, arg_3: u32) -> u32 {
    let var_0 = arg_0;
    var var_1 = _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(u_input.b, firstLeadingBit(u_input.b)), _wgslsmith_add_u32(17158u | ~_wgslsmith_mult_u32(arg_3, arg_1.x), 11304u << (arg_1.x % 32u)));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.b.x - _wgslsmith_f_op_f32(-var_0.b.x)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_0.b.x)))));
    let var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-global1[_wgslsmith_index_u32(~arg_3, 26u)])))) - _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.c, 371f)))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1229f, global0.b.x) + _wgslsmith_f_op_f32(max(var_0.b.x, -326f))), global0.b.x))));
    let var_4 = arg_2;
    return ~_wgslsmith_dot_vec4_u32(abs(vec4<u32>(arg_1.x, 0u, 29704u, 1u)), select(select(vec4<u32>(arg_3, arg_3, u_input.b.x, arg_3), vec4<u32>(arg_1.x, 1u, u_input.b.x, 48948u), var_4.d), vec4<u32>(46804u, u_input.c, 2931u, arg_3) | vec4<u32>(4294967295u, 4294967295u, arg_1.x, arg_1.x), var_4.b.x)) ^ 69396u;
}

fn func_4(arg_0: bool, arg_1: vec2<u32>, arg_2: bool, arg_3: Struct_2) -> u32 {
    var var_0 = !vec4<bool>(false, arg_0, _wgslsmith_mod_i32(min(u_input.d.x, -1i), -1i) != (i32(-1i) * -1i), !arg_3.b.x);
    var_0 = select(!arg_3.b, vec4<bool>(false, false, any(vec3<bool>(false, true || arg_3.b.x, select(true, true, false))), arg_2), arg_3.b);
    return arg_1.x;
}

fn func_2(arg_0: Struct_2, arg_1: bool, arg_2: i32, arg_3: bool) -> vec3<bool> {
    let var_0 = true;
    var var_1 = func_4(!(var_0 | (arg_0.b.x | var_0)), select(abs(~u_input.b.xz), vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, 98532u, 1u), u_input.b), func_3(Struct_1(vec4<i32>(1i, arg_0.a, 2147483647i, global0.a.x), global0.b), u_input.b, Struct_3(arg_0, vec3<bool>(var_0, var_0, arg_3), -227f, arg_0.b.x), u_input.b.x)), !arg_1), arg_3, arg_0) >> (max(u_input.b.x, _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(u_input.b.yx, u_input.b.zx), vec2<u32>(u_input.b.x, 58682u)), 4711u)) % 32u);
    let var_2 = true;
    let var_3 = arg_0.b.x;
    var var_4 = _wgslsmith_add_vec3_i32(-abs(abs(vec3<i32>(-3993i, global0.a.x, 0i))), _wgslsmith_mod_vec3_i32(global0.a.wxw, global0.a.xyz));
    return !select(vec3<bool>(var_0, var_3, var_2), arg_0.b.yyz, vec3<bool>(arg_1, select(arg_3, true, false), true | !var_3));
}

fn func_5(arg_0: vec3<bool>) -> Struct_2 {
    let var_0 = all(select(arg_0, arg_0, !(!arg_0)));
    global0 = Struct_1(firstTrailingBit(_wgslsmith_sub_vec4_i32(global0.a, global0.a)), global0.b);
    return Struct_2(firstLeadingBit(_wgslsmith_sub_i32(global0.a.x, _wgslsmith_sub_i32(~2147483647i, _wgslsmith_mult_i32(u_input.d.x, global0.a.x)))), select(!(!vec4<bool>(true, false, true, arg_0.x)), select(!(!vec4<bool>(arg_0.x, true, true, false)), !vec4<bool>(true, false, false, arg_0.x), any(arg_0.zy)), var_0));
}

fn func_6(arg_0: Struct_2, arg_1: Struct_3, arg_2: u32) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_1.c))), _wgslsmith_f_op_f32(global0.b.x - 112f)) - global0.b.wxw));
    return Struct_1(select(global0.a | vec4<i32>(62258i, global0.a.x, 0i, -2147483647i), global0.a, !vec4<bool>(false, true, false, arg_1.a.b.x)) & select(vec4<i32>(abs(-30431i), firstTrailingBit(-36114i), 50759i & arg_1.a.a, 12972i | global0.a.x), vec4<i32>(-31958i, arg_0.a & arg_0.a, -1i, ~arg_1.a.a), func_5(select(arg_1.b, vec3<bool>(false, arg_1.a.b.x, true), false)).b.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(global0.b, _wgslsmith_f_op_vec4_f32(max(global0.b, vec4<f32>(1771f, -614f, global0.b.x, var_0.x))))), _wgslsmith_f_op_vec4_f32(global0.b * global0.b)) * _wgslsmith_f_op_vec4_f32(global0.b * _wgslsmith_f_op_vec4_f32(step(global0.b, _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, -541f, 381f, global0.b.x) - global0.b))))));
}

fn func_1(arg_0: Struct_3, arg_1: Struct_2, arg_2: i32, arg_3: f32) -> Struct_1 {
    let var_0 = vec3<i32>(arg_2, min(~1i, arg_1.a), -firstTrailingBit(u_input.a));
    global0 = Struct_1(vec4<i32>(-35920i, 34467i, u_input.a, arg_0.a.a), global0.b);
    let var_1 = vec4<f32>(arg_0.c, 1039f, _wgslsmith_f_op_f32(global0.b.x + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3))))), arg_3);
    global0 = func_6(func_5(func_2(arg_0.a, true, select(~arg_2, 2147483647i, arg_1.b.x), arg_1.b.x)), arg_0, ~u_input.c);
    var var_2 = min(abs(_wgslsmith_clamp_vec4_i32(vec4<i32>(var_0.x & var_0.x, 0i, 0i, 2147483647i), vec4<i32>(arg_1.a, ~58849i, -var_0.x, -1i), ~(global0.a << (vec4<u32>(0u, u_input.c, 47791u, u_input.b.x) % vec4<u32>(32u))))), vec4<i32>(i32(-1i) * -18898i, 17983i, -u_input.d.x, 32197i & arg_1.a) | global0.a);
    return Struct_1(vec4<i32>(arg_0.a.a << (_wgslsmith_mult_u32(1u, 1u) % 32u), 9469i, select(var_0.x, ~countOneBits(844i), arg_0.a.b.x), global0.a.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-arg_0.c), 545f, 1f, -1609f) + vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-489f, global0.b.x))), var_1.x, arg_0.c, _wgslsmith_f_op_f32(round(arg_3)))));
}

fn func_7(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<i32>, arg_3: Struct_2) -> u32 {
    let var_0 = Struct_3(arg_3, vec3<bool>(false, arg_3.b.x, func_2(arg_3, true, func_1(Struct_3(Struct_2(arg_1.a.x, vec4<bool>(arg_3.b.x, true, arg_3.b.x, arg_3.b.x)), arg_3.b.yzx, -1625f, true), Struct_2(2147483647i, arg_3.b), firstTrailingBit(-6286i), _wgslsmith_f_op_f32(global0.b.x - 1167f)).a.x, arg_3.b.x).x), _wgslsmith_f_op_f32(-1f), all(func_2(func_5(func_2(arg_3, false, arg_3.a, arg_3.b.x)), false, _wgslsmith_mult_i32(u_input.a, u_input.d.x << (0u % 32u)), true).zx));
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_0.b.x))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -453f)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(333f, arg_0.b.x, arg_0.b.x)))))));
    return u_input.c;
}

fn func_8(arg_0: u32, arg_1: Struct_3, arg_2: bool) -> vec4<i32> {
    let var_0 = 10484i;
    let var_1 = arg_1.b;
    global1 = array<vec2<f32>, 26>();
    let var_2 = arg_1.a;
    let var_3 = _wgslsmith_f_op_f32(f32(-1f) * -1000f);
    return vec4<i32>(abs(19488i << (select(u_input.c, arg_0, arg_2) % 32u)), var_2.a, ~var_2.a, -(~_wgslsmith_div_i32(1i, -1899i))) | _wgslsmith_div_vec4_i32(max(vec4<i32>(arg_1.a.a, 1i, var_0, 2147483647i), vec4<i32>(37892i, -2147483647i, -1i, u_input.a)) & (vec4<i32>(-1i) * -vec4<i32>(2147483647i, var_2.a, var_0, -17555i)), global0.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(vec2<u32>(19143u, countOneBits(select(0u, u_input.b.x, false))) & vec2<u32>(u_input.b.x, u_input.c));
    global1 = array<vec2<f32>, 26>();
    global0 = Struct_1(func_8(func_7(func_1(Struct_3(Struct_2(global0.a.x, vec4<bool>(false, false, true, true)), vec3<bool>(false, false, true), global0.b.x, true), Struct_2(4718i, vec4<bool>(true, false, true, true)), -27916i, -1196f), Struct_1(global0.a, global0.b), vec3<i32>(u_input.a, -39960i, global0.a.x), Struct_2(u_input.d.x, vec4<bool>(false, true, false, true))), Struct_3(Struct_2(global0.a.x, vec4<bool>(true, false, false, false)), vec3<bool>(true, true, false), _wgslsmith_f_op_f32(-global0.b.x), all(vec2<bool>(true, true))), true) << (vec4<u32>(u_input.b.x, u_input.c, ~_wgslsmith_mult_u32(u_input.b.x, u_input.b.x), u_input.c) % vec4<u32>(32u)), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(step(101f, -732f)), _wgslsmith_f_op_f32(step(435f, global0.b.x)), -605f, -844f) * vec4<f32>(_wgslsmith_f_op_f32(-760f + -1081f), _wgslsmith_f_op_f32(-global0.b.x), 1594f, _wgslsmith_f_op_f32(-global0.b.x))))));
    var var_1 = func_2(Struct_2(_wgslsmith_mult_i32(min(55656i, u_input.a) ^ (i32(-1i) * -19374i), _wgslsmith_mult_i32(91268i, _wgslsmith_dot_vec2_i32(u_input.d.yx, vec2<i32>(0i, global0.a.x)))), select(!select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, false)), func_5(func_2(Struct_2(global0.a.x, vec4<bool>(false, false, true, false)), true, -26738i, true)).b, true)), -func_5(vec3<bool>(true, false, false)).a > 10983i, -2147483647i, true).x;
    global1 = array<vec2<f32>, 26>();
    let var_2 = select(select(!select(vec4<bool>(false, true, false, false), select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, true), false), select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, true), false)), !vec4<bool>(true, true, all(vec2<bool>(true, true)), any(vec2<bool>(false, false))), func_5(func_2(Struct_2(0i, vec4<bool>(false, false, false, true)), any(vec2<bool>(true, true)), _wgslsmith_add_i32(9372i, -2147483647i), true)).b), select(!(!func_5(vec3<bool>(true, true, true)).b), !(!func_5(vec3<bool>(true, false, true)).b), vec4<bool>(func_2(Struct_2(-16876i, vec4<bool>(true, true, true, true)), false, _wgslsmith_mod_i32(u_input.a, 10896i), -1208f >= global0.b.x).x, true, !all(vec3<bool>(false, true, true)), true)), !(!any(vec4<bool>(true, true, false, true))));
    let x = u_input.a;
    s_output = StorageBuffer(364f, _wgslsmith_f_op_vec4_f32(global0.b + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.b.x, -1000f, 389f, global0.b.x) + func_1(Struct_3(Struct_2(global0.a.x, vec4<bool>(true, true, var_2.x, var_2.x)), vec3<bool>(var_2.x, false, var_2.x), 1553f, var_2.x), Struct_2(global0.a.x, var_2), -1i, -580f).b))));
}


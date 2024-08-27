struct Struct_1 {
    a: bool,
    b: vec2<i32>,
    c: f32,
}

struct Struct_2 {
    a: f32,
    b: vec4<u32>,
    c: Struct_1,
    d: vec4<bool>,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec4<u32>,
    d: vec4<u32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: u32,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 14>;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_2) -> bool {
    var var_0 = arg_1.d.zzx;
    var var_1 = vec2<bool>(false, !all(vec3<bool>(true, select(arg_0.a, false, arg_0.a), arg_1.e.a)));
    var_0 = arg_1.d.yyw;
    let var_2 = u_input.c.x;
    let var_3 = var_0.x;
    return arg_1.e.a;
}

fn func_3(arg_0: vec4<bool>, arg_1: u32, arg_2: Struct_2, arg_3: Struct_1) -> bool {
    var var_0 = _wgslsmith_sub_vec2_i32(select(_wgslsmith_add_vec2_i32(select(abs(arg_3.b), countOneBits(arg_3.b), vec2<bool>(arg_0.x, arg_2.e.a)), reverseBits(abs(arg_3.b))), arg_3.b, false), countOneBits(vec2<i32>(select(-1i, ~(-7446i), false), u_input.a)));
    let var_1 = firstTrailingBit(-max(46994i, u_input.a)) >> (u_input.c.x % 32u);
    global0 = array<vec3<i32>, 14>();
    let var_2 = Struct_2(-455f, ~_wgslsmith_clamp_vec4_u32(firstTrailingBit(u_input.d), arg_2.b, arg_2.b), Struct_1(any(vec2<bool>(select(true, true, arg_3.a), any(arg_0.wyw))), countOneBits(arg_3.b), _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_3.c, arg_3.c) - arg_3.c)), !vec4<bool>(arg_3.c == _wgslsmith_f_op_f32(select(arg_2.c.c, 2235f, true)), arg_2.e.a, any(vec2<bool>(false, true)), max(53241u, 0u) > ~u_input.e.x), arg_2.c);
    var_0 = min(-_wgslsmith_mult_vec2_i32(~vec2<i32>(arg_2.e.b.x, 1i), vec2<i32>(0i, u_input.a) | ~vec2<i32>(var_1, var_1)), var_2.e.b);
    return arg_2.c.a;
}

fn func_4(arg_0: vec4<bool>, arg_1: vec2<u32>) -> vec4<bool> {
    global0 = array<vec3<i32>, 14>();
    return arg_0;
}

fn func_1(arg_0: vec2<u32>, arg_1: u32) -> vec4<bool> {
    let var_0 = Struct_1((-598f == _wgslsmith_f_op_f32(sign(123f))) || (_wgslsmith_mod_u32(~u_input.c.x, arg_1) > 1u), abs(~(~(-vec2<i32>(u_input.a, u_input.a)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-692f - 1130f)))) + -1511f));
    global0 = array<vec3<i32>, 14>();
    global0 = array<vec3<i32>, 14>();
    return func_4(vec4<bool>(u_input.d.x <= countOneBits(~4294967295u), !(!func_2(var_0, Struct_2(128f, u_input.d, Struct_1(true, var_0.b, var_0.c), vec4<bool>(true, true, var_0.a, var_0.a), Struct_1(var_0.a, vec2<i32>(u_input.a, 0i), var_0.c)))), func_3(vec4<bool>(true, true, var_0.a, var_0.a), ~(~80031u), Struct_2(-120f, countOneBits(vec4<u32>(7460u, u_input.b.x, 6795u, 0u)), var_0, !vec4<bool>(var_0.a, var_0.a, false, var_0.a), Struct_1(true, var_0.b, var_0.c)), Struct_1(var_0.a, -var_0.b, _wgslsmith_f_op_f32(f32(-1f) * -1465f))), !(true || (var_0.a & false))), arg_0 << (u_input.d.zx % vec2<u32>(32u)));
}

fn func_5(arg_0: bool, arg_1: Struct_1, arg_2: f32) -> Struct_1 {
    return arg_1;
}

fn func_6(arg_0: Struct_2, arg_1: Struct_1) -> Struct_2 {
    let var_0 = Struct_1(func_2(Struct_1(false, arg_0.c.b, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_0.a)))), Struct_2(arg_1.c, select(vec4<u32>(arg_0.b.x, u_input.d.x, 0u, 56461u), vec4<u32>(0u, u_input.b.x, arg_0.b.x, 1u), true) | _wgslsmith_mod_vec4_u32(arg_0.b, vec4<u32>(arg_0.b.x, 4294967295u, u_input.d.x, arg_0.b.x)), func_5(all(arg_0.d.wx), arg_0.e, _wgslsmith_f_op_f32(-arg_1.c)), !arg_0.d, Struct_1(arg_1.a, vec2<i32>(u_input.a, 4112i) & vec2<i32>(1927i, arg_0.c.b.x), _wgslsmith_f_op_f32(arg_0.c.c - -713f)))), -vec2<i32>(-2147483647i, -4009i), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.c * 298f)), _wgslsmith_f_op_f32(floor(-250f))));
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<i32>, 14>();
    let var_0 = func_6(Struct_2(1f, _wgslsmith_div_vec4_u32(u_input.c, ~vec4<u32>(1u, u_input.e.x, u_input.c.x, u_input.e.x)) | (u_input.d >> (~u_input.d % vec4<u32>(32u))), Struct_1(true, vec2<i32>(i32(-1i) * -27173i, u_input.a >> (u_input.b.x % 32u)), -1567f), !vec4<bool>(true, true, all(vec4<bool>(false, true, true, true)), false), func_5(all(func_1(vec2<u32>(u_input.b.x, 30164u), 93364u)), Struct_1(true, abs(vec2<i32>(-23655i, -1i)), -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-226f))))), func_5(false, Struct_1(true, _wgslsmith_div_vec2_i32(vec2<i32>(-1i, 23219i), ~vec2<i32>(u_input.a, -25477i)), 527f), -139f));
    var var_1 = var_0.c;
    var var_2 = ~_wgslsmith_dot_vec3_u32(firstLeadingBit(var_0.b.wxx), u_input.c.zww) >> (0u % 32u);
    var var_3 = select(_wgslsmith_div_vec3_u32(var_0.b.wzx, vec3<u32>(abs(u_input.d.x), 4294967295u, countOneBits(max(var_0.b.x, var_0.b.x)))), countOneBits(_wgslsmith_mod_vec3_u32(select(vec3<u32>(u_input.d.x, u_input.d.x, var_0.b.x), _wgslsmith_clamp_vec3_u32(vec3<u32>(var_0.b.x, var_0.b.x, 0u), vec3<u32>(var_0.b.x, 4294967295u, 1u), var_0.b.xyy), !vec3<bool>(var_0.d.x, var_0.c.a, var_0.d.x)), _wgslsmith_mult_vec3_u32(var_0.b.yyy, vec3<u32>(0u, u_input.e.x, u_input.b.x)) | vec3<u32>(var_0.b.x, 38109u, 1u))), true);
    var var_4 = var_0.e;
    var var_5 = func_6(Struct_2(-1277f, ~firstTrailingBit(max(vec4<u32>(u_input.c.x, 4294967295u, 0u, var_3.x), vec4<u32>(var_3.x, var_0.b.x, 30987u, var_3.x))), func_5(!var_1.a, var_0.c, var_4.c), !var_0.d, func_6(var_0, func_5(var_1.a && false, var_0.c, _wgslsmith_f_op_f32(911f - 598f))).c), Struct_1(var_1.a, vec2<i32>(-1i) * -var_4.b, _wgslsmith_f_op_f32(f32(-1f) * -305f)));
    var_1 = var_0.c;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_5.a)), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -664f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_5.c.c, 306f)))))), ~min(func_6(var_0, Struct_1(false, var_4.b, var_5.c.c)).b.x, var_3.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1643f * 964f))))) - var_5.c.c), var_4.c);
}


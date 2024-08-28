struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec3<u32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: u32,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: array<vec4<f32>, 6>;

var<private> global2: i32 = 0i;

var<private> global3: u32 = 4294967295u;

var<private> global4: bool;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: Struct_1, arg_1: f32, arg_2: Struct_3) -> bool {
    var var_0 = select(!vec4<bool>(31589i > ~u_input.a.x, arg_0.a, !all(vec2<bool>(false, false)), true), vec4<bool>((arg_0.a & (arg_1 < arg_1)) == true, u_input.a.x == arg_2.a.x, all(select(vec4<bool>(arg_0.a, arg_0.a, arg_0.a, arg_0.a), vec4<bool>(arg_0.a, arg_0.a, false, arg_0.a), false)), !arg_0.a && all(select(vec2<bool>(arg_0.a, arg_0.a), vec2<bool>(arg_0.a, true), true))), select(!vec4<bool>(all(vec3<bool>(false, true, arg_0.a)), arg_0.a, all(vec2<bool>(false, true)), u_input.b != 25903u), !select(!vec4<bool>(true, arg_0.a, true, arg_0.a), !vec4<bool>(arg_0.a, true, arg_0.a, arg_0.a), !vec4<bool>(arg_0.a, arg_0.a, true, arg_0.a)), select(vec4<bool>(arg_0.a, any(vec2<bool>(false, arg_0.a)), true, !arg_0.a), !(!vec4<bool>(arg_0.a, arg_0.a, true, arg_0.a)), true)));
    var var_1 = arg_2.a.x;
    var var_2 = _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, 18577i, arg_2.a.x), u_input.a) >> (select(~u_input.b, u_input.c.x, true) % 32u);
    let var_3 = _wgslsmith_f_op_f32(f32(-1f) * -1012f);
    let var_4 = Struct_2(_wgslsmith_add_vec3_i32(u_input.a, vec3<i32>(-59338i, -1i, select(arg_2.a.x, u_input.a.x, true))), Struct_1(!(true & !var_0.x)));
    return var_0.x;
}

fn func_2(arg_0: vec4<u32>, arg_1: Struct_1) -> f32 {
    global0 = all(vec4<bool>(arg_1.a, all(select(vec4<bool>(true, arg_1.a, arg_1.a, arg_1.a), !vec4<bool>(arg_1.a, arg_1.a, true, true), true)), !func_3(arg_1, 1287f, Struct_3(vec2<i32>(u_input.a.x, 0i))), !(_wgslsmith_mult_i32(u_input.a.x, 0i) < _wgslsmith_mult_i32(1556i, u_input.a.x))));
    global1 = array<vec4<f32>, 6>();
    return _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-864f)) - _wgslsmith_div_f32(707f, -910f)))))));
}

fn func_1(arg_0: vec2<i32>, arg_1: Struct_3) -> Struct_3 {
    global1 = array<vec4<f32>, 6>();
    global0 = !all(select(vec2<bool>(true, true), select(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true)), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true)), true), vec2<bool>(true, true)));
    global1 = array<vec4<f32>, 6>();
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(func_2(vec4<u32>(u_input.c.x, 17501u, u_input.c.x, u_input.b), Struct_1(true))), -830f, -519f, _wgslsmith_f_op_f32(-203f * 329f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(sign(289f)), _wgslsmith_f_op_f32(floor(907f)), _wgslsmith_f_op_f32(min(-1000f, -470f)), _wgslsmith_f_op_f32(f32(-1f) * -710f)))));
    var var_1 = true;
    return Struct_3((-firstLeadingBit(arg_0) >> (vec2<u32>(4677u >> (0u % 32u), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 38085u, 1u, 4294967295u), vec4<u32>(34994u, 0u, 8431u, u_input.b))) % vec2<u32>(32u))) ^ ~(~firstTrailingBit(arg_1.a)));
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_3, arg_2: Struct_3, arg_3: vec2<bool>) -> Struct_2 {
    var var_0 = -_wgslsmith_div_i32(_wgslsmith_clamp_i32(-(~arg_2.a.x), _wgslsmith_mod_i32(-1i, 1i), arg_0.x), 0i);
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1962f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-663f))) - 1f)) - -703f);
    var var_2 = any(select(arg_3, vec2<bool>(arg_3.x, true), true));
    var_2 = any(!vec4<bool>(true, true, (4294967295u << (u_input.d.x % 32u)) != (u_input.c.x & 4291u), all(select(vec4<bool>(true, arg_3.x, arg_3.x, false), vec4<bool>(false, arg_3.x, arg_3.x, false), false))));
    return Struct_2(vec3<i32>(arg_2.a.x, _wgslsmith_mod_i32(u_input.a.x, -(~(-27488i))), ~(-(~arg_1.a.x))), Struct_1(arg_3.x));
}

fn func_5(arg_0: vec3<u32>, arg_1: Struct_2, arg_2: f32, arg_3: Struct_2) -> Struct_2 {
    global4 = arg_3.b.a;
    var var_0 = vec4<bool>(true, all(select(!(!vec3<bool>(arg_3.b.a, arg_1.b.a, arg_3.b.a)), select(select(vec3<bool>(arg_1.b.a, arg_3.b.a, false), vec3<bool>(false, false, arg_1.b.a), true), !vec3<bool>(arg_3.b.a, arg_3.b.a, arg_1.b.a), !vec3<bool>(false, arg_3.b.a, arg_3.b.a)), any(!vec3<bool>(arg_3.b.a, arg_3.b.a, arg_1.b.a)))), true, func_3(arg_3.b, -450f, func_1(reverseBits(abs(arg_3.a.xy)), func_1(vec2<i32>(arg_1.a.x, u_input.a.x) >> (vec2<u32>(u_input.b, arg_0.x) % vec2<u32>(32u)), Struct_3(vec2<i32>(-34877i, 33388i))))));
    var var_1 = arg_2;
    var var_2 = max(~(~abs(arg_0)), _wgslsmith_sub_vec3_u32(~(u_input.d ^ ~arg_0), _wgslsmith_add_vec3_u32(~vec3<u32>(u_input.c.x, 89582u, u_input.b) & (vec3<u32>(0u, u_input.c.x, u_input.b) << (vec3<u32>(12124u, 7137u, arg_0.x) % vec3<u32>(32u))), vec3<u32>(1u, _wgslsmith_dot_vec2_u32(arg_0.xy, arg_0.zx), arg_0.x))));
    var var_3 = var_2.x;
    return arg_3;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(false);
    let var_1 = countOneBits(u_input.a.yy);
    global2 = _wgslsmith_mult_i32(var_1.x, u_input.a.x);
    let var_2 = vec4<bool>(true, var_0.a, !all(vec2<bool>(true, true)), true);
    let var_3 = func_5(vec3<u32>(abs(u_input.b), abs(22408u), ~15774u), func_4(_wgslsmith_sub_vec2_i32(u_input.a.xy, abs(var_1)), Struct_3(_wgslsmith_sub_vec2_i32(~var_1, ~u_input.a.xx)), func_1(min(select(var_1, var_1, var_2.zx), _wgslsmith_div_vec2_i32(vec2<i32>(2147483647i, u_input.a.x), var_1)), Struct_3(var_1)), select(select(select(var_2.xz, vec2<bool>(true, false), var_0.a), vec2<bool>(false, var_2.x), !vec2<bool>(var_2.x, var_0.a)), !(!var_2.ww), func_3(Struct_1(true), _wgslsmith_f_op_f32(floor(175f)), Struct_3(vec2<i32>(2147483647i, var_1.x))))), -211f, func_4(var_1, func_1(vec2<i32>(func_4(vec2<i32>(u_input.a.x, -12446i), Struct_3(u_input.a.xz), Struct_3(vec2<i32>(-2147483647i, -2147483647i)), var_2.wz).a.x, abs(-10807i)), func_1(var_1, Struct_3(vec2<i32>(1i, var_1.x)))), Struct_3(~(-var_1)), vec2<bool>(true, var_2.x)));
    var var_4 = ~u_input.b;
    global0 = true;
    let x = u_input.a;
    s_output = StorageBuffer(select(firstTrailingBit(vec2<u32>(107748u, _wgslsmith_mod_u32(1u, u_input.c.x))), min(vec2<u32>(u_input.d.x, ~u_input.d.x), vec2<u32>(132903u, ~1u)), !select(!vec2<bool>(var_2.x, false), vec2<bool>(var_2.x, true), var_2.wy)), ~u_input.c.xy, ~_wgslsmith_mult_u32(~(~u_input.c.x), 73201u), u_input.a.x | max(max(-12966i, min(-1i, var_1.x)), -6555i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-2352f - _wgslsmith_f_op_f32(select(1000f, -253f, false)))))));
}


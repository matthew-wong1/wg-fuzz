struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec2<i32>,
}

struct Struct_3 {
    a: u32,
    b: vec4<f32>,
    c: bool,
    d: vec2<i32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: i32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: f32,
    d: vec4<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 22>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_2(arg_0: vec3<i32>, arg_1: vec2<bool>, arg_2: u32) -> bool {
    let var_0 = vec2<i32>(1i, 2147483647i);
    var var_1 = Struct_2(var_0);
    global0 = array<Struct_3, 22>();
    var var_2 = !any(vec2<bool>(!arg_1.x | !arg_1.x, arg_1.x));
    var var_3 = vec4<u32>(_wgslsmith_sub_u32(0u >> (arg_2 % 32u), 0u), arg_2, ~arg_2, arg_2);
    return true;
}

fn func_3(arg_0: bool, arg_1: vec3<f32>, arg_2: bool) -> vec2<bool> {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-255f, _wgslsmith_f_op_f32(ceil(191f)), -1500f), arg_1))) - vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_1.x * _wgslsmith_f_op_f32(arg_1.x - arg_1.x)))), arg_1.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(251f * 389f)))));
    var var_1 = Struct_3(u_input.d.x, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(672f, 1000f)), _wgslsmith_f_op_f32(-arg_1.x), -486f, -2192f) * vec4<f32>(arg_1.x, 292f, _wgslsmith_f_op_f32(step(276f, 963f)), arg_1.x)), all(select(vec4<bool>(-856f < var_0.x, !arg_0, arg_2, arg_2 || true), select(!vec4<bool>(true, false, true, arg_0), vec4<bool>(arg_2, true, true, false), vec4<bool>(true, true, true, false)), all(vec4<bool>(true, false, false, arg_2)) & select(arg_0, arg_2, arg_0))), vec2<i32>(~(-u_input.b), 2147483647i), Struct_1(0u));
    let var_2 = _wgslsmith_f_op_f32(select(var_1.b.x, 714f, any(select(select(!vec3<bool>(arg_2, false, false), select(vec3<bool>(var_1.c, false, arg_2), vec3<bool>(arg_0, var_1.c, false), vec3<bool>(var_1.c, var_1.c, arg_0)), var_1.c && arg_2), vec3<bool>(var_1.c && arg_2, func_2(u_input.a, vec2<bool>(true, arg_0), u_input.d.x), true), vec3<bool>(false, !var_1.c, all(vec2<bool>(true, arg_2)))))));
    global0 = array<Struct_3, 22>();
    let var_3 = Struct_2(vec2<i32>(_wgslsmith_mult_i32(27196i, ~var_1.d.x | 2147483647i), _wgslsmith_dot_vec3_i32(max(u_input.a, ~vec3<i32>(1i, u_input.b, u_input.b)), firstLeadingBit(u_input.a))));
    return !(!select(select(select(vec2<bool>(false, true), vec2<bool>(var_1.c, var_1.c), vec2<bool>(arg_0, var_1.c)), !vec2<bool>(arg_0, true), any(vec4<bool>(arg_0, false, false, false))), vec2<bool>(false, var_1.c), !vec2<bool>(var_1.c, var_1.c)));
}

fn func_4(arg_0: vec2<bool>) -> bool {
    global0 = array<Struct_3, 22>();
    global0 = array<Struct_3, 22>();
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-604f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2043f) - -127f)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(ceil(183f)), _wgslsmith_f_op_f32(484f - 167f)) * vec2<f32>(_wgslsmith_f_op_f32(max(261f, -1226f)), _wgslsmith_f_op_f32(-467f * -1192f)))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, -919f)) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1f, 1f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(239f, -199f)), vec2<bool>(arg_0.x, u_input.d.x <= 0u)))));
    let var_1 = u_input.a.x;
    let var_2 = global0[_wgslsmith_index_u32(countOneBits(16849u), 22u)];
    return -1643f <= _wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_0.x, 1000f))));
}

fn func_1(arg_0: Struct_3) -> Struct_2 {
    global0 = array<Struct_3, 22>();
    let var_0 = (any(select(!vec4<bool>(true, arg_0.c, false, true), select(vec4<bool>(arg_0.c, true, arg_0.c, arg_0.c), vec4<bool>(false, arg_0.c, true, true), arg_0.c), arg_0.c == arg_0.c)) & !func_2(~u_input.a, vec2<bool>(true, true), ~arg_0.e.a)) == func_4(!func_3(true, _wgslsmith_f_op_vec3_f32(arg_0.b.zyx * arg_0.b.zzw), arg_0.c));
    global0 = array<Struct_3, 22>();
    var var_1 = select(select(select(!select(vec4<bool>(true, false, var_0, arg_0.c), vec4<bool>(var_0, var_0, var_0, true), vec4<bool>(false, false, false, arg_0.c)), !select(vec4<bool>(true, arg_0.c, true, var_0), vec4<bool>(true, arg_0.c, true, var_0), var_0), var_0), vec4<bool>(arg_0.c, !var_0, true, !(!var_0)), false), select(vec4<bool>(arg_0.e.a < 84854u, true, true || arg_0.c, var_0), !(!select(vec4<bool>(arg_0.c, arg_0.c, true, var_0), vec4<bool>(var_0, arg_0.c, false, var_0), false)), !(!(!vec4<bool>(true, arg_0.c, var_0, true)))), vec4<bool>(true, all(vec4<bool>(true, !arg_0.c, true, func_2(u_input.a, vec2<bool>(var_0, false), arg_0.a))), func_2(abs(firstTrailingBit(vec3<i32>(2147483647i, arg_0.d.x, -1i))), !vec2<bool>(arg_0.c, false), arg_0.e.a), true));
    var_1 = vec4<bool>(var_0, arg_0.c, any(vec2<bool>(!arg_0.c, false)), arg_0.c);
    return Struct_2(vec2<i32>(-u_input.b, ~abs(2147483647i)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(~u_input.d.x, ~(~0u)), abs(~_wgslsmith_add_vec2_u32(vec2<u32>(u_input.d.x, u_input.d.x), u_input.d))), 22u)]);
    var var_1 = all(!vec2<bool>(all(vec3<bool>(true, true, true)), true));
    var var_2 = Struct_1(u_input.d.x);
    let var_3 = global0[_wgslsmith_index_u32(countOneBits(firstLeadingBit(~(~(~var_2.a)))), 22u)];
    var var_4 = vec4<i32>(_wgslsmith_div_i32(-(i32(-1i) * -7790i), _wgslsmith_div_i32(countOneBits(min(-18614i, -2147483647i)), u_input.b)), var_3.d.x, 21949i, var_3.d.x);
    var_2 = Struct_1(34915u);
    let x = u_input.a;
    s_output = StorageBuffer(select(~((vec4<u32>(79256u, var_2.a, 48310u, 4294967295u) << (vec4<u32>(u_input.d.x, 41865u, var_2.a, 6462u) % vec4<u32>(32u))) ^ (vec4<u32>(37768u, 14305u, u_input.d.x, var_2.a) >> (vec4<u32>(0u, 1u, 0u, 20198u) % vec4<u32>(32u)))), ~reverseBits(vec4<u32>(var_2.a, var_2.a, 33317u, u_input.d.x) >> (vec4<u32>(var_3.a, 16756u, var_2.a, 57976u) % vec4<u32>(32u))), select(select(!vec4<bool>(false, true, true, var_3.c), select(vec4<bool>(true, true, var_3.c, false), vec4<bool>(false, var_3.c, var_3.c, true), true), vec4<bool>(var_3.c, var_3.c, false, true)), select(!vec4<bool>(true, var_3.c, var_3.c, true), vec4<bool>(false, false, true, var_3.c), select(vec4<bool>(true, true, false, var_3.c), vec4<bool>(var_3.c, false, false, var_3.c), false)), select(!vec4<bool>(false, var_3.c, false, var_3.c), !vec4<bool>(true, var_3.c, var_3.c, true), vec4<bool>(var_3.c, var_3.c, true, true)))), 1u, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.b.x)), _wgslsmith_f_op_f32(sign(var_3.b.x))), select(~abs(firstLeadingBit(vec4<u32>(111408u, 1u, u_input.d.x, 1u))), ~min(~vec4<u32>(u_input.d.x, var_2.a, u_input.d.x, var_2.a), vec4<u32>(62561u, var_3.a, var_3.a, var_3.a) << (vec4<u32>(0u, var_3.a, var_3.a, var_2.a) % vec4<u32>(32u))), vec4<bool>(func_2(_wgslsmith_add_vec3_i32(u_input.a, var_4.wzy), !vec2<bool>(false, var_3.c), 4294967295u), func_3(var_3.c != false, var_3.b.zxx, all(vec3<bool>(var_3.c, false, var_3.c))).x, true, var_3.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.b.x))));
}


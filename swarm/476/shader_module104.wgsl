struct Struct_1 {
    a: vec4<i32>,
    b: vec2<bool>,
    c: f32,
}

struct Struct_2 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: i32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_2() -> bool {
    return true;
}

fn func_3(arg_0: vec4<bool>, arg_1: vec2<i32>, arg_2: vec3<bool>, arg_3: i32) -> Struct_1 {
    let var_0 = Struct_2(select(arg_2.zz, !arg_0.zx, select(!select(arg_2.yz, arg_0.zw, false), !arg_0.yy, arg_2.x)));
    var var_1 = _wgslsmith_sub_u32(49085u, u_input.b.x);
    var_1 = u_input.b.x;
    let var_2 = vec4<f32>(685f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-278f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1129f, 1000f, arg_2.x)) - -760f), 649f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-182f * 163f), -1000f)))), -1247f);
    let var_3 = var_0;
    return Struct_1(vec4<i32>(_wgslsmith_clamp_i32(-2147483647i, u_input.a.x, countOneBits(14374i)), _wgslsmith_dot_vec2_i32(-(~arg_1), vec2<i32>(u_input.c, 1i)), -26935i, ~(-max(-35341i, u_input.a.x))), select(vec2<bool>(!arg_2.x, !(!arg_0.x)), vec2<bool>(!any(vec4<bool>(var_0.a.x, arg_0.x, true, arg_0.x)), var_0.a.x), vec2<bool>(true, var_0.a.x)), 769f);
}

fn func_1(arg_0: vec3<f32>) -> Struct_2 {
    let var_0 = u_input.b;
    let var_1 = -(select(firstLeadingBit(min(vec3<i32>(-28432i, 42233i, u_input.c), vec3<i32>(-20163i, u_input.a.x, u_input.a.x))), vec3<i32>(-5749i, -1921i, min(u_input.a.x, -30077i)), true) & ~(_wgslsmith_sub_vec3_i32(vec3<i32>(16198i, u_input.a.x, 1i), vec3<i32>(u_input.c, u_input.c, -2147483647i)) & vec3<i32>(u_input.c, 0i, -34537i)));
    let var_2 = func_3(vec4<bool>(var_0.x == _wgslsmith_dot_vec4_u32(vec4<u32>(86260u, var_0.x, u_input.b.x, 25085u), ~vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 1u)), select(true, false, _wgslsmith_f_op_f32(ceil(arg_0.x)) == _wgslsmith_f_op_f32(min(arg_0.x, 509f))), all(vec2<bool>(u_input.a.x <= 31970i, true)), func_2()), -(~(firstTrailingBit(u_input.a) << (u_input.b.xx % vec2<u32>(32u)))), vec3<bool>(true, true, true), -2147483647i);
    var var_3 = -31954i | firstTrailingBit(func_3(!vec4<bool>(false, false, false, var_2.b.x), firstTrailingBit(-u_input.a), !vec3<bool>(var_2.b.x, var_2.b.x, false), u_input.a.x).a.x);
    var var_4 = func_3(!vec4<bool>(true, (66603u & u_input.b.x) > u_input.b.x, _wgslsmith_f_op_f32(-245f + arg_0.x) > var_2.c, var_2.b.x), var_2.a.yx, vec3<bool>(true, true, true), _wgslsmith_add_i32(var_2.a.x, ~abs(var_2.a.x)));
    return Struct_2(func_3(vec4<bool>(abs(u_input.b.x) <= 5642u, !(!var_2.b.x), !var_4.b.x, var_4.b.x), -vec2<i32>(u_input.a.x, var_2.a.x), select(vec3<bool>(func_2(), select(var_2.b.x, true, false), var_2.b.x), vec3<bool>(any(var_4.b), var_4.b.x, var_4.b.x), var_2.b.x), ~2147483647i).b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(-494f, 1650f, 148f) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-190f, -3058f, 1141f)))))));
    var var_1 = firstTrailingBit(_wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(select(-vec4<i32>(-72567i, -54572i, u_input.a.x, u_input.a.x), vec4<i32>(u_input.c, -2147483647i, 12338i, u_input.a.x) | vec4<i32>(u_input.a.x, 25198i, -16857i, 0i), select(vec4<bool>(false, false, var_0.a.x, var_0.a.x), vec4<bool>(var_0.a.x, var_0.a.x, true, true), var_0.a.x)), vec4<i32>(0i, -24104i, 6692i, u_input.a.x) | vec4<i32>(u_input.a.x, -1i, -76804i, u_input.a.x)), u_input.c));
    var var_2 = Struct_1(vec4<i32>(~(~_wgslsmith_div_i32(u_input.c, u_input.c)), u_input.c >> (u_input.b.x % 32u), u_input.c, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, u_input.c, u_input.c), vec3<i32>(u_input.c, u_input.c, u_input.a.x))), vec2<bool>(func_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(693f, -383f, -127f)))).a.x, true), -1106f);
    var var_3 = var_0.a.x;
    var_1 = 1i;
    let x = u_input.a;
    s_output = StorageBuffer(var_2.c, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, var_2.c, var_2.c))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.c, 459f, 784f)))), _wgslsmith_dot_vec2_i32(var_2.a.yz, u_input.a), vec4<f32>(-984f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_2.c)))), var_2.c, _wgslsmith_f_op_f32(step(var_2.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.c))))));
}


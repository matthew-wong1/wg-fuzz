struct Struct_1 {
    a: vec3<bool>,
    b: bool,
    c: i32,
    d: bool,
    e: vec2<i32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec4<bool>,
    c: vec4<f32>,
    d: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: vec3<i32>,
    c: vec4<u32>,
    d: f32,
    e: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec2<u32>,
    d: vec3<u32>,
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

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: u32, arg_1: f32, arg_2: vec3<u32>) -> u32 {
    return ~arg_0;
}

fn func_2(arg_0: u32) -> Struct_4 {
    var var_0 = vec3<bool>((_wgslsmith_div_f32(-270f, _wgslsmith_f_op_f32(f32(-1f) * -182f)) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1000f)))) && all(!select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, true), true)), !(_wgslsmith_sub_u32(func_3(u_input.c.x, 753f, vec3<u32>(u_input.c.x, 44339u, arg_0)), abs(u_input.d.x)) != _wgslsmith_add_u32(0u, 1u)), true);
    let var_1 = Struct_3(i32(-1i) * -1i, Struct_1(select(select(!vec3<bool>(true, var_0.x, true), select(vec3<bool>(var_0.x, var_0.x, false), vec3<bool>(false, false, var_0.x), var_0.x), vec3<bool>(var_0.x, var_0.x, false)), vec3<bool>(true | var_0.x, !var_0.x, var_0.x), true != (false || var_0.x)), _wgslsmith_dot_vec2_u32(select(u_input.d.yy, vec2<u32>(25773u, u_input.c.x), var_0.zy), u_input.d.yx) <= u_input.c.x, u_input.b, var_0.x, vec2<i32>(-6056i, u_input.a.x)), Struct_2(vec2<i32>(max(u_input.b, u_input.b), u_input.a.x) | select(firstTrailingBit(vec2<i32>(u_input.b, 1i)), _wgslsmith_clamp_vec2_i32(vec2<i32>(8122i, -2147483647i), vec2<i32>(-9953i, 44929i), u_input.a.xw), !vec2<bool>(var_0.x, var_0.x)), vec4<bool>(!var_0.x, u_input.b <= ~u_input.b, any(select(vec2<bool>(var_0.x, var_0.x), vec2<bool>(true, var_0.x), vec2<bool>(true, true))), true), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(813f, 885f, 904f, -730f) - vec4<f32>(-242f, -1053f, 550f, 1353f)))), Struct_1(!(!vec3<bool>(var_0.x, true, false)), select(true, any(vec3<bool>(var_0.x, false, var_0.x)), var_0.x), u_input.a.x, true, ~firstLeadingBit(u_input.a.xw))));
    let var_2 = ~vec2<u32>(_wgslsmith_div_u32(~_wgslsmith_div_u32(arg_0, 4294967295u), ~(~14043u)), 30917u);
    var_0 = !vec3<bool>(var_1.c.d.d, true, var_1.c.d.a.x);
    var_0 = select(!vec3<bool>(true, var_0.x & any(vec4<bool>(false, var_0.x, var_1.c.d.b, false)), all(!vec3<bool>(var_0.x, var_0.x, var_1.b.d))), !var_1.c.b.xwy, !select(select(!var_1.c.b.zzw, select(var_1.c.d.a, var_1.b.a, vec3<bool>(true, false, true)), var_1.b.a), var_1.b.a, !all(var_0.yx)));
    return Struct_4(Struct_2(_wgslsmith_div_vec2_i32(vec2<i32>(u_input.b, 9820i), vec2<i32>(var_1.a, u_input.a.x)) | var_1.c.a, select(vec4<bool>(true && var_1.b.b, true, var_0.x || false, true), select(select(var_1.c.b, vec4<bool>(false, true, var_1.b.d, var_0.x), var_1.c.d.a.x), select(var_1.c.b, vec4<bool>(false, true, var_0.x, var_1.b.d), vec4<bool>(false, true, var_0.x, true)), all(var_0.xx)), !var_1.c.b), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)), Struct_1(var_1.b.a, true, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, var_1.b.c, 2147483647i), vec3<i32>(u_input.a.x, -43115i, u_input.b) >> (vec3<u32>(arg_0, u_input.c.x, 4294967295u) % vec3<u32>(32u))), !var_0.x, vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, var_1.c.a.x), vec3<i32>(-1i, u_input.b, u_input.a.x)), 2147483647i))), vec3<i32>(-_wgslsmith_add_i32(i32(-1i) * -1i, i32(-1i) * -11762i), -3696i, -var_1.b.e.x), ~(~vec4<u32>(u_input.c.x, u_input.c.x, arg_0, ~arg_0)), var_1.c.c.x, (var_1.b.e.x ^ -var_1.a) <= (select(_wgslsmith_sub_i32(-22465i, u_input.a.x), u_input.b, true) | u_input.a.x));
}

fn func_4(arg_0: Struct_4, arg_1: Struct_2, arg_2: Struct_4, arg_3: Struct_1) -> Struct_4 {
    var var_0 = func_2(1u).a.d;
    var_0 = arg_1.d;
    let var_1 = ~_wgslsmith_dot_vec2_u32(vec2<u32>(1u, arg_0.c.x), arg_2.c.xx) & min(~select(~1u, 77234u, any(vec4<bool>(false, var_0.a.x, false, false))), ~arg_2.c.x);
    let var_2 = Struct_3(~(~(-(i32(-1i) * -22384i))), func_2(~var_1).a.d, arg_0.a);
    let var_3 = arg_2.a;
    return arg_2;
}

fn func_1() -> Struct_4 {
    let var_0 = func_4(func_2(12197u), func_2(func_3(select(_wgslsmith_add_u32(67078u, u_input.c.x), abs(12160u), true), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -221f))), abs(vec3<u32>(u_input.d.x, 6817u, u_input.c.x)))).a, func_2(min(~select(1u, 14745u, true), func_3(abs(0u), _wgslsmith_f_op_f32(min(113f, -2080f)), abs(u_input.d)))), func_2(u_input.d.x).a.d);
    return func_4(var_0, var_0.a, func_4(var_0, var_0.a, func_4(var_0, Struct_2(~vec2<i32>(u_input.a.x, var_0.a.a.x), select(var_0.a.b, vec4<bool>(true, var_0.a.b.x, false, true), var_0.a.b), func_4(var_0, var_0.a, Struct_4(Struct_2(vec2<i32>(16616i, u_input.b), var_0.a.b, var_0.a.c, var_0.a.d), var_0.b, vec4<u32>(15300u, var_0.c.x, u_input.d.x, 83371u), -161f, false), var_0.a.d).a.c, func_4(var_0, var_0.a, var_0, Struct_1(var_0.a.b.wxw, true, var_0.a.a.x, true, var_0.a.d.e)).a.d), func_2(u_input.d.x << (4294967295u % 32u)), var_0.a.d), var_0.a.d), Struct_1(vec3<bool>(false, var_0.e, all(!vec3<bool>(true, true, var_0.a.b.x))), !var_0.a.d.a.x, -1574i ^ (i32(-1i) * -var_0.b.x), 1u <= ~(u_input.c.x | u_input.c.x), -vec2<i32>(-var_0.b.x, 0i)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(~0u);
    let var_1 = ~(u_input.d | vec3<u32>(u_input.d.x, u_input.d.x, 1u));
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-254f, -116f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(536f, 1000f)))))));
    let var_3 = func_1();
    var var_4 = var_3.a.b;
    let x = u_input.a;
    s_output = StorageBuffer(-461f, _wgslsmith_add_vec2_i32(func_2(_wgslsmith_div_u32(abs(1u), ~var_1.x)).b.yx, u_input.a.yy));
}


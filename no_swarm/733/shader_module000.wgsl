struct Struct_1 {
    a: f32,
    b: vec4<u32>,
    c: u32,
    d: i32,
    e: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: array<vec4<f32>, 12>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_1(arg_0: Struct_1, arg_1: f32, arg_2: Struct_2, arg_3: bool) -> i32 {
    let var_0 = any(vec3<bool>(true && arg_3, global0.x, global0.x));
    var var_1 = arg_2.a;
    let var_2 = !var_1.e.x;
    global0 = !vec2<bool>(any(select(vec3<bool>(arg_0.e.x, arg_0.e.x, var_0), vec3<bool>(var_0, true, false), !vec3<bool>(arg_0.e.x, true, false))), all(!select(arg_2.a.e.yww, vec3<bool>(global0.x, true, var_1.e.x), var_1.e.wxx)));
    let var_3 = min(~(~100461u) << (0u % 32u), var_1.b.x);
    return _wgslsmith_div_i32(-1i, -12305i);
}

fn func_2(arg_0: i32, arg_1: Struct_2) -> Struct_2 {
    let var_0 = arg_1;
    global0 = vec2<bool>(!global0.x, global0.x);
    var var_1 = Struct_2(Struct_1(var_0.a.a, ~(~arg_1.a.b), ~_wgslsmith_div_u32(arg_1.a.c, max(arg_1.a.c, arg_1.a.b.x)), arg_1.a.d, vec4<bool>(true, all(var_0.a.e.wzz) || false, var_0.a.e.x, arg_1.a.e.x)), arg_1.a.e.wy);
    global0 = var_1.b;
    var var_2 = vec3<bool>(false, all(!(!(!vec2<bool>(var_0.b.x, arg_1.a.e.x)))), true);
    return arg_1;
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_1) -> Struct_2 {
    let var_0 = arg_1;
    var var_1 = -1i;
    var var_2 = _wgslsmith_mult_vec3_i32(select(~vec3<i32>(var_0.d, arg_1.d, arg_1.d), -abs(vec3<i32>(-39587i, 2147483647i, var_0.d)), vec3<bool>(false == arg_1.e.x, any(vec4<bool>(global0.x, false, true, false)), -2147483647i < arg_1.d)) << (~vec3<u32>(arg_1.b.x, _wgslsmith_sub_u32(arg_1.c, 2848u), max(4294967295u, arg_0.x)) % vec3<u32>(32u)), abs(~select(-vec3<i32>(var_0.d, -43447i, 6739i), _wgslsmith_add_vec3_i32(vec3<i32>(-65794i, var_0.d, -1i), vec3<i32>(-15966i, var_0.d, 0i)), arg_1.e.zzw)));
    let var_3 = _wgslsmith_f_op_f32(-arg_1.a);
    var var_4 = select(func_2(var_2.x, func_2(var_0.d, func_2(_wgslsmith_add_i32(var_2.x, var_0.d), func_2(-1i, Struct_2(var_0, vec2<bool>(global0.x, true)))))).b.x, var_0.e.x, global0.x);
    return Struct_2(var_0, !arg_1.e.xx);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_2(_wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(select(~vec2<i32>(-37759i, -48115i), vec2<i32>(33076i, 37827i), vec2<bool>(false, global0.x)), vec2<i32>(~23813i, _wgslsmith_sub_i32(-30558i, 1i))), ~select(vec2<i32>(1i, 1i), ~vec2<i32>(-1i, -1i), vec2<bool>(true, global0.x))), Struct_2(Struct_1(1322f, ~min(u_input.a, vec4<u32>(u_input.a.x, u_input.a.x, 1u, u_input.a.x)), ~(~u_input.a.x), ~func_1(Struct_1(1833f, u_input.a, u_input.a.x, 0i, vec4<bool>(global0.x, global0.x, global0.x, false)), -1000f, Struct_2(Struct_1(-1162f, u_input.a, 9555u, -10402i, vec4<bool>(global0.x, true, false, true)), vec2<bool>(false, global0.x)), global0.x), select(select(vec4<bool>(global0.x, true, global0.x, true), vec4<bool>(global0.x, global0.x, global0.x, global0.x), global0.x), !vec4<bool>(global0.x, global0.x, global0.x, false), any(vec4<bool>(true, global0.x, false, global0.x)))), !vec2<bool>(true, global0.x)));
    var var_1 = var_0;
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-1000f * -752f), var_1.a.a);
    var var_3 = func_3(~var_0.a.b, Struct_1(_wgslsmith_f_op_f32(-var_2.x), ~var_0.a.b, 72147u, -2147483647i, select(vec4<bool>(var_2.x >= 799f, var_2.x <= var_0.a.a, global0.x || false, !var_0.b.x), !var_1.a.e, all(vec3<bool>(global0.x, false, var_0.b.x)) != var_0.a.e.x)));
    var var_4 = ~var_1.a.b.wy;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_u32(u_input.a.xww ^ (vec3<u32>(var_3.a.c, var_4.x, 55096u) << (vec3<u32>(var_1.a.c, 0u, var_3.a.b.x) % vec3<u32>(32u))), ~(~_wgslsmith_mult_vec3_u32(vec3<u32>(0u, var_4.x, var_4.x), u_input.a.wyz))), ~vec4<i32>(1i, _wgslsmith_add_i32(-var_3.a.d, -var_1.a.d), -2147483647i, 0i), _wgslsmith_sub_vec2_u32(~vec2<u32>(0u, var_1.a.c) << (~vec2<u32>(var_3.a.c, var_4.x) % vec2<u32>(32u)), _wgslsmith_mult_vec2_u32(vec2<u32>(var_4.x, var_3.a.c), firstTrailingBit(var_1.a.b.zx))) | ((~vec2<u32>(u_input.a.x, 30151u) << (vec2<u32>(46373u, var_3.a.c) % vec2<u32>(32u))) ^ vec2<u32>(u_input.a.x, firstLeadingBit(var_3.a.c))));
}


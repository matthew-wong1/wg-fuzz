struct Struct_1 {
    a: vec4<f32>,
    b: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: i32,
    d: f32,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_2,
    c: u32,
    d: vec2<u32>,
    e: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: f32,
    d: vec2<f32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(vec4<f32>(-389f, -1125f, -137f, -672f), vec4<u32>(29408u, 28491u, 4294967295u, 0u)), 1u, 17230i, 1000f);

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_3) -> f32 {
    let var_0 = arg_1;
    var var_1 = 1u;
    let var_2 = abs(_wgslsmith_add_u32(17291u, arg_1.d.x ^ arg_0.b.x));
    let var_3 = Struct_2(global0.a, select(firstLeadingBit(min(var_2, ~u_input.b.x)), var_2, any(select(vec2<bool>(true, true), select(var_0.a, arg_1.a, var_0.a.x), select(vec2<bool>(false, var_0.a.x), var_0.a, var_0.a.x)))), countOneBits(~2147483647i), arg_0.a.x);
    global0 = Struct_2(Struct_1(vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(arg_1.b.a.a.x, global0.d))), arg_0.a.x, arg_1.b.a.a.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(global0.d)), _wgslsmith_f_op_f32(min(-196f, 142f))))), ~abs(reverseBits(global0.a.b))), ~_wgslsmith_div_u32(1u, select(23425u, _wgslsmith_clamp_u32(36279u, 4294967295u, u_input.b.x), !arg_1.a.x)), var_3.c, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_3.a.a.x), -349f));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2470f) * var_0.b.a.a.x) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1466f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.b.a.a.x + -1433f))) - global0.d));
}

fn func_2(arg_0: u32) -> Struct_3 {
    global0 = Struct_2(Struct_1(vec4<f32>(_wgslsmith_f_op_f32(ceil(global0.d)), _wgslsmith_f_op_f32(-1053f + _wgslsmith_f_op_f32(sign(global0.d))), _wgslsmith_f_op_f32(func_3(Struct_1(vec4<f32>(1882f, global0.d, global0.a.a.x, global0.a.a.x), global0.a.b), Struct_3(vec2<bool>(false, false), Struct_2(global0.a, 18499u, global0.c, -279f), 1u, vec2<u32>(u_input.a.x, arg_0), -51450i))), _wgslsmith_f_op_f32(-global0.a.a.x)), vec4<u32>(1u, min(1u, global0.a.b.x) >> (~global0.a.b.x % 32u), 4294967295u, _wgslsmith_mod_u32(25776u, global0.b))), ~firstTrailingBit(~global0.b) >> (~u_input.b.x % 32u), 1i, _wgslsmith_f_op_f32(-411f + 1175f));
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(global0.a.a * vec4<f32>(_wgslsmith_f_op_f32(ceil(global0.d)), -700f, _wgslsmith_f_op_f32(-global0.d), _wgslsmith_f_op_f32(-260f * -605f))))), vec4<u32>(global0.b, max(_wgslsmith_mult_u32(global0.a.b.x, ~80488u), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, global0.b, 43474u), vec3<u32>(u_input.b.x, u_input.a.x, global0.b)) >> (~arg_0 % 32u)), max(_wgslsmith_div_u32(0u, global0.b) >> (min(arg_0, arg_0) % 32u), arg_0 >> ((u_input.b.x | u_input.b.x) % 32u)), min(~(~1u), 1u)));
    var_0 = Struct_1(var_0.a, global0.a.b);
    let var_1 = vec4<bool>(any(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), true)), false, !all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true)), false);
    var var_2 = _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(var_0.a.x)), -983f))), 337f), _wgslsmith_f_op_f32(global0.a.a.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global0.a.a.x))))));
    return Struct_3(vec2<bool>(true, false), Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(global0.a.a, global0.a.a)) + global0.a.a), global0.a.b), ~arg_0, global0.c, 2049f), abs(~global0.a.b.x), ~vec2<u32>(_wgslsmith_mult_u32(arg_0, ~707u), global0.a.b.x), _wgslsmith_add_i32(29635i, -_wgslsmith_mult_i32(i32(-1i) * -1i, 2147483647i)));
}

fn func_4(arg_0: Struct_3) -> Struct_1 {
    return Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-func_2(u_input.a.x).b.a.a)))), countOneBits(vec4<u32>(u_input.a.x, 12642u, _wgslsmith_add_u32(1u, 21267u) >> (u_input.b.x % 32u), _wgslsmith_sub_u32(4294967295u, 20445u) >> (_wgslsmith_dot_vec2_u32(global0.a.b.yy, global0.a.b.yz) % 32u))));
}

fn func_1(arg_0: vec3<bool>, arg_1: vec3<i32>, arg_2: f32) -> Struct_1 {
    var var_0 = func_4(func_2(~global0.b));
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a.x, _wgslsmith_f_op_f32(floor(-684f)))))));
    let var_2 = 1352f;
    let var_3 = select(false, arg_0.x, false);
    var var_4 = ~select(-(~abs(vec4<i32>(-1i, global0.c, arg_1.x, global0.c))), abs(vec4<i32>(-global0.c, global0.c, 18559i, arg_1.x)), vec4<bool>(all(!arg_0), false, !any(arg_0.yy), var_3));
    return Struct_1(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global0.a.a + global0.a.a)) * var_0.a))), var_0.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(global0.a.a, firstTrailingBit(max(global0.a.b >> (global0.a.b % vec4<u32>(32u)), _wgslsmith_sub_vec4_u32(vec4<u32>(56428u, global0.a.b.x, 0u, global0.a.b.x) << (global0.a.b % vec4<u32>(32u)), global0.a.b))));
    let var_1 = vec4<i32>(_wgslsmith_add_i32(global0.c, 18392i), abs(_wgslsmith_dot_vec2_i32(abs(vec2<i32>(14473i, -19786i)), min(vec2<i32>(-2147483647i, global0.c), vec2<i32>(-700i, 0i)) << (~var_0.b.yy % vec2<u32>(32u)))), 1i, global0.c);
    var_0 = func_1(vec3<bool>(true, true, true), _wgslsmith_add_vec3_i32(var_1.ywy, ~vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(49202i, var_1.x, var_1.x, global0.c), var_1), 2087i, 18949i)), -1033f);
    var_0 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(func_4(Struct_3(vec2<bool>(true, false), Struct_2(global0.a, global0.a.b.x, -102i, var_0.a.x), 1u, global0.a.b.xy, var_1.x)).a.x))), func_4(func_2(u_input.a.x)).a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(var_0.b.x).b.a.a.x * _wgslsmith_f_op_f32(step(var_0.a.x, var_0.a.x)))), _wgslsmith_f_op_f32(sign(-1257f))), global0.a.b);
    global0 = func_2(~36902u).b;
    var var_2 = -_wgslsmith_clamp_vec2_i32(vec2<i32>(global0.c, ~func_2(4294967295u).b.c), vec2<i32>(global0.c, -_wgslsmith_add_i32(0i, var_1.x)), (vec2<i32>(-1i) * -var_1.yy) & ~_wgslsmith_sub_vec2_i32(vec2<i32>(global0.c, var_1.x), var_1.yx));
    var var_3 = Struct_2(global0.a, ~u_input.b.x, var_2.x, 655f);
    let x = u_input.a;
    s_output = StorageBuffer(var_3.a.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-647f + var_3.a.a.x)) * _wgslsmith_f_op_f32(-var_3.a.a.x)) - global0.a.a.x), var_0.a.x, var_3.a.a.wy, vec3<u32>(max(max(u_input.b.x, 4294967295u), _wgslsmith_mod_u32(var_3.a.b.x, 0u)) << ((_wgslsmith_mod_u32(0u, var_0.b.x) | firstLeadingBit(34377u)) % 32u), func_2(~(~1u)).c, reverseBits(20980u)));
}


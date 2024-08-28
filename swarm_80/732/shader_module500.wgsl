struct Struct_1 {
    a: u32,
    b: f32,
    c: u32,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: bool,
    d: f32,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: vec2<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: f32,
    d: vec4<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_3, arg_1: i32, arg_2: Struct_1, arg_3: Struct_3) -> vec3<i32> {
    let var_0 = vec3<bool>(all(vec4<bool>(!all(vec2<bool>(true, arg_0.a.c)), (arg_0.a.a.d < arg_2.d) || true, !any(vec4<bool>(arg_0.a.c, false, true, arg_0.a.c)), false)), false, arg_0.a.c);
    let var_1 = !select(vec4<bool>(false, -39658i > ~arg_3.a.b.x, true || arg_0.a.c, true), select(vec4<bool>(true, var_0.x, true, any(vec2<bool>(arg_0.a.c, arg_3.a.c))), vec4<bool>(arg_3.a.c, all(vec3<bool>(arg_3.a.c, var_0.x, arg_3.a.c)), !arg_3.a.c, false), !arg_3.a.c), arg_0.a.c);
    let var_2 = -arg_3.a.b.x;
    global0 = any(var_0.yy);
    global0 = false;
    return arg_0.a.b;
}

fn func_2(arg_0: u32) -> Struct_2 {
    global0 = true;
    let var_0 = Struct_3(Struct_2(Struct_1(abs(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 1u, arg_0), vec3<u32>(2096u, arg_0, arg_0))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-985f, -466f) - 164f), arg_0, 54371u), -(~vec3<i32>(u_input.d, 1i, u_input.d)) & func_3(Struct_3(Struct_2(Struct_1(u_input.b.x, 1300f, u_input.b.x, 6604u), vec3<i32>(1i, 1i, 11816i), false, 1000f)), -2147483647i, Struct_1(0u, -311f, 1u, u_input.a.x), Struct_3(Struct_2(Struct_1(arg_0, 1703f, 30558u, 0u), vec3<i32>(u_input.d, -64527i, u_input.c.x), true, -767f))), true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1793f - -1529f)))));
    let var_1 = _wgslsmith_f_op_f32(max(var_0.a.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1241f))));
    var var_2 = var_0.a;
    let var_3 = vec4<f32>(-688f, -580f, _wgslsmith_f_op_f32(select(var_1, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_2.d, _wgslsmith_f_op_f32(-var_1))) + 283f), !all(select(vec3<bool>(var_2.c, true, false), vec3<bool>(var_2.c, var_2.c, var_2.c), vec3<bool>(false, false, false))))), -1144f);
    return var_0.a;
}

fn func_4(arg_0: Struct_3, arg_1: vec2<bool>) -> bool {
    global0 = !(!(!all(vec3<bool>(false, arg_1.x, arg_0.a.c))));
    return false;
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    global0 = ~35669u == ~abs(_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 4294967295u, 1u, arg_0.d), vec4<u32>(u_input.b.x, 65485u, 22698u, arg_0.d)), ~u_input.b.x));
    let var_0 = vec2<i32>(2147483647i, max(-2147483647i, 13585i));
    global0 = !func_4(Struct_3(func_2(_wgslsmith_div_u32(arg_0.d, 2981u))), select(!select(vec2<bool>(true, false), vec2<bool>(true, true), true), select(select(vec2<bool>(false, true), vec2<bool>(false, true), true), vec2<bool>(false, false), vec2<bool>(true, true)), true));
    global0 = false;
    global0 = true;
    return func_2((~52235u << (abs(1u >> (arg_0.a % 32u)) % 32u)) & ~_wgslsmith_dot_vec2_u32(u_input.a, u_input.a << (vec2<u32>(arg_0.d, 1u) % vec2<u32>(32u)))).a;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1) -> f32 {
    let var_0 = Struct_3(func_2(~min(_wgslsmith_dot_vec2_u32(u_input.b, vec2<u32>(33463u, arg_0.d)), 41726u)));
    global0 = all(select(vec2<bool>(true, all(select(vec4<bool>(var_0.a.c, var_0.a.c, var_0.a.c, var_0.a.c), vec4<bool>(false, var_0.a.c, false, var_0.a.c), var_0.a.c))), select(!select(vec2<bool>(false, var_0.a.c), vec2<bool>(var_0.a.c, true), vec2<bool>(var_0.a.c, var_0.a.c)), select(!vec2<bool>(var_0.a.c, var_0.a.c), vec2<bool>(var_0.a.c, var_0.a.c), !vec2<bool>(var_0.a.c, true)), !vec2<bool>(var_0.a.c, false)), select(vec2<bool>(var_0.a.c, false), !vec2<bool>(var_0.a.c, var_0.a.c), vec2<bool>(all(vec2<bool>(var_0.a.c, false)), false))));
    var var_1 = var_0.a;
    var var_2 = firstLeadingBit(~(~reverseBits(vec3<u32>(0u, arg_1.c, var_0.a.a.c))));
    var_1 = var_0.a;
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-963f + 1736f), var_0.a.d)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_1.b))), _wgslsmith_f_op_f32(min(-1198f, _wgslsmith_f_op_f32(834f + -322f)))))), _wgslsmith_f_op_f32(ceil(-1000f))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    let var_1 = Struct_1(0u, _wgslsmith_f_op_f32(func_5(func_1(Struct_1(1u, _wgslsmith_f_op_f32(1652f * 716f), _wgslsmith_add_u32(47466u, u_input.b.x), ~52891u)), Struct_1(54015u, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(-219f, 158f, false)))), u_input.a.x, ~(~1u)))), _wgslsmith_div_u32(u_input.a.x, min(firstLeadingBit(u_input.b.x) ^ 6297u, _wgslsmith_sub_u32(~u_input.b.x, u_input.a.x << (2651u % 32u)))), ~u_input.a.x);
    let var_2 = u_input.d;
    var var_3 = Struct_2(Struct_1(var_1.c, var_1.b, ~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, 113571u, 0u, 0u), min(vec4<u32>(40856u, 15243u, u_input.b.x, u_input.a.x), vec4<u32>(4294967295u, 4294967295u, var_1.d, 67788u))), 23749u), abs(-vec3<i32>(6183i, -2147483647i, u_input.c.x) & _wgslsmith_div_vec3_i32(countOneBits(vec3<i32>(var_2, -29548i, -2147483647i)), vec3<i32>(15211i, u_input.d, var_2))), all(!select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), true)) == (_wgslsmith_f_op_f32(-var_1.b) >= var_1.b), _wgslsmith_f_op_f32(min(179f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-409f, var_1.b, true))))));
    let var_4 = func_2(_wgslsmith_add_u32((func_1(var_1).c ^ _wgslsmith_div_u32(var_3.a.d, 0u)) << (78981u % 32u), _wgslsmith_mult_u32(~(~var_1.d), var_3.a.c)));
    var_3 = func_2(u_input.b.x);
    global0 = 844f >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.d - _wgslsmith_div_f32(-1052f, _wgslsmith_f_op_f32(-var_4.d))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1279f + var_3.a.b) + _wgslsmith_f_op_f32(1240f * 210f))));
    let x = u_input.a;
    s_output = StorageBuffer(~var_4.b.zx, u_input.b, var_1.b, vec4<f32>(-195f, _wgslsmith_f_op_f32(-var_3.a.b), _wgslsmith_div_f32(func_1(Struct_1(34529u, var_4.d, 84981u, 4294967295u)).b, var_4.a.b), func_1(func_2(1u).a).b), var_2);
}


struct Struct_1 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec4<u32>,
    d: u32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    return arg_0;
}

fn func_3(arg_0: u32, arg_1: vec2<i32>, arg_2: vec4<i32>, arg_3: vec2<u32>) -> Struct_1 {
    return func_2(Struct_1(vec2<i32>(53813i, arg_2.x)), func_2(Struct_1(select(arg_1, vec2<i32>(arg_2.x, arg_1.x), vec2<bool>(false, true)) & _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.b, 32985i), arg_2.xw)), func_2(Struct_1(arg_2.zx), func_2(func_2(Struct_1(vec2<i32>(u_input.b, u_input.b)), Struct_1(arg_2.xw)), Struct_1(vec2<i32>(-2147483647i, u_input.b))))));
}

fn func_1(arg_0: f32, arg_1: vec2<u32>) -> Struct_1 {
    let var_0 = ~(vec3<i32>(-1i) * -vec3<i32>(~u_input.b, u_input.b, -2057i));
    let var_1 = Struct_1(~var_0.zz);
    var var_2 = func_2(var_1, var_1);
    var_2 = func_2(func_2(func_3(53253u | abs(u_input.a.x), _wgslsmith_div_vec2_i32(-vec2<i32>(-17110i, var_2.a.x), select(vec2<i32>(13062i, var_0.x), vec2<i32>(-1i, -6187i), vec2<bool>(true, true))), _wgslsmith_mod_vec4_i32(vec4<i32>(17909i, var_0.x, var_2.a.x, -1i), vec4<i32>(var_1.a.x, var_1.a.x, var_2.a.x, -68981i)) & ~vec4<i32>(var_0.x, -106394i, -1i, var_0.x), ~(u_input.a.xy | vec2<u32>(44152u, 12986u))), var_1), Struct_1(_wgslsmith_mod_vec2_i32(vec2<i32>(_wgslsmith_mod_i32(-2213i, var_1.a.x), _wgslsmith_mod_i32(-60892i, var_2.a.x)), vec2<i32>(35634i, -1i >> (0u % 32u)))));
    var_2 = func_3(19425u | _wgslsmith_mult_u32(arg_1.x, arg_1.x), vec2<i32>(i32(-1i) * -70411i, -var_1.a.x ^ 21437i) << (select(vec2<u32>(_wgslsmith_mod_u32(4294967295u, u_input.a.x), ~9839u), min(abs(arg_1), u_input.a.yz), all(select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, false)))) % vec2<u32>(32u)), vec4<i32>(u_input.b << (0u % 32u), -abs(min(var_1.a.x, var_2.a.x)), -firstTrailingBit(-7825i & var_1.a.x), i32(-1i) * -16304i), u_input.a.xy);
    return Struct_1(~var_0.yy);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~u_input.a.x;
    var var_1 = ~(var_0 & 127085u);
    let var_2 = func_1(1f, vec2<u32>(_wgslsmith_div_u32(50642u, ~var_0), 41656u));
    var var_3 = var_2;
    var var_4 = select(vec4<bool>(!all(vec4<bool>(true, false, false, false)), true, true, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-867f * -380f), _wgslsmith_f_op_f32(select(159f, 1126f, true)))) == _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(-488f))))), select(select(vec4<bool>(true, true, true, true), !select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, true)), vec4<bool>(any(vec3<bool>(true, false, false)), true, true, any(vec4<bool>(false, false, false, false)))), vec4<bool>(true, true, true, true), select(select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true), true)), true);
    let var_5 = Struct_1(~func_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-1233f)), -1191f), vec2<u32>(~26296u, _wgslsmith_add_u32(u_input.a.x, 4294967295u))).a);
    let x = u_input.a;
    s_output = StorageBuffer(~func_3(55396u, var_5.a, vec4<i32>(u_input.b, var_3.a.x, var_3.a.x, u_input.b), u_input.a.yz).a.x, vec2<u32>(u_input.a.x, 1u), abs(abs(~vec4<u32>(u_input.a.x, var_0, 4294967295u, 108700u))), 0u, ~max((vec4<u32>(var_0, u_input.a.x, 0u, 0u) | vec4<u32>(var_0, var_0, 39464u, u_input.a.x)) << (vec4<u32>(1u, 63180u, 2157u, 4294967295u) % vec4<u32>(32u)), vec4<u32>(1u, min(4294967295u, var_0), 27958u, select(1u, u_input.a.x, false))));
}


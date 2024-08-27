struct Struct_1 {
    a: u32,
    b: i32,
    c: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec4<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: Struct_1, arg_1: f32, arg_2: vec3<i32>, arg_3: bool) -> u32 {
    let var_0 = false;
    global0 = Struct_1(_wgslsmith_mod_u32(u_input.a, select(41696u, abs(global0.a), true)), -1i, select(-2147483647i, 0i, select(all(select(vec2<bool>(var_0, arg_3), vec2<bool>(arg_3, var_0), var_0)), any(!vec3<bool>(arg_3, false, false)), any(select(vec4<bool>(false, true, arg_3, var_0), vec4<bool>(true, arg_3, false, true), vec4<bool>(arg_3, false, true, var_0))))));
    let var_1 = ~select(firstLeadingBit(~(~vec3<u32>(62159u, 4294967295u, 1u))), vec3<u32>(global0.a, u_input.a, u_input.b.x), vec3<bool>(_wgslsmith_dot_vec2_i32(arg_2.yz, vec2<i32>(arg_0.b, -1i)) <= 36593i, any(vec3<bool>(false, true, false)), arg_3));
    let var_2 = arg_0;
    global0 = Struct_1(global0.a, arg_2.x, -24573i);
    return _wgslsmith_mod_u32(~0u, var_2.a);
}

fn func_4(arg_0: vec2<bool>, arg_1: u32) -> i32 {
    var var_0 = select(vec4<bool>(!arg_0.x, all(vec3<bool>(arg_0.x, -15606i >= global0.c, select(false, arg_0.x, true))), all(select(vec4<bool>(true, arg_0.x, true, false), select(vec4<bool>(false, true, arg_0.x, true), vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x), vec4<bool>(false, arg_0.x, arg_0.x, arg_0.x)), arg_0.x)), _wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.c, u_input.c, global0.a), vec3<u32>(71793u, global0.a, arg_1) >> (vec3<u32>(0u, global0.a, global0.a) % vec3<u32>(32u))) >= ~0u), !(!select(select(vec4<bool>(arg_0.x, false, arg_0.x, arg_0.x), vec4<bool>(false, true, true, arg_0.x), false), select(vec4<bool>(arg_0.x, true, false, true), vec4<bool>(true, true, false, false), vec4<bool>(false, arg_0.x, arg_0.x, arg_0.x)), !arg_0.x)), all(!vec3<bool>(arg_0.x, true, false)) | !arg_0.x);
    var_0 = vec4<bool>(false, true, true, var_0.x);
    var var_1 = ~(u_input.b | u_input.b);
    var_0 = vec4<bool>(((~1i >> (~arg_1 % 32u)) >> (reverseBits(4294967295u) % 32u)) < (abs(global0.c) << (var_1.x % 32u)), all(vec3<bool>(all(!vec4<bool>(var_0.x, true, arg_0.x, var_0.x)), false, global0.a < _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, 22261u, arg_1), vec3<u32>(arg_1, global0.a, 4294967295u)))), false, var_0.x);
    global0 = Struct_1(global0.a, _wgslsmith_dot_vec3_i32(-vec3<i32>(-2147483647i, firstLeadingBit(global0.c), -44523i), abs(-abs(vec3<i32>(-31397i, global0.b, -1i)))), 0i);
    return countOneBits(-select(~global0.c, 11957i, false | arg_0.x)) & global0.c;
}

fn func_2() -> Struct_1 {
    var var_0 = reverseBits(37969u);
    global0 = Struct_1(u_input.b.x, -95i, firstLeadingBit(global0.c));
    var var_1 = Struct_1(global0.a, func_4(select(select(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, false), vec2<bool>(false, true)), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true))), func_3(Struct_1(_wgslsmith_div_u32(u_input.a, 27056u), -global0.c, global0.b | 38739i), -1348f, reverseBits(vec3<i32>(global0.c, global0.b, global0.c)), true)), func_4(vec2<bool>(select(true, global0.c > -1i, true), true), ~global0.a));
    var_0 = 0u;
    let var_2 = u_input.c;
    return Struct_1(4294967295u, i32(-1i) * -22928i, global0.b);
}

fn func_1(arg_0: u32) -> Struct_1 {
    var var_0 = _wgslsmith_sub_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(global0.b, -2147483647i, global0.b << (83972u % 32u)), ~(-vec3<i32>(-471i, global0.c, global0.b))), -(~vec3<i32>(0i, global0.c, -25020i)) >> (~(~vec3<u32>(65562u, 0u, global0.a)) % vec3<u32>(32u))) & _wgslsmith_mult_vec3_i32(-_wgslsmith_add_vec3_i32(vec3<i32>(global0.b, 59027i, global0.b) ^ vec3<i32>(global0.b, 16921i, -1i), vec3<i32>(global0.c, global0.b, global0.c)), -_wgslsmith_div_vec3_i32(vec3<i32>(-24665i, global0.b, -49031i), abs(vec3<i32>(-2393i, 0i, global0.c))));
    let var_1 = func_2();
    let var_2 = _wgslsmith_div_i32(-822i, var_1.b);
    var var_3 = _wgslsmith_f_op_f32(trunc(2351f));
    var_3 = _wgslsmith_f_op_f32(-1019f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-439f))) - 1f));
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(~u_input.b.x);
    var var_1 = 847f;
    let var_2 = 0u;
    var_1 = 1413f;
    let var_3 = func_1(firstTrailingBit(abs(_wgslsmith_dot_vec3_u32(~vec3<u32>(87065u, 1u, global0.a), vec3<u32>(var_0.a, var_2, 4294967295u)))));
    var_1 = _wgslsmith_f_op_f32(round(1249f));
    var_0 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -298f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-457f + -2086f)))), -909f, abs(vec4<i32>(-_wgslsmith_add_i32(global0.c, var_3.c), min(_wgslsmith_mod_i32(global0.c, var_3.b), var_0.c), func_1(0u).c, func_1(_wgslsmith_add_u32(u_input.a, 41748u)).c)), _wgslsmith_div_u32(1u & ~func_1(25783u).a, global0.a));
}


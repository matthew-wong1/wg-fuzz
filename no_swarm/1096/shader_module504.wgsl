struct Struct_1 {
    a: bool,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32, arg_1: Struct_2, arg_2: i32, arg_3: vec4<bool>) -> i32 {
    var var_0 = arg_1.a;
    var_0 = arg_1.a;
    var var_1 = arg_1.a.b;
    var_0 = Struct_1(arg_1.a.a, arg_1.a.b);
    var var_2 = !(!vec4<bool>(arg_3.x, false || all(vec3<bool>(false, arg_1.a.a, true)), all(arg_3.yyy), arg_3.x | (u_input.b > 4294967295u)));
    return _wgslsmith_sub_i32(arg_0, -arg_2);
}

fn func_2(arg_0: Struct_2) -> u32 {
    let var_0 = max(0i, 2147483647i);
    global0 = _wgslsmith_sub_i32(func_3(_wgslsmith_add_i32(_wgslsmith_add_i32(var_0, -7511i), 0i), arg_0, ~2147483647i, !vec4<bool>(arg_0.a.a, true, false, arg_0.a.a)), _wgslsmith_mod_i32(-15288i, _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(0i, var_0, -2147483647i), vec3<i32>(var_0, 1i, var_0)), abs(vec3<i32>(var_0, -2147483647i, var_0))))) > (_wgslsmith_sub_i32(_wgslsmith_mod_i32(~0i, var_0 | -21228i), -func_3(var_0, Struct_2(arg_0.a), -19557i, vec4<bool>(true, arg_0.a.a, arg_0.a.a, true))) | -2147483647i);
    var var_1 = _wgslsmith_mult_vec3_u32(_wgslsmith_add_vec3_u32(~_wgslsmith_clamp_vec3_u32(vec3<u32>(1u, arg_0.a.b, u_input.b) << (vec3<u32>(arg_0.a.b, u_input.b, arg_0.a.b) % vec3<u32>(32u)), ~vec3<u32>(4294967295u, 4294967295u, 43891u), vec3<u32>(u_input.c, arg_0.a.b, 88987u)), ~vec3<u32>(77158u, 1u, arg_0.a.b)), _wgslsmith_div_vec3_u32(~vec3<u32>(696u, 0u, arg_0.a.b), firstTrailingBit(_wgslsmith_add_vec3_u32(vec3<u32>(16072u, 1u, 0u), vec3<u32>(1u, arg_0.a.b, 1u)))) & firstLeadingBit(firstLeadingBit(_wgslsmith_mod_vec3_u32(vec3<u32>(60489u, u_input.c, u_input.c), vec3<u32>(24741u, u_input.b, u_input.c)))));
    let var_2 = Struct_2(arg_0.a);
    var var_3 = var_0 | (abs(2147483647i) << (firstLeadingBit(var_2.a.b & ~var_1.x) % 32u));
    return 41373u ^ var_1.x;
}

fn func_1(arg_0: vec2<bool>, arg_1: bool) -> f32 {
    var var_0 = false;
    var var_1 = ~(-vec3<i32>(0i, -1i, _wgslsmith_div_i32(2147483647i, 26232i)));
    var_1 = _wgslsmith_clamp_vec3_i32(-((-vec3<i32>(1375i, 1i, var_1.x) << (vec3<u32>(u_input.b, u_input.b, 1u) % vec3<u32>(32u))) | ~_wgslsmith_mod_vec3_i32(vec3<i32>(var_1.x, 346i, var_1.x), vec3<i32>(var_1.x, 45642i, -2147483647i))), (vec3<i32>(var_1.x, -2147483647i, var_1.x) | vec3<i32>(~var_1.x, var_1.x, var_1.x)) << (firstTrailingBit(vec3<u32>(u_input.a, 42234u, func_2(Struct_2(Struct_1(arg_1, u_input.a))))) % vec3<u32>(32u)), vec3<i32>(-34430i, -37504i, _wgslsmith_div_i32(i32(-1i) * -1i, ~(-24236i)) & var_1.x));
    var_1 = min(vec3<i32>(_wgslsmith_clamp_i32(1i, var_1.x, _wgslsmith_clamp_i32(-2147483647i, 2147483647i, -1i)), var_1.x, min(1i, abs(select(var_1.x, var_1.x, arg_0.x)))), ~vec3<i32>(_wgslsmith_add_i32(368i, var_1.x), var_1.x, 45094i));
    let var_2 = select(select(select(_wgslsmith_sub_vec2_u32(~vec2<u32>(u_input.c, u_input.c), vec2<u32>(1u, 0u)), vec2<u32>(firstTrailingBit(1u), u_input.a), select(vec2<bool>(arg_0.x, true), arg_0, vec2<bool>(arg_1, true))), firstTrailingBit(vec2<u32>(1u, 1u)), !arg_0), vec2<u32>(_wgslsmith_add_u32(select(1u, u_input.a, true), 100712u), u_input.b), select(arg_0, vec2<bool>(!(!arg_1), true & (arg_0.x | false)), all(vec4<bool>(true, arg_0.x, arg_0.x, false))));
    return _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(-1108f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1000f, -2162f)))))))));
}

fn func_4(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: f32) -> bool {
    global0 = arg_0.a;
    let var_0 = _wgslsmith_dot_vec2_u32(arg_1, ~vec2<u32>(u_input.a, ~(~4294967295u)));
    var var_1 = Struct_2(Struct_1(any(!select(vec2<bool>(false, true), vec2<bool>(arg_0.a, arg_0.a), vec2<bool>(arg_0.a, arg_0.a))), 29381u));
    var var_2 = arg_1.x;
    let var_3 = select(!select(vec4<bool>(true, true, !arg_0.a, arg_0.a), select(vec4<bool>(false, false, var_1.a.a, true), vec4<bool>(var_1.a.a, true, arg_0.a, arg_0.a), select(vec4<bool>(false, arg_0.a, true, var_1.a.a), vec4<bool>(true, arg_0.a, false, false), var_1.a.a)), !arg_0.a), vec4<bool>(!(arg_0.a & true), false, var_1.a.a, true), vec4<bool>(true, false, _wgslsmith_sub_i32(40907i, 1i) == select(-3439i, firstLeadingBit(15088i), true), arg_0.a));
    return all(select(vec4<bool>(arg_0.a, true, all(select(var_3.zxy, var_3.xww, arg_0.a)), !(-642f != arg_2)), select(!var_3, var_3, var_3.x), false));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = false;
    global0 = !func_4(Struct_1(true, _wgslsmith_div_u32(u_input.c ^ 18291u, u_input.b)), select(~abs(vec2<u32>(u_input.b, 65647u)), ~(vec2<u32>(0u, u_input.c) | vec2<u32>(u_input.b, 1u)), _wgslsmith_f_op_f32(func_1(vec2<bool>(false, true), true)) != _wgslsmith_f_op_f32(min(402f, -966f))), -763f);
    global0 = !any(vec2<bool>(any(vec2<bool>(true, true)), false));
    global0 = all(vec4<bool>(true, false & any(vec4<bool>(false, false, true, true)), all(vec4<bool>(true, true, true, true)), ((0u ^ u_input.c) << (_wgslsmith_sub_u32(u_input.c, u_input.a) % 32u)) < 7528u));
    global0 = func_4(Struct_1(any(vec3<bool>(true, true, true)), u_input.a), vec2<u32>(u_input.a << (~u_input.a % 32u), u_input.a) >> (firstTrailingBit(~vec2<u32>(30271u, u_input.c)) % vec2<u32>(32u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-463f)) - _wgslsmith_f_op_f32(floor(-1466f))));
    let x = u_input.a;
    s_output = StorageBuffer(~110985u ^ u_input.b, u_input.c ^ ~func_2(Struct_2(Struct_1(true, 7015u))));
}


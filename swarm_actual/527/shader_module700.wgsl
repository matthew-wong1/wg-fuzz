struct Struct_1 {
    a: bool,
    b: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: vec2<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<u32, 31> = array<u32, 31>(4294967295u, 60204u, 20573u, 85938u, 1u, 0u, 0u, 54828u, 4294967295u, 4294967295u, 0u, 4772u, 40005u, 41617u, 1u, 4294967295u, 0u, 0u, 1u, 0u, 0u, 24961u, 19170u, 4294967295u, 0u, 18859u, 0u, 4294967295u, 0u, 43615u, 22342u);

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2(arg_0: vec3<u32>, arg_1: Struct_1) -> u32 {
    let var_0 = 22202u;
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(-1590f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -699f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(241f))) * _wgslsmith_f_op_f32(f32(-1f) * -236f)));
    global0 = arg_1.b.x;
    return _wgslsmith_sub_u32(_wgslsmith_sub_u32(max(global1[_wgslsmith_index_u32(4294967295u, 31u)], _wgslsmith_mult_u32(u_input.a.x, ~4294967295u)), _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(62418u, 4294967295u, 61908u), arg_0), min(u_input.a.x ^ var_0, var_0 | var_0))), abs(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 4294967295u, 1u), _wgslsmith_add_vec3_u32(vec3<u32>(global1[_wgslsmith_index_u32(6569u, 31u)], arg_0.x, arg_0.x), vec3<u32>(var_0, 82397u, global1[_wgslsmith_index_u32(57442u, 31u)]))), 31u)] >> (~firstLeadingBit(var_0) % 32u)));
}

fn func_3(arg_0: Struct_1) -> f32 {
    global1 = array<u32, 31>();
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-538f)) + -278f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1253f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(-989f, -189f, true)), _wgslsmith_f_op_f32(f32(-1f) * -2431f))) * -887f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(2441f)), 156f));
}

fn func_4(arg_0: i32, arg_1: Struct_2, arg_2: f32, arg_3: vec4<bool>) -> Struct_2 {
    global0 = (_wgslsmith_mod_i32(arg_0, 3665i) & arg_0) << (~u_input.a.x % 32u);
    let var_0 = arg_1;
    global1 = array<u32, 31>();
    var var_1 = u_input.a.ww;
    let var_2 = Struct_2(arg_1.a);
    return arg_1;
}

fn func_5(arg_0: Struct_2, arg_1: bool, arg_2: bool) -> Struct_2 {
    global0 = u_input.c;
    var var_0 = select(select(arg_0.a.b.wz, vec2<i32>(_wgslsmith_add_i32(arg_0.a.b.x, 0i), 1i) | vec2<i32>(-16321i, -arg_0.a.b.x), !arg_0.a.a), max(vec2<i32>(abs(u_input.b.x), reverseBits(-2377i)) | _wgslsmith_div_vec2_i32(~arg_0.a.b.zw, max(vec2<i32>(u_input.b.x, -1i), vec2<i32>(2147483647i, arg_0.a.b.x))), _wgslsmith_mult_vec2_i32(firstLeadingBit(_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.c, u_input.c), vec2<i32>(u_input.c, -4086i))), arg_0.a.b.xy)), any(select(!select(vec2<bool>(arg_0.a.a, arg_2), vec2<bool>(arg_0.a.a, arg_1), arg_2), vec2<bool>(all(vec4<bool>(true, arg_2, arg_0.a.a, arg_1)), arg_2), vec2<bool>(true, true))));
    return func_4(~u_input.c, arg_0, 1323f, !select(select(!vec4<bool>(false, arg_0.a.a, false, arg_2), vec4<bool>(false, arg_0.a.a, true, true), all(vec2<bool>(false, false))), select(!vec4<bool>(arg_2, true, false, true), select(vec4<bool>(false, false, true, true), vec4<bool>(true, arg_0.a.a, false, arg_0.a.a), false), select(vec4<bool>(true, false, arg_0.a.a, false), vec4<bool>(arg_1, false, arg_2, arg_0.a.a), vec4<bool>(true, arg_0.a.a, arg_1, arg_0.a.a))), select(!vec4<bool>(true, true, arg_2, true), vec4<bool>(false, arg_0.a.a, arg_1, true), true)));
}

fn func_6(arg_0: Struct_2, arg_1: vec2<bool>) -> Struct_2 {
    let var_0 = arg_0.a;
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(sign(1333f)));
    var var_2 = arg_0.a.b.x;
    let var_3 = Struct_2(var_0);
    global1 = array<u32, 31>();
    return Struct_2(Struct_1(!(!(var_3.a.a | true)), ~(~(var_3.a.b & arg_0.a.b))));
}

fn func_1() -> bool {
    let var_0 = select(vec3<bool>(any(vec3<bool>(true, true, true)), true, true), vec3<bool>(true, u_input.a.x > global1[_wgslsmith_index_u32(_wgslsmith_add_u32(global1[_wgslsmith_index_u32(0u, 31u)], u_input.a.x) << (_wgslsmith_mult_u32(u_input.a.x, 4294967295u) % 32u), 31u)], true), all(!select(vec4<bool>(false, false, true, false), select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true), true), vec4<bool>(true, true, true, true))));
    var var_1 = -866f;
    var var_2 = func_6(func_5(func_4(~29671i << (func_2(u_input.a.zzy, Struct_1(false, vec4<i32>(u_input.b.x, u_input.b.x, 14597i, u_input.c))) % 32u), Struct_2(Struct_1(true, vec4<i32>(u_input.b.x, u_input.c, u_input.b.x, 14198i))), _wgslsmith_f_op_f32(func_3(Struct_1(var_0.x, vec4<i32>(u_input.b.x, -1i, -1i, u_input.c)))), vec4<bool>(!var_0.x, true, all(vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x)), false)), all(!select(var_0, vec3<bool>(var_0.x, var_0.x, true), var_0.x)), any(vec3<bool>(false, true, true))), var_0.xz);
    var var_3 = ~(~firstTrailingBit(0i));
    let var_4 = func_5(Struct_2(Struct_1(func_4(-2147483647i ^ u_input.b.x, Struct_2(var_2.a), -1320f, !vec4<bool>(true, var_0.x, var_0.x, false)).a.a, var_2.a.b)), any(var_0), var_0.x).a;
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(vec4<bool>(func_1(), all(select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, false), true), func_1())), true, !any(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false)))), select(select(vec4<bool>(select(true, true, false), true, u_input.c > u_input.c, true), select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, true), select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true))), vec4<bool>(false, true, all(vec4<bool>(true, false, false, true)), 4185i > u_input.b.x)), vec4<bool>(any(select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, false), true)), true, any(vec3<bool>(false, true, false)), abs(0i) <= func_4(u_input.c, Struct_2(Struct_1(true, vec4<i32>(-2147483647i, u_input.c, 1351i, u_input.c))), 883f, vec4<bool>(true, false, true, false)).a.b.x), !(_wgslsmith_f_op_f32(round(763f)) >= _wgslsmith_f_op_f32(step(-195f, 520f)))), any(select(select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, true), select(true, true, false)), vec4<bool>(true, false, true, any(vec2<bool>(true, true))), !select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, true)))));
    var var_1 = !(!(!var_0.yw));
    let var_2 = _wgslsmith_mod_u32(~firstLeadingBit(~u_input.a.x), u_input.a.x);
    let var_3 = func_5(Struct_2(Struct_1(global1[_wgslsmith_index_u32(42627u, 31u)] == u_input.a.x, vec4<i32>(u_input.b.x, -34394i, 2809i, firstLeadingBit(-63829i)))), var_1.x, false);
    global0 = u_input.c;
    var var_4 = !var_0.x;
    let x = u_input.a;
    s_output = StorageBuffer(-1667f, u_input.a, select(vec2<u32>(29861u, 0u), vec2<u32>(global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(1u, 0u), 31u)], _wgslsmith_add_u32(var_2, _wgslsmith_mult_u32(35978u, global1[_wgslsmith_index_u32(u_input.a.x, 31u)]))), vec2<bool>(func_1(), false)), _wgslsmith_div_i32(_wgslsmith_mod_i32(_wgslsmith_mult_i32(-u_input.c, -2147483647i), -8852i), _wgslsmith_clamp_i32(-reverseBits(2147483647i), -2147483647i, ~(~0i))));
}


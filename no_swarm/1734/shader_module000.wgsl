struct Struct_1 {
    a: bool,
    b: f32,
}

struct Struct_2 {
    a: bool,
    b: f32,
    c: vec2<bool>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: bool,
    d: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: array<Struct_2, 24> = array<Struct_2, 24>(Struct_2(false, -149f, vec2<bool>(false, false), Struct_1(true, 660f)), Struct_2(false, -803f, vec2<bool>(false, false), Struct_1(true, 277f)), Struct_2(true, -640f, vec2<bool>(false, true), Struct_1(false, -405f)), Struct_2(false, -945f, vec2<bool>(true, true), Struct_1(true, 284f)), Struct_2(false, -1000f, vec2<bool>(true, true), Struct_1(true, 615f)), Struct_2(true, -124f, vec2<bool>(false, true), Struct_1(false, 541f)), Struct_2(false, -147f, vec2<bool>(true, true), Struct_1(false, 173f)), Struct_2(true, -1000f, vec2<bool>(false, true), Struct_1(false, -255f)), Struct_2(true, -190f, vec2<bool>(true, true), Struct_1(false, -1647f)), Struct_2(false, 118f, vec2<bool>(false, false), Struct_1(true, 1379f)), Struct_2(true, -1553f, vec2<bool>(true, false), Struct_1(false, -446f)), Struct_2(true, 1114f, vec2<bool>(true, false), Struct_1(false, -1000f)), Struct_2(true, -1252f, vec2<bool>(true, false), Struct_1(true, 1026f)), Struct_2(false, -600f, vec2<bool>(true, false), Struct_1(true, 986f)), Struct_2(true, 491f, vec2<bool>(true, false), Struct_1(true, -760f)), Struct_2(true, -375f, vec2<bool>(false, false), Struct_1(true, -381f)), Struct_2(true, 595f, vec2<bool>(false, true), Struct_1(false, -1370f)), Struct_2(true, 172f, vec2<bool>(false, true), Struct_1(true, -381f)), Struct_2(true, 659f, vec2<bool>(false, true), Struct_1(true, -121f)), Struct_2(true, -680f, vec2<bool>(true, true), Struct_1(false, -219f)), Struct_2(false, 720f, vec2<bool>(false, false), Struct_1(true, 295f)), Struct_2(false, -929f, vec2<bool>(true, false), Struct_1(false, -1083f)), Struct_2(true, -1567f, vec2<bool>(false, false), Struct_1(false, 1432f)), Struct_2(true, 1426f, vec2<bool>(true, true), Struct_1(true, 2791f)));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec4<bool>, arg_1: vec3<bool>, arg_2: vec3<u32>, arg_3: Struct_2) -> i32 {
    let var_0 = Struct_1(global0.c, _wgslsmith_f_op_f32(sign(171f)));
    global1 = array<Struct_2, 24>();
    global1 = array<Struct_2, 24>();
    global0 = Struct_3(Struct_1(select(false, arg_3.b <= -746f, any(arg_0.xw)), -746f), 1i, !arg_0.x, Struct_2(true, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(global0.d.d.b)), global0.a.b)), select(vec2<bool>(true, !arg_0.x), vec2<bool>(true, true), true), var_0));
    var var_1 = Struct_2(false | (arg_3.d.a == select(false | arg_3.d.a, global0.d.a, global0.b > global0.b)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -256f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -897f))))), arg_1.xx, Struct_1((_wgslsmith_div_u32(arg_2.x, 0u) < u_input.b) | false, global0.d.b));
    return select(_wgslsmith_div_i32(global0.b, 2147483647i), global0.b, true);
}

fn func_4(arg_0: Struct_3, arg_1: u32, arg_2: f32) -> vec3<bool> {
    let var_0 = global0.d.d;
    var var_1 = -(~vec4<i32>((arg_0.b >> (1u % 32u)) | (arg_0.b | 2147483647i), ~13749i, -2147483647i, arg_0.b));
    var_1 = vec4<i32>(max(var_1.x, max(arg_0.b, var_1.x)), _wgslsmith_dot_vec4_i32(~vec4<i32>(0i, var_1.x, 1i, -23093i), vec4<i32>(~min(arg_0.b, arg_0.b), reverseBits(global0.b) | _wgslsmith_add_i32(global0.b, -8345i), _wgslsmith_div_i32(-arg_0.b, 5797i), arg_0.b)), arg_0.b, abs(-2147483647i));
    let var_2 = arg_0.b;
    let var_3 = -14579i;
    return !select(vec3<bool>(var_0.a, var_0.a, !arg_0.c || any(vec4<bool>(arg_0.a.a, global0.a.a, false, true))), vec3<bool>(all(select(vec4<bool>(true, global0.a.a, false, global0.c), vec4<bool>(false, global0.a.a, global0.d.d.a, true), false)), var_1.x < 0i, all(vec3<bool>(arg_0.d.d.a, global0.c, true))), global0.d.d.a);
}

fn func_2(arg_0: Struct_1) -> Struct_3 {
    let var_0 = !func_4(Struct_3(Struct_1(arg_0.a, arg_0.b), ~func_3(vec4<bool>(arg_0.a, global0.d.a, arg_0.a, global0.d.c.x), vec3<bool>(global0.a.a, arg_0.a, arg_0.a), vec3<u32>(29337u, u_input.c, u_input.b), Struct_2(arg_0.a, -637f, global0.d.c, global0.a)), all(select(vec3<bool>(arg_0.a, arg_0.a, true), vec3<bool>(false, arg_0.a, true), vec3<bool>(global0.c, global0.a.a, global0.d.a))), global0.d), 0u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-732f - _wgslsmith_f_op_f32(global0.a.b * global0.a.b))));
    let var_1 = var_0;
    let var_2 = _wgslsmith_f_op_f32(f32(-1f) * -2206f);
    let var_3 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_2, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(-451f, global0.a.b, false)))) + -216f))));
    let var_4 = _wgslsmith_f_op_f32(-var_2);
    return Struct_3(arg_0, ~firstTrailingBit(_wgslsmith_clamp_i32(~(-1326i), -2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(global0.b, -1i), vec2<i32>(-38114i, 0i)))), false, Struct_2(true, _wgslsmith_f_op_f32(var_4 - global0.d.d.b), vec2<bool>(global0.d.a, any(select(vec3<bool>(var_1.x, false, true), var_0, vec3<bool>(var_1.x, true, true)))), arg_0));
}

fn func_5(arg_0: Struct_3, arg_1: vec3<i32>) -> Struct_3 {
    let var_0 = 4294967295u;
    let var_1 = vec3<bool>(all(vec2<bool>(any(vec4<bool>(false, true, false, global0.c)), arg_0.c == true)) && !(565f == arg_0.d.d.b), abs(0i >> ((var_0 & u_input.b) % 32u)) < 67890i, arg_0.c);
    global0 = func_2(arg_0.d.d);
    var var_2 = Struct_1((arg_0.a.a | arg_0.c) & !(!(true && global0.d.c.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.d.d.b)) * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(arg_0.a.b))))) + global0.d.d.b));
    let var_3 = Struct_2(arg_0.c, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-961f)) - func_2(arg_0.d.d).a.b), arg_0.a.b, true)))), func_4(func_2(Struct_1(-2147483647i <= arg_0.b, _wgslsmith_f_op_f32(sign(arg_0.d.b)))), u_input.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-117f + 1060f))) - _wgslsmith_f_op_f32(min(global0.a.b, global0.d.d.b)))).yz, arg_0.d.d);
    return Struct_3(arg_0.a, arg_0.b, func_4(arg_0, u_input.c, _wgslsmith_f_op_f32(min(global0.a.b, -2248f))).x || true, global1[_wgslsmith_index_u32(u_input.c, 24u)]);
}

fn func_6(arg_0: vec2<u32>, arg_1: Struct_3, arg_2: f32, arg_3: bool) -> Struct_1 {
    global1 = array<Struct_2, 24>();
    var var_0 = arg_0.x;
    let var_1 = Struct_1(arg_3, -123f);
    let var_2 = -1i;
    var var_3 = ~(select(vec2<u32>(arg_0.x, ~arg_0.x), vec2<u32>(arg_0.x, _wgslsmith_mult_u32(0u, 1u)), all(global0.d.c)) << (_wgslsmith_div_vec2_u32(~u_input.d.zx, (vec2<u32>(arg_0.x, arg_0.x) | arg_0) >> (u_input.d.yw % vec2<u32>(32u))) % vec2<u32>(32u)));
    return arg_1.d.d;
}

fn func_1(arg_0: f32, arg_1: f32, arg_2: vec2<u32>, arg_3: bool) -> bool {
    var var_0 = Struct_3(func_6(~arg_2, func_5(func_2(Struct_1(false, arg_1)), vec3<i32>(global0.b >> (arg_2.x % 32u), -global0.b, -1i)), global0.a.b, !arg_3), -10831i, !(~(~u_input.b) < arg_2.x), func_5(func_5(Struct_3(global0.d.d, -15837i, arg_3, Struct_2(false, -226f, vec2<bool>(false, arg_3), global0.d.d)), _wgslsmith_mult_vec3_i32(~vec3<i32>(1i, global0.b, global0.b), vec3<i32>(global0.b, -36640i, global0.b))), vec3<i32>(-36i, -global0.b, 26822i)).d);
    global1 = array<Struct_2, 24>();
    var_0 = Struct_3(global0.a, ~countOneBits(var_0.b), !var_0.c, global0.d);
    var var_1 = vec4<bool>(var_0.a.a, true, true, false);
    var var_2 = !(all(vec4<bool>(func_2(global0.d.d).a.a, var_0.c, all(var_0.d.c), true)) != !(_wgslsmith_add_i32(6301i, global0.b) == 0i));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-1840f * 504f);
    var_0 = -765f;
    var var_1 = vec2<bool>(true, global0.a.a);
    let var_2 = Struct_1(func_1(132f, _wgslsmith_f_op_f32(f32(-1f) * -1345f), vec2<u32>(u_input.d.x, 0u), true) && (~(~1u) >= countOneBits(_wgslsmith_sub_u32(u_input.d.x, 58875u))), _wgslsmith_f_op_f32(-global0.a.b));
    global0 = func_2(var_2);
    var_1 = vec2<bool>(var_1.x, !(false & (true == !var_2.a)));
    let x = u_input.a;
    s_output = StorageBuffer(-1i);
}


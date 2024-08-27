struct Struct_1 {
    a: u32,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 10> = array<Struct_2, 10>(Struct_2(Struct_1(1u, 0u)), Struct_2(Struct_1(4294967295u, 5050u)), Struct_2(Struct_1(1939u, 1u)), Struct_2(Struct_1(0u, 0u)), Struct_2(Struct_1(32764u, 0u)), Struct_2(Struct_1(22778u, 0u)), Struct_2(Struct_1(4294967295u, 23382u)), Struct_2(Struct_1(4294967295u, 1u)), Struct_2(Struct_1(4294967295u, 4294967295u)), Struct_2(Struct_1(65688u, 18361u)));

var<private> global1: vec4<i32>;

var<private> global2: Struct_2;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_1) -> f32 {
    global2 = global0[_wgslsmith_index_u32(_wgslsmith_div_u32(((arg_1.b << (_wgslsmith_dot_vec2_u32(arg_0.xw, arg_0.wz) % 32u)) | (global2.a.b >> (_wgslsmith_div_u32(u_input.d, 1u) % 32u))) << (~(_wgslsmith_dot_vec3_u32(vec3<u32>(35254u, arg_0.x, 1u), arg_0.yzz) & _wgslsmith_mult_u32(arg_0.x, 0u)) % 32u), _wgslsmith_dot_vec2_u32(~(~(arg_0.yy | arg_0.xx)), arg_0.xx)), 10u)];
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(444f, 1938f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-536f, -1000f)))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(-585f, -295f), _wgslsmith_div_f32(677f, 1364f)) * vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -851f), -1293f))));
    var var_1 = _wgslsmith_div_u32(arg_1.b, _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(~(~arg_0), min(arg_0, ~arg_0)), firstLeadingBit(vec4<u32>(u_input.c, ~arg_0.x, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, 0u), arg_0.yz), 22155u))));
    global0 = array<Struct_2, 10>();
    let var_2 = vec2<u32>(~global2.a.b, 60401u << (1u % 32u));
    return var_0.x;
}

fn func_2() -> vec3<bool> {
    global0 = array<Struct_2, 10>();
    var var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(-235f))));
    let var_1 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-723f, 781f)), -1333f), _wgslsmith_f_op_f32(func_3(vec4<u32>(0u, u_input.c, global2.a.a, u_input.d), Struct_1(u_input.d, u_input.c)))))));
    var var_2 = false;
    var var_3 = _wgslsmith_div_f32(var_1.x, _wgslsmith_f_op_f32(step(var_1.x, -1053f)));
    return select(!vec3<bool>(true, true, select(false, any(vec2<bool>(true, false)), true)), !(!select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), u_input.b > -2147483647i)), (!(var_1.x > var_1.x) || true) && false);
}

fn func_4(arg_0: vec3<bool>, arg_1: i32, arg_2: bool) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-529f, -1546f, 875f), _wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, -1410f, 817f) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(1107f, 1000f, -1148f))), true & arg_2)))));
    var var_1 = vec3<bool>(true, 4294967295u >= ~(~(~global2.a.b)), !arg_0.x);
    let var_2 = ~_wgslsmith_mod_i32(global1.x, u_input.b);
    var var_3 = 29952u;
    global1 = u_input.a;
    return Struct_1(_wgslsmith_sub_u32(_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d, global2.a.b), max(vec2<u32>(u_input.d, 4294967295u), vec2<u32>(2510u, 52150u))), _wgslsmith_mod_u32(~global2.a.a, ~27925u)), global2.a.a), 4294967295u);
}

fn func_5(arg_0: Struct_1) -> vec4<bool> {
    var var_0 = -420f;
    let var_1 = _wgslsmith_div_u32(~1u >> (_wgslsmith_dot_vec2_u32(~(~vec2<u32>(0u, 1u)), ~_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.d, 1u), vec2<u32>(u_input.d, 4294967295u))) % 32u), 3015u);
    let var_2 = func_2().zx;
    let var_3 = global1.x;
    var var_4 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_div_f32(-398f, -605f), _wgslsmith_f_op_f32(f32(-1f) * -1605f), _wgslsmith_f_op_f32(round(-275f)), -1000f), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-105f, 600f, -206f, -1000f))))))), vec4<f32>(_wgslsmith_f_op_f32(round(-1099f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1425f, 302f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(-421f, -181f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -210f), _wgslsmith_f_op_f32(f32(-1f) * -136f)))), _wgslsmith_f_op_f32(sign(-657f)))));
    return vec4<bool>(all(!(!select(vec3<bool>(false, var_2.x, true), vec3<bool>(var_2.x, true, false), true))), var_2.x, !(-574f == _wgslsmith_f_op_f32(-var_4.x)), !(!var_2.x) != var_2.x);
}

fn func_1(arg_0: Struct_1, arg_1: i32) -> f32 {
    var var_0 = countOneBits(u_input.a.x);
    let var_1 = -135f;
    global1 = countOneBits(vec4<i32>(41365i, 2147483647i, -1i, u_input.a.x));
    let var_2 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1, -151f, var_1)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1, 627f, var_1))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1 - var_1)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-449f + var_1)), -321f)), any(func_5(func_4(func_2(), 18479i >> (0u % 32u), u_input.b >= u_input.b)))));
    var var_3 = Struct_1(global2.a.b, ~(~global2.a.b));
    return var_2.x;
}

fn func_6(arg_0: vec2<f32>, arg_1: vec3<u32>, arg_2: f32, arg_3: Struct_2) -> u32 {
    let var_0 = true;
    global2 = arg_3;
    global1 = firstLeadingBit(firstLeadingBit(u_input.a));
    global1 = firstLeadingBit(-_wgslsmith_add_vec4_i32(u_input.a, _wgslsmith_sub_vec4_i32(u_input.a, abs(vec4<i32>(global1.x, global1.x, global1.x, u_input.b)))));
    global1 = -vec4<i32>(u_input.b, 1i >> (_wgslsmith_mod_u32(45338u, u_input.d) % 32u), max(1i, u_input.a.x), global1.x);
    return global2.a.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(u_input.c, _wgslsmith_mult_u32(1u, ~(~(global2.a.b >> (global2.a.a % 32u)))));
    let var_1 = true;
    global2 = Struct_2(Struct_1(func_6(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1399f, -607f)))), select(vec3<u32>(var_0.b, global2.a.b, u_input.c), vec3<u32>(4294967295u, var_0.b, u_input.c), !vec3<bool>(true, var_1, var_1)), _wgslsmith_f_op_f32(func_1(Struct_1(4294967295u, 4294967295u), ~global1.x)), global0[_wgslsmith_index_u32(countOneBits(_wgslsmith_sub_u32(u_input.c, var_0.b)), 10u)]), countOneBits(func_4(func_5(Struct_1(7031u, 0u)).wwx, -23232i, true).a)));
    let var_2 = abs(vec4<u32>(4294967295u, 1u, 52905u, countOneBits(~func_4(vec3<bool>(var_1, false, false), -1140i, var_1).a)));
    let var_3 = global2.a;
    var var_4 = Struct_1(global2.a.a, ~_wgslsmith_div_u32(~(~80648u), u_input.c));
    var var_5 = _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(u_input.a, u_input.a ^ _wgslsmith_sub_vec4_i32(u_input.a, vec4<i32>(u_input.a.x, global1.x, -2147483647i, 44397i))), _wgslsmith_sub_vec4_i32(select(vec4<i32>(global1.x, -1i, u_input.a.x, 2147483647i), u_input.a, true) & vec4<i32>(-1i, global1.x, u_input.a.x, u_input.b), select(-vec4<i32>(36301i, 40782i, u_input.b, u_input.a.x), -u_input.a, var_1))), ~firstTrailingBit(2147483647i));
    var var_6 = global0[_wgslsmith_index_u32(reverseBits(var_4.b), 10u)];
    global0 = array<Struct_2, 10>();
    let x = u_input.a;
    s_output = StorageBuffer(var_2);
}


struct Struct_1 {
    a: i32,
    b: f32,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
    c: i32,
    d: i32,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: i32,
    d: i32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 24>;

var<private> global1: array<i32, 10>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: vec3<i32>, arg_2: u32, arg_3: bool) -> u32 {
    let var_0 = arg_0.a;
    var var_1 = Struct_2(Struct_1(abs(var_0.a), _wgslsmith_f_op_f32(var_0.b * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(693f * -198f) * var_0.b)), all(vec4<bool>(true, true, true, true))), arg_0.b, countOneBits(u_input.d), ~arg_1.x, countOneBits(vec2<i32>(abs(0i), -abs(arg_1.x))));
    let var_2 = ~(~min(~u_input.a.zz, _wgslsmith_mult_vec2_u32(firstTrailingBit(vec2<u32>(u_input.e.x, 0u)), u_input.e)));
    let var_3 = Struct_1(_wgslsmith_mult_i32(abs(_wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-69108i, -30020i, -19542i), arg_1), arg_1.x & u_input.d)), var_1.d), arg_0.a.b, true);
    global1 = array<i32, 10>();
    return u_input.a.x >> (39756u % 32u);
}

fn func_2(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec4<bool>) -> vec2<f32> {
    var var_0 = -775f;
    var var_1 = abs(arg_1.a.a);
    var_1 = _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(firstTrailingBit(vec3<i32>(1i, -53757i, global1[_wgslsmith_index_u32(u_input.e.x, 10u)])) >> (vec3<u32>(30439u, u_input.a.x, func_3(global0[_wgslsmith_index_u32(4294967295u, 24u)], vec3<i32>(arg_1.c, arg_1.c, arg_1.d), u_input.b.x, true)) % vec3<u32>(32u)), ~reverseBits(_wgslsmith_mult_vec3_i32(vec3<i32>(1i, 1i, arg_1.d), vec3<i32>(0i, arg_1.d, global1[_wgslsmith_index_u32(u_input.e.x, 10u)])))), firstTrailingBit(vec3<i32>(-countOneBits(2147483647i), ~global1[_wgslsmith_index_u32(u_input.e.x, 10u)], -19175i)));
    var var_2 = arg_2.zz;
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_1.b.x - _wgslsmith_div_f32(291f, _wgslsmith_f_op_f32(ceil(arg_1.b.x)))))));
    return _wgslsmith_f_op_vec2_f32(vec2<f32>(-791f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_1.b.x, -2302f)) + _wgslsmith_f_op_f32(arg_1.a.b - arg_0.b)))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(arg_0.b, 290f), arg_1.b)) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3, var_3)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.a.b, var_3)))));
}

fn func_4(arg_0: Struct_2, arg_1: f32) -> vec2<bool> {
    var var_0 = arg_0.a.c;
    return !(!(!(!vec2<bool>(arg_0.a.c, arg_0.a.c))));
}

fn func_1(arg_0: i32, arg_1: f32, arg_2: vec4<f32>, arg_3: Struct_2) -> vec3<u32> {
    let var_0 = select(select(vec2<bool>(arg_3.a.c, arg_3.a.c), func_4(Struct_2(Struct_1(1i, arg_1, false), _wgslsmith_f_op_vec2_f32(func_2(Struct_1(arg_0, -483f, true), global0[_wgslsmith_index_u32(u_input.b.x, 24u)], vec4<bool>(true, false, true, true))), _wgslsmith_add_i32(14388i, 1i), -47542i, vec2<i32>(2147483647i, 1i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.a.b))), select(func_4(global0[_wgslsmith_index_u32(max(u_input.a.x, u_input.a.x), 24u)], arg_1), select(vec2<bool>(arg_3.a.c, true), vec2<bool>(false, arg_3.a.c), select(vec2<bool>(arg_3.a.c, false), vec2<bool>(arg_3.a.c, true), vec2<bool>(false, true))), arg_3.a.c)), !vec2<bool>(any(vec2<bool>(arg_3.a.c, arg_3.a.c)), true), !select(!(arg_0 < global1[_wgslsmith_index_u32(62925u, 10u)]), true, true));
    var var_1 = !((arg_3.b.x >= _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-1058f, arg_3.b.x), _wgslsmith_f_op_f32(abs(arg_2.x)), arg_3.a.c))) & (arg_3.a.c || arg_3.a.c));
    global1 = array<i32, 10>();
    let var_2 = arg_3.a.a;
    global1 = array<i32, 10>();
    return vec3<u32>(~(~u_input.e.x), abs(0u), ~(u_input.b.x >> (select(~u_input.e.x, _wgslsmith_div_u32(4294967295u, u_input.b.x), any(vec3<bool>(var_0.x, arg_3.a.c, arg_3.a.c))) % 32u)));
}

fn func_5(arg_0: f32, arg_1: Struct_2, arg_2: Struct_2) -> vec2<bool> {
    var var_0 = Struct_2(arg_2.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-143f, _wgslsmith_f_op_vec2_f32(func_2(Struct_1(arg_2.a.a, 1000f, true), Struct_2(Struct_1(12213i, arg_0, true), vec2<f32>(arg_1.a.b, 348f), arg_1.d, 1i, vec2<i32>(1i, u_input.c)), vec4<bool>(arg_2.a.c, true, arg_2.a.c, arg_1.a.c))).x))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, arg_1.b.x))))), _wgslsmith_mod_i32(-abs(~global1[_wgslsmith_index_u32(19579u, 10u)]), arg_2.e.x), _wgslsmith_mult_i32((_wgslsmith_sub_i32(arg_1.d, 0i) & reverseBits(-36309i)) & _wgslsmith_dot_vec4_i32(vec4<i32>(arg_2.a.a, u_input.c, arg_2.c, u_input.c) >> (u_input.a % vec4<u32>(32u)), vec4<i32>(arg_2.c, 1i, global1[_wgslsmith_index_u32(1383u, 10u)], global1[_wgslsmith_index_u32(0u, 10u)])), u_input.d), abs(~select(arg_1.e, vec2<i32>(2147483647i, 15488i), vec2<bool>(true, arg_1.a.c)) & select(abs(arg_2.e), vec2<i32>(arg_1.e.x, u_input.c), select(vec2<bool>(arg_1.a.c, false), vec2<bool>(true, arg_2.a.c), vec2<bool>(true, arg_1.a.c)))));
    let var_1 = 48232u;
    global0 = array<Struct_2, 24>();
    var_0 = Struct_2(Struct_1(~2147483647i, arg_2.b.x, true), _wgslsmith_f_op_vec2_f32(var_0.b + var_0.b), var_0.e.x, 1i, arg_1.e);
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1688f, 1262f, 792f), vec3<f32>(arg_1.b.x, arg_1.a.b, -636f), true)))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(2292f, arg_2.b.x, var_0.a.b))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, var_0.a.b, arg_2.a.b)), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-536f, var_0.b.x, 1825f), vec3<f32>(arg_0, var_0.b.x, arg_0)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(2265f, -1840f, var_0.a.b))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-1362f, -283f, -1000f) * vec3<f32>(1604f, -251f, -1559f)))))) * _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_2.b.x, var_0.b.x, -487f), vec3<f32>(-1322f, arg_2.b.x, var_0.a.b), arg_0 > 2051f)), vec3<f32>(_wgslsmith_div_f32(arg_1.b.x, arg_2.b.x), _wgslsmith_f_op_f32(f32(-1f) * -864f), _wgslsmith_f_op_f32(-arg_0)))))));
    return !(!(!(!vec2<bool>(arg_2.a.c, arg_2.a.c))));
}

fn func_6(arg_0: vec2<bool>) -> Struct_2 {
    global0 = array<Struct_2, 24>();
    global0 = array<Struct_2, 24>();
    var var_0 = _wgslsmith_dot_vec4_u32(u_input.a, u_input.a);
    global0 = array<Struct_2, 24>();
    let var_1 = Struct_1(u_input.d, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(1f, -934f)))), true);
    return global0[_wgslsmith_index_u32(4294967295u | (u_input.a.x >> (~(firstTrailingBit(30074u) ^ abs(u_input.b.x)) % 32u)), 24u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(!func_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -248f)), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(func_1(u_input.c, 567f, vec4<f32>(1339f, 360f, 1000f, -1535f), Struct_2(Struct_1(0i, -1516f, true), vec2<f32>(-2187f, -1087f), 2147483647i, global1[_wgslsmith_index_u32(1u, 10u)], vec2<i32>(u_input.d, 2147483647i))), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.a.x, 0u, u_input.e.x), u_input.a.wyw)), 24u)], Struct_2(Struct_1(21087i, -183f, true), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1425f, 169f)), -2147483647i, global1[_wgslsmith_index_u32(15124u, 10u)], vec2<i32>(u_input.d, 1i) >> (vec2<u32>(1u, u_input.e.x) % vec2<u32>(32u)))));
    let var_1 = max(-countOneBits(countOneBits(var_0.a.a >> (u_input.e.x % 32u))), u_input.c << (u_input.e.x % 32u));
    var var_2 = var_0.a;
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -148f)) * var_0.a.b)));
    global0 = array<Struct_2, 24>();
    global1 = array<i32, 10>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_u32(countOneBits(~u_input.e.x), countOneBits(~(~u_input.b.x))), ~countOneBits(min(2147483647i, func_6(vec2<bool>(true, false)).a.a)), vec4<u32>(17305u, _wgslsmith_mult_u32(~(~0u), firstLeadingBit(u_input.a.x)), u_input.a.x, _wgslsmith_div_u32(_wgslsmith_div_u32(u_input.a.x, u_input.e.x), 18160u)));
}


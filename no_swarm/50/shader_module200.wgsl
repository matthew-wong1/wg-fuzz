struct Struct_1 {
    a: vec2<u32>,
    b: vec3<bool>,
    c: vec2<u32>,
}

struct Struct_2 {
    a: u32,
    b: u32,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<f32>,
    c: f32,
}

struct Struct_4 {
    a: vec4<bool>,
    b: i32,
    c: vec4<f32>,
}

struct Struct_5 {
    a: f32,
    b: vec3<f32>,
    c: vec2<bool>,
    d: Struct_4,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_1) -> vec3<bool> {
    let var_0 = select(vec4<bool>(!(true || select(true, arg_0.b.x, true)), !arg_0.b.x, true, select(all(arg_0.b.zx), true, arg_0.b.x)), vec4<bool>(arg_0.b.x, arg_0.b.x, !(!(arg_0.b.x & arg_0.b.x)), any(!select(vec3<bool>(true, arg_0.b.x, true), arg_0.b, arg_0.b.x))), vec4<bool>(true, !(!all(vec2<bool>(arg_0.b.x, false))), any(vec4<bool>(any(arg_0.b), arg_0.b.x, false, true)), arg_0.b.x));
    var var_1 = vec3<f32>(1f, _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-1308f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1161f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1883f)))), -1587f);
    let var_2 = vec3<i32>(u_input.a, _wgslsmith_mult_i32(countOneBits(firstTrailingBit(reverseBits(u_input.c.x))), ~(-17621i & _wgslsmith_dot_vec3_i32(vec3<i32>(-17859i, u_input.c.x, -86166i), vec3<i32>(0i, -25788i, u_input.c.x)))), abs(_wgslsmith_mult_i32(u_input.c.x, -1i)));
    let var_3 = _wgslsmith_add_vec2_u32(min(arg_0.a, arg_0.a), arg_0.c);
    var var_4 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(792f - _wgslsmith_f_op_f32(abs(var_1.x)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(1976f)))))) <= _wgslsmith_f_op_f32(f32(-1f) * -408f);
    return select(!(!select(select(var_0.xxx, vec3<bool>(false, false, var_0.x), var_0.zww), !vec3<bool>(arg_0.b.x, false, arg_0.b.x), any(vec4<bool>(arg_0.b.x, true, false, false)))), var_0.xyy, !vec3<bool>(any(!vec2<bool>(arg_0.b.x, var_0.x)), all(select(var_0, vec4<bool>(arg_0.b.x, arg_0.b.x, false, var_0.x), var_0)), 10776u != var_3.x));
}

fn func_2(arg_0: vec2<u32>, arg_1: vec4<f32>) -> Struct_3 {
    let var_0 = 17681u;
    var var_1 = _wgslsmith_add_vec3_i32(vec3<i32>(~u_input.c.x, -abs(21174i), max(max(-2147483647i, -7367i), u_input.c.x)), vec3<i32>(-1i) * -vec3<i32>(~u_input.c.x, -2147483647i, ~(-2147483647i)));
    let var_2 = !(!vec3<bool>(all(vec2<bool>(true, true)), true, all(select(vec2<bool>(true, true), vec2<bool>(true, false), false))));
    return Struct_3(Struct_1(_wgslsmith_sub_vec2_u32(abs(vec2<u32>(4294967295u, 1175u)), arg_0), select(select(!var_2, var_2, false), func_3(Struct_1(vec2<u32>(u_input.b, 1u), vec3<bool>(var_2.x, var_2.x, true), arg_0)), vec3<bool>(!var_2.x, true, all(vec2<bool>(false, var_2.x)))), _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.b, abs(1u)), firstTrailingBit(vec2<u32>(var_0, 12296u)))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_1.zz + arg_1.yz)), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(179f, 389f), _wgslsmith_f_op_vec2_f32(arg_1.yx + arg_1.wz), false)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.x, arg_1.x)))))), _wgslsmith_f_op_f32(exp2(arg_1.x)));
}

fn func_1(arg_0: Struct_5, arg_1: i32, arg_2: vec4<u32>) -> Struct_3 {
    let var_0 = func_2(arg_2.xx ^ arg_2.zw, _wgslsmith_f_op_vec4_f32(floor(arg_0.d.c)));
    let var_1 = !(!(!arg_0.c));
    let var_2 = _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(855f, _wgslsmith_f_op_f32(f32(-1f) * -488f))));
    let var_3 = func_2(_wgslsmith_div_vec2_u32(abs(var_0.a.a & _wgslsmith_mult_vec2_u32(var_0.a.a, arg_2.wz)), ~reverseBits(vec2<u32>(arg_2.x, 41723u) >> (vec2<u32>(u_input.b, 1u) % vec2<u32>(32u)))), arg_0.d.c);
    let var_4 = -149f;
    return func_2(min(func_2(~vec2<u32>(4294967295u, arg_2.x), vec4<f32>(var_3.b.x, -947f, _wgslsmith_f_op_f32(f32(-1f) * -457f), _wgslsmith_f_op_f32(-1000f - var_0.b.x))).a.c, ~vec2<u32>(_wgslsmith_div_u32(arg_2.x, arg_2.x), _wgslsmith_dot_vec4_u32(arg_2, vec4<u32>(33669u, 0u, 1u, 62226u)))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b.x * 1459f) * arg_0.b.x)), _wgslsmith_f_op_f32(var_3.c + _wgslsmith_f_op_f32(ceil(-584f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1210f * var_0.b.x)))), 476f));
}

fn func_4(arg_0: Struct_5, arg_1: f32, arg_2: u32, arg_3: Struct_3) -> vec4<f32> {
    var var_0 = 1925f;
    var var_1 = arg_0;
    var_1 = Struct_5(arg_3.c, _wgslsmith_f_op_vec3_f32(-arg_0.d.c.wxx), func_3(Struct_1(vec2<u32>(~25790u, arg_2), arg_3.a.b, vec2<u32>(arg_2, _wgslsmith_add_u32(13281u, u_input.b)))).zy, var_1.d);
    var var_2 = -vec2<i32>(-((i32(-1i) * -1i) & _wgslsmith_mod_i32(2147483647i, var_1.d.b)), var_1.d.b);
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(step(var_1.d.c, _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(157f, 450f, var_1.d.c.x, arg_0.b.x)))))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -1i;
    var var_1 = var_0;
    var var_2 = -280f;
    var_1 = -(~firstTrailingBit(-var_0) & -2147483647i);
    var_2 = _wgslsmith_f_op_f32(trunc(1748f));
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(func_4(Struct_5(1115f, vec3<f32>(1009f, 1000f, -242f), vec2<bool>(true, false), Struct_4(vec4<bool>(false, false, false, true), 0i, vec4<f32>(524f, 522f, -1161f, 1000f))), _wgslsmith_f_op_f32(abs(447f)), ~u_input.b, func_1(Struct_5(559f, vec3<f32>(197f, -476f, 203f), vec2<bool>(false, false), Struct_4(vec4<bool>(true, false, true, true), 74402i, vec4<f32>(1000f, 676f, -459f, 409f))), 498i, vec4<u32>(u_input.b, 0u, 0u, 4294967295u)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(347f, 120f, 217f, 615f) - vec4<f32>(-246f, -732f, -1453f, -194f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(660f, -757f, -375f, 613f)), true))) * vec4<f32>(-2672f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + 1660f) - _wgslsmith_f_op_f32(f32(-1f) * -1327f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(304f)))), 674f)));
    let var_4 = ~_wgslsmith_mod_u32(u_input.b, ~u_input.b);
    let var_5 = ~var_4;
    let var_6 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_3.x)) + -208f))), select(~abs(vec2<u32>(55949u, 36240u)), select(vec2<u32>(~u_input.b, u_input.b), ~vec2<u32>(4294967295u, 4294967295u), select(select(vec2<bool>(false, true), vec2<bool>(false, true), true), func_3(Struct_1(vec2<u32>(41990u, 4294967295u), vec3<bool>(true, true, false), vec2<u32>(15284u, u_input.b))).yy, all(vec3<bool>(false, false, false)))), func_2(_wgslsmith_div_vec2_u32(abs(vec2<u32>(1u, u_input.b)), vec2<u32>(var_4, u_input.b) | vec2<u32>(u_input.b, var_4)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(var_3)))).a.b.x));
}


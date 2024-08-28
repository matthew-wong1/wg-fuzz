struct Struct_1 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_2(arg_0: u32, arg_1: vec2<bool>, arg_2: bool) -> Struct_1 {
    var var_0 = select(u_input.c, u_input.c, !(!(!vec4<bool>(false, arg_2, false, false))));
    return Struct_1(~(~(~(~vec3<u32>(1u, 4294967295u, 0u)))));
}

fn func_1(arg_0: vec3<bool>) -> bool {
    var var_0 = u_input.d << (_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_sub_u32(_wgslsmith_add_u32(5147u, u_input.d), 4294967295u), 22165u, ~(~4294967295u)), vec3<u32>(u_input.d, 1u, u_input.d)) % 32u);
    let var_1 = arg_0.x;
    let var_2 = func_2(u_input.d, !arg_0.zx, true);
    var var_3 = min(vec4<i32>(u_input.b, -1i >> (func_2(47345u, select(vec2<bool>(arg_0.x, var_1), arg_0.zz, false), !arg_0.x).a.x % 32u), ~(u_input.a ^ u_input.a), -2147483647i), vec4<i32>(-7021i, u_input.b, min(u_input.a, 15177i) & _wgslsmith_mult_i32(u_input.a, 4267i), _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(u_input.c, vec4<i32>(u_input.a, u_input.a, 1i, 1i)), u_input.c)) ^ reverseBits(select(vec4<i32>(1i, 1i, u_input.c.x, -2147483647i), vec4<i32>(1i, 13496i, u_input.b, 0i), true) >> (_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.d, 36719u, var_2.a.x, 0u), vec4<u32>(u_input.d, var_2.a.x, u_input.d, 8797u)) % vec4<u32>(32u))));
    var var_4 = Struct_1(firstTrailingBit(var_2.a));
    return (1u | _wgslsmith_mult_u32(57496u, countOneBits(var_2.a.x))) < u_input.d;
}

fn func_3(arg_0: vec3<f32>, arg_1: vec2<i32>, arg_2: Struct_1, arg_3: Struct_1) -> vec4<bool> {
    let var_0 = any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, any(vec2<bool>(false, true)), all(vec4<bool>(false, false, true, true))), vec4<bool>(false, true, true, false))) && true;
    let var_1 = true;
    var var_2 = 2802u;
    var var_3 = -1i;
    let var_4 = 0u;
    return select(!vec4<bool>(!var_0 & true, true, !(1i >= u_input.b), false), vec4<bool>(false, all(select(!vec4<bool>(var_0, var_1, false, false), !vec4<bool>(false, true, var_1, false), var_1)), false, (_wgslsmith_mod_u32(46677u, var_4) < _wgslsmith_dot_vec2_u32(arg_2.a.xx, vec2<u32>(arg_2.a.x, 4294967295u))) & !var_0), vec4<bool>(true, true, any(vec4<bool>(func_1(vec3<bool>(false, false, false)), false, var_1, var_0)), !func_1(select(vec3<bool>(true, true, true), vec3<bool>(var_0, var_0, false), true))));
}

fn func_4(arg_0: vec4<u32>, arg_1: vec4<bool>, arg_2: vec3<i32>, arg_3: i32) -> vec3<u32> {
    let var_0 = arg_0.wzx;
    let var_1 = Struct_1(~vec3<u32>(16037u, _wgslsmith_mod_u32(_wgslsmith_sub_u32(56722u, 39930u), 4294967295u), 0u));
    let var_2 = arg_1.zw;
    var var_3 = countOneBits(-u_input.c.yw);
    return ~vec3<u32>(func_2(var_0.x << (_wgslsmith_sub_u32(var_0.x, var_1.a.x) % 32u), !(!var_2), (i32(-1i) * -2147483647i) > -arg_3).a.x, ~max(u_input.d, 30720u), ~_wgslsmith_dot_vec2_u32(arg_0.xw, vec2<u32>(var_0.x, u_input.d)));
}

fn func_5(arg_0: Struct_1, arg_1: vec3<f32>) -> vec2<bool> {
    var var_0 = arg_0;
    let var_1 = func_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_1) * arg_1) - _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(859f, arg_1.x, 893f))), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-376f, arg_1.x, arg_1.x)))))), vec2<i32>(countOneBits(reverseBits(countOneBits(-1i))), u_input.b), func_2(select(1u, ~0u >> (arg_0.a.x % 32u), !any(vec2<bool>(false, false))), func_3(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(arg_1.x, arg_1.x, arg_1.x))), _wgslsmith_sub_vec2_i32(-u_input.c.wy, vec2<i32>(u_input.a, -6551i)), func_2(_wgslsmith_add_u32(5597u, 1u), vec2<bool>(true, true), false), Struct_1(_wgslsmith_mod_vec3_u32(vec3<u32>(var_0.a.x, 0u, var_0.a.x), arg_0.a))).yw, any(vec3<bool>(true, true, true)) != true), arg_0);
    let var_2 = vec2<u32>(var_0.a.x, arg_0.a.x);
    var var_3 = Struct_1(arg_0.a);
    var_0 = Struct_1(select(~(~vec3<u32>(65940u, arg_0.a.x, var_0.a.x)), ~max(_wgslsmith_add_vec3_u32(var_0.a, arg_0.a), ~var_0.a), var_1.xzw));
    return var_1.yw;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true == !any(vec4<bool>(func_1(vec3<bool>(false, true, false)), true, any(vec2<bool>(false, true)), false));
    let var_1 = func_2(_wgslsmith_div_u32(_wgslsmith_add_u32(u_input.d, u_input.d), 50265u), func_5(Struct_1(func_4(vec4<u32>(38736u, 0u, 21060u, 24011u), func_3(vec3<f32>(-879f, 1262f, -1230f), u_input.c.xw, Struct_1(vec3<u32>(4294967295u, 4294967295u, u_input.d)), Struct_1(vec3<u32>(21501u, 1u, u_input.d))), u_input.c.yxw, reverseBits(u_input.b))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-624f, 455f, -556f))), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1247f, 1721f, 774f))))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-293f, -1082f, -305f), vec3<f32>(1877f, -726f, 583f))), vec3<f32>(-2118f, -372f, 1418f))), true))), true);
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(112f + 433f) + _wgslsmith_f_op_f32(548f + 1092f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1423f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(111f * 1257f), -1654f))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(1036f, _wgslsmith_f_op_f32(f32(-1f) * -694f), -1491f))));
    var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.x, 1403f, -573f) * vec3<f32>(var_2.x, -478f, 2370f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.x, -548f, -1309f)) - vec3<f32>(1098f, var_2.x, var_2.x)), true || select(var_0, false, true)))));
    let var_3 = var_1;
    var var_4 = var_2.x;
    var_4 = _wgslsmith_f_op_f32(f32(-1f) * -2340f);
    var_2 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(428f * -111f), var_2.x, var_2.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(361f, 736f, var_2.x) + vec3<f32>(var_2.x, -1000f, -1643f)))))));
    var_2 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, _wgslsmith_f_op_f32(var_2.x + 1321f), -853f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.x - 777f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_2.x)) * var_2.x))));
    let x = u_input.a;
    s_output = StorageBuffer(~(~firstTrailingBit(~vec2<u32>(var_3.a.x, var_1.a.x))), vec2<i32>(1i, min(16558i, -23640i & u_input.c.x)), u_input.c.x << (u_input.d % 32u));
}


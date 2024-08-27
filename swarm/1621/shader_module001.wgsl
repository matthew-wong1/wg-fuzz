struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec2<i32>,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(Struct_2(vec2<u32>(9978u, 25387u)), Struct_2(vec2<u32>(0u, 101530u)), vec3<bool>(true, true, false));

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec4<f32>) -> u32 {
    var var_0 = min(reverseBits(max(countOneBits(u_input.c.x << (global0.b.a.x % 32u)), -_wgslsmith_add_i32(-4206i, u_input.c.x))), _wgslsmith_mod_i32(0i, 2147483647i));
    let var_1 = _wgslsmith_div_vec3_i32(_wgslsmith_mult_vec3_i32(~(-(vec3<i32>(2147483647i, -23741i, u_input.c.x) >> (u_input.a.ywz % vec3<u32>(32u)))), vec3<i32>(2147483647i, _wgslsmith_div_i32(~1i, -15110i & u_input.c.x), reverseBits(_wgslsmith_div_i32(-2147483647i, u_input.c.x)))), _wgslsmith_clamp_vec3_i32(vec3<i32>(max(-2147483647i, 1i), abs(u_input.c.x) & u_input.c.x, _wgslsmith_clamp_i32(u_input.c.x, select(u_input.c.x, u_input.c.x, true), u_input.c.x)), _wgslsmith_mod_vec3_i32(abs(vec3<i32>(-1i, -2147483647i, u_input.c.x)) << (u_input.a.wyw % vec3<u32>(32u)), ~_wgslsmith_mult_vec3_i32(vec3<i32>(0i, 2147483647i, u_input.c.x), vec3<i32>(u_input.c.x, u_input.c.x, u_input.c.x))), ~(firstLeadingBit(vec3<i32>(-2147483647i, -33361i, u_input.c.x)) >> (u_input.a.xxz % vec3<u32>(32u)))));
    var var_2 = Struct_2(_wgslsmith_sub_vec2_u32(~vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(global0.a.a.x, global0.b.a.x, u_input.d), u_input.a.yyw), arg_0.a.x), u_input.a.zx));
    var var_3 = ~(~u_input.a.xwy);
    var var_4 = Struct_3(arg_1, Struct_2(~arg_1.a), select(global0.c, global0.c, global0.c.x));
    return 1u;
}

fn func_4(arg_0: u32, arg_1: bool, arg_2: Struct_2, arg_3: Struct_3) -> vec3<bool> {
    global0 = Struct_3(arg_3.b, global0.b, select(vec3<bool>(any(vec4<bool>(true, global0.c.x, arg_3.c.x, arg_1)), false, any(vec4<bool>(global0.c.x, arg_1, false, arg_3.c.x))), vec3<bool>(true || all(vec4<bool>(false, arg_3.c.x, arg_3.c.x, arg_3.c.x)), true, true || (false || arg_3.c.x)), all(vec4<bool>(any(vec4<bool>(false, arg_3.c.x, global0.c.x, global0.c.x)), true, true, arg_3.c.x))));
    global0 = arg_3;
    let var_0 = firstLeadingBit(~(~1u)) | u_input.d;
    var var_1 = arg_3;
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-245f, -1000f), vec2<f32>(-400f, -1000f))), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(912f, 973f), vec2<f32>(-1073f, -883f)))) - _wgslsmith_f_op_vec2_f32(max(vec2<f32>(1000f, 1113f), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1025f, 1308f)))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-763f, 1129f))))) - vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(150f)), -610f)), -799f));
    return global0.c;
}

fn func_2(arg_0: vec4<u32>, arg_1: Struct_2) -> Struct_2 {
    var var_0 = Struct_3(global0.b, Struct_2(vec2<u32>(arg_0.x, countOneBits(arg_1.a.x)) | max(global0.a.a, firstLeadingBit(vec2<u32>(global0.a.a.x, 1u)))), func_4(func_3(Struct_2(arg_1.a), Struct_2(vec2<u32>(7895u, u_input.b)), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-202f, -1672f, 617f, -494f), vec4<f32>(-1189f, 785f, -276f, 1513f)))) >> (4294967295u % 32u), true, arg_1, Struct_3(arg_1, arg_1, vec3<bool>(global0.c.x, true, global0.c.x))));
    var_0 = Struct_3(var_0.b, Struct_2(~(countOneBits(u_input.a.zz) | arg_0.zz)), select(var_0.c, !vec3<bool>(true, true, -56873i == u_input.c.x), global0.c));
    var_0 = Struct_3(Struct_2(max(abs(abs(vec2<u32>(arg_1.a.x, arg_1.a.x))), _wgslsmith_sub_vec2_u32(~vec2<u32>(global0.b.a.x, arg_1.a.x), vec2<u32>(4294967295u, arg_1.a.x)))), global0.a, func_4(u_input.b << (~arg_1.a.x % 32u), false, global0.a, Struct_3(arg_1, global0.a, select(var_0.c, global0.c, !global0.c.x))));
    var var_1 = select(select(vec4<bool>(false, true, var_0.c.x, false), !vec4<bool>(true, !var_0.c.x, var_0.c.x, true), select(!global0.c.x, var_0.c.x, true) || any(vec2<bool>(var_0.c.x, false))), select(!(!vec4<bool>(global0.c.x, var_0.c.x, false, global0.c.x)), !select(select(vec4<bool>(var_0.c.x, global0.c.x, false, false), vec4<bool>(global0.c.x, false, global0.c.x, false), vec4<bool>(true, var_0.c.x, true, true)), vec4<bool>(true, true, true, true), vec4<bool>(false, true, var_0.c.x, true)), global0.c.x), false);
    var_0 = Struct_3(Struct_2(~(~max(vec2<u32>(98744u, var_0.b.a.x), arg_0.zw))), Struct_2(abs(_wgslsmith_div_vec2_u32(vec2<u32>(arg_1.a.x, 24072u), _wgslsmith_sub_vec2_u32(vec2<u32>(1u, 16496u), vec2<u32>(var_0.b.a.x, 53972u))))), vec3<bool>(true, global0.a.a.x >= _wgslsmith_add_u32(min(global0.b.a.x, u_input.d), arg_0.x ^ arg_0.x), global0.c.x));
    return Struct_2(global0.b.a);
}

fn func_5(arg_0: Struct_3) -> Struct_1 {
    let var_0 = Struct_2(~(global0.b.a >> (((vec2<u32>(arg_0.a.a.x, u_input.b) << (global0.a.a % vec2<u32>(32u))) | arg_0.a.a) % vec2<u32>(32u))));
    var var_1 = true;
    var var_2 = vec4<bool>(false, false, select(true, firstTrailingBit(i32(-1i) * -2147483647i) >= -2147483647i, global0.c.x), !select(global0.c.x, select(!global0.c.x, all(arg_0.c), true), global0.c.x));
    var_1 = !(!any(global0.c));
    var var_3 = 4294967295u != (25038u | (arg_0.a.a.x ^ countOneBits(var_0.a.x)));
    return Struct_1(vec2<i32>(u_input.c.x, abs(~_wgslsmith_mod_i32(u_input.c.x, u_input.c.x))));
}

fn func_1(arg_0: bool, arg_1: Struct_2, arg_2: i32) -> Struct_3 {
    let var_0 = func_5(Struct_3(func_2(min(u_input.a, ~vec4<u32>(u_input.a.x, 20647u, global0.a.a.x, u_input.d)), global0.b), arg_1, vec3<bool>(!all(vec4<bool>(global0.c.x, true, global0.c.x, true)), true, arg_0)));
    var var_1 = _wgslsmith_f_op_f32(step(400f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1000f)) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-293f * 175f), _wgslsmith_f_op_f32(522f * 1231f)))))));
    let var_2 = func_5(Struct_3(global0.b, global0.a, select(!(!vec3<bool>(global0.c.x, true, true)), !select(global0.c, global0.c, false), !func_4(0u, false, Struct_2(arg_1.a), Struct_3(arg_1, Struct_2(vec2<u32>(global0.a.a.x, 0u)), vec3<bool>(arg_0, global0.c.x, global0.c.x))).x)));
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(758f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(-2192f, 1694f)), _wgslsmith_f_op_f32(step(304f, -732f)), false)))));
    let var_3 = func_5(Struct_3(func_2(select(u_input.a, vec4<u32>(1u, 93065u, u_input.d, 4294967295u), select(vec4<bool>(false, false, arg_0, false), vec4<bool>(global0.c.x, arg_0, false, true), vec4<bool>(true, true, false, false))), func_2(select(u_input.a, u_input.a, vec4<bool>(true, false, global0.c.x, false)), Struct_2(arg_1.a))), Struct_2(vec2<u32>(4294967295u, 1u) & _wgslsmith_sub_vec2_u32(global0.a.a, vec2<u32>(global0.a.a.x, arg_1.a.x))), vec3<bool>(global0.c.x, arg_0 || (arg_0 & false), true || any(vec2<bool>(global0.c.x, global0.c.x)))));
    return Struct_3(func_2(u_input.a & _wgslsmith_clamp_vec4_u32(firstTrailingBit(vec4<u32>(21373u, 29652u, 4294967295u, global0.a.a.x)), vec4<u32>(75111u, 0u, global0.b.a.x, global0.a.a.x), ~u_input.a), func_2(_wgslsmith_mult_vec4_u32(countOneBits(u_input.a), vec4<u32>(17607u, 0u, global0.a.a.x, u_input.b)), global0.a)), func_2(vec4<u32>(_wgslsmith_sub_u32(4294967295u, 53867u), abs(1u), _wgslsmith_clamp_u32(36143u, u_input.a.x, global0.a.a.x << (1u % 32u)), 0u), global0.a), !global0.c);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1(global0.c.x, global0.a, ~1i);
    let var_0 = select(!select(vec4<bool>(true, true, false, true), !select(vec4<bool>(true, global0.c.x, false, global0.c.x), vec4<bool>(global0.c.x, false, true, global0.c.x), false), true | global0.c.x), !select(select(select(vec4<bool>(false, global0.c.x, global0.c.x, global0.c.x), vec4<bool>(global0.c.x, global0.c.x, global0.c.x, global0.c.x), global0.c.x), vec4<bool>(true, global0.c.x, global0.c.x, global0.c.x), true && global0.c.x), !select(vec4<bool>(false, true, true, global0.c.x), vec4<bool>(true, false, true, false), vec4<bool>(true, true, global0.c.x, true)), select(vec4<bool>(false, true, global0.c.x, global0.c.x), select(vec4<bool>(global0.c.x, global0.c.x, true, false), vec4<bool>(false, false, global0.c.x, global0.c.x), true), select(vec4<bool>(false, false, global0.c.x, global0.c.x), vec4<bool>(global0.c.x, global0.c.x, global0.c.x, global0.c.x), vec4<bool>(global0.c.x, true, global0.c.x, true)))), vec4<bool>(all(global0.c.zx), global0.c.x && true, !global0.c.x, true));
    let x = u_input.a;
    s_output = StorageBuffer(global0.a.a.x, ~vec4<u32>(u_input.b, u_input.d, 4294967295u, 20746u));
}


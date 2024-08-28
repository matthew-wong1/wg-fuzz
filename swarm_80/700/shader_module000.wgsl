struct Struct_1 {
    a: f32,
    b: vec2<u32>,
    c: bool,
    d: vec3<f32>,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec3<i32>,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> bool {
    var var_0 = _wgslsmith_mult_vec4_u32(vec4<u32>(arg_0.b.x >> (~(~arg_1.b.x) % 32u), 31351u, ~(~1u), 1u), _wgslsmith_sub_vec4_u32(~vec4<u32>(33925u, 49464u, _wgslsmith_mod_u32(42174u, arg_1.b.x), countOneBits(arg_0.b.x)), ~(~vec4<u32>(26466u, 1u, 0u, arg_1.b.x) | abs(vec4<u32>(56275u, 23200u, 14334u, 80077u)))));
    var var_1 = arg_1;
    var_1 = Struct_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.a) * _wgslsmith_f_op_f32(f32(-1f) * -120f)), _wgslsmith_f_op_f32(f32(-1f) * -660f))))), countOneBits(var_0.zz), all(vec3<bool>(arg_0.c, any(!vec4<bool>(true, true, arg_0.c, arg_0.c)), select(arg_1.c, all(vec2<bool>(true, false)), !arg_1.c))), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.a, _wgslsmith_f_op_f32(f32(-1f) * -1000f), 523f) * vec3<f32>(arg_0.d.x, _wgslsmith_f_op_f32(-563f + arg_0.a), arg_1.d.x)), abs(_wgslsmith_mult_vec4_i32(vec4<i32>(select(2147483647i, var_1.e.x, true), arg_1.e.x, -2147483647i, max(-1i, arg_0.e.x)), -var_1.e >> (vec4<u32>(76404u, 9768u, 1u, 46716u) % vec4<u32>(32u)))));
    var_1 = Struct_1(796f, vec2<u32>(_wgslsmith_clamp_u32(~arg_0.b.x, u_input.d, firstTrailingBit(u_input.b)), _wgslsmith_clamp_u32(arg_1.b.x, 4294967295u, var_0.x)) >> ((~vec2<u32>(var_0.x, arg_0.b.x) | ((arg_0.b ^ arg_1.b) << (arg_0.b % vec2<u32>(32u)))) % vec2<u32>(32u)), false, arg_1.d, reverseBits(vec4<i32>(-1i) * -vec4<i32>(u_input.c.x, 1i, 11694i, 29436i)) >> (firstTrailingBit(select(firstTrailingBit(vec4<u32>(0u, 33230u, var_1.b.x, 4294967295u)), ~vec4<u32>(25333u, 4294967295u, 1u, var_0.x), select(vec4<bool>(arg_1.c, false, false, var_1.c), vec4<bool>(false, true, false, var_1.c), vec4<bool>(arg_1.c, true, false, true)))) % vec4<u32>(32u)));
    let var_2 = _wgslsmith_dot_vec3_u32(vec3<u32>(firstTrailingBit(arg_1.b.x), _wgslsmith_clamp_u32(arg_0.b.x, ~arg_0.b.x, u_input.d & 24617u) ^ 1u, ~0u), var_0.yxz);
    return true;
}

fn func_2(arg_0: vec2<i32>, arg_1: vec4<f32>, arg_2: vec4<u32>) -> i32 {
    let var_0 = select(select(vec3<bool>(false, true, true), !vec3<bool>(any(vec4<bool>(false, true, false, false)), true, true), true), !select(select(select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), true), vec3<bool>(true, true, true), true), vec3<bool>(true, true, true), vec3<bool>(true, func_3(Struct_1(arg_1.x, arg_2.zy, true, vec3<f32>(-137f, -938f, 725f), vec4<i32>(u_input.a.x, u_input.a.x, 2147483647i, u_input.c.x)), Struct_1(1000f, vec2<u32>(arg_2.x, 93674u), false, vec3<f32>(905f, 1773f, 498f), vec4<i32>(-12371i, arg_0.x, u_input.a.x, -11401i))), true)), any(!vec3<bool>(true, any(vec2<bool>(true, false)), true)));
    let var_1 = select(!(!(!vec4<bool>(false, var_0.x, var_0.x, var_0.x))), vec4<bool>(true, true, all(select(!vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), select(vec4<bool>(var_0.x, true, false, var_0.x), vec4<bool>(true, var_0.x, var_0.x, false), vec4<bool>(true, true, var_0.x, var_0.x)), !vec4<bool>(false, var_0.x, true, var_0.x))), false), select(vec4<bool>(true, (false != var_0.x) & var_0.x, any(var_0.xx), _wgslsmith_f_op_f32(-1138f * arg_1.x) >= _wgslsmith_f_op_f32(-arg_1.x)), vec4<bool>(true, false, all(var_0.zz), select(var_0.x, func_3(Struct_1(-664f, vec2<u32>(43561u, arg_2.x), var_0.x, vec3<f32>(-1000f, arg_1.x, 451f), vec4<i32>(arg_0.x, u_input.a.x, 0i, arg_0.x)), Struct_1(-579f, arg_2.xw, var_0.x, arg_1.xwy, vec4<i32>(arg_0.x, u_input.a.x, arg_0.x, 7129i))), false)), _wgslsmith_f_op_f32(select(arg_1.x, _wgslsmith_div_f32(arg_1.x, -470f), !var_0.x)) >= arg_1.x));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x)), ~vec2<u32>(_wgslsmith_div_u32(_wgslsmith_add_u32(arg_2.x, u_input.b), ~u_input.d), _wgslsmith_mod_u32(firstTrailingBit(1u), arg_2.x)), true | all(vec3<bool>(arg_1.x != arg_1.x, false, true)), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1973f, -1520f, -801f))), vec3<f32>(_wgslsmith_f_op_f32(arg_1.x + 491f), _wgslsmith_f_op_f32(f32(-1f) * -486f), -436f))), _wgslsmith_mult_vec4_i32(max(select(vec4<i32>(u_input.a.x, arg_0.x, -1i, arg_0.x), vec4<i32>(37530i, -1i, 1i, arg_0.x) & vec4<i32>(u_input.c.x, -1i, arg_0.x, u_input.c.x), false), -firstLeadingBit(vec4<i32>(-544i, -1i, arg_0.x, 2251i))), vec4<i32>(max(i32(-1i) * -44229i, u_input.a.x), arg_0.x | -arg_0.x, ~31936i, reverseBits(_wgslsmith_dot_vec2_i32(arg_0, u_input.c.zz)))));
    var var_3 = -(arg_0.x ^ arg_0.x);
    let var_4 = var_2;
    return _wgslsmith_sub_i32(var_2.e.x, var_2.e.x);
}

fn func_1() -> StorageBuffer {
    let var_0 = _wgslsmith_div_vec2_i32(countOneBits(u_input.a), reverseBits(vec2<i32>(u_input.a.x, func_2(vec2<i32>(u_input.a.x, -12622i), vec4<f32>(-1000f, -851f, 154f, -343f), vec4<u32>(u_input.b, 28339u, u_input.b, u_input.d))))) << (~firstTrailingBit(_wgslsmith_sub_vec2_u32(abs(vec2<u32>(u_input.d, 1u)), vec2<u32>(60045u, 44612u))) % vec2<u32>(32u));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1000f))))))), ~(vec2<u32>(u_input.b, _wgslsmith_mult_u32(84623u, u_input.d)) >> (abs(vec2<u32>(78797u, 4294967295u) ^ vec2<u32>(u_input.b, u_input.b)) % vec2<u32>(32u))), func_3(Struct_1(-149f, ~vec2<u32>(42709u, 26426u), true, vec3<f32>(_wgslsmith_f_op_f32(ceil(-317f)), _wgslsmith_f_op_f32(trunc(-425f)), -464f), vec4<i32>(u_input.c.x, _wgslsmith_dot_vec2_i32(vec2<i32>(1i, -1i), var_0), ~u_input.c.x, var_0.x & var_0.x)), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1176f), vec2<u32>(~u_input.d, ~13732u), !all(vec2<bool>(false, true)), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(vec3<f32>(832f, -888f, -240f), vec3<f32>(140f, 283f, -852f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(372f, 457f, 943f)))), -(vec4<i32>(var_0.x, -78272i, u_input.c.x, -46149i) & vec4<i32>(-15667i, u_input.a.x, -19708i, u_input.a.x)))), vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1492f) + -478f))), 649f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -828f)))), abs(max(abs(vec4<i32>(u_input.c.x, var_0.x, -9855i, var_0.x)), -vec4<i32>(var_0.x, 36088i, -29989i, 2147483647i))) >> (~min(reverseBits(vec4<u32>(u_input.b, 0u, u_input.d, u_input.b)), abs(vec4<u32>(u_input.b, 11774u, 4294967295u, u_input.d))) % vec4<u32>(32u)));
    var var_2 = u_input.c.yy;
    var_2 = ~(vec2<i32>(-49562i, var_0.x) << (vec2<u32>(u_input.b, ~var_1.b.x) % vec2<u32>(32u))) >> (var_1.b % vec2<u32>(32u));
    let var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.d.x * -363f), _wgslsmith_f_op_f32(330f + -509f))), var_1.a)));
    return StorageBuffer(-818f, _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.a, -780f, -763f, 1026f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3, var_1.a, var_3, var_3)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 0i;
    var var_1 = reverseBits(vec3<u32>(~u_input.b, _wgslsmith_mult_u32(~_wgslsmith_div_u32(4294967295u, 373u), abs(0u)), u_input.d));
    let x = u_input.a;
    s_output = func_1();
}


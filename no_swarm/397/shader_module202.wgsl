struct Struct_1 {
    a: vec3<u32>,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: f32,
    d: i32,
    e: vec2<u32>,
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

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_2() -> Struct_1 {
    return Struct_1(~vec3<u32>(35557u, ~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 4294967295u, 19511u), vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x)), u_input.a.x), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-146f, 1585f, 274f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(178f, -1410f, -365f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1008f, -248f, 1244f)) * _wgslsmith_div_vec3_f32(vec3<f32>(430f, 1449f, 367f), vec3<f32>(204f, -158f, -585f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(733f, 1245f, -106f) - vec3<f32>(-788f, -1980f, -724f))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-2053f, -115f, 905f))), true)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: u32) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(-250f - -213f);
    let var_1 = arg_1;
    let var_2 = arg_1;
    var var_3 = func_2().a.x;
    var var_4 = -1i;
    return Struct_1(vec3<u32>(func_2().a.x, arg_2.a.x, _wgslsmith_mod_u32(3795u, arg_2.a.x)), _wgslsmith_f_op_vec3_f32(-func_2().b));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> vec3<u32> {
    let var_0 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_1.b.x))), -487f), arg_1.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-587f * 307f)) - arg_1.b.x), _wgslsmith_div_f32(-1000f, arg_0.b.x));
    let var_1 = max(arg_1.a.xx & _wgslsmith_mod_vec2_u32(abs(vec2<u32>(20969u, 1u)), ~vec2<u32>(arg_0.a.x, 45983u)), abs(~vec2<u32>(u_input.a.x, arg_1.a.x))) & reverseBits(u_input.a.xx);
    return min(_wgslsmith_div_vec3_u32(vec3<u32>(_wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(55813u, 0u, 4294967295u, arg_1.a.x) | vec4<u32>(u_input.a.x, arg_1.a.x, 73178u, var_1.x)), 1u, 0u), abs(arg_1.a)), vec3<u32>(arg_0.a.x, func_3(Struct_1(arg_0.a, vec3<f32>(arg_0.b.x, -356f, arg_1.b.x)), func_3(Struct_1(vec3<u32>(var_1.x, 98708u, arg_0.a.x), var_0.zzy), func_2(), arg_0, var_1.x), func_2(), max(36444u, 20684u)).a.x, var_1.x));
}

fn func_1(arg_0: Struct_1) -> i32 {
    let var_0 = Struct_1(func_4(func_3(func_2(), arg_0, arg_0, 30674u), Struct_1(u_input.a.wyx, arg_0.b)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_0.b), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-arg_0.b), arg_0.b)), arg_0.b))));
    let var_1 = firstLeadingBit(select(max(vec3<i32>(1i, 1i, 1i), select(_wgslsmith_sub_vec3_i32(vec3<i32>(1i, -1i, 23380i), vec3<i32>(-1i, 0i, -1749i)), vec3<i32>(-2147483647i, -9451i, -56558i), true)), _wgslsmith_sub_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(1i, 2147483647i, 2147483647i), firstLeadingBit(vec3<i32>(15863i, -17345i, -2147483647i))), firstLeadingBit(vec3<i32>(17813i, 0i, -2147483647i) >> (arg_0.a % vec3<u32>(32u)))), select(vec3<bool>(true, true, select(true, false, true)), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(true, false, true)), true), true)));
    let var_2 = var_0.a.x;
    let var_3 = min(_wgslsmith_dot_vec3_u32(var_0.a | vec3<u32>(abs(u_input.a.x), 0u, 36662u), vec3<u32>(arg_0.a.x, ~_wgslsmith_div_u32(0u, var_0.a.x), var_0.a.x)), _wgslsmith_add_u32(12406u, _wgslsmith_mult_u32(countOneBits(~u_input.a.x), var_2)));
    let var_4 = all(select(select(select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), false), vec3<bool>(true, true, true), false), vec3<bool>(true, true, any(vec4<bool>(true, true, false, false))), select(vec3<bool>(false, true, true), select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), false), u_input.a.x <= var_3))) & !all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)));
    return _wgslsmith_add_i32(~var_1.x, firstLeadingBit(_wgslsmith_clamp_i32(0i, _wgslsmith_clamp_i32(1i, -1i, var_1.x), ~(var_1.x & 26662i))));
}

fn func_5(arg_0: bool, arg_1: vec4<i32>, arg_2: u32) -> vec2<f32> {
    let var_0 = Struct_1(vec3<u32>(_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_2, 45522u), firstTrailingBit(u_input.a.zy)), ~u_input.a.x), 1u, 1u), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1079f, -1049f, -805f))), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1188f, 356f, -2137f)))) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1741f, 840f, 759f)), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-241f, -184f, -430f)))))));
    let var_1 = var_0;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-596f))) >= _wgslsmith_div_f32(var_0.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(1276f)))) * var_0.b.x));
    let var_3 = func_2();
    var var_4 = arg_1;
    return vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(-1275f)), var_3.b.x, var_2)), var_0.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true | select(true, all(select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), false), true)), true);
    var var_1 = ~(-_wgslsmith_dot_vec2_i32(vec2<i32>(1i, 24510i), max(vec2<i32>(1i, 0i), select(vec2<i32>(47054i, 458i), vec2<i32>(2147483647i, 14004i), false))));
    var_1 = max(abs(_wgslsmith_add_i32(-abs(-78779i), ~1i)), abs(1i));
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1489f, 322f)) * vec2<f32>(-730f, -1336f))))));
    var_2 = _wgslsmith_f_op_vec2_f32(func_5(!select(true, _wgslsmith_f_op_f32(sign(var_2.x)) == 1000f, true), ~vec4<i32>(~73294i, -1i, _wgslsmith_mult_i32(0i, 49338i), ~func_1(Struct_1(u_input.a.wyw, vec3<f32>(var_2.x, var_2.x, 713f)))), _wgslsmith_add_u32(abs(u_input.a.x) & _wgslsmith_mult_u32(countOneBits(u_input.a.x), 1u), ~func_4(Struct_1(u_input.a.ywy, vec3<f32>(1389f, var_2.x, var_2.x)), Struct_1(u_input.a.yzz, vec3<f32>(var_2.x, var_2.x, 185f))).x)));
    let var_3 = vec4<i32>(0i >> (u_input.a.x % 32u), firstTrailingBit(min(_wgslsmith_sub_i32(-2147483647i, -1i), ~2147483647i) << (u_input.a.x % 32u)), ~_wgslsmith_mod_i32(~(~(-23732i)), ~1i), -2147483647i);
    let var_4 = Struct_1(min((vec3<u32>(u_input.a.x, 60422u, 4294967295u) >> (~vec3<u32>(u_input.a.x, u_input.a.x, 4294967295u) % vec3<u32>(32u))) >> (u_input.a.yxz % vec3<u32>(32u)), ~(min(vec3<u32>(u_input.a.x, u_input.a.x, 23816u), u_input.a.zwx) ^ firstTrailingBit(u_input.a.yzw))), _wgslsmith_div_vec3_f32(vec3<f32>(-723f, _wgslsmith_div_f32(1918f, _wgslsmith_f_op_f32(ceil(var_2.x))), 813f), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.x, -284f, var_2.x) + vec3<f32>(var_2.x, 1245f, 371f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.x, var_2.x, 645f) - vec3<f32>(-1155f, 531f, 1454f)))))));
    var var_5 = var_3.x;
    var var_6 = var_4.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(~u_input.a.x, u_input.a.x, func_2().a.x, u_input.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.x + -636f) + 1195f), _wgslsmith_f_op_f32(-func_3(var_4, var_4, var_4, _wgslsmith_clamp_u32(~var_4.a.x, ~var_4.a.x, 0u)).b.x), _wgslsmith_dot_vec4_i32(reverseBits(var_3 >> (vec4<u32>(var_4.a.x, var_4.a.x, 108437u, 1u) % vec4<u32>(32u))), var_3), func_2().a.zz);
}


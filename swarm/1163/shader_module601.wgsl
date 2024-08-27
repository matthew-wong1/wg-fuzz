struct Struct_1 {
    a: f32,
    b: vec4<i32>,
    c: u32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: u32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: vec4<f32>,
    d: i32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

var<private> global1: vec3<i32> = vec3<i32>(-65330i, -5521i, -14991i);

var<private> global2: array<vec3<i32>, 13> = array<vec3<i32>, 13>(vec3<i32>(18880i, 0i, 18779i), vec3<i32>(34037i, 1i, -21977i), vec3<i32>(4545i, 0i, -20577i), vec3<i32>(-27128i, 1i, -34618i), vec3<i32>(-3215i, -13815i, -4911i), vec3<i32>(-5322i, 1i, 1i), vec3<i32>(52064i, 2147483647i, 2147483647i), vec3<i32>(-5432i, -20456i, 34809i), vec3<i32>(i32(-2147483648), 15134i, 3185i), vec3<i32>(2147483647i, 2147483647i, 29973i), vec3<i32>(-1i, 16608i, i32(-2147483648)), vec3<i32>(i32(-2147483648), 7828i, 35042i), vec3<i32>(i32(-2147483648), 5803i, 0i));

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3(arg_0: u32, arg_1: Struct_2, arg_2: Struct_1) -> f32 {
    var var_0 = arg_1;
    global2 = array<vec3<i32>, 13>();
    var var_1 = arg_2;
    var var_2 = !(1u >= var_1.c);
    global2 = array<vec3<i32>, 13>();
    return var_0.a.x;
}

fn func_2(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_2) -> vec4<bool> {
    global1 = reverseBits(-(_wgslsmith_mult_vec3_i32(select(global2[_wgslsmith_index_u32(0u, 13u)], vec3<i32>(-18603i, u_input.e, 35312i), false), ~arg_1.b.zww) >> (_wgslsmith_add_vec3_u32(global0.wzw, max(global0.zxy, global0.xxw)) % vec3<u32>(32u))));
    var var_0 = arg_0;
    global2 = array<vec3<i32>, 13>();
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-873f + _wgslsmith_f_op_f32(-var_0.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(77309u, Struct_2(arg_2.a, 1u), arg_1)))) == -1953f;
    global1 = vec3<i32>(_wgslsmith_dot_vec4_i32(arg_1.b, abs(firstTrailingBit(_wgslsmith_div_vec4_i32(vec4<i32>(-1i, arg_1.b.x, global1.x, 8317i), vec4<i32>(-48074i, -25404i, arg_1.b.x, u_input.e))))), 0i, ~arg_1.b.x);
    return select(!(!vec4<bool>(var_1 && false, true, !var_1, var_1)), select(!(!(!vec4<bool>(var_1, var_1, var_1, true))), vec4<bool>(true, !(1i > u_input.e), !all(vec3<bool>(false, var_1, false)), var_1), !var_1), !select(true, any(select(vec4<bool>(var_1, true, var_1, true), vec4<bool>(var_1, false, var_1, var_1), vec4<bool>(var_1, false, var_1, var_1))), true));
}

fn func_4(arg_0: bool, arg_1: Struct_2, arg_2: Struct_2, arg_3: Struct_2) -> Struct_2 {
    global2 = array<vec3<i32>, 13>();
    var var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3.a.x) - arg_3.a.x))) * arg_3.a.x), _wgslsmith_add_vec4_i32(vec4<i32>(firstTrailingBit(_wgslsmith_clamp_i32(-1i, -4357i, -15452i)), select(~global1.x, firstLeadingBit(0i), any(vec4<bool>(true, false, false, true))), -61089i, ~30938i), vec4<i32>(-1i) * -(~vec4<i32>(global1.x, u_input.e, 24618i, -13505i))), 14218u);
    global1 = global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_2.b, _wgslsmith_sub_u32(arg_3.b, var_0.c) ^ ~36950u, _wgslsmith_sub_u32(~0u, ~var_0.c)) << (_wgslsmith_clamp_vec3_u32(global0.xzy, select(min(vec3<u32>(u_input.a.x, 4294967295u, 4294967295u), vec3<u32>(0u, arg_2.b, 38762u)), ~global0.zzz, all(vec2<bool>(arg_0, false))), _wgslsmith_sub_vec3_u32(global0.wwz, reverseBits(global0.zwz))) % vec3<u32>(32u)), vec3<u32>(u_input.a.x, _wgslsmith_div_u32(0u, _wgslsmith_mod_u32(42884u, 9647u)), ~arg_1.b ^ global0.x) >> (_wgslsmith_add_vec3_u32(vec3<u32>(~42740u, _wgslsmith_div_u32(var_0.c, arg_3.b), var_0.c), countOneBits(select(vec3<u32>(41948u, 4294967295u, var_0.c), vec3<u32>(1u, var_0.c, arg_2.b), vec3<bool>(true, false, true)))) % vec3<u32>(32u))), 13u)];
    global1 = -select(countOneBits(~_wgslsmith_mod_vec3_i32(vec3<i32>(-7013i, 2147483647i, -18534i), vec3<i32>(var_0.b.x, 84108i, var_0.b.x))), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 4294967295u, 74860u), ~vec3<u32>(52963u, 4294967295u, u_input.d)), 13u)] << ((_wgslsmith_sub_vec3_u32(global0.zwy, global0.yzw) | vec3<u32>(u_input.b, var_0.c, var_0.c)) % vec3<u32>(32u)), arg_0 | (~var_0.c <= (var_0.c ^ 1u)));
    var_0 = Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(-684f, var_0.a, false)))))), _wgslsmith_mult_vec4_i32(-var_0.b, _wgslsmith_add_vec4_i32(vec4<i32>(~var_0.b.x, -18982i, -1i, abs(-37254i)), _wgslsmith_clamp_vec4_i32(var_0.b, vec4<i32>(13403i, -18920i, 2147483647i, -2147483647i), var_0.b) | min(var_0.b, vec4<i32>(31032i, -24827i, u_input.e, 50101i)))), _wgslsmith_mod_u32(arg_2.b, _wgslsmith_mod_u32(_wgslsmith_mod_u32(~28151u, arg_2.b), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 33924u), select(vec2<u32>(u_input.d, 1u), u_input.a, arg_0)))));
    return Struct_2(vec3<f32>(arg_3.a.x, -1705f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(sign(arg_3.a.x))) - _wgslsmith_f_op_f32(select(arg_2.a.x, arg_3.a.x, !arg_0)))), ~firstLeadingBit(4294967295u));
}

fn func_1(arg_0: vec3<u32>) -> i32 {
    global0 = vec4<u32>(_wgslsmith_add_u32(arg_0.x, 0u), global0.x, min(~firstTrailingBit(1u), 3663u | u_input.b), u_input.d) | abs(min(firstLeadingBit(_wgslsmith_clamp_vec4_u32(vec4<u32>(arg_0.x, 0u, 1u, arg_0.x), vec4<u32>(80021u, arg_0.x, arg_0.x, 1u), vec4<u32>(1u, global0.x, global0.x, 1u))), _wgslsmith_div_vec4_u32(max(vec4<u32>(4294967295u, 40945u, 25818u, global0.x), vec4<u32>(73964u, arg_0.x, 4294967295u, 66650u)), vec4<u32>(1u, u_input.d, u_input.b, arg_0.x))));
    let var_0 = func_4(any(!func_2(Struct_2(vec3<f32>(-967f, 1569f, -254f), arg_0.x), Struct_1(783f, vec4<i32>(40459i, -1i, 2147483647i, u_input.e), global0.x), Struct_2(vec3<f32>(538f, -1000f, 1294f), arg_0.x))), Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(741f, 139f, 132f))) * vec3<f32>(-1985f, _wgslsmith_div_f32(-623f, -540f), -1162f)), ~arg_0.x), Struct_2(vec3<f32>(_wgslsmith_f_op_f32(1268f * _wgslsmith_f_op_f32(151f + -1379f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-117f + 912f), -1385f), -660f), global0.x >> (arg_0.x % 32u)), Struct_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(func_3(global0.x, Struct_2(vec3<f32>(1282f, -1468f, -314f), 21459u), Struct_1(1000f, vec4<i32>(u_input.e, -2147483647i, u_input.e, -1i), arg_0.x))), _wgslsmith_div_f32(-689f, -768f), _wgslsmith_f_op_f32(func_3(0u, Struct_2(vec3<f32>(212f, -714f, -1405f), u_input.d), Struct_1(502f, vec4<i32>(global1.x, global1.x, u_input.e, u_input.e), 47627u)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-339f, -546f, -1411f) + vec3<f32>(-408f, 527f, -993f)) - _wgslsmith_f_op_vec3_f32(min(vec3<f32>(1000f, 946f, 727f), vec3<f32>(1000f, -1220f, 944f))))), arg_0.x));
    global1 = _wgslsmith_sub_vec3_i32(_wgslsmith_mod_vec3_i32(reverseBits(firstTrailingBit(global2[_wgslsmith_index_u32(26933u, 13u)]) | select(global2[_wgslsmith_index_u32(21632u, 13u)], global2[_wgslsmith_index_u32(var_0.b, 13u)], vec3<bool>(false, false, true))), -(vec3<i32>(-1i) * -vec3<i32>(global1.x, -2147483647i, 12371i))), _wgslsmith_div_vec3_i32(global2[_wgslsmith_index_u32(min(~select(23740u, 0u, true), _wgslsmith_dot_vec3_u32(vec3<u32>(global0.x, var_0.b, global0.x), select(global0.wwx, vec3<u32>(23267u, arg_0.x, 0u), vec3<bool>(false, true, false)))), 13u)], vec3<i32>(abs(2147483647i & global1.x), min(global1.x, 1i), -u_input.e)));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(var_0.a.x * var_0.a.x), vec4<i32>(firstLeadingBit(i32(-1i) * -66148i) ^ u_input.e, ~_wgslsmith_clamp_i32(-112311i, 23274i, 21735i | global1.x), abs(abs(-2147483647i)), -10186i), abs(~arg_0.x));
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.a, -189f, -573f, 1507f) - vec4<f32>(var_0.a.x, 2549f, var_0.a.x, var_0.a.x))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-263f, var_0.a.x, var_0.a.x, 1013f) + vec4<f32>(var_0.a.x, -883f, var_0.a.x, -1765f)), vec4<bool>(true, true, true, true))))) + vec4<f32>(_wgslsmith_f_op_f32(140f + var_0.a.x), _wgslsmith_f_op_f32(f32(-1f) * -218f), 833f, var_0.a.x));
    return -_wgslsmith_mod_i32(_wgslsmith_div_i32(_wgslsmith_add_i32(i32(-1i) * -1i, countOneBits(-1i)), -14091i), _wgslsmith_div_i32(-1i, -max(var_1.b.x, var_1.b.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = vec3<i32>(countOneBits(u_input.e), _wgslsmith_clamp_i32(i32(-1i) * -_wgslsmith_dot_vec3_i32(global2[_wgslsmith_index_u32(0u, 13u)], global2[_wgslsmith_index_u32(u_input.d, 13u)]), ~(global1.x >> (u_input.b % 32u)) ^ func_1(select(global0.yzx, global0.xww, true)), u_input.e), reverseBits(1i));
    var var_0 = func_4(any(func_2(func_4(any(vec2<bool>(true, true)), func_4(true, Struct_2(vec3<f32>(-304f, 628f, 854f), global0.x), Struct_2(vec3<f32>(1178f, -811f, 1000f), global0.x), Struct_2(vec3<f32>(-1502f, 258f, 2101f), u_input.b)), func_4(false, Struct_2(vec3<f32>(-1790f, 1266f, -1228f), 1u), Struct_2(vec3<f32>(-436f, -1000f, -2155f), u_input.d), Struct_2(vec3<f32>(-259f, 501f, -1000f), 4294967295u)), Struct_2(vec3<f32>(-906f, 1000f, -197f), 1u)), Struct_1(-1156f, countOneBits(vec4<i32>(u_input.e, global1.x, global1.x, global1.x)), _wgslsmith_dot_vec2_u32(vec2<u32>(global0.x, global0.x), global0.xx)), Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1182f, -1840f, -1340f)), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, 4294967295u, 37959u), global0.xxx))).ww), Struct_2(vec3<f32>(_wgslsmith_div_f32(-558f, _wgslsmith_f_op_f32(select(-1000f, -482f, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1216f * 765f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -987f))), global0.x), func_4(true, func_4(!any(vec3<bool>(false, false, true)), func_4(true, Struct_2(vec3<f32>(525f, 1492f, 523f), 21383u), Struct_2(vec3<f32>(128f, -572f, -889f), u_input.b), func_4(false, Struct_2(vec3<f32>(1034f, -1000f, -374f), u_input.c), Struct_2(vec3<f32>(904f, -874f, 1512f), 17561u), Struct_2(vec3<f32>(-919f, -302f, -387f), 4294967295u))), func_4(func_2(Struct_2(vec3<f32>(745f, -461f, -1384f), global0.x), Struct_1(-556f, vec4<i32>(global1.x, u_input.e, u_input.e, 1i), u_input.c), Struct_2(vec3<f32>(196f, 1375f, -1323f), 4294967295u)).x, func_4(true, Struct_2(vec3<f32>(-1412f, 143f, 2179f), 4294967295u), Struct_2(vec3<f32>(-1552f, 513f, 1416f), global0.x), Struct_2(vec3<f32>(1181f, 1510f, 297f), u_input.d)), Struct_2(vec3<f32>(-1858f, -328f, 434f), u_input.a.x), Struct_2(vec3<f32>(-1995f, -490f, 471f), global0.x)), func_4(any(vec2<bool>(true, false)), func_4(true, Struct_2(vec3<f32>(-1924f, 1000f, 1141f), u_input.b), Struct_2(vec3<f32>(-452f, 1000f, -522f), 4294967295u), Struct_2(vec3<f32>(-1311f, -1520f, 920f), 1u)), Struct_2(vec3<f32>(419f, -1230f, 683f), u_input.c), func_4(false, Struct_2(vec3<f32>(1485f, -1481f, -415f), global0.x), Struct_2(vec3<f32>(473f, -1431f, 700f), u_input.b), Struct_2(vec3<f32>(1301f, 227f, -381f), u_input.c)))), func_4(select(true, true, all(vec2<bool>(false, true))), func_4(false, Struct_2(vec3<f32>(-1676f, -1168f, -1000f), global0.x), func_4(true, Struct_2(vec3<f32>(378f, -275f, -748f), 39863u), Struct_2(vec3<f32>(-451f, -531f, 1408f), 5026u), Struct_2(vec3<f32>(250f, 361f, 954f), 0u)), Struct_2(vec3<f32>(502f, 398f, -1445f), u_input.b)), Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(421f, -1599f, -1000f)), ~27218u), func_4(any(vec3<bool>(true, true, true)), func_4(true, Struct_2(vec3<f32>(-919f, -1510f, -378f), global0.x), Struct_2(vec3<f32>(-1138f, -2279f, 569f), 26897u), Struct_2(vec3<f32>(-1397f, -1089f, 887f), u_input.d)), Struct_2(vec3<f32>(-188f, 862f, -1157f), 75247u), func_4(true, Struct_2(vec3<f32>(-304f, -331f, 363f), u_input.c), Struct_2(vec3<f32>(1000f, 109f, 664f), 0u), Struct_2(vec3<f32>(669f, -671f, 903f), 38840u)))), Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-719f, 160f, -1596f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-749f, -203f, 515f))), 4294967295u)), Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1197f, 235f, -601f)))), u_input.c));
    var var_1 = var_0.a.zy;
    let var_2 = ~(select(select(vec3<u32>(62241u, 26367u, global0.x), vec3<u32>(global0.x, 2728u, 1u), vec3<bool>(false, true, false)), vec3<u32>(~1u, ~1u, ~u_input.c), true) << (global0.wyy % vec3<u32>(32u)));
    let var_3 = select(vec4<bool>(true, all(vec4<bool>(true, var_0.b < 0u, true, 0i <= global1.x)), true && any(vec2<bool>(true, true)), false), !select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), any(select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), true))), vec4<bool>(true, true, true, true));
    let var_4 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(var_0.a.xy))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.a.xz * _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1749f, var_1.x)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-var_0.a.yz))))), select(select(func_2(Struct_2(var_0.a, 1u), Struct_1(var_0.a.x, vec4<i32>(global1.x, 2147483647i, global1.x, -1i), var_2.x), Struct_2(var_0.a, 55737u)).xw, !var_3.zx, func_2(func_4(false, Struct_2(var_0.a, 4294967295u), Struct_2(var_0.a, var_0.b), Struct_2(var_0.a, var_2.x)), Struct_1(237f, vec4<i32>(-1i, -36430i, u_input.e, 0i), 4294967295u), Struct_2(vec3<f32>(393f, 118f, 948f), 0u)).xz), select(vec2<bool>(var_3.x != var_3.x, true || var_3.x), select(var_3.yw, vec2<bool>(var_3.x, false), true), select(func_2(Struct_2(var_0.a, u_input.b), Struct_1(var_0.a.x, vec4<i32>(-14987i, 2147483647i, u_input.e, global1.x), u_input.c), Struct_2(var_0.a, 52337u)).wz, var_3.xy, var_3.x)), !var_3.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_3(4294967295u, Struct_2(vec3<f32>(-1799f, var_0.a.x, var_1.x), u_input.a.x), Struct_1(var_4.x, vec4<i32>(-1i, u_input.e, -89743i, global1.x), u_input.a.x))))) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(1000f, 155f) + var_1.x)), _wgslsmith_clamp_vec2_i32(-(global1.zy << (~var_2.zy % vec2<u32>(32u))), max(_wgslsmith_sub_vec2_i32(max(vec2<i32>(16509i, -24855i), global1.xz), global1.zy), vec2<i32>(global1.x << (1u % 32u), global1.x & -2147483647i)), firstLeadingBit(-_wgslsmith_mod_vec2_i32(vec2<i32>(-1i, global1.x), vec2<i32>(u_input.e, -42299i)))), vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(func_4(true, Struct_2(vec3<f32>(-403f, var_1.x, -698f), u_input.d), Struct_2(vec3<f32>(496f, -295f, var_1.x), var_2.x), Struct_2(var_0.a, global0.x)).a.x)))), 1453f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_1.x))) + _wgslsmith_f_op_f32(round(141f))), _wgslsmith_f_op_f32(floor(var_0.a.x))), -select(_wgslsmith_sub_i32(~1i, -global1.x), abs(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, u_input.e, global1.x, global1.x), vec4<i32>(global1.x, u_input.e, -45754i, global1.x))), true), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1403f, 933f))) - vec2<f32>(1f, 1f)) - _wgslsmith_f_op_vec2_f32(-var_4)), vec2<f32>(817f, _wgslsmith_div_f32(-215f, _wgslsmith_f_op_f32(2029f * var_1.x)))));
}


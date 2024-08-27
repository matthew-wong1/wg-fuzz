struct Struct_1 {
    a: u32,
    b: vec3<bool>,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: f32,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
    d: vec4<i32>,
}

struct Struct_4 {
    a: Struct_1,
    b: vec3<f32>,
    c: u32,
    d: f32,
    e: vec3<i32>,
}

struct Struct_5 {
    a: u32,
    b: Struct_1,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: vec2<bool>, arg_1: f32) -> u32 {
    global0 = Struct_3(_wgslsmith_mod_i32(_wgslsmith_sub_i32(global0.a, -2147483647i >> (1u % 32u)), global0.a), global0.c, global0.b, firstTrailingBit(max(-global0.d, -u_input.b)));
    var var_0 = arg_1;
    var var_1 = Struct_4(Struct_1(global0.b.c, global0.b.b, global0.c.a), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1066f, arg_1, arg_1))))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(arg_1, arg_1, -1772f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(253f, arg_1, arg_1) + vec3<f32>(501f, 260f, arg_1)), !vec3<bool>(arg_0.x, arg_0.x, arg_0.x))), vec3<bool>(all(global0.b.b), any(vec4<bool>(arg_0.x, true, false, global0.c.b.x)), all(vec4<bool>(global0.c.b.x, arg_0.x, true, true))))))), 114108u, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(-1134f))))), _wgslsmith_div_f32(arg_1, -1446f), !arg_0.x)), global0.d.zxz);
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_1, _wgslsmith_div_f32(302f, 1000f), true)))));
    var var_2 = select(select(vec3<bool>(!global0.c.b.x, all(vec3<bool>(global0.c.b.x, false, global0.c.b.x)), global0.b.b.x), !(!global0.c.b), !vec3<bool>(false, global0.b.b.x, var_1.c > 41941u)), select(vec3<bool>(true, any(!var_1.a.b.yy), arg_1 == _wgslsmith_f_op_f32(select(643f, arg_1, var_1.a.b.x))), vec3<bool>(false, global0.c.b.x, all(vec2<bool>(var_1.a.b.x, global0.b.b.x)) || (false || global0.c.b.x)), any(select(vec2<bool>(var_1.a.b.x, global0.c.b.x), arg_0, vec2<bool>(var_1.a.b.x, var_1.a.b.x)))), vec3<bool>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-218f + arg_1), _wgslsmith_f_op_f32(abs(arg_1)))) > arg_1, true, true));
    return var_1.a.c;
}

fn func_2(arg_0: vec2<u32>) -> vec2<u32> {
    global0 = Struct_3(-(~global0.d.x), Struct_1(~func_3(vec2<bool>(true, false), _wgslsmith_f_op_f32(select(2176f, -858f, global0.b.b.x))), vec3<bool>(any(vec3<bool>(global0.b.b.x, false, global0.b.b.x)), all(vec2<bool>(false, global0.b.b.x)), all(select(vec4<bool>(true, false, global0.c.b.x, global0.c.b.x), vec4<bool>(global0.b.b.x, false, global0.c.b.x, global0.b.b.x), global0.c.b.x))), ~(~_wgslsmith_mult_u32(28960u, arg_0.x))), global0.c, -select(u_input.b, _wgslsmith_add_vec4_i32(select(vec4<i32>(-50146i, 2147483647i, 2147483647i, 3300i), vec4<i32>(global0.a, global0.d.x, u_input.a.x, 5787i), vec4<bool>(true, global0.c.b.x, global0.b.b.x, false)), vec4<i32>(u_input.b.x, u_input.a.x, u_input.a.x, global0.a)), vec4<bool>(all(vec2<bool>(true, false)), false, 25809i >= global0.d.x, global0.c.b.x)));
    global0 = Struct_3(-(-global0.a >> (33185u % 32u)) << (18420u % 32u), Struct_1(firstTrailingBit(0u), select(!select(global0.c.b, global0.b.b, vec3<bool>(false, false, true)), !(!vec3<bool>(global0.c.b.x, false, true)), select(vec3<bool>(global0.b.b.x, global0.b.b.x, false), global0.c.b, select(global0.c.b, global0.b.b, global0.c.b))), _wgslsmith_dot_vec4_u32(vec4<u32>(firstTrailingBit(36900u), arg_0.x, arg_0.x & 10545u, abs(global0.b.c)), select(max(vec4<u32>(1u, 18825u, 4294967295u, 23600u), vec4<u32>(0u, 1u, 11819u, arg_0.x)), vec4<u32>(arg_0.x, global0.b.c, global0.c.c, arg_0.x), select(vec4<bool>(global0.c.b.x, global0.c.b.x, true, false), vec4<bool>(true, global0.c.b.x, global0.b.b.x, global0.c.b.x), global0.c.b.x)))), Struct_1(min(_wgslsmith_mult_u32(~global0.b.a, 20419u), 4294967295u), select(global0.c.b, global0.c.b, false), min(~1u, ~(~global0.b.a))), _wgslsmith_sub_vec4_i32(_wgslsmith_mult_vec4_i32(abs(-global0.d), select(vec4<i32>(global0.a, 1i, 2147483647i, 0i), vec4<i32>(global0.d.x, 75537i, u_input.b.x, -1i), !vec4<bool>(global0.b.b.x, global0.b.b.x, global0.b.b.x, false))), select(select(_wgslsmith_sub_vec4_i32(vec4<i32>(-1i, -21808i, u_input.a.x, 2773i), vec4<i32>(u_input.a.x, global0.a, global0.a, global0.a)), global0.d, select(vec4<bool>(false, global0.b.b.x, global0.b.b.x, global0.b.b.x), vec4<bool>(global0.c.b.x, global0.c.b.x, global0.c.b.x, global0.b.b.x), global0.b.b.x)), vec4<i32>(u_input.a.x, global0.d.x, -5884i, global0.a) >> (select(vec4<u32>(arg_0.x, 0u, arg_0.x, global0.c.a), vec4<u32>(arg_0.x, 63354u, 0u, 3777u), global0.b.b.x) % vec4<u32>(32u)), vec4<bool>(global0.c.b.x, false, true, false))));
    let var_0 = Struct_3(~0i, global0.b, Struct_1(global0.b.a, global0.c.b, ~_wgslsmith_add_u32(firstTrailingBit(0u), _wgslsmith_mult_u32(arg_0.x, arg_0.x))), ~global0.d);
    return arg_0;
}

fn func_4(arg_0: vec2<u32>, arg_1: u32, arg_2: u32, arg_3: Struct_1) -> Struct_1 {
    var var_0 = ~(vec2<u32>(reverseBits(func_3(global0.c.b.zx, -397f)), _wgslsmith_add_u32(arg_1 ^ 8169u, min(arg_1, arg_3.a))) & min(vec2<u32>(~arg_0.x, ~0u), vec2<u32>(0u, arg_2)));
    let var_1 = !(!vec4<bool>(!(arg_3.b.x && arg_3.b.x), func_3(arg_3.b.zz, -948f) >= ~arg_1, select(all(vec3<bool>(arg_3.b.x, global0.c.b.x, global0.c.b.x)), true, global0.c.b.x), global0.c.b.x));
    let var_2 = 3139i;
    global0 = Struct_3(global0.d.x, Struct_1(global0.b.c, !arg_3.b, arg_1), arg_3, _wgslsmith_div_vec4_i32(vec4<i32>(u_input.a.x, ~global0.a ^ global0.a, -3353i, var_2), global0.d));
    var var_3 = Struct_2(Struct_1(_wgslsmith_clamp_u32(arg_0.x, 6211u, func_2(~arg_0).x), vec3<bool>(var_1.x, !(true && arg_3.b.x), all(select(vec3<bool>(true, true, var_1.x), vec3<bool>(false, var_1.x, true), false))), 32304u), var_1.xx, 254f);
    return Struct_1(~global0.c.c, select(var_1.zyy, vec3<bool>(select(global0.c.b.x, var_1.x, var_1.x != arg_3.b.x), false, _wgslsmith_div_i32(-5954i, -374i) < var_2), global0.c.b), 20683u);
}

fn func_1(arg_0: Struct_1, arg_1: vec2<bool>) -> i32 {
    let var_0 = Struct_1(~arg_0.a << (~107558u % 32u), vec3<bool>(false, all(!select(global0.c.b, global0.b.b, vec3<bool>(true, true, arg_0.b.x))), true), global0.c.c);
    let var_1 = u_input.a.x;
    let var_2 = Struct_3(_wgslsmith_add_i32(firstLeadingBit(global0.d.x) & var_1, -1i), Struct_1(~(~_wgslsmith_div_u32(0u, arg_0.a)), global0.b.b, var_0.a), global0.b, global0.d << (~firstTrailingBit(vec4<u32>(arg_0.a, 161150u, arg_0.a, arg_0.c)) % vec4<u32>(32u)));
    global0 = Struct_3(_wgslsmith_mult_i32(firstLeadingBit(u_input.a.x & select(global0.a, global0.a, global0.c.b.x)), var_2.d.x), func_4(_wgslsmith_clamp_vec2_u32(reverseBits(vec2<u32>(var_0.c, var_0.a)), vec2<u32>(var_0.a, arg_0.a) & vec2<u32>(0u, var_0.c), vec2<u32>(global0.c.c, global0.b.c)) ^ ~func_2(vec2<u32>(var_2.c.a, var_2.c.a)), ~(~51454u), var_2.c.c, var_0), Struct_1(~_wgslsmith_clamp_u32(~global0.b.c, var_0.c, 23951u), !vec3<bool>(true, all(global0.c.b.yz), arg_1.x), func_2(min(vec2<u32>(0u, global0.b.c), _wgslsmith_div_vec2_u32(vec2<u32>(global0.c.c, global0.b.a), vec2<u32>(2785u, var_2.b.a)))).x), ~vec4<i32>(-(var_2.a << (0u % 32u)), _wgslsmith_add_i32(u_input.b.x, 0i) ^ countOneBits(0i), abs(~(-1248i)), abs(u_input.b.x)));
    let var_3 = Struct_4(var_2.b, _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1587f, 669f, 491f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(503f, 646f, 1018f))))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_div_f32(-638f, 195f), _wgslsmith_f_op_f32(floor(-2473f)), -492f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1016f, 527f, 112f)))), !var_0.b.x)))), _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(global0.c.c, var_0.a), vec2<u32>(var_2.b.a, 1u)), var_0.c, var_2.b.c, ~4294967295u) << (firstLeadingBit(~vec4<u32>(var_2.c.c, var_2.b.a, 0u, 34765u)) % vec4<u32>(32u)), select(_wgslsmith_add_vec4_u32(~vec4<u32>(arg_0.c, 35460u, 32841u, var_0.a), vec4<u32>(59093u, 8853u, arg_0.a, 9238u)), ~(~vec4<u32>(10560u, 18991u, global0.c.a, global0.b.a)), true)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(998f - -1067f))), global0.d.zyw);
    return max(1i, 16837i);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_3(_wgslsmith_clamp_i32(func_1(Struct_1(abs(4294967295u), vec3<bool>(global0.b.b.x, true, true), global0.b.c), select(vec2<bool>(true, global0.c.b.x), vec2<bool>(false, global0.c.b.x), !global0.c.b.x)), -(55441i | u_input.a.x), _wgslsmith_dot_vec2_i32(-u_input.a, u_input.b.ww | global0.d.xy) & -1i), Struct_1(~_wgslsmith_sub_u32(~global0.c.a, 52271u), func_4(~(~vec2<u32>(0u, 19844u)), global0.b.c, global0.c.a, Struct_1(~global0.c.a, !vec3<bool>(global0.c.b.x, global0.c.b.x, false), ~global0.c.a)).b, ~_wgslsmith_div_u32(1u, ~global0.c.c)), func_4(reverseBits(firstLeadingBit(_wgslsmith_add_vec2_u32(vec2<u32>(1u, global0.c.c), vec2<u32>(global0.c.a, 0u)))), ~(~abs(80919u)), _wgslsmith_mod_u32(~min(global0.b.c, global0.c.c), ~48605u), Struct_1(60321u, global0.b.b, ~global0.c.a ^ 4665u)), ~reverseBits(~vec4<i32>(9134i, global0.d.x, -50491i, -34i)) ^ ~u_input.b);
    let var_0 = Struct_1(global0.b.a, !(!select(select(global0.c.b, global0.b.b, true), global0.c.b, global0.b.b.x)), global0.b.a);
    var var_1 = 1304f;
    let var_2 = func_4(select(vec2<u32>(1u | (global0.c.a ^ 63759u), 44720u), _wgslsmith_mult_vec2_u32(vec2<u32>(13507u, firstTrailingBit(1u)), vec2<u32>(global0.b.a, ~1u)), vec2<bool>(var_0.b.x, select(any(vec4<bool>(var_0.b.x, var_0.b.x, var_0.b.x, true)), global0.b.b.x, any(global0.b.b.yx)))), ~global0.c.a, 34907u, Struct_1(var_0.c, vec3<bool>(_wgslsmith_div_i32(-71900i, global0.a) <= 40042i, any(select(global0.c.b.zx, global0.c.b.zz, true)), true), 4294967295u));
    var_1 = _wgslsmith_f_op_f32(870f - 1554f);
    let var_3 = var_2.b;
    global0 = Struct_3(u_input.b.x, Struct_1(~var_0.c, !(!(!var_2.b)), ~(~select(0u, var_2.c, var_2.b.x))), Struct_1(41408u, vec3<bool>(true, global0.b.b.x, all(!vec4<bool>(var_0.b.x, false, var_3.x, true))), (var_2.a << ((var_0.c | 24082u) % 32u)) >> (firstLeadingBit(~0u) % 32u)), select(-global0.d, select(abs(select(vec4<i32>(0i, 2147483647i, global0.d.x, -50465i), vec4<i32>(1i, -10875i, global0.a, global0.a), vec4<bool>(false, global0.c.b.x, true, false))), -global0.d, 37152i == _wgslsmith_mult_i32(global0.a, u_input.a.x)), select(select(select(vec4<bool>(var_0.b.x, var_0.b.x, false, true), vec4<bool>(var_0.b.x, global0.b.b.x, false, var_0.b.x), false), vec4<bool>(false, false, false, var_3.x), false), select(select(vec4<bool>(false, false, true, false), vec4<bool>(var_3.x, var_2.b.x, var_0.b.x, false), global0.c.b.x), select(vec4<bool>(true, true, var_3.x, false), vec4<bool>(var_0.b.x, var_3.x, true, var_2.b.x), global0.c.b.x), vec4<bool>(true, false, var_0.b.x, var_3.x)), vec4<bool>(select(var_0.b.x, false, global0.c.b.x), true, true, all(vec2<bool>(global0.b.b.x, true))))));
    global0 = Struct_3(~global0.a, var_0, Struct_1(~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 39631u, global0.b.a, var_2.a), abs(vec4<u32>(var_2.c, 0u, var_2.a, 70114u))), vec3<bool>(_wgslsmith_f_op_f32(f32(-1f) * -827f) > _wgslsmith_f_op_f32(ceil(-408f)), any(select(var_0.b, var_2.b, var_0.b.x)), false), ~_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(global0.b.a, 4294967295u), vec2<u32>(49181u, 80991u)), ~vec2<u32>(14038u, 1u))), (_wgslsmith_mod_vec4_i32(global0.d, reverseBits(vec4<i32>(global0.a, -8670i, u_input.b.x, -15374i))) >> ((~vec4<u32>(23560u, 1u, 41298u, 4294967295u) & vec4<u32>(var_0.c, 38436u, 17545u, var_2.a)) % vec4<u32>(32u))) ^ ~_wgslsmith_mult_vec4_i32(reverseBits(global0.d), reverseBits(vec4<i32>(-2147483647i, global0.a, 0i, -78803i))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_i32(global0.a, u_input.b.x, max(24205i, -_wgslsmith_add_i32(2147483647i, u_input.a.x))), ~vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 4066u, global0.c.a, 28871u) ^ vec4<u32>(1u, 88289u, var_2.a, 38777u), vec4<u32>(1u, 34817u, 4294967295u, var_2.c)), ~(~4294967295u), global0.b.c), _wgslsmith_f_op_vec4_f32(vec4<f32>(833f, 213f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1174f * -615f))), -214f) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1098f, 442f, 1735f, 1307f) * vec4<f32>(1000f, -209f, 770f, 814f))) + vec4<f32>(-342f, _wgslsmith_f_op_f32(step(-197f, 1122f)), -2497f, _wgslsmith_f_op_f32(-355f - 564f)))));
}


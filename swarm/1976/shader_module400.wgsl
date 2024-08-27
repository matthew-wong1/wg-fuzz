struct Struct_1 {
    a: vec2<f32>,
    b: i32,
    c: bool,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
    c: vec2<u32>,
    d: u32,
    e: f32,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: vec3<i32>,
    b: Struct_2,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: vec2<u32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(vec2<f32>(1260f, -546f), -42337i, false, true), vec4<bool>(true, false, true, true), vec2<u32>(4294967295u, 3970u), 21495u, 641f);

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: f32, arg_1: f32, arg_2: Struct_2) -> i32 {
    let var_0 = Struct_3(arg_2.a);
    var var_1 = reverseBits(~_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, 0u, arg_2.c.x), vec4<u32>(3403u, 64830u, 23588u, 7536u)), reverseBits(0u)), ~(vec3<u32>(4294967295u, arg_2.d, 4294967295u) | vec3<u32>(u_input.a.x, 46184u, global0.d)), firstTrailingBit(_wgslsmith_add_vec3_u32(vec3<u32>(13485u, global0.d, arg_2.d), vec3<u32>(4294967295u, 31982u, global0.c.x)))));
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(select(684f, 728f, !(!global0.b.x))), _wgslsmith_f_op_f32(f32(-1f) * -478f), _wgslsmith_div_f32(-365f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1304f + -1118f) * _wgslsmith_f_op_f32(682f + arg_2.a.a.x)))), _wgslsmith_f_op_f32(ceil(-865f)));
    let var_3 = _wgslsmith_f_op_vec3_f32(-var_2.wyw);
    let var_4 = global0.a;
    return 1i;
}

fn func_2(arg_0: bool, arg_1: Struct_1) -> Struct_2 {
    var var_0 = arg_1;
    let var_1 = Struct_3(arg_1);
    var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(select(arg_1.a, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-1000f - -1311f), arg_1.a.x)), vec2<bool>(false, true))), global0.a.b | ~arg_1.b, true, 2147483647i >= func_3(_wgslsmith_f_op_f32(-var_0.a.x), 151f, Struct_2(Struct_1(arg_1.a, 2287i, true, var_1.a.d), global0.b, _wgslsmith_clamp_vec2_u32(u_input.a, vec2<u32>(1u, global0.c.x), vec2<u32>(22274u, u_input.a.x)), 4294967295u, _wgslsmith_f_op_f32(floor(var_1.a.a.x)))));
    global0 = Struct_2(arg_1, global0.b, ~vec2<u32>(u_input.a.x, u_input.a.x), ~(global0.c.x << (41712u % 32u)) << (46022u % 32u), -269f);
    var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(arg_1.a + _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(var_0.a, vec2<f32>(-251f, 1309f)), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(1972f, var_0.a.x))))), arg_1.a))), 1i | (0i << (_wgslsmith_add_u32(21329u | global0.d, 13937u ^ global0.d) % 32u)), any(vec2<bool>(true && all(vec4<bool>(false, true, var_0.c, var_0.c)), !(arg_1.b > global0.a.b))), false);
    return Struct_2(global0.a, global0.b, vec2<u32>(global0.c.x, ~1u), global0.c.x, 114f);
}

fn func_1(arg_0: vec4<i32>) -> u32 {
    global0 = func_2(global0.b.x, Struct_1(global0.a.a, 19049i, false, any(!global0.b.xw)));
    global0 = func_2(global0.b.x, global0.a);
    var var_0 = global0.a.b;
    let var_1 = global0.a.b;
    var var_2 = Struct_1(global0.a.a, 2147483647i, global0.b.x, global0.b.x && true);
    return func_2(select(var_2.c, (_wgslsmith_f_op_f32(floor(-495f)) == -678f) && var_2.d, any(!global0.b)), global0.a).d;
}

fn func_4(arg_0: i32, arg_1: vec3<u32>, arg_2: Struct_4) -> Struct_2 {
    let var_0 = ~min(arg_2.b.c, vec2<u32>(arg_1.x, _wgslsmith_dot_vec2_u32(u_input.a, ~vec2<u32>(0u, 9800u))));
    let var_1 = select(-(firstLeadingBit(vec2<i32>(arg_2.a.x, arg_0)) | (vec2<i32>(arg_0, 1i) << (vec2<u32>(arg_1.x, global0.c.x) % vec2<u32>(32u)))), firstTrailingBit(_wgslsmith_div_vec2_i32(vec2<i32>(global0.a.b, global0.a.b), ~arg_2.a.zy)), false) | vec2<i32>(reverseBits(20824i), -countOneBits(-64906i) ^ global0.a.b);
    var var_2 = arg_2.b.b.yzw;
    var_2 = select(arg_2.b.b.yzy, global0.b.ywy, !global0.b.wwz);
    let var_3 = _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.a.a.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(1406f - global0.a.a.x)), _wgslsmith_f_op_f32(-1261f + _wgslsmith_div_f32(global0.a.a.x, 1329f))), 632f, -499f) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global0.a.a.x, global0.e, arg_2.b.e, global0.a.a.x))), vec4<f32>(160f, arg_2.b.a.a.x, -109f, arg_2.b.e))))));
    return Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_2.b.a.a + vec2<f32>(-741f, -146f)) * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_3.x, arg_2.b.e), vec2<f32>(-298f, -111f), vec2<bool>(true, false))))), ~(i32(-1i) * -1i), any(global0.b), any(!select(var_2.xx, arg_2.b.b.zw, vec2<bool>(arg_2.b.b.x, true)))), select(!global0.b, vec4<bool>(!(!global0.a.c), all(select(var_2.zy, global0.b.xy, false)), true, arg_2.b.a.d), global0.b), vec2<u32>(_wgslsmith_div_u32(71741u, ~var_0.x | max(1u, var_0.x)), arg_1.x), 1u, -628f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(-2147483647i, _wgslsmith_mult_vec3_u32(vec3<u32>(~(~u_input.a.x), ~_wgslsmith_mod_u32(u_input.a.x, 66683u), ~func_1(vec4<i32>(2147483647i, global0.a.b, 1i, global0.a.b))), ~(~(~vec3<u32>(global0.d, u_input.a.x, u_input.a.x)))), Struct_4(firstLeadingBit(-vec3<i32>(global0.a.b, 4435i, global0.a.b)), func_2(all(select(vec4<bool>(global0.b.x, false, false, global0.b.x), vec4<bool>(global0.b.x, false, false, false), false)), global0.a), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a.x, ~u_input.a.x, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, global0.d, u_input.a.x), vec3<u32>(global0.c.x, u_input.a.x, 37996u))), vec3<u32>(u_input.a.x, 0u, 4294967295u))));
    let var_1 = var_0;
    let var_2 = global0.a.c;
    var var_3 = _wgslsmith_sub_vec4_i32(vec4<i32>(var_0.a.b, (-20487i & ~var_1.a.b) | 0i, min(-(~2147483647i), ~var_0.a.b), var_0.a.b), _wgslsmith_mult_vec4_i32(vec4<i32>(-38094i, global0.a.b, global0.a.b, var_1.a.b), ~max(_wgslsmith_mod_vec4_i32(vec4<i32>(77891i, -1i, global0.a.b, -17551i), vec4<i32>(var_0.a.b, -40029i, 2147483647i, -11059i)), vec4<i32>(8402i, -23141i, global0.a.b, var_0.a.b))));
    let var_4 = Struct_3(func_4(_wgslsmith_mult_i32(global0.a.b, func_3(436f, -1029f, var_1)), select(_wgslsmith_add_vec3_u32(~vec3<u32>(u_input.a.x, 29891u, 4294967295u), vec3<u32>(54807u, global0.c.x, 14812u)), vec3<u32>(abs(var_0.c.x), var_0.d, 15323u), vec3<bool>(true, var_1.b.x, select(var_1.a.d, true, true))), Struct_4(_wgslsmith_clamp_vec3_i32(-var_3.xzz, _wgslsmith_mult_vec3_i32(var_3.xwx, var_3.xyz), _wgslsmith_mod_vec3_i32(vec3<i32>(-12640i, -36852i, var_1.a.b), var_3.wzw)), var_1, _wgslsmith_add_vec3_u32(firstTrailingBit(vec3<u32>(69686u, global0.d, 25363u)), _wgslsmith_clamp_vec3_u32(vec3<u32>(var_0.d, var_0.d, u_input.a.x), vec3<u32>(var_0.d, u_input.a.x, u_input.a.x), vec3<u32>(u_input.a.x, 1u, var_1.c.x))))).a);
    let var_5 = Struct_3(Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -188f), _wgslsmith_f_op_f32(f32(-1f) * -117f)) + _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(var_1.a.a + vec2<f32>(960f, -1000f)), _wgslsmith_f_op_vec2_f32(-var_1.a.a)))), 0i, 61470u >= (~var_0.c.x & var_1.c.x), (_wgslsmith_mult_i32(0i, var_0.a.b) >> (_wgslsmith_dot_vec2_u32(var_1.c, var_0.c) % 32u)) >= var_3.x));
    let x = u_input.a;
    s_output = StorageBuffer(select(~(~vec3<u32>(global0.d, global0.d, 12857u)), ~_wgslsmith_sub_vec3_u32(max(vec3<u32>(9180u, global0.c.x, global0.c.x), vec3<u32>(global0.d, var_0.c.x, 26947u)), vec3<u32>(var_1.d, var_1.c.x, 88192u)), !var_0.b.ywx), _wgslsmith_mult_vec4_u32(~(~vec4<u32>(var_0.d, var_0.c.x, global0.d, 0u) ^ _wgslsmith_mod_vec4_u32(vec4<u32>(0u, u_input.a.x, 0u, 1u), vec4<u32>(global0.d, 4294967295u, u_input.a.x, var_0.d))), vec4<u32>(reverseBits(var_1.d), ~_wgslsmith_div_u32(u_input.a.x, var_0.d), 1u, _wgslsmith_clamp_u32(u_input.a.x, ~u_input.a.x, _wgslsmith_sub_u32(0u, u_input.a.x)))), ~vec2<u32>(4294967295u, _wgslsmith_dot_vec4_u32(~vec4<u32>(global0.d, var_1.d, 4294967295u, global0.d), ~vec4<u32>(1u, u_input.a.x, var_0.d, global0.d))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(606f * -1283f), -349f, var_1.e, _wgslsmith_f_op_f32(var_0.a.a.x * 236f)))));
}


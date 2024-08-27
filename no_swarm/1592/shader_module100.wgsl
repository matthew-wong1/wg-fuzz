struct Struct_1 {
    a: bool,
    b: i32,
    c: vec3<u32>,
    d: u32,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
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

var<private> global0: array<vec4<f32>, 3>;

var<private> global1: vec4<bool>;

var<private> global2: vec3<u32> = vec3<u32>(0u, 5880u, 0u);

var<private> global3: Struct_1 = Struct_1(true, 1i, vec3<u32>(4294967295u, 8746u, 0u), 24116u, vec3<bool>(true, true, true));

var<private> global4: array<Struct_1, 31> = array<Struct_1, 31>(Struct_1(true, -1i, vec3<u32>(0u, 1713u, 0u), 1u, vec3<bool>(false, false, false)), Struct_1(true, -3858i, vec3<u32>(21977u, 0u, 0u), 13133u, vec3<bool>(false, false, true)), Struct_1(true, -3493i, vec3<u32>(15864u, 4294967295u, 0u), 19940u, vec3<bool>(false, false, false)), Struct_1(true, -36490i, vec3<u32>(0u, 26769u, 4294967295u), 0u, vec3<bool>(false, false, false)), Struct_1(false, 1i, vec3<u32>(4294967295u, 6322u, 16138u), 1u, vec3<bool>(false, false, true)), Struct_1(true, -3365i, vec3<u32>(1u, 0u, 100128u), 1u, vec3<bool>(true, false, false)), Struct_1(true, -1i, vec3<u32>(0u, 4294967295u, 2883u), 26806u, vec3<bool>(false, false, true)), Struct_1(false, 8330i, vec3<u32>(4294967295u, 4294967295u, 17823u), 4294967295u, vec3<bool>(true, true, true)), Struct_1(true, -35518i, vec3<u32>(4294967295u, 44847u, 60602u), 30689u, vec3<bool>(true, true, true)), Struct_1(true, 0i, vec3<u32>(37130u, 5154u, 1u), 0u, vec3<bool>(false, true, false)), Struct_1(true, 21859i, vec3<u32>(22940u, 0u, 101924u), 5598u, vec3<bool>(true, true, true)), Struct_1(true, i32(-2147483648), vec3<u32>(37949u, 1u, 1251u), 34638u, vec3<bool>(true, true, true)), Struct_1(true, 14687i, vec3<u32>(1u, 49319u, 34375u), 4294967295u, vec3<bool>(true, true, false)), Struct_1(false, -20329i, vec3<u32>(0u, 0u, 1u), 4294967295u, vec3<bool>(false, true, true)), Struct_1(false, 0i, vec3<u32>(5126u, 1u, 4294967295u), 1u, vec3<bool>(true, true, false)), Struct_1(false, 9840i, vec3<u32>(1u, 0u, 1u), 1u, vec3<bool>(true, true, false)), Struct_1(true, -9754i, vec3<u32>(48017u, 78883u, 0u), 32092u, vec3<bool>(true, false, false)), Struct_1(true, -1i, vec3<u32>(60963u, 67302u, 2684u), 3586u, vec3<bool>(true, true, false)), Struct_1(true, 22567i, vec3<u32>(11831u, 4294967295u, 11240u), 4294967295u, vec3<bool>(true, false, false)), Struct_1(true, -1i, vec3<u32>(1u, 81821u, 1u), 0u, vec3<bool>(false, false, false)), Struct_1(true, 11507i, vec3<u32>(1u, 0u, 4294967295u), 18976u, vec3<bool>(false, false, true)), Struct_1(true, 13119i, vec3<u32>(1u, 71133u, 46462u), 4294967295u, vec3<bool>(true, false, true)), Struct_1(false, i32(-2147483648), vec3<u32>(4294967295u, 4294967295u, 0u), 69889u, vec3<bool>(true, true, false)), Struct_1(false, -1i, vec3<u32>(0u, 1u, 48981u), 74655u, vec3<bool>(false, true, false)), Struct_1(false, 1i, vec3<u32>(1u, 1u, 0u), 42626u, vec3<bool>(false, false, true)), Struct_1(false, 2147483647i, vec3<u32>(20742u, 69644u, 0u), 11253u, vec3<bool>(false, false, false)), Struct_1(false, -50671i, vec3<u32>(20233u, 4294967295u, 26617u), 0u, vec3<bool>(false, false, true)), Struct_1(false, 1i, vec3<u32>(64209u, 1u, 0u), 4294967295u, vec3<bool>(false, false, true)), Struct_1(true, -18724i, vec3<u32>(0u, 53243u, 21563u), 13669u, vec3<bool>(true, true, false)), Struct_1(true, 8797i, vec3<u32>(21657u, 47771u, 1u), 0u, vec3<bool>(false, false, false)), Struct_1(false, 6112i, vec3<u32>(4294967295u, 0u, 4294967295u), 29542u, vec3<bool>(false, false, false)));

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_1(arg_0: u32, arg_1: vec4<u32>) -> Struct_1 {
    global2 = _wgslsmith_div_vec3_u32(arg_1.zwz, ~min(global3.c, arg_1.zzw));
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -149f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -851f), -2774f))) + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * -886f)))))));
    let var_1 = -abs(~(~global3.b));
    var var_2 = ~abs(vec4<i32>(-1i) * -(vec4<i32>(global3.b, -45190i, u_input.c, 1i) | vec4<i32>(var_1, global3.b, 2147483647i, var_1)));
    var_2 = vec4<i32>(i32(-1i) * -3555i, firstTrailingBit(_wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(var_2.wz, vec2<i32>(-17179i, global3.b)), -2149i)) | reverseBits(-54761i), u_input.b, _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(31397i, u_input.b, -1i), var_2.yww), -var_2.xwy), ~var_2.wxw << (arg_1.wzw % vec3<u32>(32u))), i32(-1i) * -1i));
    return Struct_1(global3.e.x && true, -1i << (global2.x % 32u), global3.c | ((~global3.c << (min(global3.c, vec3<u32>(62196u, 0u, arg_0)) % vec3<u32>(32u))) >> (vec3<u32>(_wgslsmith_dot_vec3_u32(global3.c, arg_1.yxz), arg_1.x << (arg_1.x % 32u), 1u) % vec3<u32>(32u))), global3.c.x, global3.e);
}

fn func_3(arg_0: i32) -> vec2<u32> {
    var var_0 = min(min(func_1(44368u, ~(~vec4<u32>(1u, global3.d, 129442u, 44841u))).d, 26327u), 4193u);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * 658f));
    global3 = global4[_wgslsmith_index_u32(12948u, 31u)];
    var var_2 = func_1(0u, min(vec4<u32>(countOneBits(28604u), 22135u | global3.d, _wgslsmith_clamp_u32(53485u, global3.c.x, 56047u), 0u) >> ((~vec4<u32>(35511u, global2.x, global3.c.x, global3.d) >> (~vec4<u32>(global3.c.x, global2.x, global3.c.x, global3.c.x) % vec4<u32>(32u))) % vec4<u32>(32u)), reverseBits(~(~vec4<u32>(global2.x, 1u, 0u, global3.d)))));
    var var_3 = global4[_wgslsmith_index_u32(68003u, 31u)];
    return var_3.c.xx;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<i32>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -239f);
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)))), _wgslsmith_f_op_f32(min(var_0, 718f))) - var_0);
    var_1 = _wgslsmith_f_op_f32(trunc(var_0));
    global0 = array<vec4<f32>, 3>();
    let var_2 = _wgslsmith_dot_vec4_i32(~(-vec4<i32>(40335i ^ u_input.b, -1i, 0i, u_input.a)), -vec4<i32>(func_1(global2.x, vec4<u32>(arg_0.d, 1u, 4294967295u, arg_1.c.x)).b, 10822i, _wgslsmith_div_i32(880i | u_input.a, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, -12565i), arg_2.zx)), _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(arg_2, vec3<i32>(arg_2.x, -1i, -5659i)), -24504i)));
    return Struct_1(!arg_1.a, ~(~arg_0.b), select(_wgslsmith_sub_vec3_u32(global3.c, arg_0.c), arg_0.c, vec3<bool>((false | global3.a) | arg_1.e.x, any(arg_0.e), true)), _wgslsmith_dot_vec2_u32(~_wgslsmith_add_vec2_u32(firstLeadingBit(vec2<u32>(arg_1.d, global3.c.x)), func_3(var_2)), ~vec2<u32>(abs(global2.x), arg_1.d)), func_1(max(2003u, ~max(5052u, global2.x)), abs(_wgslsmith_mod_vec4_u32(vec4<u32>(1u, arg_1.d, global3.c.x, global3.d), vec4<u32>(global2.x, arg_0.c.x, 0u, global3.c.x)) >> (vec4<u32>(arg_1.d, global3.c.x, arg_1.d, 5417u) % vec4<u32>(32u)))).e);
}

fn func_4(arg_0: u32, arg_1: vec2<f32>, arg_2: Struct_1, arg_3: i32) -> u32 {
    var var_0 = func_2(arg_2, Struct_1(all(global3.e.yy) || global3.a, -27757i, _wgslsmith_mult_vec3_u32(firstLeadingBit(vec3<u32>(global2.x, global3.c.x, global3.d)), global3.c) >> (~arg_2.c % vec3<u32>(32u)), _wgslsmith_div_u32(30826u, _wgslsmith_mod_u32(arg_0, ~1u)), global3.e), vec3<i32>(-48973i, -50675i, u_input.a)).c.zz;
    var var_1 = func_2(global4[_wgslsmith_index_u32(var_0.x, 31u)], func_1(~arg_0, (_wgslsmith_mod_vec4_u32(vec4<u32>(0u, 66315u, var_0.x, global2.x), vec4<u32>(arg_0, 18154u, global2.x, 5051u)) << ((vec4<u32>(49414u, global2.x, global3.c.x, 1u) | vec4<u32>(arg_0, global3.d, 99590u, global3.c.x)) % vec4<u32>(32u))) ^ ~(~vec4<u32>(global2.x, global3.d, arg_0, 71336u))), vec3<i32>(max(abs(global3.b), arg_3 & _wgslsmith_mod_i32(arg_3, -30542i)), arg_2.b, -arg_2.b));
    let var_2 = vec3<i32>(abs(~(~arg_3)), firstTrailingBit(_wgslsmith_clamp_i32(u_input.b, 43935i, _wgslsmith_mod_i32(1i, arg_2.b))), 1i) << (~vec3<u32>(_wgslsmith_add_u32(var_1.c.x, ~1u), 59479u, abs(_wgslsmith_mod_u32(arg_0, arg_2.c.x))) % vec3<u32>(32u));
    global3 = Struct_1(true, var_2.x, var_1.c, 1u, !vec3<bool>(global3.a, true, !any(global1.xzx)));
    global1 = vec4<bool>(true, 1u <= arg_2.c.x, global1.x, func_2(Struct_1(true, global3.b, var_1.c << (min(global3.c, vec3<u32>(53041u, arg_0, arg_2.d)) % vec3<u32>(32u)), var_0.x, vec3<bool>(true, true, false)), func_2(func_1(arg_0, vec4<u32>(0u, 1u, global2.x, global2.x) ^ vec4<u32>(global3.d, arg_2.c.x, global3.d, 4294967295u)), global4[_wgslsmith_index_u32(global3.d, 31u)], ~_wgslsmith_add_vec3_i32(var_2, vec3<i32>(u_input.b, arg_3, 1i))), countOneBits(~var_2)).e.x);
    return global3.d;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global4[_wgslsmith_index_u32(abs(func_4(global3.c.x, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(-309f, -699f) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(920f, -507f))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(218f, -214f), vec2<f32>(-654f, -964f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1436f, -1019f) + vec2<f32>(-452f, 230f)), global3.a || false)), u_input.c > _wgslsmith_add_i32(u_input.c, 12507i))), func_2(func_1(4294967295u, vec4<u32>(46326u, 0u, global2.x, global2.x) | vec4<u32>(global2.x, global2.x, 18358u, global3.c.x)), global4[_wgslsmith_index_u32(31053u, 31u)], vec3<i32>(-1i, global3.b, 14837i)), u_input.a)), 31u)];
    var var_1 = !select(vec4<bool>(false, !any(vec4<bool>(global3.e.x, false, global1.x, global3.e.x)), true, var_0.e.x), select(select(select(vec4<bool>(true, true, false, false), vec4<bool>(true, global1.x, global3.a, true), vec4<bool>(true, global3.a, false, global1.x)), select(vec4<bool>(global3.a, true, global3.e.x, global3.a), vec4<bool>(false, global1.x, var_0.e.x, false), vec4<bool>(global1.x, global3.a, global3.e.x, global3.a)), global3.e.x), select(vec4<bool>(var_0.a, global1.x, var_0.e.x, global1.x), vec4<bool>(false, true, true, false), vec4<bool>(var_0.e.x, true, false, var_0.e.x)), select(vec4<bool>(false, var_0.e.x, false, true), !vec4<bool>(global3.e.x, false, true, global1.x), false)), !(!(!var_0.e.x)));
    var var_2 = select(vec3<bool>(select(true, var_1.x, var_0.e.x), true && var_0.a, true), global1.yxw, global1.x);
    global3 = Struct_1(var_0.e.x, ~(global3.b & _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, -76357i), _wgslsmith_div_vec2_i32(vec2<i32>(u_input.a, var_0.b), vec2<i32>(u_input.a, global3.b)))), var_0.c, ~global3.d, !(!vec3<bool>(any(global1.zzy), !global1.x, global3.a)));
    global4 = array<Struct_1, 31>();
    global2 = var_0.c;
    var var_3 = Struct_1((2669i & _wgslsmith_mult_i32(_wgslsmith_add_i32(-6032i, var_0.b), global3.b >> (global3.c.x % 32u))) >= ((_wgslsmith_dot_vec2_i32(vec2<i32>(var_0.b, var_0.b), vec2<i32>(52559i, -12025i)) >> (countOneBits(global2.x) % 32u)) ^ ~(~2147483647i)), -countOneBits(u_input.b), firstLeadingBit(reverseBits(~(~vec3<u32>(global3.d, 0u, 64467u)))), 4294967295u, func_2(global4[_wgslsmith_index_u32(_wgslsmith_div_u32(func_4(global3.d, _wgslsmith_f_op_vec2_f32(vec2<f32>(618f, -670f) - vec2<f32>(-124f, -620f)), global4[_wgslsmith_index_u32(abs(1u), 31u)], _wgslsmith_add_i32(u_input.b, 1i)), var_0.c.x), 31u)], func_1(var_0.d, ~(~vec4<u32>(global2.x, 7658u, global3.d, 0u))), vec3<i32>(-(~(-3147i)), 1i, ~_wgslsmith_clamp_i32(22893i, 1i, var_0.b))).e);
    let x = u_input.a;
    s_output = StorageBuffer((~(~vec4<u32>(global2.x, 39428u, var_3.c.x, 0u)) >> (~firstLeadingBit(vec4<u32>(global3.d, var_3.d, global3.c.x, 3446u)) % vec4<u32>(32u))) | firstLeadingBit(vec4<u32>(global3.c.x, global2.x, 114105u, var_3.d)));
}


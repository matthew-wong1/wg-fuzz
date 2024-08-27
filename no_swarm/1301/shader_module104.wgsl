struct Struct_1 {
    a: vec3<i32>,
    b: vec2<u32>,
    c: vec4<f32>,
    d: bool,
}

struct Struct_2 {
    a: vec4<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: vec2<f32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: vec2<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 1i;

var<private> global1: array<bool, 15> = array<bool, 15>(true, false, false, false, false, true, false, false, false, true, true, false, true, true, false);

var<private> global2: array<Struct_3, 32>;

var<private> global3: array<vec3<f32>, 5> = array<vec3<f32>, 5>(vec3<f32>(1000f, 2832f, 522f), vec3<f32>(-419f, 772f, -2056f), vec3<f32>(1033f, 1080f, -1552f), vec3<f32>(-2517f, 1486f, -320f), vec3<f32>(251f, 660f, -1083f));

var<private> global4: vec4<i32> = vec4<i32>(1i, 1i, 10128i, -8255i);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3(arg_0: Struct_2, arg_1: vec4<u32>) -> f32 {
    global4 = -u_input.c;
    global0 = 1i;
    let var_0 = Struct_1(global4.yzy, vec2<u32>(u_input.b, 83648u), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(237f, -850f, 893f, -217f), vec4<f32>(482f, 1694f, 493f, -786f), arg_0.a)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(704f, -1237f, 266f, -526f)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-418f, -711f, -698f, -2543f) - vec4<f32>(274f, 1466f, -689f, -441f)))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, -1000f, _wgslsmith_f_op_f32(718f * -457f), _wgslsmith_div_f32(-528f, -1000f)) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1203f, -380f, -237f, 1644f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(2233f, -361f, 647f, -497f) - vec4<f32>(-2565f, -1395f, 1515f, -2037f))))), global1[_wgslsmith_index_u32(61018u, 15u)]);
    var var_1 = arg_1.x;
    let var_2 = _wgslsmith_mult_vec2_u32(_wgslsmith_mult_vec2_u32(firstLeadingBit(~arg_1.wy), var_0.b), min(vec2<u32>(~1u, var_0.b.x), arg_1.yz)) ^ ~max(select(vec2<u32>(arg_1.x, arg_1.x), ~arg_1.yz, true), arg_1.xy);
    return _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1463f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_0.c.x * 1426f), _wgslsmith_f_op_f32(-var_0.c.x)))))));
}

fn func_2() -> Struct_3 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(func_3(Struct_2(select(vec4<bool>(global1[_wgslsmith_index_u32(12071u, 15u)], global1[_wgslsmith_index_u32(u_input.b, 15u)], false, true), vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 15u)], global1[_wgslsmith_index_u32(u_input.b, 15u)], global1[_wgslsmith_index_u32(u_input.b, 15u)], true), vec4<bool>(true, true, true, true))), vec4<u32>(1u, 91573u, 4294967295u, _wgslsmith_div_u32(u_input.b, 0u)))), _wgslsmith_f_op_f32(select(-240f, _wgslsmith_f_op_f32(func_3(Struct_2(vec4<bool>(global1[_wgslsmith_index_u32(90574u, 15u)], global1[_wgslsmith_index_u32(u_input.b, 15u)], false, global1[_wgslsmith_index_u32(8817u, 15u)])), firstTrailingBit(vec4<u32>(1u, u_input.b, 1u, 25625u)))), true)), -198f, -707f));
    global3 = array<vec3<f32>, 5>();
    var var_1 = Struct_2(select(!vec4<bool>(all(vec2<bool>(false, true)), global1[_wgslsmith_index_u32(1u, 15u)], -1385f < var_0.x, false), vec4<bool>((global4.x >> (4294967295u % 32u)) != u_input.a.x, true, !any(vec2<bool>(true, global1[_wgslsmith_index_u32(0u, 15u)])), any(select(vec4<bool>(false, global1[_wgslsmith_index_u32(u_input.b, 15u)], global1[_wgslsmith_index_u32(4294967295u, 15u)], true), vec4<bool>(false, false, true, true), true))), true));
    var var_2 = Struct_1(_wgslsmith_mult_vec3_i32(-_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a.x, 1i, -1i), vec3<i32>(-2147483647i, u_input.a.x, global4.x)), global4.xxy >> ((select(vec3<u32>(u_input.b, 0u, u_input.b), vec3<u32>(1u, u_input.b, u_input.b), global1[_wgslsmith_index_u32(50673u, 15u)]) & ~vec3<u32>(0u, u_input.b, u_input.b)) % vec3<u32>(32u))), _wgslsmith_sub_vec2_u32(vec2<u32>(~u_input.b, u_input.b), vec2<u32>(u_input.b, ~u_input.b)), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_2(var_1.a), vec4<u32>(u_input.b, u_input.b, 4294967295u, 4294967295u))) - _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(364f, -2068f)))), _wgslsmith_f_op_f32(round(var_0.x)), var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_2(vec4<bool>(true, false, true, false)), vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b))) + _wgslsmith_f_op_f32(-var_0.x)) * 1566f)), any(vec4<bool>(false, global1[_wgslsmith_index_u32(~u_input.b, 15u)], any(!var_1.a.zxx), any(!var_1.a))));
    global4 = u_input.c;
    return Struct_3(Struct_1(vec3<i32>((var_2.a.x << (4294967295u % 32u)) & u_input.a.x, ~abs(-71109i), -(var_2.a.x >> (0u % 32u))), vec2<u32>(abs(~7438u), ~(u_input.b & var_2.b.x)), var_2.c, ((u_input.c.x > var_2.a.x) && false) && true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(198f))), var_2.c.zx, Struct_1(vec3<i32>(_wgslsmith_dot_vec3_i32(-global4.wwz, countOneBits(vec3<i32>(1i, 1i, u_input.a.x))), 16557i, global4.x), var_2.b, var_2.c, !var_1.a.x));
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_3, arg_2: i32, arg_3: bool) -> u32 {
    var var_0 = vec2<i32>(-firstLeadingBit(17246i), ~arg_1.a.a.x);
    let var_1 = arg_0.xy;
    var var_2 = min(0i, u_input.c.x);
    global2 = array<Struct_3, 32>();
    global0 = arg_2;
    return max(59219u, max(7572u & _wgslsmith_add_u32(u_input.b, 4294967295u), u_input.b ^ arg_1.a.b.x)) | min(~arg_1.d.b.x, 21949u);
}

fn func_5(arg_0: Struct_3, arg_1: u32, arg_2: Struct_3, arg_3: Struct_2) -> Struct_1 {
    global1 = array<bool, 15>();
    let var_0 = -33728i;
    global4 = ~_wgslsmith_mult_vec4_i32(-(_wgslsmith_add_vec4_i32(u_input.c, vec4<i32>(-56771i, 15525i, 49221i, 20578i)) & u_input.c), _wgslsmith_mod_vec4_i32(vec4<i32>(arg_2.a.a.x, 1i, global4.x, 1i) & max(u_input.c, u_input.c), u_input.c & select(vec4<i32>(1i, global4.x, global4.x, global4.x), vec4<i32>(37524i, -2147483647i, 2147483647i, -1i), false)));
    var var_1 = _wgslsmith_sub_u32(4294967295u, _wgslsmith_div_u32(arg_0.a.b.x, arg_2.d.b.x));
    var var_2 = _wgslsmith_div_i32(firstTrailingBit(4612i), -1i);
    return arg_0.a;
}

fn func_1(arg_0: bool) -> bool {
    var var_0 = Struct_3(func_5(global2[_wgslsmith_index_u32(u_input.b, 32u)], ~(59633u << (_wgslsmith_add_u32(1u, u_input.b) % 32u)), global2[_wgslsmith_index_u32(func_4(!(!vec4<bool>(arg_0, arg_0, true, arg_0)), func_2(), -global4.x, (u_input.b & u_input.b) <= u_input.b), 32u)], Struct_2(!(!vec4<bool>(false, arg_0, arg_0, arg_0)))), _wgslsmith_f_op_f32(1f + 612f), vec2<f32>(-130f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -101f) - -430f))), Struct_1(firstLeadingBit(-(~global4.yyw)), func_2().d.b, _wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)), false));
    let var_1 = !select(select(!(!vec4<bool>(false, global1[_wgslsmith_index_u32(var_0.a.b.x, 15u)], global1[_wgslsmith_index_u32(u_input.b, 15u)], global1[_wgslsmith_index_u32(u_input.b, 15u)])), !select(vec4<bool>(true, true, global1[_wgslsmith_index_u32(0u, 15u)], false), vec4<bool>(false, false, arg_0, true), vec4<bool>(var_0.a.d, true, false, arg_0)), select(!vec4<bool>(global1[_wgslsmith_index_u32(var_0.a.b.x, 15u)], false, false, false), !vec4<bool>(arg_0, true, global1[_wgslsmith_index_u32(0u, 15u)], arg_0), !vec4<bool>(arg_0, false, true, false))), !select(vec4<bool>(true, global1[_wgslsmith_index_u32(553u, 15u)], var_0.a.d, global1[_wgslsmith_index_u32(1u, 15u)]), !vec4<bool>(arg_0, true, var_0.d.d, arg_0), !vec4<bool>(global1[_wgslsmith_index_u32(49618u, 15u)], true, false, false)), false);
    let var_2 = !(!select(select(!vec3<bool>(true, false, global1[_wgslsmith_index_u32(1u, 15u)]), var_1.yzw, false), var_1.xyx, select(vec3<bool>(var_0.a.d, arg_0, true), !vec3<bool>(true, var_1.x, false), var_1.x)));
    let var_3 = func_2();
    var var_4 = ~(~global4.xx);
    return u_input.c.x != func_2().a.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 39141u;
    let var_1 = vec3<bool>(any(vec2<bool>(func_1(global1[_wgslsmith_index_u32(u_input.b >> (0u % 32u), 15u)]), false)), false, false);
    var var_2 = global1[_wgslsmith_index_u32(select(~(~_wgslsmith_add_u32(~20717u, u_input.b)), _wgslsmith_sub_u32(~abs(u_input.b), u_input.b << (u_input.b % 32u)) >> (1u % 32u), true), 15u)];
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(-115f, -302f, func_5(Struct_3(func_2().a, _wgslsmith_f_op_f32(abs(1975f)), vec2<f32>(1363f, 2177f), Struct_1(u_input.c.xwy, vec2<u32>(u_input.b, u_input.b), vec4<f32>(333f, -2452f, -1000f, 410f), global1[_wgslsmith_index_u32(u_input.b, 15u)])), (u_input.b >> (u_input.b % 32u)) << (u_input.b % 32u), Struct_3(func_5(Struct_3(Struct_1(vec3<i32>(-42101i, global4.x, u_input.a.x), vec2<u32>(0u, u_input.b), vec4<f32>(337f, 441f, 260f, -1000f), true), -613f, vec2<f32>(-244f, -1443f), Struct_1(vec3<i32>(-1i, 37955i, global4.x), vec2<u32>(u_input.b, u_input.b), vec4<f32>(-1118f, -902f, -154f, -1000f), var_1.x)), u_input.b, Struct_3(Struct_1(global4.yxx, vec2<u32>(u_input.b, 9730u), vec4<f32>(-920f, 1705f, 236f, -1143f), var_1.x), 1826f, vec2<f32>(138f, -1580f), Struct_1(vec3<i32>(-41021i, 2147483647i, u_input.a.x), vec2<u32>(u_input.b, u_input.b), vec4<f32>(1159f, -1471f, -784f, -109f), false)), Struct_2(vec4<bool>(var_1.x, global1[_wgslsmith_index_u32(31274u, 15u)], global1[_wgslsmith_index_u32(24325u, 15u)], true))), _wgslsmith_f_op_f32(f32(-1f) * -2112f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1093f, 1046f)), Struct_1(vec3<i32>(9366i, -7014i, global4.x), vec2<u32>(u_input.b, u_input.b), vec4<f32>(195f, -2046f, -310f, -1116f), false)), Struct_2(vec4<bool>(var_1.x, true, false, false))).c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(1000f)), _wgslsmith_f_op_f32(f32(-1f) * -1440f), var_1.x)))), _wgslsmith_f_op_f32(-867f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-472f, _wgslsmith_f_op_f32(ceil(424f)), all(vec4<bool>(false, false, global1[_wgslsmith_index_u32(u_input.b, 15u)], global1[_wgslsmith_index_u32(3518u, 15u)])))))), _wgslsmith_add_vec2_u32(func_5(Struct_3(Struct_1(global4.xxy, vec2<u32>(0u, u_input.b), vec4<f32>(-172f, -698f, 773f, 815f), global1[_wgslsmith_index_u32(u_input.b, 15u)]), _wgslsmith_f_op_f32(sign(-416f)), vec2<f32>(452f, -1668f), func_2().d), 55343u, Struct_3(Struct_1(u_input.c.zzx, vec2<u32>(1u, 78141u), vec4<f32>(676f, -252f, 281f, 907f), true), -235f, vec2<f32>(1230f, -913f), func_2().a), Struct_2(select(vec4<bool>(true, false, global1[_wgslsmith_index_u32(4294967295u, 15u)], false), vec4<bool>(true, global1[_wgslsmith_index_u32(u_input.b, 15u)], global1[_wgslsmith_index_u32(u_input.b, 15u)], var_1.x), vec4<bool>(var_1.x, true, true, false)))).b, vec2<u32>(~(~u_input.b), ~(u_input.b | u_input.b))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1675f) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1165f) - _wgslsmith_div_f32(1000f, 218f))))));
}


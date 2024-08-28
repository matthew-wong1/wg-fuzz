struct Struct_1 {
    a: vec3<i32>,
    b: i32,
    c: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec2<f32>,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 15> = array<Struct_1, 15>(Struct_1(vec3<i32>(1i, i32(-2147483648), 0i), 6821i, vec4<f32>(-1266f, -1000f, 211f, 589f)), Struct_1(vec3<i32>(i32(-2147483648), 1i, 50i), 1i, vec4<f32>(477f, 598f, -383f, -3560f)), Struct_1(vec3<i32>(0i, 60841i, -1i), -18353i, vec4<f32>(810f, 572f, -1404f, 2235f)), Struct_1(vec3<i32>(-17590i, 0i, -42872i), -1i, vec4<f32>(-266f, -311f, 451f, -520f)), Struct_1(vec3<i32>(2147483647i, -1887i, i32(-2147483648)), -28754i, vec4<f32>(-803f, -1000f, -186f, 779f)), Struct_1(vec3<i32>(1i, 2147483647i, 2147483647i), 1i, vec4<f32>(-759f, 178f, 879f, 626f)), Struct_1(vec3<i32>(-13116i, i32(-2147483648), -12365i), 5720i, vec4<f32>(-1001f, 288f, -285f, 1258f)), Struct_1(vec3<i32>(0i, 50865i, i32(-2147483648)), 2147483647i, vec4<f32>(-711f, -555f, 114f, 1000f)), Struct_1(vec3<i32>(i32(-2147483648), -18385i, 2147483647i), 1i, vec4<f32>(-370f, 393f, 1742f, 2555f)), Struct_1(vec3<i32>(-6422i, 13928i, i32(-2147483648)), 17302i, vec4<f32>(514f, 236f, -1348f, 794f)), Struct_1(vec3<i32>(-34016i, -4345i, -1i), 50672i, vec4<f32>(414f, -185f, -123f, 129f)), Struct_1(vec3<i32>(52347i, 0i, 2147483647i), 8800i, vec4<f32>(-472f, 1359f, 199f, 1000f)), Struct_1(vec3<i32>(2147483647i, 2147483647i, 11854i), 2492i, vec4<f32>(682f, -1000f, 1150f, -220f)), Struct_1(vec3<i32>(43350i, 0i, 2147483647i), 2147483647i, vec4<f32>(-138f, 110f, 578f, -1287f)), Struct_1(vec3<i32>(2147483647i, -5403i, 0i), i32(-2147483648), vec4<f32>(517f, 867f, -1045f, -390f)));

var<private> global1: i32;

var<private> global2: array<Struct_2, 14> = array<Struct_2, 14>(Struct_2(Struct_1(vec3<i32>(31472i, 52189i, i32(-2147483648)), 7593i, vec4<f32>(580f, 1193f, -339f, 782f)), -3242f, vec2<f32>(1000f, -1000f), vec4<f32>(743f, 1590f, 646f, -1952f)), Struct_2(Struct_1(vec3<i32>(-17262i, 2147483647i, 0i), 2147483647i, vec4<f32>(-1386f, 823f, 757f, -1725f)), -1629f, vec2<f32>(-177f, -381f), vec4<f32>(-1989f, -1000f, -233f, -490f)), Struct_2(Struct_1(vec3<i32>(-1i, -10107i, 0i), 78940i, vec4<f32>(634f, -143f, 1040f, 1278f)), -687f, vec2<f32>(983f, 257f), vec4<f32>(-337f, -1117f, -631f, 311f)), Struct_2(Struct_1(vec3<i32>(-1i, -1i, 0i), 2147483647i, vec4<f32>(1054f, 851f, -845f, -249f)), 709f, vec2<f32>(-206f, -1139f), vec4<f32>(-267f, -1803f, -1380f, -1445f)), Struct_2(Struct_1(vec3<i32>(20489i, 1i, -23916i), 0i, vec4<f32>(1088f, 413f, 689f, -789f)), -109f, vec2<f32>(-189f, 1938f), vec4<f32>(261f, 525f, -1000f, -587f)), Struct_2(Struct_1(vec3<i32>(-1i, 2147483647i, -30779i), i32(-2147483648), vec4<f32>(180f, 1083f, 1161f, 2367f)), -281f, vec2<f32>(-2188f, 802f), vec4<f32>(-1000f, -1360f, 838f, 839f)), Struct_2(Struct_1(vec3<i32>(17032i, 0i, 1i), 0i, vec4<f32>(-350f, 510f, 816f, 459f)), 1000f, vec2<f32>(325f, 497f), vec4<f32>(-176f, 650f, -517f, 1881f)), Struct_2(Struct_1(vec3<i32>(0i, i32(-2147483648), 0i), -24843i, vec4<f32>(-675f, -1000f, 1000f, 969f)), 418f, vec2<f32>(1124f, 771f), vec4<f32>(287f, 530f, -320f, -1000f)), Struct_2(Struct_1(vec3<i32>(-56469i, 2147483647i, i32(-2147483648)), 2147483647i, vec4<f32>(-948f, -986f, 1642f, 1406f)), 810f, vec2<f32>(-825f, -480f), vec4<f32>(190f, 317f, -1423f, -293f)), Struct_2(Struct_1(vec3<i32>(i32(-2147483648), -25343i, 21190i), 20585i, vec4<f32>(-1232f, -662f, -794f, 1380f)), -1163f, vec2<f32>(-1767f, 2294f), vec4<f32>(1307f, 907f, 1041f, 1113f)), Struct_2(Struct_1(vec3<i32>(10008i, -2598i, 36495i), -4207i, vec4<f32>(1000f, 351f, 1602f, -2091f)), -867f, vec2<f32>(1198f, 378f), vec4<f32>(-740f, 1000f, -1070f, 389f)), Struct_2(Struct_1(vec3<i32>(i32(-2147483648), 2622i, 15260i), -1i, vec4<f32>(652f, -109f, -790f, 1195f)), -607f, vec2<f32>(-150f, 1183f), vec4<f32>(779f, 124f, 479f, -322f)), Struct_2(Struct_1(vec3<i32>(i32(-2147483648), 0i, 37479i), 33114i, vec4<f32>(1155f, -1000f, -789f, 1000f)), 156f, vec2<f32>(-870f, 908f), vec4<f32>(320f, 482f, -701f, -402f)), Struct_2(Struct_1(vec3<i32>(1i, i32(-2147483648), -19664i), 48255i, vec4<f32>(1007f, 844f, -1666f, -406f)), -823f, vec2<f32>(165f, -101f), vec4<f32>(1051f, -603f, 589f, 691f)));

var<private> global3: Struct_2 = Struct_2(Struct_1(vec3<i32>(-1i, 2147483647i, -1i), -1i, vec4<f32>(606f, 1666f, -882f, -1045f)), -862f, vec2<f32>(-803f, -785f), vec4<f32>(-176f, -809f, 208f, -561f));

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_1(arg_0: f32, arg_1: vec3<f32>) -> Struct_2 {
    global2 = array<Struct_2, 14>();
    global2 = array<Struct_2, 14>();
    global1 = global3.a.b;
    var var_0 = global2[_wgslsmith_index_u32(countOneBits(u_input.a.x), 14u)];
    var var_1 = var_0.a.a.yx;
    return global2[_wgslsmith_index_u32(~(u_input.a.x ^ ~(~_wgslsmith_add_u32(21637u, u_input.a.x))), 14u)];
}

fn func_3(arg_0: vec3<bool>, arg_1: vec2<u32>) -> u32 {
    let var_0 = global3.a;
    var var_1 = vec2<i32>(firstLeadingBit(50119i), -12739i);
    let var_2 = arg_1.x;
    var var_3 = _wgslsmith_f_op_f32(var_0.c.x + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(209f * global3.d.x), _wgslsmith_f_op_f32(-global3.a.c.x)))))));
    var var_4 = -vec3<i32>(-2147483647i, _wgslsmith_mult_i32(~(-55822i) | global3.a.b, var_0.b), abs(var_1.x) ^ global3.a.a.x);
    return firstLeadingBit(arg_1.x) ^ ~4294967295u;
}

fn func_2(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: vec3<u32>) -> vec4<u32> {
    global1 = arg_1.x;
    global1 = -2147483647i;
    var var_0 = Struct_2(Struct_1(vec3<i32>(-32776i, _wgslsmith_sub_i32(3688i, -12435i), arg_1.x) >> (_wgslsmith_sub_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.a.x, 51502u, arg_2.x), vec3<u32>(88235u, 4294967295u, u_input.a.x)), vec3<u32>(arg_2.x, arg_2.x, 1u)) % vec3<u32>(32u)), select(func_1(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_vec3_f32(-arg_0.c.wzx)).a.b, _wgslsmith_add_i32(_wgslsmith_mod_i32(32315i, arg_0.b), ~arg_0.b), false), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global3.d.x, global3.d.x, -295f, arg_0.c.x) + vec4<f32>(arg_0.c.x, 1091f, -1778f, global3.c.x)) + _wgslsmith_f_op_vec4_f32(arg_0.c * vec4<f32>(global3.a.c.x, arg_0.c.x, -585f, -324f))))), global3.d.x, global3.c, _wgslsmith_f_op_vec4_f32(round(arg_0.c)));
    global2 = array<Struct_2, 14>();
    var var_1 = ~(~(~arg_0.a.zy >> (~select(vec2<u32>(4294967295u, arg_2.x), u_input.a, false) % vec2<u32>(32u))));
    return vec4<u32>(4294967295u << (func_3(vec3<bool>(true, true, true), u_input.a) % 32u), ~func_3(vec3<bool>(any(vec4<bool>(true, false, true, true)), true, true), reverseBits(vec2<u32>(1u, 1u))), u_input.a.x, u_input.a.x);
}

fn func_4(arg_0: u32, arg_1: vec4<u32>, arg_2: vec2<u32>) -> i32 {
    let var_0 = vec4<f32>(-2447f, global3.a.c.x, _wgslsmith_f_op_f32(global3.c.x + global3.a.c.x), -641f);
    let var_1 = select(vec2<bool>(any(vec3<bool>(true, true, true)) | (any(vec3<bool>(false, false, true)) && true), true), select(vec2<bool>(_wgslsmith_div_f32(663f, var_0.x) > _wgslsmith_f_op_f32(min(1394f, -729f)), false), !select(vec2<bool>(false, true), vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, true), false)), true), !any(vec2<bool>(true, true)));
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(var_0.zx, vec2<f32>(-1323f, global3.b))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global3.d.zy)) - global3.a.c.xz)) * _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global3.a.c.x, -1297f) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(821f, global3.b))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(var_0.xy)))))));
    var var_3 = global2[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(firstTrailingBit(vec3<u32>(arg_0, arg_2.x, 1u)) ^ (arg_1.zzw & vec3<u32>(arg_0, arg_2.x, 80146u)), ~_wgslsmith_sub_vec3_u32(vec3<u32>(0u, arg_2.x, 20519u), arg_1.www), _wgslsmith_sub_vec3_u32(func_2(Struct_1(global3.a.a, global3.a.b, vec4<f32>(var_0.x, -736f, var_0.x, global3.a.c.x)), global3.a.a, vec3<u32>(arg_0, 0u, 21196u)).zwy, vec3<u32>(0u, 0u, 1u))), firstTrailingBit(vec3<u32>(7688u, _wgslsmith_sub_u32(arg_2.x, u_input.a.x), ~arg_1.x))), 14u)];
    let var_4 = ~0u;
    return -_wgslsmith_sub_i32(var_3.a.b, _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, var_3.a.a.x), vec2<i32>(1i, 2147483647i)), -28499i), ~(-vec2<i32>(var_3.a.b, 2744i))));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = func_1(_wgslsmith_f_op_f32(global3.d.x - global3.b), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.a.c.x, -1513f, global3.c.x)), _wgslsmith_f_op_vec3_f32(-global3.d.wzz), all(vec3<bool>(false, false, false))))))));
    global3 = global2[_wgslsmith_index_u32(u_input.a.x, 14u)];
    global2 = array<Struct_2, 14>();
    global1 = func_4(_wgslsmith_mod_u32(_wgslsmith_sub_u32(~u_input.a.x, countOneBits(u_input.a.x)) | 17977u, ~4294967295u), countOneBits(~func_2(global3.a, global3.a.a, vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x))), min(select(_wgslsmith_sub_vec2_u32(u_input.a, vec2<u32>(9580u, u_input.a.x)), vec2<u32>(u_input.a.x, 5086u), select(vec2<bool>(true, true), vec2<bool>(true, false), false)), u_input.a) ^ vec2<u32>(_wgslsmith_dot_vec2_u32(u_input.a, vec2<u32>(u_input.a.x, 4294967295u)) << (25362u % 32u), max(_wgslsmith_div_u32(u_input.a.x, 8333u), u_input.a.x)));
    global2 = array<Struct_2, 14>();
    global3 = global2[_wgslsmith_index_u32(select(func_2(func_1(1f, _wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.a.c.x, global3.d.x, -490f))).a, ~(~vec3<i32>(global3.a.a.x, global3.a.a.x, -25610i)), ~(~vec3<u32>(40556u, u_input.a.x, 4294967295u))).x, func_2(Struct_1(_wgslsmith_sub_vec3_i32(global3.a.a, global3.a.a), _wgslsmith_dot_vec4_i32(vec4<i32>(-27717i, global3.a.b, global3.a.a.x, 0i), vec4<i32>(41997i, global3.a.b, global3.a.b, global3.a.b)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1430f, global3.d.x, global3.d.x, global3.c.x) * vec4<f32>(2019f, global3.a.c.x, global3.d.x, global3.c.x))), -global3.a.a, max(_wgslsmith_add_vec3_u32(vec3<u32>(27571u, u_input.a.x, u_input.a.x), vec3<u32>(38060u, 17731u, 1u)), reverseBits(vec3<u32>(u_input.a.x, 1u, u_input.a.x)))).x, true) >> (u_input.a.x % 32u), 14u)];
    let x = u_input.a;
    s_output = StorageBuffer(~(func_2(func_1(-183f, vec3<f32>(global3.b, global3.d.x, global3.b)).a, vec3<i32>(global3.a.a.x, global3.a.a.x, global3.a.a.x), abs(vec3<u32>(1u, 0u, u_input.a.x))).yy << (~u_input.a % vec2<u32>(32u))));
}


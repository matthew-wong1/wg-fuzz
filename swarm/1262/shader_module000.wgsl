struct Struct_1 {
    a: vec2<bool>,
    b: vec3<i32>,
    c: i32,
    d: f32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: i32,
}

struct Struct_3 {
    a: bool,
    b: vec3<u32>,
    c: vec4<f32>,
    d: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: u32,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 28>;

var<private> global1: array<bool, 3> = array<bool, 3>(false, true, true);

var<private> global2: array<Struct_1, 4> = array<Struct_1, 4>(Struct_1(vec2<bool>(false, true), vec3<i32>(-56953i, 65473i, -35088i), 0i, 525f), Struct_1(vec2<bool>(true, true), vec3<i32>(0i, -29459i, 81866i), -18469i, 1000f), Struct_1(vec2<bool>(false, true), vec3<i32>(-56892i, 1i, -23451i), 11627i, 409f), Struct_1(vec2<bool>(false, true), vec3<i32>(15645i, -11964i, -15380i), 1i, 984f));

var<private> global3: u32 = 30208u;

var<private> global4: array<vec3<f32>, 25> = array<vec3<f32>, 25>(vec3<f32>(371f, 984f, -931f), vec3<f32>(1112f, -1768f, 144f), vec3<f32>(-1147f, 648f, 1000f), vec3<f32>(1000f, -884f, 1408f), vec3<f32>(-858f, 771f, 811f), vec3<f32>(-828f, 342f, -717f), vec3<f32>(-255f, 1620f, -1662f), vec3<f32>(-584f, 245f, -872f), vec3<f32>(-750f, -846f, -629f), vec3<f32>(-379f, 1508f, -260f), vec3<f32>(206f, -2094f, 525f), vec3<f32>(-1091f, -842f, 399f), vec3<f32>(-760f, -1000f, -173f), vec3<f32>(-759f, -1807f, -1257f), vec3<f32>(-135f, -559f, 1427f), vec3<f32>(-655f, -912f, -307f), vec3<f32>(328f, -748f, -789f), vec3<f32>(1000f, -354f, 1705f), vec3<f32>(366f, 1170f, 291f), vec3<f32>(-1283f, -1000f, 215f), vec3<f32>(-1449f, -511f, 1793f), vec3<f32>(137f, 902f, 1213f), vec3<f32>(-848f, 168f, 272f), vec3<f32>(-1105f, -529f, -1234f), vec3<f32>(-328f, -1805f, -115f));

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(ceil(-253f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(614f)) - _wgslsmith_f_op_f32(-924f * -479f))), _wgslsmith_f_op_f32(floor(1067f))));
    global3 = u_input.a.x | u_input.a.x;
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global4[_wgslsmith_index_u32(min(u_input.a.x, ~_wgslsmith_mult_u32(4294967295u, u_input.a.x)), 25u)] * vec3<f32>(-912f, var_0.x, _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-854f, var_0.x))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global4[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_add_u32(0u, u_input.a.x)), 25u)])));
    return Struct_1(vec2<bool>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(299f)))) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(280f)) - _wgslsmith_f_op_f32(exp2(var_0.x))), global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_div_u32(38720u, 112181u) >> (u_input.a.x % 32u), _wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(u_input.a.x, 1237u, u_input.a.x, u_input.a.x))), 3u)]), vec3<i32>(9342i, _wgslsmith_dot_vec2_i32(vec2<i32>(1i, 1i), ~(vec2<i32>(-1i, 38061i) >> (u_input.a.wy % vec2<u32>(32u)))), max(~_wgslsmith_add_i32(47952i, -1i), _wgslsmith_dot_vec3_i32(vec3<i32>(-37247i, 17362i, -4977i), vec3<i32>(1i, 1i, 1i)))), -47424i, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1000f, -945f))), _wgslsmith_f_op_f32(round(1000f)))), 604f, global1[_wgslsmith_index_u32(~(~u_input.a.x) & _wgslsmith_mult_u32(1u, ~4294967295u), 3u)])));
}

fn func_3(arg_0: vec4<u32>, arg_1: bool, arg_2: bool) -> vec4<bool> {
    var var_0 = global0[_wgslsmith_index_u32(1u, 28u)];
    var var_1 = Struct_1(var_0.a.ww, -vec3<i32>(-(~49775i), ~(var_0.b | 1i), reverseBits(~27478i)), _wgslsmith_sub_i32(4223i, _wgslsmith_dot_vec3_i32(reverseBits(vec3<i32>(1i, -55599i, 16180i)), ~vec3<i32>(var_0.b, var_0.b, -2147483647i))) & _wgslsmith_dot_vec2_i32(vec2<i32>(var_0.b, var_0.b & 2147483647i), vec2<i32>(var_0.b << (0u % 32u), var_0.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1000f, _wgslsmith_f_op_f32(1137f * -792f)))));
    global1 = array<bool, 3>();
    var_1 = func_1();
    global2 = array<Struct_1, 4>();
    return select(vec4<bool>(any(select(select(vec4<bool>(false, var_1.a.x, var_1.a.x, var_0.a.x), var_0.a, vec4<bool>(var_0.a.x, false, global1[_wgslsmith_index_u32(arg_0.x, 3u)], false)), var_0.a, !vec4<bool>(true, global1[_wgslsmith_index_u32(70247u, 3u)], var_0.a.x, true))), !var_1.a.x, true, true), select(!(!var_0.a), vec4<bool>(false, any(!var_1.a), select(!global1[_wgslsmith_index_u32(u_input.a.x, 3u)], any(var_0.a), !arg_1), all(select(var_1.a, var_1.a, var_1.a.x))), any(!var_0.a)), !select(select(select(vec4<bool>(var_1.a.x, arg_1, arg_2, var_0.a.x), vec4<bool>(true, false, true, false), vec4<bool>(var_0.a.x, global1[_wgslsmith_index_u32(u_input.a.x, 3u)], false, global1[_wgslsmith_index_u32(arg_0.x, 3u)])), var_0.a, false), vec4<bool>(var_0.a.x | true, arg_2, all(vec2<bool>(global1[_wgslsmith_index_u32(51065u, 3u)], arg_1)), !var_1.a.x), !arg_1));
}

fn func_2(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: vec4<f32>, arg_3: vec4<u32>) -> Struct_1 {
    let var_0 = false;
    global2 = array<Struct_1, 4>();
    var var_1 = !(!select(select(vec4<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 3u)], true, var_0, true), vec4<bool>(false, arg_1.a.x, false, false), func_1().a.x), select(vec4<bool>(arg_1.a.x, arg_1.a.x, true, arg_1.a.x), select(vec4<bool>(arg_1.a.x, arg_1.a.x, true, false), vec4<bool>(global1[_wgslsmith_index_u32(arg_3.x, 3u)], true, arg_1.a.x, false), true), select(vec4<bool>(var_0, var_0, true, false), vec4<bool>(global1[_wgslsmith_index_u32(arg_3.x, 3u)], arg_1.a.x, arg_1.a.x, arg_1.a.x), global1[_wgslsmith_index_u32(u_input.a.x, 3u)])), select(!vec4<bool>(var_0, true, true, true), !vec4<bool>(global1[_wgslsmith_index_u32(arg_3.x, 3u)], global1[_wgslsmith_index_u32(arg_3.x, 3u)], global1[_wgslsmith_index_u32(arg_3.x, 3u)], var_0), any(vec4<bool>(false, global1[_wgslsmith_index_u32(72229u, 3u)], var_0, var_0)))));
    var_1 = func_3(vec4<u32>(reverseBits(~_wgslsmith_div_u32(arg_3.x, 8667u)), 114432u, u_input.a.x, arg_3.x >> (_wgslsmith_sub_u32(u_input.a.x, countOneBits(0u)) % 32u)), false, true);
    var var_2 = arg_1.b.x;
    return Struct_1(!vec2<bool>(select(false, var_0, arg_1.a.x), any(!vec2<bool>(arg_1.a.x, var_1.x))), arg_1.b, -6693i, _wgslsmith_f_op_f32(-arg_0.x));
}

fn func_4(arg_0: vec4<i32>, arg_1: f32, arg_2: Struct_1) -> Struct_3 {
    let var_0 = -1000f;
    let var_1 = global0[_wgslsmith_index_u32(~4294967295u, 28u)];
    global2 = array<Struct_1, 4>();
    var var_2 = Struct_1(var_1.a.xy, arg_2.b | -arg_2.b, 1i, _wgslsmith_f_op_f32(-func_1().d));
    var var_3 = _wgslsmith_dot_vec3_i32(max(firstLeadingBit(_wgslsmith_clamp_vec3_i32(-vec3<i32>(var_1.b, -2147483647i, arg_2.c), arg_2.b, ~var_2.b)), abs(arg_2.b)), countOneBits(vec3<i32>(countOneBits(arg_2.c), var_2.b.x, arg_2.c)));
    return Struct_3(any(select(vec4<bool>(true, all(var_1.a.wzy), true, true), func_3(_wgslsmith_add_vec4_u32(vec4<u32>(62592u, u_input.a.x, 68536u, 49669u), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 4294967295u)), select(global1[_wgslsmith_index_u32(4294967295u, 3u)], global1[_wgslsmith_index_u32(u_input.a.x, 3u)], var_1.a.x), var_2.d < var_2.d), false)), vec3<u32>(0u, ~(~u_input.a.x) | 73751u, reverseBits(1u)), vec4<f32>(-513f, arg_2.d, _wgslsmith_f_op_f32(sign(arg_2.d)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1267f, arg_1))), Struct_2(!(!vec4<bool>(true, global1[_wgslsmith_index_u32(u_input.a.x, 3u)], arg_2.a.x, false)), ~(~arg_2.b.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(func_4(countOneBits(vec4<i32>(1i, 1i, 1942i, ~(-1i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1123f, 367f) - _wgslsmith_f_op_f32(max(739f, -933f)))), func_2(global4[_wgslsmith_index_u32(u_input.a.x, 25u)], func_1(), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-495f, -1132f, -123f, 1000f) * vec4<f32>(205f, 1147f, -398f, 1000f))), reverseBits(vec4<u32>(u_input.a.x, 0u, 79153u, u_input.a.x)) << ((u_input.a << (u_input.a % vec4<u32>(32u))) % vec4<u32>(32u)))), func_4(_wgslsmith_mult_vec4_i32(firstTrailingBit(max(vec4<i32>(-1i, -1i, 2147483647i, 13323i), vec4<i32>(8696i, 2147483647i, -2147483647i, 9600i))), -vec4<i32>(34152i, 0i, 0i, -32005i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1594f) * _wgslsmith_f_op_f32(select(-706f, -812f, false))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-472f)) - _wgslsmith_f_op_f32(792f * -612f))), Struct_1(!select(vec2<bool>(false, global1[_wgslsmith_index_u32(1520u, 3u)]), vec2<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 3u)], global1[_wgslsmith_index_u32(52075u, 3u)]), vec2<bool>(global1[_wgslsmith_index_u32(52797u, 3u)], global1[_wgslsmith_index_u32(u_input.a.x, 3u)])), (vec3<i32>(-14810i, -2147483647i, -12669i) >> (u_input.a.zxy % vec3<u32>(32u))) | vec3<i32>(-4772i, -26576i, 0i), -18719i, _wgslsmith_div_f32(func_4(vec4<i32>(-48107i, -4616i, 0i, 1i), 323f, Struct_1(vec2<bool>(true, false), vec3<i32>(-1i, 0i, 31591i), -2147483647i, -1037f)).c.x, -1024f))).d);
    let var_1 = ~vec3<i32>(firstTrailingBit(6868i) | -33353i, ~(var_0.a.d.b >> (45855u % 32u)), 0i) ^ (~vec3<i32>(36337i, i32(-1i) * -62716i, -2147483647i) & (vec3<i32>(abs(var_0.b.b), -2147483647i, -var_0.a.d.b) & abs(select(vec3<i32>(1i, 19770i, 10105i), vec3<i32>(62267i, 2147483647i, var_0.b.b), false))));
    global0 = array<Struct_2, 28>();
    var var_2 = Struct_3((any(func_3(u_input.a, var_0.b.a.x, global1[_wgslsmith_index_u32(42581u, 3u)]).yz) & global1[_wgslsmith_index_u32(72183u, 3u)]) && true, vec3<u32>(~var_0.a.b.x, var_0.a.b.x, ~17451u), var_0.a.c, func_4(-_wgslsmith_div_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(var_1.x, 31231i, var_1.x, -2147483647i), vec4<i32>(0i, -1i, -14936i, var_0.a.d.b)), _wgslsmith_clamp_vec4_i32(vec4<i32>(var_1.x, 15596i, var_0.a.d.b, var_0.a.d.b), vec4<i32>(var_0.a.d.b, var_0.b.b, var_1.x, 26431i), vec4<i32>(var_1.x, -15625i, var_0.a.d.b, 0i))), -626f, func_1()).d);
    let var_3 = func_4(firstLeadingBit(~vec4<i32>(_wgslsmith_mod_i32(var_2.d.b, var_0.a.d.b), reverseBits(-5888i), abs(var_0.a.d.b), ~(-2147483647i))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.c.x)))), func_2(vec3<f32>(var_2.c.x, -553f, _wgslsmith_f_op_f32(f32(-1f) * -1174f)), func_1(), vec4<f32>(-843f, var_0.a.c.x, var_2.c.x, 1544f), _wgslsmith_add_vec4_u32(_wgslsmith_mod_vec4_u32(~u_input.a, u_input.a), reverseBits(_wgslsmith_div_vec4_u32(u_input.a, u_input.a))))).d;
    global0 = array<Struct_2, 28>();
    let var_4 = !var_3.a.zz;
    let x = u_input.a;
    s_output = StorageBuffer(max(abs(vec4<i32>(max(1i, var_0.a.d.b), ~var_0.b.b, var_3.b, ~var_0.b.b)), -(vec4<i32>(-1i) * -vec4<i32>(var_1.x, var_3.b, var_3.b, 54790i))), _wgslsmith_dot_vec2_i32(-var_1.zz, var_1.xy), _wgslsmith_sub_u32(~(~var_2.b.x), max(_wgslsmith_add_u32(reverseBits(4294967295u), _wgslsmith_clamp_u32(var_2.b.x, u_input.a.x, var_0.a.b.x)), select(22800u, ~0u, true))), var_3.b, _wgslsmith_clamp_i32(-2147483647i, max(-var_1.x, func_2(_wgslsmith_f_op_vec3_f32(trunc(global4[_wgslsmith_index_u32(var_2.b.x, 25u)])), func_1(), var_0.a.c, vec4<u32>(var_2.b.x, var_0.a.b.x, u_input.a.x, 19622u)).b.x), reverseBits(var_2.d.b)));
}


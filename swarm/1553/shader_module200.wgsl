struct Struct_1 {
    a: vec4<i32>,
    b: vec2<bool>,
    c: vec2<u32>,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec3<u32>,
    d: vec4<i32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<Struct_1, 22> = array<Struct_1, 22>(Struct_1(vec4<i32>(i32(-2147483648), -7565i, -1i, 2147483647i), vec2<bool>(true, false), vec2<u32>(0u, 68308u), vec4<i32>(-28162i, -3734i, -8358i, 4510i)), Struct_1(vec4<i32>(46732i, 13874i, 1i, -3441i), vec2<bool>(false, false), vec2<u32>(87089u, 1u), vec4<i32>(-1i, -2926i, -25864i, 2147483647i)), Struct_1(vec4<i32>(-35540i, 19243i, -35042i, 0i), vec2<bool>(true, true), vec2<u32>(23441u, 67328u), vec4<i32>(-1i, -10588i, 1i, i32(-2147483648))), Struct_1(vec4<i32>(42339i, -34224i, -24784i, -43156i), vec2<bool>(false, true), vec2<u32>(0u, 5499u), vec4<i32>(10760i, 1i, -70334i, 0i)), Struct_1(vec4<i32>(0i, 2147483647i, -62179i, 66697i), vec2<bool>(false, true), vec2<u32>(4294967295u, 33672u), vec4<i32>(1i, -1i, 1i, -1i)), Struct_1(vec4<i32>(-14477i, -27685i, 37055i, 13429i), vec2<bool>(true, false), vec2<u32>(1u, 0u), vec4<i32>(-10472i, 22146i, i32(-2147483648), -26171i)), Struct_1(vec4<i32>(-21568i, -1i, 23324i, 2147483647i), vec2<bool>(true, false), vec2<u32>(4294967295u, 1u), vec4<i32>(2147483647i, -1i, i32(-2147483648), -1i)), Struct_1(vec4<i32>(9394i, 31170i, -34464i, i32(-2147483648)), vec2<bool>(false, true), vec2<u32>(25271u, 55812u), vec4<i32>(-1i, i32(-2147483648), 38324i, -24978i)), Struct_1(vec4<i32>(28689i, -1i, 0i, 0i), vec2<bool>(true, true), vec2<u32>(1u, 0u), vec4<i32>(-22087i, 36402i, -44091i, -12042i)), Struct_1(vec4<i32>(22167i, 2147483647i, 23549i, -1i), vec2<bool>(false, false), vec2<u32>(4294967295u, 4294967295u), vec4<i32>(i32(-2147483648), 53874i, -16654i, 1i)), Struct_1(vec4<i32>(2147483647i, -11627i, 29755i, 1i), vec2<bool>(false, true), vec2<u32>(4294967295u, 4294967295u), vec4<i32>(7797i, 1i, 1i, -46634i)), Struct_1(vec4<i32>(i32(-2147483648), -45554i, 15612i, 2147483647i), vec2<bool>(true, true), vec2<u32>(4294967295u, 1u), vec4<i32>(0i, 6029i, 0i, 3039i)), Struct_1(vec4<i32>(2147483647i, -7397i, -1i, 1i), vec2<bool>(false, true), vec2<u32>(0u, 1u), vec4<i32>(2147483647i, -36253i, i32(-2147483648), 2147483647i)), Struct_1(vec4<i32>(6240i, i32(-2147483648), -6917i, 2158i), vec2<bool>(false, false), vec2<u32>(63239u, 54110u), vec4<i32>(0i, 2390i, -1i, 20785i)), Struct_1(vec4<i32>(1i, 1471i, -1i, 20874i), vec2<bool>(true, true), vec2<u32>(45250u, 0u), vec4<i32>(-10953i, 2147483647i, 163i, 46636i)), Struct_1(vec4<i32>(0i, -10927i, -64234i, 11093i), vec2<bool>(true, true), vec2<u32>(27292u, 6011u), vec4<i32>(-1i, 0i, i32(-2147483648), 0i)), Struct_1(vec4<i32>(-29905i, i32(-2147483648), 0i, 9358i), vec2<bool>(true, false), vec2<u32>(71938u, 97021u), vec4<i32>(2147483647i, 6797i, -1i, 1i)), Struct_1(vec4<i32>(i32(-2147483648), 10055i, 64943i, 0i), vec2<bool>(false, false), vec2<u32>(0u, 112306u), vec4<i32>(15110i, -1i, 0i, 2147483647i)), Struct_1(vec4<i32>(-16348i, 55219i, 41633i, 2147483647i), vec2<bool>(true, true), vec2<u32>(54409u, 11067u), vec4<i32>(2147483647i, -1i, -13038i, 2147483647i)), Struct_1(vec4<i32>(15201i, 2147483647i, -1i, -1i), vec2<bool>(false, false), vec2<u32>(8661u, 61228u), vec4<i32>(-33945i, -17282i, i32(-2147483648), -13789i)), Struct_1(vec4<i32>(11208i, 0i, -6967i, i32(-2147483648)), vec2<bool>(false, true), vec2<u32>(6566u, 34220u), vec4<i32>(-35741i, 1i, -75596i, 34893i)), Struct_1(vec4<i32>(38438i, i32(-2147483648), 1i, 412i), vec2<bool>(false, true), vec2<u32>(1u, 75037u), vec4<i32>(1i, -1i, -1i, 2147483647i)));

var<private> global2: array<vec4<u32>, 10>;

var<private> global3: array<vec4<i32>, 22> = array<vec4<i32>, 22>(vec4<i32>(0i, 32612i, i32(-2147483648), -65052i), vec4<i32>(-37483i, 0i, -40026i, 2680i), vec4<i32>(6648i, -29821i, 1i, i32(-2147483648)), vec4<i32>(2147483647i, -43368i, 2147483647i, 29509i), vec4<i32>(13300i, 75751i, 0i, 28969i), vec4<i32>(2147483647i, 0i, -22589i, -13781i), vec4<i32>(4706i, 12051i, -1i, 1i), vec4<i32>(1i, -17358i, -1i, 743i), vec4<i32>(-5902i, -1158i, 2147483647i, 2147483647i), vec4<i32>(i32(-2147483648), 0i, 12196i, -19700i), vec4<i32>(2147483647i, 1i, -45270i, 0i), vec4<i32>(28263i, -9840i, -1i, -17247i), vec4<i32>(-47780i, 2147483647i, 2147483647i, 1i), vec4<i32>(59652i, 1i, -1i, 2147483647i), vec4<i32>(37436i, 0i, i32(-2147483648), -36512i), vec4<i32>(-1i, -9754i, -1720i, -4186i), vec4<i32>(-14968i, 0i, -1i, 2147483647i), vec4<i32>(-18795i, -20430i, 6437i, -1i), vec4<i32>(2147483647i, -1i, 22702i, 29496i), vec4<i32>(-22918i, 28804i, i32(-2147483648), -10146i), vec4<i32>(29958i, 0i, 1i, 2147483647i), vec4<i32>(76172i, 2147483647i, 5022i, -12123i));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: vec3<u32>, arg_3: vec3<bool>) -> i32 {
    global0 = Struct_1(select(global0.a, vec4<i32>(-abs(-1i), select(i32(-1i) * -2147483647i, arg_0.d.x >> (6027u % 32u), false), -2147483647i, reverseBits(global0.d.x ^ 2147483647i)), arg_0.b.x), arg_3.yz, _wgslsmith_sub_vec2_u32(firstTrailingBit(_wgslsmith_sub_vec2_u32(u_input.a.yx, vec2<u32>(global0.c.x, arg_2.x))), abs(vec2<u32>(u_input.b, 4294967295u))) & ~global0.c, abs(~(~_wgslsmith_add_vec4_i32(vec4<i32>(arg_1, -2147483647i, -1i, 88370i), vec4<i32>(arg_1, -1i, u_input.d.x, -32390i)))));
    let var_0 = true;
    let var_1 = _wgslsmith_f_op_f32(max(-2073f, _wgslsmith_f_op_f32(step(1f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-850f + 283f), 1f, var_0)))))) >= _wgslsmith_f_op_f32(step(-122f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1104f - 1f)))));
    var var_2 = vec2<i32>(min(global0.a.x, _wgslsmith_dot_vec4_i32(vec4<i32>(~u_input.d.x, arg_1, global0.a.x, firstTrailingBit(0i)), firstTrailingBit(global3[_wgslsmith_index_u32(~global0.c.x, 22u)]))), -reverseBits(global0.d.x << (u_input.a.x % 32u)) & min(_wgslsmith_clamp_i32(_wgslsmith_add_i32(-43458i, arg_0.a.x), abs(2147483647i), _wgslsmith_div_i32(2147483647i, arg_1)), ~_wgslsmith_add_i32(4991i, u_input.e.x)));
    var var_3 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1769f, -1378f)) + _wgslsmith_f_op_f32(566f * _wgslsmith_f_op_f32(f32(-1f) * -899f))))));
    return 2175i;
}

fn func_2(arg_0: vec2<u32>, arg_1: f32) -> bool {
    var var_0 = Struct_1(vec4<i32>(i32(-1i) * -1i, min((u_input.d.x ^ -60759i) << (0u % 32u), func_3(Struct_1(vec4<i32>(u_input.e.x, global0.a.x, 0i, u_input.e.x), global0.b, global0.c, global3[_wgslsmith_index_u32(arg_0.x, 22u)]), _wgslsmith_dot_vec2_i32(vec2<i32>(global0.d.x, global0.a.x), u_input.d.zx), ~vec3<u32>(u_input.b, global0.c.x, 0u), select(vec3<bool>(true, true, global0.b.x), vec3<bool>(true, false, global0.b.x), vec3<bool>(global0.b.x, false, true)))), -2147483647i, -2147483647i), global0.b, vec2<u32>(select(abs(u_input.b << (73365u % 32u)), firstTrailingBit(38846u) ^ global0.c.x, true), max(min(global0.c.x ^ arg_0.x, u_input.c.x), min(countOneBits(global0.c.x), global0.c.x))), global0.a);
    global0 = Struct_1(~vec4<i32>(12279i, var_0.d.x, select(-1i, _wgslsmith_mod_i32(u_input.e.x, -52988i), !var_0.b.x), -(u_input.e.x & u_input.d.x)), vec2<bool>(!select(global0.b.x, global0.b.x, any(vec2<bool>(false, var_0.b.x))), global0.b.x), select(vec2<u32>(~global0.c.x >> (max(0u, 1u) % 32u), 1u), ~arg_0, any(global0.b)), -global0.d);
    global1 = array<Struct_1, 22>();
    global2 = array<vec4<u32>, 10>();
    var var_1 = _wgslsmith_f_op_f32(arg_1 * arg_1);
    return true;
}

fn func_1(arg_0: vec3<f32>, arg_1: u32) -> Struct_1 {
    var var_0 = vec2<bool>(all(vec4<bool>(all(!vec3<bool>(global0.b.x, global0.b.x, true)), true, any(vec3<bool>(false, true, global0.b.x)), false)), select(func_2(reverseBits(~global0.c), 911f), _wgslsmith_mult_i32(-u_input.d.x, max(46616i, 12634i)) > firstLeadingBit(-2147483647i), any(vec4<bool>(global0.b.x, true, any(vec4<bool>(false, true, true, false)), global0.b.x))));
    var_0 = vec2<bool>(false, false);
    var_0 = !select(global0.b, global0.b, func_2(global0.c, _wgslsmith_f_op_f32(f32(-1f) * -426f)));
    var var_1 = -abs(global0.a.x);
    let var_2 = arg_0.x;
    return Struct_1(select(~abs(vec4<i32>(global0.d.x, -2147483647i, 16877i, 1i)) ^ ~vec4<i32>(u_input.d.x, u_input.d.x, -2147483647i, global0.a.x), global3[_wgslsmith_index_u32(arg_1, 22u)], select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), !var_0.x), !vec4<bool>(false, false, var_0.x, true), var_0.x)), !vec2<bool>(true, global0.b.x), vec2<u32>(_wgslsmith_sub_u32(select(30695u << (global0.c.x % 32u), global0.c.x, true), 1u), ~global0.c.x), ~global0.d);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -2147483647i;
    let var_1 = func_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-775f, 552f, -1188f)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-219f, 593f, 1014f))))) * _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-1184f * 1000f), _wgslsmith_f_op_f32(sign(494f)), _wgslsmith_f_op_f32(356f - 1642f)), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, -1000f, -628f)))))), ~77276u);
    let var_2 = var_1;
    var var_3 = _wgslsmith_sub_i32(-65970i, i32(-1i) * -var_2.a.x);
    let var_4 = 606f;
    let x = u_input.a;
    s_output = StorageBuffer(-(~(i32(-1i) * -var_2.d.x)), ~3440u & func_1(vec3<f32>(-1147f, _wgslsmith_f_op_f32(step(-234f, var_4)), -1108f), firstTrailingBit(firstTrailingBit(var_1.c.x))).c.x, -1308f, countOneBits(abs(_wgslsmith_sub_i32(u_input.e.x, 12902i)) | func_1(vec3<f32>(-1000f, -497f, var_4), 84299u).a.x));
}


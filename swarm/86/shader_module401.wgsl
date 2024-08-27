struct Struct_1 {
    a: i32,
    b: vec4<i32>,
    c: i32,
    d: vec2<f32>,
    e: bool,
}

struct Struct_2 {
    a: u32,
    b: vec3<i32>,
    c: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: Struct_2,
    d: Struct_1,
}

struct Struct_4 {
    a: vec4<u32>,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 8>;

var<private> global1: f32;

var<private> global2: Struct_1 = Struct_1(-36750i, vec4<i32>(-16171i, i32(-2147483648), i32(-2147483648), -12025i), 21422i, vec2<f32>(-683f, 1000f), false);

var<private> global3: array<u32, 14> = array<u32, 14>(0u, 24135u, 29284u, 26036u, 1u, 1633u, 1u, 0u, 0u, 1u, 4294967295u, 42956u, 4294967295u, 1u);

var<private> global4: array<u32, 22> = array<u32, 22>(4294967295u, 0u, 24435u, 28705u, 0u, 3012u, 0u, 1u, 1u, 0u, 25903u, 1u, 1u, 30926u, 10206u, 1u, 1u, 0u, 106423u, 1u, 81531u, 47895u);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_4) -> bool {
    global4 = array<u32, 22>();
    var var_0 = arg_0;
    var var_1 = _wgslsmith_add_i32(-_wgslsmith_mult_i32(abs(abs(-1i)), select(u_input.b, var_0.c.b.x, var_0.c.e)), select(_wgslsmith_add_i32(var_0.b.x & 0i, -arg_0.b.x), _wgslsmith_clamp_i32(-24069i ^ var_0.c.b.x, 69769i, i32(-1i) * -40195i), false) | firstLeadingBit(-_wgslsmith_clamp_i32(var_0.b.x, -1i, -2147483647i)));
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(465f, 494f, arg_0.c.d.x), vec3<f32>(1360f, -217f, arg_0.c.d.x), arg_0.c.e)))))));
    let var_3 = arg_0.c.b.xzw;
    return !global2.e;
}

fn func_2(arg_0: Struct_2, arg_1: vec4<f32>, arg_2: Struct_1) -> Struct_1 {
    global4 = array<u32, 22>();
    var var_0 = global3[_wgslsmith_index_u32(~u_input.c.x, 14u)] & 1u;
    var_0 = ~(~1u);
    let var_1 = vec3<bool>((arg_2.c >> (0u % 32u)) != arg_0.b.x, !any(select(vec4<bool>(arg_0.c.e, false, false, arg_0.c.e), !vec4<bool>(arg_2.e, true, true, arg_2.e), vec4<bool>(arg_0.c.e, false, false, true))), func_3(arg_0, Struct_4(vec4<u32>(22314u & arg_0.a, _wgslsmith_dot_vec4_u32(u_input.c, u_input.c), 103598u >> (global3[_wgslsmith_index_u32(38491u, 14u)] % 32u), _wgslsmith_mult_u32(4294967295u, global4[_wgslsmith_index_u32(arg_0.a, 22u)])), select(vec3<bool>(arg_0.c.e, false, false), !vec3<bool>(false, global2.e, true), global2.e))));
    let var_2 = arg_2.b.xwy;
    return arg_0.c;
}

fn func_4(arg_0: i32, arg_1: vec2<u32>, arg_2: Struct_1, arg_3: bool) -> Struct_4 {
    var var_0 = arg_2;
    var var_1 = arg_2.d.x;
    let var_2 = firstTrailingBit(~(select(~u_input.c, u_input.c, global2.e) >> ((vec4<u32>(1u, global4[_wgslsmith_index_u32(1u, 22u)], 36989u, 15521u) | ~vec4<u32>(global4[_wgslsmith_index_u32(arg_1.x, 22u)], global4[_wgslsmith_index_u32(arg_1.x, 22u)], arg_1.x, 4294967295u)) % vec4<u32>(32u))));
    let var_3 = vec4<i32>(_wgslsmith_sub_i32(abs(-15159i), firstTrailingBit(max(select(global2.b.x, u_input.b, true), ~0i))), -2147483647i, arg_2.b.x, 19898i);
    var var_4 = Struct_4(vec4<u32>(0u, ~(global4[_wgslsmith_index_u32(firstLeadingBit(1u), 22u)] | ~1u), ~(~u_input.d), ~_wgslsmith_add_u32(~u_input.a, ~6140u)), !select(select(select(vec3<bool>(arg_3, true, true), vec3<bool>(arg_2.e, arg_3, true), false), vec3<bool>(var_0.e, var_0.e, false), any(vec2<bool>(arg_3, false))), select(select(vec3<bool>(false, false, false), vec3<bool>(false, arg_2.e, true), false), !vec3<bool>(true, global2.e, false), vec3<bool>(true, true, true)), !select(vec3<bool>(false, false, arg_3), vec3<bool>(false, true, global2.e), vec3<bool>(arg_3, true, true))));
    return Struct_4(abs(vec4<u32>(arg_1.x, abs(arg_1.x) ^ (global3[_wgslsmith_index_u32(var_4.a.x, 14u)] & var_2.x), _wgslsmith_mod_u32(_wgslsmith_sub_u32(global4[_wgslsmith_index_u32(u_input.d, 22u)], 38489u), _wgslsmith_mult_u32(30759u, 34506u)), firstLeadingBit(u_input.c.x) | (u_input.d & var_2.x))), vec3<bool>(-(~(-42194i)) == -countOneBits(global2.b.x), !(_wgslsmith_f_op_f32(-1000f - arg_2.d.x) < _wgslsmith_f_op_f32(312f + global2.d.x)), false));
}

fn func_5(arg_0: Struct_4) -> vec4<u32> {
    var var_0 = Struct_3(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(global2.d.x, global2.d.x))) - global2.d.x))), Struct_1(467i, _wgslsmith_mod_vec4_i32(select(vec4<i32>(2147483647i, global2.a, 2147483647i, global2.c), countOneBits(global2.b), !vec4<bool>(global2.e, arg_0.b.x, true, global2.e)), min(-global2.b, _wgslsmith_clamp_vec4_i32(vec4<i32>(1i, u_input.b, -1i, -35831i), vec4<i32>(global2.b.x, 68343i, global2.c, global2.c), vec4<i32>(-34414i, 1i, 1i, u_input.b)))), select(global2.b.x, global2.b.x, any(select(vec4<bool>(global2.e, true, arg_0.b.x, false), vec4<bool>(false, false, true, arg_0.b.x), true))), _wgslsmith_f_op_vec2_f32(global2.d * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(global2.d, vec2<f32>(global2.d.x, global2.d.x))) + func_2(Struct_2(global3[_wgslsmith_index_u32(arg_0.a.x, 14u)], global2.b.wyw, Struct_1(23285i, global2.b, 2147483647i, vec2<f32>(-737f, global2.d.x), arg_0.b.x)), vec4<f32>(global2.d.x, global2.d.x, global2.d.x, global2.d.x), Struct_1(-2147483647i, global2.b, -21560i, vec2<f32>(global2.d.x, global2.d.x), arg_0.b.x)).d)), arg_0.b.x), Struct_2(global3[_wgslsmith_index_u32(~(~(~90886u)), 14u)], -global2.b.zxw, Struct_1(i32(-1i) * -u_input.b, _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b, 2147483647i, global2.c, u_input.b), global2.b) ^ -vec4<i32>(2147483647i, 2147483647i, u_input.b, 1i), -reverseBits(-15941i), global2.d, all(arg_0.b.yz))), Struct_1(-1i, -abs(global2.b >> (vec4<u32>(4294967295u, u_input.d, u_input.d, global3[_wgslsmith_index_u32(u_input.c.x, 14u)]) % vec4<u32>(32u))), ~(i32(-1i) * -u_input.b), global2.d, !(!func_4(u_input.b, vec2<u32>(global3[_wgslsmith_index_u32(arg_0.a.x, 14u)], global3[_wgslsmith_index_u32(0u, 14u)]), Struct_1(u_input.b, vec4<i32>(18958i, global2.c, global2.b.x, -33588i), 2147483647i, vec2<f32>(global2.d.x, -935f), global2.e), global2.e).b.x)));
    let var_1 = -var_0.b.b;
    let var_2 = ~u_input.c.wx;
    let var_3 = var_0.c;
    global1 = _wgslsmith_f_op_f32(ceil(1f));
    return ~min(arg_0.a, _wgslsmith_mod_vec4_u32((u_input.c | vec4<u32>(global3[_wgslsmith_index_u32(6711u, 14u)], 17823u, 122074u, 21004u)) & ~u_input.c, vec4<u32>(firstTrailingBit(1u), ~65914u, ~global3[_wgslsmith_index_u32(var_3.a, 14u)], max(0u, 4294967295u))));
}

fn func_1() -> vec3<i32> {
    let var_0 = select(~_wgslsmith_div_vec4_u32(countOneBits(vec4<u32>(65175u, 0u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(u_input.d, 22u)], 14u)], 14u)], 14u)], 0u)), vec4<u32>(global4[_wgslsmith_index_u32(40933u, 22u)] << (0u % 32u), min(u_input.d, 4294967295u), ~1u, 4294967295u)), ~func_5(func_4(firstTrailingBit(2147483647i), firstTrailingBit(u_input.c.xx), func_2(Struct_2(global4[_wgslsmith_index_u32(49799u, 22u)], vec3<i32>(global2.b.x, global2.c, 47319i), Struct_1(-16729i, vec4<i32>(46272i, 29943i, global2.c, u_input.b), global2.c, vec2<f32>(1493f, 816f), global2.e)), vec4<f32>(global2.d.x, 1060f, global2.d.x, global2.d.x), Struct_1(u_input.b, vec4<i32>(u_input.b, u_input.b, global2.c, 19171i), u_input.b, vec2<f32>(368f, global2.d.x), global2.e)), true)), !(!(!any(vec3<bool>(false, global2.e, global2.e)))));
    let var_1 = 1168f;
    var var_2 = 2147483647i;
    let var_3 = vec3<bool>(!(global2.e | false), global2.e, all(vec3<bool>(false, global2.e, true)));
    let var_4 = func_4(_wgslsmith_mod_i32(-2147483647i, _wgslsmith_div_i32(firstTrailingBit(_wgslsmith_mod_i32(u_input.b, global2.c)), -firstTrailingBit(-72619i))), vec2<u32>(global3[_wgslsmith_index_u32(9529u, 14u)], ~14104u), Struct_1(~0i, global2.b, ~u_input.b, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(-329f, 1062f) * global2.d), vec2<f32>(_wgslsmith_f_op_f32(-global2.d.x), _wgslsmith_f_op_f32(var_1 + 1096f)), !func_2(Struct_2(0u, global2.b.zwy, Struct_1(12340i, vec4<i32>(global2.a, -5484i, -6294i, global2.c), 2147483647i, global2.d, global2.e)), vec4<f32>(109f, 1479f, 2054f, global2.d.x), Struct_1(u_input.b, global2.b, -1i, global2.d, true)).e)), var_3.x), !func_3(Struct_2(~global3[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(1u, 22u)], 14u)], _wgslsmith_div_vec3_i32(vec3<i32>(u_input.b, 28324i, -1i), global2.b.xzw), func_2(Struct_2(global3[_wgslsmith_index_u32(4294967295u, 14u)], global2.b.xwz, Struct_1(-8969i, global2.b, u_input.b, vec2<f32>(global2.d.x, 1000f), global2.e)), vec4<f32>(269f, 166f, var_1, -2039f), Struct_1(global2.a, vec4<i32>(21632i, global2.a, -11555i, 0i), -2452i, global2.d, false))), Struct_4(~u_input.c, var_3))).b.x;
    return (select(reverseBits(global2.b.www) & (vec3<i32>(global2.a, -16391i, 0i) ^ global2.b.xzw), global2.b.ywy, var_3) & (vec3<i32>(countOneBits(u_input.b), func_2(Struct_2(u_input.d, global2.b.wxx, Struct_1(10620i, global2.b, -33982i, global2.d, false)), vec4<f32>(var_1, var_1, -1000f, var_1), Struct_1(u_input.b, global2.b, global2.a, vec2<f32>(933f, var_1), true)).b.x, -11912i) & _wgslsmith_add_vec3_i32(vec3<i32>(global2.b.x, 0i, global2.b.x), global2.b.zxz & global2.b.xyz))) << (u_input.c.zzx % vec3<u32>(32u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(~0u, func_1(), Struct_1(_wgslsmith_div_i32(u_input.b >> (~global4[_wgslsmith_index_u32(u_input.a, 22u)] % 32u), 2147483647i), _wgslsmith_sub_vec4_i32(global2.b, global2.b), _wgslsmith_sub_i32(~u_input.b | 30806i, 1i), vec2<f32>(global2.d.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global2.d.x)))), true));
    var var_1 = ~firstTrailingBit(firstLeadingBit(global2.b));
    global0 = array<Struct_3, 8>();
    global3 = array<u32, 14>();
    let var_2 = _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(firstTrailingBit(vec2<u32>(~global4[_wgslsmith_index_u32(4294967295u, 22u)], global4[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(49574u, 14u)], 22u)])), vec2<u32>(~(u_input.a >> (4294967295u % 32u)), ~(~u_input.d))), var_0.a);
    var var_3 = Struct_2(_wgslsmith_dot_vec3_u32(select(vec3<u32>(~u_input.d, abs(14525u), _wgslsmith_add_u32(4294967295u, global4[_wgslsmith_index_u32(var_0.a, 22u)])), ~select(u_input.c.zwx, vec3<u32>(4294967295u, 72811u, 50173u), global2.e), !(false || var_0.c.e)), max(_wgslsmith_mult_vec3_u32(vec3<u32>(67322u, global4[_wgslsmith_index_u32(45766u, 22u)], 1u), abs(u_input.c.wyx)), ~(~u_input.c.xxx))), ~((vec3<i32>(-1i) * -vec3<i32>(1i, -12190i, -15686i)) >> (vec3<u32>(1u, countOneBits(22852u), countOneBits(var_0.a)) % vec3<u32>(32u))), Struct_1(~(-2147483647i), min(vec4<i32>(0i, var_1.x, -44173i, global2.c) | vec4<i32>(var_0.c.c, -2147483647i, u_input.b, u_input.b), firstLeadingBit(global2.b)), global2.c, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(global2.d.x, var_0.c.d.x))), vec2<f32>(global2.d.x, -838f)), true != (u_input.b != global2.c)));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(-func_2(Struct_2(5858u, global2.b.yxy, Struct_1(global2.b.x, var_0.c.b, u_input.b, var_0.c.d, global2.e)), vec4<f32>(-1200f, global2.d.x, global2.d.x, -1354f), Struct_1(var_0.b.x, vec4<i32>(1i, var_3.c.b.x, 0i, -12896i), 40717i, vec2<f32>(970f, 273f), global2.e)).a & reverseBits(0i), u_input.b, -var_1.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(var_0.c.d.x)))), var_3.c.d.x, var_0.c.d.x) + vec3<f32>(-640f, -1082f, global2.d.x)));
}


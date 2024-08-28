struct Struct_1 {
    a: i32,
    b: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: vec4<u32>,
    e: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<u32>,
    c: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: vec3<bool>,
    c: Struct_1,
    d: Struct_3,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 10>;

var<private> global1: vec2<u32> = vec2<u32>(0u, 62959u);

var<private> global2: array<Struct_1, 13> = array<Struct_1, 13>(Struct_1(1i, vec3<f32>(239f, 1059f, -1620f)), Struct_1(-31792i, vec3<f32>(-451f, -146f, 890f)), Struct_1(43619i, vec3<f32>(-446f, 1195f, 773f)), Struct_1(i32(-2147483648), vec3<f32>(697f, -1292f, -258f)), Struct_1(1i, vec3<f32>(1266f, 737f, -1000f)), Struct_1(0i, vec3<f32>(-183f, 626f, -459f)), Struct_1(2147483647i, vec3<f32>(781f, 1742f, 878f)), Struct_1(-23038i, vec3<f32>(463f, -1040f, 594f)), Struct_1(-34568i, vec3<f32>(-1000f, 851f, -393f)), Struct_1(8499i, vec3<f32>(1022f, 589f, 1345f)), Struct_1(-2604i, vec3<f32>(-975f, 969f, -1093f)), Struct_1(1i, vec3<f32>(907f, -581f, 898f)), Struct_1(0i, vec3<f32>(-1221f, -1173f, -155f)));

var<private> global3: array<i32, 19> = array<i32, 19>(12952i, 2147483647i, i32(-2147483648), 29698i, 0i, 0i, -29321i, 40245i, 26207i, 1i, 44866i, 2147483647i, 2147483647i, -1i, 2147483647i, i32(-2147483648), 58071i, -14996i, 15313i);

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_4, arg_1: vec3<i32>, arg_2: bool, arg_3: Struct_4) -> u32 {
    global1 = arg_0.d.b.zw;
    let var_0 = arg_0.d.c;
    let var_1 = arg_3.b.x;
    let var_2 = all(arg_0.b);
    var var_3 = -14868i;
    return _wgslsmith_mult_u32(abs(0u), _wgslsmith_dot_vec4_u32(vec4<u32>(10225u, 0u >> (1u % 32u), 17734u, global0[_wgslsmith_index_u32(1u, 10u)]), _wgslsmith_sub_vec4_u32(_wgslsmith_div_vec4_u32(~vec4<u32>(global0[_wgslsmith_index_u32(global1.x, 10u)], 4294967295u, global0[_wgslsmith_index_u32(arg_3.a.d.x, 10u)], arg_3.d.b.x), abs(vec4<u32>(arg_0.a.d.x, global1.x, 46641u, 9567u))), arg_3.a.d)));
}

fn func_2(arg_0: vec3<i32>) -> Struct_4 {
    global1 = vec2<u32>(1u, 11607u ^ (_wgslsmith_div_u32(func_3(Struct_4(Struct_2(Struct_1(global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(28809u, 10u)], 19u)], vec3<f32>(-1296f, -1011f, 245f)), global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(57295u, 10u)], 13u)], global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 10u)], 13u)], vec4<u32>(0u, global1.x, 1u, 73477u), false), vec3<bool>(false, false, false), global2[_wgslsmith_index_u32(1u, 13u)], Struct_3(Struct_2(Struct_1(global3[_wgslsmith_index_u32(4294967295u, 19u)], vec3<f32>(695f, 1000f, -1000f)), global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 10u)], 13u)], Struct_1(arg_0.x, vec3<f32>(684f, -1000f, -1838f)), vec4<u32>(1u, 33151u, 1u, 64973u), true), vec4<u32>(1u, global0[_wgslsmith_index_u32(29307u, 10u)], 2199u, 4294967295u), global2[_wgslsmith_index_u32(0u, 13u)])), u_input.b.wwy, true, Struct_4(Struct_2(Struct_1(12728i, vec3<f32>(-1000f, -302f, -1191f)), Struct_1(arg_0.x, vec3<f32>(-399f, -513f, 1144f)), Struct_1(58243i, vec3<f32>(-403f, -909f, 1263f)), vec4<u32>(global0[_wgslsmith_index_u32(global1.x, 10u)], 30845u, global1.x, 1898u), false), vec3<bool>(true, true, true), Struct_1(-7803i, vec3<f32>(-290f, -1038f, -1206f)), Struct_3(Struct_2(Struct_1(global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 10u)], 19u)], vec3<f32>(1097f, 361f, 1616f)), global2[_wgslsmith_index_u32(1u, 13u)], Struct_1(global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 10u)], 19u)], vec3<f32>(-205f, -345f, -192f)), vec4<u32>(64085u, 30028u, 0u, 0u), false), vec4<u32>(93573u, global1.x, global1.x, global1.x), Struct_1(u_input.a.x, vec3<f32>(554f, -599f, 1000f))))), ~global0[_wgslsmith_index_u32(global1.x, 10u)]) ^ global1.x));
    var var_0 = _wgslsmith_clamp_vec3_u32(~(~abs(_wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, global0[_wgslsmith_index_u32(6550u, 10u)], global0[_wgslsmith_index_u32(1u, 10u)]), vec3<u32>(global1.x, global0[_wgslsmith_index_u32(1u, 10u)], 4674u)))), ~_wgslsmith_add_vec3_u32(vec3<u32>(_wgslsmith_mult_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global1.x, 10u)], 10u)], global1.x), select(4294967295u, global1.x, false), ~global1.x), _wgslsmith_add_vec3_u32(min(vec3<u32>(global1.x, 0u, 54633u), vec3<u32>(global1.x, global1.x, global0[_wgslsmith_index_u32(4294967295u, 10u)])), ~vec3<u32>(global1.x, global1.x, 18878u))), ~max(vec3<u32>(func_3(Struct_4(Struct_2(Struct_1(arg_0.x, vec3<f32>(575f, -292f, -1384f)), Struct_1(global3[_wgslsmith_index_u32(global1.x, 19u)], vec3<f32>(-287f, -1893f, -291f)), Struct_1(-1i, vec3<f32>(-413f, -1547f, 1000f)), vec4<u32>(0u, 49294u, 5579u, 37955u), false), vec3<bool>(false, false, true), Struct_1(arg_0.x, vec3<f32>(-358f, -651f, 592f)), Struct_3(Struct_2(global2[_wgslsmith_index_u32(3350u, 13u)], global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(28252u, 10u)], 13u)], Struct_1(-1i, vec3<f32>(613f, -1397f, 156f)), vec4<u32>(6314u, 1754u, 1u, global0[_wgslsmith_index_u32(global1.x, 10u)]), false), vec4<u32>(44202u, 4294967295u, 0u, 112496u), global2[_wgslsmith_index_u32(1u, 13u)])), arg_0, true, Struct_4(Struct_2(global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 10u)], 13u)], Struct_1(11393i, vec3<f32>(1874f, 411f, -254f)), Struct_1(arg_0.x, vec3<f32>(1314f, -497f, -155f)), vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(27805u, 10u)], 10u)], global0[_wgslsmith_index_u32(29830u, 10u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global1.x, 10u)], 10u)], 12153u), false), vec3<bool>(true, true, false), global2[_wgslsmith_index_u32(17477u, 13u)], Struct_3(Struct_2(Struct_1(2147483647i, vec3<f32>(288f, -985f, -746f)), global2[_wgslsmith_index_u32(4294967295u, 13u)], Struct_1(u_input.b.x, vec3<f32>(156f, -451f, 301f)), vec4<u32>(global0[_wgslsmith_index_u32(26481u, 10u)], 1u, 4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(26461u, 10u)], 10u)]), false), vec4<u32>(1u, 6250u, global0[_wgslsmith_index_u32(global1.x, 10u)], global0[_wgslsmith_index_u32(global1.x, 10u)]), global2[_wgslsmith_index_u32(4294967295u, 13u)]))), global0[_wgslsmith_index_u32(global1.x, 10u)], ~0u), ~vec3<u32>(0u, 4294967295u, 7590u)));
    var var_1 = vec2<bool>(!any(vec4<bool>(true, true, true, true)), true);
    var var_2 = !(!vec2<bool>(any(!vec3<bool>(false, var_1.x, true)), false));
    let var_3 = !(!(!(!vec4<bool>(false, var_2.x, var_1.x, var_1.x))));
    return Struct_4(Struct_2(Struct_1(_wgslsmith_clamp_i32(-14648i, _wgslsmith_sub_i32(u_input.a.x, 49295i), arg_0.x >> (0u % 32u)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-305f, -337f, -213f), vec3<f32>(901f, 2466f, 1399f))) - vec3<f32>(239f, 2274f, 718f))), Struct_1(u_input.a.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-2507f, -705f, 129f) - vec3<f32>(1271f, 1563f, 708f)))), Struct_1(_wgslsmith_mult_i32(arg_0.x, 25545i) << (~global0[_wgslsmith_index_u32(13054u, 10u)] % 32u), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(f32(-1f) * -370f), -1062f)), vec4<u32>(global0[_wgslsmith_index_u32(4294967295u, 10u)], global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, global1.x, var_0.x, 1u), vec4<u32>(73858u, global1.x, global1.x, global0[_wgslsmith_index_u32(var_0.x, 10u)])), 10u)], ~4294967295u, 45754u), var_1.x), vec3<bool>(var_1.x, !all(vec2<bool>(true, var_2.x)), select((var_2.x && var_1.x) || (global1.x > 4294967295u), all(var_3) && all(vec2<bool>(true, var_1.x)), var_2.x)), global2[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_div_u32(firstTrailingBit(global1.x), ~abs(31540u))), 13u)], Struct_3(Struct_2(global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u & abs(var_0.x), 10u)], 13u)], global2[_wgslsmith_index_u32(var_0.x, 13u)], Struct_1(u_input.a.x, _wgslsmith_f_op_vec3_f32(vec3<f32>(1057f, -640f, -302f) + vec3<f32>(-1000f, 1669f, 1000f))), countOneBits(vec4<u32>(global0[_wgslsmith_index_u32(4294967295u, 10u)], 4294967295u, 41851u, var_0.x)), var_2.x & any(var_3.zy)), ~(~abs(vec4<u32>(var_0.x, global1.x, 46691u, var_0.x))), global2[_wgslsmith_index_u32(var_0.x, 13u)]));
}

fn func_1() -> Struct_2 {
    let var_0 = global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(~_wgslsmith_mod_u32(8332u, ~_wgslsmith_dot_vec2_u32(vec2<u32>(61952u, global0[_wgslsmith_index_u32(13834u, 10u)]), vec2<u32>(global0[_wgslsmith_index_u32(global1.x, 10u)], global0[_wgslsmith_index_u32(45684u, 10u)]))), ~firstTrailingBit(~1u)), 19u)];
    var var_1 = func_2(~select(_wgslsmith_mod_vec3_i32(-vec3<i32>(7780i, u_input.a.x, 28694i), -u_input.b.wzy), -vec3<i32>(-43248i, u_input.a.x, 2147483647i) << ((vec3<u32>(1u, 4294967295u, global1.x) & vec3<u32>(33655u, 4294967295u, 1u)) % vec3<u32>(32u)), true));
    let var_2 = _wgslsmith_sub_vec4_u32(vec4<u32>(0u, ~global1.x, ~4975u, ~_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(var_1.d.a.d.zww, var_1.d.b.yyz), reverseBits(var_1.d.a.d.zyw))), var_1.d.a.d);
    global2 = array<Struct_1, 13>();
    let var_3 = func_2(~vec3<i32>(func_2(select(u_input.b.zyz, u_input.b.wxx, false)).a.b.a, u_input.b.x, -var_1.c.a ^ 2147483647i)).d.a;
    return func_2(~vec3<i32>(var_1.d.a.c.a, firstTrailingBit(var_3.a.a) << (global0[_wgslsmith_index_u32(0u, 10u)] % 32u), var_3.b.a | (u_input.a.x ^ var_1.a.b.a))).a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1139f)));
    global1 = ~(~(reverseBits(vec2<u32>(75782u, global0[_wgslsmith_index_u32(0u, 10u)]) & vec2<u32>(74321u, 9804u)) & ~_wgslsmith_sub_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(4294967295u, 10u)], 1u), vec2<u32>(11343u, global0[_wgslsmith_index_u32(54782u, 10u)]))));
    global0 = array<u32, 10>();
    let var_1 = Struct_3(func_1(), vec4<u32>(0u, ~_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 10u)], 10u)], global0[_wgslsmith_index_u32(32213u, 10u)]), vec2<u32>(74787u, 4294967295u), vec2<u32>(global0[_wgslsmith_index_u32(52455u, 10u)], global1.x)), abs(vec2<u32>(global0[_wgslsmith_index_u32(1u, 10u)], global1.x))), global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~global1.x, 10u)] & 34085u, 10u)], firstTrailingBit(113098u)), global2[_wgslsmith_index_u32(max(global1.x, ~(~abs(global0[_wgslsmith_index_u32(global1.x, 10u)]))), 13u)]);
    var_0 = var_1.c.b.x;
    let var_2 = vec4<i32>(~(~(select(var_1.c.a, u_input.a.x, var_1.a.e) ^ -12894i)), countOneBits(-func_2(min(vec3<i32>(u_input.b.x, u_input.b.x, global3[_wgslsmith_index_u32(34257u, 19u)]), vec3<i32>(global3[_wgslsmith_index_u32(77104u, 19u)], 39285i, var_1.a.a.a))).d.c.a), u_input.b.x, _wgslsmith_div_i32(534i, 3047i));
    var var_3 = vec3<i32>(global3[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(44289u, global0[_wgslsmith_index_u32(global1.x << (4294967295u % 32u), 10u)], global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(37527u, global1.x), var_1.b.xw), 10u)]), var_1.a.d.wwx), 19u)], var_1.c.a << (var_1.a.d.x % 32u), ~countOneBits(firstLeadingBit(_wgslsmith_div_i32(2147483647i, -1i))));
    var var_4 = _wgslsmith_f_op_vec2_f32(var_1.a.c.b.xz - _wgslsmith_f_op_vec2_f32(var_1.a.c.b.zz * vec2<f32>(func_1().a.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(529f)) - -280f))));
    var_3 = var_2.zwy;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x, var_1.b.xz, -2147483647i);
}


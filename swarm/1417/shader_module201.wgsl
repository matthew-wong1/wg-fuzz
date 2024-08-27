struct Struct_1 {
    a: f32,
    b: i32,
    c: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: u32,
    d: bool,
}

struct Struct_3 {
    a: u32,
    b: vec4<u32>,
}

struct Struct_4 {
    a: vec3<f32>,
    b: Struct_1,
    c: Struct_2,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec2<i32>,
    d: i32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(-1388f, -1i, vec3<i32>(0i, 2147483647i, -11117i));

var<private> global1: Struct_3;

var<private> global2: array<f32, 1> = array<f32, 1>(1111f);

var<private> global3: array<Struct_4, 8> = array<Struct_4, 8>(Struct_4(vec3<f32>(-692f, 590f, 1130f), Struct_1(-1000f, 4828i, vec3<i32>(1i, -1i, -11508i)), Struct_2(Struct_1(111f, 2147483647i, vec3<i32>(10062i, -72639i, 27399i)), true, 1u, false), vec2<u32>(1u, 0u)), Struct_4(vec3<f32>(1112f, -497f, 1000f), Struct_1(449f, -26329i, vec3<i32>(-1i, 66021i, 4405i)), Struct_2(Struct_1(-967f, -75631i, vec3<i32>(-22674i, 47296i, -16263i)), false, 1u, false), vec2<u32>(4294967295u, 4294967295u)), Struct_4(vec3<f32>(-838f, -458f, -576f), Struct_1(545f, 0i, vec3<i32>(-6059i, 2147483647i, 5160i)), Struct_2(Struct_1(-893f, -37376i, vec3<i32>(33652i, -47220i, 0i)), false, 1u, true), vec2<u32>(4294967295u, 1u)), Struct_4(vec3<f32>(1156f, 1106f, 1616f), Struct_1(1034f, 20024i, vec3<i32>(i32(-2147483648), -56142i, -31520i)), Struct_2(Struct_1(-664f, -34115i, vec3<i32>(-26699i, -19827i, 22085i)), false, 73458u, true), vec2<u32>(0u, 0u)), Struct_4(vec3<f32>(-3405f, -947f, 480f), Struct_1(-1000f, -1i, vec3<i32>(10492i, 17656i, 1i)), Struct_2(Struct_1(-588f, -80889i, vec3<i32>(-1i, 57155i, 1i)), true, 0u, false), vec2<u32>(13394u, 4294967295u)), Struct_4(vec3<f32>(1236f, 986f, 171f), Struct_1(-476f, 7839i, vec3<i32>(0i, 1i, 2147483647i)), Struct_2(Struct_1(-396f, 2147483647i, vec3<i32>(0i, -60293i, -58975i)), false, 4294967295u, false), vec2<u32>(25690u, 718u)), Struct_4(vec3<f32>(909f, -1000f, 282f), Struct_1(-192f, 23046i, vec3<i32>(14842i, 39475i, 0i)), Struct_2(Struct_1(-809f, -16521i, vec3<i32>(2147483647i, 19978i, i32(-2147483648))), true, 17488u, false), vec2<u32>(2647u, 10578u)), Struct_4(vec3<f32>(-655f, -230f, -711f), Struct_1(-471f, i32(-2147483648), vec3<i32>(-1i, 3568i, 2147483647i)), Struct_2(Struct_1(1104f, 2147483647i, vec3<i32>(0i, 2925i, -14485i)), false, 63021u, true), vec2<u32>(40609u, 4294967295u)));

var<private> global4: Struct_1;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: u32) -> i32 {
    var var_0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(5163u, 1u)]))) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(190f, 1097f))))), global0.c.x, global4.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(1619f))))) < global4.a, _wgslsmith_mod_u32(~abs(abs(19203u)), global1.b.x), !(!(global4.a <= global2[_wgslsmith_index_u32(arg_0 | 9111u, 1u)])));
    global3 = array<Struct_4, 8>();
    var var_1 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1797f * 1397f)), _wgslsmith_sub_i32(global4.b >> (1995u % 32u), _wgslsmith_dot_vec4_i32(u_input.e << (global1.b % vec4<u32>(32u)), vec4<i32>(global0.c.x, global4.c.x, 9913i, u_input.e.x))), global4.c), true, ~_wgslsmith_div_u32(firstLeadingBit(~var_0.c), ~arg_0), var_0.d);
    var_1 = Struct_2(Struct_1(1077f, 1i, ~vec3<i32>(var_0.a.c.x, global4.b, var_0.a.b)), true, 0u, all(!(!vec3<bool>(false, false, var_1.b))));
    global0 = var_1.a;
    return global0.c.x;
}

fn func_4(arg_0: vec4<i32>) -> f32 {
    global3 = array<Struct_4, 8>();
    let var_0 = arg_0.zzx;
    var var_1 = Struct_1(_wgslsmith_f_op_f32(floor(-684f)), var_0.x ^ _wgslsmith_dot_vec4_i32(u_input.e, -arg_0), firstLeadingBit(arg_0.zwx));
    global1 = Struct_3(global1.a, global1.b);
    var var_2 = Struct_1(_wgslsmith_f_op_f32(floor(global0.a)), arg_0.x, ~_wgslsmith_sub_vec3_i32(_wgslsmith_clamp_vec3_i32(~global4.c, abs(vec3<i32>(0i, global4.b, -1i)), vec3<i32>(global0.c.x, -1i, -16102i)), firstLeadingBit(min(vec3<i32>(global4.b, 0i, var_1.b), global4.c))));
    return var_1.a;
}

fn func_2() -> Struct_4 {
    global0 = Struct_1(_wgslsmith_f_op_f32(func_4(vec4<i32>(~abs(-10175i), (global4.c.x >> (global1.a % 32u)) ^ -33834i, max(7191i, -10223i) | global4.c.x, func_3(1u)))), ~(~_wgslsmith_add_i32(1i, _wgslsmith_clamp_i32(50518i, 4055i, u_input.d))), select(_wgslsmith_clamp_vec3_i32(global4.c, u_input.a, vec3<i32>(-global4.c.x, countOneBits(-2147483647i), -1i)), global0.c, true));
    global0 = Struct_1(global0.a, -29673i, -u_input.a);
    var var_0 = !any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, true)), select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, false), true), false)));
    var var_1 = true;
    var_1 = select(all(select(select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), true), select(select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, false)), vec4<bool>(true, false, false, false), select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, false), true)), any(select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, false))))), all(vec2<bool>((global0.a < global0.a) | true, all(vec2<bool>(true, true)))), false);
    return Struct_4(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(134f, -609f, global2[_wgslsmith_index_u32(0u, 1u)]), vec3<f32>(279f, global4.a, 443f)) - _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(global0.a, 1111f, -1000f), vec3<f32>(201f, 696f, global2[_wgslsmith_index_u32(global1.b.x, 1u)])))))))), Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a) + -402f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global4.a))))), -32947i, vec3<i32>(-1i, -global4.b, global0.c.x) >> (_wgslsmith_add_vec3_u32(vec3<u32>(12813u, global1.b.x, 4294967295u), global1.b.wyw) % vec3<u32>(32u))), Struct_2(Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(global1.b.x, 1u)]), global2[_wgslsmith_index_u32(~global1.b.x, 1u)])), _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(global0.b, u_input.a.x, 24790i, global0.b), vec4<i32>(12446i, 1i, global0.b, global0.c.x)), -u_input.e), vec3<i32>(-global4.c.x, _wgslsmith_mult_i32(0i, -53928i), countOneBits(global4.c.x))), true, _wgslsmith_dot_vec4_u32(select(~global1.b, vec4<u32>(global1.b.x, 1u, global1.b.x, 45276u), true), abs(~global1.b)), !(true & any(vec3<bool>(false, false, true)))), global1.b.zw);
}

fn func_1() -> Struct_1 {
    var var_0 = func_2();
    let var_1 = select(vec4<bool>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-558f)), -365f) >= var_0.c.a.a, !any(select(vec4<bool>(true, false, true, var_0.c.b), vec4<bool>(true, true, true, var_0.c.b), true)), all(select(select(vec2<bool>(true, false), vec2<bool>(true, var_0.c.d), true), select(vec2<bool>(false, var_0.c.d), vec2<bool>(var_0.c.b, false), var_0.c.d), var_0.c.d)), !(5001i >= -global4.b)), !select(!select(vec4<bool>(false, true, var_0.c.d, false), vec4<bool>(var_0.c.b, true, var_0.c.d, var_0.c.b), vec4<bool>(true, var_0.c.b, true, false)), select(select(vec4<bool>(var_0.c.b, var_0.c.b, var_0.c.d, true), vec4<bool>(var_0.c.d, false, false, var_0.c.d), true), vec4<bool>(false, true, false, var_0.c.d), !vec4<bool>(var_0.c.d, var_0.c.b, var_0.c.b, var_0.c.d)), true), !select(select(!vec4<bool>(var_0.c.b, false, var_0.c.d, var_0.c.b), !vec4<bool>(true, true, var_0.c.b, true), vec4<bool>(false, true, true, false)), vec4<bool>(true && var_0.c.d, all(vec3<bool>(true, false, var_0.c.d)), false, true), true));
    let var_2 = firstLeadingBit(~select(_wgslsmith_sub_vec4_u32(vec4<u32>(var_0.c.c, 9902u, var_0.d.x, 4800u), global1.b), select(~vec4<u32>(1u, var_0.d.x, 0u, 0u), _wgslsmith_div_vec4_u32(global1.b, vec4<u32>(global1.a, 4294967295u, 1u, var_0.d.x)), select(var_1, vec4<bool>(var_0.c.d, var_0.c.d, false, false), var_1.x)), select(any(var_1.zyx), all(var_1.wz), var_1.x | var_0.c.d)));
    let var_3 = ~34414u;
    let var_4 = ~global1.b;
    return var_0.c.a;
}

fn func_5(arg_0: Struct_1) -> Struct_4 {
    var var_0 = Struct_3(~_wgslsmith_div_u32(~(~global1.b.x), 37228u & _wgslsmith_mult_u32(global1.a, 1u)), ~(global1.b & ~(~global1.b)));
    var var_1 = _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global2[_wgslsmith_index_u32(~(~var_0.a), 1u)], _wgslsmith_div_f32(global4.a, arg_0.a), _wgslsmith_f_op_f32(-global4.a))));
    var var_2 = func_2().c;
    let var_3 = func_2().c;
    let var_4 = var_2.a.c.xy;
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<Struct_4, 8>();
    let var_0 = !(~(_wgslsmith_add_i32(u_input.b, u_input.c.x) & select(-34712i, 30651i, false)) > ~(i32(-1i) * -26491i));
    let var_1 = func_5(func_1());
    let var_2 = Struct_2(func_2().c.a, select(any(!(!vec2<bool>(var_0, var_1.c.d))), false, _wgslsmith_div_u32(global1.b.x, ~var_1.d.x) > firstTrailingBit(global1.a)), firstLeadingBit(~(~_wgslsmith_mod_u32(var_1.d.x, var_1.c.c))), false);
    let var_3 = vec2<bool>(var_1.c.a.b <= countOneBits(global4.c.x), var_0);
    var var_4 = vec3<i32>(~_wgslsmith_sub_i32(select(-40611i, -2147483647i, var_3.x), 2147483647i), 0i, firstTrailingBit(2147483647i) >> (var_1.c.c % 32u));
    var var_5 = ~(~(global1.a << (~var_1.c.c % 32u)));
    global1 = Struct_3(0u, vec4<u32>(global1.a, global1.b.x, 40187u, var_2.c));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(-2147483647i >> ((select(var_2.c, 0u, var_2.b) << (global1.b.x % 32u)) % 32u)));
}


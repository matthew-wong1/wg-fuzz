struct Struct_1 {
    a: vec3<u32>,
    b: vec4<bool>,
    c: vec2<u32>,
    d: f32,
    e: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: Struct_2 = Struct_2(Struct_1(vec3<u32>(4294967295u, 4294967295u, 0u), vec4<bool>(true, false, true, false), vec2<u32>(1u, 33138u), 1416f, vec4<bool>(false, false, false, true)), Struct_1(vec3<u32>(545u, 46512u, 4294967295u), vec4<bool>(true, true, true, true), vec2<u32>(67195u, 13362u), 221f, vec4<bool>(true, true, false, true)));

var<private> global2: array<vec4<bool>, 30> = array<vec4<bool>, 30>(vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, false));

var<private> global3: array<Struct_1, 28> = array<Struct_1, 28>(Struct_1(vec3<u32>(1u, 1u, 64611u), vec4<bool>(true, false, false, true), vec2<u32>(35030u, 1u), 812f, vec4<bool>(true, false, false, false)), Struct_1(vec3<u32>(49559u, 4294967295u, 4294967295u), vec4<bool>(false, true, true, false), vec2<u32>(82855u, 67074u), 141f, vec4<bool>(true, false, true, true)), Struct_1(vec3<u32>(1u, 1u, 58746u), vec4<bool>(true, true, true, false), vec2<u32>(48173u, 65063u), -296f, vec4<bool>(true, false, false, true)), Struct_1(vec3<u32>(4294967295u, 1u, 26532u), vec4<bool>(false, false, false, false), vec2<u32>(34660u, 1u), 933f, vec4<bool>(false, false, false, false)), Struct_1(vec3<u32>(30648u, 4294967295u, 60665u), vec4<bool>(true, false, true, false), vec2<u32>(0u, 4294967295u), -642f, vec4<bool>(true, false, false, true)), Struct_1(vec3<u32>(0u, 0u, 4294967295u), vec4<bool>(false, false, true, false), vec2<u32>(0u, 1u), 542f, vec4<bool>(true, false, false, true)), Struct_1(vec3<u32>(4131u, 15852u, 20940u), vec4<bool>(false, false, false, true), vec2<u32>(79198u, 1u), 254f, vec4<bool>(true, true, true, false)), Struct_1(vec3<u32>(4294967295u, 4294967295u, 95544u), vec4<bool>(true, false, false, false), vec2<u32>(4294967295u, 4294967295u), 1715f, vec4<bool>(true, true, true, true)), Struct_1(vec3<u32>(17255u, 13850u, 0u), vec4<bool>(false, true, true, false), vec2<u32>(4294967295u, 4294967295u), 1305f, vec4<bool>(true, false, false, false)), Struct_1(vec3<u32>(4294967295u, 17348u, 11535u), vec4<bool>(false, false, true, false), vec2<u32>(4294967295u, 1u), 458f, vec4<bool>(true, false, true, true)), Struct_1(vec3<u32>(0u, 24601u, 15588u), vec4<bool>(false, true, false, false), vec2<u32>(79607u, 1u), -529f, vec4<bool>(false, true, true, true)), Struct_1(vec3<u32>(4277u, 28691u, 1u), vec4<bool>(false, true, false, false), vec2<u32>(4294967295u, 4294967295u), -108f, vec4<bool>(false, true, false, false)), Struct_1(vec3<u32>(1u, 0u, 12384u), vec4<bool>(true, true, false, true), vec2<u32>(29472u, 0u), -777f, vec4<bool>(true, true, true, true)), Struct_1(vec3<u32>(32772u, 24014u, 43792u), vec4<bool>(false, false, true, true), vec2<u32>(1u, 4294967295u), 1878f, vec4<bool>(true, true, true, false)), Struct_1(vec3<u32>(111333u, 34511u, 44346u), vec4<bool>(false, true, true, false), vec2<u32>(62030u, 4294967295u), -276f, vec4<bool>(true, false, false, false)), Struct_1(vec3<u32>(1u, 1u, 52593u), vec4<bool>(true, false, false, false), vec2<u32>(68387u, 0u), -561f, vec4<bool>(true, true, false, false)), Struct_1(vec3<u32>(4294967295u, 1u, 4431u), vec4<bool>(false, false, true, true), vec2<u32>(0u, 57894u), 226f, vec4<bool>(false, true, false, false)), Struct_1(vec3<u32>(0u, 9726u, 4294967295u), vec4<bool>(false, true, false, false), vec2<u32>(0u, 0u), 123f, vec4<bool>(false, false, true, true)), Struct_1(vec3<u32>(0u, 1u, 15377u), vec4<bool>(true, true, true, false), vec2<u32>(12528u, 4294967295u), 377f, vec4<bool>(false, false, false, false)), Struct_1(vec3<u32>(10891u, 24085u, 29733u), vec4<bool>(true, false, true, true), vec2<u32>(1u, 1889u), 291f, vec4<bool>(false, true, false, false)), Struct_1(vec3<u32>(93617u, 11772u, 4294967295u), vec4<bool>(true, true, false, true), vec2<u32>(4294967295u, 4294967295u), -818f, vec4<bool>(false, false, false, true)), Struct_1(vec3<u32>(4294967295u, 0u, 2010u), vec4<bool>(false, false, false, false), vec2<u32>(1u, 49u), -382f, vec4<bool>(false, false, false, false)), Struct_1(vec3<u32>(42500u, 0u, 0u), vec4<bool>(false, true, false, true), vec2<u32>(0u, 1u), -1000f, vec4<bool>(false, true, false, true)), Struct_1(vec3<u32>(113924u, 4294967295u, 15038u), vec4<bool>(true, true, false, false), vec2<u32>(30718u, 4294967295u), -505f, vec4<bool>(false, true, true, false)), Struct_1(vec3<u32>(74906u, 0u, 24138u), vec4<bool>(true, true, true, false), vec2<u32>(13913u, 4294967295u), -1215f, vec4<bool>(false, true, true, false)), Struct_1(vec3<u32>(1u, 4294967295u, 81039u), vec4<bool>(false, false, true, false), vec2<u32>(14812u, 1u), 972f, vec4<bool>(true, false, true, true)), Struct_1(vec3<u32>(16299u, 1u, 70022u), vec4<bool>(false, true, false, true), vec2<u32>(21784u, 4294967295u), -1236f, vec4<bool>(false, false, false, false)), Struct_1(vec3<u32>(4294967295u, 83204u, 4294967295u), vec4<bool>(true, true, true, false), vec2<u32>(2291u, 3206u), 780f, vec4<bool>(true, false, true, true)));

var<private> global4: array<bool, 7> = array<bool, 7>(false, true, false, false, false, true, true);

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec4<bool>, arg_1: vec4<bool>, arg_2: vec2<u32>, arg_3: vec2<u32>) -> vec4<bool> {
    let var_0 = countOneBits(vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_mult_i32(-1i, -1i), 1i, 69991i, 0i), _wgslsmith_mod_vec4_i32(vec4<i32>(-50022i, 1i, 25042i, 0i), select(vec4<i32>(52854i, 0i, -2162i, -2147483647i), vec4<i32>(-1i, 0i, -25531i, -2147483647i), false))), _wgslsmith_clamp_i32(firstLeadingBit(~16664i), -16480i, max(i32(-1i) * -8395i, min(-41370i, 6140i)))));
    let var_1 = Struct_2(Struct_1(vec3<u32>(global1.b.a.x, _wgslsmith_dot_vec3_u32(~vec3<u32>(80115u, arg_3.x, global1.b.a.x), countOneBits(vec3<u32>(4294967295u, 1u, 40168u))), _wgslsmith_mult_u32(arg_3.x, ~arg_2.x)), vec4<bool>(!global4[_wgslsmith_index_u32(arg_2.x, 7u)], true, !(arg_0.x == true), true), ~_wgslsmith_mod_vec2_u32(arg_3, _wgslsmith_clamp_vec2_u32(arg_3, vec2<u32>(35138u, arg_3.x), arg_3)), global0.d, arg_0), Struct_1(vec3<u32>(_wgslsmith_add_u32(1u, 1u & arg_2.x), 0u, arg_2.x), vec4<bool>(arg_1.x, true, true, all(!global1.a.b.zxx)), ~arg_3 ^ arg_2, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -705f)), !vec4<bool>(global0.d <= global1.b.d, global1.a.e.x, false, any(arg_1.wz))));
    global4 = array<bool, 7>();
    global3 = array<Struct_1, 28>();
    let var_2 = firstLeadingBit(_wgslsmith_sub_i32(_wgslsmith_div_i32(2147483647i, var_0.x), var_0.x));
    return vec4<bool>(global1.a.a.x != firstLeadingBit(98274u), any(select(arg_0.wz, vec2<bool>(!global1.a.e.x, true), vec2<bool>(var_2 == var_2, true))), true, !any(vec3<bool>(any(global0.b.wwy), all(vec4<bool>(true, false, global1.b.b.x, true)), global1.a.b.x)));
}

fn func_2() -> Struct_2 {
    var var_0 = global1.a.d;
    var var_1 = global3[_wgslsmith_index_u32(~(~(~_wgslsmith_sub_u32(global1.a.c.x, global0.a.x << (9419u % 32u)))), 28u)];
    global4 = array<bool, 7>();
    let var_2 = Struct_2(Struct_1(_wgslsmith_div_vec3_u32(global1.a.a, global0.a), global0.b, ~(u_input.a.zx & abs(var_1.c)), _wgslsmith_f_op_f32(f32(-1f) * -203f), !func_3(!vec4<bool>(global4[_wgslsmith_index_u32(u_input.a.x, 7u)], true, var_1.e.x, false), !vec4<bool>(false, global4[_wgslsmith_index_u32(global1.b.a.x, 7u)], global1.a.b.x, false), u_input.a.yy, global0.a.zy)), Struct_1(select(var_1.a, vec3<u32>(u_input.a.x, 4294967295u >> (global1.a.a.x % 32u), 4294967295u), global4[_wgslsmith_index_u32(global0.a.x, 7u)]), var_1.b, global1.a.c, _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.d, global1.a.d) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(global0.d))))), select(!func_3(global1.a.b, global0.e, u_input.a.yy, var_1.a.yx), global2[_wgslsmith_index_u32(~(~u_input.a.x), 30u)], global0.b.x)));
    global4 = array<bool, 7>();
    return var_2;
}

fn func_4(arg_0: bool, arg_1: u32, arg_2: Struct_2, arg_3: vec3<i32>) -> u32 {
    let var_0 = arg_2;
    let var_1 = any(vec2<bool>(true, all(vec4<bool>(false, true, !var_0.b.e.x, false != global0.e.x))));
    global2 = array<vec4<bool>, 30>();
    return abs(~(_wgslsmith_mult_u32(56953u, firstLeadingBit(arg_1)) << (firstTrailingBit(arg_2.a.c.x) % 32u)));
}

fn func_1(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: bool) -> Struct_2 {
    var var_0 = min(~u_input.a, select(vec4<u32>(13398u, 1u, global0.c.x, u_input.a.x) ^ abs(vec4<u32>(96647u, 4294967295u, arg_1.x, arg_1.x)), ~u_input.a, !global1.a.b)) & vec4<u32>(firstTrailingBit(_wgslsmith_mult_u32(_wgslsmith_div_u32(u_input.a.x, 47989u), 4294967295u ^ global0.c.x)), ~(~_wgslsmith_mod_u32(arg_1.x, 1u)), 1u, ~(u_input.a.x | 48557u));
    global0 = global3[_wgslsmith_index_u32(~u_input.a.x << (arg_1.x % 32u), 28u)];
    var var_1 = global3[_wgslsmith_index_u32(func_4(_wgslsmith_dot_vec2_u32(abs(vec2<u32>(35210u, 12889u)), vec2<u32>(~22474u, ~arg_0.a.x)) <= 1u, global1.a.c.x, func_2(), vec3<i32>(-1i, 12262i >> (global0.c.x % 32u), 1i)), 28u)];
    global1 = func_2();
    var var_2 = func_2();
    return func_2();
}

fn func_5(arg_0: Struct_2, arg_1: Struct_2) -> bool {
    global4 = array<bool, 7>();
    let var_0 = func_1(func_1(Struct_1(_wgslsmith_sub_vec3_u32(u_input.a.zwy, _wgslsmith_clamp_vec3_u32(vec3<u32>(0u, 1u, 12154u), u_input.a.zyw, vec3<u32>(arg_0.a.a.x, u_input.a.x, 3966u))), !arg_1.b.e, vec2<u32>(reverseBits(u_input.a.x), 58868u), func_1(arg_0.a, vec4<u32>(global0.a.x, 0u, u_input.a.x, arg_0.a.c.x), true).a.d, func_3(select(global1.b.b, vec4<bool>(arg_0.a.b.x, false, arg_1.b.e.x, true), true), !vec4<bool>(true, arg_1.a.e.x, arg_1.b.b.x, true), vec2<u32>(1u, arg_1.a.c.x), arg_1.a.c)), u_input.a, func_2().a.b.x).b, _wgslsmith_div_vec4_u32(~(countOneBits(vec4<u32>(33394u, arg_0.b.a.x, arg_0.b.c.x, 26140u)) | (u_input.a ^ vec4<u32>(global1.b.c.x, global1.a.c.x, 24283u, global1.b.c.x))), vec4<u32>(~(~arg_1.b.c.x), arg_1.a.a.x, ~(~global1.a.c.x), _wgslsmith_add_u32(arg_1.a.a.x, _wgslsmith_mod_u32(global1.b.c.x, u_input.a.x)))), !(func_3(func_2().a.b, select(vec4<bool>(global4[_wgslsmith_index_u32(50225u, 7u)], true, false, true), vec4<bool>(true, arg_0.a.e.x, arg_1.b.b.x, global4[_wgslsmith_index_u32(58696u, 7u)]), global1.a.e), vec2<u32>(4294967295u, arg_0.b.a.x), arg_1.b.a.xx).x == !(!arg_1.b.b.x)));
    global3 = array<Struct_1, 28>();
    var var_1 = arg_1.a.c.x;
    var var_2 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(-795f, -465f)))))))));
    return any(!global0.b.zz) && var_0.b.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(~(~(~abs(vec3<u32>(0u, global0.a.x, 0u)))), !vec4<bool>(func_5(Struct_2(global3[_wgslsmith_index_u32(global0.a.x, 28u)], Struct_1(vec3<u32>(0u, 13364u, 0u), global0.e, global0.a.zz, 223f, vec4<bool>(false, global1.a.e.x, true, true))), func_1(global1.a, vec4<u32>(global0.c.x, 2402u, 1u, global0.a.x), global0.e.x)), false, true, false), u_input.a.xw, _wgslsmith_f_op_f32(global0.d + 211f), global1.b.b);
    global1 = func_1(Struct_1(select(global0.a, ~(~global0.a), select(select(global0.b.xxx, vec3<bool>(global0.e.x, false, global4[_wgslsmith_index_u32(u_input.a.x, 7u)]), true), global0.e.wwy, global4[_wgslsmith_index_u32(4458u << (global0.a.x % 32u), 7u)])), var_0.b, select(reverseBits(firstLeadingBit(vec2<u32>(4294967295u, global0.c.x))), _wgslsmith_mod_vec2_u32(abs(global0.c), vec2<u32>(global0.a.x, global0.a.x)), false), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-func_1(Struct_1(vec3<u32>(4294967295u, u_input.a.x, 69905u), vec4<bool>(false, false, global0.e.x, global4[_wgslsmith_index_u32(global0.a.x, 7u)]), var_0.a.zx, -1000f, vec4<bool>(global0.b.x, global0.e.x, false, global4[_wgslsmith_index_u32(4294967295u, 7u)])), u_input.a, true).b.d)), func_2().b.b), ~(~u_input.a), true);
    var var_1 = u_input.a.wxy;
    global2 = array<vec4<bool>, 30>();
    global0 = func_2().a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global1.a.d))) - _wgslsmith_f_op_f32(f32(-1f) * -1000f)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a.d)), -1369f, _wgslsmith_f_op_f32(-var_0.d), 244f) - _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-479f, _wgslsmith_f_op_f32(global1.a.d + 872f), _wgslsmith_div_f32(var_0.d, -433f), _wgslsmith_f_op_f32(1000f - global1.b.d))))), 41658i);
}


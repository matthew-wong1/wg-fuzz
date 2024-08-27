struct Struct_1 {
    a: vec3<u32>,
    b: vec2<u32>,
    c: i32,
    d: vec2<bool>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: bool,
    d: vec3<bool>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 15> = array<vec4<u32>, 15>(vec4<u32>(12402u, 1881u, 27629u, 1u), vec4<u32>(55914u, 18138u, 4294967295u, 23011u), vec4<u32>(50274u, 0u, 17796u, 13186u), vec4<u32>(3481u, 10048u, 4294967295u, 4294967295u), vec4<u32>(0u, 29403u, 1u, 0u), vec4<u32>(0u, 1u, 0u, 1u), vec4<u32>(0u, 17569u, 0u, 22375u), vec4<u32>(25913u, 1u, 4294967295u, 58318u), vec4<u32>(1u, 788u, 3483u, 4294967295u), vec4<u32>(1u, 0u, 43116u, 2768u), vec4<u32>(1u, 1u, 0u, 36611u), vec4<u32>(37364u, 8558u, 4294967295u, 0u), vec4<u32>(28320u, 103312u, 6198u, 36443u), vec4<u32>(0u, 36736u, 31060u, 7239u), vec4<u32>(0u, 4258u, 10885u, 0u));

var<private> global1: vec2<i32>;

var<private> global2: vec3<f32> = vec3<f32>(-375f, -2040f, 308f);

var<private> global3: array<Struct_2, 21> = array<Struct_2, 21>(Struct_2(vec3<u32>(0u, 1u, 38484u), Struct_1(vec3<u32>(4294967295u, 32079u, 5370u), vec2<u32>(0u, 4294967295u), 0i, vec2<bool>(false, false)), true, vec3<bool>(true, false, false), Struct_1(vec3<u32>(40544u, 0u, 1u), vec2<u32>(67087u, 1u), 1i, vec2<bool>(false, true))), Struct_2(vec3<u32>(0u, 63627u, 0u), Struct_1(vec3<u32>(5591u, 1u, 29086u), vec2<u32>(54823u, 1u), -8781i, vec2<bool>(true, false)), true, vec3<bool>(true, false, true), Struct_1(vec3<u32>(26506u, 1u, 4294967295u), vec2<u32>(6023u, 9824u), 2147483647i, vec2<bool>(true, false))), Struct_2(vec3<u32>(85121u, 31348u, 0u), Struct_1(vec3<u32>(0u, 27826u, 0u), vec2<u32>(0u, 4294967295u), -35471i, vec2<bool>(false, false)), false, vec3<bool>(true, false, true), Struct_1(vec3<u32>(0u, 10593u, 4294967295u), vec2<u32>(4294967295u, 50217u), 24392i, vec2<bool>(true, true))), Struct_2(vec3<u32>(1u, 23494u, 56098u), Struct_1(vec3<u32>(33705u, 47103u, 0u), vec2<u32>(55956u, 0u), 0i, vec2<bool>(true, false)), false, vec3<bool>(true, false, true), Struct_1(vec3<u32>(1u, 9617u, 0u), vec2<u32>(4294967295u, 4294967295u), 2147483647i, vec2<bool>(true, false))), Struct_2(vec3<u32>(21611u, 3877u, 1u), Struct_1(vec3<u32>(35039u, 42887u, 18955u), vec2<u32>(56334u, 1u), i32(-2147483648), vec2<bool>(true, true)), false, vec3<bool>(true, true, false), Struct_1(vec3<u32>(4294967295u, 0u, 0u), vec2<u32>(123916u, 3336u), 18575i, vec2<bool>(true, true))), Struct_2(vec3<u32>(39782u, 25531u, 0u), Struct_1(vec3<u32>(1u, 9306u, 0u), vec2<u32>(1u, 4294967295u), 13968i, vec2<bool>(false, true)), false, vec3<bool>(false, false, true), Struct_1(vec3<u32>(4294967295u, 0u, 1u), vec2<u32>(9422u, 23646u), -44583i, vec2<bool>(false, false))), Struct_2(vec3<u32>(4294967295u, 1u, 24618u), Struct_1(vec3<u32>(38284u, 0u, 55342u), vec2<u32>(4294967295u, 9899u), -12546i, vec2<bool>(false, true)), true, vec3<bool>(true, true, false), Struct_1(vec3<u32>(46106u, 30271u, 0u), vec2<u32>(4294967295u, 1u), 2147483647i, vec2<bool>(false, false))), Struct_2(vec3<u32>(36963u, 28360u, 3079u), Struct_1(vec3<u32>(0u, 0u, 6724u), vec2<u32>(1u, 22021u), 24178i, vec2<bool>(false, false)), false, vec3<bool>(false, true, false), Struct_1(vec3<u32>(1u, 56214u, 1u), vec2<u32>(4294967295u, 13082u), -14976i, vec2<bool>(false, false))), Struct_2(vec3<u32>(4294967295u, 4615u, 10669u), Struct_1(vec3<u32>(1u, 4294967295u, 94562u), vec2<u32>(76679u, 42870u), 7611i, vec2<bool>(false, false)), true, vec3<bool>(false, true, true), Struct_1(vec3<u32>(4294967295u, 4294967295u, 9057u), vec2<u32>(4294967295u, 1u), -1i, vec2<bool>(false, false))), Struct_2(vec3<u32>(31051u, 0u, 13010u), Struct_1(vec3<u32>(4294967295u, 56463u, 4294967295u), vec2<u32>(18427u, 19606u), 76273i, vec2<bool>(true, true)), true, vec3<bool>(true, true, true), Struct_1(vec3<u32>(125893u, 12077u, 27847u), vec2<u32>(1u, 0u), -1i, vec2<bool>(true, false))), Struct_2(vec3<u32>(45964u, 4294967295u, 3711u), Struct_1(vec3<u32>(0u, 35046u, 13894u), vec2<u32>(1730u, 69292u), i32(-2147483648), vec2<bool>(false, false)), true, vec3<bool>(true, false, false), Struct_1(vec3<u32>(55573u, 8097u, 30389u), vec2<u32>(12677u, 4341u), 0i, vec2<bool>(true, false))), Struct_2(vec3<u32>(4294967295u, 98641u, 10750u), Struct_1(vec3<u32>(1u, 17062u, 4294967295u), vec2<u32>(1u, 1u), -1i, vec2<bool>(true, false)), true, vec3<bool>(false, true, true), Struct_1(vec3<u32>(46724u, 4294967295u, 0u), vec2<u32>(1u, 12765u), i32(-2147483648), vec2<bool>(true, true))), Struct_2(vec3<u32>(5516u, 1u, 41795u), Struct_1(vec3<u32>(0u, 4294967295u, 5557u), vec2<u32>(0u, 56414u), 2147483647i, vec2<bool>(false, true)), true, vec3<bool>(true, true, true), Struct_1(vec3<u32>(0u, 4294967295u, 6051u), vec2<u32>(0u, 8072u), 63534i, vec2<bool>(false, true))), Struct_2(vec3<u32>(44522u, 0u, 1u), Struct_1(vec3<u32>(4294967295u, 44108u, 1u), vec2<u32>(20691u, 52772u), -1i, vec2<bool>(false, true)), true, vec3<bool>(false, false, true), Struct_1(vec3<u32>(0u, 1u, 4294967295u), vec2<u32>(1u, 0u), 0i, vec2<bool>(false, false))), Struct_2(vec3<u32>(4294967295u, 17695u, 4294967295u), Struct_1(vec3<u32>(0u, 1u, 0u), vec2<u32>(0u, 6432u), 0i, vec2<bool>(false, true)), false, vec3<bool>(false, false, true), Struct_1(vec3<u32>(91413u, 0u, 0u), vec2<u32>(4294967295u, 1u), 2147483647i, vec2<bool>(true, false))), Struct_2(vec3<u32>(42379u, 1u, 1u), Struct_1(vec3<u32>(1493u, 1u, 28724u), vec2<u32>(0u, 1u), 1i, vec2<bool>(true, false)), false, vec3<bool>(true, true, true), Struct_1(vec3<u32>(26375u, 4294967295u, 4294967295u), vec2<u32>(995u, 59948u), 13984i, vec2<bool>(false, true))), Struct_2(vec3<u32>(0u, 27897u, 4294967295u), Struct_1(vec3<u32>(7079u, 19210u, 4294967295u), vec2<u32>(1u, 15385u), 1i, vec2<bool>(true, true)), false, vec3<bool>(true, true, true), Struct_1(vec3<u32>(4294967295u, 0u, 4294967295u), vec2<u32>(4294967295u, 52169u), -1486i, vec2<bool>(true, true))), Struct_2(vec3<u32>(4294967295u, 6054u, 4294967295u), Struct_1(vec3<u32>(16306u, 20594u, 4294967295u), vec2<u32>(1u, 1u), 2147483647i, vec2<bool>(true, false)), true, vec3<bool>(true, false, true), Struct_1(vec3<u32>(0u, 24474u, 20732u), vec2<u32>(37908u, 1u), 1i, vec2<bool>(false, true))), Struct_2(vec3<u32>(1u, 1u, 0u), Struct_1(vec3<u32>(67999u, 4294967295u, 107023u), vec2<u32>(0u, 18549u), i32(-2147483648), vec2<bool>(true, false)), true, vec3<bool>(false, true, false), Struct_1(vec3<u32>(31341u, 4294967295u, 4294967295u), vec2<u32>(0u, 3064u), -16314i, vec2<bool>(true, true))), Struct_2(vec3<u32>(1u, 8687u, 4294967295u), Struct_1(vec3<u32>(1u, 11149u, 64761u), vec2<u32>(31187u, 8944u), 11183i, vec2<bool>(false, true)), false, vec3<bool>(true, false, false), Struct_1(vec3<u32>(36379u, 1u, 4294967295u), vec2<u32>(0u, 36283u), -8577i, vec2<bool>(true, false))), Struct_2(vec3<u32>(90575u, 1u, 4294967295u), Struct_1(vec3<u32>(60532u, 7517u, 0u), vec2<u32>(1u, 56831u), -1i, vec2<bool>(true, false)), false, vec3<bool>(true, false, true), Struct_1(vec3<u32>(22277u, 8628u, 16036u), vec2<u32>(47770u, 1u), -17905i, vec2<bool>(false, false))));

var<private> global4: array<vec3<f32>, 9>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: i32, arg_1: Struct_2, arg_2: vec2<bool>) -> vec2<i32> {
    global4 = array<vec3<f32>, 9>();
    let var_0 = Struct_1(vec3<u32>(1u, ~4834u, ~29156u), _wgslsmith_sub_vec2_u32(_wgslsmith_sub_vec2_u32(arg_1.b.b, vec2<u32>(0u, ~0u)), vec2<u32>(1u, ~_wgslsmith_sub_u32(40987u, arg_1.a.x))), -2147483647i & _wgslsmith_add_i32(_wgslsmith_clamp_i32(arg_0, -76348i, ~(-2147483647i)), 2147483647i), !(!arg_1.e.d));
    let var_1 = true | (-198f <= global2.x);
    global2 = _wgslsmith_f_op_vec3_f32(-global4[_wgslsmith_index_u32(u_input.b, 9u)]);
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global2.x, global2.x, false && (arg_0 == -25394i))));
    return vec2<i32>(arg_0, u_input.c.x);
}

fn func_2(arg_0: vec2<i32>) -> i32 {
    global4 = array<vec3<f32>, 9>();
    global1 = func_3(-global1.x, global3[_wgslsmith_index_u32(0u, 21u)], !(!select(vec2<bool>(false, true), vec2<bool>(true, true), true)));
    let var_0 = min(vec3<u32>(4294967295u << (u_input.a.x % 32u), firstLeadingBit(firstLeadingBit(1u)), _wgslsmith_mod_u32(~4294967295u, 4294967295u)) & ~(~(~vec3<u32>(u_input.a.x, u_input.b, u_input.b))), vec3<u32>(_wgslsmith_add_u32(u_input.b, ~u_input.a.x) ^ _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x), vec2<u32>(u_input.a.x, 4294967295u)), vec2<u32>(4294967295u, u_input.a.x)), u_input.b, u_input.b));
    var var_1 = vec2<i32>(global1.x, ~(-1i << ((~0u << (max(var_0.x, u_input.b) % 32u)) % 32u)));
    let var_2 = Struct_1(_wgslsmith_sub_vec3_u32(_wgslsmith_clamp_vec3_u32(_wgslsmith_mult_vec3_u32(u_input.a.wxz, vec3<u32>(34869u, 1585u, 11499u)), vec3<u32>(u_input.b, 0u, 6104u), ~var_0), ~(~u_input.a.wwy)) & ~_wgslsmith_clamp_vec3_u32(u_input.a.xwx, u_input.a.wxy, ~u_input.a.zzz), ~max(_wgslsmith_div_vec2_u32(~vec2<u32>(u_input.a.x, 0u), vec2<u32>(43366u, 7749u)), firstTrailingBit(var_0.xx)), -2620i, vec2<bool>(true, any(!select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true)))));
    return abs(u_input.c.x);
}

fn func_4(arg_0: u32, arg_1: bool, arg_2: Struct_2, arg_3: Struct_1) -> vec3<bool> {
    let var_0 = Struct_1(~(~vec3<u32>(arg_2.a.x << (arg_2.a.x % 32u), firstLeadingBit(1u), _wgslsmith_mod_u32(u_input.b, 38748u))), min(_wgslsmith_clamp_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(49532u, arg_3.b.x), arg_2.b.a.zz) << (vec2<u32>(6733u, 65908u) % vec2<u32>(32u)), arg_2.b.a.xz << (vec2<u32>(12044u, 13766u) % vec2<u32>(32u)), ~min(arg_3.a.xy, u_input.a.wz)), _wgslsmith_mod_vec2_u32(arg_3.b, arg_2.a.xy)), -reverseBits(global1.x), select(!vec2<bool>(arg_2.b.a.x >= 0u, any(arg_2.d)), !(!arg_2.d.yz), any(arg_3.d) & false));
    global4 = array<vec3<f32>, 9>();
    let var_1 = global2.x;
    var var_2 = min(u_input.c.yy, -vec2<i32>(-16686i, u_input.c.x) ^ _wgslsmith_add_vec2_i32(-(vec2<i32>(var_0.c, 0i) ^ u_input.c.xy), func_3(1i, Struct_2(vec3<u32>(arg_3.b.x, 0u, 0u), Struct_1(vec3<u32>(u_input.a.x, u_input.b, var_0.a.x), vec2<u32>(1u, 4294967295u), u_input.c.x, var_0.d), arg_1, arg_2.d, arg_3), !arg_3.d)));
    let var_3 = select(!vec4<bool>(!(global2.x != 1296f), arg_3.d.x, _wgslsmith_clamp_i32(22828i, arg_3.c, -1i) >= 20275i, true), !select(!(!vec4<bool>(var_0.d.x, true, true, true)), vec4<bool>(global1.x != -30515i, arg_1, false, var_0.d.x || arg_3.d.x), select(vec4<bool>(true, arg_1, true, arg_3.d.x), vec4<bool>(false, false, false, false), vec4<bool>(arg_2.d.x, arg_1, arg_1, false))), !vec4<bool>(false, true, any(select(vec3<bool>(var_0.d.x, arg_2.c, false), arg_2.d, vec3<bool>(arg_1, arg_3.d.x, arg_3.d.x))), select(select(arg_2.c, false, true), any(vec4<bool>(false, true, var_0.d.x, true)), false)));
    return arg_2.d;
}

fn func_1(arg_0: vec2<i32>, arg_1: u32) -> i32 {
    global1 = abs(~(vec2<i32>(-18474i, arg_0.x) ^ _wgslsmith_mod_vec2_i32(vec2<i32>(global1.x, global1.x) & arg_0, vec2<i32>(16778i, 2147483647i))));
    var var_0 = select(!vec3<bool>(all(vec2<bool>(true, false)), true, false), func_4(4294967295u, _wgslsmith_div_i32(global1.x, arg_0.x | arg_0.x) == -func_2(u_input.c.zx), Struct_2(u_input.a.wwy, Struct_1(countOneBits(vec3<u32>(arg_1, u_input.b, arg_1)), _wgslsmith_add_vec2_u32(vec2<u32>(3444u, u_input.b), u_input.a.ww), i32(-1i) * -6159i, select(vec2<bool>(false, true), vec2<bool>(false, true), true)), true, vec3<bool>(true, true, any(vec3<bool>(false, false, true))), Struct_1(_wgslsmith_mod_vec3_u32(vec3<u32>(arg_1, arg_1, 22756u), u_input.a.zzy), u_input.a.zw, _wgslsmith_div_i32(1i, global1.x), select(vec2<bool>(false, false), vec2<bool>(false, true), false))), Struct_1(_wgslsmith_sub_vec3_u32(u_input.a.wzx, firstTrailingBit(u_input.a.www)), vec2<u32>(select(arg_1, u_input.a.x, true), u_input.b), arg_0.x, !select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true)))), any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), any(vec2<bool>(true, true)))));
    let var_1 = u_input.b;
    global2 = vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global2.x))))), 1000f, global2.x);
    var var_2 = Struct_1(vec3<u32>(_wgslsmith_clamp_u32(u_input.a.x, 36191u, min(arg_1 ^ 0u, 1u)), (var_1 | _wgslsmith_dot_vec3_u32(u_input.a.yxy, vec3<u32>(var_1, 1u, 0u))) & select(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.b, var_1, 1u), vec4<u32>(var_1, 23020u, var_1, 4294967295u)), 61907u, true), 0u), firstTrailingBit(~select(vec2<u32>(arg_1, 1u), u_input.a.wy << (u_input.a.yw % vec2<u32>(32u)), vec2<bool>(var_0.x, true))), global1.x & 48786i, var_0.xy);
    return _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(_wgslsmith_mult_vec3_i32(-(u_input.c >> (vec3<u32>(u_input.a.x, var_1, arg_1) % vec3<u32>(32u))), countOneBits(u_input.c)), u_input.c), u_input.c);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(u_input.a.wxz >> (~(~u_input.a.zxw) % vec3<u32>(32u)), vec2<u32>(14802u, 4294967295u), max(func_1(u_input.c.yz, abs(15174u)), _wgslsmith_clamp_i32(u_input.c.x, u_input.c.x, 23747i & u_input.c.x)), !select(vec2<bool>(true, 1u > u_input.b), select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true)), vec2<bool>(true, true), true), func_4(max(4294967295u, 1u), any(vec2<bool>(false, true)), global3[_wgslsmith_index_u32(1u, 21u)], Struct_1(vec3<u32>(4294967295u, 45028u, u_input.a.x), u_input.a.wy, u_input.c.x, vec2<bool>(true, false))).zy));
    var_0 = Struct_1(_wgslsmith_div_vec3_u32(~select(var_0.a | var_0.a, select(vec3<u32>(0u, 8446u, var_0.a.x), vec3<u32>(u_input.a.x, 0u, 4294967295u), true), vec3<bool>(var_0.d.x, var_0.d.x, false)), _wgslsmith_clamp_vec3_u32(u_input.a.zzy, firstTrailingBit(vec3<u32>(4294967295u, 40008u, 52979u)), ~u_input.a.yyy) & min(max(vec3<u32>(1u, 0u, u_input.a.x), vec3<u32>(141465u, 4294967295u, 4294967295u)), vec3<u32>(9432u, 9996u, var_0.a.x))), _wgslsmith_add_vec2_u32(min(vec2<u32>(u_input.b, ~0u), vec2<u32>(var_0.a.x, ~1u)), var_0.a.xx), global1.x, vec2<bool>(any(select(vec4<bool>(false, var_0.d.x, var_0.d.x, false), select(vec4<bool>(var_0.d.x, true, var_0.d.x, false), vec4<bool>(var_0.d.x, true, var_0.d.x, var_0.d.x), vec4<bool>(true, var_0.d.x, var_0.d.x, false)), func_4(u_input.a.x, var_0.d.x, Struct_2(vec3<u32>(1u, 25448u, 55882u), Struct_1(vec3<u32>(var_0.a.x, 4294967295u, var_0.a.x), u_input.a.xy, 9459i, var_0.d), var_0.d.x, vec3<bool>(var_0.d.x, var_0.d.x, var_0.d.x), Struct_1(u_input.a.yzy, u_input.a.yw, u_input.c.x, vec2<bool>(var_0.d.x, false))), Struct_1(var_0.a, var_0.b, -2147483647i, vec2<bool>(var_0.d.x, false))).x)), !all(vec4<bool>(false, false, var_0.d.x, var_0.d.x))));
    var var_1 = ~var_0.c;
    var var_2 = 0i;
    let var_3 = _wgslsmith_mod_vec3_u32(u_input.a.yyz, vec3<u32>(u_input.b >> (1u % 32u), ~u_input.b >> (_wgslsmith_dot_vec3_u32(var_0.a, u_input.a.wzw) % 32u), _wgslsmith_sub_u32(u_input.b, u_input.b))) >> (u_input.a.xyw % vec3<u32>(32u));
    global3 = array<Struct_2, 21>();
    let var_4 = Struct_1(u_input.a.xwx, u_input.a.wz, var_0.c, var_0.d);
    let x = u_input.a;
    s_output = StorageBuffer(global2.x, min(vec4<i32>(u_input.c.x, 1i, global1.x, -2147483647i) & select(firstTrailingBit(vec4<i32>(25608i, 51875i, 70701i, var_0.c)), vec4<i32>(global1.x, var_4.c, var_4.c, u_input.c.x) << (u_input.a % vec4<u32>(32u)), vec4<bool>(false, true, var_4.d.x, true)), _wgslsmith_add_vec4_i32(select(vec4<i32>(global1.x, var_0.c, global1.x, -19433i), vec4<i32>(var_4.c, -1i, global1.x, -1i), vec4<bool>(true, false, var_0.d.x, false)) & (vec4<i32>(-2147483647i, 8092i, u_input.c.x, global1.x) << (vec4<u32>(1u, 0u, 19608u, 55740u) % vec4<u32>(32u))), vec4<i32>(var_0.c, func_2(vec2<i32>(-2147483647i, 32729i)), var_0.c, var_4.c))), countOneBits(select(0u, ~46086u, true)), _wgslsmith_dot_vec3_u32(vec3<u32>(~_wgslsmith_sub_u32(3022u, var_0.a.x), max(0u, 55943u), _wgslsmith_clamp_u32(4294967295u & u_input.b, 21916u & u_input.b, firstLeadingBit(u_input.a.x))), vec3<u32>(min(_wgslsmith_add_u32(var_3.x, 55744u), ~0u), var_0.a.x, u_input.a.x)));
}


struct Struct_1 {
    a: vec4<i32>,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: vec2<u32>,
    c: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: i32,
    d: vec3<i32>,
    e: i32,
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

var<private> global0: array<Struct_2, 24>;

var<private> global1: i32 = -23877i;

var<private> global2: array<Struct_3, 26> = array<Struct_3, 26>(Struct_3(-4876i, vec2<u32>(4294967295u, 4294967295u), Struct_2(Struct_1(vec4<i32>(0i, i32(-2147483648), i32(-2147483648), -67966i), 1u))), Struct_3(1i, vec2<u32>(90051u, 4294967295u), Struct_2(Struct_1(vec4<i32>(-46292i, 1i, 0i, 72180i), 4294967295u))), Struct_3(i32(-2147483648), vec2<u32>(1u, 0u), Struct_2(Struct_1(vec4<i32>(5489i, i32(-2147483648), 1i, 2147483647i), 0u))), Struct_3(16509i, vec2<u32>(90127u, 15083u), Struct_2(Struct_1(vec4<i32>(-1i, i32(-2147483648), -4106i, 0i), 1u))), Struct_3(-23745i, vec2<u32>(12406u, 9877u), Struct_2(Struct_1(vec4<i32>(-1i, 1i, i32(-2147483648), -1i), 0u))), Struct_3(-31453i, vec2<u32>(37050u, 0u), Struct_2(Struct_1(vec4<i32>(46158i, 0i, 2147483647i, 22182i), 0u))), Struct_3(12626i, vec2<u32>(14748u, 4294967295u), Struct_2(Struct_1(vec4<i32>(-19111i, -27120i, 0i, -23358i), 80433u))), Struct_3(5432i, vec2<u32>(19210u, 1u), Struct_2(Struct_1(vec4<i32>(-6941i, -1i, -5608i, -17734i), 4294967295u))), Struct_3(45965i, vec2<u32>(18314u, 1u), Struct_2(Struct_1(vec4<i32>(-1i, 2147483647i, -39517i, -8921i), 1u))), Struct_3(-30815i, vec2<u32>(0u, 25696u), Struct_2(Struct_1(vec4<i32>(-1i, -26871i, 1i, 2147483647i), 0u))), Struct_3(1i, vec2<u32>(38484u, 66634u), Struct_2(Struct_1(vec4<i32>(1i, 1i, 0i, -37203i), 1u))), Struct_3(27224i, vec2<u32>(0u, 86768u), Struct_2(Struct_1(vec4<i32>(2147483647i, i32(-2147483648), -1i, -22069i), 48947u))), Struct_3(i32(-2147483648), vec2<u32>(4294967295u, 4294967295u), Struct_2(Struct_1(vec4<i32>(-2005i, -13884i, 0i, -1i), 31258u))), Struct_3(2147483647i, vec2<u32>(1u, 0u), Struct_2(Struct_1(vec4<i32>(-1i, 42046i, -1i, 17824i), 1u))), Struct_3(38508i, vec2<u32>(26372u, 83025u), Struct_2(Struct_1(vec4<i32>(19445i, 0i, 1i, -14977i), 0u))), Struct_3(33962i, vec2<u32>(1u, 0u), Struct_2(Struct_1(vec4<i32>(6982i, 14004i, 2147483647i, -1i), 34064u))), Struct_3(i32(-2147483648), vec2<u32>(6473u, 6905u), Struct_2(Struct_1(vec4<i32>(12938i, 0i, i32(-2147483648), -1i), 4294967295u))), Struct_3(-7072i, vec2<u32>(26581u, 31842u), Struct_2(Struct_1(vec4<i32>(-1i, -44504i, 2147483647i, 1i), 65498u))), Struct_3(-1i, vec2<u32>(17502u, 94737u), Struct_2(Struct_1(vec4<i32>(-1i, -1i, 1i, -1i), 68110u))), Struct_3(2147483647i, vec2<u32>(22089u, 67444u), Struct_2(Struct_1(vec4<i32>(2147483647i, 12599i, 2147483647i, 26507i), 69163u))), Struct_3(-5884i, vec2<u32>(1u, 4294967295u), Struct_2(Struct_1(vec4<i32>(2147483647i, i32(-2147483648), 0i, -21555i), 0u))), Struct_3(-1i, vec2<u32>(1u, 0u), Struct_2(Struct_1(vec4<i32>(12445i, 0i, 0i, 5965i), 23861u))), Struct_3(2147483647i, vec2<u32>(2215u, 4294967295u), Struct_2(Struct_1(vec4<i32>(0i, 1i, -354i, 0i), 1u))), Struct_3(-7451i, vec2<u32>(929u, 76119u), Struct_2(Struct_1(vec4<i32>(-55572i, 2147483647i, -1i, 43990i), 3173u))), Struct_3(0i, vec2<u32>(0u, 4294967295u), Struct_2(Struct_1(vec4<i32>(i32(-2147483648), -23939i, -1i, -12471i), 54802u))), Struct_3(-1i, vec2<u32>(1u, 13370u), Struct_2(Struct_1(vec4<i32>(0i, -1i, 63382i, 1i), 1u))));

var<private> global3: vec2<i32> = vec2<i32>(-19701i, 2147483647i);

var<private> global4: array<Struct_1, 14>;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_1(arg_0: u32) -> f32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(step(-617f, _wgslsmith_f_op_f32(f32(-1f) * -409f))), -1373f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-948f - 411f), _wgslsmith_div_f32(-428f, -1671f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(937f - 736f)))))) - vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -563f), _wgslsmith_f_op_f32(f32(-1f) * -718f)))), 775f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -222f)), _wgslsmith_f_op_f32(f32(-1f) * -887f)));
    var var_1 = u_input.b ^ vec2<i32>(1i, -u_input.c);
    global4 = array<Struct_1, 14>();
    let var_2 = Struct_2(global4[_wgslsmith_index_u32(~(arg_0 << (4294967295u % 32u)), 14u)]);
    var var_3 = vec3<bool>(true, true, true);
    return 377f;
}

fn func_3(arg_0: u32, arg_1: vec2<bool>) -> vec4<u32> {
    global0 = array<Struct_2, 24>();
    var var_0 = _wgslsmith_div_u32(58921u, _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0, arg_0, 4294967295u, 12658u) | firstTrailingBit(vec4<u32>(arg_0, 4294967295u, 44039u, 21930u)), vec4<u32>(4294967295u, arg_0, _wgslsmith_mult_u32(arg_0, arg_0), ~arg_0)), 1u));
    let var_1 = select(u_input.d.yx, u_input.d.yx, arg_1.x | arg_1.x);
    global0 = array<Struct_2, 24>();
    let var_2 = any(!(!vec3<bool>(false || arg_1.x, true, select(arg_1.x, arg_1.x, arg_1.x))));
    return ~_wgslsmith_div_vec4_u32(vec4<u32>(59011u, _wgslsmith_dot_vec3_u32(max(vec3<u32>(arg_0, arg_0, 53902u), vec3<u32>(0u, 36413u, 1u)), _wgslsmith_div_vec3_u32(vec3<u32>(1u, arg_0, arg_0), vec3<u32>(arg_0, 63980u, arg_0))), ~max(1u, 5902u), ~1u), ~_wgslsmith_sub_vec4_u32(select(vec4<u32>(arg_0, arg_0, arg_0, arg_0), vec4<u32>(0u, arg_0, 1u, 4294967295u), arg_1.x), ~vec4<u32>(18157u, 2713u, arg_0, arg_0)));
}

fn func_2(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: u32, arg_3: vec3<bool>) -> Struct_3 {
    var var_0 = select(_wgslsmith_mult_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(37770u, 4294967295u, arg_2, 8688u) >> (vec4<u32>(1u, 0u, arg_1.b, arg_0.x) % vec4<u32>(32u)), min(vec4<u32>(arg_1.b, 0u, arg_1.b, 4746u), vec4<u32>(arg_0.x, 1u, arg_2, 20009u))), vec4<u32>(~arg_0.x, 41998u & arg_2, 35835u, ~arg_1.b)) ^ func_3(~25452u, arg_3.yx), _wgslsmith_add_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(1u, 66134u, arg_1.b, arg_0.x) << (vec4<u32>(arg_2, arg_1.b, arg_1.b, 45722u) % vec4<u32>(32u)), ~vec4<u32>(43027u, arg_1.b, 35692u, 4294967295u)), ~(vec4<u32>(1u, 112434u, 4294967295u, 16464u) << (vec4<u32>(4371u, 0u, arg_0.x, arg_0.x) % vec4<u32>(32u)))) & vec4<u32>(14755u, arg_2, arg_1.b, _wgslsmith_div_u32(arg_0.x << (14162u % 32u), 4294967295u)), vec4<bool>(arg_3.x, true, arg_3.x, arg_3.x));
    global2 = array<Struct_3, 26>();
    return global2[_wgslsmith_index_u32(0u, 26u)];
}

fn func_4(arg_0: Struct_3, arg_1: f32, arg_2: u32, arg_3: Struct_3) -> Struct_1 {
    return func_2(_wgslsmith_clamp_vec2_u32(firstLeadingBit(_wgslsmith_mod_vec2_u32(abs(arg_0.b), arg_0.b)), arg_0.b, arg_0.b), func_2(arg_0.b, func_2(~(vec2<u32>(arg_2, arg_0.c.a.b) & vec2<u32>(arg_0.b.x, arg_0.c.a.b)), Struct_1(min(vec4<i32>(arg_0.a, arg_3.a, global3.x, 11939i), vec4<i32>(15221i, -2147483647i, arg_0.c.a.a.x, -1i)), arg_3.c.a.b), 4294967295u, select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), true)).c.a, _wgslsmith_add_u32(arg_3.c.a.b, 36585u), !select(select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), false), vec3<bool>(true, true, true), false)).c.a, func_2(select(~vec2<u32>(arg_3.c.a.b, arg_0.b.x), arg_3.b, vec2<bool>(false, false)) & vec2<u32>(1u, 4294967295u), func_2(abs(_wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, arg_3.b.x), arg_0.b)), func_2(arg_3.b | arg_3.b, func_2(vec2<u32>(40052u, 29720u), global4[_wgslsmith_index_u32(arg_2, 14u)], arg_0.b.x, vec3<bool>(true, true, false)).c.a, arg_2, select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), true)).c.a, ~(~arg_0.b.x), vec3<bool>(true, true, true)).c.a, arg_3.b.x, vec3<bool>(false, true, any(vec3<bool>(false, true, true)))).c.a.b, select(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), false), false), any(vec3<bool>(true, true, true))), vec3<bool>(false, -2478f <= _wgslsmith_f_op_f32(trunc(1317f)), _wgslsmith_clamp_i32(-53029i, 1i, arg_3.c.a.a.x) >= -18761i), arg_1 != _wgslsmith_f_op_f32(arg_1 * _wgslsmith_f_op_f32(-arg_1)))).c.a;
}

fn func_5(arg_0: Struct_2, arg_1: f32) -> vec4<i32> {
    var var_0 = vec2<bool>(func_2(firstTrailingBit(vec2<u32>(arg_0.a.b, 1u)) >> (select(vec2<u32>(58714u, 0u), vec2<u32>(1u, arg_0.a.b), vec2<bool>(true, false)) % vec2<u32>(32u)), arg_0.a, firstTrailingBit(arg_0.a.b >> (arg_0.a.b % 32u)), !select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), true)).c.a.a.x <= ~_wgslsmith_dot_vec2_i32(vec2<i32>(-28676i, -1i) | vec2<i32>(u_input.d.x, arg_0.a.a.x), arg_0.a.a.xx), true);
    global0 = array<Struct_2, 24>();
    global1 = 72731i;
    var var_1 = all(!(!select(vec4<bool>(var_0.x, var_0.x, true, true), vec4<bool>(false, false, var_0.x, false), !vec4<bool>(true, true, false, var_0.x))));
    let var_2 = min(~arg_0.a.a.wxz, select(arg_0.a.a.yzy, vec3<i32>(abs(u_input.c) >> (reverseBits(180u) % 32u), _wgslsmith_mult_i32(-22028i, select(13495i, global3.x, false)), arg_0.a.a.x), select(!(!vec3<bool>(var_0.x, true, var_0.x)), !vec3<bool>(true, false, var_0.x), !select(vec3<bool>(var_0.x, false, var_0.x), vec3<bool>(var_0.x, false, false), var_0.x))));
    return ~select(vec4<i32>(_wgslsmith_dot_vec3_i32(~vec3<i32>(-19362i, -17309i, global3.x), ~vec3<i32>(u_input.e, arg_0.a.a.x, u_input.a)), (i32(-1i) * -14871i) & u_input.a, ~u_input.a << (arg_0.a.b % 32u), 18960i), vec4<i32>(firstLeadingBit(func_4(global2[_wgslsmith_index_u32(arg_0.a.b, 26u)], -725f, 24148u, Struct_3(var_2.x, vec2<u32>(18625u, arg_0.a.b), Struct_2(Struct_1(arg_0.a.a, 4294967295u)))).a.x), -16089i, max(~var_2.x, 1i), ~_wgslsmith_mod_i32(1i, u_input.b.x)), select(vec4<bool>(!var_0.x, var_0.x, var_0.x, var_0.x), select(select(vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<bool>(var_0.x, var_0.x, var_0.x, true), var_0.x), vec4<bool>(true, var_0.x, var_0.x, true), !vec4<bool>(true, false, var_0.x, var_0.x)), all(!vec3<bool>(var_0.x, false, true))));
}

fn func_6(arg_0: vec4<i32>, arg_1: vec4<u32>, arg_2: Struct_3) -> vec2<i32> {
    let var_0 = _wgslsmith_mult_vec2_u32(arg_2.b, max(arg_1.yy, arg_2.b));
    return u_input.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), !select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), false)), vec3<bool>(true, !all(vec4<bool>(false, true, false, false)), true), !(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1000f - 1317f))) <= _wgslsmith_f_op_f32(func_1(min(1151u, 6706u)))));
    global3 = func_6(func_5(Struct_2(func_4(global2[_wgslsmith_index_u32(_wgslsmith_div_u32(1u, 50406u), 26u)], -410f, 4294967295u, func_2(vec2<u32>(0u, 14462u), Struct_1(vec4<i32>(global3.x, global3.x, global3.x, global3.x), 67894u), 136114u, vec3<bool>(var_0.x, var_0.x, true)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-1264f, 409f))) * 393f)), vec4<u32>(29437u, ~(_wgslsmith_dot_vec3_u32(vec3<u32>(22028u, 37597u, 31157u), vec3<u32>(0u, 0u, 4294967295u)) >> (_wgslsmith_dot_vec4_u32(vec4<u32>(20189u, 4294967295u, 1u, 0u), vec4<u32>(47447u, 0u, 33952u, 41812u)) % 32u)), 63135u, _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(67199u, 0u, 58186u, 1u), firstLeadingBit(vec4<u32>(52702u, 2065u, 1u, 41953u))), _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(51731u, 4294967295u, 1u, 56316u), vec4<u32>(4294967295u, 1u, 2197u, 4490u)), vec4<u32>(22132u, 40042u, 0u, 0u)))), global2[_wgslsmith_index_u32(func_2(_wgslsmith_add_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(select(81063u, 1u, true), ~1u)), func_2(_wgslsmith_mult_vec2_u32(~vec2<u32>(36253u, 1u), _wgslsmith_clamp_vec2_u32(vec2<u32>(81752u, 203u), vec2<u32>(18567u, 46812u), vec2<u32>(22076u, 4294967295u))), func_4(Struct_3(-12730i, vec2<u32>(4294967295u, 217u), Struct_2(Struct_1(vec4<i32>(-39651i, -5362i, u_input.b.x, 70834i), 0u))), -434f, ~86637u, Struct_3(u_input.d.x, vec2<u32>(1u, 90904u), global0[_wgslsmith_index_u32(1u, 24u)])), _wgslsmith_dot_vec4_u32(vec4<u32>(30592u, 24771u, 30311u, 73408u), ~vec4<u32>(26294u, 26394u, 8884u, 1u)), !select(vec3<bool>(false, var_0.x, var_0.x), vec3<bool>(var_0.x, var_0.x, var_0.x), var_0.x)).c.a, _wgslsmith_div_u32(1u, _wgslsmith_clamp_u32(2937u, 27134u, 0u) << (1u % 32u)), select(!vec3<bool>(var_0.x, false, var_0.x), vec3<bool>(var_0.x || true, var_0.x, var_0.x), !vec3<bool>(var_0.x, true, var_0.x))).b.x, 26u)]);
    global2 = array<Struct_3, 26>();
    let var_1 = global0[_wgslsmith_index_u32(_wgslsmith_div_u32(1u, _wgslsmith_sub_u32(_wgslsmith_mult_u32(func_2(func_3(4294967295u, var_0.zy).wz, global4[_wgslsmith_index_u32(~25457u, 14u)], 35078u, select(vec3<bool>(false, var_0.x, var_0.x), vec3<bool>(var_0.x, false, var_0.x), true)).c.a.b, ~min(0u, 4294967295u)), 35453u)), 24u)];
    var var_2 = func_4(global2[_wgslsmith_index_u32(~min(max(~4294967295u, var_1.a.b), _wgslsmith_mod_u32(~4294967295u, _wgslsmith_div_u32(12083u, 1u))), 26u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-645f, _wgslsmith_f_op_f32(185f + 326f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-792f + 1000f), 1245f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -333f)))), _wgslsmith_clamp_u32(var_1.a.b, 0u, var_1.a.b), global2[_wgslsmith_index_u32(var_1.a.b, 26u)]);
    let x = u_input.a;
    s_output = StorageBuffer(-(func_5(func_2(vec2<u32>(var_2.b, var_1.a.b), global4[_wgslsmith_index_u32(var_2.b, 14u)], 1u, vec3<bool>(true, true, var_0.x)).c, _wgslsmith_f_op_f32(func_1(77876u))).x << (func_4(Struct_3(u_input.c, vec2<u32>(49357u, var_2.b), Struct_2(global4[_wgslsmith_index_u32(var_1.a.b, 14u)])), -319f, 1u, func_2(vec2<u32>(44714u, var_2.b), Struct_1(vec4<i32>(var_2.a.x, u_input.a, var_1.a.a.x, var_2.a.x), 680u), var_1.a.b, vec3<bool>(var_0.x, true, var_0.x))).b % 32u)));
}


struct Struct_1 {
    a: vec4<bool>,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
    c: vec3<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
    d: vec4<i32>,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec3<u32>,
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

var<private> global0: array<f32, 22> = array<f32, 22>(228f, -372f, 702f, -450f, -1108f, -1688f, 663f, 488f, 2062f, -957f, -698f, -457f, -533f, 714f, -663f, -167f, 819f, -1380f, 658f, 1380f, -760f, -856f);

var<private> global1: array<Struct_3, 21> = array<Struct_3, 21>(Struct_3(Struct_1(vec4<bool>(false, true, true, false), true), true, Struct_1(vec4<bool>(true, true, true, true), false), vec4<i32>(i32(-2147483648), 2900i, -1i, 21494i), vec3<bool>(true, true, true)), Struct_3(Struct_1(vec4<bool>(false, false, true, false), true), false, Struct_1(vec4<bool>(false, false, false, true), true), vec4<i32>(-27813i, 17220i, -26811i, -3798i), vec3<bool>(true, true, false)), Struct_3(Struct_1(vec4<bool>(false, true, true, false), true), false, Struct_1(vec4<bool>(false, false, true, false), false), vec4<i32>(-1i, 41105i, 0i, i32(-2147483648)), vec3<bool>(true, false, false)), Struct_3(Struct_1(vec4<bool>(false, true, true, false), true), true, Struct_1(vec4<bool>(false, false, true, false), false), vec4<i32>(i32(-2147483648), 918i, 50716i, 11021i), vec3<bool>(true, true, true)), Struct_3(Struct_1(vec4<bool>(true, true, true, true), true), true, Struct_1(vec4<bool>(true, false, false, true), false), vec4<i32>(-15180i, 2147483647i, -1i, 1i), vec3<bool>(true, true, true)), Struct_3(Struct_1(vec4<bool>(true, true, true, true), false), false, Struct_1(vec4<bool>(false, true, false, true), true), vec4<i32>(-14002i, -1i, -1i, 35332i), vec3<bool>(false, true, false)), Struct_3(Struct_1(vec4<bool>(false, false, true, true), false), true, Struct_1(vec4<bool>(false, false, false, false), false), vec4<i32>(5028i, -1i, 29486i, -30014i), vec3<bool>(false, true, true)), Struct_3(Struct_1(vec4<bool>(false, false, false, false), true), false, Struct_1(vec4<bool>(false, false, true, false), true), vec4<i32>(-36918i, 52977i, -1i, -59416i), vec3<bool>(false, false, true)), Struct_3(Struct_1(vec4<bool>(false, true, true, true), true), true, Struct_1(vec4<bool>(true, false, true, false), true), vec4<i32>(10606i, 35745i, 1i, 19043i), vec3<bool>(true, false, false)), Struct_3(Struct_1(vec4<bool>(false, true, true, true), false), true, Struct_1(vec4<bool>(true, true, true, false), false), vec4<i32>(37570i, 33828i, 2147483647i, 59555i), vec3<bool>(true, true, true)), Struct_3(Struct_1(vec4<bool>(true, false, true, false), false), false, Struct_1(vec4<bool>(true, true, false, true), false), vec4<i32>(i32(-2147483648), 2147483647i, -1i, 2147483647i), vec3<bool>(false, false, false)), Struct_3(Struct_1(vec4<bool>(false, true, false, false), false), true, Struct_1(vec4<bool>(true, false, true, false), true), vec4<i32>(-81297i, -24635i, 10530i, 37846i), vec3<bool>(false, true, false)), Struct_3(Struct_1(vec4<bool>(false, false, true, true), true), true, Struct_1(vec4<bool>(false, false, true, true), true), vec4<i32>(0i, 2147483647i, 51487i, 1i), vec3<bool>(true, false, false)), Struct_3(Struct_1(vec4<bool>(true, true, false, false), false), false, Struct_1(vec4<bool>(true, false, true, false), true), vec4<i32>(11370i, i32(-2147483648), 0i, 28982i), vec3<bool>(true, false, true)), Struct_3(Struct_1(vec4<bool>(true, true, false, true), false), false, Struct_1(vec4<bool>(false, false, false, true), true), vec4<i32>(11052i, -7284i, -14411i, -1i), vec3<bool>(false, true, false)), Struct_3(Struct_1(vec4<bool>(false, true, false, true), true), false, Struct_1(vec4<bool>(true, false, true, true), false), vec4<i32>(i32(-2147483648), 1i, 42015i, -81888i), vec3<bool>(false, true, false)), Struct_3(Struct_1(vec4<bool>(true, true, true, false), false), true, Struct_1(vec4<bool>(false, true, false, true), false), vec4<i32>(-25463i, -1i, 1i, -1i), vec3<bool>(false, true, false)), Struct_3(Struct_1(vec4<bool>(false, true, false, false), false), false, Struct_1(vec4<bool>(true, false, true, true), true), vec4<i32>(2147483647i, 2147483647i, 41493i, -62760i), vec3<bool>(true, true, true)), Struct_3(Struct_1(vec4<bool>(true, false, true, false), false), false, Struct_1(vec4<bool>(true, true, true, true), false), vec4<i32>(-1i, 2147483647i, -38018i, 2147483647i), vec3<bool>(false, true, false)), Struct_3(Struct_1(vec4<bool>(true, true, false, true), false), false, Struct_1(vec4<bool>(false, false, false, false), false), vec4<i32>(1i, 1i, 19059i, 2147483647i), vec3<bool>(true, true, true)), Struct_3(Struct_1(vec4<bool>(false, false, true, true), true), false, Struct_1(vec4<bool>(true, true, false, false), false), vec4<i32>(42231i, 2147483647i, i32(-2147483648), -1i), vec3<bool>(true, true, false)));

var<private> global2: vec4<i32>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1(arg_0: vec4<bool>, arg_1: Struct_3) -> bool {
    let var_0 = ~_wgslsmith_add_vec2_u32(firstTrailingBit(vec2<u32>(47545u, u_input.c.x)), vec2<u32>(_wgslsmith_add_u32(u_input.c.x, u_input.c.x), 4294967295u));
    global2 = arg_1.d;
    var var_1 = arg_1.e.yy;
    let var_2 = global2.xw;
    var var_3 = arg_1.a;
    return any(arg_0.wyz);
}

fn func_2() -> f32 {
    return _wgslsmith_f_op_f32(-879f * -2007f);
}

fn func_3(arg_0: f32, arg_1: Struct_3) -> u32 {
    let var_0 = arg_1.d.x <= -1i;
    var var_1 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.c.x, ~u_input.b, ~u_input.c.x, ~u_input.b), abs(~vec4<u32>(u_input.b, 4294967295u, 0u, u_input.c.x))), _wgslsmith_add_vec4_u32(~vec4<u32>(2128u, u_input.c.x, u_input.c.x, u_input.a.x) << (_wgslsmith_div_vec4_u32(vec4<u32>(u_input.b, u_input.a.x, u_input.a.x, 0u), vec4<u32>(u_input.a.x, u_input.c.x, 73842u, 4294967295u)) % vec4<u32>(32u)), vec4<u32>(u_input.b & 0u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 15405u, 4294967295u, u_input.c.x), vec4<u32>(4294967295u, 4294967295u, 4294967295u, u_input.b)), 0u, u_input.c.x))), vec4<u32>(29597u, u_input.a.x, 4591u, u_input.b)), 21u)];
    let var_2 = Struct_2(arg_1.c, ~vec3<u32>(abs(u_input.c.x), _wgslsmith_sub_u32(84347u, 1u), _wgslsmith_add_u32(1u, u_input.b)), arg_1.e);
    var var_3 = vec2<bool>(!((false | arg_1.a.a.x) && var_0), any(!select(vec2<bool>(true, true), vec2<bool>(var_2.a.a.x, var_2.a.b), all(var_2.c.zz))));
    var var_4 = vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1184f * 1f), _wgslsmith_f_op_f32(f32(-1f) * -928f)), _wgslsmith_f_op_f32(sign(-426f)));
    return ~_wgslsmith_div_u32(~countOneBits(u_input.c.x), _wgslsmith_div_u32(var_2.b.x, var_2.b.x)) & var_2.b.x;
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_3, arg_2: f32) -> Struct_1 {
    global0 = array<f32, 22>();
    var var_0 = vec4<u32>(0u, firstTrailingBit(~(~u_input.b)), 2186u, u_input.b);
    var var_1 = 1741f;
    var var_2 = (0u ^ abs(u_input.b)) ^ 1u;
    global0 = array<f32, 22>();
    return Struct_1(!(!select(!vec4<bool>(false, false, arg_0.x, arg_1.a.a.x), !vec4<bool>(false, true, arg_1.a.b, arg_1.b), vec4<bool>(true, true, true, arg_0.x))), true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = all(select(select(vec3<bool>(true, true, true), vec3<bool>(any(vec2<bool>(false, true)), true, true), func_1(vec4<bool>(true, true, true, true), Struct_3(Struct_1(vec4<bool>(false, false, false, false), false), true, Struct_1(vec4<bool>(false, false, false, true), true), vec4<i32>(48679i, global2.x, -2147483647i, global2.x), vec3<bool>(true, true, false)))), select(vec3<bool>(true, global2.x == global2.x, true), vec3<bool>(true, true, true), any(vec4<bool>(true, true, true, true))), any(vec4<bool>(true, true, false, any(vec2<bool>(true, true))))));
    let var_1 = func_4(select(!select(vec4<bool>(false, false, false, true), select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, true)), true), !vec4<bool>(select(true, true, false), true, u_input.c.x >= 87330u, true), select(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, true)), select(vec4<bool>(false, false, true, false), select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, true)), vec4<bool>(true, true, true, true)), true && all(vec3<bool>(true, false, true)))), global1[_wgslsmith_index_u32(func_3(_wgslsmith_f_op_f32(func_2()), Struct_3(Struct_1(vec4<bool>(true, true, true, true), true), true, Struct_1(vec4<bool>(true, true, true, true), false), abs(-vec4<i32>(-5269i, 49359i, global2.x, global2.x)), vec3<bool>(true, true, true))), 21u)], global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(abs(select(60467u, u_input.a.x, false)), 9440u, _wgslsmith_div_u32(2150u, u_input.a.x), abs(31316u)), ~vec4<u32>(abs(81556u), 0u, ~u_input.b, max(u_input.c.x, u_input.c.x))), 22u)]);
    let var_2 = Struct_2(Struct_1(vec4<bool>(var_1.a.x, !(false & var_1.b), any(func_4(var_1.a, Struct_3(Struct_1(var_1.a, false), var_1.a.x, var_1, vec4<i32>(global2.x, 21971i, global2.x, -45707i), vec3<bool>(true, var_1.a.x, true)), global0[_wgslsmith_index_u32(u_input.c.x, 22u)]).a), false), _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 0u, u_input.c.x, u_input.a.x), firstLeadingBit(vec4<u32>(1u, 25874u, 46579u, 21404u))) != u_input.a.x), min(vec3<u32>(~0u, 1u, 13550u), vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(24237u, u_input.b, u_input.b, 1u), _wgslsmith_mult_vec4_u32(vec4<u32>(1u, 45582u, u_input.a.x, 0u), vec4<u32>(u_input.a.x, 1u, u_input.a.x, 616u))), u_input.c.x, u_input.b)), vec3<bool>(!var_1.b || var_1.a.x, u_input.a.x >= _wgslsmith_dot_vec2_u32(u_input.a, select(u_input.a, u_input.c.zz, var_1.a.x)), global0[_wgslsmith_index_u32(u_input.c.x, 22u)] > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.a.x, 22u)] - global0[_wgslsmith_index_u32(u_input.b, 22u)]))));
    var var_3 = -1881f;
    global2 = ~_wgslsmith_mult_vec4_i32(abs(vec4<i32>(_wgslsmith_mod_i32(global2.x, global2.x), reverseBits(global2.x), global2.x, i32(-1i) * -2147483647i)), _wgslsmith_clamp_vec4_i32(vec4<i32>(global2.x, _wgslsmith_mod_i32(-1i, -21870i), _wgslsmith_dot_vec3_i32(global2.ywz, vec3<i32>(global2.x, -1i, 13905i)), i32(-1i) * -2147483647i), _wgslsmith_div_vec4_i32(firstTrailingBit(vec4<i32>(-2147483647i, global2.x, 30680i, 2147483647i)), ~vec4<i32>(1i, global2.x, -23831i, global2.x)), vec4<i32>(global2.x, firstTrailingBit(global2.x), -global2.x, _wgslsmith_div_i32(5029i, global2.x))));
    let var_4 = u_input.c.x;
    let x = u_input.a;
    s_output = StorageBuffer(~firstTrailingBit(30451i));
}


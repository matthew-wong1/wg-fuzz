struct Struct_1 {
    a: u32,
    b: vec3<i32>,
    c: i32,
    d: f32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
    c: vec4<bool>,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: vec3<f32>,
    d: vec4<bool>,
    e: f32,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: array<Struct_3, 26>;

var<private> global2: array<vec4<i32>, 26> = array<vec4<i32>, 26>(vec4<i32>(-1i, -18947i, -27200i, -33884i), vec4<i32>(59196i, 0i, 10380i, 8523i), vec4<i32>(i32(-2147483648), -1i, 0i, 1i), vec4<i32>(-20990i, -26521i, -21299i, 2147483647i), vec4<i32>(-4515i, 2147483647i, -7332i, 54657i), vec4<i32>(-66672i, -3490i, -9953i, -525i), vec4<i32>(-12367i, -34114i, -41213i, 4678i), vec4<i32>(i32(-2147483648), 2147483647i, 1i, -10979i), vec4<i32>(26356i, -9723i, 21113i, 1i), vec4<i32>(2147483647i, 1i, 87358i, i32(-2147483648)), vec4<i32>(i32(-2147483648), 3787i, 1i, 1907i), vec4<i32>(14973i, 28320i, 34641i, 2147483647i), vec4<i32>(2147483647i, -50195i, -8574i, i32(-2147483648)), vec4<i32>(-41611i, 37171i, 2147483647i, 9220i), vec4<i32>(4010i, 0i, 1i, -40809i), vec4<i32>(i32(-2147483648), 87369i, 0i, i32(-2147483648)), vec4<i32>(1i, -55252i, 1i, -33207i), vec4<i32>(59302i, 7429i, 45679i, 56146i), vec4<i32>(-34032i, -20200i, 0i, 35096i), vec4<i32>(-21562i, 4029i, 21804i, -24272i), vec4<i32>(i32(-2147483648), -43735i, -1i, -56905i), vec4<i32>(i32(-2147483648), i32(-2147483648), 1i, 0i), vec4<i32>(2147483647i, i32(-2147483648), -45686i, -48863i), vec4<i32>(33748i, -1i, 15260i, 3002i), vec4<i32>(2147483647i, -64088i, 0i, 1i), vec4<i32>(-64622i, 1i, 33094i, 39534i));

var<private> global3: array<vec3<u32>, 18>;

var<private> global4: vec4<i32> = vec4<i32>(68826i, 28155i, 2118i, 1i);

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: bool, arg_1: vec2<i32>, arg_2: u32, arg_3: vec4<bool>) -> bool {
    var var_0 = u_input.b;
    let var_1 = vec4<i32>(10294i, ~(0i ^ u_input.b), abs(-2147483647i), _wgslsmith_mod_i32(0i, u_input.b));
    let var_2 = Struct_2(vec3<bool>(false, true, global0.a.d.x), Struct_1(~abs(global0.a.b.a & 8137u), -_wgslsmith_clamp_vec3_i32(min(global4.xyz, var_1.zww), countOneBits(vec3<i32>(var_1.x, var_1.x, var_1.x)), vec3<i32>(49502i, 15930i, var_1.x)), (global4.x >> ((arg_2 << (arg_2 % 32u)) % 32u)) | min(-2147483647i, arg_1.x << (0u % 32u)), -420f), arg_3);
    var_0 = 1i;
    let var_3 = -1048f;
    return false;
}

fn func_2(arg_0: f32, arg_1: Struct_1) -> Struct_2 {
    let var_0 = all(vec4<bool>(!func_3(global0.a.a, vec2<i32>(global0.a.b.c, arg_1.c), 4294967295u, vec4<bool>(true, true, global0.a.a, global0.a.d.x)), true, true, global0.a.d.x)) & false;
    global1 = array<Struct_3, 26>();
    var var_1 = Struct_4(Struct_3(var_0, Struct_1(4554u | ~arg_1.a, arg_1.b, -34316i, _wgslsmith_f_op_f32(-arg_1.d)), vec3<f32>(290f, -106f, 415f), global0.a.d, _wgslsmith_f_op_f32(f32(-1f) * -937f)));
    var var_2 = 4385i;
    global3 = array<vec3<u32>, 18>();
    return Struct_2(var_1.a.d.zzw, arg_1, vec4<bool>(all(select(select(vec4<bool>(var_0, var_1.a.a, var_0, var_0), var_1.a.d, global0.a.d.x), vec4<bool>(var_0, var_1.a.a, false, true), true)), var_1.a.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a.e * -1272f)) != 542f, var_1.a.d.x));
}

fn func_4(arg_0: vec2<f32>, arg_1: u32, arg_2: f32, arg_3: Struct_2) -> vec3<i32> {
    global3 = array<vec3<u32>, 18>();
    global3 = array<vec3<u32>, 18>();
    global3 = array<vec3<u32>, 18>();
    global0 = Struct_4(global1[_wgslsmith_index_u32(abs(75767u) << (~arg_1 % 32u), 26u)]);
    global2 = array<vec4<i32>, 26>();
    return arg_3.b.b;
}

fn func_5(arg_0: Struct_4, arg_1: f32, arg_2: vec3<i32>, arg_3: vec3<f32>) -> Struct_2 {
    let var_0 = true;
    var var_1 = vec3<i32>(0i, ~_wgslsmith_mult_i32(-_wgslsmith_mod_i32(1i, 1i), firstTrailingBit(arg_2.x)), func_4(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(893f, arg_1) * global0.a.c.xz), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, 973f))))), ~max(~4294967295u, abs(arg_0.a.b.a)), 300f, Struct_2(vec3<bool>(true, any(arg_0.a.d), global0.a.a), func_2(_wgslsmith_f_op_f32(min(649f, 419f)), Struct_1(0u, vec3<i32>(2147483647i, -14867i, arg_2.x), global0.a.b.c, arg_3.x)).b, arg_0.a.d)).x);
    var var_2 = 2147483647i;
    global2 = array<vec4<i32>, 26>();
    var var_3 = !global0.a.a;
    return Struct_2(!func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a.b.d)), arg_0.a.b).c.wwy, global0.a.b, vec4<bool>(var_0, true, !any(!global0.a.d.zz), true));
}

fn func_6(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec4<i32>) -> Struct_1 {
    let var_0 = -2147483647i;
    var var_1 = arg_0.a.zz;
    let var_2 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(-359f, 335f) - vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_0.b.d))), 249f)), global0.a.c.zy));
    var_1 = func_5(Struct_4(Struct_3(true, arg_0.b, _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-global0.a.c), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_2.x, var_2.x, -1242f), vec3<f32>(arg_0.b.d, global0.a.c.x, arg_1.d))))), !(!vec4<bool>(true, global0.a.a, arg_0.c.x, var_1.x)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_2.x, arg_1.d) - -795f))), _wgslsmith_f_op_f32(max(535f, -1000f)), ~func_4(_wgslsmith_f_op_vec2_f32(round(global0.a.c.xz)), ~(global0.a.b.a | 3403u), -721f, func_5(Struct_4(global1[_wgslsmith_index_u32(17509u, 26u)]), 2117f, vec3<i32>(global4.x, global4.x, arg_2.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.a.c.x, arg_1.d, arg_1.d)))), vec3<f32>(-863f, arg_0.b.d, _wgslsmith_f_op_f32(round(var_2.x)))).c.zw;
    global1 = array<Struct_3, 26>();
    return func_2(arg_1.d, Struct_1(abs(47870u), countOneBits(vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(var_0, -40077i, global4.x, arg_1.b.x), vec4<i32>(u_input.b, arg_0.b.c, arg_2.x, 1i)), -1i >> (1u % 32u), 0i)), _wgslsmith_dot_vec4_i32(arg_2, max(reverseBits(vec4<i32>(-2706i, arg_0.b.b.x, 0i, global4.x)), _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.b, u_input.b, arg_0.b.b.x, u_input.b), arg_2, arg_2))), _wgslsmith_div_f32(1f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.d), 149f)))).b;
}

fn func_1() -> vec4<bool> {
    global3 = array<vec3<u32>, 18>();
    var var_0 = Struct_2(!(!vec3<bool>(true, 11104i < global4.x, global0.a.a)), func_6(func_5(Struct_4(Struct_3(false, Struct_1(u_input.a.x, vec3<i32>(global0.a.b.c, 0i, -1i), u_input.b, global0.a.e), vec3<f32>(812f, global0.a.b.d, global0.a.b.d), global0.a.d, global0.a.e)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.a.e + -1085f) + _wgslsmith_f_op_f32(min(101f, global0.a.b.d))), func_4(_wgslsmith_f_op_vec2_f32(max(global0.a.c.yy, vec2<f32>(1000f, global0.a.b.d))), _wgslsmith_mod_u32(u_input.a.x, 30834u), _wgslsmith_f_op_f32(global0.a.b.d * -1846f), func_2(global0.a.b.d, global0.a.b)), global0.a.c), Struct_1(_wgslsmith_clamp_u32(u_input.c, 4294967295u, 28584u) | func_2(global0.a.b.d, Struct_1(1u, global0.a.b.b, global4.x, -1410f)).b.a, abs(select(global4.wwx, vec3<i32>(-1i, 2147483647i, u_input.b), global0.a.d.wyw)), _wgslsmith_clamp_i32(-29028i, 2147483647i, min(global0.a.b.c, u_input.b)), _wgslsmith_f_op_f32(floor(-681f))), reverseBits(vec4<i32>(1i << (u_input.c % 32u), u_input.b & u_input.b, select(global4.x, global4.x, global0.a.d.x), ~global0.a.b.b.x))), func_5(Struct_4(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(firstLeadingBit(u_input.a.x), u_input.d), 26u)]), func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global0.a.b.d))), global0.a.b).b.d, vec3<i32>(global0.a.b.c, abs(u_input.b), global0.a.b.b.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1000f, global0.a.b.d, global0.a.c.x)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(global0.a.c)) - global0.a.c))).c);
    global1 = array<Struct_3, 26>();
    global2 = array<vec4<i32>, 26>();
    var var_1 = Struct_4(global0.a);
    return var_0.c;
}

fn func_7(arg_0: vec4<f32>, arg_1: Struct_2, arg_2: vec4<i32>) -> Struct_1 {
    global4 = ~(~vec4<i32>(~(-1i), 71126i, -71634i, _wgslsmith_mod_i32(825i, global0.a.b.b.x) & 0i));
    global2 = array<vec4<i32>, 26>();
    global1 = array<Struct_3, 26>();
    global3 = array<vec3<u32>, 18>();
    var var_0 = global0.a.b.a | func_6(arg_1, Struct_1(~(~global0.a.b.a), ~select(arg_2.zww, vec3<i32>(-20524i, 37243i, global4.x), vec3<bool>(global0.a.a, false, arg_1.a.x)), -firstLeadingBit(2147483647i), global0.a.b.d), select(~vec4<i32>(-2147483647i, 0i, global4.x, global0.a.b.b.x), vec4<i32>(1i, arg_1.b.c, -24483i, global0.a.b.b.x) | select(arg_2, vec4<i32>(76082i, -37049i, u_input.b, 1i), false), vec4<bool>(true, true, false, global0.a.a != arg_1.a.x))).a;
    return arg_1.b;
}

fn func_8(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    global1 = array<Struct_3, 26>();
    global3 = array<vec3<u32>, 18>();
    global1 = array<Struct_3, 26>();
    let var_0 = arg_0.xy;
    global2 = array<vec4<i32>, 26>();
    return global0.a.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(vec4<bool>(global0.a.a, true, true, true), vec4<bool>(select(global0.a.d.x, true, global0.a.a), global0.a.d.x, true, global0.a.d.x), any(vec3<bool>(all(select(global0.a.d.xxz, global0.a.d.zzw, false)), true, true)));
    let var_1 = func_8(vec3<bool>(var_0.x, true, all(vec4<bool>(false, global0.a.d.x, global0.a.d.x, global0.a.a != var_0.x))), func_7(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0.a.e, global0.a.e, global0.a.e, 380f), _wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, -1000f, global0.a.e, 1000f) + vec4<f32>(-1589f, 1418f, -1413f, global0.a.e)), func_1())) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a.b.d, global0.a.c.x, global0.a.e, global0.a.e)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(934f, global0.a.b.d, global0.a.e, global0.a.e)))), Struct_2(var_0.xww, Struct_1(global0.a.b.a, abs(global4.xxz), ~(-78704i), -2449f), !global0.a.d), global2[_wgslsmith_index_u32(~(58478u >> (firstLeadingBit(global0.a.b.a) % 32u)), 26u)]), global0.a.b);
    var_0 = global0.a.d;
    var var_2 = ~(global0.a.b.a ^ func_7(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.d, var_1.d, var_1.d, var_1.d)), func_2(var_1.d, global0.a.b), global2[_wgslsmith_index_u32(1u, 26u)]).a);
    let var_3 = ~_wgslsmith_mod_u32(116434u, u_input.a.x);
    global3 = array<vec3<u32>, 18>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec4_i32(vec4<i32>(func_5(Struct_4(Struct_3(false, Struct_1(var_1.a, vec3<i32>(u_input.b, global0.a.b.c, 2147483647i), -2147483647i, var_1.d), global0.a.c, vec4<bool>(global0.a.d.x, global0.a.a, true, true), global0.a.c.x)), -1043f, global0.a.b.b, _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1001f, 1551f, global0.a.b.d), vec3<f32>(global0.a.e, var_1.d, 857f)))).b.c, ~global0.a.b.c, 0i, ~abs(var_1.b.x)), abs(~global2[_wgslsmith_index_u32(var_3, 26u)] | global2[_wgslsmith_index_u32(78859u, 26u)])), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-174f, var_1.d, 677f, 1214f))))))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.d) * _wgslsmith_div_f32(-132f, global0.a.b.d)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.d * var_1.d)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global0.a.b.d))), 114f))));
}


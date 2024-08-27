struct Struct_1 {
    a: vec2<u32>,
    b: vec3<u32>,
    c: vec2<i32>,
    d: f32,
    e: u32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: bool,
    c: vec4<u32>,
    d: vec4<u32>,
}

struct Struct_4 {
    a: vec4<bool>,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: u32,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<Struct_2, 24> = array<Struct_2, 24>(Struct_2(vec2<i32>(1i, 0i), Struct_1(vec2<u32>(32032u, 138609u), vec3<u32>(0u, 4294967295u, 1u), vec2<i32>(4854i, 1i), -969f, 85212u)), Struct_2(vec2<i32>(-30459i, -65247i), Struct_1(vec2<u32>(46488u, 0u), vec3<u32>(0u, 50488u, 40286u), vec2<i32>(1i, 0i), -266f, 4294967295u)), Struct_2(vec2<i32>(26798i, 15393i), Struct_1(vec2<u32>(0u, 19770u), vec3<u32>(0u, 1u, 1u), vec2<i32>(2147483647i, 2147483647i), 1129f, 45251u)), Struct_2(vec2<i32>(1i, 0i), Struct_1(vec2<u32>(0u, 4294967295u), vec3<u32>(4294967295u, 1u, 22912u), vec2<i32>(-9922i, 6215i), -726f, 1u)), Struct_2(vec2<i32>(26180i, 20297i), Struct_1(vec2<u32>(0u, 4162u), vec3<u32>(1134u, 4294967295u, 0u), vec2<i32>(-32700i, -39276i), -486f, 4294967295u)), Struct_2(vec2<i32>(i32(-2147483648), 1i), Struct_1(vec2<u32>(80310u, 1u), vec3<u32>(103232u, 72236u, 10108u), vec2<i32>(4063i, 0i), 180f, 29201u)), Struct_2(vec2<i32>(255i, 2147483647i), Struct_1(vec2<u32>(0u, 28097u), vec3<u32>(48286u, 42385u, 38473u), vec2<i32>(-13238i, i32(-2147483648)), 714f, 20525u)), Struct_2(vec2<i32>(-12586i, i32(-2147483648)), Struct_1(vec2<u32>(4294967295u, 82733u), vec3<u32>(0u, 624u, 26864u), vec2<i32>(-1i, 41649i), -269f, 0u)), Struct_2(vec2<i32>(3545i, 0i), Struct_1(vec2<u32>(5438u, 146819u), vec3<u32>(1u, 4294967295u, 4294967295u), vec2<i32>(i32(-2147483648), 23121i), -1486f, 3288u)), Struct_2(vec2<i32>(0i, -3869i), Struct_1(vec2<u32>(1u, 4294967295u), vec3<u32>(71110u, 15589u, 33246u), vec2<i32>(-3030i, -24834i), -1654f, 1u)), Struct_2(vec2<i32>(2147483647i, 1i), Struct_1(vec2<u32>(38674u, 4294967295u), vec3<u32>(45313u, 74368u, 0u), vec2<i32>(i32(-2147483648), -32623i), -1000f, 42407u)), Struct_2(vec2<i32>(29225i, -14006i), Struct_1(vec2<u32>(0u, 0u), vec3<u32>(0u, 3553u, 21645u), vec2<i32>(2147483647i, 16990i), -168f, 0u)), Struct_2(vec2<i32>(i32(-2147483648), -35090i), Struct_1(vec2<u32>(0u, 1u), vec3<u32>(19372u, 4294967295u, 4294967295u), vec2<i32>(-1i, 2147483647i), -1000f, 3139u)), Struct_2(vec2<i32>(17992i, -1i), Struct_1(vec2<u32>(39726u, 36918u), vec3<u32>(0u, 18405u, 4294967295u), vec2<i32>(0i, i32(-2147483648)), -2127f, 1u)), Struct_2(vec2<i32>(1i, 1i), Struct_1(vec2<u32>(1u, 40520u), vec3<u32>(4294967295u, 4294967295u, 1u), vec2<i32>(61354i, -35470i), -373f, 71662u)), Struct_2(vec2<i32>(-1i, 2147483647i), Struct_1(vec2<u32>(79905u, 1u), vec3<u32>(1u, 1u, 4294967295u), vec2<i32>(10033i, 2542i), -551f, 89432u)), Struct_2(vec2<i32>(54049i, 1i), Struct_1(vec2<u32>(34867u, 1u), vec3<u32>(1u, 65896u, 4294967295u), vec2<i32>(-52896i, 54478i), 456f, 3177u)), Struct_2(vec2<i32>(13818i, -6891i), Struct_1(vec2<u32>(83729u, 1u), vec3<u32>(32038u, 29134u, 0u), vec2<i32>(i32(-2147483648), 2147483647i), 490f, 1u)), Struct_2(vec2<i32>(0i, 8923i), Struct_1(vec2<u32>(1u, 10484u), vec3<u32>(4294967295u, 4294967295u, 19229u), vec2<i32>(1i, i32(-2147483648)), -701f, 0u)), Struct_2(vec2<i32>(1i, 1i), Struct_1(vec2<u32>(1u, 0u), vec3<u32>(10541u, 18253u, 4294967295u), vec2<i32>(-5776i, 1i), 2033f, 4294967295u)), Struct_2(vec2<i32>(2147483647i, -9211i), Struct_1(vec2<u32>(4294967295u, 81796u), vec3<u32>(20842u, 52641u, 4294967295u), vec2<i32>(24244i, 1971i), -165f, 67219u)), Struct_2(vec2<i32>(1i, 3479i), Struct_1(vec2<u32>(4294967295u, 6409u), vec3<u32>(4294967295u, 4294967295u, 1u), vec2<i32>(-37987i, 3656i), -1168f, 1u)), Struct_2(vec2<i32>(-37195i, 0i), Struct_1(vec2<u32>(1u, 0u), vec3<u32>(1u, 1u, 1u), vec2<i32>(-1i, -44609i), -723f, 11170u)), Struct_2(vec2<i32>(i32(-2147483648), i32(-2147483648)), Struct_1(vec2<u32>(41491u, 0u), vec3<u32>(4294967295u, 64696u, 45620u), vec2<i32>(1i, -52801i), 887f, 75343u)));

var<private> global2: Struct_4 = Struct_4(vec4<bool>(true, true, true, false), vec4<f32>(-699f, -191f, 206f, 123f));

var<private> global3: Struct_3;

var<private> global4: array<Struct_3, 2>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_2() -> vec2<f32> {
    global3 = global4[_wgslsmith_index_u32(4294967295u, 2u)];
    var var_0 = 272f;
    global4 = array<Struct_3, 2>();
    let var_1 = global2.b.x;
    var var_2 = _wgslsmith_f_op_f32(-1662f * -1000f);
    return vec2<f32>(-921f, _wgslsmith_f_op_f32(-1000f + global2.b.x));
}

fn func_3(arg_0: vec4<i32>, arg_1: u32, arg_2: Struct_4, arg_3: Struct_3) -> bool {
    return true;
}

fn func_1(arg_0: vec3<u32>, arg_1: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_2()) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global2.b.zx) - vec2<f32>(_wgslsmith_f_op_f32(arg_1.d - -452f), _wgslsmith_f_op_f32(global2.b.x + global2.b.x)))));
    var var_1 = select(select(!(!select(vec4<bool>(false, global2.a.x, true, global3.b), vec4<bool>(false, false, global2.a.x, global2.a.x), false)), vec4<bool>(!func_3(vec4<i32>(arg_1.c.x, -55424i, 21120i, arg_1.c.x), u_input.b.x, Struct_4(global2.a, global2.b), Struct_3(false, global2.a.x, vec4<u32>(0u, 4294967295u, 917u, u_input.b.x), vec4<u32>(arg_0.x, 50944u, 46204u, 4294967295u))), select(true, true, global2.a.x || global3.b), true, true), select(select(!vec4<bool>(true, global3.a, true, true), select(global2.a, global2.a, vec4<bool>(global3.b, false, global2.a.x, true)), arg_1.c.x >= 2147483647i), vec4<bool>(true, global2.a.x, func_3(vec4<i32>(arg_1.c.x, 51161i, -1i, -50011i), global3.c.x, Struct_4(global2.a, vec4<f32>(541f, -525f, 966f, global2.b.x)), global4[_wgslsmith_index_u32(0u, 2u)]), global2.a.x || global2.a.x), global2.a)), global2.a, select(global2.a, global2.a, global2.a));
    let var_2 = global2.a.wx;
    global0 = 4294967295u;
    var var_3 = Struct_2(-vec2<i32>(-firstTrailingBit(arg_1.c.x), arg_1.c.x), Struct_1(~vec2<u32>(~4294967295u, _wgslsmith_mult_u32(global3.d.x, 625u)), countOneBits(arg_0 & ~vec3<u32>(70685u, 7944u, 13843u)), max(min(_wgslsmith_sub_vec2_i32(arg_1.c, vec2<i32>(arg_1.c.x, -1i)), vec2<i32>(-55169i, arg_1.c.x)), ~max(vec2<i32>(arg_1.c.x, 21397i), vec2<i32>(arg_1.c.x, arg_1.c.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(174f)), _wgslsmith_f_op_f32(min(global2.b.x, _wgslsmith_f_op_f32(sign(1020f))))), u_input.a.x));
    return Struct_1((~var_3.b.a << (_wgslsmith_mult_vec2_u32(~vec2<u32>(47192u, arg_1.e), global3.c.xy ^ vec2<u32>(arg_0.x, var_3.b.a.x)) % vec2<u32>(32u))) & ~(~vec2<u32>(32931u, global3.d.x)), global3.d.wwy, arg_1.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.b.x) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-940f - global2.b.x), _wgslsmith_f_op_f32(floor(-399f)))))), var_3.b.b.x);
}

fn func_4(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: u32) -> vec3<u32> {
    let var_0 = global4[_wgslsmith_index_u32(45258u, 2u)];
    var var_1 = 997f;
    global2 = Struct_4(vec4<bool>(global2.a.x, arg_0.d <= _wgslsmith_f_op_f32(select(1302f, 1259f, arg_0.d == -523f)), var_0.b || global2.a.x, global2.a.x), _wgslsmith_f_op_vec4_f32(global2.b - global2.b));
    global0 = _wgslsmith_add_u32(_wgslsmith_sub_u32(arg_2, 11249u), ~0u);
    let var_2 = global3.d;
    return _wgslsmith_sub_vec3_u32(reverseBits(vec3<u32>(~15382u, 0u, arg_1.x)), ~arg_0.b);
}

fn func_5(arg_0: Struct_1, arg_1: Struct_4, arg_2: bool) -> Struct_4 {
    let var_0 = Struct_4(select(vec4<bool>(!arg_1.a.x, true, any(!global2.a), arg_1.a.x), !global2.a, false), vec4<f32>(_wgslsmith_f_op_f32(abs(arg_0.d)), _wgslsmith_f_op_f32(sign(818f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global2.b.x))), _wgslsmith_f_op_f32(-global2.b.x)));
    global3 = global4[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, ~u_input.a.x), ~vec2<u32>(22821u, arg_0.e) >> (~global3.c.wy % vec2<u32>(32u))) >> (12815u % 32u), 2u)];
    var var_1 = arg_0.b.zz;
    let var_2 = global2.a;
    let var_3 = global4[_wgslsmith_index_u32(24583u, 2u)];
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<Struct_3, 2>();
    let var_0 = ~2147483647i;
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global2.b.x, 618f, 543f))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-527f, -1116f, 372f) + vec3<f32>(global2.b.x, global2.b.x, global2.b.x)) * _wgslsmith_f_op_vec3_f32(-global2.b.zxx)))));
    global3 = global4[_wgslsmith_index_u32(u_input.a.x, 2u)];
    global2 = func_5(Struct_1(~abs(min(u_input.b, vec2<u32>(global3.d.x, 1u))), func_4(func_1(vec3<u32>(24192u, 4294967295u, global3.d.x), Struct_1(vec2<u32>(global3.d.x, u_input.b.x), vec3<u32>(46648u, global3.c.x, global3.d.x), vec2<i32>(-1i, 2869i), -741f, 1u)), _wgslsmith_div_vec2_u32(vec2<u32>(global3.d.x, u_input.b.x), vec2<u32>(1u, u_input.a.x)), 1u) & ~u_input.a.xwx, ~(~max(vec2<i32>(var_0, var_0), vec2<i32>(var_0, var_0))), _wgslsmith_f_op_f32(global2.b.x + -849f), _wgslsmith_div_u32(_wgslsmith_div_u32(_wgslsmith_mult_u32(u_input.a.x, 0u), firstLeadingBit(global3.d.x)), u_input.b.x)), Struct_4(select(global2.a, !vec4<bool>(false, false, false, global2.a.x), select(select(global2.a, vec4<bool>(false, global3.b, global2.a.x, false), true), global2.a, true)), global2.b), true);
    let var_2 = Struct_3(global2.a.x, false, abs(vec4<u32>(9146u, u_input.b.x, ~_wgslsmith_dot_vec3_u32(u_input.a.xyx, u_input.a.yxy), func_1(select(global3.d.zzw, u_input.a.zyw, global2.a.zzw), Struct_1(global3.d.yx, vec3<u32>(52579u, global3.c.x, u_input.a.x), vec2<i32>(var_0, var_0), global2.b.x, u_input.a.x)).e)), ~(~(~(vec4<u32>(u_input.b.x, u_input.a.x, global3.c.x, global3.d.x) ^ vec4<u32>(u_input.a.x, global3.c.x, u_input.b.x, 70130u)))));
    let x = u_input.a;
    s_output = StorageBuffer(-countOneBits(-1i), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(global2.b.wz, func_5(func_1(var_2.c.xzz, Struct_1(vec2<u32>(0u, global3.d.x), global3.d.wzy, vec2<i32>(var_0, var_0), var_1.x, global3.d.x)), func_5(Struct_1(vec2<u32>(13426u, 53170u), vec3<u32>(1u, 0u, 4294967295u), vec2<i32>(14889i, var_0), 277f, 31399u), Struct_4(vec4<bool>(var_2.b, global3.a, global2.a.x, global2.a.x), vec4<f32>(894f, -379f, var_1.x, global2.b.x)), var_2.b), global3.a).b.wy)) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(global2.b.x, 357f) + vec2<f32>(var_1.x, var_1.x)))) - global2.b.xx)), _wgslsmith_mod_u32(4294967295u, global3.c.x << (select(max(u_input.a.x, var_2.d.x), 28192u, var_2.b) % 32u)), (24360u >> (~(28813u >> (u_input.a.x % 32u)) % 32u)) << (var_2.c.x % 32u), _wgslsmith_mod_i32(var_0 | func_1(vec3<u32>(var_2.c.x, var_2.c.x, 36273u), Struct_1(u_input.a.yw, vec3<u32>(1u, 24437u, global3.d.x), vec2<i32>(2147483647i, var_0), global2.b.x, 0u)).c.x, abs(_wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, 11147i), vec2<i32>(-1i, var_0)), 30749i ^ var_0))));
}


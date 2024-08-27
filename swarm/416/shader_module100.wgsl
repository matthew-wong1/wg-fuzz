struct Struct_1 {
    a: vec3<bool>,
    b: bool,
    c: u32,
    d: u32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec4<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: f32,
    d: f32,
    e: u32,
}

struct Struct_4 {
    a: i32,
    b: Struct_1,
    c: Struct_3,
    d: vec4<bool>,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec2<u32>,
    d: vec3<i32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 13> = array<vec2<f32>, 13>(vec2<f32>(-870f, 1830f), vec2<f32>(196f, 291f), vec2<f32>(386f, 173f), vec2<f32>(-293f, 1180f), vec2<f32>(-907f, -391f), vec2<f32>(-2127f, -1481f), vec2<f32>(-913f, -404f), vec2<f32>(-1000f, 2109f), vec2<f32>(758f, -2030f), vec2<f32>(778f, 747f), vec2<f32>(730f, -306f), vec2<f32>(1010f, 494f), vec2<f32>(157f, -1000f));

var<private> global1: array<f32, 26> = array<f32, 26>(132f, 530f, -430f, 403f, -1000f, 234f, -2913f, 947f, 278f, -208f, -925f, 1301f, -2115f, 205f, -2260f, 736f, -1607f, -1212f, 200f, 2611f, 151f, -916f, 319f, -1826f, 736f, 977f);

var<private> global2: array<Struct_2, 29>;

var<private> global3: array<Struct_4, 19> = array<Struct_4, 19>(Struct_4(59210i, Struct_1(vec3<bool>(false, true, true), true, 26460u, 42365u), Struct_3(Struct_1(vec3<bool>(true, false, true), true, 0u, 4294967295u), Struct_2(vec3<u32>(63775u, 32134u, 67423u), vec4<bool>(true, false, true, false)), -825f, 1227f, 47042u), vec4<bool>(false, true, false, false), vec4<u32>(3889u, 42186u, 4294967295u, 1u)), Struct_4(-46135i, Struct_1(vec3<bool>(true, true, false), true, 1u, 1732u), Struct_3(Struct_1(vec3<bool>(true, false, false), false, 0u, 4294967295u), Struct_2(vec3<u32>(0u, 4294967295u, 109620u), vec4<bool>(true, false, true, true)), 1000f, 262f, 31978u), vec4<bool>(false, false, true, false), vec4<u32>(4294967295u, 1u, 4294967295u, 1u)), Struct_4(-7i, Struct_1(vec3<bool>(true, true, true), true, 0u, 75995u), Struct_3(Struct_1(vec3<bool>(true, false, false), true, 12000u, 1u), Struct_2(vec3<u32>(1u, 0u, 108410u), vec4<bool>(false, false, false, false)), -379f, 393f, 0u), vec4<bool>(true, true, false, false), vec4<u32>(1u, 1u, 20804u, 4294967295u)), Struct_4(38197i, Struct_1(vec3<bool>(false, true, true), false, 51912u, 1u), Struct_3(Struct_1(vec3<bool>(true, true, true), false, 53724u, 1u), Struct_2(vec3<u32>(4294967295u, 1u, 26283u), vec4<bool>(false, false, false, true)), 196f, -1112f, 16455u), vec4<bool>(false, true, false, false), vec4<u32>(107084u, 0u, 75227u, 4294967295u)), Struct_4(-72572i, Struct_1(vec3<bool>(false, true, false), true, 0u, 5369u), Struct_3(Struct_1(vec3<bool>(false, true, false), false, 1u, 0u), Struct_2(vec3<u32>(0u, 15412u, 4461u), vec4<bool>(true, false, false, true)), 364f, -519f, 1u), vec4<bool>(true, false, true, false), vec4<u32>(4294967295u, 4294967295u, 0u, 53627u)), Struct_4(142i, Struct_1(vec3<bool>(true, false, true), true, 34733u, 1u), Struct_3(Struct_1(vec3<bool>(true, false, true), false, 4294967295u, 54845u), Struct_2(vec3<u32>(4294967295u, 1u, 4294967295u), vec4<bool>(false, false, false, false)), -278f, -1351f, 4294967295u), vec4<bool>(false, false, false, true), vec4<u32>(1u, 19305u, 0u, 57553u)), Struct_4(23253i, Struct_1(vec3<bool>(false, false, false), false, 83958u, 109174u), Struct_3(Struct_1(vec3<bool>(true, false, false), true, 1u, 1u), Struct_2(vec3<u32>(9139u, 0u, 10516u), vec4<bool>(true, true, true, true)), -1078f, -956f, 24802u), vec4<bool>(true, false, false, false), vec4<u32>(9768u, 1u, 0u, 34025u)), Struct_4(i32(-2147483648), Struct_1(vec3<bool>(false, false, false), false, 48209u, 4294967295u), Struct_3(Struct_1(vec3<bool>(false, false, true), true, 0u, 4756u), Struct_2(vec3<u32>(31629u, 29741u, 14489u), vec4<bool>(true, false, false, false)), -1000f, -929f, 0u), vec4<bool>(false, false, true, false), vec4<u32>(10094u, 4294967295u, 4294967295u, 0u)), Struct_4(-57554i, Struct_1(vec3<bool>(true, true, false), true, 80451u, 0u), Struct_3(Struct_1(vec3<bool>(true, true, false), true, 80769u, 16137u), Struct_2(vec3<u32>(0u, 37361u, 1u), vec4<bool>(false, true, false, true)), 1909f, -459f, 1u), vec4<bool>(false, true, true, true), vec4<u32>(0u, 5690u, 7416u, 4294967295u)), Struct_4(2147483647i, Struct_1(vec3<bool>(true, true, false), true, 56962u, 0u), Struct_3(Struct_1(vec3<bool>(true, false, true), true, 4294967295u, 6986u), Struct_2(vec3<u32>(4294967295u, 11307u, 58817u), vec4<bool>(false, false, false, true)), -1618f, -163f, 0u), vec4<bool>(false, true, true, true), vec4<u32>(6097u, 77820u, 32454u, 0u)), Struct_4(2147483647i, Struct_1(vec3<bool>(true, false, true), false, 0u, 20039u), Struct_3(Struct_1(vec3<bool>(false, false, true), true, 17401u, 4294967295u), Struct_2(vec3<u32>(26503u, 81804u, 19881u), vec4<bool>(true, false, false, true)), 229f, 512f, 44980u), vec4<bool>(true, false, false, false), vec4<u32>(20717u, 4294967295u, 36396u, 30344u)), Struct_4(-1i, Struct_1(vec3<bool>(true, true, true), true, 0u, 1025u), Struct_3(Struct_1(vec3<bool>(false, true, true), true, 26966u, 1u), Struct_2(vec3<u32>(1u, 1u, 2632u), vec4<bool>(true, true, true, true)), -546f, -1139f, 4294967295u), vec4<bool>(true, false, false, true), vec4<u32>(0u, 1433u, 20882u, 21196u)), Struct_4(32305i, Struct_1(vec3<bool>(true, true, false), true, 1u, 31127u), Struct_3(Struct_1(vec3<bool>(false, true, true), true, 1u, 4294967295u), Struct_2(vec3<u32>(4294967295u, 1u, 21095u), vec4<bool>(true, false, false, true)), -164f, 1185f, 37510u), vec4<bool>(true, false, true, false), vec4<u32>(59162u, 0u, 4294967295u, 44192u)), Struct_4(-1i, Struct_1(vec3<bool>(true, false, true), true, 4294967295u, 54666u), Struct_3(Struct_1(vec3<bool>(false, true, true), false, 20168u, 17887u), Struct_2(vec3<u32>(57111u, 33706u, 0u), vec4<bool>(false, false, false, false)), -1583f, -988f, 1u), vec4<bool>(false, false, false, false), vec4<u32>(108350u, 1u, 10840u, 0u)), Struct_4(190i, Struct_1(vec3<bool>(true, false, false), false, 1u, 0u), Struct_3(Struct_1(vec3<bool>(true, false, true), false, 55259u, 1u), Struct_2(vec3<u32>(33345u, 3700u, 0u), vec4<bool>(true, false, false, false)), 436f, -666f, 58947u), vec4<bool>(false, false, true, true), vec4<u32>(1u, 0u, 1u, 18196u)), Struct_4(2147483647i, Struct_1(vec3<bool>(false, false, false), true, 0u, 32648u), Struct_3(Struct_1(vec3<bool>(false, false, true), true, 76244u, 1u), Struct_2(vec3<u32>(36002u, 11950u, 51027u), vec4<bool>(true, true, false, false)), -663f, -128f, 3684u), vec4<bool>(true, true, false, false), vec4<u32>(13315u, 1u, 4294967295u, 83859u)), Struct_4(-37794i, Struct_1(vec3<bool>(false, true, true), true, 0u, 4294967295u), Struct_3(Struct_1(vec3<bool>(false, true, true), false, 4294967295u, 32270u), Struct_2(vec3<u32>(43805u, 16576u, 24953u), vec4<bool>(true, false, true, true)), -1752f, 699f, 49993u), vec4<bool>(true, false, true, false), vec4<u32>(4294967295u, 0u, 1u, 28052u)), Struct_4(1i, Struct_1(vec3<bool>(true, true, false), false, 4294967295u, 4294967295u), Struct_3(Struct_1(vec3<bool>(false, true, true), false, 1u, 7378u), Struct_2(vec3<u32>(3478u, 4294967295u, 0u), vec4<bool>(false, false, true, true)), 139f, -661f, 63733u), vec4<bool>(false, false, false, false), vec4<u32>(9707u, 50070u, 509u, 11244u)), Struct_4(12318i, Struct_1(vec3<bool>(false, true, true), false, 1u, 1u), Struct_3(Struct_1(vec3<bool>(false, true, false), true, 2792u, 14074u), Struct_2(vec3<u32>(0u, 0u, 74629u), vec4<bool>(false, false, true, true)), 1040f, 505f, 5485u), vec4<bool>(false, false, true, false), vec4<u32>(67144u, 1u, 22990u, 1u)));

var<private> global4: array<bool, 17> = array<bool, 17>(false, false, false, false, false, true, false, false, true, false, false, true, false, true, true, true, true);

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: f32, arg_1: vec4<u32>) -> vec3<u32> {
    return ~arg_1.zyz;
}

fn func_2() -> Struct_2 {
    let var_0 = Struct_3(Struct_1(!(!(!vec3<bool>(global4[_wgslsmith_index_u32(u_input.c.x, 17u)], global4[_wgslsmith_index_u32(u_input.c.x, 17u)], false))), !(_wgslsmith_mod_i32(u_input.e.x, u_input.d.x) > ~(-37420i)), _wgslsmith_div_u32(8999u, 51268u), ~u_input.b), Struct_2(func_3(global1[_wgslsmith_index_u32(89663u, 26u)], firstLeadingBit(vec4<u32>(u_input.b, 9329u, u_input.b, 5845u))), !select(select(vec4<bool>(global4[_wgslsmith_index_u32(4294967295u, 17u)], false, true, false), vec4<bool>(true, false, true, global4[_wgslsmith_index_u32(16249u, 17u)]), vec4<bool>(true, global4[_wgslsmith_index_u32(10125u, 17u)], global4[_wgslsmith_index_u32(u_input.c.x, 17u)], false)), vec4<bool>(global4[_wgslsmith_index_u32(u_input.c.x, 17u)], false, true, true), global4[_wgslsmith_index_u32(abs(u_input.c.x), 17u)])), global1[_wgslsmith_index_u32(u_input.b, 26u)], global1[_wgslsmith_index_u32(abs(u_input.b), 26u)], ~_wgslsmith_mult_u32(37721u, ~(5634u << (u_input.b % 32u))));
    let var_1 = Struct_1(var_0.a.a, select(global4[_wgslsmith_index_u32(~u_input.c.x, 17u)], global4[_wgslsmith_index_u32(11982u, 17u)], true), 70754u, ~(~reverseBits(var_0.a.c)));
    var var_2 = 123825u ^ reverseBits(~(~_wgslsmith_add_u32(45741u, var_1.d)));
    var var_3 = -2147483647i;
    let var_4 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(-1924f))));
    return global2[_wgslsmith_index_u32(var_1.d, 29u)];
}

fn func_4(arg_0: Struct_2) -> Struct_1 {
    let var_0 = max(_wgslsmith_add_u32(~u_input.c.x, 1u), 91096u);
    global4 = array<bool, 17>();
    global3 = array<Struct_4, 19>();
    let var_1 = global3[_wgslsmith_index_u32(~_wgslsmith_sub_u32(countOneBits(_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(var_0, var_0), u_input.c), func_2().a.xz)), var_0), 19u)];
    global0 = array<vec2<f32>, 13>();
    return var_1.c.a;
}

fn func_1(arg_0: Struct_2, arg_1: vec2<f32>) -> Struct_4 {
    global0 = array<vec2<f32>, 13>();
    var var_0 = func_4(func_2());
    let var_1 = Struct_4(_wgslsmith_add_i32(~11554i, _wgslsmith_sub_i32(u_input.d.x, u_input.a.x)), func_4(arg_0), Struct_3(Struct_1(arg_0.b.xyx, true, _wgslsmith_sub_u32(var_0.d ^ arg_0.a.x, _wgslsmith_add_u32(u_input.c.x, 60718u)), u_input.c.x), func_2(), 1000f, global1[_wgslsmith_index_u32(arg_0.a.x, 26u)], u_input.b), select(arg_0.b, arg_0.b, var_0.a.x), ~(vec4<u32>(~1u, var_0.d, 25347u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, var_0.c), u_input.c)) >> ((~vec4<u32>(1u, arg_0.a.x, u_input.c.x, var_0.d) & ~vec4<u32>(1u, u_input.c.x, arg_0.a.x, 32360u)) % vec4<u32>(32u))));
    global0 = array<vec2<f32>, 13>();
    let var_2 = var_1.c.d;
    return Struct_4(-20194i, Struct_1(!select(!var_0.a, select(var_0.a, vec3<bool>(var_0.a.x, var_1.b.a.x, false), true), var_1.d.yyw), !var_1.b.a.x, _wgslsmith_sub_u32(~u_input.c.x, ~0u) & ~(~var_0.d), max(~1u, _wgslsmith_div_u32(func_4(Struct_2(vec3<u32>(arg_0.a.x, 0u, 58945u), arg_0.b)).d, u_input.b))), Struct_3(var_1.b, var_1.c.b, arg_1.x, 157f, 4294967295u), select(func_2().b, vec4<bool>(true, global4[_wgslsmith_index_u32(arg_0.a.x, 17u)], true, global4[_wgslsmith_index_u32(1u, 17u)]), false), ~(~(~var_1.e)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -19370i;
    global0 = array<vec2<f32>, 13>();
    global1 = array<f32, 26>();
    global4 = array<bool, 17>();
    var var_1 = func_1(global2[_wgslsmith_index_u32(59353u, 29u)], global0[_wgslsmith_index_u32(u_input.c.x, 13u)]);
    let var_2 = Struct_1(!var_1.b.a, !global4[_wgslsmith_index_u32(func_2().a.x, 17u)], abs(56644u), var_1.b.d);
    let var_3 = Struct_4(-select(~1i, 0i, global4[_wgslsmith_index_u32(u_input.c.x, 17u)]), func_4(var_1.c.b), Struct_3(Struct_1(!(!vec3<bool>(global4[_wgslsmith_index_u32(var_2.c, 17u)], true, global4[_wgslsmith_index_u32(var_2.c, 17u)])), true, ~4294967295u, ~103075u), func_1(Struct_2(vec3<u32>(0u, 1u, 12768u), select(var_1.d, var_1.c.b.b, var_1.d)), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.c.d, -1000f))))).c.b, 456f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(global1[_wgslsmith_index_u32(0u, 26u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.c.x, 26u)])))), ~u_input.c.x), var_1.c.b.b, ~firstTrailingBit(var_1.e));
    global2 = array<Struct_2, 29>();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c, vec2<u32>(~func_2().a.x, 18293u) >> (vec2<u32>(var_2.c, 30034u) % vec2<u32>(32u)), 2147483647i, -(-36691i & ~(var_1.a | 28241i)));
}


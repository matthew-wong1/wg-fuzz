struct Struct_1 {
    a: bool,
    b: u32,
    c: vec4<bool>,
}

struct Struct_2 {
    a: i32,
    b: vec4<i32>,
    c: vec2<u32>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<f32>,
}

struct Struct_4 {
    a: Struct_1,
    b: bool,
    c: i32,
    d: Struct_2,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 11> = array<Struct_4, 11>(Struct_4(Struct_1(true, 1u, vec4<bool>(false, true, false, true)), true, -57048i, Struct_2(0i, vec4<i32>(20148i, -26768i, 26019i, 5479i), vec2<u32>(58538u, 1u), Struct_1(false, 0u, vec4<bool>(false, false, false, true))), vec3<i32>(i32(-2147483648), 1i, -35372i)), Struct_4(Struct_1(true, 4294967295u, vec4<bool>(false, false, false, true)), true, 28212i, Struct_2(27498i, vec4<i32>(29240i, -1i, -1i, 1i), vec2<u32>(37080u, 35150u), Struct_1(false, 4543u, vec4<bool>(true, true, true, true))), vec3<i32>(-7120i, 2147483647i, -50088i)), Struct_4(Struct_1(true, 22114u, vec4<bool>(true, true, false, true)), true, 29946i, Struct_2(i32(-2147483648), vec4<i32>(-2111i, -17855i, -11343i, 0i), vec2<u32>(76852u, 4294967295u), Struct_1(true, 24693u, vec4<bool>(true, false, true, false))), vec3<i32>(i32(-2147483648), 2147483647i, 7385i)), Struct_4(Struct_1(false, 50101u, vec4<bool>(true, true, false, true)), true, -5382i, Struct_2(0i, vec4<i32>(-70424i, i32(-2147483648), 0i, 20490i), vec2<u32>(27520u, 15854u), Struct_1(true, 0u, vec4<bool>(true, true, true, true))), vec3<i32>(-1i, i32(-2147483648), 2147483647i)), Struct_4(Struct_1(false, 72235u, vec4<bool>(false, false, false, true)), false, -2421i, Struct_2(40450i, vec4<i32>(-74475i, 0i, 16236i, -13976i), vec2<u32>(67337u, 4294967295u), Struct_1(true, 3470u, vec4<bool>(false, false, false, true))), vec3<i32>(15004i, 0i, -1i)), Struct_4(Struct_1(false, 1u, vec4<bool>(true, true, false, true)), true, 1i, Struct_2(-1i, vec4<i32>(0i, 5032i, -51605i, 3720i), vec2<u32>(0u, 17386u), Struct_1(false, 53355u, vec4<bool>(true, false, false, true))), vec3<i32>(-48610i, -69257i, -1i)), Struct_4(Struct_1(false, 38234u, vec4<bool>(false, true, true, true)), false, 1i, Struct_2(-31058i, vec4<i32>(2147483647i, 22394i, 13854i, -11943i), vec2<u32>(28238u, 4294967295u), Struct_1(false, 25048u, vec4<bool>(true, true, true, false))), vec3<i32>(2147483647i, 59576i, 0i)), Struct_4(Struct_1(false, 18466u, vec4<bool>(false, false, true, false)), true, i32(-2147483648), Struct_2(34983i, vec4<i32>(10483i, 1i, 23253i, -25734i), vec2<u32>(76464u, 6796u), Struct_1(true, 1u, vec4<bool>(false, true, true, false))), vec3<i32>(1i, -35129i, 58558i)), Struct_4(Struct_1(true, 2214u, vec4<bool>(true, false, true, true)), true, -1i, Struct_2(1i, vec4<i32>(3412i, -1i, 1i, 21094i), vec2<u32>(0u, 18218u), Struct_1(false, 116033u, vec4<bool>(false, false, false, false))), vec3<i32>(-1i, -27383i, 2147483647i)), Struct_4(Struct_1(true, 31531u, vec4<bool>(true, false, false, true)), false, 8507i, Struct_2(i32(-2147483648), vec4<i32>(-14866i, -11235i, 2147483647i, -1i), vec2<u32>(0u, 0u), Struct_1(true, 42003u, vec4<bool>(false, true, true, true))), vec3<i32>(-19912i, -8560i, -40174i)), Struct_4(Struct_1(true, 0u, vec4<bool>(false, false, false, true)), true, 26803i, Struct_2(-10088i, vec4<i32>(i32(-2147483648), 1i, -1i, i32(-2147483648)), vec2<u32>(7057u, 13710u), Struct_1(false, 17970u, vec4<bool>(false, true, false, false))), vec3<i32>(0i, -73273i, 2147483647i)));

var<private> global1: vec3<u32>;

var<private> global2: Struct_1;

var<private> global3: array<Struct_4, 19> = array<Struct_4, 19>(Struct_4(Struct_1(true, 7057u, vec4<bool>(false, true, true, false)), false, -21987i, Struct_2(-34214i, vec4<i32>(-1i, -7481i, 47858i, -18597i), vec2<u32>(0u, 1u), Struct_1(true, 31342u, vec4<bool>(true, true, true, false))), vec3<i32>(1752i, -34117i, -85194i)), Struct_4(Struct_1(true, 0u, vec4<bool>(true, false, false, false)), false, 2147483647i, Struct_2(-1i, vec4<i32>(i32(-2147483648), i32(-2147483648), 1i, 4211i), vec2<u32>(1u, 87776u), Struct_1(true, 62593u, vec4<bool>(true, true, true, true))), vec3<i32>(-4868i, i32(-2147483648), 660i)), Struct_4(Struct_1(true, 4294967295u, vec4<bool>(true, false, false, false)), true, 34118i, Struct_2(-79298i, vec4<i32>(i32(-2147483648), 0i, -72954i, 0i), vec2<u32>(1u, 0u), Struct_1(true, 7491u, vec4<bool>(true, false, true, false))), vec3<i32>(2147483647i, 1i, 14868i)), Struct_4(Struct_1(true, 1u, vec4<bool>(true, false, false, true)), true, 0i, Struct_2(-1i, vec4<i32>(-26202i, i32(-2147483648), 25686i, i32(-2147483648)), vec2<u32>(8093u, 4294967295u), Struct_1(false, 1u, vec4<bool>(true, false, true, true))), vec3<i32>(-5997i, 0i, 1114i)), Struct_4(Struct_1(true, 82648u, vec4<bool>(true, true, true, true)), true, 2147483647i, Struct_2(38211i, vec4<i32>(1i, 2147483647i, 0i, 17877i), vec2<u32>(4294967295u, 1u), Struct_1(false, 20930u, vec4<bool>(true, false, true, true))), vec3<i32>(1i, 24118i, -1i)), Struct_4(Struct_1(true, 4294967295u, vec4<bool>(false, true, false, true)), false, 1i, Struct_2(13212i, vec4<i32>(-5909i, 46599i, 57719i, i32(-2147483648)), vec2<u32>(4294967295u, 1081u), Struct_1(false, 1u, vec4<bool>(false, false, true, false))), vec3<i32>(-21577i, -1i, i32(-2147483648))), Struct_4(Struct_1(true, 50021u, vec4<bool>(false, false, true, true)), false, 11863i, Struct_2(-80993i, vec4<i32>(-63345i, -7093i, 61390i, 55329i), vec2<u32>(36273u, 0u), Struct_1(true, 1u, vec4<bool>(false, true, true, false))), vec3<i32>(-1i, 26958i, -38473i)), Struct_4(Struct_1(true, 1u, vec4<bool>(true, false, true, true)), true, 38291i, Struct_2(2147483647i, vec4<i32>(i32(-2147483648), -16213i, 0i, -1i), vec2<u32>(34947u, 22107u), Struct_1(true, 4294967295u, vec4<bool>(true, true, false, false))), vec3<i32>(-17133i, -33567i, -1i)), Struct_4(Struct_1(true, 1u, vec4<bool>(false, false, true, false)), true, i32(-2147483648), Struct_2(-1i, vec4<i32>(i32(-2147483648), 0i, 11385i, 0i), vec2<u32>(4294967295u, 1u), Struct_1(false, 1u, vec4<bool>(false, true, false, false))), vec3<i32>(2147483647i, i32(-2147483648), 0i)), Struct_4(Struct_1(false, 3863u, vec4<bool>(true, false, false, false)), false, 38112i, Struct_2(2147483647i, vec4<i32>(2147483647i, 28058i, 2147483647i, i32(-2147483648)), vec2<u32>(34094u, 1u), Struct_1(false, 1u, vec4<bool>(true, false, true, true))), vec3<i32>(-6801i, 2147483647i, -12302i)), Struct_4(Struct_1(true, 15755u, vec4<bool>(false, true, false, false)), false, 0i, Struct_2(-26234i, vec4<i32>(1256i, 58430i, -22894i, -42770i), vec2<u32>(73686u, 30589u), Struct_1(false, 1u, vec4<bool>(true, true, true, true))), vec3<i32>(28829i, 8014i, 2147483647i)), Struct_4(Struct_1(false, 28821u, vec4<bool>(false, false, false, false)), false, -1i, Struct_2(29996i, vec4<i32>(-1i, i32(-2147483648), 18597i, i32(-2147483648)), vec2<u32>(5745u, 14100u), Struct_1(false, 84928u, vec4<bool>(false, true, true, true))), vec3<i32>(-20470i, 23789i, 25545i)), Struct_4(Struct_1(true, 0u, vec4<bool>(false, true, false, false)), true, i32(-2147483648), Struct_2(-7160i, vec4<i32>(9078i, 6955i, 2147483647i, 7150i), vec2<u32>(1286u, 1u), Struct_1(false, 4294967295u, vec4<bool>(true, true, true, true))), vec3<i32>(-39068i, -1624i, 11924i)), Struct_4(Struct_1(false, 31728u, vec4<bool>(false, false, false, false)), true, 23598i, Struct_2(2147483647i, vec4<i32>(9242i, i32(-2147483648), -6785i, 54661i), vec2<u32>(1u, 51380u), Struct_1(true, 23719u, vec4<bool>(true, false, true, false))), vec3<i32>(-46031i, 2147483647i, -21977i)), Struct_4(Struct_1(true, 29691u, vec4<bool>(false, false, true, true)), false, 33867i, Struct_2(0i, vec4<i32>(-5125i, i32(-2147483648), 1i, 14415i), vec2<u32>(0u, 18120u), Struct_1(true, 4294967295u, vec4<bool>(false, false, false, false))), vec3<i32>(13652i, 30226i, 0i)), Struct_4(Struct_1(false, 0u, vec4<bool>(false, true, false, true)), true, 25207i, Struct_2(-4564i, vec4<i32>(251i, 19084i, -30015i, 9555i), vec2<u32>(35609u, 5751u), Struct_1(true, 0u, vec4<bool>(true, true, false, true))), vec3<i32>(36080i, 2147483647i, -24459i)), Struct_4(Struct_1(true, 19116u, vec4<bool>(false, false, true, true)), true, i32(-2147483648), Struct_2(2147483647i, vec4<i32>(43126i, -27836i, -1i, -15272i), vec2<u32>(1u, 82833u), Struct_1(false, 19080u, vec4<bool>(true, true, true, false))), vec3<i32>(-1i, i32(-2147483648), -15301i)), Struct_4(Struct_1(false, 0u, vec4<bool>(true, true, false, true)), false, i32(-2147483648), Struct_2(37296i, vec4<i32>(2147483647i, -1i, i32(-2147483648), 13507i), vec2<u32>(4294967295u, 4294967295u), Struct_1(true, 42007u, vec4<bool>(false, false, false, true))), vec3<i32>(18132i, 29216i, i32(-2147483648))), Struct_4(Struct_1(false, 4294967295u, vec4<bool>(false, false, true, true)), true, 12657i, Struct_2(-1i, vec4<i32>(i32(-2147483648), i32(-2147483648), 10359i, 1i), vec2<u32>(1u, 0u), Struct_1(false, 1u, vec4<bool>(false, true, false, true))), vec3<i32>(i32(-2147483648), 33082i, i32(-2147483648))));

var<private> global4: bool;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2, arg_1: f32) -> u32 {
    var var_0 = arg_1;
    return select(arg_0.c.x, global1.x, global2.c.x);
}

fn func_2(arg_0: vec3<f32>, arg_1: vec2<bool>, arg_2: u32) -> Struct_2 {
    global3 = array<Struct_4, 19>();
    let var_0 = firstTrailingBit(86696u);
    global1 = ~(~min(vec3<u32>(0u, 4294967295u, ~global2.b), vec3<u32>(_wgslsmith_mod_u32(0u, arg_2), select(global2.b, 1u, false), var_0)));
    let var_1 = var_0 | reverseBits(select(_wgslsmith_mult_u32(1u, global1.x), _wgslsmith_sub_u32(u_input.a.x, func_3(Struct_2(u_input.b, vec4<i32>(u_input.b, u_input.b, u_input.b, -11768i), global1.xz, Struct_1(global2.a, 4294967295u, global2.c)), -555f)), true));
    global2 = Struct_1(global2.a, u_input.a.x, !vec4<bool>(true, true, global2.a, true));
    return Struct_2(countOneBits(_wgslsmith_dot_vec3_i32(~select(vec3<i32>(0i, u_input.b, -1i), vec3<i32>(17629i, u_input.b, u_input.b), true), vec3<i32>(~(-1i), -u_input.b, u_input.b))), countOneBits(-firstTrailingBit(-vec4<i32>(1i, -2147483647i, u_input.b, u_input.b))), ~(min(~vec2<u32>(arg_2, var_1), global1.xy) & u_input.a.wy), Struct_1(!all(vec3<bool>(false, false, global2.c.x)), var_0, !(!(!global2.c))));
}

fn func_1(arg_0: vec2<i32>, arg_1: Struct_4, arg_2: vec4<i32>) -> Struct_3 {
    var var_0 = 0i;
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-118f, -1146f, -665f)), vec3<f32>(239f, -350f, -612f))), vec3<f32>(-389f, -152f, _wgslsmith_f_op_f32(select(194f, 1023f, false))))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(927f, -1764f, -694f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1040f, -1450f, -283f), vec3<f32>(-339f, -1074f, 1148f), vec3<bool>(false, arg_1.d.d.c.x, global2.a))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-1094f, -1000f, -1683f) - vec3<f32>(1430f, -329f, 2736f)))))));
    var_0 = ((_wgslsmith_sub_i32(~1i, arg_1.d.a) << (abs(global2.b ^ 0u) % 32u)) & ~countOneBits(-19775i)) | -2147483647i;
    var var_2 = Struct_4(arg_1.d.d, any(global2.c.yz), _wgslsmith_mod_i32(arg_0.x, arg_0.x | ~_wgslsmith_div_i32(2147483647i, arg_0.x)), func_2(var_1, global2.c.wx, global2.b >> (global1.x % 32u)), -vec3<i32>(firstTrailingBit(-1i), arg_1.d.a, arg_2.x));
    let var_3 = true;
    return Struct_3(func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, 476f, -713f) - vec3<f32>(var_1.x, 918f, 173f))))), arg_1.a.c.zz, countOneBits(14799u)), var_1);
}

fn func_4(arg_0: Struct_3, arg_1: bool) -> i32 {
    global3 = array<Struct_4, 19>();
    let var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(446f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b.x)))));
    let var_1 = ~(arg_0.a.a | arg_0.a.a);
    global3 = array<Struct_4, 19>();
    global1 = ~(~vec3<u32>(u_input.a.x, 4294967295u, arg_0.a.c.x));
    return func_2(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0, var_0, -903f), arg_0.b, !vec3<bool>(arg_1, arg_0.a.d.a, false))))))), select(!vec2<bool>(arg_0.a.d.c.x, select(arg_0.a.d.a, true, arg_1)), !vec2<bool>(true, global2.c.x), !arg_1), 12260u).a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mult_vec3_i32(vec3<i32>(2147483647i, -1i, func_4(func_1(vec2<i32>(u_input.b, 0i), global3[_wgslsmith_index_u32(4294967295u, 19u)], vec4<i32>(u_input.b, u_input.b, -8460i, 25276i)), any(global2.c.yyw))) << (abs(_wgslsmith_mod_vec3_u32(u_input.a.xyw, u_input.a.wzz) << (max(u_input.a.zxz, u_input.a.www) % vec3<u32>(32u))) % vec3<u32>(32u)), _wgslsmith_div_vec3_i32(max(vec3<i32>(-2147483647i, 2147483647i, _wgslsmith_mod_i32(0i, u_input.b)), vec3<i32>(u_input.b, ~25791i, ~u_input.b)), vec3<i32>(-(u_input.b & -2147483647i), _wgslsmith_clamp_i32(u_input.b, -5995i, u_input.b) & max(1i, u_input.b), select(func_1(vec2<i32>(2147483647i, u_input.b), global3[_wgslsmith_index_u32(59618u, 19u)], vec4<i32>(u_input.b, -12299i, u_input.b, 18375i)).a.b.x, u_input.b, global2.a))));
    var var_1 = 0i;
    var_1 = 43898i;
    var_0 = ~vec3<i32>(-2147483647i, firstLeadingBit(reverseBits(abs(0i))), max(firstLeadingBit(~u_input.b), u_input.b));
    var var_2 = var_0.x;
    let x = u_input.a;
    s_output = StorageBuffer(0u, _wgslsmith_add_u32(_wgslsmith_mod_u32((1u & u_input.a.x) | 1u, global1.x), 22370u), ~_wgslsmith_mult_u32(_wgslsmith_add_u32(1u | global2.b, ~global2.b), _wgslsmith_sub_u32(global1.x, global2.b)), 51637u, 14239u);
}


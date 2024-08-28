struct Struct_1 {
    a: i32,
    b: vec4<u32>,
    c: vec2<u32>,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec4<u32>,
    d: i32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec4<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 5> = array<u32, 5>(11355u, 45932u, 0u, 20194u, 0u);

var<private> global1: array<vec3<bool>, 6> = array<vec3<bool>, 6>(vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(false, true, true));

var<private> global2: Struct_1;

var<private> global3: array<Struct_1, 31> = array<Struct_1, 31>(Struct_1(-1i, vec4<u32>(33499u, 4113u, 21733u, 0u), vec2<u32>(27041u, 0u), vec3<u32>(0u, 43642u, 1u)), Struct_1(36217i, vec4<u32>(26263u, 0u, 38919u, 4294967295u), vec2<u32>(1u, 21855u), vec3<u32>(4294967295u, 8764u, 1u)), Struct_1(2147483647i, vec4<u32>(4294967295u, 6843u, 0u, 16694u), vec2<u32>(115868u, 32051u), vec3<u32>(46464u, 44890u, 80327u)), Struct_1(-1i, vec4<u32>(0u, 61377u, 4294967295u, 4294967295u), vec2<u32>(0u, 0u), vec3<u32>(0u, 1u, 4294967295u)), Struct_1(1i, vec4<u32>(8480u, 4294967295u, 1u, 4294967295u), vec2<u32>(31151u, 14242u), vec3<u32>(53787u, 70094u, 4294967295u)), Struct_1(9181i, vec4<u32>(6332u, 0u, 4294967295u, 0u), vec2<u32>(3157u, 30634u), vec3<u32>(0u, 4294967295u, 51453u)), Struct_1(-24511i, vec4<u32>(1u, 37128u, 4294967295u, 62656u), vec2<u32>(0u, 1u), vec3<u32>(48903u, 30834u, 45988u)), Struct_1(-29215i, vec4<u32>(28518u, 1u, 4294967295u, 43585u), vec2<u32>(33354u, 4294967295u), vec3<u32>(4294967295u, 0u, 4294967295u)), Struct_1(-7336i, vec4<u32>(21040u, 50349u, 48094u, 1u), vec2<u32>(4294967295u, 49476u), vec3<u32>(1u, 4294967295u, 57635u)), Struct_1(5247i, vec4<u32>(1u, 4294967295u, 1u, 0u), vec2<u32>(341u, 3034u), vec3<u32>(14507u, 28676u, 4294967295u)), Struct_1(57272i, vec4<u32>(1u, 67446u, 4294967295u, 5984u), vec2<u32>(1u, 1u), vec3<u32>(36130u, 2248u, 25598u)), Struct_1(-2926i, vec4<u32>(1250u, 44804u, 77375u, 34992u), vec2<u32>(21096u, 12898u), vec3<u32>(1u, 4294967295u, 4294967295u)), Struct_1(53991i, vec4<u32>(0u, 8991u, 4294967295u, 4294967295u), vec2<u32>(1u, 41936u), vec3<u32>(38246u, 12934u, 4821u)), Struct_1(6212i, vec4<u32>(0u, 4294967295u, 27520u, 65692u), vec2<u32>(4294967295u, 0u), vec3<u32>(75420u, 0u, 3744u)), Struct_1(16005i, vec4<u32>(49471u, 65129u, 89113u, 1u), vec2<u32>(21738u, 53881u), vec3<u32>(4294967295u, 1u, 23600u)), Struct_1(31056i, vec4<u32>(0u, 24229u, 0u, 0u), vec2<u32>(33183u, 0u), vec3<u32>(43599u, 0u, 0u)), Struct_1(0i, vec4<u32>(28339u, 22973u, 3531u, 19354u), vec2<u32>(54164u, 1u), vec3<u32>(4294967295u, 0u, 0u)), Struct_1(-1i, vec4<u32>(0u, 1u, 42717u, 4294967295u), vec2<u32>(34756u, 14534u), vec3<u32>(4294967295u, 82671u, 44792u)), Struct_1(-4159i, vec4<u32>(0u, 36721u, 4294967295u, 0u), vec2<u32>(0u, 9226u), vec3<u32>(44525u, 1u, 27958u)), Struct_1(8026i, vec4<u32>(0u, 4294967295u, 0u, 19446u), vec2<u32>(14143u, 1u), vec3<u32>(12694u, 0u, 41661u)), Struct_1(2147483647i, vec4<u32>(53592u, 4294967295u, 0u, 4294967295u), vec2<u32>(43358u, 29019u), vec3<u32>(26874u, 1119u, 34979u)), Struct_1(1i, vec4<u32>(14533u, 4294967295u, 1u, 1u), vec2<u32>(1u, 4294967295u), vec3<u32>(46880u, 40648u, 78824u)), Struct_1(i32(-2147483648), vec4<u32>(126843u, 0u, 4294967295u, 0u), vec2<u32>(4294967295u, 29853u), vec3<u32>(8269u, 62179u, 8366u)), Struct_1(-1i, vec4<u32>(1u, 24675u, 4294967295u, 0u), vec2<u32>(1u, 0u), vec3<u32>(0u, 9009u, 29329u)), Struct_1(4427i, vec4<u32>(4851u, 6157u, 19892u, 0u), vec2<u32>(4294967295u, 0u), vec3<u32>(4294967295u, 4294967295u, 4294967295u)), Struct_1(34544i, vec4<u32>(4294967295u, 0u, 76033u, 6264u), vec2<u32>(0u, 2365u), vec3<u32>(4273u, 0u, 0u)), Struct_1(-29777i, vec4<u32>(58505u, 58142u, 4294967295u, 0u), vec2<u32>(1u, 1u), vec3<u32>(21002u, 40602u, 0u)), Struct_1(-1i, vec4<u32>(51088u, 81341u, 0u, 4294967295u), vec2<u32>(4294967295u, 43036u), vec3<u32>(4294967295u, 19204u, 73508u)), Struct_1(i32(-2147483648), vec4<u32>(23942u, 0u, 2768u, 4294967295u), vec2<u32>(14079u, 4294967295u), vec3<u32>(64076u, 4294967295u, 13853u)), Struct_1(19313i, vec4<u32>(4294967295u, 0u, 0u, 62692u), vec2<u32>(0u, 0u), vec3<u32>(9930u, 4707u, 47097u)), Struct_1(-1i, vec4<u32>(42355u, 1u, 85371u, 18451u), vec2<u32>(4294967295u, 23094u), vec3<u32>(4294967295u, 4294967295u, 15724u)));

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_1(arg_0: f32, arg_1: u32, arg_2: i32, arg_3: vec2<f32>) -> f32 {
    var var_0 = global2.d.zx;
    return _wgslsmith_f_op_f32(f32(-1f) * -926f);
}

fn func_3(arg_0: vec3<bool>, arg_1: bool, arg_2: Struct_1) -> u32 {
    let var_0 = _wgslsmith_dot_vec3_u32(vec3<u32>(arg_2.d.x, ~40138u, 21215u & u_input.c.x), u_input.c.wxy);
    let var_1 = Struct_1(~_wgslsmith_sub_i32(-2147483647i, -1i), ~(~global2.b), u_input.e, u_input.c.wyx);
    global1 = array<vec3<bool>, 6>();
    let var_2 = true;
    var var_3 = _wgslsmith_mult_vec3_i32(select(countOneBits(u_input.b.zxw & vec3<i32>(64632i, -21892i, 37829i)) | _wgslsmith_div_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(-2147483647i, global2.a, -2147483647i), vec3<i32>(0i, u_input.d, global2.a)), vec3<i32>(-2147483647i, -63464i, 1i)), -u_input.b.wyz, ((var_2 != var_2) | false) || (all(vec4<bool>(arg_0.x, var_2, false, true)) | any(vec3<bool>(true, var_2, var_2)))), vec3<i32>(_wgslsmith_clamp_i32(~1i, min(u_input.b.x << (1u % 32u), -arg_2.a), _wgslsmith_dot_vec2_i32(~u_input.b.xw, vec2<i32>(31643i, u_input.d))), arg_2.a, abs(arg_2.a)));
    return reverseBits(u_input.a & var_1.c.x);
}

fn func_2(arg_0: Struct_1, arg_1: i32) -> u32 {
    let var_0 = -vec4<i32>(10955i, select(-60316i, 2147483647i, true), global2.a, _wgslsmith_add_i32(arg_0.a, _wgslsmith_sub_i32(0i >> (arg_0.d.x % 32u), -18388i)));
    global2 = arg_0;
    var var_1 = global3[_wgslsmith_index_u32(func_3(vec3<bool>(!(!(global2.d.x <= 32866u)), false, true), select(!any(vec4<bool>(true, true, true, true)), any(vec2<bool>(true, true)) != false, select(any(vec4<bool>(true, false, false, true)), true, true) && (1u != global0[_wgslsmith_index_u32(~4294967295u, 5u)])), global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(~25229u, u_input.e.x >> (global2.c.x % 32u)), 31u)]), 31u)];
    var var_2 = Struct_1(~(-var_1.a), select(_wgslsmith_div_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(arg_0.d.x, 0u, global2.c.x, global2.b.x), vec4<u32>(4294967295u, 4294967295u, 10791u, 42921u)), _wgslsmith_clamp_vec4_u32(abs(u_input.c), ~u_input.c, ~vec4<u32>(0u, global0[_wgslsmith_index_u32(global2.b.x, 5u)], 24795u, var_1.d.x))), vec4<u32>(func_3(vec3<bool>(false, true, false), true, arg_0) & global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(global0[_wgslsmith_index_u32(21696u, 5u)], global2.c.x), 5u)], 6544u, global0[_wgslsmith_index_u32(0u, 5u)], abs(20342u)), !select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, true), false), false)), arg_0.d.xx, vec3<u32>(abs(_wgslsmith_dot_vec4_u32(~vec4<u32>(67191u, 1u, arg_0.b.x, arg_0.d.x), global2.b)), u_input.c.x, 1u));
    let var_3 = Struct_1(-15122i, _wgslsmith_mod_vec4_u32(vec4<u32>(global2.b.x, _wgslsmith_dot_vec3_u32(vec3<u32>(var_2.c.x, 15748u, arg_0.b.x), u_input.c.xwz) | 37737u, _wgslsmith_dot_vec4_u32(~vec4<u32>(28335u, 1u, 80435u, 4294967295u), ~vec4<u32>(0u, 74416u, u_input.a, 78595u)), 20806u), reverseBits(_wgslsmith_add_vec4_u32(arg_0.b, vec4<u32>(arg_0.d.x, global0[_wgslsmith_index_u32(global2.d.x, 5u)], u_input.a, arg_0.d.x))) >> (vec4<u32>(arg_0.c.x, ~4294967295u, ~arg_0.d.x, abs(0u)) % vec4<u32>(32u))), ~_wgslsmith_div_vec2_u32(abs(vec2<u32>(1u, 36448u) >> (var_1.c % vec2<u32>(32u))), vec2<u32>(arg_0.d.x, ~var_1.c.x)), _wgslsmith_div_vec3_u32(select(~vec3<u32>(u_input.e.x, var_1.b.x, arg_0.d.x), firstTrailingBit(_wgslsmith_mod_vec3_u32(global2.b.xxx, global2.b.xyw)), true), countOneBits(vec3<u32>(0u, global2.d.x, 4294967295u)) | firstTrailingBit(vec3<u32>(u_input.a, 1u, var_2.d.x) >> (vec3<u32>(global0[_wgslsmith_index_u32(var_2.b.x, 5u)], 6467u, var_2.d.x) % vec3<u32>(32u)))));
    return 4294967295u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(reverseBits(global2.a), _wgslsmith_mult_vec4_u32(u_input.c, min(~global2.b, ~global2.b)), min(global2.b.zw, u_input.c.xx), u_input.c.wzw);
    global3 = array<Struct_1, 31>();
    let var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-677f - _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_f32(-1131f - -1307f), max(global0[_wgslsmith_index_u32(~4294967295u, 5u)], global0[_wgslsmith_index_u32(1u, 5u)]), 36031i, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(424f, -525f), -734f))))));
    var_0 = Struct_1(min(~max(1i, _wgslsmith_mod_i32(2147483647i, u_input.d)), global2.a << (1u % 32u)), vec4<u32>(abs(10649u), select(firstTrailingBit(u_input.e.x), ~4294967295u, true), ~4294967295u, var_0.d.x), ~vec2<u32>(global0[_wgslsmith_index_u32(max(74968u, var_0.b.x), 5u)], func_2(global3[_wgslsmith_index_u32(global2.b.x, 31u)], var_0.a)) | firstLeadingBit(var_0.c), ~(~global2.b.zyy));
    let var_2 = ~(-var_0.a);
    let x = u_input.a;
    s_output = StorageBuffer(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(40000u, 70767u, 4294967295u, var_0.c.x), vec4<u32>(4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 5u)], 5u)], var_0.b.x, 5915u)), 79444u) >> (vec2<u32>(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.c.x, 5u)], 5u)], global2.d.x) % vec2<u32>(32u)), ~vec2<u32>(~global2.b.x, 11600u)), 5u)], ~select(reverseBits(min(48710u, 49142u)), global2.d.x, any(vec4<bool>(true, true, true, true))), ~reverseBits(vec4<i32>(global2.a, max(2147483647i, 42307i), -19996i, -1i)), global2.a);
}


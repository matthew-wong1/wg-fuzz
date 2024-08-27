struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec2<i32>,
    c: bool,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<i32>,
    c: f32,
    d: vec2<f32>,
    e: i32,
}

struct Struct_4 {
    a: vec2<f32>,
    b: Struct_1,
    c: vec4<i32>,
}

struct Struct_5 {
    a: i32,
    b: bool,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: vec4<i32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec4<i32>(0i, -1i, -13665i, -42185i), vec2<i32>(i32(-2147483648), -1i), true, Struct_1(-1268f), Struct_1(-369f));

var<private> global1: array<Struct_3, 16> = array<Struct_3, 16>(Struct_3(Struct_1(-197f), vec4<i32>(0i, 25312i, 18481i, -1i), 2252f, vec2<f32>(177f, 682f), 0i), Struct_3(Struct_1(734f), vec4<i32>(-14858i, 0i, 0i, 1i), -1569f, vec2<f32>(230f, -176f), 13074i), Struct_3(Struct_1(-2601f), vec4<i32>(2147483647i, -2528i, 27219i, -6634i), 1739f, vec2<f32>(1000f, -3054f), 9805i), Struct_3(Struct_1(-1597f), vec4<i32>(5806i, 0i, -1i, -778i), 598f, vec2<f32>(257f, -961f), 104234i), Struct_3(Struct_1(-1000f), vec4<i32>(16230i, i32(-2147483648), -6418i, 41534i), -313f, vec2<f32>(-277f, 663f), -20102i), Struct_3(Struct_1(1107f), vec4<i32>(i32(-2147483648), -49775i, 0i, i32(-2147483648)), 188f, vec2<f32>(2655f, -536f), -58040i), Struct_3(Struct_1(-1061f), vec4<i32>(i32(-2147483648), -1i, 58336i, 0i), 114f, vec2<f32>(-1000f, 1080f), -43633i), Struct_3(Struct_1(1365f), vec4<i32>(40624i, -1i, 0i, -23692i), -1000f, vec2<f32>(287f, 2339f), 11467i), Struct_3(Struct_1(-325f), vec4<i32>(-1i, 1i, 49536i, 24721i), -1176f, vec2<f32>(-1462f, 1352f), 2147483647i), Struct_3(Struct_1(2293f), vec4<i32>(2147483647i, 1i, 16897i, -509i), 398f, vec2<f32>(1391f, -2454f), 0i), Struct_3(Struct_1(-1384f), vec4<i32>(1i, 27300i, 0i, 1i), -1582f, vec2<f32>(-948f, 900f), -16306i), Struct_3(Struct_1(771f), vec4<i32>(13128i, -42363i, 0i, -1i), -320f, vec2<f32>(344f, -527f), 8461i), Struct_3(Struct_1(239f), vec4<i32>(12221i, -1i, -37695i, 60537i), -291f, vec2<f32>(1000f, -380f), -50109i), Struct_3(Struct_1(-389f), vec4<i32>(-1i, 30786i, 28138i, 21815i), 652f, vec2<f32>(-913f, -1015f), -29909i), Struct_3(Struct_1(783f), vec4<i32>(i32(-2147483648), 21461i, 30094i, -1i), -1117f, vec2<f32>(1714f, 325f), 16530i), Struct_3(Struct_1(-845f), vec4<i32>(-802i, 2147483647i, -1i, -16099i), 845f, vec2<f32>(914f, 1947f), 6373i));

var<private> global2: array<Struct_5, 19> = array<Struct_5, 19>(Struct_5(i32(-2147483648), true, vec2<u32>(11243u, 15317u)), Struct_5(-11429i, true, vec2<u32>(1u, 4294967295u)), Struct_5(46800i, false, vec2<u32>(11396u, 12025u)), Struct_5(2147483647i, true, vec2<u32>(49623u, 0u)), Struct_5(-25707i, true, vec2<u32>(1u, 37070u)), Struct_5(2147483647i, true, vec2<u32>(31538u, 41285u)), Struct_5(17460i, false, vec2<u32>(4294967295u, 0u)), Struct_5(1i, true, vec2<u32>(4294967295u, 49633u)), Struct_5(2147483647i, true, vec2<u32>(4294967295u, 95620u)), Struct_5(1i, false, vec2<u32>(0u, 0u)), Struct_5(2147483647i, true, vec2<u32>(4294967295u, 3195u)), Struct_5(-16284i, false, vec2<u32>(0u, 1u)), Struct_5(-10189i, false, vec2<u32>(1u, 1u)), Struct_5(-5848i, false, vec2<u32>(82672u, 18849u)), Struct_5(0i, false, vec2<u32>(33736u, 0u)), Struct_5(-61828i, true, vec2<u32>(71605u, 17466u)), Struct_5(-63581i, true, vec2<u32>(4294967295u, 4294967295u)), Struct_5(-75152i, false, vec2<u32>(1u, 4294967295u)), Struct_5(2147483647i, false, vec2<u32>(0u, 39392u)));

var<private> global3: array<Struct_4, 23>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_3, arg_1: vec3<i32>) -> i32 {
    let var_0 = u_input.b.x;
    global0 = Struct_2(u_input.c ^ (arg_0.b >> ((firstLeadingBit(vec4<u32>(var_0, u_input.d.x, u_input.b.x, 21279u)) << ((vec4<u32>(u_input.b.x, u_input.b.x, 31196u, u_input.b.x) >> (vec4<u32>(var_0, var_0, 4294967295u, 80382u) % vec4<u32>(32u))) % vec4<u32>(32u))) % vec4<u32>(32u))), -arg_1.yx, !(!any(!vec4<bool>(global0.c, global0.c, true, false))), Struct_1(arg_0.d.x), Struct_1(arg_0.a.a));
    var var_1 = global3[_wgslsmith_index_u32(8382u, 23u)];
    let var_2 = ~91745u;
    global3 = array<Struct_4, 23>();
    return countOneBits(arg_0.b.x);
}

fn func_2() -> Struct_2 {
    var var_0 = _wgslsmith_div_u32(0u, ~_wgslsmith_div_u32(~firstTrailingBit(0u), ~17138u));
    var var_1 = 20887u;
    let var_2 = -vec4<i32>(_wgslsmith_dot_vec3_i32(~vec3<i32>(global0.b.x, u_input.c.x, u_input.a.x), -global0.a.xww), _wgslsmith_add_i32(global0.a.x, ~_wgslsmith_add_i32(global0.a.x, global0.b.x)), 1i, global0.a.x);
    let var_3 = !vec2<bool>(global0.c, any(!vec4<bool>(true, global0.c, true, global0.c)));
    var var_4 = Struct_2(vec4<i32>(-u_input.a.x & ~countOneBits(var_2.x), func_3(Struct_3(Struct_1(-506f), vec4<i32>(u_input.c.x, 0i, 26758i, u_input.a.x), -123f, vec2<f32>(-492f, -305f), 63844i), _wgslsmith_div_vec3_i32(var_2.zyw, u_input.a)) ^ ~(-u_input.a.x), -1i, global0.a.x), vec2<i32>(1i, var_2.x), false, Struct_1(-1613f), global0.d);
    return Struct_2(~countOneBits(vec4<i32>(var_4.b.x, 15494i, ~var_4.a.x, -var_2.x)), u_input.a.zz & ~u_input.c.wx, global0.c, global0.e, Struct_1(_wgslsmith_f_op_f32(-var_4.d.a)));
}

fn func_1(arg_0: bool) -> Struct_2 {
    var var_0 = -vec2<i32>(_wgslsmith_dot_vec4_i32(-vec4<i32>(u_input.c.x, global0.b.x, 86276i, global0.a.x), _wgslsmith_mult_vec4_i32(reverseBits(global0.a), global0.a)), 1i);
    global3 = array<Struct_4, 23>();
    var var_1 = global0.d;
    let var_2 = global2[_wgslsmith_index_u32(reverseBits(~(~u_input.b.x | u_input.d.x)), 19u)];
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1(!(!all(!vec2<bool>(global0.c, true))));
    var var_0 = _wgslsmith_div_f32(global0.d.a, 1057f);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(_wgslsmith_add_u32(~u_input.b.x, (0u | u_input.d.x) ^ u_input.b.x), ~(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d.x, u_input.b.x, u_input.b.x), vec3<u32>(u_input.d.x, 35450u, u_input.d.x)) << (0u % 32u)), 1u, u_input.b.x), u_input.b);
}


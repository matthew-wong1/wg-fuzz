struct Struct_1 {
    a: i32,
    b: vec4<bool>,
    c: u32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: u32,
    d: vec4<f32>,
    e: u32,
}

struct Struct_3 {
    a: vec4<bool>,
}

struct Struct_4 {
    a: vec3<i32>,
}

struct Struct_5 {
    a: Struct_3,
    b: vec3<u32>,
    c: u32,
    d: Struct_4,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: u32,
    d: i32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 19> = array<Struct_5, 19>(Struct_5(Struct_3(vec4<bool>(true, true, false, false)), vec3<u32>(4294967295u, 0u, 47612u), 21087u, Struct_4(vec3<i32>(2147483647i, -1i, 6881i)), vec3<u32>(139334u, 1u, 1u)), Struct_5(Struct_3(vec4<bool>(true, false, true, true)), vec3<u32>(58274u, 44985u, 1u), 4294967295u, Struct_4(vec3<i32>(2147483647i, -4695i, 0i)), vec3<u32>(949u, 1u, 27170u)), Struct_5(Struct_3(vec4<bool>(true, false, false, true)), vec3<u32>(14647u, 9923u, 0u), 4294967295u, Struct_4(vec3<i32>(1i, 1i, 25423i)), vec3<u32>(21358u, 50124u, 4294967295u)), Struct_5(Struct_3(vec4<bool>(false, false, true, false)), vec3<u32>(89594u, 76924u, 0u), 2243u, Struct_4(vec3<i32>(-1i, 0i, 1i)), vec3<u32>(4294967295u, 4294967295u, 4294967295u)), Struct_5(Struct_3(vec4<bool>(true, true, true, false)), vec3<u32>(4294967295u, 4294967295u, 51898u), 29951u, Struct_4(vec3<i32>(2147483647i, 4424i, 0i)), vec3<u32>(16974u, 1u, 19105u)), Struct_5(Struct_3(vec4<bool>(true, false, false, false)), vec3<u32>(13315u, 85079u, 6359u), 25777u, Struct_4(vec3<i32>(-39897i, 2147483647i, 0i)), vec3<u32>(12567u, 0u, 0u)), Struct_5(Struct_3(vec4<bool>(false, true, true, true)), vec3<u32>(83712u, 0u, 4294967295u), 6493u, Struct_4(vec3<i32>(1i, -66211i, 1i)), vec3<u32>(15329u, 4294967295u, 34439u)), Struct_5(Struct_3(vec4<bool>(true, false, true, false)), vec3<u32>(31005u, 26263u, 4294967295u), 4294967295u, Struct_4(vec3<i32>(53926i, -57696i, 1i)), vec3<u32>(66783u, 1u, 17328u)), Struct_5(Struct_3(vec4<bool>(true, true, true, false)), vec3<u32>(6788u, 10314u, 55670u), 4294967295u, Struct_4(vec3<i32>(0i, 2147483647i, 2147483647i)), vec3<u32>(8562u, 4294967295u, 21746u)), Struct_5(Struct_3(vec4<bool>(false, true, true, true)), vec3<u32>(1u, 27513u, 0u), 2663u, Struct_4(vec3<i32>(2147483647i, -51559i, 0i)), vec3<u32>(1u, 49451u, 62251u)), Struct_5(Struct_3(vec4<bool>(true, true, false, true)), vec3<u32>(4294967295u, 4294967295u, 54122u), 17902u, Struct_4(vec3<i32>(2147483647i, 4382i, 2147483647i)), vec3<u32>(0u, 21779u, 88068u)), Struct_5(Struct_3(vec4<bool>(true, false, true, true)), vec3<u32>(4981u, 65122u, 25083u), 11430u, Struct_4(vec3<i32>(0i, -1i, -1i)), vec3<u32>(40532u, 22086u, 43335u)), Struct_5(Struct_3(vec4<bool>(true, true, true, false)), vec3<u32>(59565u, 4294967295u, 19239u), 18805u, Struct_4(vec3<i32>(i32(-2147483648), 29928i, 9777i)), vec3<u32>(1u, 99282u, 9150u)), Struct_5(Struct_3(vec4<bool>(true, false, true, false)), vec3<u32>(0u, 1u, 54643u), 1u, Struct_4(vec3<i32>(1i, -12935i, 29676i)), vec3<u32>(7649u, 15273u, 28927u)), Struct_5(Struct_3(vec4<bool>(true, false, true, true)), vec3<u32>(35818u, 16302u, 0u), 38696u, Struct_4(vec3<i32>(i32(-2147483648), 0i, -52576i)), vec3<u32>(4294967295u, 47128u, 67630u)), Struct_5(Struct_3(vec4<bool>(true, false, false, false)), vec3<u32>(0u, 4482u, 1u), 12360u, Struct_4(vec3<i32>(0i, -3809i, 9060i)), vec3<u32>(4294967295u, 14350u, 0u)), Struct_5(Struct_3(vec4<bool>(false, true, true, true)), vec3<u32>(49222u, 2440u, 4294967295u), 53451u, Struct_4(vec3<i32>(-52217i, i32(-2147483648), 2147483647i)), vec3<u32>(1u, 0u, 0u)), Struct_5(Struct_3(vec4<bool>(false, true, false, false)), vec3<u32>(0u, 1u, 4294967295u), 4294967295u, Struct_4(vec3<i32>(33417i, i32(-2147483648), -76603i)), vec3<u32>(4294967295u, 0u, 28245u)), Struct_5(Struct_3(vec4<bool>(false, false, true, false)), vec3<u32>(0u, 0u, 1u), 1u, Struct_4(vec3<i32>(i32(-2147483648), -12858i, 2147483647i)), vec3<u32>(32582u, 1u, 1u)));

var<private> global1: array<Struct_2, 8> = array<Struct_2, 8>(Struct_2(0u, Struct_1(31955i, vec4<bool>(false, true, true, false), 40434u), 16000u, vec4<f32>(292f, -952f, -1482f, -122f), 43762u), Struct_2(1u, Struct_1(-15495i, vec4<bool>(false, true, false, true), 30411u), 1u, vec4<f32>(203f, 1000f, 140f, -215f), 59585u), Struct_2(1u, Struct_1(1i, vec4<bool>(false, true, false, false), 4294967295u), 39089u, vec4<f32>(-520f, 474f, 918f, -941f), 0u), Struct_2(85280u, Struct_1(2147483647i, vec4<bool>(false, true, true, true), 1u), 1u, vec4<f32>(-548f, 1166f, 123f, 263f), 87792u), Struct_2(0u, Struct_1(1i, vec4<bool>(false, false, true, true), 61882u), 4294967295u, vec4<f32>(602f, -945f, -1211f, 138f), 40631u), Struct_2(29238u, Struct_1(0i, vec4<bool>(false, false, false, false), 5341u), 19804u, vec4<f32>(1000f, -1103f, -681f, 660f), 4294967295u), Struct_2(28001u, Struct_1(7667i, vec4<bool>(false, true, false, true), 0u), 1u, vec4<f32>(-257f, -702f, -183f, 1230f), 5411u), Struct_2(32629u, Struct_1(-57784i, vec4<bool>(false, true, false, false), 1u), 22289u, vec4<f32>(1302f, -1367f, -384f, -770f), 4294967295u));

var<private> global2: vec2<i32> = vec2<i32>(-1i, 51597i);

var<private> global3: array<u32, 21> = array<u32, 21>(1u, 0u, 4294967295u, 4239u, 8351u, 0u, 2532u, 4536u, 0u, 8956u, 0u, 0u, 16680u, 84781u, 0u, 0u, 1u, 4294967295u, 77888u, 0u, 41872u);

var<private> global4: vec2<i32>;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2(arg_0: Struct_2, arg_1: vec4<i32>, arg_2: i32, arg_3: f32) -> Struct_5 {
    var var_0 = Struct_4(arg_1.ywz);
    var var_1 = Struct_1(_wgslsmith_mult_i32(global2.x, _wgslsmith_mult_i32(var_0.a.x, _wgslsmith_div_i32(abs(2147483647i), i32(-1i) * -12873i))), arg_0.b.b, (_wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(76332u, global3[_wgslsmith_index_u32(u_input.b.x, 21u)], 1u, u_input.a.x)), select(vec4<u32>(45506u, 5878u, 4294967295u, 64864u), vec4<u32>(0u, 1u, global3[_wgslsmith_index_u32(0u, 21u)], 10923u), vec4<bool>(true, arg_0.b.b.x, arg_0.b.b.x, arg_0.b.b.x))) & abs(_wgslsmith_div_u32(45011u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(19301u, 21u)], 21u)], 21u)]))) & _wgslsmith_clamp_u32(u_input.c, 1u, ~106822u | u_input.a.x));
    var var_2 = _wgslsmith_div_vec3_f32(vec3<f32>(-527f, _wgslsmith_f_op_f32(417f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.d.x * -400f))), arg_0.d.x), _wgslsmith_f_op_vec3_f32(floor(arg_0.d.wzy)));
    var var_3 = 1u;
    var var_4 = arg_0.b;
    return global0[_wgslsmith_index_u32(72233u, 19u)];
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_5, arg_2: f32) -> u32 {
    global1 = array<Struct_2, 8>();
    let var_0 = false;
    let var_1 = -max(arg_1.d.a, vec3<i32>(-41758i, _wgslsmith_dot_vec4_i32(vec4<i32>(1i, u_input.e.x, 16301i, -2147483647i), vec4<i32>(global2.x, global2.x, global2.x, -1i)), -1i) << (~func_2(Struct_2(u_input.c, Struct_1(-3828i, arg_1.a.a, 1u), arg_0.x, vec4<f32>(arg_2, -752f, 1254f, 1000f), global3[_wgslsmith_index_u32(1u, 21u)]), vec4<i32>(10775i, 10759i, global4.x, global2.x), 2147483647i, arg_2).e % vec3<u32>(32u)));
    global0 = array<Struct_5, 19>();
    let var_2 = arg_1.a;
    return _wgslsmith_mult_u32(~u_input.a.x, arg_0.x) ^ ~(~arg_0.x & ~4294967295u);
}

fn func_1(arg_0: vec2<i32>, arg_1: vec4<f32>) -> vec4<bool> {
    var var_0 = Struct_1(_wgslsmith_div_i32(arg_0.x, global4.x), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(all(vec2<bool>(false, false)), true, false, true), vec4<bool>(global4.x > -1i, select(false, false, false), select(true, false, true), arg_1.x < arg_1.x), any(select(vec2<bool>(true, false), vec2<bool>(false, true), true)))), func_3(vec4<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(_wgslsmith_add_u32(61978u, global3[_wgslsmith_index_u32(max(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(27468u, 21u)], 21u)], u_input.a.x), 21u)]), 21u)], 21u)], 0u, 4294967295u, ~global3[_wgslsmith_index_u32(u_input.c, 21u)]), func_2(global1[_wgslsmith_index_u32(3674u, 8u)], vec4<i32>(1i, -11874i, -1i, global2.x) >> ((vec4<u32>(1u, 45440u, global3[_wgslsmith_index_u32(u_input.a.x, 21u)], 603u) & vec4<u32>(u_input.c, u_input.b.x, global3[_wgslsmith_index_u32(54099u, 21u)], 3275u)) % vec4<u32>(32u)), firstTrailingBit(global2.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_1.x)))), arg_1.x));
    let var_1 = func_2(Struct_2(func_2(global1[_wgslsmith_index_u32(~u_input.a.x, 8u)], ~_wgslsmith_clamp_vec4_i32(vec4<i32>(global4.x, global2.x, global4.x, 1i), vec4<i32>(arg_0.x, var_0.a, 40913i, var_0.a), vec4<i32>(1i, global2.x, -3711i, global4.x)), abs(~(-39355i)), arg_1.x).e.x, Struct_1(_wgslsmith_sub_i32(-17933i, 1i) | abs(global4.x), var_0.b, max(_wgslsmith_div_u32(4294967295u, 27747u), min(global3[_wgslsmith_index_u32(1u, 21u)], 8924u))), 4294967295u << (global3[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.a.x, 0u), 21u)] % 32u), vec4<f32>(_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(-arg_1.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.x) - arg_1.x), arg_1.x, arg_1.x), 4294967295u), vec4<i32>(~countOneBits(global2.x), -27449i, _wgslsmith_add_i32(_wgslsmith_add_i32(global2.x, global4.x), global2.x), max(_wgslsmith_mod_i32(0i, u_input.d), global4.x)) >> ((~vec4<u32>(var_0.c, 65928u, global3[_wgslsmith_index_u32(4294967295u, 21u)], 51724u) & _wgslsmith_clamp_vec4_u32(~vec4<u32>(global3[_wgslsmith_index_u32(var_0.c, 21u)], u_input.b.x, 1u, 39386u), abs(vec4<u32>(u_input.c, 0u, 3096u, 24885u)), vec4<u32>(global3[_wgslsmith_index_u32(u_input.b.x, 21u)], 4294967295u, 4294967295u, 26837u) ^ vec4<u32>(4294967295u, 4294967295u, u_input.b.x, 1u))) % vec4<u32>(32u)), arg_0.x, _wgslsmith_f_op_f32(exp2(arg_1.x))).e.yz;
    let var_2 = Struct_3(select(!vec4<bool>(arg_1.x >= 1000f, select(false, true, var_0.b.x), true, true), select(func_2(Struct_2(u_input.a.x, Struct_1(-2147483647i, vec4<bool>(var_0.b.x, var_0.b.x, false, false), 41605u), 53957u, arg_1, var_1.x), abs(vec4<i32>(u_input.d, 0i, var_0.a, u_input.d)), ~(-18847i), arg_1.x).a.a, var_0.b, func_2(Struct_2(u_input.b.x, Struct_1(0i, vec4<bool>(var_0.b.x, var_0.b.x, var_0.b.x, var_0.b.x), u_input.a.x), 1u, vec4<f32>(arg_1.x, arg_1.x, arg_1.x, -801f), var_0.c), vec4<i32>(global2.x, -2147483647i, arg_0.x, 0i) & vec4<i32>(global4.x, -16976i, -54999i, var_0.a), ~(-21001i), -148f).a.a), select(func_2(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.a.x, global3[_wgslsmith_index_u32(var_0.c, 21u)]), 8u)], _wgslsmith_mod_vec4_i32(vec4<i32>(var_0.a, 0i, 23148i, var_0.a), vec4<i32>(arg_0.x, 30979i, global2.x, global2.x)), 1i, arg_1.x).a.a, vec4<bool>(true, !var_0.b.x, !var_0.b.x, !var_0.b.x), var_0.b.x)));
    let var_3 = global3[_wgslsmith_index_u32(~global3[_wgslsmith_index_u32(~_wgslsmith_div_u32(~(~u_input.c), _wgslsmith_sub_u32(min(u_input.a.x, 119560u), func_2(Struct_2(var_1.x, Struct_1(global2.x, var_0.b, 4294967295u), u_input.c, arg_1, global3[_wgslsmith_index_u32(43316u, 21u)]), vec4<i32>(var_0.a, 0i, u_input.e.x, global4.x), 9726i, 263f).e.x)), 21u)], 21u)];
    global1 = array<Struct_2, 8>();
    return !vec4<bool>(var_0.b.x, var_2.a.x & false, true, !all(vec3<bool>(true, true, true)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -_wgslsmith_mod_vec4_i32(-abs(vec4<i32>(global4.x, 2147483647i, global2.x, -1i)), _wgslsmith_sub_vec4_i32(vec4<i32>(21853i, u_input.d, u_input.e.x, -54623i), vec4<i32>(~74529i, ~global2.x, global4.x, ~u_input.e.x)));
    var var_1 = Struct_3(!select(vec4<bool>(true, true, true, true), !func_1(vec2<i32>(var_0.x, u_input.d), vec4<f32>(-657f, -1670f, 207f, 983f)), vec4<bool>(true, true, true, true)));
    let var_2 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(~global3[_wgslsmith_index_u32(u_input.c, 21u)], 86793u), u_input.b), 8u)];
    let var_3 = var_1.a;
    var var_4 = 0u;
    let x = u_input.a;
    s_output = StorageBuffer(-238f, 225f, func_2(Struct_2(firstLeadingBit(countOneBits(4294967295u)), var_2.b, u_input.c, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1522f, var_2.d.x, var_2.d.x, var_2.d.x), var_2.d, var_2.b.b)), _wgslsmith_f_op_vec4_f32(select(var_2.d, vec4<f32>(838f, var_2.d.x, 425f, -1792f), var_2.b.b))), ~min(1u, 34121u)), select(_wgslsmith_mult_vec4_i32(vec4<i32>(global4.x, 2147483647i, -15200i, u_input.d), vec4<i32>(2147483647i, 0i, 1i, global2.x)) >> (vec4<u32>(global3[_wgslsmith_index_u32(1u, 21u)], 41289u, 4294967295u, u_input.a.x) % vec4<u32>(32u)), vec4<i32>(firstTrailingBit(-40046i), abs(-1i), global4.x, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d, var_2.b.a, 2147483647i, 9151i), vec4<i32>(var_2.b.a, global4.x, var_2.b.a, global2.x))), var_2.b.b.x), ~3969i, var_2.d.x).d.a.x);
}


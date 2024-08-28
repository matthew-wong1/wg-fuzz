struct Struct_1 {
    a: u32,
    b: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: Struct_2,
    d: vec4<i32>,
    e: bool,
}

struct Struct_4 {
    a: vec2<bool>,
    b: vec4<u32>,
    c: vec4<bool>,
    d: Struct_3,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec4<u32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: Struct_1;

var<private> global2: Struct_4;

var<private> global3: array<bool, 15> = array<bool, 15>(true, false, true, false, true, false, true, false, true, true, false, true, true, true, false);

var<private> global4: array<Struct_2, 30> = array<Struct_2, 30>(Struct_2(Struct_1(0u, vec4<i32>(31861i, 10984i, i32(-2147483648), i32(-2147483648))), Struct_1(30068u, vec4<i32>(2147483647i, 27493i, -9081i, -1i))), Struct_2(Struct_1(129762u, vec4<i32>(i32(-2147483648), -19234i, 32596i, 1i)), Struct_1(27893u, vec4<i32>(0i, -44104i, 1i, 2147483647i))), Struct_2(Struct_1(80724u, vec4<i32>(-1i, 0i, -1i, -41326i)), Struct_1(21075u, vec4<i32>(1i, 0i, -20527i, 14876i))), Struct_2(Struct_1(1u, vec4<i32>(-12699i, 3271i, -1i, 0i)), Struct_1(0u, vec4<i32>(4522i, -4429i, -15840i, 0i))), Struct_2(Struct_1(1u, vec4<i32>(55617i, 58312i, -67190i, 2147483647i)), Struct_1(13001u, vec4<i32>(-22840i, -5897i, -39636i, 15214i))), Struct_2(Struct_1(4294967295u, vec4<i32>(-21508i, 1i, i32(-2147483648), 4491i)), Struct_1(1u, vec4<i32>(-17409i, -44993i, 34497i, -3363i))), Struct_2(Struct_1(8185u, vec4<i32>(-37606i, 15481i, 2574i, 1i)), Struct_1(7953u, vec4<i32>(i32(-2147483648), i32(-2147483648), -1i, 0i))), Struct_2(Struct_1(68016u, vec4<i32>(-30075i, 4373i, -1i, 1i)), Struct_1(4294967295u, vec4<i32>(70167i, -15435i, 0i, -1i))), Struct_2(Struct_1(13780u, vec4<i32>(0i, 2147483647i, 1i, 1i)), Struct_1(4294967295u, vec4<i32>(1i, 29287i, 1i, 0i))), Struct_2(Struct_1(28095u, vec4<i32>(-15864i, 1i, 60820i, 0i)), Struct_1(59591u, vec4<i32>(-1i, 29680i, -6422i, 1i))), Struct_2(Struct_1(45365u, vec4<i32>(35021i, i32(-2147483648), 42276i, i32(-2147483648))), Struct_1(62127u, vec4<i32>(2147483647i, 2147483647i, -11625i, 26800i))), Struct_2(Struct_1(33732u, vec4<i32>(31330i, 2147483647i, -32682i, -7552i)), Struct_1(1u, vec4<i32>(2147483647i, i32(-2147483648), -7467i, -3877i))), Struct_2(Struct_1(29100u, vec4<i32>(2862i, 1i, -18510i, -1i)), Struct_1(56625u, vec4<i32>(73058i, i32(-2147483648), -1i, 0i))), Struct_2(Struct_1(4294967295u, vec4<i32>(44811i, -17674i, 21178i, -16005i)), Struct_1(31516u, vec4<i32>(20635i, -1i, 0i, 55483i))), Struct_2(Struct_1(1u, vec4<i32>(0i, 30557i, 0i, -34778i)), Struct_1(36171u, vec4<i32>(7370i, 1979i, -60463i, i32(-2147483648)))), Struct_2(Struct_1(4294967295u, vec4<i32>(0i, 2859i, 1i, 2147483647i)), Struct_1(0u, vec4<i32>(2147483647i, -3034i, 2147483647i, 0i))), Struct_2(Struct_1(9988u, vec4<i32>(0i, 6430i, i32(-2147483648), 1i)), Struct_1(0u, vec4<i32>(14685i, 1i, -1i, -20190i))), Struct_2(Struct_1(0u, vec4<i32>(1i, -24859i, 0i, 19413i)), Struct_1(11037u, vec4<i32>(2147483647i, -21823i, 67822i, 19564i))), Struct_2(Struct_1(4294967295u, vec4<i32>(-1i, -34224i, -1i, 0i)), Struct_1(1184u, vec4<i32>(2147483647i, -55505i, -1i, -1i))), Struct_2(Struct_1(69341u, vec4<i32>(2147483647i, -1i, -1i, 2147483647i)), Struct_1(63646u, vec4<i32>(-1i, 31195i, 2147483647i, i32(-2147483648)))), Struct_2(Struct_1(37847u, vec4<i32>(i32(-2147483648), 1i, 0i, i32(-2147483648))), Struct_1(50729u, vec4<i32>(-1i, -6169i, 50781i, -1i))), Struct_2(Struct_1(4294967295u, vec4<i32>(24817i, i32(-2147483648), 26970i, 75231i)), Struct_1(4294967295u, vec4<i32>(13340i, 0i, 2147483647i, -28538i))), Struct_2(Struct_1(12176u, vec4<i32>(1i, 18943i, 1i, i32(-2147483648))), Struct_1(0u, vec4<i32>(i32(-2147483648), 30571i, 16735i, 0i))), Struct_2(Struct_1(4294967295u, vec4<i32>(1i, -44270i, 10363i, 2147483647i)), Struct_1(4294967295u, vec4<i32>(28714i, 2147483647i, i32(-2147483648), i32(-2147483648)))), Struct_2(Struct_1(41045u, vec4<i32>(56539i, -112756i, -16631i, 0i)), Struct_1(4294967295u, vec4<i32>(2147483647i, 0i, 2147483647i, 2147483647i))), Struct_2(Struct_1(49904u, vec4<i32>(-27552i, 2147483647i, -61468i, 1i)), Struct_1(18075u, vec4<i32>(-9846i, -1i, 548i, 2147483647i))), Struct_2(Struct_1(1u, vec4<i32>(-7685i, 27326i, 18651i, 50880i)), Struct_1(33827u, vec4<i32>(37819i, 31252i, i32(-2147483648), -70463i))), Struct_2(Struct_1(25552u, vec4<i32>(0i, -28848i, -1i, 1i)), Struct_1(4294967295u, vec4<i32>(0i, 0i, -33457i, 2147483647i))), Struct_2(Struct_1(4294967295u, vec4<i32>(-35506i, i32(-2147483648), -28492i, -1i)), Struct_1(0u, vec4<i32>(0i, 84558i, 28180i, i32(-2147483648)))), Struct_2(Struct_1(1u, vec4<i32>(2147483647i, 9753i, -24829i, 1i)), Struct_1(0u, vec4<i32>(2147483647i, 13263i, -1i, 57426i))));

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: f32) -> bool {
    global0 = u_input.b;
    let var_0 = global2.d;
    let var_1 = var_0.d.x;
    global4 = array<Struct_2, 30>();
    global2 = Struct_4(!global2.c.xw, max(_wgslsmith_mod_vec4_u32(firstLeadingBit(select(vec4<u32>(u_input.c.x, 1u, global2.d.c.b.a, 0u), vec4<u32>(global2.d.c.a.a, 40884u, 26292u, global2.b.x), false)), select(global2.b, _wgslsmith_clamp_vec4_u32(global2.b, vec4<u32>(global1.a, global2.b.x, global2.d.c.a.a, 72699u), u_input.c), !global2.a.x)), abs(global2.b) & _wgslsmith_div_vec4_u32(vec4<u32>(global2.b.x, 6854u, 21699u, global2.d.c.b.a) | u_input.c, global2.b)), global2.c, Struct_3(Struct_2(var_0.c.b, Struct_1(1522u, -vec4<i32>(var_0.a.a.b.x, 0i, 0i, u_input.b))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(arg_0, global2.d.b)))) * _wgslsmith_f_op_f32(global2.d.b + var_0.b)), Struct_2(var_0.a.a, Struct_1(_wgslsmith_mult_u32(var_0.a.a.a, u_input.d.x), vec4<i32>(0i, global1.b.x, -2147483647i, -23033i) | vec4<i32>(0i, -26085i, 1i, 51757i))), vec4<i32>(u_input.a.x, ~(~global2.d.d.x), countOneBits(global1.b.x), 1i), true), -min(vec3<i32>(-1i, _wgslsmith_clamp_i32(var_0.c.a.b.x, 1i, var_0.c.a.b.x), i32(-1i) * -1i), firstTrailingBit(abs(vec3<i32>(global1.b.x, global2.d.c.b.b.x, 0i)))));
    return !all(!select(!vec4<bool>(global2.d.e, false, true, false), select(vec4<bool>(var_0.e, true, false, global3[_wgslsmith_index_u32(u_input.c.x, 15u)]), vec4<bool>(var_0.e, false, true, global3[_wgslsmith_index_u32(594u, 15u)]), global2.a.x), false));
}

fn func_2(arg_0: vec2<f32>, arg_1: vec4<f32>, arg_2: vec2<bool>, arg_3: f32) -> vec4<bool> {
    global2 = Struct_4(select(vec2<bool>(func_3(arg_0.x), true), vec2<bool>(all(global2.c.ywy), _wgslsmith_f_op_f32(arg_3 + 178f) > arg_3), select(arg_2.x, global2.c.x, true)), firstLeadingBit(vec4<u32>(~1u, global1.a, _wgslsmith_sub_u32(4294967295u, 4294967295u) | u_input.c.x, 1u)), global2.c, Struct_3(Struct_2(global2.d.c.b, global2.d.c.b), arg_1.x, global4[_wgslsmith_index_u32(_wgslsmith_div_u32(select(_wgslsmith_div_u32(u_input.d.x, 4294967295u), reverseBits(3825u), true), _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(u_input.c.wy, vec2<u32>(global2.d.c.b.a, 1u)), global1.a)), 30u)], vec4<i32>(-2147483647i, select(global1.b.x, u_input.a.x, !global3[_wgslsmith_index_u32(4294967295u, 15u)]), -10484i, 0i >> (_wgslsmith_dot_vec4_u32(u_input.c, vec4<u32>(4294967295u, global1.a, global2.b.x, 31461u)) % 32u)), true | arg_2.x), ~vec3<i32>(-max(5466i, global2.e.x), global2.d.a.a.b.x, -_wgslsmith_dot_vec2_i32(vec2<i32>(global1.b.x, global2.e.x), vec2<i32>(27194i, -61078i))));
    global4 = array<Struct_2, 30>();
    let var_0 = global2.d.a.b;
    let var_1 = vec3<bool>(true, !(arg_1.x >= _wgslsmith_f_op_f32(trunc(-268f))), true);
    let var_2 = reverseBits(global1.a);
    return vec4<bool>(!var_1.x, 1000f >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(-arg_0.x))) - arg_0.x), !(!(-1233f < _wgslsmith_f_op_f32(max(-1379f, global2.d.b)))), true);
}

fn func_4(arg_0: Struct_4) -> Struct_3 {
    global3 = array<bool, 15>();
    var var_0 = arg_0.b;
    global2 = arg_0;
    var var_1 = Struct_1(arg_0.b.x, vec4<i32>(~35905i, 55798i, 53397i, -21643i << ((4294967295u & ~global1.a) % 32u)));
    var var_2 = global2.d.a;
    return Struct_3(global4[_wgslsmith_index_u32(~4294967295u, 30u)], _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -816f), global2.d.b), arg_0.d.a, vec4<i32>(arg_0.d.c.a.b.x, -global2.d.c.a.b.x, global2.d.a.b.b.x, arg_0.d.a.a.b.x & var_1.b.x), all(!global2.c));
}

fn func_1(arg_0: vec2<u32>, arg_1: Struct_3, arg_2: vec4<i32>) -> Struct_4 {
    global4 = array<Struct_2, 30>();
    let var_0 = arg_1;
    global4 = array<Struct_2, 30>();
    global3 = array<bool, 15>();
    return Struct_4(global2.a, _wgslsmith_mult_vec4_u32(vec4<u32>(1u, abs(0u), 103419u, global1.a), firstTrailingBit((global2.b & global2.b) | u_input.c)), global2.c, func_4(Struct_4(global2.a, vec4<u32>(~arg_1.a.b.a, ~0u, global1.a, global2.b.x >> (global2.b.x % 32u)), func_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(-503f, var_0.b) - vec2<f32>(arg_1.b, -228f)), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_1.b, -157f, var_0.b, -1161f), vec4<f32>(-256f, -100f, global2.d.b, -1564f))), select(global2.a, global2.a, global2.a.x), _wgslsmith_f_op_f32(global2.d.b + -134f)), var_0, ~u_input.a)), ~arg_2.zwz);
}

fn func_5(arg_0: vec4<i32>, arg_1: Struct_4, arg_2: bool) -> Struct_1 {
    let var_0 = vec3<bool>(true, func_1(global2.b.zz, func_1(~_wgslsmith_div_vec2_u32(global2.b.yx, vec2<u32>(arg_1.d.c.a.a, 11641u)), Struct_3(func_4(arg_1).c, _wgslsmith_f_op_f32(-global2.d.b), func_1(vec2<u32>(4941u, arg_1.b.x), global2.d, global1.b).d.c, _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a.x, arg_0.x, global1.b.x, 0i), vec4<i32>(-41779i, 2147483647i, global2.d.d.x, 0i), vec4<i32>(-2147483647i, arg_0.x, 2147483647i, arg_1.e.x)), arg_1.c.x), select(global2.d.a.a.b, vec4<i32>(global2.d.a.a.b.x, global1.b.x, arg_0.x, global2.e.x), arg_1.d.e) & (arg_1.d.d << (global2.b % vec4<u32>(32u)))).d, -global2.d.c.b.b).a.x, true);
    global2 = func_1(u_input.c.zx, Struct_3(Struct_2(Struct_1(4294967295u, _wgslsmith_add_vec4_i32(vec4<i32>(-39458i, arg_0.x, 18881i, -12736i), arg_1.d.d)), Struct_1(~1u, ~vec4<i32>(global1.b.x, arg_0.x, -1062i, arg_0.x))), _wgslsmith_f_op_f32(f32(-1f) * -602f), func_4(func_1(vec2<u32>(18622u, u_input.d.x), func_4(Struct_4(arg_1.a, arg_1.b, arg_1.c, global2.d, global1.b.xyx)), arg_1.d.d)).a, ~_wgslsmith_mod_vec4_i32(arg_1.d.d, arg_0) << (abs(~vec4<u32>(74640u, arg_1.d.a.a.a, global1.a, global1.a)) % vec4<u32>(32u)), ((u_input.a.x & -13514i) < -2147483647i) && (global2.c.x && (global1.a < u_input.c.x))), vec4<i32>(min(_wgslsmith_clamp_i32(u_input.b << (943u % 32u), arg_1.e.x, _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, global1.b.x, 2527i, u_input.a.x), vec4<i32>(global1.b.x, -2147483647i, 1i, arg_1.d.c.b.b.x))), ~(global1.b.x << (u_input.c.x % 32u))), ~_wgslsmith_add_i32(u_input.a.x, u_input.b << (global1.a % 32u)), -u_input.a.x, global2.d.c.a.b.x));
    let var_1 = arg_1.b.xwz;
    var var_2 = arg_1.d.a.a;
    var var_3 = arg_1.d.d.x;
    return func_4(func_1(global2.b.wz, Struct_3(func_4(func_1(global2.b.zx, arg_1.d, arg_1.d.d)).a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global2.d.b))), global2.d.a, _wgslsmith_div_vec4_i32(countOneBits(vec4<i32>(arg_1.d.c.b.b.x, arg_1.e.x, -32627i, 14337i)), ~vec4<i32>(global1.b.x, arg_0.x, -14557i, 23011i)), true), vec4<i32>(~global1.b.x >> (~7282u % 32u), arg_1.e.x, max(-var_2.b.x, 32069i), ~_wgslsmith_mult_i32(-2147483647i, arg_1.d.a.b.b.x)))).c.a;
}

fn func_6(arg_0: Struct_1, arg_1: bool, arg_2: i32) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(800f, -368f, global2.d.b), vec3<f32>(global2.d.b, -1346f, 2347f)))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1768f, global2.d.b, -1546f) + vec3<f32>(1531f, -819f, -1980f)) - vec3<f32>(global2.d.b, global2.d.b, -134f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1280f, global2.d.b, global2.d.b), vec3<f32>(global2.d.b, 173f, 935f), global3[_wgslsmith_index_u32(global1.a, 15u)])) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, global2.d.b, global2.d.b))))))));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(837f, -228f, 472f, var_0.x) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(336f, global2.d.b, 930f, var_0.x), vec4<f32>(803f, var_0.x, 512f, global2.d.b), global2.a.x))))))));
    global2 = func_1(global2.b.wz, global2.d, global1.b);
    return global2.d.a;
}

fn func_7(arg_0: Struct_2) -> u32 {
    var var_0 = select(vec4<bool>(global3[_wgslsmith_index_u32(firstTrailingBit(arg_0.a.a), 15u)], !global3[_wgslsmith_index_u32(arg_0.a.a, 15u)], global2.a.x, global2.c.x), vec4<bool>(global2.d.e, true, true, false), !global2.c);
    global1 = func_5(_wgslsmith_div_vec4_i32((_wgslsmith_add_vec4_i32(vec4<i32>(4805i, -2147483647i, global1.b.x, arg_0.b.b.x), vec4<i32>(u_input.b, u_input.a.x, arg_0.a.b.x, u_input.b)) | -global2.d.c.b.b) | arg_0.b.b, vec4<i32>(-5354i, ~global2.d.c.a.b.x, -arg_0.b.b.x, global2.e.x)), Struct_4(vec2<bool>(false, !any(vec3<bool>(false, false, true))), vec4<u32>(select(~6955u, 14693u, any(vec2<bool>(global3[_wgslsmith_index_u32(arg_0.a.a, 15u)], false))), max(~u_input.d.x, _wgslsmith_add_u32(global1.a, 37671u)), u_input.c.x, global1.a), global2.c, global2.d, vec3<i32>(select(-global2.e.x, max(-2147483647i, u_input.a.x), false), _wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.a.b.x, u_input.a.x, global1.b.x, u_input.b), func_5(vec4<i32>(u_input.b, arg_0.a.b.x, global2.e.x, -67222i), Struct_4(vec2<bool>(var_0.x, global3[_wgslsmith_index_u32(1u, 15u)]), global2.b, vec4<bool>(false, true, global3[_wgslsmith_index_u32(u_input.c.x, 15u)], global2.c.x), Struct_3(Struct_2(global2.d.c.b, global2.d.a.a), global2.d.b, Struct_2(Struct_1(global2.d.c.b.a, vec4<i32>(arg_0.a.b.x, arg_0.b.b.x, 85846i, arg_0.b.b.x)), arg_0.a), global1.b, var_0.x), global2.e), false).b), reverseBits(-5325i) | func_4(Struct_4(vec2<bool>(false, false), u_input.c, global2.c, global2.d, vec3<i32>(-31639i, 0i, arg_0.b.b.x))).a.b.b.x)), true);
    var var_1 = 1i;
    let var_2 = global1.b.x;
    let var_3 = var_0.xwy;
    return _wgslsmith_sub_u32(_wgslsmith_div_u32(global2.b.x, 71623u), 21284u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~vec3<i32>(u_input.a.x, 1i, -1i);
    let var_1 = vec4<u32>(func_7(func_6(func_5(vec4<i32>(-47784i, u_input.b, -2147483647i, 11967i) << (global2.b % vec4<u32>(32u)), func_1(vec2<u32>(1u, global1.a), global2.d, global2.d.d), true), true, ~(-10882i))), u_input.d.x, reverseBits(func_5(global2.d.d, func_1(~global2.b.xw, func_4(Struct_4(global2.a, global2.b, vec4<bool>(true, global3[_wgslsmith_index_u32(global2.b.x, 15u)], false, true), global2.d, vec3<i32>(var_0.x, global2.e.x, 39808i))), vec4<i32>(38209i, 2147483647i, -21878i, 29047i) | global2.d.c.b.b), false).a), 3191u | (global2.b.x ^ ~27342u));
    let var_2 = global2.d.a.b;
    global2 = func_1(u_input.c.wz, func_1(~(vec2<u32>(0u, global1.a) << (select(global2.b.yz, global2.b.zx, vec2<bool>(global2.d.e, global3[_wgslsmith_index_u32(4944u, 15u)])) % vec2<u32>(32u))), Struct_3(func_1(firstTrailingBit(var_1.zx), Struct_3(global2.d.c, 1198f, global2.d.a, vec4<i32>(var_0.x, -21393i, var_0.x, global2.d.d.x), false), vec4<i32>(1i, 2147483647i, global1.b.x, var_0.x)).d.a, global2.d.b, Struct_2(func_6(Struct_1(0u, global1.b), false, 0i).a, func_4(Struct_4(global2.c.zw, global2.b, vec4<bool>(false, global2.c.x, false, true), Struct_3(global4[_wgslsmith_index_u32(global1.a, 30u)], 793f, Struct_2(global2.d.a.a, global2.d.c.b), var_2.b, false), vec3<i32>(var_0.x, -1i, u_input.a.x))).a.a), ~(-vec4<i32>(2147483647i, u_input.a.x, 1i, 0i)), true), global2.d.a.b.b).d, vec4<i32>(1i, var_2.b.x, 7617i, countOneBits(i32(-1i) * -8824i)));
    global4 = array<Struct_2, 30>();
    let var_3 = _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.d.b) + _wgslsmith_f_op_f32(global2.d.b + 1380f)), 710f), global2.d.b)));
    let var_4 = countOneBits(func_1(u_input.c.zz, func_4(func_1(~vec2<u32>(u_input.c.x, global1.a), global2.d, -vec4<i32>(-25341i, global1.b.x, global2.d.a.b.b.x, -1i))), global2.d.a.a.b).d.a.a.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_div_f32(global2.d.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1826f * global2.d.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -527f))));
}


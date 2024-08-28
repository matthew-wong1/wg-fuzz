struct Struct_1 {
    a: vec4<u32>,
    b: vec4<i32>,
    c: vec2<i32>,
    d: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: f32,
    d: vec3<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 30> = array<Struct_1, 30>(Struct_1(vec4<u32>(52176u, 0u, 1u, 66420u), vec4<i32>(-76365i, 1i, 3295i, 0i), vec2<i32>(2147483647i, -35578i), -1i), Struct_1(vec4<u32>(415u, 0u, 106495u, 48717u), vec4<i32>(1i, 0i, 51514i, -31076i), vec2<i32>(2147483647i, -30190i), 10649i), Struct_1(vec4<u32>(1u, 4294967295u, 1u, 17950u), vec4<i32>(-37472i, -8949i, 2147483647i, -45995i), vec2<i32>(-45618i, 0i), 34560i), Struct_1(vec4<u32>(52562u, 43454u, 46219u, 1u), vec4<i32>(29862i, -43691i, 61455i, -1i), vec2<i32>(17639i, 7930i), -59067i), Struct_1(vec4<u32>(28299u, 28790u, 1u, 10315u), vec4<i32>(-44207i, 45058i, 17065i, i32(-2147483648)), vec2<i32>(2147483647i, -15152i), 1i), Struct_1(vec4<u32>(1u, 20924u, 1u, 16997u), vec4<i32>(19346i, -15342i, -6902i, 2147483647i), vec2<i32>(0i, 1i), 2147483647i), Struct_1(vec4<u32>(49337u, 10902u, 1u, 14414u), vec4<i32>(-67i, -43773i, -1i, 2147483647i), vec2<i32>(8218i, 2147483647i), 0i), Struct_1(vec4<u32>(0u, 0u, 26391u, 32459u), vec4<i32>(42781i, -1i, 2284i, 7561i), vec2<i32>(2147483647i, -17817i), -14642i), Struct_1(vec4<u32>(24303u, 44595u, 56373u, 40329u), vec4<i32>(-1i, 1i, -1i, 0i), vec2<i32>(59194i, 0i), 1i), Struct_1(vec4<u32>(95681u, 0u, 46248u, 75447u), vec4<i32>(-49775i, -20554i, -36756i, 46927i), vec2<i32>(-1i, 35491i), 2060i), Struct_1(vec4<u32>(4294967295u, 4294967295u, 73362u, 4294967295u), vec4<i32>(9037i, 33170i, -1243i, 2839i), vec2<i32>(-225i, 47364i), i32(-2147483648)), Struct_1(vec4<u32>(24051u, 4294967295u, 0u, 1u), vec4<i32>(2147483647i, -22027i, 0i, 8826i), vec2<i32>(-42771i, 1i), -50421i), Struct_1(vec4<u32>(8720u, 4294967295u, 32760u, 15197u), vec4<i32>(2147483647i, 4680i, -80886i, -16889i), vec2<i32>(0i, 0i), 1i), Struct_1(vec4<u32>(0u, 670u, 11829u, 13558u), vec4<i32>(32058i, 0i, -58493i, -35232i), vec2<i32>(49333i, i32(-2147483648)), -41729i), Struct_1(vec4<u32>(14421u, 4294967295u, 0u, 4294967295u), vec4<i32>(-6549i, 5920i, -22307i, i32(-2147483648)), vec2<i32>(2147483647i, 1i), -1i), Struct_1(vec4<u32>(1u, 0u, 4294967295u, 1u), vec4<i32>(0i, 19491i, -2567i, i32(-2147483648)), vec2<i32>(-3474i, 1i), 26013i), Struct_1(vec4<u32>(4294967295u, 4294967295u, 34772u, 119718u), vec4<i32>(2147483647i, 0i, 25111i, -25476i), vec2<i32>(-11077i, 9372i), 1i), Struct_1(vec4<u32>(4294967295u, 32229u, 14754u, 66742u), vec4<i32>(20080i, 28438i, -1i, 13749i), vec2<i32>(8050i, i32(-2147483648)), 1i), Struct_1(vec4<u32>(3069u, 11405u, 69856u, 864u), vec4<i32>(i32(-2147483648), 301i, -1i, i32(-2147483648)), vec2<i32>(1i, 1i), -12815i), Struct_1(vec4<u32>(0u, 4294967295u, 86298u, 1u), vec4<i32>(-1i, -2888i, -755i, 62041i), vec2<i32>(4453i, i32(-2147483648)), 42421i), Struct_1(vec4<u32>(0u, 31432u, 21425u, 1u), vec4<i32>(i32(-2147483648), 27092i, -5836i, 2521i), vec2<i32>(-16182i, 43359i), -26133i), Struct_1(vec4<u32>(0u, 4294967295u, 13519u, 0u), vec4<i32>(i32(-2147483648), 12601i, i32(-2147483648), 2147483647i), vec2<i32>(2147483647i, 38429i), 1i), Struct_1(vec4<u32>(5885u, 10031u, 1u, 80373u), vec4<i32>(31978i, i32(-2147483648), 1i, 21133i), vec2<i32>(-14582i, 22502i), i32(-2147483648)), Struct_1(vec4<u32>(32228u, 8387u, 4294967295u, 1u), vec4<i32>(-7320i, 0i, 18021i, 0i), vec2<i32>(8676i, -14448i), 36230i), Struct_1(vec4<u32>(0u, 0u, 0u, 1u), vec4<i32>(22161i, 3815i, -1i, -1i), vec2<i32>(18217i, 0i), 1i), Struct_1(vec4<u32>(1u, 116317u, 50735u, 1u), vec4<i32>(17425i, 1i, 1i, -1i), vec2<i32>(37605i, 30853i), -18613i), Struct_1(vec4<u32>(1u, 4294967295u, 1525u, 4294967295u), vec4<i32>(43455i, -75349i, 10148i, -1i), vec2<i32>(-5657i, -1i), -5862i), Struct_1(vec4<u32>(33437u, 4294967295u, 58526u, 3234u), vec4<i32>(-1i, 9144i, 6777i, 0i), vec2<i32>(-76295i, i32(-2147483648)), -35145i), Struct_1(vec4<u32>(29652u, 11095u, 12843u, 2089u), vec4<i32>(-1i, 0i, 0i, 20927i), vec2<i32>(2147483647i, i32(-2147483648)), -1i), Struct_1(vec4<u32>(55063u, 4294967295u, 0u, 4294967295u), vec4<i32>(-1i, 0i, 0i, 0i), vec2<i32>(3300i, 0i), -23204i));

var<private> global1: vec2<i32> = vec2<i32>(15445i, i32(-2147483648));

var<private> global2: Struct_1;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: vec4<f32>, arg_3: bool) -> vec2<u32> {
    global0 = array<Struct_1, 30>();
    var var_0 = Struct_1(_wgslsmith_sub_vec4_u32(global2.a, ~(~_wgslsmith_clamp_vec4_u32(vec4<u32>(global2.a.x, 1u, arg_0.a.x, global2.a.x), vec4<u32>(95327u, arg_1.x, arg_0.a.x, arg_1.x), vec4<u32>(1u, global2.a.x, u_input.a, arg_0.a.x)))), -arg_0.b, global2.c, global1.x);
    var var_1 = vec3<u32>(~global2.a.x, 32491u, var_0.a.x);
    var var_2 = _wgslsmith_mod_vec4_u32(~max(vec4<u32>(u_input.b.x, arg_0.a.x, arg_0.a.x, 4294967295u) ^ u_input.b, _wgslsmith_div_vec4_u32(vec4<u32>(global2.a.x, arg_0.a.x, 6778u, arg_0.a.x), vec4<u32>(u_input.a, 4294967295u, arg_0.a.x, var_1.x))), u_input.b);
    let var_3 = (arg_1.x ^ 0u) < ~55351u;
    return _wgslsmith_mult_vec2_u32(u_input.b.xz, vec2<u32>(arg_0.a.x, arg_0.a.x));
}

fn func_4(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: vec3<f32>, arg_3: u32) -> vec2<u32> {
    let var_0 = ~_wgslsmith_add_vec3_u32(abs(_wgslsmith_add_vec3_u32(vec3<u32>(arg_3, arg_0.a.x, 20124u), global2.a.yzx)), ~(~global2.a.wxz));
    var var_1 = Struct_1(max(vec4<u32>(4294967295u, _wgslsmith_dot_vec2_u32(arg_0.a.ww, vec2<u32>(arg_3, 12192u)), 1u, arg_3), global2.a), firstLeadingBit(_wgslsmith_div_vec4_i32(vec4<i32>(_wgslsmith_div_i32(global2.c.x, arg_0.d), 0i, arg_0.d, global2.c.x), _wgslsmith_sub_vec4_i32(arg_0.b, global2.b) ^ vec4<i32>(20221i, global1.x, global2.d, arg_0.d))), vec2<i32>(firstLeadingBit(-global1.x), 1i), countOneBits(arg_0.b.x));
    var var_2 = Struct_1(~arg_0.a, select(-vec4<i32>(-19552i, 47853i, _wgslsmith_dot_vec2_i32(vec2<i32>(0i, -1i), vec2<i32>(global1.x, arg_0.b.x)), global1.x), -abs(-arg_0.b), false), _wgslsmith_mult_vec2_i32(vec2<i32>(_wgslsmith_dot_vec2_i32(arg_0.c, vec2<i32>(global1.x, var_1.c.x)) & _wgslsmith_add_i32(global2.d, 2147483647i), firstLeadingBit(_wgslsmith_add_i32(global1.x, global1.x))), global2.b.zx), 1i);
    let var_3 = Struct_1(_wgslsmith_sub_vec4_u32(_wgslsmith_add_vec4_u32(select(var_2.a >> (vec4<u32>(28069u, 4294967295u, var_0.x, var_1.a.x) % vec4<u32>(32u)), vec4<u32>(1u, global2.a.x, global2.a.x, 4294967295u), true), vec4<u32>(~0u, ~global2.a.x, arg_0.a.x ^ 74799u, abs(u_input.b.x))), ~vec4<u32>(27543u >> (arg_1.x % 32u), countOneBits(18459u), ~u_input.b.x, ~var_0.x)), abs(var_2.b), select(vec2<i32>(_wgslsmith_add_i32(1i, _wgslsmith_dot_vec3_i32(var_2.b.yzx, vec3<i32>(global1.x, -1i, 2147483647i))), -(-6370i ^ var_1.d)), vec2<i32>(-max(0i, var_1.c.x), ~(-2147483647i)), select(!select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true)), select(vec2<bool>(true, false), vec2<bool>(true, true), any(vec4<bool>(false, false, true, true))), vec2<bool>(true, true))), select(31187i, _wgslsmith_dot_vec2_i32(vec2<i32>(global2.b.x, var_1.d), -var_1.c), false) >> (var_1.a.x % 32u));
    let var_4 = vec4<bool>(select(true, false, any(vec4<bool>(any(vec3<bool>(true, true, true)), true, true, false))), !(!(!(arg_2.x <= 462f))), true, all(vec4<bool>(true, any(vec2<bool>(true, true)), false, true | all(vec4<bool>(true, false, false, false)))));
    return select(~(~abs(~arg_1)), var_2.a.xw, global2.b.x >= var_2.c.x);
}

fn func_2() -> bool {
    let var_0 = Struct_1(~vec4<u32>(select(max(4294967295u, 22686u), global2.a.x, true), firstTrailingBit(~39068u), ~(~36874u), 1u), _wgslsmith_mod_vec4_i32(global2.b, global2.b), firstTrailingBit(vec2<i32>(_wgslsmith_add_i32(global2.b.x, 0i), 0i)) >> (func_4(global0[_wgslsmith_index_u32(~select(60973u, 40678u, true), 30u)], func_3(Struct_1(u_input.b, global2.b, global2.b.wy, global2.b.x), select(vec3<u32>(global2.a.x, 34240u, 16659u), vec3<u32>(global2.a.x, 4294967295u, 4294967295u), vec3<bool>(true, true, false)), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-712f, 533f, -807f, 379f))), true), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1245f), _wgslsmith_f_op_f32(trunc(-765f)), -677f), countOneBits(_wgslsmith_dot_vec3_u32(u_input.b.xzx, u_input.b.wxz))) % vec2<u32>(32u)), 0i);
    var var_1 = 1221f;
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -122f), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-100f)))))) - 1003f);
    let var_2 = _wgslsmith_f_op_f32(f32(-1f) * -1600f);
    var var_3 = true;
    return var_0.a.x < 91897u;
}

fn func_1(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: Struct_1) -> vec2<i32> {
    global0 = array<Struct_1, 30>();
    var var_0 = arg_1;
    let var_1 = ~4294967295u;
    global1 = -abs(select(global2.c | arg_1.b.ww, vec2<i32>(max(arg_2.c.x, arg_1.c.x), -var_0.d), arg_0.x));
    let var_2 = vec3<i32>(-1i) * -reverseBits(var_0.b.xzx);
    return vec2<i32>((abs(28650i) >> ((0u << (arg_1.a.x % 32u)) % 32u)) >> (_wgslsmith_dot_vec4_u32(vec4<u32>(43145u, 1u, 22869u, 0u), ~vec4<u32>(68373u, 0u, 1u, 1u)) % 32u), ~1i) >> (select(abs(vec2<u32>(~1u, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_2.a.x, u_input.b.x, var_1, u_input.a), vec4<u32>(var_0.a.x, 4294967295u, 16313u, 1u)))), vec2<u32>(_wgslsmith_clamp_u32(~15653u, _wgslsmith_mult_u32(4294967295u, global2.a.x), global2.a.x), arg_1.a.x), !(func_2() || true)) % vec2<u32>(32u));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1) -> vec2<bool> {
    var var_0 = Struct_1(_wgslsmith_mod_vec4_u32(~_wgslsmith_clamp_vec4_u32(~vec4<u32>(4294967295u, 4294967295u, 48147u, global2.a.x), arg_0.a, vec4<u32>(0u, 4294967295u, 7982u, arg_1.a.x) & vec4<u32>(global2.a.x, u_input.b.x, 0u, 71077u)), abs(_wgslsmith_div_vec4_u32(arg_0.a, select(arg_1.a, arg_1.a, false)))), _wgslsmith_add_vec4_i32(vec4<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(-90550i, global1.x, arg_0.c.x), vec3<i32>(-33945i, arg_0.c.x, 2147483647i)), _wgslsmith_mult_vec3_i32(global2.b.wyx, vec3<i32>(-1i, global1.x, -25951i))), -global1.x, _wgslsmith_dot_vec4_i32(arg_1.b ^ vec4<i32>(-6908i, arg_0.c.x, arg_1.d, global2.c.x), arg_1.b), ~arg_1.d), global2.b), reverseBits(firstTrailingBit(countOneBits(global2.b.zz))), global2.d);
    var var_1 = ~1u;
    var var_2 = vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, ~global2.a.x, arg_0.a.x, min(4294967295u, 67372u)) << (arg_1.a % vec4<u32>(32u)), ~var_0.a), ~_wgslsmith_clamp_u32(0u, 0u >> (func_3(arg_1, vec3<u32>(18363u, 4294967295u, 0u), vec4<f32>(-161f, 100f, -1943f, -728f), false).x % 32u), 3993u), ~1u, ~(~78875u) >> (_wgslsmith_add_u32(arg_1.a.x, arg_1.a.x) % 32u));
    var var_3 = Struct_1(select(_wgslsmith_div_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(36523u, var_0.a.x, arg_0.a.x, u_input.a), vec4<u32>(var_2.x, 4294967295u, 4294967295u, 1u)), _wgslsmith_sub_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 42692u, 16591u, global2.a.x), vec4<u32>(var_0.a.x, 4294967295u, var_2.x, 0u), vec4<u32>(global2.a.x, u_input.b.x, u_input.a, var_2.x)), abs(vec4<u32>(0u, 2424u, 1u, var_0.a.x)))), _wgslsmith_div_vec4_u32(~global2.a, var_0.a) & abs(var_0.a), false), ~_wgslsmith_clamp_vec4_i32(abs(arg_1.b), _wgslsmith_sub_vec4_i32(countOneBits(vec4<i32>(global1.x, arg_1.d, arg_0.c.x, 1i)), var_0.b), ~max(vec4<i32>(2147483647i, arg_1.b.x, arg_1.d, arg_0.d), global2.b)), reverseBits(vec2<i32>(-2147483647i >> (var_0.a.x % 32u), -1i) ^ ~(-global2.b.yx)), _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(-_wgslsmith_clamp_vec4_i32(vec4<i32>(10163i, 51027i, 2147483647i, 2147483647i), vec4<i32>(global1.x, var_0.b.x, 31429i, 1i), global2.b), vec4<i32>(-global1.x, 32468i, global1.x, 2147483647i)), vec4<i32>(~(i32(-1i) * -26957i), 1i, arg_0.c.x, -36062i)));
    let var_4 = vec4<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(310f)))) <= _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(1f)))), false, select(false, true || func_2(), !all(vec2<bool>(true, true))), select(all(select(select(vec2<bool>(false, false), vec2<bool>(false, true), false), select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false)), func_2())), !(var_2.x <= func_4(Struct_1(vec4<u32>(u_input.a, 18588u, u_input.a, 0u), vec4<i32>(arg_0.d, global2.c.x, -1i, arg_0.c.x), arg_1.c, -50154i), vec2<u32>(1u, global2.a.x), vec3<f32>(502f, 1085f, 1077f), arg_0.a.x).x), select(true, true, true)));
    return var_4.yx;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(func_5(global0[_wgslsmith_index_u32(~79410u, 30u)], Struct_1(global2.a, global2.b, abs(func_1(vec3<bool>(false, false, true), global0[_wgslsmith_index_u32(u_input.b.x, 30u)], Struct_1(vec4<u32>(2902u, u_input.b.x, 1u, global2.a.x), vec4<i32>(-56088i, 25119i, global2.b.x, global2.d), global2.b.yy, 2147483647i))), abs(-global1.x))), !(!func_5(Struct_1(vec4<u32>(global2.a.x, global2.a.x, 56418u, u_input.a), vec4<i32>(global1.x, global1.x, 1i, 41565i), global2.c, -16958i), Struct_1(vec4<u32>(1u, 9776u, 0u, 0u), global2.b, vec2<i32>(-4831i, global1.x), 14682i))), true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(abs(1f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(-1000f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-979f * -1065f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(279f, 2530f) * _wgslsmith_f_op_f32(-873f * -2212f))))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(900f + 1000f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(247f, 1000f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(454f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -501f)))), min(global2.b.zzz, global2.b.zwz), func_4(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(firstTrailingBit(_wgslsmith_add_vec2_u32(u_input.b.wx, vec2<u32>(global2.a.x, 4294967295u))), (global2.a.wz << (vec2<u32>(2471u, global2.a.x) % vec2<u32>(32u))) >> (~u_input.b.yw % vec2<u32>(32u))), 30u)], global2.a.yw, vec3<f32>(-783f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-830f)), _wgslsmith_f_op_f32(f32(-1f) * -912f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(-106f)), 1000f, var_0.x))), func_3(Struct_1(~global2.a, ~global2.b, -vec2<i32>(global2.b.x, global2.b.x), global2.c.x), ~u_input.b.xyw, vec4<f32>(1f, 1f, 1f, 1f), any(select(vec4<bool>(false, false, var_0.x, var_0.x), vec4<bool>(true, false, false, true), vec4<bool>(true, true, var_0.x, false)))).x).x);
}


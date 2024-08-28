struct Struct_1 {
    a: vec2<bool>,
    b: vec3<u32>,
    c: vec2<u32>,
    d: i32,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
    c: i32,
    d: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 25>;

var<private> global1: Struct_1 = Struct_1(vec2<bool>(true, false), vec3<u32>(4294967295u, 1u, 49778u), vec2<u32>(4294967295u, 37400u), -89973i, true);

var<private> global2: Struct_2;

var<private> global3: array<Struct_2, 20> = array<Struct_2, 20>(Struct_2(Struct_1(vec2<bool>(false, false), vec3<u32>(5507u, 4294967295u, 95669u), vec2<u32>(1u, 1u), 0i, true), vec4<u32>(88024u, 1u, 4294967295u, 16543u), -30950i, 1187f), Struct_2(Struct_1(vec2<bool>(true, false), vec3<u32>(1u, 0u, 28771u), vec2<u32>(0u, 0u), 0i, true), vec4<u32>(2193u, 0u, 70303u, 0u), i32(-2147483648), -1928f), Struct_2(Struct_1(vec2<bool>(true, false), vec3<u32>(19675u, 1u, 39103u), vec2<u32>(0u, 0u), 27402i, false), vec4<u32>(1u, 1u, 1u, 1u), 33116i, 1007f), Struct_2(Struct_1(vec2<bool>(true, true), vec3<u32>(0u, 19169u, 3647u), vec2<u32>(80676u, 148u), -12254i, false), vec4<u32>(5572u, 4294967295u, 53315u, 0u), -16787i, 1221f), Struct_2(Struct_1(vec2<bool>(false, true), vec3<u32>(0u, 1u, 12456u), vec2<u32>(37927u, 11465u), 20188i, false), vec4<u32>(0u, 17661u, 9444u, 0u), -36896i, 157f), Struct_2(Struct_1(vec2<bool>(true, true), vec3<u32>(1u, 61750u, 13365u), vec2<u32>(0u, 1u), 2147483647i, false), vec4<u32>(1u, 4294967295u, 4294967295u, 1u), i32(-2147483648), -627f), Struct_2(Struct_1(vec2<bool>(true, true), vec3<u32>(1u, 83495u, 76561u), vec2<u32>(2805u, 4294967295u), -41822i, true), vec4<u32>(2189u, 4294967295u, 71677u, 4457u), 376i, 1369f), Struct_2(Struct_1(vec2<bool>(false, false), vec3<u32>(0u, 20329u, 35802u), vec2<u32>(0u, 62721u), 16937i, true), vec4<u32>(18600u, 0u, 119993u, 41750u), 1i, 1429f), Struct_2(Struct_1(vec2<bool>(false, false), vec3<u32>(37282u, 4294967295u, 89309u), vec2<u32>(18556u, 65136u), i32(-2147483648), true), vec4<u32>(0u, 0u, 1u, 1u), -56307i, -825f), Struct_2(Struct_1(vec2<bool>(false, true), vec3<u32>(4294967295u, 18882u, 1u), vec2<u32>(76407u, 53332u), 10464i, true), vec4<u32>(76137u, 1u, 47237u, 32303u), i32(-2147483648), 612f), Struct_2(Struct_1(vec2<bool>(false, false), vec3<u32>(1u, 15922u, 21858u), vec2<u32>(13684u, 996u), 1i, false), vec4<u32>(4294967295u, 4294967295u, 35428u, 52102u), 2147483647i, 346f), Struct_2(Struct_1(vec2<bool>(false, true), vec3<u32>(83598u, 26185u, 2171u), vec2<u32>(23843u, 1u), 56434i, true), vec4<u32>(7086u, 1u, 1u, 1u), 0i, 756f), Struct_2(Struct_1(vec2<bool>(true, false), vec3<u32>(28807u, 4294967295u, 0u), vec2<u32>(4294967295u, 1u), -1i, true), vec4<u32>(91172u, 0u, 23640u, 4294967295u), i32(-2147483648), -296f), Struct_2(Struct_1(vec2<bool>(true, true), vec3<u32>(1u, 1u, 4294967295u), vec2<u32>(60589u, 0u), -20710i, true), vec4<u32>(64838u, 1u, 0u, 0u), 22446i, -1664f), Struct_2(Struct_1(vec2<bool>(false, false), vec3<u32>(64507u, 1u, 4294967295u), vec2<u32>(1u, 1u), 2147483647i, true), vec4<u32>(28402u, 9477u, 0u, 0u), -1i, -799f), Struct_2(Struct_1(vec2<bool>(true, true), vec3<u32>(50526u, 0u, 67885u), vec2<u32>(4294967295u, 14433u), -12948i, false), vec4<u32>(77050u, 65983u, 1u, 17477u), 0i, -794f), Struct_2(Struct_1(vec2<bool>(true, false), vec3<u32>(1u, 5713u, 94802u), vec2<u32>(1u, 1u), -54173i, false), vec4<u32>(42639u, 4294967295u, 4294967295u, 44332u), -3091i, 151f), Struct_2(Struct_1(vec2<bool>(true, false), vec3<u32>(4294967295u, 1u, 4294967295u), vec2<u32>(7089u, 22933u), i32(-2147483648), true), vec4<u32>(0u, 39310u, 4294967295u, 1u), 55562i, 323f), Struct_2(Struct_1(vec2<bool>(true, false), vec3<u32>(16788u, 4294967295u, 13274u), vec2<u32>(4294967295u, 11801u), 2147483647i, true), vec4<u32>(13256u, 0u, 71185u, 1u), 19156i, 737f), Struct_2(Struct_1(vec2<bool>(true, true), vec3<u32>(1u, 50575u, 15696u), vec2<u32>(29898u, 0u), 2147483647i, false), vec4<u32>(35418u, 0u, 0u, 22439u), 0i, 114f));

var<private> global4: vec2<bool> = vec2<bool>(true, false);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32) -> vec4<bool> {
    let var_0 = _wgslsmith_f_op_vec4_f32(min(vec4<f32>(global2.d, -525f, _wgslsmith_f_op_f32(ceil(global2.d)), 251f), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -339f), _wgslsmith_f_op_f32(step(-535f, global2.d)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global2.d))), global2.d), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global2.d)) * _wgslsmith_f_op_f32(959f + -935f)), _wgslsmith_div_f32(global2.d, _wgslsmith_f_op_f32(global2.d * 995f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global2.d - global2.d), -311f, all(vec2<bool>(global1.a.x, global0[_wgslsmith_index_u32(global1.b.x, 25u)])))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1115f) - _wgslsmith_f_op_f32(global2.d * -410f))), true))));
    let var_1 = u_input.b.xz;
    global3 = array<Struct_2, 20>();
    let var_2 = vec2<u32>(u_input.c, ~global1.b.x);
    let var_3 = global2.b.xyy;
    return select(select(!(!vec4<bool>(global1.a.x, false, global1.a.x, global0[_wgslsmith_index_u32(var_3.x, 25u)])), select(select(select(vec4<bool>(false, global2.a.a.x, false, global1.a.x), vec4<bool>(false, global0[_wgslsmith_index_u32(28418u, 25u)], global4.x, global4.x), vec4<bool>(global1.e, false, false, global2.a.a.x)), !vec4<bool>(false, false, global1.e, true), select(vec4<bool>(global1.a.x, global1.a.x, true, global4.x), vec4<bool>(false, true, global4.x, true), true)), select(!vec4<bool>(true, global2.a.a.x, global4.x, global1.a.x), vec4<bool>(global0[_wgslsmith_index_u32(26607u, 25u)], true, true, false), select(vec4<bool>(global2.a.a.x, global4.x, global0[_wgslsmith_index_u32(0u, 25u)], true), vec4<bool>(global4.x, global1.a.x, global0[_wgslsmith_index_u32(var_2.x, 25u)], global0[_wgslsmith_index_u32(u_input.c, 25u)]), global0[_wgslsmith_index_u32(4294967295u, 25u)])), vec4<bool>(true, all(global1.a), -1i >= arg_0, !global1.e)), any(!select(vec3<bool>(false, global4.x, global0[_wgslsmith_index_u32(1u, 25u)]), vec3<bool>(global4.x, false, global1.e), global2.a.e))), vec4<bool>(34556u < var_2.x, all(vec3<bool>(false, global2.a.a.x, global2.a.a.x)) & ((-1034f <= global2.d) | global0[_wgslsmith_index_u32(var_3.x, 25u)]), any(global2.a.a), _wgslsmith_clamp_u32(_wgslsmith_mult_u32(global1.c.x, var_2.x), 4294967295u, firstTrailingBit(global1.b.x)) < ~u_input.c), select(!select(!vec4<bool>(global1.e, false, global4.x, true), vec4<bool>(true, true, false, false), true), vec4<bool>(global2.a.e, false, true, !all(vec3<bool>(global2.a.e, global0[_wgslsmith_index_u32(u_input.c, 25u)], true))), !any(vec3<bool>(global2.a.a.x, true, global4.x))));
}

fn func_4(arg_0: vec3<u32>, arg_1: vec4<i32>, arg_2: vec4<bool>) -> i32 {
    let var_0 = -firstTrailingBit(select(arg_1.xy, countOneBits(vec2<i32>(2147483647i, arg_1.x)), arg_2.xw));
    global1 = global2.a;
    global3 = array<Struct_2, 20>();
    var var_1 = global2.a.d;
    var var_2 = global2.a;
    return global2.c;
}

fn func_2() -> Struct_2 {
    global4 = !select(vec2<bool>(true, true), global2.a.a, true);
    global2 = Struct_2(global2.a, global2.b, func_4(abs(global1.b), _wgslsmith_mult_vec4_i32(-(vec4<i32>(-446i, 12285i, 0i, u_input.b.x) | u_input.a), vec4<i32>(~global2.a.d, _wgslsmith_dot_vec2_i32(u_input.b.zw, vec2<i32>(-2822i, global1.d)), 8198i, 0i)), select(vec4<bool>(any(vec2<bool>(global1.e, global2.a.a.x)), any(vec3<bool>(false, global4.x, true)), global4.x, any(vec4<bool>(true, global2.a.e, global0[_wgslsmith_index_u32(global1.b.x, 25u)], false))), func_3(2147483647i), vec4<bool>(true, global0[_wgslsmith_index_u32(1u, 25u)], u_input.b.x > 1i, global2.a.a.x))), global2.d);
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2.d, _wgslsmith_f_op_f32(-global2.d)));
    return Struct_2(global2.a, global2.b >> (_wgslsmith_div_vec4_u32(~(~global2.b), global2.b) % vec4<u32>(32u)), u_input.a.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global2.d))), global2.d));
}

fn func_1(arg_0: Struct_2, arg_1: bool, arg_2: bool) -> Struct_2 {
    global2 = func_2();
    let var_0 = func_2().a;
    var var_1 = false;
    global2 = Struct_2(func_2().a, vec4<u32>(_wgslsmith_div_u32(0u, ~49754u << (_wgslsmith_mod_u32(var_0.b.x, 89679u) % 32u)), 18159u, u_input.c, 4294967295u), -1418i << ((_wgslsmith_add_u32(select(var_0.c.x, global2.a.b.x, false), 13185u) & func_2().b.x) % 32u), -698f);
    global4 = select(global1.a, func_2().a.a, select(vec2<bool>(all(!vec4<bool>(global1.e, true, arg_2, true)), global2.a.e), global2.a.a, arg_0.a.e));
    return Struct_2(Struct_1(!vec2<bool>(arg_1, false), select(global2.a.b, global1.b, true), _wgslsmith_div_vec2_u32(global2.b.zz, vec2<u32>(u_input.c, 22358u)) | arg_0.a.b.xy, firstLeadingBit(-global1.d), true), vec4<u32>(~_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(global2.a.c, global2.b.wy), u_input.c | 20389u), 12413u, var_0.b.x, u_input.c), var_0.d, 741f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(Struct_2(global2.a, ~(vec4<u32>(91892u, u_input.c, global2.a.c.x, u_input.c) << (~global2.b % vec4<u32>(32u))), u_input.b.x, _wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(-global2.d))), true, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.d)))) < _wgslsmith_f_op_f32(f32(-1f) * -1681f));
    var var_1 = true;
    var var_2 = 1000f;
    global2 = var_0;
    global2 = global3[_wgslsmith_index_u32(~u_input.c, 20u)];
    var var_3 = _wgslsmith_mult_vec2_i32(~_wgslsmith_mod_vec2_i32(~(-vec2<i32>(global2.a.d, u_input.a.x)), vec2<i32>(~43695i, global2.a.d)), u_input.a.xz);
    global1 = global2.a;
    let var_4 = Struct_1(var_0.a.a, _wgslsmith_div_vec3_u32(vec3<u32>(_wgslsmith_div_u32(~var_0.a.b.x, ~0u), _wgslsmith_add_u32(var_0.a.c.x, reverseBits(4335u)), var_0.b.x), select(reverseBits(countOneBits(var_0.b.zzy)), abs(vec3<u32>(var_0.a.b.x, global2.a.c.x, 39265u) | vec3<u32>(1u, 48634u, 1u)), max(51933u, 4294967295u) == global1.c.x)), var_0.a.b.yx, _wgslsmith_sub_i32(var_3.x, _wgslsmith_div_i32(~(~global2.c), _wgslsmith_div_i32(-5063i, var_0.c) & (var_3.x & -1i))), true || global1.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(~max(firstTrailingBit(func_1(Struct_2(Struct_1(vec2<bool>(false, var_0.a.e), vec3<u32>(0u, 20331u, 4294967295u), vec2<u32>(46594u, var_0.a.c.x), global2.c, var_0.a.e), vec4<u32>(52006u, 38985u, 1u, u_input.c), 0i, 1000f), true, true).b.x), abs(global2.b.x)));
}


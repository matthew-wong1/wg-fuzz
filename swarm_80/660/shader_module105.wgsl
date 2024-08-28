struct Struct_1 {
    a: u32,
    b: vec4<i32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: Struct_1,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 21>;

var<private> global1: vec2<i32>;

var<private> global2: f32 = -555f;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
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

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_2(countOneBits(vec3<u32>(_wgslsmith_sub_u32(u_input.b, u_input.b) << (abs(u_input.b) % 32u), u_input.b, u_input.b)), Struct_1(u_input.b, abs(vec4<i32>(_wgslsmith_add_i32(u_input.a.x, global1.x), u_input.a.x, ~36262i, _wgslsmith_add_i32(global1.x, 45036i)))), Struct_1(~4294967295u, vec4<i32>(u_input.a.x, firstLeadingBit(u_input.c), ~(-22014i), u_input.a.x) | -select(vec4<i32>(global1.x, u_input.c, 6324i, 0i), vec4<i32>(-31728i, -8205i, -2147483647i, u_input.c), vec4<bool>(true, false, false, true))), !(!vec4<bool>(true, true, true, all(vec3<bool>(true, false, false)))));
    var var_1 = _wgslsmith_div_f32(636f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(866f, 299f))))) + -624f));
    return Struct_1(u_input.b, -var_0.c.b);
}

fn func_3() -> Struct_1 {
    var var_0 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -918f))), -335f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(330f, 2311f) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(2951f, 1000f))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -911f))))))));
    var var_1 = global0[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(countOneBits(firstTrailingBit(vec4<u32>(1u, 0u, u_input.b, u_input.b))), select(vec4<u32>(u_input.b, 0u, u_input.b, 0u), ~vec4<u32>(1u, 1u, u_input.b, 1u), select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false)))), ~min(vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b), vec4<u32>(u_input.b, 1326u, 32922u, 1u))), ~(~u_input.b)), 21u)];
    var var_2 = _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, _wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(min(var_0.x, _wgslsmith_f_op_f32(trunc(var_0.x))))), var_0.x) + vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(466f * _wgslsmith_f_op_f32(floor(-126f))) - 382f), var_0.x, _wgslsmith_f_op_f32(trunc(1313f))));
    var var_3 = Struct_1(u_input.b, _wgslsmith_sub_vec4_i32(vec4<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(u_input.a, var_1.b.b.wwy), _wgslsmith_sub_vec3_i32(vec3<i32>(global1.x, 33745i, 1i), u_input.a)), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, 5204i, var_1.b.b.x), vec3<i32>(global1.x, 8205i, 2147483647i)), var_1.c.b.x, -countOneBits(var_1.b.b.x)), var_1.c.b >> (select(~vec4<u32>(var_1.c.a, u_input.b, var_1.b.a, u_input.b), vec4<u32>(74172u, 94563u, 24081u, var_1.c.a) ^ vec4<u32>(52229u, 38700u, var_1.b.a, var_1.b.a), true) % vec4<u32>(32u))));
    var var_4 = vec2<bool>(!((var_3.b.x & countOneBits(global1.x)) != var_1.b.b.x), var_1.d.x);
    return Struct_1(16217u, _wgslsmith_div_vec4_i32(abs(var_3.b & var_1.b.b) >> ((~vec4<u32>(64379u, 50904u, 37567u, var_3.a) | vec4<u32>(var_1.b.a, 40224u, 0u, 0u)) % vec4<u32>(32u)), ~_wgslsmith_sub_vec4_i32(vec4<i32>(global1.x, var_3.b.x, var_1.b.b.x, -13122i) & vec4<i32>(-1i, u_input.c, u_input.c, 1i), _wgslsmith_add_vec4_i32(vec4<i32>(var_1.b.b.x, 17503i, u_input.a.x, var_3.b.x), var_3.b))));
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_2, arg_2: Struct_2, arg_3: vec4<i32>) -> u32 {
    global2 = _wgslsmith_f_op_f32(-359f + 644f);
    global2 = _wgslsmith_f_op_f32(905f - 273f);
    var var_0 = -34126i;
    let var_1 = arg_2;
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(ceil(-776f)), 714f, _wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -393f) + -450f)), 1850f);
    return var_1.c.a;
}

fn func_1() -> Struct_2 {
    let var_0 = Struct_2(_wgslsmith_div_vec3_u32(~(~vec3<u32>(u_input.b, 67188u, 0u)), reverseBits(~(~vec3<u32>(u_input.b, u_input.b, 1u)))), Struct_1(func_4(select(select(vec2<bool>(true, true), vec2<bool>(false, true), true), vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, true), false)), Struct_2(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.b, u_input.b, u_input.b), vec3<u32>(u_input.b, u_input.b, 40889u)), Struct_1(1u, vec4<i32>(global1.x, -54567i, u_input.a.x, u_input.a.x)), func_2(), vec4<bool>(false, false, true, true)), Struct_2(~vec3<u32>(66361u, u_input.b, 0u), Struct_1(11136u, vec4<i32>(-2147483647i, -4287i, u_input.a.x, -2147483647i)), func_3(), select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, false))), vec4<i32>(-1i | u_input.c, _wgslsmith_add_i32(global1.x, 10906i), ~u_input.a.x, 1i)), vec4<i32>(countOneBits(_wgslsmith_clamp_i32(-39344i, -20530i, 6919i)), global1.x, 1i, 25472i)), Struct_1(~_wgslsmith_mult_u32(11449u, _wgslsmith_div_u32(u_input.b, u_input.b)), _wgslsmith_clamp_vec4_i32(~(vec4<i32>(0i, -318i, u_input.c, global1.x) | vec4<i32>(-2147483647i, u_input.a.x, -30311i, -33893i)), _wgslsmith_div_vec4_i32(vec4<i32>(global1.x, u_input.c, 1i, global1.x), vec4<i32>(global1.x, u_input.c, 3295i, u_input.c)) >> (_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, u_input.b, 43950u, 61389u), vec4<u32>(1u, 1u, 11231u, u_input.b)) % vec4<u32>(32u)), ~(vec4<i32>(u_input.a.x, global1.x, global1.x, global1.x) ^ vec4<i32>(u_input.c, u_input.a.x, -34033i, global1.x)))), !vec4<bool>(false, any(vec2<bool>(true, true)), true, all(select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, true)))));
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -2636f);
    global2 = 1420f;
    var var_2 = var_0.b.a;
    global0 = array<Struct_2, 21>();
    return Struct_2(abs(var_0.a), func_2(), var_0.b, select(select(vec4<bool>(all(var_0.d.zyz), !var_0.d.x, true, all(var_0.d)), vec4<bool>(!var_0.d.x, true, false, true), var_0.d), !select(var_0.d, vec4<bool>(true, false, var_0.d.x, false), select(vec4<bool>(false, var_0.d.x, var_0.d.x, true), vec4<bool>(var_0.d.x, true, var_0.d.x, var_0.d.x), vec4<bool>(var_0.d.x, false, var_0.d.x, var_0.d.x))), global1.x <= 1675i));
}

fn func_5(arg_0: Struct_2, arg_1: Struct_2) -> Struct_2 {
    global1 = arg_0.c.b.xy;
    var var_0 = ~arg_0.c.b.x;
    var var_1 = Struct_2(~arg_1.a, Struct_1(u_input.b, vec4<i32>(-2147483647i, ~(-arg_0.c.b.x), global1.x, 1i)), func_3(), vec4<bool>(arg_1.d.x || ((747i | arg_0.c.b.x) > -1i), false, false, select(select(0u, arg_1.a.x, false) <= arg_0.c.a, true, false)));
    let var_2 = -_wgslsmith_add_i32(-(func_3().b.x ^ arg_1.c.b.x), ~u_input.a.x);
    var_1 = func_1();
    return func_1();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(func_1(), func_1());
    var var_1 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-392f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-257f - 975f))), _wgslsmith_f_op_f32(1f + 1528f), -685f), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2241f), _wgslsmith_f_op_f32(select(-138f, 1529f, false)), _wgslsmith_f_op_f32(951f - 957f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(635f, -789f, -1471f))))));
    var_0 = global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(firstLeadingBit(vec2<u32>(1u, _wgslsmith_clamp_u32(u_input.b, 17064u, var_0.c.a))), ~abs(vec2<u32>(89770u, var_0.b.a))), 21u)];
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-385f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_1.x - 224f), var_1.x)), _wgslsmith_f_op_f32(round(1360f))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1573f, -670f, -1195f)) * _wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_1.x, 1473f, -976f), vec3<f32>(var_1.x, -300f, var_1.x)))))))));
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -572f) - 1f);
    var var_4 = Struct_2(abs(func_5(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(51996u, 4161u, 4294967295u, u_input.b), vec4<u32>(u_input.b, 15808u, var_0.c.a, u_input.b)) & 1u, 21u)], Struct_2(vec3<u32>(u_input.b, var_0.b.a, 1u), Struct_1(4294967295u, var_0.c.b), func_1().b, var_0.d)).a), func_5(global0[_wgslsmith_index_u32(4294967295u, 21u)], global0[_wgslsmith_index_u32(~func_5(Struct_2(var_0.a, Struct_1(61690u, vec4<i32>(global1.x, -23347i, var_0.b.b.x, u_input.a.x)), Struct_1(25352u, vec4<i32>(-95862i, 1i, 0i, 30134i)), var_0.d), Struct_2(var_0.a, Struct_1(86955u, vec4<i32>(-5438i, -2147483647i, -72941i, -1i)), Struct_1(u_input.b, var_0.c.b), var_0.d)).c.a, 21u)]).c, func_1().b, var_0.d);
    var var_5 = func_5(func_1(), func_5(Struct_2(var_4.a, var_0.c, func_3(), func_1().d), Struct_2(var_0.a, var_0.c, func_5(global0[_wgslsmith_index_u32(~u_input.b, 21u)], global0[_wgslsmith_index_u32(var_0.b.a, 21u)]).c, !(!vec4<bool>(true, false, var_0.d.x, false)))));
    var var_6 = _wgslsmith_f_op_f32(-var_1.x);
    let x = u_input.a;
    s_output = StorageBuffer(var_4.c.b, 38433i, var_5.b.b.x);
}


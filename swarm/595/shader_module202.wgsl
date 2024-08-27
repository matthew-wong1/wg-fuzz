struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: i32,
    d: vec2<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 24> = array<u32, 24>(0u, 4294967295u, 7573u, 8416u, 0u, 1u, 1u, 37125u, 44901u, 1u, 43480u, 4294967295u, 48976u, 4294967295u, 1u, 65279u, 4294967295u, 36441u, 24072u, 4294967295u, 55352u, 0u, 1u, 1u);

var<private> global1: array<vec4<u32>, 31> = array<vec4<u32>, 31>(vec4<u32>(7823u, 4294967295u, 0u, 13550u), vec4<u32>(1u, 4294967295u, 21458u, 60900u), vec4<u32>(0u, 45482u, 34003u, 52934u), vec4<u32>(44988u, 1u, 64132u, 1u), vec4<u32>(29793u, 18207u, 72459u, 4294967295u), vec4<u32>(5029u, 45237u, 1u, 66702u), vec4<u32>(4294967295u, 4294967295u, 0u, 0u), vec4<u32>(1u, 11339u, 84690u, 1u), vec4<u32>(4294967295u, 4294967295u, 48138u, 10686u), vec4<u32>(22936u, 70213u, 8007u, 1u), vec4<u32>(4294967295u, 1u, 10416u, 0u), vec4<u32>(112011u, 35607u, 74662u, 4294967295u), vec4<u32>(15359u, 0u, 8557u, 712u), vec4<u32>(0u, 32531u, 1u, 49959u), vec4<u32>(4294967295u, 6139u, 12604u, 4294967295u), vec4<u32>(837u, 0u, 4294967295u, 30175u), vec4<u32>(4294967295u, 64194u, 3563u, 11952u), vec4<u32>(25127u, 90574u, 1u, 29242u), vec4<u32>(59094u, 4294967295u, 0u, 64424u), vec4<u32>(4294967295u, 44072u, 4294967295u, 6300u), vec4<u32>(0u, 50213u, 1u, 1u), vec4<u32>(117726u, 39769u, 67416u, 29504u), vec4<u32>(1u, 11043u, 4294967295u, 4294967295u), vec4<u32>(47444u, 4294967295u, 1u, 10229u), vec4<u32>(4294967295u, 4294967295u, 42370u, 31796u), vec4<u32>(9167u, 1u, 52719u, 4294967295u), vec4<u32>(4294967295u, 23813u, 76261u, 0u), vec4<u32>(8125u, 0u, 72743u, 1u), vec4<u32>(4294967295u, 75426u, 4294967295u, 23308u), vec4<u32>(0u, 43660u, 1u, 60445u), vec4<u32>(70913u, 50187u, 0u, 6608u));

var<private> global2: array<f32, 27> = array<f32, 27>(640f, 1751f, -997f, -1562f, -3424f, -349f, 401f, -312f, -143f, -911f, -531f, -916f, 1000f, -1000f, -100f, 874f, 935f, -135f, -109f, 522f, 397f, 420f, -1000f, 322f, 110f, 594f, -477f);

var<private> global3: f32 = -1000f;

var<private> global4: array<vec3<i32>, 21> = array<vec3<i32>, 21>(vec3<i32>(-1i, -9912i, 23219i), vec3<i32>(9639i, i32(-2147483648), -23898i), vec3<i32>(2147483647i, -1i, 0i), vec3<i32>(1i, 2147483647i, -22274i), vec3<i32>(-4805i, 8812i, 0i), vec3<i32>(-10792i, 1i, i32(-2147483648)), vec3<i32>(0i, 10673i, 71339i), vec3<i32>(-10994i, -14319i, i32(-2147483648)), vec3<i32>(1i, -1i, 1i), vec3<i32>(-1i, 15370i, 13324i), vec3<i32>(-24104i, -6836i, 16515i), vec3<i32>(-18168i, -1i, -21057i), vec3<i32>(-1i, -38154i, 41584i), vec3<i32>(3241i, -22432i, -36337i), vec3<i32>(1i, 67563i, i32(-2147483648)), vec3<i32>(17240i, 0i, i32(-2147483648)), vec3<i32>(2106i, 0i, i32(-2147483648)), vec3<i32>(-4729i, 2147483647i, -25190i), vec3<i32>(-1i, -33562i, 2147483647i), vec3<i32>(-56338i, -70073i, 9778i), vec3<i32>(1i, 2147483647i, 20155i));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
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

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_1) -> i32 {
    global4 = array<vec3<i32>, 21>();
    global4 = array<vec3<i32>, 21>();
    global4 = array<vec3<i32>, 21>();
    global2 = array<f32, 27>();
    global3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-779f)));
    return u_input.b;
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_1(~select(countOneBits(u_input.a), select(0u, 4294967295u, false), true | any(vec3<bool>(false, false, false))));
    var var_1 = select(!vec2<bool>(true, u_input.b < func_3(vec3<f32>(679f, -1684f, 1000f), Struct_1(global0[_wgslsmith_index_u32(57885u, 24u)]))), !(!select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false)), vec2<bool>(false, false))), vec2<bool>(true, false));
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2[_wgslsmith_index_u32(4294967295u, 27u)], global2[_wgslsmith_index_u32(var_0.a, 27u)], global2[_wgslsmith_index_u32(u_input.a, 27u)])))))));
    var var_3 = global0[_wgslsmith_index_u32(countOneBits(~(u_input.a << (4294967295u % 32u)) | ~(~1u)), 24u)] | _wgslsmith_dot_vec4_u32(~vec4<u32>(var_0.a & 4294967295u, var_0.a, var_0.a, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, global0[_wgslsmith_index_u32(3642u, 24u)]), vec2<u32>(var_0.a, var_0.a))), ~global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(~1u, ~133087u), 31u)]);
    global3 = -1540f;
    return Struct_1(select(9336u, 0u, true));
}

fn func_1() -> vec2<bool> {
    var var_0 = Struct_1(61171u);
    var var_1 = func_2();
    let var_2 = func_2();
    var_1 = Struct_1(global0[_wgslsmith_index_u32(var_1.a, 24u)]);
    var var_3 = var_2;
    return !vec2<bool>(_wgslsmith_add_u32(var_1.a, var_0.a) >= (var_0.a >> (var_0.a % 32u)), true);
}

fn func_4(arg_0: vec2<bool>, arg_1: vec2<bool>) -> Struct_1 {
    let var_0 = func_2();
    let var_1 = 4058i;
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(global2[_wgslsmith_index_u32(var_0.a, 27u)], 1039f) + _wgslsmith_f_op_vec2_f32(vec2<f32>(global2[_wgslsmith_index_u32(4294967295u, 27u)], global2[_wgslsmith_index_u32(4294967295u, 27u)]) - vec2<f32>(-1167f, global2[_wgslsmith_index_u32(45528u, 27u)])))))));
    var var_3 = ~(~(_wgslsmith_sub_u32(u_input.c, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 24u)], 24u)] & 15269u) ^ (_wgslsmith_div_u32(72931u, 63205u) & global0[_wgslsmith_index_u32(0u >> (global0[_wgslsmith_index_u32(24720u, 24u)] % 32u), 24u)])));
    global2 = array<f32, 27>();
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(select(select(select(func_1(), vec2<bool>(false, false), true), vec2<bool>(true, true), true), func_1(), vec2<bool>(false, false)), select(vec2<bool>(_wgslsmith_f_op_f32(trunc(global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 24u)], 27u)])) <= _wgslsmith_f_op_f32(select(global2[_wgslsmith_index_u32(0u, 27u)], 1166f, true)), true), vec2<bool>(true, func_1().x), vec2<bool>(true, true)));
    var var_1 = all(vec3<bool>(true, true, true));
    var_0 = Struct_1(~(37242u << (func_4(vec2<bool>(true, false), vec2<bool>(true, true)).a % 32u)) | _wgslsmith_add_u32(~(u_input.a >> (u_input.a % 32u)), var_0.a));
    var var_2 = _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2[_wgslsmith_index_u32(70866u, 27u)], -2177f, global2[_wgslsmith_index_u32(0u, 27u)])) * vec3<f32>(-133f, -857f, global2[_wgslsmith_index_u32(16426u, 27u)]))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global2[_wgslsmith_index_u32(23291u, 27u)]))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(455f - 785f)), -966f)), vec3<f32>(-2203f, -951f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1510f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-351f + 413f), _wgslsmith_f_op_f32(sign(262f)))))));
    global4 = array<vec3<i32>, 21>();
    var var_3 = ((select(u_input.d & vec2<i32>(0i, u_input.d.x), u_input.d & vec2<i32>(73730i, u_input.d.x), vec2<bool>(true, true)) | u_input.d) ^ (vec2<i32>(u_input.d.x, ~0i) ^ ~vec2<i32>(u_input.d.x, 0i))) << (vec2<u32>(var_0.a, _wgslsmith_mult_u32(u_input.a, ~abs(4294967295u))) % vec2<u32>(32u));
    let var_4 = Struct_1(u_input.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.x, global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(17427u, 24u)], 24u)], 27u)], 1077f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1320f, 853f, 213f) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 24u)], 27u)], 460f, global2[_wgslsmith_index_u32(var_0.a, 27u)]))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(1260f, global2[_wgslsmith_index_u32(u_input.c, 27u)], 1306f))))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(60257u, 27u)]), _wgslsmith_f_op_f32(f32(-1f) * -1220f))), -func_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(775f, global2[_wgslsmith_index_u32(0u, 27u)], var_2.x), vec3<f32>(-186f, 150f, 342f))) + vec3<f32>(global2[_wgslsmith_index_u32(81666u, 27u)], 1011f, 912f)), func_2()), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(0u, 27u)])))), -(firstLeadingBit(u_input.b) ^ firstLeadingBit(_wgslsmith_sub_i32(-36209i, 3746i))));
}


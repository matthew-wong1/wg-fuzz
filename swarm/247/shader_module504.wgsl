struct Struct_1 {
    a: u32,
    b: vec3<f32>,
    c: vec2<i32>,
    d: vec4<i32>,
    e: vec3<f32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec2<i32>,
}

struct Struct_3 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: vec3<f32>,
    d: vec3<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 30>;

var<private> global1: u32 = 37787u;

var<private> global2: array<Struct_1, 21> = array<Struct_1, 21>(Struct_1(19290u, vec3<f32>(2453f, -1265f, 1000f), vec2<i32>(1i, 1i), vec4<i32>(2147483647i, -27839i, -50376i, -1i), vec3<f32>(994f, 809f, -125f)), Struct_1(4294967295u, vec3<f32>(-238f, 1000f, -1066f), vec2<i32>(6481i, 43249i), vec4<i32>(-1i, -3856i, 64345i, -64612i), vec3<f32>(-640f, 1416f, -753f)), Struct_1(0u, vec3<f32>(-1643f, 3176f, 1201f), vec2<i32>(0i, -41777i), vec4<i32>(0i, -61425i, -1297i, i32(-2147483648)), vec3<f32>(610f, -1869f, -630f)), Struct_1(4294967295u, vec3<f32>(-1000f, -506f, -931f), vec2<i32>(-22557i, -35112i), vec4<i32>(3768i, 2147483647i, 35462i, i32(-2147483648)), vec3<f32>(574f, 652f, 1389f)), Struct_1(1u, vec3<f32>(566f, 1617f, 1036f), vec2<i32>(i32(-2147483648), -1i), vec4<i32>(-1i, -38038i, i32(-2147483648), 71098i), vec3<f32>(562f, -1000f, 1000f)), Struct_1(1u, vec3<f32>(-284f, 387f, -385f), vec2<i32>(-23462i, 18238i), vec4<i32>(0i, 0i, 0i, 2147483647i), vec3<f32>(1770f, 1325f, -792f)), Struct_1(1u, vec3<f32>(-167f, 1000f, 712f), vec2<i32>(-10813i, -44651i), vec4<i32>(-9178i, 2147483647i, -18192i, -36324i), vec3<f32>(-1243f, -1059f, -275f)), Struct_1(1u, vec3<f32>(919f, 715f, -2035f), vec2<i32>(1i, -4879i), vec4<i32>(-11624i, -1i, 2147483647i, 0i), vec3<f32>(-1000f, -1803f, 341f)), Struct_1(0u, vec3<f32>(-552f, -687f, -495f), vec2<i32>(-1446i, 2147483647i), vec4<i32>(-41346i, -1i, i32(-2147483648), -97774i), vec3<f32>(383f, -997f, -556f)), Struct_1(5032u, vec3<f32>(151f, 2391f, 274f), vec2<i32>(i32(-2147483648), 31935i), vec4<i32>(1i, -70678i, 40239i, -54530i), vec3<f32>(387f, 1314f, 1577f)), Struct_1(40571u, vec3<f32>(-1177f, 460f, -141f), vec2<i32>(1i, 1i), vec4<i32>(-3170i, -41309i, 15690i, 1i), vec3<f32>(1115f, -1535f, 169f)), Struct_1(4294967295u, vec3<f32>(-418f, -304f, -1036f), vec2<i32>(-16039i, -23802i), vec4<i32>(2147483647i, -42884i, -7690i, i32(-2147483648)), vec3<f32>(1443f, 1289f, -1169f)), Struct_1(1u, vec3<f32>(103f, 228f, -501f), vec2<i32>(i32(-2147483648), 39380i), vec4<i32>(-1i, 1i, 17471i, -51525i), vec3<f32>(1884f, -341f, -257f)), Struct_1(1u, vec3<f32>(734f, 330f, 396f), vec2<i32>(i32(-2147483648), 20443i), vec4<i32>(i32(-2147483648), i32(-2147483648), i32(-2147483648), -11139i), vec3<f32>(1113f, 1416f, 878f)), Struct_1(0u, vec3<f32>(231f, 653f, 335f), vec2<i32>(-22603i, 0i), vec4<i32>(-4766i, -19734i, 40104i, -52169i), vec3<f32>(-1968f, -356f, -1029f)), Struct_1(4294967295u, vec3<f32>(390f, 1000f, 892f), vec2<i32>(-16461i, 1i), vec4<i32>(64217i, 1864i, 17802i, 25175i), vec3<f32>(361f, 1000f, 704f)), Struct_1(0u, vec3<f32>(-452f, -1000f, 2330f), vec2<i32>(-14427i, -9076i), vec4<i32>(1i, 1i, 0i, -36627i), vec3<f32>(1386f, -168f, 648f)), Struct_1(8483u, vec3<f32>(-320f, 724f, 541f), vec2<i32>(-36314i, -40010i), vec4<i32>(i32(-2147483648), 1i, -1i, -1i), vec3<f32>(-451f, 885f, -718f)), Struct_1(4294967295u, vec3<f32>(-331f, 1000f, -213f), vec2<i32>(2147483647i, -24179i), vec4<i32>(i32(-2147483648), 17040i, 0i, 1i), vec3<f32>(-542f, -1000f, 153f)), Struct_1(47136u, vec3<f32>(-1372f, -1153f, 536f), vec2<i32>(15754i, -1i), vec4<i32>(i32(-2147483648), 4086i, -43359i, i32(-2147483648)), vec3<f32>(144f, 1000f, 1000f)), Struct_1(64735u, vec3<f32>(-524f, -852f, 1117f), vec2<i32>(i32(-2147483648), i32(-2147483648)), vec4<i32>(1i, -12805i, -22632i, -1i), vec3<f32>(502f, 1000f, -494f)));

var<private> global3: bool;

var<private> global4: u32;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: u32) -> f32 {
    var var_0 = Struct_1(4294967295u, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1920f, -285f, -1370f))), vec3<f32>(_wgslsmith_f_op_f32(abs(1418f)), _wgslsmith_div_f32(1043f, -1351f), -1848f))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(346f, -1134f, 301f)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-683f, 514f, 401f) + _wgslsmith_div_vec3_f32(vec3<f32>(1787f, 1825f, 102f), vec3<f32>(-455f, -617f, 249f)))))), u_input.b.yx, -_wgslsmith_sub_vec4_i32(abs(~vec4<i32>(1i, 0i, 17783i, u_input.b.x)), (vec4<i32>(-64584i, -2147483647i, u_input.b.x, u_input.b.x) | vec4<i32>(u_input.b.x, -7061i, -1i, u_input.b.x)) >> (vec4<u32>(0u, 94562u, 4294967295u, 13148u) % vec4<u32>(32u))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-566f, -137f, -1737f)))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-601f, -2735f, 804f)))))));
    var var_1 = select(select(vec3<bool>(false, true, true), !vec3<bool>(true, any(vec3<bool>(true, true, false)), any(vec3<bool>(true, true, false))), vec3<bool>(var_0.e.x == _wgslsmith_f_op_f32(-var_0.e.x), ~u_input.b.x < ~(-27307i), !all(vec2<bool>(true, true)))), vec3<bool>(true, true, select(var_0.e.x == var_0.e.x, true, true)), true);
    var_1 = !vec3<bool>(var_1.x, true, var_1.x);
    var var_2 = select(var_1.yz, var_1.xx, !var_1.yz);
    let var_3 = Struct_3(_wgslsmith_add_vec2_u32(~_wgslsmith_div_vec2_u32(~vec2<u32>(u_input.a.x, u_input.a.x), ~vec2<u32>(var_0.a, 0u)), ~(vec2<u32>(0u, 1u) >> (vec2<u32>(0u, arg_0) % vec2<u32>(32u))) << (~vec2<u32>(u_input.a.x, 0u) % vec2<u32>(32u))));
    return var_0.b.x;
}

fn func_2(arg_0: Struct_2) -> vec2<bool> {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(trunc(-130f)), -353f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(1328f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(125f, -1141f)))) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-427f + arg_0.a.x), _wgslsmith_f_op_f32(step(-1880f, -1352f))))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_3(26087u)), _wgslsmith_f_op_f32(-arg_0.a.x))))));
    let var_1 = Struct_3(~u_input.a);
    var var_2 = select(vec2<bool>(true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a.x)) > _wgslsmith_f_op_f32(-arg_0.a.x)), vec2<bool>(true, false), select(!select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, false), true), vec2<bool>(false, false)), select(vec2<bool>(true, true), !select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false)), var_1.a.x <= 10975u), vec2<bool>(false, _wgslsmith_f_op_f32(select(var_0.x, arg_0.a.x, false)) >= var_0.x)));
    var var_3 = -2147483647i;
    let var_4 = Struct_2(arg_0.a, arg_0.b | u_input.b.yy);
    return vec2<bool>(var_2.x, 456u < (_wgslsmith_add_u32(~var_1.a.x, var_1.a.x) & _wgslsmith_dot_vec2_u32(~vec2<u32>(var_1.a.x, var_1.a.x), ~vec2<u32>(u_input.a.x, 1u))));
}

fn func_1(arg_0: vec4<i32>, arg_1: Struct_3) -> u32 {
    global1 = 1u;
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(999f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1000f, 344f))), -743f)));
    var var_1 = any(!(!select(select(vec2<bool>(false, true), vec2<bool>(true, true), true), func_2(Struct_2(vec3<f32>(var_0.x, -201f, var_0.x), arg_0.yy)), vec2<bool>(true, true))));
    global3 = false;
    global3 = any(vec4<bool>(any(vec4<bool>(arg_1.a.x >= arg_1.a.x, func_2(Struct_2(var_0, arg_0.wz)).x, any(vec4<bool>(false, true, false, true)), true)), true, true, all(vec4<bool>(true, true, func_2(Struct_2(var_0, vec2<i32>(u_input.b.x, -2147483647i))).x, all(vec3<bool>(false, true, false))))));
    return ~(~22081u);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = ~min(min(func_1(vec4<i32>(u_input.b.x, 0i, -12330i, u_input.b.x), Struct_3(vec2<u32>(23962u, 0u))) ^ u_input.a.x, 1u), ~u_input.a.x);
    global2 = array<Struct_1, 21>();
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-548f, -1452f, false)) + -863f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(686f - 410f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -109f)))))), 263f, -809f);
    let var_1 = Struct_3((_wgslsmith_div_vec2_u32(_wgslsmith_add_vec2_u32(u_input.a, u_input.a), min(vec2<u32>(66088u, 4294967295u), vec2<u32>(u_input.a.x, 4294967295u))) << (u_input.a % vec2<u32>(32u))) ^ (_wgslsmith_mult_vec2_u32(u_input.a & u_input.a, u_input.a) >> (vec2<u32>(u_input.a.x, 4294967295u) % vec2<u32>(32u))));
    let var_2 = Struct_2(var_0, firstLeadingBit(vec2<i32>(u_input.b.x, -18492i)));
    var var_3 = min(~(-_wgslsmith_add_vec3_i32(vec3<i32>(var_2.b.x, u_input.b.x, -2147483647i) | u_input.b, vec3<i32>(u_input.b.x, u_input.b.x, 1i))), vec3<i32>(1i, _wgslsmith_dot_vec3_i32(~_wgslsmith_add_vec3_i32(u_input.b, vec3<i32>(-22219i, 0i, u_input.b.x)), u_input.b), i32(-1i) * -_wgslsmith_sub_i32(39688i, -1i)));
    global1 = max(~(~u_input.a.x), var_1.a.x | 9242u);
    var var_4 = u_input.a.x >> (4294967295u % 32u);
    var_4 = firstLeadingBit(_wgslsmith_mult_u32(~(~firstLeadingBit(4294967295u)), countOneBits(min(64594u, _wgslsmith_div_u32(2558u, 1u)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(firstLeadingBit(_wgslsmith_clamp_u32(u_input.a.x, select(25616u, 0u, true), u_input.a.x)), 77686u, abs(~(~var_1.a.x))), vec3<u32>(func_1(select(vec4<i32>(54528i, u_input.b.x, u_input.b.x, u_input.b.x), vec4<i32>(1i, -4633i, -6436i, 1i), false) >> ((vec4<u32>(1u, var_1.a.x, u_input.a.x, 4294967295u) | vec4<u32>(1u, u_input.a.x, u_input.a.x, u_input.a.x)) % vec4<u32>(32u)), var_1), 35773u, u_input.a.x), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(floor(-1630f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-327f)), _wgslsmith_f_op_f32(select(1000f, var_0.x, false))), var_2.a.x), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x + var_2.a.x) * _wgslsmith_f_op_f32(sign(-1104f))), var_2.a.x, var_2.a.x)), var_0, _wgslsmith_f_op_f32(func_3(~(~u_input.a.x) << (var_1.a.x % 32u))));
}


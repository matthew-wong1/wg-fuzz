struct Struct_1 {
    a: vec3<u32>,
    b: u32,
    c: f32,
    d: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
    c: u32,
    d: Struct_1,
    e: vec4<u32>,
}

struct Struct_3 {
    a: vec4<u32>,
    b: u32,
    c: Struct_2,
    d: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: u32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<Struct_1, 28> = array<Struct_1, 28>(Struct_1(vec3<u32>(0u, 4699u, 4294967295u), 0u, -418f, vec4<u32>(34098u, 3873u, 4294967295u, 42684u)), Struct_1(vec3<u32>(4294967295u, 43860u, 51497u), 0u, 1345f, vec4<u32>(29695u, 1u, 1u, 0u)), Struct_1(vec3<u32>(4818u, 38677u, 4294967295u), 42718u, 506f, vec4<u32>(90614u, 0u, 34785u, 0u)), Struct_1(vec3<u32>(24136u, 4294967295u, 21575u), 1u, 135f, vec4<u32>(0u, 11893u, 0u, 4566u)), Struct_1(vec3<u32>(19563u, 70616u, 65183u), 42576u, 1091f, vec4<u32>(0u, 73016u, 24536u, 4294967295u)), Struct_1(vec3<u32>(0u, 28752u, 2549u), 4294967295u, -803f, vec4<u32>(4294967295u, 6954u, 49436u, 0u)), Struct_1(vec3<u32>(67906u, 4294967295u, 1u), 29249u, 1215f, vec4<u32>(19959u, 0u, 0u, 17862u)), Struct_1(vec3<u32>(0u, 4294967295u, 1u), 38080u, -2740f, vec4<u32>(22058u, 0u, 2577u, 1u)), Struct_1(vec3<u32>(4294967295u, 57391u, 53026u), 6730u, 1000f, vec4<u32>(18621u, 5516u, 1u, 0u)), Struct_1(vec3<u32>(51682u, 14882u, 68523u), 4294967295u, 1106f, vec4<u32>(66658u, 81113u, 1u, 4294967295u)), Struct_1(vec3<u32>(4294967295u, 1u, 0u), 1u, -1096f, vec4<u32>(4294967295u, 44130u, 24489u, 22582u)), Struct_1(vec3<u32>(1u, 51214u, 12180u), 1u, 283f, vec4<u32>(1u, 1u, 46133u, 1u)), Struct_1(vec3<u32>(0u, 4294967295u, 4294967295u), 4294967295u, -1099f, vec4<u32>(12191u, 32931u, 1u, 4294967295u)), Struct_1(vec3<u32>(0u, 1u, 110559u), 61890u, -1125f, vec4<u32>(1u, 28460u, 4294967295u, 1720u)), Struct_1(vec3<u32>(4294967295u, 15064u, 0u), 6845u, 354f, vec4<u32>(4294967295u, 0u, 41428u, 4294967295u)), Struct_1(vec3<u32>(15228u, 54395u, 1u), 4028u, 326f, vec4<u32>(11090u, 71314u, 1u, 23165u)), Struct_1(vec3<u32>(1u, 27756u, 39218u), 7493u, 187f, vec4<u32>(79249u, 58956u, 0u, 7705u)), Struct_1(vec3<u32>(4294967295u, 4294967295u, 57429u), 7568u, -337f, vec4<u32>(90352u, 20047u, 4294967295u, 4294967295u)), Struct_1(vec3<u32>(1u, 6336u, 106234u), 0u, 699f, vec4<u32>(42284u, 0u, 0u, 4294967295u)), Struct_1(vec3<u32>(4294967295u, 4294967295u, 26730u), 30582u, -1697f, vec4<u32>(27670u, 43605u, 1u, 9683u)), Struct_1(vec3<u32>(2781u, 7978u, 1u), 4294967295u, -1300f, vec4<u32>(0u, 3811u, 3520u, 4294967295u)), Struct_1(vec3<u32>(1u, 0u, 77846u), 24342u, 214f, vec4<u32>(63321u, 97391u, 13912u, 4294967295u)), Struct_1(vec3<u32>(19479u, 58067u, 53463u), 0u, 434f, vec4<u32>(18782u, 1u, 0u, 1u)), Struct_1(vec3<u32>(58968u, 51488u, 0u), 48746u, 1000f, vec4<u32>(10300u, 12991u, 50056u, 0u)), Struct_1(vec3<u32>(4294967295u, 18137u, 69221u), 0u, -146f, vec4<u32>(1u, 21660u, 20308u, 7936u)), Struct_1(vec3<u32>(5478u, 58820u, 1u), 1u, 627f, vec4<u32>(0u, 39409u, 11982u, 0u)), Struct_1(vec3<u32>(0u, 21097u, 1u), 4294967295u, -453f, vec4<u32>(4294967295u, 40435u, 4294967295u, 117501u)), Struct_1(vec3<u32>(1u, 0u, 1u), 15375u, 259f, vec4<u32>(55973u, 27018u, 25225u, 1u)));

var<private> global2: vec2<u32>;

var<private> global3: array<vec3<f32>, 20>;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_3) -> vec3<bool> {
    global3 = array<vec3<f32>, 20>();
    var var_0 = false;
    var var_1 = vec3<bool>(false, !(_wgslsmith_f_op_f32(-549f - -1090f) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1333f + arg_1.d.b.x))), false);
    let var_2 = !select(select(var_1.yz, vec2<bool>(var_1.x, all(vec4<bool>(false, var_1.x, true, true))), var_1.yy), var_1.yy, true);
    var var_3 = _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_1.c.d.c)) * arg_1.c.b.x)) == _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.c.a.c)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -115f) - arg_1.d.b.x)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.d.b.x) - arg_1.d.d.c)));
    return !(!select(!vec3<bool>(var_1.x, false, false), select(select(vec3<bool>(true, var_1.x, true), vec3<bool>(var_2.x, var_1.x, true), vec3<bool>(var_2.x, true, true)), !vec3<bool>(false, false, var_1.x), any(vec3<bool>(false, var_2.x, true))), ~arg_0.x >= _wgslsmith_clamp_i32(u_input.a, u_input.c.x, 26199i)));
}

fn func_2(arg_0: vec2<u32>, arg_1: i32, arg_2: vec3<f32>) -> Struct_1 {
    var var_0 = all(select(func_3(_wgslsmith_clamp_vec3_i32(u_input.c, min(u_input.c, vec3<i32>(-35776i, u_input.c.x, 1i)), ~vec3<i32>(u_input.b, -21775i, u_input.a)), Struct_3(_wgslsmith_add_vec4_u32(vec4<u32>(76673u, 0u, 864u, 4294967295u), vec4<u32>(4294967295u, arg_0.x, arg_0.x, 15698u)), _wgslsmith_clamp_u32(arg_0.x, 1u, global2.x), Struct_2(global1[_wgslsmith_index_u32(arg_0.x, 28u)], vec4<f32>(arg_2.x, arg_2.x, 235f, arg_2.x), arg_0.x, Struct_1(vec3<u32>(global2.x, 14049u, 4294967295u), global2.x, -878f, vec4<u32>(51237u, global2.x, 53156u, 4294967295u)), vec4<u32>(global2.x, 41070u, arg_0.x, 0u)), Struct_2(global1[_wgslsmith_index_u32(0u, 28u)], vec4<f32>(arg_2.x, arg_2.x, 910f, arg_2.x), arg_0.x, Struct_1(vec3<u32>(arg_0.x, global2.x, global2.x), 55893u, -122f, vec4<u32>(arg_0.x, arg_0.x, 5115u, 0u)), vec4<u32>(4294967295u, 22383u, 1u, 4294967295u)))), vec3<bool>(_wgslsmith_div_f32(arg_2.x, 592f) < _wgslsmith_f_op_f32(515f - arg_2.x), _wgslsmith_add_i32(arg_1, 0i) == -13898i, any(vec3<bool>(true, true, true)) && all(vec4<bool>(false, false, true, true))), all(vec2<bool>(true, true))));
    let var_1 = vec4<u32>(~(~(~(~global2.x))), 0u, 0u, abs(arg_0.x));
    global1 = array<Struct_1, 28>();
    var var_2 = vec2<i32>(-1i, 1i);
    let var_3 = vec3<f32>(_wgslsmith_f_op_f32(trunc(566f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1144f))))), -644f);
    return Struct_1(vec3<u32>(39782u, var_1.x, 0u), abs(firstTrailingBit(arg_0.x | _wgslsmith_sub_u32(arg_0.x, global2.x))), -836f, vec4<u32>(arg_0.x, 25982u, _wgslsmith_mult_u32(arg_0.x, var_1.x), abs(55821u)));
}

fn func_4(arg_0: Struct_2) -> Struct_1 {
    var var_0 = firstTrailingBit(arg_0.a.d.zyw);
    global1 = array<Struct_1, 28>();
    var var_1 = Struct_2(global1[_wgslsmith_index_u32(~(~_wgslsmith_mult_u32(~arg_0.a.d.x, 0u)), 28u)], arg_0.b, ~min(global2.x, _wgslsmith_div_u32(_wgslsmith_div_u32(global2.x, 4294967295u), arg_0.d.a.x)), func_2(vec2<u32>(19331u, countOneBits(1u)) | firstLeadingBit(arg_0.d.d.xx & vec2<u32>(global2.x, var_0.x)), reverseBits(u_input.c.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global3[_wgslsmith_index_u32(arg_0.e.x, 20u)])))), firstLeadingBit(func_2(~_wgslsmith_mod_vec2_u32(vec2<u32>(var_0.x, 1u), vec2<u32>(var_0.x, arg_0.e.x)), -13371i, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2074f, arg_0.b.x, -1322f)))).d));
    var var_2 = u_input.c ^ u_input.c;
    var var_3 = func_2(func_2(var_1.e.zw, ~u_input.c.x, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.a.c - -195f) * arg_0.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(856f))), arg_0.d.c)).d.xw, var_2.x, _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.d.c, var_1.d.c, arg_0.d.c)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.d.c, 827f, arg_0.a.c)))) - vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.b.x) - -1560f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.d.c - -150f) - _wgslsmith_f_op_f32(-arg_0.d.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -484f)))));
    return Struct_1(select(~(~(var_1.d.d.yxx << (vec3<u32>(1u, var_0.x, 54122u) % vec3<u32>(32u)))), _wgslsmith_mod_vec3_u32(vec3<u32>(~39167u, reverseBits(140281u), ~0u), vec3<u32>(_wgslsmith_dot_vec3_u32(arg_0.e.xyx, vec3<u32>(arg_0.a.d.x, global2.x, var_3.b)), 7572u, 32423u)), !(var_2.x <= 29875i)), ~arg_0.d.b, _wgslsmith_f_op_f32(select(arg_0.d.c, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-339f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_3.c))))), all(vec4<bool>(true, true, true, true)))), abs(arg_0.e));
}

fn func_1(arg_0: vec3<u32>) -> vec3<u32> {
    let var_0 = !(!(!select(vec3<bool>(false, true, false), select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), true), select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), false))));
    var var_1 = Struct_2(func_4(Struct_2(global1[_wgslsmith_index_u32(~abs(arg_0.x), 28u)], _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(111f, 1956f, 581f, -351f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-464f, 1324f, -913f, 1029f)), true)), min(global2.x, 5938u), func_2(vec2<u32>(arg_0.x, arg_0.x) ^ vec2<u32>(global2.x, 4294967295u), countOneBits(-2147483647i), _wgslsmith_f_op_vec3_f32(min(global3[_wgslsmith_index_u32(global2.x, 20u)], vec3<f32>(582f, 447f, -671f)))), ~vec4<u32>(0u, 25423u, 1u, global2.x) << (_wgslsmith_div_vec4_u32(vec4<u32>(arg_0.x, global2.x, arg_0.x, arg_0.x), vec4<u32>(global2.x, 32676u, arg_0.x, global2.x)) % vec4<u32>(32u)))), vec4<f32>(-652f, -746f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1026f)))), _wgslsmith_f_op_f32(step(415f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1000f + -816f), -1679f))))), 23396u, func_4(Struct_2(func_4(Struct_2(global1[_wgslsmith_index_u32(global2.x, 28u)], vec4<f32>(1848f, 871f, 249f, 454f), global2.x, global1[_wgslsmith_index_u32(4294967295u, 28u)], vec4<u32>(30382u, 4294967295u, 1u, arg_0.x))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-803f, -404f, 462f, 1000f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(415f, 554f, 601f, 1337f)), true)), ~_wgslsmith_mult_u32(arg_0.x, 46276u), global1[_wgslsmith_index_u32(arg_0.x, 28u)], _wgslsmith_mult_vec4_u32(max(vec4<u32>(4294967295u, global2.x, 4294967295u, 0u), vec4<u32>(4294967295u, 0u, arg_0.x, global2.x)), select(vec4<u32>(30855u, global2.x, global2.x, 100967u), vec4<u32>(arg_0.x, global2.x, 0u, arg_0.x), var_0.x)))), max(~firstTrailingBit(func_2(vec2<u32>(4294967295u, 85451u), 27244i, vec3<f32>(-694f, 958f, 789f)).d), select(~vec4<u32>(global2.x, 0u, 28210u, arg_0.x), _wgslsmith_sub_vec4_u32(~vec4<u32>(global2.x, 39070u, 10803u, global2.x), abs(vec4<u32>(5167u, arg_0.x, arg_0.x, 1u))), all(vec4<bool>(var_0.x, var_0.x, true, var_0.x)))));
    var_1 = Struct_2(var_1.d, var_1.b, var_1.a.b, Struct_1(func_2(abs(_wgslsmith_sub_vec2_u32(vec2<u32>(1u, arg_0.x), var_1.a.a.zy)), _wgslsmith_clamp_i32(min(u_input.b, 2147483647i), -1i, 2147483647i), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_1.b.zxx) - vec3<f32>(var_1.d.c, var_1.b.x, 150f))).d.zxy, _wgslsmith_div_u32(_wgslsmith_add_u32(_wgslsmith_div_u32(13265u, var_1.e.x), _wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.x, 4294967295u, 34022u), var_1.d.d.zyx)), _wgslsmith_mult_u32(global2.x, var_1.a.d.x | global2.x)), 1543f, reverseBits(select(~vec4<u32>(var_1.a.a.x, arg_0.x, var_1.d.d.x, 9918u), var_1.e, select(vec4<bool>(var_0.x, true, var_0.x, true), vec4<bool>(var_0.x, var_0.x, true, false), var_0.x)))), max(var_1.e, var_1.a.d));
    global3 = array<vec3<f32>, 20>();
    var var_2 = _wgslsmith_div_f32(-640f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_1.b.x))));
    return _wgslsmith_add_vec3_u32(select(abs(~var_1.a.a), vec3<u32>(~arg_0.x, 4294967295u, ~4294967295u), !all(vec3<bool>(false, var_0.x, var_0.x)) || (1854f <= _wgslsmith_f_op_f32(-var_1.b.x))), abs(~(~var_1.e.yzz)));
}

fn func_5(arg_0: Struct_2, arg_1: f32, arg_2: vec4<u32>) -> vec4<f32> {
    global1 = array<Struct_1, 28>();
    let var_0 = arg_0;
    let var_1 = ~_wgslsmith_add_vec3_u32(~var_0.d.a, select(vec3<u32>(var_0.a.b, 4294967295u, arg_0.a.b), abs(arg_2.zwz), func_3(u_input.c, Struct_3(vec4<u32>(60170u, 1u, 1u, global2.x), 18254u, Struct_2(var_0.d, vec4<f32>(-528f, arg_0.b.x, arg_1, arg_0.d.c), var_0.d.d.x, arg_0.a, arg_2), var_0)))) | _wgslsmith_div_vec3_u32(arg_2.wzz, _wgslsmith_mult_vec3_u32(_wgslsmith_div_vec3_u32(var_0.d.d.yxw, _wgslsmith_add_vec3_u32(arg_0.e.yxw, vec3<u32>(0u, global2.x, 39436u))), vec3<u32>(34272u, global2.x, 9581u) >> ((vec3<u32>(arg_2.x, arg_2.x, 4294967295u) ^ var_0.a.d.xxx) % vec3<u32>(32u))));
    global1 = array<Struct_1, 28>();
    let var_2 = !vec2<bool>(func_3(u_input.c, Struct_3(vec4<u32>(15492u, 4294967295u, 20090u, 4294967295u), arg_0.d.d.x, Struct_2(arg_0.d, var_0.b, 19047u, arg_0.d, var_0.a.d), Struct_2(global1[_wgslsmith_index_u32(9084u, 28u)], var_0.b, global2.x, arg_0.d, vec4<u32>(1u, 0u, 1u, global2.x)))).x, true || select(true, false, true));
    return var_0.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(func_5(Struct_2(Struct_1(countOneBits(func_1(vec3<u32>(global2.x, global2.x, global2.x))), func_1(func_1(vec3<u32>(global2.x, 42855u, global2.x))).x, -292f, _wgslsmith_mult_vec4_u32(vec4<u32>(36371u, 3514u, global2.x, 7635u), vec4<u32>(35883u, 160178u, 4294967295u, global2.x)) & (vec4<u32>(53822u, global2.x, global2.x, 1u) & vec4<u32>(global2.x, global2.x, global2.x, global2.x))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, 745f)), _wgslsmith_f_op_f32(f32(-1f) * -1498f), -734f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1197f + -1289f) + 318f)), ~4294967295u, global1[_wgslsmith_index_u32(func_2(~(~vec2<u32>(global2.x, 891u)), reverseBits(u_input.a), _wgslsmith_f_op_vec3_f32(vec3<f32>(143f, -427f, -1201f) * vec3<f32>(-846f, -127f, 776f))).d.x, 28u)], ~firstLeadingBit(vec4<u32>(40363u, global2.x, global2.x, global2.x)) >> (func_4(Struct_2(global1[_wgslsmith_index_u32(global2.x, 28u)], vec4<f32>(1207f, -1000f, 411f, 642f), 18975u, Struct_1(vec3<u32>(25453u, 0u, global2.x), 4294967295u, 451f, vec4<u32>(1u, 39765u, global2.x, global2.x)), vec4<u32>(global2.x, global2.x, global2.x, global2.x))).d % vec4<u32>(32u))), _wgslsmith_f_op_f32(-1f), vec4<u32>(min(~select(2627u, global2.x, true), min(global2.x, 1u) | max(global2.x, 5843u)), global2.x >> (1u % 32u), global2.x, ~100441u)));
    var var_1 = ~(_wgslsmith_clamp_vec2_u32(~(vec2<u32>(global2.x, 1625u) << (vec2<u32>(global2.x, 0u) % vec2<u32>(32u))), ~vec2<u32>(global2.x, global2.x) << (_wgslsmith_div_vec2_u32(vec2<u32>(global2.x, 7797u), vec2<u32>(0u, 4294967295u)) % vec2<u32>(32u)), max(vec2<u32>(89399u, 0u), vec2<u32>(5440u, 4294967295u))) << (abs(vec2<u32>(global2.x, _wgslsmith_add_u32(global2.x, 31789u))) % vec2<u32>(32u)));
    global0 = var_0.x;
    var var_2 = !func_3(vec3<i32>(_wgslsmith_add_i32(~0i, _wgslsmith_sub_i32(-22560i, 10614i)), i32(-1i) * -1i, max(u_input.a, u_input.c.x) | max(0i, u_input.a)), Struct_3(vec4<u32>(global2.x, global2.x, 0u, global2.x) ^ ~vec4<u32>(59440u, 38275u, global2.x, var_1.x), abs(global2.x), Struct_2(Struct_1(vec3<u32>(global2.x, var_1.x, 19289u), 4294967295u, var_0.x, vec4<u32>(10872u, 69011u, 3305u, global2.x)), _wgslsmith_f_op_vec4_f32(select(var_0, vec4<f32>(var_0.x, -815f, var_0.x, -141f), vec4<bool>(true, true, false, false))), _wgslsmith_add_u32(global2.x, var_1.x), global1[_wgslsmith_index_u32(global2.x, 28u)], func_2(vec2<u32>(global2.x, 13756u), 64610i, vec3<f32>(-1702f, 1319f, var_0.x)).d), Struct_2(func_4(Struct_2(global1[_wgslsmith_index_u32(1u, 28u)], vec4<f32>(var_0.x, 1000f, 2355f, -533f), var_1.x, global1[_wgslsmith_index_u32(global2.x, 28u)], vec4<u32>(global2.x, 0u, 101213u, global2.x))), var_0, ~35331u, global1[_wgslsmith_index_u32(firstLeadingBit(33412u), 28u)], ~vec4<u32>(0u, var_1.x, 4294967295u, global2.x)))).x;
    global0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-692f - func_2(~vec2<u32>(global2.x, var_1.x), _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, u_input.c.x), u_input.c.yz), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_0.x, var_0.x, var_0.x)))).c) - var_0.x)));
    var var_3 = Struct_3(_wgslsmith_mult_vec4_u32(abs(_wgslsmith_sub_vec4_u32(vec4<u32>(var_1.x, 1u, var_1.x, var_1.x), firstLeadingBit(vec4<u32>(global2.x, global2.x, var_1.x, 1u)))), abs(vec4<u32>(0u, func_2(vec2<u32>(37059u, 0u), u_input.c.x, var_0.zxy).a.x, _wgslsmith_mod_u32(var_1.x, global2.x), 1u))), 4294967295u, Struct_2(global1[_wgslsmith_index_u32(reverseBits(93157u), 28u)], var_0, 42606u, global1[_wgslsmith_index_u32(_wgslsmith_div_u32(func_4(Struct_2(Struct_1(vec3<u32>(13076u, 0u, 51414u), global2.x, var_0.x, vec4<u32>(global2.x, 32160u, var_1.x, 0u)), var_0, global2.x, Struct_1(vec3<u32>(var_1.x, 0u, global2.x), 0u, var_0.x, vec4<u32>(var_1.x, 0u, 20779u, global2.x)), vec4<u32>(global2.x, var_1.x, 4294967295u, var_1.x))).b, ~(~18068u)), 28u)], select(select(~vec4<u32>(0u, var_1.x, 1094u, 37934u), ~vec4<u32>(var_1.x, 1u, 0u, var_1.x), true), _wgslsmith_sub_vec4_u32(~vec4<u32>(global2.x, 1u, 56055u, global2.x), vec4<u32>(1u, var_1.x, var_1.x, 0u)), any(vec3<bool>(true, false, true)))), Struct_2(global1[_wgslsmith_index_u32(var_1.x, 28u)], vec4<f32>(-435f, _wgslsmith_f_op_f32(step(-1358f, -1046f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_0.x, 822f, false)) + var_0.x), _wgslsmith_f_op_f32(377f + _wgslsmith_f_op_f32(f32(-1f) * -1876f))), ~min(abs(1u), var_1.x), func_4(Struct_2(Struct_1(vec3<u32>(var_1.x, 114708u, global2.x), 6835u, var_0.x, vec4<u32>(var_1.x, 41031u, 37469u, 94569u)), var_0, 348u, global1[_wgslsmith_index_u32(var_1.x, 28u)], vec4<u32>(var_1.x, 72558u, 1u, global2.x))), ~(~func_2(vec2<u32>(89940u, global2.x), u_input.c.x, var_0.wxw).d)));
    let var_4 = _wgslsmith_mult_u32(global2.x, 0u);
    var var_5 = vec2<i32>(_wgslsmith_dot_vec2_i32(~u_input.c.xx, _wgslsmith_mult_vec2_i32(u_input.c.yy, abs(firstTrailingBit(u_input.c.xx)))), i32(-1i) * -u_input.c.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(exp2(var_3.d.a.c)))))), u_input.c, 44728u, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(exp2(var_3.d.a.c))))), _wgslsmith_f_op_f32(-var_3.c.d.c), -353f, var_3.d.b.x));
}


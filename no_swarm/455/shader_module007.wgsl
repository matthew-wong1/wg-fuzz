struct Struct_1 {
    a: vec2<bool>,
    b: i32,
    c: i32,
    d: vec4<i32>,
}

struct Struct_2 {
    a: vec3<u32>,
}

struct Struct_3 {
    a: u32,
    b: bool,
    c: f32,
}

struct Struct_4 {
    a: vec2<bool>,
    b: i32,
}

struct Struct_5 {
    a: Struct_4,
    b: Struct_1,
    c: vec2<u32>,
    d: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(i32(-2147483648), 1i, -19074i);

var<private> global1: vec3<f32> = vec3<f32>(-562f, 1768f, 226f);

var<private> global2: Struct_2;

var<private> global3: array<vec4<i32>, 21> = array<vec4<i32>, 21>(vec4<i32>(-16823i, 0i, 7655i, -92589i), vec4<i32>(-26808i, 0i, 2147483647i, -27547i), vec4<i32>(1i, 0i, -25720i, 1i), vec4<i32>(0i, 45959i, -31264i, -9909i), vec4<i32>(-1i, 1834i, -40945i, -1i), vec4<i32>(0i, -34092i, 1i, 2147483647i), vec4<i32>(0i, i32(-2147483648), -1i, i32(-2147483648)), vec4<i32>(i32(-2147483648), 51720i, 12039i, 0i), vec4<i32>(31291i, 1i, -5047i, 2147483647i), vec4<i32>(-33100i, -7455i, i32(-2147483648), -31432i), vec4<i32>(17216i, -33595i, -19606i, -74546i), vec4<i32>(i32(-2147483648), -1i, 1i, 2147483647i), vec4<i32>(-1i, 61366i, 1i, 30317i), vec4<i32>(-1i, 31991i, -34130i, 19091i), vec4<i32>(1i, 10376i, -21891i, -23330i), vec4<i32>(-1i, 31513i, 1i, 2147483647i), vec4<i32>(-24899i, 2147483647i, 33593i, i32(-2147483648)), vec4<i32>(1i, -20068i, 0i, -1i), vec4<i32>(2147483647i, 11946i, -48223i, 53203i), vec4<i32>(42708i, i32(-2147483648), -1i, -15045i), vec4<i32>(-1i, 0i, 17394i, 1i));

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<i32>) -> vec4<f32> {
    var var_0 = Struct_3(0u, false, _wgslsmith_f_op_f32(ceil(global1.x)));
    global2 = Struct_2(~(~_wgslsmith_div_vec3_u32(abs(global2.a), firstTrailingBit(vec3<u32>(var_0.a, var_0.a, 45889u)))));
    var var_1 = -firstLeadingBit(-countOneBits(min(vec3<i32>(arg_0.x, global0.x, -10325i), u_input.a.zxy)));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -572f)));
    var_2 = _wgslsmith_f_op_f32(global1.x * -1213f);
    return _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c))), 1336f, var_0.c, _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(var_0.c, 1578f)), -169f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, var_0.c, var_0.c, -513f) - vec4<f32>(global1.x, 1654f, 504f, global1.x)), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global1.x, 1000f, global1.x, -1000f))), var_0.b)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c, var_0.c, 1024f, var_0.c))))));
}

fn func_4(arg_0: Struct_5, arg_1: Struct_3, arg_2: vec3<i32>, arg_3: vec4<f32>) -> vec3<f32> {
    let var_0 = arg_0.a.a.x | true;
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -583f);
    global2 = Struct_2(global2.a);
    global2 = Struct_2(vec3<u32>(arg_0.c.x, _wgslsmith_add_u32(global2.a.x, ~countOneBits(4294967295u)), arg_1.a));
    var var_2 = !(!(_wgslsmith_f_op_f32(-var_1) > _wgslsmith_f_op_f32(exp2(var_1))));
    return _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(arg_3.wwx, _wgslsmith_div_vec3_f32(arg_3.xyx, _wgslsmith_f_op_vec3_f32(step(arg_3.xzy, vec3<f32>(global1.x, -1119f, -890f)))))), _wgslsmith_f_op_vec3_f32(-arg_3.yxx)));
}

fn func_2(arg_0: Struct_5) -> Struct_3 {
    var var_0 = Struct_3(_wgslsmith_dot_vec2_u32(global2.a.yy, global2.a.xy), any(vec4<bool>(any(arg_0.b.a) && (arg_0.a.a.x || arg_0.b.a.x), true, true, true)), global1.x);
    let var_1 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, var_0.c, var_0.c) + vec3<f32>(-1621f, var_0.c, global1.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.c, -880f, var_0.c))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.c, global1.x, global1.x)))))));
    global1 = _wgslsmith_f_op_vec3_f32(func_4(Struct_5(Struct_4(vec2<bool>(true, var_0.b), 69012i), Struct_1(select(select(arg_0.b.a, arg_0.a.a, arg_0.b.a.x), select(arg_0.b.a, arg_0.a.a, arg_0.a.a), select(vec2<bool>(arg_0.b.a.x, false), vec2<bool>(true, false), false)), _wgslsmith_dot_vec3_i32(firstLeadingBit(vec3<i32>(37108i, u_input.a.x, 0i)), vec3<i32>(-1i, u_input.a.x, arg_0.a.b)), -6047i, global3[_wgslsmith_index_u32(26855u, 21u)]), vec2<u32>(global2.a.x, 10473u), 0u), Struct_3(~(~var_0.a), true, _wgslsmith_div_f32(-1061f, var_1.x)), vec3<i32>(firstLeadingBit(_wgslsmith_div_i32(arg_0.b.c, u_input.a.x | arg_0.a.b)), -4339i, -1i), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(231f, 1460f, var_1.x, -1133f)), _wgslsmith_div_vec4_f32(vec4<f32>(global1.x, var_0.c, var_1.x, global1.x), vec4<f32>(-1240f, -1298f, -482f, var_1.x)), arg_0.a.a.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(vec2<i32>(global0.x, global0.x))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, 134f, global1.x, global1.x))))))));
    let var_2 = Struct_4(!arg_0.a.a, 2147483647i);
    let var_3 = arg_0.a.b;
    return Struct_3(global2.a.x, true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(526f * global1.x), _wgslsmith_f_op_f32(sign(-131f)), var_0.b)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.c * 557f), _wgslsmith_f_op_f32(f32(-1f) * -779f)))));
}

fn func_5(arg_0: Struct_3, arg_1: vec3<i32>, arg_2: u32) -> vec3<f32> {
    let var_0 = vec3<i32>(-(~0i), 2147483647i, _wgslsmith_mod_i32(-22388i << (arg_2 % 32u), arg_1.x) & -15681i) << (firstLeadingBit(vec3<u32>(_wgslsmith_sub_u32(~global2.a.x, ~global2.a.x), ~(~4294967295u), _wgslsmith_sub_u32(arg_0.a, arg_2))) % vec3<u32>(32u));
    var var_1 = Struct_4(select(!select(!vec2<bool>(arg_0.b, true), select(vec2<bool>(arg_0.b, true), vec2<bool>(true, arg_0.b), vec2<bool>(arg_0.b, arg_0.b)), !vec2<bool>(true, arg_0.b)), select(select(vec2<bool>(arg_0.b, arg_0.b), !vec2<bool>(arg_0.b, arg_0.b), select(vec2<bool>(false, arg_0.b), vec2<bool>(true, true), vec2<bool>(false, false))), !vec2<bool>(false, arg_0.b), vec2<bool>(any(vec3<bool>(arg_0.b, false, arg_0.b)), arg_2 <= arg_2)), true && arg_0.b), -19378i);
    global2 = Struct_2(vec3<u32>(max(arg_2, global2.a.x), max(_wgslsmith_div_u32(25482u, global2.a.x), _wgslsmith_add_u32(~4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_2, arg_0.a, global2.a.x, global2.a.x), vec4<u32>(arg_0.a, 128783u, 4294967295u, 20074u)))), _wgslsmith_mult_u32(arg_0.a, reverseBits(arg_2))));
    var var_2 = !all(vec2<bool>(all(vec4<bool>(arg_0.b, var_1.a.x, arg_0.b, arg_0.b)), true));
    var var_3 = !select(var_1.a, !select(!var_1.a, select(var_1.a, var_1.a, var_1.a.x), true), arg_0.b);
    return _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-113f, global1.x, -153f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-635f, -512f, arg_0.c), vec3<f32>(1031f, 669f, 899f), vec3<bool>(arg_0.b, var_1.a.x, true)))))), vec3<f32>(func_2(Struct_5(Struct_4(var_1.a, 7009i), Struct_1(vec2<bool>(false, arg_0.b), 80579i, global0.x, vec4<i32>(var_1.b, -14523i, -1i, 13181i)), global2.a.yx, arg_2)).c, _wgslsmith_f_op_f32(select(arg_0.c, _wgslsmith_f_op_f32(step(-195f, arg_0.c)), !var_1.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec3_f32(func_4(Struct_5(Struct_4(vec2<bool>(var_1.a.x, var_3.x), 2147483647i), Struct_1(vec2<bool>(var_3.x, false), u_input.a.x, global0.x, vec4<i32>(-4292i, 52828i, 0i, -2147483647i)), global2.a.yy, 22774u), Struct_3(arg_2, var_1.a.x, 463f), vec3<i32>(66362i, u_input.a.x, global0.x), vec4<f32>(arg_0.c, 1499f, global1.x, -991f))).x)), !vec3<bool>(true, false, var_0.x >= 2147483647i)))));
}

fn func_1(arg_0: u32, arg_1: Struct_4) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(-1866f - global1.x), -393f, global1.x)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_5(func_2(Struct_5(arg_1, Struct_1(arg_1.a, -2147483647i, 29175i, global3[_wgslsmith_index_u32(29203u, 21u)]), global2.a.zy, 4294967295u)), u_input.a.yww, ~_wgslsmith_mult_u32(global2.a.x, 18970u))))));
    let var_1 = true;
    var var_2 = !select(!vec2<bool>(any(vec4<bool>(arg_1.a.x, true, arg_1.a.x, arg_1.a.x)), true), arg_1.a, vec2<bool>(var_1, var_1));
    var var_3 = vec4<i32>(-global0.x, reverseBits(min(-1i, 1i)), (i32(-1i) * -2317i) >> (_wgslsmith_mod_u32(arg_0, 1u) % 32u), _wgslsmith_mult_i32(~u_input.a.x, -_wgslsmith_add_i32(_wgslsmith_sub_i32(global0.x, global0.x), firstLeadingBit(-1i))));
    let var_4 = Struct_5(arg_1, Struct_1(vec2<bool>(_wgslsmith_f_op_f32(-global1.x) != _wgslsmith_f_op_f32(global1.x + var_0.x), arg_1.a.x), _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(global3[_wgslsmith_index_u32(global2.a.x, 21u)], vec4<i32>(0i, 1i, -1i, global0.x)) >> (~arg_0 % 32u), var_3.x), ~var_3.x, countOneBits(-vec4<i32>(global0.x, arg_1.b, arg_1.b, 2147483647i))), ~vec2<u32>(select(20936u << (arg_0 % 32u), arg_0, var_1), ~0u), ~global2.a.x >> (arg_0 % 32u));
    return Struct_1(vec2<bool>(var_2.x, !arg_1.a.x | any(select(var_4.a.a, vec2<bool>(false, var_4.a.a.x), var_1))), var_4.a.b, -2147483647i, vec4<i32>(-1i) * -vec4<i32>(_wgslsmith_sub_i32(arg_1.b, var_3.x), _wgslsmith_dot_vec3_i32(vec3<i32>(var_3.x, arg_1.b, 12613i), vec3<i32>(u_input.a.x, var_3.x, arg_1.b)), 60239i, -57418i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(abs(firstLeadingBit(~(~0u))), Struct_4(vec2<bool>(true, true), _wgslsmith_clamp_i32(_wgslsmith_mult_i32(u_input.a.x, u_input.a.x), ~1i, global0.x)));
    var var_1 = ~global2.a.zy;
    let var_2 = var_0.b;
    var_0 = Struct_1(vec2<bool>(select(abs(-1i), u_input.a.x, true) != u_input.a.x, false), 677i, i32(-1i) * -1i, vec4<i32>(var_0.c, ~(i32(-1i) * -global0.x), firstLeadingBit(var_0.c), func_1(4294967295u, Struct_4(select(var_0.a, vec2<bool>(var_0.a.x, var_0.a.x), true), ~40701i)).c));
    let var_3 = 1000f;
    let var_4 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_3, var_3))), var_3, -1949f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(var_3)), -144f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(min(global1.x, 698f)), _wgslsmith_f_op_f32(select(global1.x, 1000f, true)), _wgslsmith_div_f32(776f, global1.x), var_3)) * vec4<f32>(_wgslsmith_f_op_vec4_f32(func_3(reverseBits(var_0.d.yy))).x, global1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.x + global1.x) * -238f), -119f))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(var_4)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_4.x, -1345f, var_4.x, var_4.x))) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_4.x, var_3, var_3, -1000f), vec4<f32>(-700f, var_4.x, var_3, var_4.x), vec4<bool>(true, true, true, true))))), _wgslsmith_f_op_vec4_f32(sign(var_4)))), vec4<u32>(~var_1.x, _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(var_1.x, 61475u, var_1.x, global2.a.x), ~vec4<u32>(0u, 0u, var_1.x, 39385u)), vec4<u32>(func_2(Struct_5(Struct_4(vec2<bool>(var_0.a.x, false), -31189i), Struct_1(vec2<bool>(var_0.a.x, false), -32386i, -15914i, vec4<i32>(-1775i, u_input.a.x, -19163i, u_input.a.x)), vec2<u32>(var_1.x, 1u), 4294967295u)).a, ~var_1.x, ~global2.a.x, global2.a.x ^ 51564u)), ~4294967295u, firstTrailingBit(_wgslsmith_clamp_u32(~10723u, 10366u, global2.a.x >> (80829u % 32u)))));
}


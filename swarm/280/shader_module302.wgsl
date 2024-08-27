struct Struct_1 {
    a: f32,
    b: vec2<u32>,
    c: i32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: f32,
    c: Struct_1,
    d: vec3<u32>,
    e: vec4<f32>,
}

struct Struct_3 {
    a: f32,
    b: vec4<i32>,
    c: vec4<u32>,
    d: Struct_1,
    e: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec2<u32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 3> = array<vec3<u32>, 3>(vec3<u32>(48325u, 88902u, 26323u), vec3<u32>(6430u, 2504u, 1u), vec3<u32>(24882u, 0u, 53205u));

var<private> global1: i32 = -1i;

var<private> global2: Struct_3 = Struct_3(-1000f, vec4<i32>(10884i, 2012i, 0i, 0i), vec4<u32>(2636u, 4294967295u, 4294967295u, 557u), Struct_1(-1960f, vec2<u32>(4294967295u, 59944u), i32(-2147483648)), 35461i);

var<private> global3: vec4<f32> = vec4<f32>(-575f, 387f, -1000f, 771f);

var<private> global4: array<vec2<i32>, 19>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_3, arg_1: vec4<u32>, arg_2: u32, arg_3: Struct_1) -> f32 {
    var var_0 = arg_3.a;
    var var_1 = Struct_2(vec4<u32>(1u << (~(~0u) % 32u), ~arg_0.c.x, arg_0.d.b.x, _wgslsmith_mod_u32(_wgslsmith_mult_u32(arg_3.b.x << (59244u % 32u), arg_0.d.b.x), abs(arg_3.b.x >> (52120u % 32u)))), arg_3.a, arg_0.d, vec3<u32>(1u, arg_2, _wgslsmith_mult_u32(1u, abs(_wgslsmith_add_u32(arg_0.d.b.x, 3520u)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-166f, -1105f, -466f, 755f), vec4<f32>(arg_0.a, 1234f, -1004f, 631f))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(1064f, -677f, arg_0.d.a, global2.d.a) * vec4<f32>(global3.x, global3.x, -1536f, 1533f)))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(133f, global2.a, 847f, -1081f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.d.a, 1516f, -1368f, arg_3.a))), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1959f, global2.a, 2502f, 786f))))));
    let var_2 = !any(vec2<bool>(true, false));
    var_0 = 391f;
    global1 = -52810i;
    return _wgslsmith_f_op_f32(exp2(global2.d.a));
}

fn func_2(arg_0: vec2<i32>, arg_1: i32, arg_2: u32) -> Struct_2 {
    global1 = min(12198i, -1i);
    global0 = array<vec3<u32>, 3>();
    var var_0 = Struct_2(vec4<u32>(~_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(global2.d.b.x, global2.c.x, 0u), vec3<u32>(global2.c.x, 90746u, arg_2)), ~3222u), _wgslsmith_div_u32(u_input.d.x, 27001u) & global2.d.b.x, ~(~1u), min(global2.d.b.x, abs(1u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1312f) + global3.x), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -861f), firstTrailingBit(~vec2<u32>(global2.d.b.x, 15173u)), max(0i, -_wgslsmith_div_i32(global2.d.c, -10878i))), _wgslsmith_mod_vec3_u32(u_input.d.ywx | ~vec3<u32>(arg_2, arg_2, 16527u), vec3<u32>(global2.c.x, 17273u, _wgslsmith_add_u32(global2.d.b.x >> (10628u % 32u), _wgslsmith_dot_vec4_u32(global2.c, global2.c)))), vec4<f32>(_wgslsmith_f_op_f32(-global2.d.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.x))), 1099f, global3.x));
    var var_1 = Struct_2(global2.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-705f + _wgslsmith_f_op_f32(f32(-1f) * -1153f))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global2.a, 445f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_3(167f, vec4<i32>(-8110i, -7099i, 448i, arg_1), vec4<u32>(u_input.d.x, var_0.d.x, u_input.c.x, u_input.c.x), Struct_1(global2.d.a, vec2<u32>(global2.c.x, global2.c.x), var_0.c.c), u_input.b), global2.c, var_0.d.x, Struct_1(-1931f, vec2<u32>(var_0.d.x, 1u), var_0.c.c))))), vec2<u32>(~firstLeadingBit(0u), var_0.c.b.x), var_0.c.c), _wgslsmith_add_vec3_u32(global0[_wgslsmith_index_u32(var_0.a.x, 3u)], min(vec3<u32>(arg_2, var_0.a.x, arg_2), vec3<u32>(u_input.c.x, var_0.c.b.x, 0u)) >> ((vec3<u32>(23778u, 4294967295u, 54318u) | vec3<u32>(arg_2, 17838u, var_0.a.x)) % vec3<u32>(32u))) & u_input.d.wyy, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_0.e) + var_0.e) - var_0.e)));
    var_0 = Struct_2(vec4<u32>(1u, 17202u, (global2.d.b.x | arg_2) << ((_wgslsmith_clamp_u32(arg_2, 26336u, var_0.a.x) ^ 58362u) % 32u), _wgslsmith_dot_vec3_u32(global2.c.zwx, abs(vec3<u32>(94643u, 13380u, 53418u)))), _wgslsmith_f_op_f32(round(global3.x)), var_1.c, vec3<u32>(countOneBits(34679u), ~(~firstLeadingBit(44123u)), abs(min(arg_2, var_0.d.x) & _wgslsmith_dot_vec3_u32(global0[_wgslsmith_index_u32(global2.c.x, 3u)], u_input.d.xyz))), _wgslsmith_f_op_vec4_f32(floor(var_0.e)));
    return Struct_2(_wgslsmith_mod_vec4_u32(var_1.a | reverseBits(vec4<u32>(var_0.c.b.x, arg_2, var_0.a.x, var_1.d.x)), var_0.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global3.x)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.x + global3.x))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(global3.x + 1039f)) * var_1.e.x), abs(vec2<u32>(35543u, global2.d.b.x)) | global2.c.zz, arg_1), ~vec3<u32>(_wgslsmith_mod_u32(u_input.c.x, _wgslsmith_mult_u32(u_input.c.x, var_1.a.x)), ~firstLeadingBit(0u), u_input.d.x), _wgslsmith_f_op_vec4_f32(var_0.e * vec4<f32>(_wgslsmith_f_op_f32(min(135f, _wgslsmith_f_op_f32(global2.d.a + global3.x))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.b, -1015f) * 488f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-577f + 671f)), 2600f)));
}

fn func_1(arg_0: f32, arg_1: vec4<f32>, arg_2: Struct_3, arg_3: Struct_3) -> i32 {
    global2 = arg_2;
    global1 = u_input.a.x;
    global0 = array<vec3<u32>, 3>();
    var var_0 = func_2(u_input.a.ww, arg_3.e, 1u);
    var var_1 = func_2(_wgslsmith_clamp_vec2_i32(vec2<i32>(~var_0.c.c, firstLeadingBit(-arg_2.b.x)), vec2<i32>(global2.d.c, u_input.b << (1u % 32u)), vec2<i32>(_wgslsmith_dot_vec2_i32(countOneBits(global2.b.zw), u_input.a.yx), i32(-1i) * -global2.b.x)), _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_mult_i32(-52302i, 1i), 1i), ~(u_input.a.zz & select(u_input.a.xy, vec2<i32>(-2147483647i, 2147483647i), true))), ~_wgslsmith_add_u32(func_2(u_input.a.zw, ~26009i, 28004u).d.x, ~(~var_0.d.x))).c.c;
    return 17939i;
}

fn func_4(arg_0: Struct_3) -> Struct_3 {
    global1 = -global2.e;
    var var_0 = arg_0;
    let var_1 = 524f;
    let var_2 = global3.zx;
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global3.x, _wgslsmith_f_op_f32(-var_1))));
    return Struct_3(_wgslsmith_f_op_f32(-global3.x), abs(min(_wgslsmith_clamp_vec4_i32(u_input.a, var_0.b, select(vec4<i32>(-1i, 2147483647i, -2147483647i, u_input.a.x), vec4<i32>(arg_0.b.x, var_0.e, var_0.e, global2.b.x), true)), select(u_input.a, u_input.a >> (var_0.c % vec4<u32>(32u)), true))), (firstTrailingBit(~global2.c) | vec4<u32>(var_0.d.b.x, 56559u, 1u, 1u)) ^ _wgslsmith_mult_vec4_u32(_wgslsmith_sub_vec4_u32(var_0.c, select(vec4<u32>(global2.d.b.x, 0u, 7480u, arg_0.d.b.x), arg_0.c, true)), vec4<u32>(abs(55837u), ~0u, var_0.c.x, 4294967295u)), global2.d, u_input.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<u32>, 3>();
    let var_0 = firstLeadingBit(~(firstTrailingBit(vec2<i32>(10704i, global2.e)) | u_input.a.yz));
    global4 = array<vec2<i32>, 19>();
    global0 = array<vec3<u32>, 3>();
    global2 = func_4(Struct_3(global2.d.a, vec4<i32>(min(var_0.x, u_input.b), ~func_1(global3.x, vec4<f32>(global3.x, -1049f, -936f, -333f), Struct_3(-251f, vec4<i32>(-20843i, global2.d.c, -1161i, -1i), vec4<u32>(33177u, 4294967295u, global2.c.x, global2.d.b.x), global2.d, -5428i), Struct_3(global2.a, vec4<i32>(2293i, var_0.x, var_0.x, 1i), u_input.d, global2.d, -33761i)), global2.d.c, ~(-13886i)), vec4<u32>(~(~43505u), ~(~0u), min(global2.c.x << (15282u % 32u), _wgslsmith_mod_u32(61314u, 20146u)), ~1u), global2.d, _wgslsmith_mult_i32(~(u_input.b << (41084u % 32u)), -2147483647i)));
    global0 = array<vec3<u32>, 3>();
    var var_1 = select(!(!(!select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(true, true, true)))), !vec3<bool>(507f != _wgslsmith_f_op_f32(global2.d.a - global3.x), true, all(vec4<bool>(true, true, true, true))), vec3<bool>(any(select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), true)), _wgslsmith_f_op_f32(global2.d.a * _wgslsmith_f_op_f32(-global3.x)) != _wgslsmith_f_op_f32(-1f), true));
    global1 = var_0.x;
    let var_2 = Struct_2(~global2.c, 585f, global2.d, vec3<u32>(firstTrailingBit(u_input.c.x), global2.c.x, abs(~global2.c.x)) & _wgslsmith_sub_vec3_u32(~(~global2.c.ywz), ~global2.c.yzz), vec4<f32>(global3.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-705f + global2.a) + _wgslsmith_f_op_f32(1091f + global3.x))), -396f, _wgslsmith_f_op_f32(537f + func_4(func_4(Struct_3(global3.x, global2.b, global2.c, global2.d, -37602i))).a)));
    let x = u_input.a;
    s_output = StorageBuffer(abs(~vec4<u32>(4294967295u, u_input.d.x, _wgslsmith_mult_u32(92603u, 19912u), ~1u)));
}


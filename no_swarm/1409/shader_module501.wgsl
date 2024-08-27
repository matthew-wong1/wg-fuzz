struct Struct_1 {
    a: vec2<f32>,
    b: u32,
    c: vec3<bool>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
    c: vec2<bool>,
    d: bool,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
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

var<private> global0: Struct_2 = Struct_2(vec3<bool>(false, false, false), Struct_1(vec2<f32>(-893f, 358f), 63523u, vec3<bool>(false, false, false)), vec2<bool>(true, true), true, vec2<i32>(-1i, -45754i));

var<private> global1: array<Struct_2, 32> = array<Struct_2, 32>(Struct_2(vec3<bool>(true, true, true), Struct_1(vec2<f32>(-1000f, 1109f), 0u, vec3<bool>(false, true, true)), vec2<bool>(true, true), false, vec2<i32>(i32(-2147483648), -41809i)), Struct_2(vec3<bool>(true, false, true), Struct_1(vec2<f32>(-1264f, -330f), 56970u, vec3<bool>(true, true, false)), vec2<bool>(true, false), false, vec2<i32>(-12444i, -697i)), Struct_2(vec3<bool>(false, true, true), Struct_1(vec2<f32>(-448f, 173f), 23228u, vec3<bool>(true, true, false)), vec2<bool>(false, false), false, vec2<i32>(-11343i, -62055i)), Struct_2(vec3<bool>(true, true, true), Struct_1(vec2<f32>(1000f, -334f), 35615u, vec3<bool>(true, false, true)), vec2<bool>(true, true), false, vec2<i32>(29496i, -21403i)), Struct_2(vec3<bool>(false, true, false), Struct_1(vec2<f32>(-463f, -625f), 50054u, vec3<bool>(true, true, true)), vec2<bool>(true, false), true, vec2<i32>(23500i, 49467i)), Struct_2(vec3<bool>(false, true, true), Struct_1(vec2<f32>(-1888f, 1219f), 0u, vec3<bool>(true, true, false)), vec2<bool>(true, true), false, vec2<i32>(0i, i32(-2147483648))), Struct_2(vec3<bool>(false, false, true), Struct_1(vec2<f32>(-1000f, -939f), 12696u, vec3<bool>(false, false, true)), vec2<bool>(false, true), true, vec2<i32>(2147483647i, 58338i)), Struct_2(vec3<bool>(true, false, false), Struct_1(vec2<f32>(1677f, 1603f), 4294967295u, vec3<bool>(true, false, false)), vec2<bool>(true, false), false, vec2<i32>(20942i, 1i)), Struct_2(vec3<bool>(false, true, true), Struct_1(vec2<f32>(2061f, -691f), 1u, vec3<bool>(true, true, true)), vec2<bool>(false, true), false, vec2<i32>(1i, 0i)), Struct_2(vec3<bool>(false, true, false), Struct_1(vec2<f32>(-349f, 1401f), 1u, vec3<bool>(true, true, true)), vec2<bool>(false, false), false, vec2<i32>(2147483647i, 21540i)), Struct_2(vec3<bool>(false, true, true), Struct_1(vec2<f32>(-198f, 818f), 4294967295u, vec3<bool>(true, false, false)), vec2<bool>(false, false), true, vec2<i32>(-7021i, 1i)), Struct_2(vec3<bool>(true, false, false), Struct_1(vec2<f32>(-412f, -1000f), 4294967295u, vec3<bool>(true, false, true)), vec2<bool>(false, true), true, vec2<i32>(-1i, 51666i)), Struct_2(vec3<bool>(true, true, false), Struct_1(vec2<f32>(-556f, -134f), 4294967295u, vec3<bool>(true, true, false)), vec2<bool>(false, true), true, vec2<i32>(0i, -23010i)), Struct_2(vec3<bool>(true, false, false), Struct_1(vec2<f32>(-175f, 1879f), 8419u, vec3<bool>(true, false, true)), vec2<bool>(false, false), false, vec2<i32>(-12816i, 0i)), Struct_2(vec3<bool>(false, true, true), Struct_1(vec2<f32>(-1000f, 1728f), 0u, vec3<bool>(true, true, true)), vec2<bool>(false, true), true, vec2<i32>(-17075i, 2147483647i)), Struct_2(vec3<bool>(true, false, false), Struct_1(vec2<f32>(1311f, -1435f), 41678u, vec3<bool>(false, true, false)), vec2<bool>(false, true), true, vec2<i32>(i32(-2147483648), 0i)), Struct_2(vec3<bool>(false, true, false), Struct_1(vec2<f32>(-1255f, 311f), 0u, vec3<bool>(true, true, true)), vec2<bool>(true, true), false, vec2<i32>(-9727i, -24316i)), Struct_2(vec3<bool>(false, true, false), Struct_1(vec2<f32>(-1000f, -1000f), 32517u, vec3<bool>(false, true, true)), vec2<bool>(true, true), true, vec2<i32>(i32(-2147483648), 14580i)), Struct_2(vec3<bool>(false, false, false), Struct_1(vec2<f32>(918f, -406f), 42473u, vec3<bool>(true, false, true)), vec2<bool>(true, false), true, vec2<i32>(i32(-2147483648), 1i)), Struct_2(vec3<bool>(true, false, false), Struct_1(vec2<f32>(-547f, 1119f), 54701u, vec3<bool>(false, false, false)), vec2<bool>(true, true), true, vec2<i32>(-1i, -4699i)), Struct_2(vec3<bool>(true, false, false), Struct_1(vec2<f32>(1173f, -285f), 40400u, vec3<bool>(true, false, true)), vec2<bool>(true, false), false, vec2<i32>(3201i, 2147483647i)), Struct_2(vec3<bool>(false, false, false), Struct_1(vec2<f32>(679f, -1000f), 1u, vec3<bool>(true, true, false)), vec2<bool>(true, false), false, vec2<i32>(-34387i, -36001i)), Struct_2(vec3<bool>(true, false, true), Struct_1(vec2<f32>(-319f, -206f), 6987u, vec3<bool>(true, false, false)), vec2<bool>(false, true), false, vec2<i32>(0i, 8769i)), Struct_2(vec3<bool>(true, false, false), Struct_1(vec2<f32>(612f, -962f), 4821u, vec3<bool>(true, true, true)), vec2<bool>(false, true), true, vec2<i32>(-998i, 2287i)), Struct_2(vec3<bool>(false, true, false), Struct_1(vec2<f32>(1215f, 721f), 22177u, vec3<bool>(true, false, true)), vec2<bool>(true, true), false, vec2<i32>(i32(-2147483648), 151i)), Struct_2(vec3<bool>(true, false, true), Struct_1(vec2<f32>(1027f, 809f), 25014u, vec3<bool>(false, false, true)), vec2<bool>(true, true), true, vec2<i32>(-50454i, -20868i)), Struct_2(vec3<bool>(true, true, false), Struct_1(vec2<f32>(-1274f, 736f), 10820u, vec3<bool>(false, false, true)), vec2<bool>(false, false), true, vec2<i32>(2147483647i, 33839i)), Struct_2(vec3<bool>(true, true, false), Struct_1(vec2<f32>(802f, -369f), 3835u, vec3<bool>(true, false, true)), vec2<bool>(true, true), false, vec2<i32>(2147483647i, 1i)), Struct_2(vec3<bool>(true, false, true), Struct_1(vec2<f32>(-1000f, -1147f), 4294967295u, vec3<bool>(false, true, true)), vec2<bool>(false, false), false, vec2<i32>(0i, 40796i)), Struct_2(vec3<bool>(true, true, false), Struct_1(vec2<f32>(100f, -1833f), 78904u, vec3<bool>(true, false, false)), vec2<bool>(false, true), true, vec2<i32>(30863i, 1i)), Struct_2(vec3<bool>(true, false, true), Struct_1(vec2<f32>(298f, -1478f), 54015u, vec3<bool>(true, false, true)), vec2<bool>(true, true), false, vec2<i32>(-23557i, 6427i)), Struct_2(vec3<bool>(false, true, false), Struct_1(vec2<f32>(-1207f, 208f), 17612u, vec3<bool>(false, true, true)), vec2<bool>(false, false), false, vec2<i32>(i32(-2147483648), 1i)));

var<private> global2: u32;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: vec3<f32>) -> Struct_1 {
    var var_0 = 1000f;
    global1 = array<Struct_2, 32>();
    let var_1 = max(~u_input.a.x, ~0i) & -53872i;
    global2 = 4294967295u;
    let var_2 = global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(~1u, ~global0.b.b), 32u)];
    return var_2.b;
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2, arg_2: bool, arg_3: Struct_1) -> Struct_1 {
    global1 = array<Struct_2, 32>();
    global2 = countOneBits(_wgslsmith_dot_vec3_u32(~vec3<u32>(47113u, _wgslsmith_clamp_u32(arg_0.b.b, arg_1.b.b, arg_0.b.b), global0.b.b), vec3<u32>(countOneBits(~arg_3.b), countOneBits(arg_0.b.b), 1u)));
    var var_0 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-553f, _wgslsmith_f_op_f32(145f - arg_3.a.x), _wgslsmith_f_op_f32(max(arg_0.b.a.x, global0.b.a.x))))), vec3<f32>(arg_3.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(2237f, arg_1.b.a.x, true)) * _wgslsmith_f_op_f32(-arg_3.a.x)), global0.b.a.x))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-223f, arg_3.a.x, arg_3.a.x))) * _wgslsmith_div_vec3_f32(vec3<f32>(arg_3.a.x, arg_0.b.a.x, arg_3.a.x), vec3<f32>(-433f, -1637f, -1000f))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_3.a.x, -509f, 306f)), vec3<f32>(-1036f, 400f, 347f)))))));
    global1 = array<Struct_2, 32>();
    var var_1 = all(!select(!(!arg_0.c), select(vec2<bool>(true, arg_1.a.x), !arg_1.c, any(vec2<bool>(arg_0.a.x, arg_1.a.x))), !global0.b.c.yy));
    return func_2(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(global0.b.a.x, arg_1.b.a.x)), _wgslsmith_f_op_f32(arg_1.b.a.x + 2152f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_0.b.a.x, -402f))), _wgslsmith_f_op_f32(-arg_3.a.x)));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_2) -> Struct_1 {
    var var_0 = vec4<f32>(arg_1.a.x, global0.b.a.x, _wgslsmith_f_op_f32(-func_2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1400f, global0.b.a.x, -652f) * vec3<f32>(arg_1.a.x, arg_0.a.x, -375f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.a.x, 659f, arg_0.a.x) + vec3<f32>(arg_2.b.a.x, arg_0.a.x, -1102f)))).a.x), _wgslsmith_f_op_f32(-arg_1.a.x));
    global0 = Struct_2(vec3<bool>(true, arg_2.a.x, arg_2.b.c.x), Struct_1(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(exp2(global0.b.a)))))), 1u, select(vec3<bool>(true, arg_2.a.x, all(vec4<bool>(false, true, false, arg_1.c.x))), arg_2.a, any(vec4<bool>(arg_0.c.x, arg_2.d, arg_1.c.x, false)))), !(!vec2<bool>(arg_1.c.x, arg_2.b.c.x && true)), global0.b.c.x, global0.e);
    let var_1 = global1[_wgslsmith_index_u32(global0.b.b, 32u)];
    var var_2 = max(_wgslsmith_dot_vec4_u32(~firstLeadingBit(vec4<u32>(arg_0.b, arg_1.b, 93521u, 1u)) >> (_wgslsmith_clamp_vec4_u32(vec4<u32>(0u, 11274u, var_1.b.b, 0u), _wgslsmith_mult_vec4_u32(vec4<u32>(15305u, arg_1.b, arg_1.b, arg_2.b.b), vec4<u32>(4294967295u, arg_2.b.b, arg_0.b, 1u)), vec4<u32>(21527u, arg_0.b, 52476u, 1u) << (vec4<u32>(arg_1.b, 0u, global0.b.b, 0u) % vec4<u32>(32u))) % vec4<u32>(32u)), countOneBits(~_wgslsmith_clamp_vec4_u32(vec4<u32>(arg_1.b, 92807u, var_1.b.b, global0.b.b), vec4<u32>(arg_2.b.b, arg_0.b, 50477u, 20224u), vec4<u32>(arg_2.b.b, 0u, 4294967295u, arg_0.b)))), var_1.b.b);
    return Struct_1(_wgslsmith_f_op_vec2_f32(trunc(arg_0.a)), ~arg_1.b, func_3(Struct_2(var_1.b.c, Struct_1(_wgslsmith_div_vec2_f32(vec2<f32>(var_0.x, 1000f), global0.b.a), ~var_1.b.b, var_1.a), vec2<bool>(true, var_1.b.c.x & true), false, vec2<i32>(global0.e.x, 1i)), arg_2, !all(select(vec4<bool>(arg_0.c.x, false, false, true), vec4<bool>(arg_1.c.x, true, true, true), vec4<bool>(true, false, false, arg_2.d))), func_2(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(var_0.xxy - var_0.wwx))))).c);
}

fn func_1(arg_0: i32, arg_1: vec2<f32>, arg_2: vec2<f32>) -> f32 {
    let var_0 = Struct_2(!global0.b.c, global0.b, global0.c, false, _wgslsmith_mult_vec2_i32(u_input.a.zw, global0.e));
    let var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(-global0.b.a), global0.b.b, var_0.b.c);
    global0 = Struct_2(!select(global0.a, global0.a, vec3<bool>(false, var_0.d && global0.b.c.x, true)), func_4(Struct_1(vec2<f32>(arg_1.x, -110f), ~17073u, var_0.b.c), func_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.a.x, 2006f, 324f)) - _wgslsmith_div_vec3_f32(vec3<f32>(-853f, -820f, 2224f), vec3<f32>(1397f, arg_2.x, global0.b.a.x)))), Struct_2(func_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1193f, 114f, -538f) - vec3<f32>(-302f, var_0.b.a.x, 513f))).c, func_3(Struct_2(vec3<bool>(false, true, var_0.c.x), Struct_1(arg_2, 1u, vec3<bool>(false, global0.c.x, false)), vec2<bool>(var_1.c.x, var_0.c.x), false, vec2<i32>(var_0.e.x, var_0.e.x)), Struct_2(vec3<bool>(var_1.c.x, true, var_1.c.x), Struct_1(global0.b.a, global0.b.b, var_1.c), vec2<bool>(true, true), var_0.d, u_input.a.yw), false, Struct_1(var_1.a, var_1.b, global0.b.c)), !select(vec2<bool>(false, true), var_1.c.yx, var_1.c.yy), var_0.c.x, abs(var_0.e))), func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.a.x, 362f, arg_1.x)))))).c.yy, var_0.d, vec2<i32>(-2147483647i, min(global0.e.x, arg_0)));
    var var_2 = _wgslsmith_f_op_f32(-var_1.a.x);
    let var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-global0.b.a), _wgslsmith_f_op_vec2_f32(round(arg_2))))) - _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(arg_1.x, -157f)))), _wgslsmith_dot_vec2_u32(vec2<u32>(var_0.b.b, _wgslsmith_mod_u32(global0.b.b, global0.b.b)), (vec2<u32>(global0.b.b, 35891u) << (vec2<u32>(var_1.b, var_1.b) % vec2<u32>(32u))) & vec2<u32>(1u, var_0.b.b)) & firstTrailingBit(76154u), var_1.c);
    return _wgslsmith_f_op_f32(round(200f));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_2, 32>();
    global2 = ~0u;
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.b.a.x + global0.b.a.x) + _wgslsmith_f_op_f32(-global0.b.a.x)))))));
    global1 = array<Struct_2, 32>();
    global0 = global1[_wgslsmith_index_u32((select(41777u, global0.b.b, false) << ((abs(min(global0.b.b, 15588u)) | firstTrailingBit(min(global0.b.b, 1u))) % 32u)) & global0.b.b, 32u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1(0i, global0.b.a, global0.b.a)), -768f) + 1509f)));
}


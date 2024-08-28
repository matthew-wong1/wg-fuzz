struct Struct_1 {
    a: vec4<bool>,
    b: f32,
}

struct Struct_2 {
    a: bool,
    b: u32,
    c: vec3<bool>,
}

struct Struct_3 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: i32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec2<u32>,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<Struct_2, 21> = array<Struct_2, 21>(Struct_2(false, 18070u, vec3<bool>(true, false, false)), Struct_2(true, 23650u, vec3<bool>(false, true, false)), Struct_2(false, 1u, vec3<bool>(true, true, false)), Struct_2(true, 4294967295u, vec3<bool>(true, true, true)), Struct_2(false, 0u, vec3<bool>(false, false, true)), Struct_2(false, 80299u, vec3<bool>(false, true, true)), Struct_2(true, 27036u, vec3<bool>(true, true, false)), Struct_2(false, 1809u, vec3<bool>(false, false, false)), Struct_2(false, 37257u, vec3<bool>(true, true, false)), Struct_2(true, 0u, vec3<bool>(false, false, true)), Struct_2(true, 4294967295u, vec3<bool>(false, true, false)), Struct_2(false, 41789u, vec3<bool>(false, true, true)), Struct_2(true, 62162u, vec3<bool>(false, true, false)), Struct_2(true, 27612u, vec3<bool>(false, false, true)), Struct_2(true, 1u, vec3<bool>(true, true, false)), Struct_2(false, 75666u, vec3<bool>(true, true, false)), Struct_2(true, 16539u, vec3<bool>(false, false, false)), Struct_2(true, 66025u, vec3<bool>(false, false, false)), Struct_2(true, 1u, vec3<bool>(true, false, false)), Struct_2(true, 0u, vec3<bool>(false, false, true)), Struct_2(false, 24654u, vec3<bool>(false, false, true)));

var<private> global2: Struct_3;

var<private> global3: vec2<u32>;

var<private> global4: array<vec2<i32>, 22>;

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: vec2<u32>, arg_3: Struct_3) -> f32 {
    let var_0 = vec3<f32>(arg_0.b, -873f, _wgslsmith_f_op_f32(-1242f * -105f));
    var var_1 = arg_3;
    var var_2 = reverseBits(u_input.b);
    var var_3 = global1[_wgslsmith_index_u32(1u, 21u)];
    let var_4 = reverseBits(~(~select(vec4<u32>(global3.x, var_3.b, 4294967295u, 42563u), vec4<u32>(var_3.b, 0u, 5004u, global3.x) << (vec4<u32>(16419u, u_input.b.x, global0.b, 62764u) % vec4<u32>(32u)), select(vec4<bool>(arg_0.a.x, global0.a, var_3.c.x, true), arg_0.a, vec4<bool>(arg_0.a.x, global0.c.x, true, var_3.c.x)))));
    return _wgslsmith_f_op_f32(arg_0.b - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -178f) + _wgslsmith_div_f32(-589f, _wgslsmith_f_op_f32(-arg_0.b))))));
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: bool, arg_3: vec4<f32>) -> vec3<bool> {
    let var_0 = Struct_3(vec3<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(57679i, global2.a.x, global2.a.x), global2.a) << (_wgslsmith_mult_vec3_u32(vec3<u32>(10289u, 9071u, global3.x), u_input.b) % vec3<u32>(32u)), ~vec3<i32>(u_input.c, -4249i, -2147483647i)), ~_wgslsmith_mult_i32(0i, ~global2.a.x), ~26572i));
    global1 = array<Struct_2, 21>();
    var var_1 = Struct_2(all(vec4<bool>(arg_0.a.x, all(!vec4<bool>(true, global0.c.x, false, false)), !(global3.x < 9949u), !arg_0.a.x)), global3.x, arg_0.a.xzw);
    global4 = array<vec2<i32>, 22>();
    var_1 = global1[_wgslsmith_index_u32(min(_wgslsmith_add_u32(countOneBits(~var_1.b), firstLeadingBit(min(_wgslsmith_div_u32(global3.x, 1u), ~1u))), _wgslsmith_mod_u32(~0u >> ((7430u >> (u_input.d % 32u)) % 32u), ~_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, global0.b), u_input.b.zz)) | ~(~0u)), 21u)];
    return var_1.c;
}

fn func_2(arg_0: i32, arg_1: Struct_2, arg_2: vec2<u32>) -> f32 {
    global0 = Struct_2(arg_1.c.x, select(_wgslsmith_div_u32(11681u, max(1u | global3.x, arg_1.b)), global0.b, _wgslsmith_add_i32(arg_0 & global2.a.x, -30317i) < (1i & select(u_input.c, 18522i, global0.c.x))), func_4(Struct_1(!select(vec4<bool>(global0.a, false, arg_1.a, arg_1.c.x), vec4<bool>(arg_1.c.x, arg_1.c.x, true, arg_1.a), vec4<bool>(false, true, true, false)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(Struct_1(vec4<bool>(arg_1.a, true, false, global0.a), 1126f), u_input.c, vec2<u32>(arg_2.x, global0.b), Struct_3(vec3<i32>(-2147483647i, u_input.c, -26677i)))), -777f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_3(Struct_1(vec4<bool>(false, global0.c.x, global0.a, global0.c.x), -1444f), u_input.c, arg_2, Struct_3(global2.a))), _wgslsmith_f_op_f32(f32(-1f) * -536f)))), global0.a, vec4<f32>(-494f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1975f)) - -1642f), -1992f, _wgslsmith_f_op_f32(floor(-560f)))));
    let var_0 = ~51457u;
    var var_1 = var_0;
    let var_2 = global2.a.zz;
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-870f, -510f, 1000f) * vec3<f32>(-180f, 183f, -2037f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1300f, -1288f, 1247f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(205f, -194f, 2050f) * vec3<f32>(985f, 952f, -604f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-1210f, 1000f, -1302f) + vec3<f32>(-1835f, 662f, 443f))))) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(965f, -1366f, -471f))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-553f, -1591f, 1000f))))))));
    return _wgslsmith_f_op_f32(max(599f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.x) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_3.x, -1392f) * _wgslsmith_f_op_f32(-var_3.x)))))));
}

fn func_1(arg_0: vec2<f32>, arg_1: vec4<u32>) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_f32(func_2(-abs(_wgslsmith_dot_vec2_i32(global4[_wgslsmith_index_u32(arg_1.x, 22u)], global2.a.yx)) & reverseBits(-u_input.c >> (1u % 32u)), Struct_2(any(vec3<bool>(true, global0.a, false)) || (~u_input.d == u_input.e), firstLeadingBit(global0.b), select(global0.c, !global0.c, global0.c)), u_input.b.zx));
    let var_1 = -892f;
    var var_2 = Struct_1(vec4<bool>(var_0 < arg_0.x, false, global0.a, global0.a), _wgslsmith_f_op_f32(var_0 - -1450f));
    var_2 = Struct_1(vec4<bool>(!global0.a, global0.a, !any(var_2.a.wx) | var_2.a.x, true), _wgslsmith_f_op_f32(-var_0));
    global0 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.b.xx, ~_wgslsmith_sub_vec2_u32(vec2<u32>(1u, reverseBits(13328u)), _wgslsmith_sub_vec2_u32(select(vec2<u32>(global0.b, global3.x), arg_1.xz, global0.c.x), arg_1.ww))), 21u)];
    return Struct_3(~global2.a);
}

fn func_5(arg_0: Struct_3, arg_1: vec3<i32>, arg_2: Struct_2) -> Struct_3 {
    let var_0 = true;
    global3 = max(~u_input.b.xy, ~(~vec2<u32>(~arg_2.b, ~52874u)));
    global3 = vec2<u32>(1u, select(_wgslsmith_clamp_u32(_wgslsmith_mod_u32(_wgslsmith_div_u32(global0.b, 43381u), global3.x), global0.b | 54210u, 89994u), countOneBits(u_input.d), global0.c.x));
    global4 = array<vec2<i32>, 22>();
    global3 = u_input.b.xz;
    return func_1(vec2<f32>(_wgslsmith_f_op_f32(-321f - 1343f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-390f - -1778f))), ~_wgslsmith_mod_vec4_u32(abs(vec4<u32>(6013u, 0u, global3.x, 32610u)), vec4<u32>(1u, _wgslsmith_add_u32(global0.b, global3.x), ~arg_2.b, abs(33976u))));
}

fn func_6(arg_0: Struct_2, arg_1: Struct_3, arg_2: bool, arg_3: f32) -> vec2<u32> {
    global3 = ~(u_input.a >> (_wgslsmith_clamp_vec2_u32(u_input.a, min(abs(vec2<u32>(u_input.b.x, 1652u)), ~u_input.b.zx), select(select(u_input.a, vec2<u32>(4294967295u, u_input.d), arg_0.c.xz), ~u_input.b.zy, !vec2<bool>(global0.a, false))) % vec2<u32>(32u)));
    var var_0 = !(true | global0.c.x);
    let var_1 = Struct_3(-vec3<i32>(_wgslsmith_clamp_i32(1i, -29810i, arg_1.a.x) ^ ~arg_1.a.x, abs(u_input.c), max(i32(-1i) * -2147483647i, ~arg_1.a.x)));
    let var_2 = !vec3<bool>(_wgslsmith_mult_i32(~var_1.a.x, var_1.a.x | 2147483647i) <= arg_1.a.x, all(vec3<bool>(true, select(true, true, true), false)), !(!global0.c.x));
    var var_3 = global0.b;
    return ~u_input.a;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_2, 21>();
    var var_0 = select(select(global0.c.x & global0.a, global0.a, false), global0.a, all(vec3<bool>(global0.a, global0.a, (true || global0.c.x) & global0.c.x)));
    var var_1 = ~_wgslsmith_clamp_vec2_u32(reverseBits(firstTrailingBit(u_input.b.xx)), func_6(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(7620u, u_input.d, 1u, u_input.a.x), ~vec4<u32>(u_input.e, u_input.a.x, 0u, 24941u)), 21u)], func_5(func_1(vec2<f32>(785f, -298f), vec4<u32>(1u, 64631u, global0.b, 19428u)), abs(global2.a), global1[_wgslsmith_index_u32(~10706u, 21u)]), true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1764f)))), u_input.a >> (vec2<u32>(_wgslsmith_div_u32(4294967295u, 9705u), abs(global0.b)) % vec2<u32>(32u)));
    var var_2 = Struct_3(min(func_5(func_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-611f, -466f)), vec4<u32>(global0.b, 4294967295u, 53769u, 4294967295u) << (vec4<u32>(global0.b, 0u, global3.x, 0u) % vec4<u32>(32u))), global2.a, global1[_wgslsmith_index_u32(4294967295u, 21u)]).a, global2.a));
    global2 = Struct_3(var_2.a);
    let var_3 = Struct_1(!vec4<bool>(false, abs(var_1.x) < ~var_1.x, func_4(Struct_1(vec4<bool>(global0.a, false, true, global0.c.x), -1000f), -712f, !global0.c.x, vec4<f32>(-1609f, 230f, 878f, -1000f)).x, !global0.c.x), 1993f);
    let x = u_input.a;
    s_output = StorageBuffer(i32(-1i) * -_wgslsmith_sub_i32(-17767i, -2147483647i), vec4<u32>(~firstLeadingBit(27012u) & global0.b, 8597u, 43426u, _wgslsmith_add_u32(u_input.b.x, abs(min(global3.x, var_1.x)))), u_input.a >> (u_input.a % vec2<u32>(32u)), _wgslsmith_sub_i32(func_5(func_5(Struct_3(global2.a), var_2.a, global1[_wgslsmith_index_u32(0u, 21u)]), vec3<i32>(u_input.c, var_2.a.x, u_input.c), global1[_wgslsmith_index_u32(~4294967295u, 21u)]).a.x, firstLeadingBit(u_input.c)) & 1i, firstTrailingBit(~(-2147483647i)));
}


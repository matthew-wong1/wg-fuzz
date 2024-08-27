struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: i32,
    d: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: u32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<i32>,
    c: vec4<i32>,
    d: vec2<f32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 6> = array<vec2<bool>, 6>(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false));

var<private> global1: Struct_1 = Struct_1(vec4<i32>(1i, 0i, 30357i, -1i));

var<private> global2: array<Struct_2, 15>;

var<private> global3: array<vec2<f32>, 30>;

var<private> global4: array<Struct_2, 17> = array<Struct_2, 17>(Struct_2(false, Struct_1(vec4<i32>(i32(-2147483648), -27773i, i32(-2147483648), -1440i)), 10339i, 7928u), Struct_2(false, Struct_1(vec4<i32>(1i, 0i, 2147483647i, 87238i)), -16487i, 0u), Struct_2(true, Struct_1(vec4<i32>(30082i, 2147483647i, -858i, 2147483647i)), -13345i, 1u), Struct_2(true, Struct_1(vec4<i32>(2147483647i, 15057i, 3193i, -14396i)), -6259i, 10903u), Struct_2(true, Struct_1(vec4<i32>(-1i, 13246i, i32(-2147483648), -30402i)), 13788i, 39678u), Struct_2(true, Struct_1(vec4<i32>(-20725i, 2147483647i, i32(-2147483648), i32(-2147483648))), 2147483647i, 36932u), Struct_2(false, Struct_1(vec4<i32>(-27012i, 1i, 53354i, 0i)), 0i, 1u), Struct_2(false, Struct_1(vec4<i32>(10583i, i32(-2147483648), 2147483647i, 56814i)), i32(-2147483648), 1u), Struct_2(false, Struct_1(vec4<i32>(52742i, 20714i, i32(-2147483648), 0i)), i32(-2147483648), 35022u), Struct_2(false, Struct_1(vec4<i32>(-44288i, 20444i, -1i, -1i)), 2147483647i, 4294967295u), Struct_2(false, Struct_1(vec4<i32>(-1i, 11454i, 43776i, 1i)), i32(-2147483648), 1u), Struct_2(false, Struct_1(vec4<i32>(2147483647i, 31972i, i32(-2147483648), -1718i)), i32(-2147483648), 117992u), Struct_2(false, Struct_1(vec4<i32>(i32(-2147483648), -68675i, i32(-2147483648), 2147483647i)), 0i, 1u), Struct_2(true, Struct_1(vec4<i32>(13293i, 30916i, -1i, 1i)), i32(-2147483648), 1u), Struct_2(false, Struct_1(vec4<i32>(-1i, -38696i, 0i, -1i)), -18711i, 10866u), Struct_2(false, Struct_1(vec4<i32>(-53731i, -16942i, -27523i, 11103i)), 2147483647i, 17017u), Struct_2(false, Struct_1(vec4<i32>(1i, 0i, -1i, 0i)), -41837i, 23723u));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: vec3<bool>) -> vec3<u32> {
    var var_0 = min(_wgslsmith_dot_vec2_u32(~abs(vec2<u32>(u_input.a, 1u)), firstTrailingBit(reverseBits(vec2<u32>(u_input.c, u_input.c)))), u_input.d) << ((_wgslsmith_div_u32(0u, 0u | _wgslsmith_add_u32(u_input.d, 80921u)) | reverseBits(_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.d, 20258u, u_input.a, 0u), vec4<u32>(u_input.a, u_input.d, 1u, 1u), vec4<u32>(9183u, 39113u, u_input.a, u_input.a)), abs(vec4<u32>(56617u, u_input.d, u_input.a, 5082u))))) % 32u);
    var var_1 = global4[_wgslsmith_index_u32(u_input.c, 17u)];
    var_0 = 0u;
    let var_2 = Struct_2(arg_1.a.x <= reverseBits(-u_input.b.x), Struct_1(-firstTrailingBit(global1.a) >> (vec4<u32>(u_input.c, u_input.c, _wgslsmith_dot_vec3_u32(vec3<u32>(35819u, 37346u, var_1.d), vec3<u32>(1u, 65288u, 33713u)), var_1.d & 0u) % vec4<u32>(32u))), _wgslsmith_add_i32(~_wgslsmith_dot_vec2_i32(-var_1.b.a.zw, -vec2<i32>(arg_0.x, arg_1.a.x)), _wgslsmith_mod_i32(~global1.a.x & _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 1i, 80298i, arg_1.a.x), vec4<i32>(var_1.b.a.x, global1.a.x, 31108i, global1.a.x)), firstTrailingBit(_wgslsmith_mult_i32(1i, -21350i)))), firstTrailingBit(var_1.d >> (~var_1.d % 32u)));
    var var_3 = _wgslsmith_f_op_vec2_f32(-global3[_wgslsmith_index_u32(13538u, 30u)]);
    return vec3<u32>(_wgslsmith_sub_u32(var_2.d, 91448u), 55367u, ~var_1.d) & ~_wgslsmith_mod_vec3_u32(vec3<u32>(~7322u, ~4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(var_2.d, 6786u, 31904u), vec3<u32>(1u, var_2.d, var_2.d))), ~_wgslsmith_clamp_vec3_u32(vec3<u32>(var_2.d, 4294967295u, u_input.c), vec3<u32>(var_2.d, 65768u, 72799u), vec3<u32>(var_1.d, var_2.d, var_2.d)));
}

fn func_2(arg_0: Struct_2) -> i32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, 111f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1101f - -1969f)) - _wgslsmith_div_f32(1113f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
    global0 = array<vec2<bool>, 6>();
    var var_1 = u_input.e;
    var var_2 = ~_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_sub_u32(u_input.c, 16649u), u_input.c, 4294967295u), ~(~vec3<u32>(u_input.a, 43937u, 17967u) ^ _wgslsmith_sub_vec3_u32(vec3<u32>(0u, arg_0.d, 48654u), vec3<u32>(u_input.d, 1u, 54541u))));
    global0 = array<vec2<bool>, 6>();
    return _wgslsmith_mult_i32((~u_input.b.x << (_wgslsmith_mod_u32(~arg_0.d, u_input.a) % 32u)) << (u_input.d % 32u), ~(-1i >> (~arg_0.d % 32u)) >> (~_wgslsmith_dot_vec3_u32(func_3(vec3<i32>(2147483647i, 0i, arg_0.c), arg_0.b, vec3<bool>(arg_0.a, true, arg_0.a)), vec3<u32>(4294967295u, arg_0.d, 2027u)) % 32u));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1) -> u32 {
    let var_0 = true;
    var var_1 = !global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~u_input.d, u_input.d, 1u & u_input.c), 6u)];
    global3 = array<vec2<f32>, 30>();
    let var_2 = vec4<bool>(select(_wgslsmith_dot_vec3_i32(~arg_1.a.xzz, arg_0.a.ywz ^ u_input.b), 0i, (arg_1.a.x & 1i) <= (i32(-1i) * -14377i)) > _wgslsmith_mult_i32(arg_0.a.x, func_2(global4[_wgslsmith_index_u32(u_input.d & u_input.c, 17u)])), var_0, var_0, true);
    global3 = array<vec2<f32>, 30>();
    return 1u;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<bool>, 6>();
    let var_0 = _wgslsmith_add_vec2_u32(~vec2<u32>(4294967295u, abs(2702u)), ~vec2<u32>(u_input.a, func_1(Struct_1(global1.a), Struct_1(vec4<i32>(2147483647i, global1.a.x, global1.a.x, global1.a.x)))));
    global4 = array<Struct_2, 17>();
    global1 = Struct_1(vec4<i32>(global1.a.x, ~u_input.b.x, 1i, u_input.b.x));
    let var_1 = 82113u ^ u_input.c;
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-585f, 1029f, 1494f))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-1594f - 1596f), _wgslsmith_f_op_f32(max(-603f, 2020f)), _wgslsmith_f_op_f32(f32(-1f) * -1457f)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1000f, -119f, -1000f), vec3<f32>(-131f, 653f, -495f))) + _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-2396f, 1148f, 1339f)))))));
    global0 = array<vec2<bool>, 6>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_2.x, var_2.x, var_2.x, 667f), vec4<f32>(384f, -845f, var_2.x, var_2.x))) + vec4<f32>(-1357f, var_2.x, var_2.x, var_2.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-531f, var_2.x, -312f, var_2.x) + _wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.x, -1000f, var_2.x, 351f) * vec4<f32>(2262f, -366f, var_2.x, -626f))), vec4<bool>(all(vec3<bool>(false, false, true)), true, all(vec2<bool>(false, true)), var_2.x != 1835f))), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(select(1707f, -453f, true)), _wgslsmith_f_op_f32(-609f + -1000f), var_2.x, _wgslsmith_f_op_f32(min(291f, 1751f))), vec4<f32>(1148f, -477f, var_2.x, _wgslsmith_f_op_f32(666f * -516f)))), select(vec4<bool>(true, true, select(false, true, true), -1771i >= u_input.e), select(select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, true), false), select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true), true), true), select(select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, false), true), vec4<bool>(true, true, false, true), true)))), _wgslsmith_mult_vec3_i32(~(~(~global1.a.yzz)), vec3<i32>(21376i, _wgslsmith_sub_i32(52645i, _wgslsmith_mult_i32(u_input.b.x, u_input.e)), 30477i)), _wgslsmith_mult_vec4_i32(vec4<i32>(2147483647i, global1.a.x, -60670i, global1.a.x), reverseBits(-(~vec4<i32>(8033i, 32928i, u_input.e, u_input.b.x)))), vec2<f32>(var_2.x, _wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(608f, _wgslsmith_f_op_f32(1809f * var_2.x), _wgslsmith_f_op_f32(var_2.x * 718f)))) - vec3<f32>(var_2.x, 1111f, 121f)));
}


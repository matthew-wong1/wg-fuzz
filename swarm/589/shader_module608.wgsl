struct Struct_1 {
    a: vec3<i32>,
    b: vec4<i32>,
    c: u32,
    d: bool,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_2,
    c: vec2<u32>,
    d: bool,
}

struct Struct_5 {
    a: i32,
    b: Struct_4,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: i32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<u32>,
    c: f32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 10> = array<Struct_4, 10>(Struct_4(Struct_1(vec3<i32>(-35701i, -39341i, 26879i), vec4<i32>(3030i, -1i, -1i, 43522i), 97455u, true), Struct_2(vec2<bool>(true, true), Struct_1(vec3<i32>(-19716i, 40809i, -17595i), vec4<i32>(-29181i, -1i, -5322i, 10338i), 0u, false)), vec2<u32>(24168u, 16396u), true), Struct_4(Struct_1(vec3<i32>(-26794i, -1i, -27188i), vec4<i32>(-54281i, 2147483647i, 1i, 1i), 6764u, true), Struct_2(vec2<bool>(true, true), Struct_1(vec3<i32>(-1i, 1i, 9786i), vec4<i32>(-29840i, 66578i, 0i, 2279i), 12619u, false)), vec2<u32>(4294967295u, 5190u), true), Struct_4(Struct_1(vec3<i32>(0i, 0i, -1i), vec4<i32>(i32(-2147483648), 0i, -58131i, -1993i), 122325u, false), Struct_2(vec2<bool>(true, false), Struct_1(vec3<i32>(0i, i32(-2147483648), 0i), vec4<i32>(1i, -65082i, 2147483647i, -31300i), 0u, false)), vec2<u32>(1u, 1u), true), Struct_4(Struct_1(vec3<i32>(-9483i, -11696i, 41173i), vec4<i32>(-25863i, 2147483647i, 43731i, i32(-2147483648)), 70977u, true), Struct_2(vec2<bool>(true, false), Struct_1(vec3<i32>(-28918i, -1i, 42584i), vec4<i32>(34595i, 0i, 2105i, 8217i), 1u, false)), vec2<u32>(88862u, 335u), false), Struct_4(Struct_1(vec3<i32>(0i, 21879i, i32(-2147483648)), vec4<i32>(-1i, -15686i, 1i, -29873i), 43119u, true), Struct_2(vec2<bool>(true, false), Struct_1(vec3<i32>(0i, -5390i, 2147483647i), vec4<i32>(6266i, 4121i, 37304i, -28383i), 0u, false)), vec2<u32>(4294967295u, 17399u), false), Struct_4(Struct_1(vec3<i32>(i32(-2147483648), i32(-2147483648), i32(-2147483648)), vec4<i32>(i32(-2147483648), 32512i, i32(-2147483648), 13972i), 0u, false), Struct_2(vec2<bool>(false, true), Struct_1(vec3<i32>(-1i, i32(-2147483648), i32(-2147483648)), vec4<i32>(7281i, -7109i, -38738i, 29170i), 32612u, true)), vec2<u32>(0u, 85420u), false), Struct_4(Struct_1(vec3<i32>(2147483647i, 2147483647i, 0i), vec4<i32>(-51594i, -47186i, 19798i, 1i), 0u, false), Struct_2(vec2<bool>(false, false), Struct_1(vec3<i32>(1i, -34984i, 26229i), vec4<i32>(2147483647i, -14417i, -2273i, 69298i), 1u, false)), vec2<u32>(11910u, 22867u), true), Struct_4(Struct_1(vec3<i32>(14506i, 0i, -16180i), vec4<i32>(1641i, 41243i, -26152i, 19682i), 53833u, false), Struct_2(vec2<bool>(false, true), Struct_1(vec3<i32>(35159i, -16639i, 10370i), vec4<i32>(-19582i, -28445i, 1i, 2147483647i), 128531u, false)), vec2<u32>(13597u, 82571u), true), Struct_4(Struct_1(vec3<i32>(-41312i, 20688i, -1i), vec4<i32>(i32(-2147483648), i32(-2147483648), -29432i, -1i), 4294967295u, false), Struct_2(vec2<bool>(false, true), Struct_1(vec3<i32>(-25596i, 25972i, 0i), vec4<i32>(25408i, -24629i, i32(-2147483648), 0i), 4294967295u, true)), vec2<u32>(4294967295u, 28791u), true), Struct_4(Struct_1(vec3<i32>(-2118i, 1i, 9875i), vec4<i32>(2147483647i, -11083i, 37667i, -1i), 28641u, true), Struct_2(vec2<bool>(false, true), Struct_1(vec3<i32>(2147483647i, 0i, 3089i), vec4<i32>(9745i, i32(-2147483648), -63871i, -7721i), 5614u, false)), vec2<u32>(4294967295u, 1u), false));

var<private> global1: array<Struct_5, 7>;

var<private> global2: i32 = i32(-2147483648);

var<private> global3: i32 = 5085i;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec4<i32>) -> vec4<i32> {
    var var_0 = abs(~(~u_input.b.x << (u_input.b.x % 32u)) & ~min(firstLeadingBit(0u), ~u_input.e));
    var var_1 = arg_0.yzy;
    var var_2 = Struct_1(vec3<i32>(-1i) * -abs(vec3<i32>(var_1.x, arg_0.x, var_1.x)), vec4<i32>(_wgslsmith_div_i32(u_input.c, arg_0.x), 0i, 26152i, abs(countOneBits(0i))), ~u_input.b.x, true);
    var_2 = Struct_1(var_2.a, _wgslsmith_sub_vec4_i32(var_2.b, ~_wgslsmith_clamp_vec4_i32(_wgslsmith_mod_vec4_i32(var_2.b, arg_0), vec4<i32>(var_1.x, 18549i, -19227i, 1i), _wgslsmith_clamp_vec4_i32(arg_0, vec4<i32>(var_2.a.x, var_2.b.x, -18817i, -2147483647i), vec4<i32>(-22692i, u_input.d, -27566i, var_1.x)))), var_2.c ^ u_input.b.x, var_2.d);
    var var_3 = global1[_wgslsmith_index_u32(u_input.b.x, 7u)];
    return var_2.b;
}

fn func_2(arg_0: bool, arg_1: vec2<bool>, arg_2: vec4<bool>, arg_3: vec3<bool>) -> i32 {
    global3 = -62979i;
    let var_0 = Struct_4(Struct_1(_wgslsmith_mod_vec3_i32(vec3<i32>(1i >> (0u % 32u), countOneBits(54728i), abs(u_input.c)), select(min(vec3<i32>(35314i, u_input.c, -1i), vec3<i32>(6236i, u_input.c, u_input.a)), _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.d, u_input.a, 5979i), vec3<i32>(0i, u_input.c, -63364i), vec3<i32>(-832i, u_input.a, u_input.d)), arg_3)), vec4<i32>(i32(-1i) * -2147483647i, u_input.c, u_input.a, u_input.d), _wgslsmith_mod_u32(firstLeadingBit(126627u), 77235u), true), Struct_2(vec2<bool>(all(arg_3.zy), arg_1.x), Struct_1(vec3<i32>(~0i, _wgslsmith_sub_i32(u_input.d, u_input.a), 29441i), _wgslsmith_clamp_vec4_i32(func_3(vec4<i32>(u_input.d, u_input.a, -37464i, u_input.d)), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a, -1i, 10113i, 1i), vec4<i32>(u_input.c, 1i, u_input.a, u_input.c)), firstTrailingBit(vec4<i32>(u_input.d, 45022i, u_input.d, 0i))), _wgslsmith_add_u32(1u, ~1u), false)), u_input.b >> (u_input.b % vec2<u32>(32u)), true);
    let var_1 = Struct_5(_wgslsmith_dot_vec2_i32(countOneBits(vec2<i32>(1i, u_input.d)) | var_0.a.a.xx, var_0.a.a.yz), var_0, _wgslsmith_mult_vec4_u32(vec4<u32>(~var_0.c.x, ~var_0.a.c ^ abs(7482u), countOneBits(firstTrailingBit(u_input.e)), ~u_input.e), select(vec4<u32>(1u, 1u, 1u, 1u), ~(~vec4<u32>(4294967295u, 35018u, u_input.b.x, u_input.b.x)), !vec4<bool>(false, var_0.d, true, arg_2.x))));
    let var_2 = var_0.a;
    let var_3 = vec4<i32>(_wgslsmith_div_i32(var_2.a.x, var_1.b.b.b.b.x), u_input.c, -(-1i >> (firstLeadingBit(4453u) % 32u)) ^ countOneBits(~var_2.b.x), -_wgslsmith_sub_i32(-select(u_input.d, var_2.a.x, var_2.d), 2147483647i));
    return abs(-firstTrailingBit(_wgslsmith_add_i32(u_input.a, -2147483647i)));
}

fn func_1(arg_0: vec3<bool>, arg_1: vec4<f32>, arg_2: u32) -> vec4<u32> {
    let var_0 = firstLeadingBit(-(_wgslsmith_sub_i32(~9105i, 31423i) & ~func_2(arg_0.x, arg_0.zy, vec4<bool>(arg_0.x, true, arg_0.x, false), arg_0)));
    global3 = var_0;
    let var_1 = ~u_input.b;
    var var_2 = _wgslsmith_f_op_vec2_f32(step(arg_1.xy, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(round(arg_1.xy)))))));
    let var_3 = any(arg_0);
    return reverseBits(vec4<u32>(0u, 49841u, arg_2, 1u));
}

fn func_4(arg_0: vec4<u32>) -> Struct_3 {
    let var_0 = Struct_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1947f, 1f, _wgslsmith_f_op_f32(round(-540f)), _wgslsmith_div_f32(345f, -761f)), vec4<f32>(_wgslsmith_f_op_f32(round(1537f)), 2108f, _wgslsmith_div_f32(-752f, -580f), -1206f), vec4<bool>(true, true, true, true))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-160f, -527f, -349f, -938f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(485f, -272f, 868f, -467f))) - vec4<f32>(1f, 1f, 1f, 1f))));
    let var_1 = Struct_1(_wgslsmith_mult_vec3_i32(_wgslsmith_div_vec3_i32(~vec3<i32>(u_input.d, 0i, u_input.c), _wgslsmith_mult_vec3_i32(vec3<i32>(-2147483647i, u_input.a, u_input.c), vec3<i32>(u_input.d, u_input.a, u_input.c))), vec3<i32>(countOneBits(u_input.a), select(10267i, u_input.d, true), u_input.c)) & ~(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.c, -2147483647i, u_input.a), vec3<i32>(-10651i, u_input.d, 0i)) >> (_wgslsmith_mult_vec3_u32(arg_0.zxw, vec3<u32>(arg_0.x, 64629u, 1u)) % vec3<u32>(32u))), _wgslsmith_div_vec4_i32(firstTrailingBit(vec4<i32>(firstTrailingBit(2147483647i), abs(55695i), u_input.d, func_2(true, vec2<bool>(true, true), vec4<bool>(false, false, true, false), vec3<bool>(false, true, false)))), _wgslsmith_div_vec4_i32(vec4<i32>(~u_input.d, _wgslsmith_div_i32(u_input.c, u_input.d), _wgslsmith_dot_vec2_i32(vec2<i32>(23594i, u_input.a), vec2<i32>(u_input.c, u_input.d)), 2147483647i), vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, u_input.c, -1i), vec3<i32>(-2147483647i, u_input.c, 0i)), u_input.a, -3581i, 21975i))), u_input.e, all(select(vec2<bool>(true, true), vec2<bool>(true, false), true)) & true);
    let var_2 = var_1;
    let var_3 = var_2;
    var var_4 = Struct_2(select(!(!vec2<bool>(true, var_2.d)), select(select(select(vec2<bool>(var_2.d, true), vec2<bool>(var_1.d, var_3.d), var_3.d), vec2<bool>(var_1.d, var_3.d), false), vec2<bool>(true & var_1.d, true && var_1.d), select(vec2<bool>(false, var_1.d), select(vec2<bool>(var_2.d, var_2.d), vec2<bool>(false, var_3.d), vec2<bool>(var_3.d, false)), vec2<bool>(var_2.d, true))), all(!vec2<bool>(var_3.d, var_2.d))), Struct_1(select(~(~var_1.b.yzy), vec3<i32>(-1i, var_3.b.x & -29986i, -9854i), ~16426u >= var_1.c), func_3(vec4<i32>(var_2.a.x, 0i, var_1.b.x, -2147483647i)) ^ max(var_1.b, var_1.b), 27986u, !var_3.d));
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(~_wgslsmith_add_vec4_u32(func_1(vec3<bool>(false, true, true), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-692f, -970f, 1460f, 655f)), _wgslsmith_dot_vec2_u32(u_input.b, vec2<u32>(u_input.b.x, 4294967295u))), _wgslsmith_mod_vec4_u32(func_1(vec3<bool>(false, true, true), vec4<f32>(288f, -858f, -867f, -109f), u_input.e), countOneBits(vec4<u32>(1u, 0u, 17185u, u_input.b.x)))));
    let var_1 = u_input.a;
    let var_2 = true;
    global0 = array<Struct_4, 10>();
    global3 = -(_wgslsmith_mult_i32(_wgslsmith_mult_i32(u_input.a, _wgslsmith_add_i32(-2147483647i, -1i)), ~1i) >> (_wgslsmith_add_u32(~(26706u >> (u_input.e % 32u)), ~u_input.e << (min(1u, 0u) % 32u)) % 32u));
    var var_3 = 61355u;
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.x));
    var var_5 = _wgslsmith_f_op_vec2_f32(vec2<f32>(-636f, _wgslsmith_div_f32(1353f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.x) + 696f))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(426f, func_4(vec4<u32>(39083u, 1u, u_input.b.x, u_input.e)).a.x)) + _wgslsmith_f_op_vec2_f32(var_0.a.wy + _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1291f, 893f)), var_0.a.yw)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(min(var_0.a.yzx, var_0.a.xxz)), _wgslsmith_sub_vec3_u32(~(~_wgslsmith_add_vec3_u32(vec3<u32>(u_input.e, 27374u, u_input.b.x), vec3<u32>(u_input.e, u_input.b.x, u_input.b.x))), vec3<u32>(abs(~8078u), min(72409u, 1u), reverseBits(_wgslsmith_clamp_u32(1u, u_input.e, 18032u)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(-1401f, _wgslsmith_f_op_f32(var_5.x * var_0.a.x))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(-1693f))))))), _wgslsmith_mod_vec2_u32(select(select(~u_input.b, vec2<u32>(4585u, u_input.e), false), u_input.b, select(select(vec2<bool>(var_2, var_2), vec2<bool>(false, var_2), true), !vec2<bool>(var_2, false), var_2)), vec2<u32>(0u, _wgslsmith_add_u32(u_input.e, ~14928u))));
}


struct Struct_1 {
    a: vec3<u32>,
    b: vec3<f32>,
    c: f32,
    d: i32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: bool,
    c: vec3<u32>,
    d: bool,
    e: u32,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec4<i32>,
    c: vec3<u32>,
    d: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec2<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 9> = array<vec2<f32>, 9>(vec2<f32>(-839f, -915f), vec2<f32>(1252f, -1000f), vec2<f32>(-1000f, 271f), vec2<f32>(1276f, -2555f), vec2<f32>(-793f, 197f), vec2<f32>(383f, 642f), vec2<f32>(187f, -1000f), vec2<f32>(980f, -167f), vec2<f32>(-1356f, -1475f));

var<private> global1: Struct_2 = Struct_2(vec4<u32>(1u, 51327u, 8835u, 4294967295u), false, vec3<u32>(4294967295u, 1u, 0u), true, 0u);

var<private> global2: array<Struct_1, 12> = array<Struct_1, 12>(Struct_1(vec3<u32>(1u, 39088u, 55676u), vec3<f32>(2362f, 513f, 928f), -1000f, -19010i), Struct_1(vec3<u32>(1u, 0u, 130710u), vec3<f32>(-1144f, -1182f, 766f), 1280f, -116227i), Struct_1(vec3<u32>(43955u, 1u, 87462u), vec3<f32>(1365f, -898f, -1679f), -925f, -22488i), Struct_1(vec3<u32>(4294967295u, 4294967295u, 0u), vec3<f32>(-193f, 271f, -771f), 172f, 24033i), Struct_1(vec3<u32>(4294967295u, 1u, 4294967295u), vec3<f32>(1256f, -720f, 2611f), -598f, i32(-2147483648)), Struct_1(vec3<u32>(53261u, 60208u, 0u), vec3<f32>(199f, -1756f, 1050f), 1883f, i32(-2147483648)), Struct_1(vec3<u32>(16062u, 4294967295u, 4294967295u), vec3<f32>(-223f, 514f, -2183f), 206f, 0i), Struct_1(vec3<u32>(76835u, 4294967295u, 4294967295u), vec3<f32>(-1771f, 156f, 1000f), 576f, -2423i), Struct_1(vec3<u32>(9628u, 2901u, 4294967295u), vec3<f32>(-147f, 204f, -476f), 2047f, -1i), Struct_1(vec3<u32>(6946u, 32320u, 19624u), vec3<f32>(-373f, 111f, 1105f), 345f, -23904i), Struct_1(vec3<u32>(4294967295u, 27524u, 30672u), vec3<f32>(315f, -1000f, 694f), -878f, -1i), Struct_1(vec3<u32>(79215u, 4294967295u, 54666u), vec3<f32>(544f, 1338f, 1009f), -1194f, 0i));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3() -> u32 {
    let var_0 = min(-u_input.c.xwz, firstTrailingBit(u_input.c.zzx));
    global1 = Struct_2(_wgslsmith_mult_vec4_u32(_wgslsmith_sub_vec4_u32(~vec4<u32>(global1.c.x, global1.c.x, global1.a.x, 25292u) & global1.a, _wgslsmith_clamp_vec4_u32(~global1.a, ~global1.a, abs(vec4<u32>(29416u, 4294967295u, 4294967295u, global1.e)))), vec4<u32>(select(15754u, ~global1.e, all(vec3<bool>(true, global1.d, false))), _wgslsmith_mod_u32(reverseBits(0u), 7777u), 6314u << ((global1.e & global1.c.x) % 32u), _wgslsmith_mod_u32(4294967295u, ~8453u))), all(select(vec2<bool>(!global1.b, !global1.b), vec2<bool>(true, !global1.d), vec2<bool>(global1.d, all(vec3<bool>(false, true, false))))), vec3<u32>(~(~global1.a.x), 14043u, ~0u), global1.b, ~(~_wgslsmith_div_u32(~12854u, _wgslsmith_sub_u32(global1.a.x, 1u))));
    var var_1 = global2[_wgslsmith_index_u32(~0u, 12u)];
    var_1 = Struct_1(var_1.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_1.c, var_1.c, -412f))))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.b.x, -100f, 121f)))))), var_1.c, u_input.c.x);
    global2 = array<Struct_1, 12>();
    return ~_wgslsmith_dot_vec2_u32(global1.a.xz, vec2<u32>(firstLeadingBit(24146u), max(global1.a.x, var_1.a.x)) & global1.c.xx);
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: Struct_1, arg_3: vec2<u32>) -> vec4<u32> {
    var var_0 = Struct_3(arg_3, ~u_input.c, select(~countOneBits(arg_0.a), ~(~arg_0.a | _wgslsmith_sub_vec3_u32(vec3<u32>(global1.a.x, arg_0.a.x, 31021u), vec3<u32>(11515u, 42693u, arg_3.x))), vec3<bool>(!(!global1.d), global1.e != arg_0.a.x, select(true, false, true))), global1.d);
    let var_1 = Struct_2(global1.a, all(select(!(!vec2<bool>(true, global1.d)), !vec2<bool>(global1.b, var_0.d), !vec2<bool>(false, global1.d))), vec3<u32>(_wgslsmith_add_u32(arg_3.x, arg_3.x), ~(~(~31604u)), 0u), any(!select(select(vec2<bool>(var_0.d, true), vec2<bool>(true, true), var_0.d), !vec2<bool>(false, var_0.d), var_0.d & global1.b)), ~_wgslsmith_clamp_u32(~abs(6099u), 48660u, ~(~var_0.a.x)));
    let var_2 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_1, -740f, -485f, arg_2.b.x), vec4<f32>(arg_1, arg_2.c, -259f, arg_1), vec4<bool>(true, global1.d, false, false))))))));
    var_0 = Struct_3(_wgslsmith_mult_vec2_u32(max(_wgslsmith_sub_vec2_u32(vec2<u32>(31070u, arg_2.a.x), arg_2.a.zy), global1.c.yx | arg_3) | _wgslsmith_mult_vec2_u32(reverseBits(vec2<u32>(arg_3.x, global1.a.x)), _wgslsmith_mod_vec2_u32(arg_0.a.yy, global1.a.xz)), _wgslsmith_div_vec2_u32(var_1.a.zz >> (vec2<u32>(10151u, arg_3.x) % vec2<u32>(32u)), vec2<u32>(0u, 0u)) >> (vec2<u32>(countOneBits(4294967295u), arg_2.a.x | arg_0.a.x) % vec2<u32>(32u))), reverseBits(vec4<i32>(15447i, var_0.b.x, ~select(arg_0.d, var_0.b.x, false), _wgslsmith_sub_i32(reverseBits(arg_2.d), ~(-1i)))), select(vec3<u32>(_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, arg_0.a.x, arg_3.x), vec3<u32>(4294967295u, 39637u, 40724u)), select(1u, 13626u, var_1.b)), ~_wgslsmith_clamp_u32(0u, var_0.c.x, global1.e), reverseBits(~arg_3.x)), firstTrailingBit(vec3<u32>(_wgslsmith_dot_vec2_u32(global1.c.zz, arg_0.a.yy), 42644u, ~arg_3.x)), vec3<bool>(true, all(vec3<bool>(false, true, var_0.d)), !any(vec2<bool>(var_1.d, true)))), all(vec4<bool>(!var_1.b, any(!vec3<bool>(true, false, var_1.b)), var_1.d, var_1.b)));
    var var_3 = arg_0.b.xz;
    return var_1.a;
}

fn func_2() -> Struct_3 {
    let var_0 = 1194f;
    let var_1 = abs(vec4<i32>(u_input.c.x, _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(max(vec3<i32>(u_input.c.x, -2147483647i, u_input.b), vec3<i32>(-36611i, u_input.b, u_input.b)), reverseBits(u_input.c.zzz)), vec3<i32>(-1i) * -u_input.a.zyy), 27109i, select(u_input.a.x, u_input.b, true)));
    global1 = Struct_2(func_4(global2[_wgslsmith_index_u32(_wgslsmith_div_u32(select(func_3(), global1.c.x, all(vec2<bool>(false, false))), _wgslsmith_mod_u32(_wgslsmith_mult_u32(43159u, global1.e), 7201u | global1.a.x)), 12u)], -995f, Struct_1(vec3<u32>(~0u, ~global1.a.x, countOneBits(1u)), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_0, var_0, var_0))))), _wgslsmith_f_op_f32(f32(-1f) * -1211f), 42139i & _wgslsmith_dot_vec4_i32(vec4<i32>(0i, 0i, -2147483647i, var_1.x), vec4<i32>(var_1.x, u_input.c.x, u_input.b, 0i))), global1.c.yz), !select(any(select(vec2<bool>(global1.b, true), vec2<bool>(false, global1.b), global1.b)), true, all(!vec3<bool>(global1.b, true, false))), abs(~vec3<u32>(min(global1.c.x, 4294967295u), 20339u, firstTrailingBit(global1.a.x))), global1.d, reverseBits(global1.a.x ^ _wgslsmith_dot_vec3_u32(~global1.c, abs(vec3<u32>(global1.e, global1.c.x, global1.c.x)))));
    let var_2 = firstTrailingBit(vec4<i32>(var_1.x, reverseBits(u_input.a.x), u_input.a.x, (2147483647i << (global1.c.x % 32u)) << (~global1.e % 32u)));
    global2 = array<Struct_1, 12>();
    return Struct_3(max(vec2<u32>(global1.a.x, select(global1.a.x, 1u, global1.b)) << (func_4(Struct_1(global1.c, vec3<f32>(var_0, 566f, -288f), var_0, 34382i), 1852f, global2[_wgslsmith_index_u32(1u, 12u)], ~vec2<u32>(global1.c.x, global1.e)).yy % vec2<u32>(32u)), max(_wgslsmith_add_vec2_u32(global1.a.yy, min(vec2<u32>(28740u, 32126u), global1.c.yx)), min(countOneBits(vec2<u32>(global1.c.x, 16400u)), ~vec2<u32>(global1.c.x, 0u)))), -(_wgslsmith_clamp_vec4_i32(abs(vec4<i32>(-38646i, u_input.c.x, -8137i, var_2.x)), ~vec4<i32>(var_2.x, var_2.x, -3659i, -2147483647i), abs(var_2)) >> (global1.a % vec4<u32>(32u))), ~(_wgslsmith_mod_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(global1.c.x, 23619u, global1.e), vec3<u32>(49798u, global1.a.x, global1.a.x)), ~vec3<u32>(4294967295u, global1.e, 90489u)) | vec3<u32>(global1.e, ~0u, 1u)), false);
}

fn func_5(arg_0: Struct_3) -> Struct_3 {
    global2 = array<Struct_1, 12>();
    var var_0 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global0[_wgslsmith_index_u32(~(global1.a.x & arg_0.c.x), 9u)] * _wgslsmith_f_op_vec2_f32(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(global1.e, arg_0.a.x), 9u)] + global0[_wgslsmith_index_u32(26206u, 9u)])) + global0[_wgslsmith_index_u32((~arg_0.a.x >> (~39104u % 32u)) & arg_0.a.x, 9u)]), vec2<f32>(1227f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -719f))), _wgslsmith_f_op_f32(f32(-1f) * -417f)))), true));
    let var_1 = Struct_2(~min(abs(max(global1.a, vec4<u32>(37766u, arg_0.a.x, arg_0.a.x, arg_0.a.x))), vec4<u32>(select(16616u, arg_0.c.x, global1.b), max(arg_0.a.x, 4294967295u), 1u, 31319u)), any(!select(!vec4<bool>(arg_0.d, global1.d, true, global1.b), select(vec4<bool>(arg_0.d, true, true, false), vec4<bool>(true, false, false, arg_0.d), vec4<bool>(global1.b, true, false, global1.d)), any(vec3<bool>(arg_0.d, global1.d, arg_0.d)))), (vec3<u32>(global1.c.x, global1.c.x, 17793u) ^ ~abs(global1.c)) >> (global1.c % vec3<u32>(32u)), global1.b, _wgslsmith_add_u32(1u, firstLeadingBit(~global1.a.x)));
    var var_2 = i32(-1i) * -((firstTrailingBit(u_input.b) << (~arg_0.a.x % 32u)) << (min(global1.a.x & global1.e, select(arg_0.a.x, var_1.c.x, false)) % 32u));
    var_2 = -_wgslsmith_div_i32(-(1i >> (global1.a.x % 32u)), _wgslsmith_mod_i32(-29209i, u_input.b));
    return func_2();
}

fn func_6(arg_0: u32, arg_1: Struct_3, arg_2: Struct_1, arg_3: vec3<u32>) -> Struct_2 {
    global2 = array<Struct_1, 12>();
    global0 = array<vec2<f32>, 9>();
    var var_0 = arg_2.b.x;
    var var_1 = any(vec2<bool>(arg_1.d, all(vec2<bool>(true, true))));
    let var_2 = false;
    return Struct_2(_wgslsmith_div_vec4_u32(global1.a, _wgslsmith_div_vec4_u32(~global1.a, vec4<u32>(4294967295u, ~4294967295u, arg_0 << (35908u % 32u), 4294967295u))), _wgslsmith_f_op_f32(exp2(arg_2.b.x)) != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_2.b.x)) * 510f) * _wgslsmith_f_op_f32(trunc(-277f))), _wgslsmith_mult_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(arg_0, global1.c.x >> (arg_0 % 32u), ~arg_2.a.x), arg_3), abs(vec3<u32>(~1u, ~arg_0, arg_2.a.x))), !func_5(arg_1).d, ~(~4294967295u));
}

fn func_7(arg_0: vec2<u32>, arg_1: bool, arg_2: vec2<u32>, arg_3: Struct_2) -> i32 {
    let var_0 = Struct_3(~arg_0, u_input.c, countOneBits(firstLeadingBit(~arg_3.c)), true);
    var var_1 = -2147483647i;
    var var_2 = var_0.b.x;
    let var_3 = vec2<u32>(global1.a.x, countOneBits(arg_0.x & 16128u) << (reverseBits(~global1.a.x) % 32u));
    let var_4 = vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -2371f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-301f)) + _wgslsmith_f_op_f32(-1000f * 1101f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(959f, -892f)) - _wgslsmith_div_f32(430f, -1828f))), true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1444f - _wgslsmith_f_op_f32(f32(-1f) * -474f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -121f)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1459f * 647f), -1000f, !arg_1)))), -474f, 1f);
    return reverseBits(i32(-1i) * -5425i);
}

fn func_1(arg_0: vec2<f32>, arg_1: i32) -> f32 {
    global2 = array<Struct_1, 12>();
    var var_0 = all(vec3<bool>(true, !(!global1.d), all(!vec2<bool>(global1.d, global1.d))));
    let var_1 = func_7(vec2<u32>(_wgslsmith_mod_u32(0u, _wgslsmith_mult_u32(global1.e, 0u)), reverseBits(global1.e)), false, _wgslsmith_div_vec2_u32(vec2<u32>(_wgslsmith_sub_u32(global1.c.x, global1.e), global1.a.x ^ global1.c.x), _wgslsmith_add_vec2_u32(~global1.a.zz, vec2<u32>(global1.c.x, global1.a.x))), func_6(0u, func_5(func_2()), global2[_wgslsmith_index_u32(~(~0u), 12u)], global1.a.wyx)) & _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.b, u_input.c.x) & vec2<i32>(u_input.b, -103568i), vec2<i32>(_wgslsmith_div_i32(u_input.b, -1i), -1i)), u_input.a.zy);
    global1 = func_6(abs(_wgslsmith_mult_u32(_wgslsmith_add_u32(global1.e, firstLeadingBit(18833u)), _wgslsmith_sub_u32(_wgslsmith_clamp_u32(55114u, global1.a.x, global1.e), _wgslsmith_add_u32(global1.c.x, 2131u)))), Struct_3(~_wgslsmith_add_vec2_u32(vec2<u32>(1u, global1.a.x), global1.a.ww), _wgslsmith_add_vec4_i32(vec4<i32>(arg_1, var_1, 25642i, var_1), _wgslsmith_mult_vec4_i32(vec4<i32>(1i, u_input.b, arg_1, 0i), u_input.a)) >> (global1.a % vec4<u32>(32u)), vec3<u32>(global1.a.x, 4294967295u, global1.a.x), false & global1.d), Struct_1(reverseBits(global1.c) >> (vec3<u32>(_wgslsmith_dot_vec4_u32(global1.a, global1.a), ~global1.e, 9440u) % vec3<u32>(32u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(810f, arg_0.x, arg_0.x), vec3<f32>(902f, -1322f, 401f), false)), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1909f, arg_0.x, 270f)))))), -379f, min(func_2().b.x, var_1 & _wgslsmith_mult_i32(var_1, 45399i))), abs(select(vec3<u32>(48497u << (global1.e % 32u), global1.e, 20129u >> (global1.a.x % 32u)), ~global1.a.zxz, any(!vec3<bool>(global1.b, false, global1.b)))));
    global2 = array<Struct_1, 12>();
    return _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(1000f, -743f)), -642f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(723f - arg_0.x)))), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -358f), arg_0.x), 1000f), any(select(select(vec4<bool>(true, global1.d, false, global1.b), vec4<bool>(false, global1.b, false, global1.d), vec4<bool>(global1.b, false, false, true)), !vec4<bool>(global1.b, true, global1.b, false), arg_0.x >= 1276f)) || false));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -55378i;
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-349f, -1496f))))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(-1956f, -872f))))) * _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1(global0[_wgslsmith_index_u32(global1.c.x, 9u)], u_input.c.x)), _wgslsmith_f_op_f32(-372f * -311f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1056f), _wgslsmith_f_op_f32(ceil(1093f))))))));
    let var_2 = _wgslsmith_div_f32(193f, var_1);
    var var_3 = Struct_2(vec4<u32>(global1.c.x, 36367u, global1.e, select(global1.e, firstTrailingBit(func_6(global1.e, Struct_3(global1.a.zy, vec4<i32>(49123i, -1i, 2147483647i, u_input.a.x), vec3<u32>(global1.a.x, 1u, global1.a.x), global1.b), Struct_1(vec3<u32>(41711u, global1.e, 4610u), vec3<f32>(1212f, var_1, -830f), var_2, 1i), global1.c).e), all(!vec2<bool>(global1.b, global1.b)))), any(vec4<bool>(func_6(func_2().c.x, func_2(), Struct_1(vec3<u32>(10023u, 40985u, global1.e), vec3<f32>(1038f, var_1, var_2), var_1, 43473i), _wgslsmith_div_vec3_u32(global1.c, global1.c)).d, global1.b, select(func_6(global1.a.x, Struct_3(global1.a.xz, u_input.a, vec3<u32>(global1.a.x, global1.c.x, global1.a.x), true), Struct_1(vec3<u32>(80105u, 4294967295u, 44005u), vec3<f32>(-638f, var_2, -1353f), var_2, 2147483647i), vec3<u32>(1u, global1.a.x, global1.e)).b, global1.d, true), false)), firstTrailingBit(_wgslsmith_mult_vec3_u32(vec3<u32>(global1.e, 10998u, 4294967295u), global1.c) << (vec3<u32>(4294967295u, 39451u, global1.c.x) % vec3<u32>(32u))) << (global1.a.yxx % vec3<u32>(32u)), false, firstLeadingBit(~_wgslsmith_div_u32(_wgslsmith_mult_u32(global1.e, 4294967295u), 29973u)));
    global1 = func_6(firstTrailingBit(36736u), func_2(), Struct_1(var_3.c, _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(-1202f - var_1), _wgslsmith_f_op_f32(func_1(global0[_wgslsmith_index_u32(var_3.a.x, 9u)], 33716i)), var_2))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-167f, var_1)))), -_wgslsmith_dot_vec3_i32(vec3<i32>(-44095i, u_input.b, -1i) | u_input.c.www, ~u_input.a.yzy)), var_3.a.xxw);
    let x = u_input.a;
    s_output = StorageBuffer(1u, _wgslsmith_f_op_f32(-var_2), ~(~(~vec2<u32>(global1.a.x, 28174u) ^ ~vec2<u32>(var_3.c.x, 56765u))), ~(~countOneBits(0i)));
}


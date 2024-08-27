struct Struct_1 {
    a: u32,
    b: vec3<u32>,
    c: vec3<f32>,
    d: vec3<u32>,
    e: u32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
}

struct Struct_4 {
    a: vec4<f32>,
}

struct Struct_5 {
    a: Struct_4,
    b: f32,
    c: u32,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: vec4<u32>,
    d: u32,
    e: vec3<u32>,
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

var<private> global0: array<Struct_3, 10> = array<Struct_3, 10>(Struct_3(Struct_1(0u, vec3<u32>(4294967295u, 0u, 77960u), vec3<f32>(-1000f, 2057f, -302f), vec3<u32>(24653u, 1u, 0u), 0u), 18098i), Struct_3(Struct_1(11935u, vec3<u32>(1u, 0u, 53361u), vec3<f32>(1383f, -840f, -237f), vec3<u32>(23233u, 1u, 26944u), 4294967295u), 1i), Struct_3(Struct_1(4294967295u, vec3<u32>(8048u, 2213u, 0u), vec3<f32>(-1000f, -117f, -812f), vec3<u32>(20275u, 4294967295u, 0u), 0u), i32(-2147483648)), Struct_3(Struct_1(4294967295u, vec3<u32>(4686u, 49249u, 3343u), vec3<f32>(1134f, -1546f, 526f), vec3<u32>(38498u, 51544u, 4294967295u), 4294967295u), 40923i), Struct_3(Struct_1(17164u, vec3<u32>(5224u, 50314u, 0u), vec3<f32>(169f, 478f, -1420f), vec3<u32>(1u, 19012u, 79008u), 4294967295u), i32(-2147483648)), Struct_3(Struct_1(0u, vec3<u32>(4294967295u, 1u, 1u), vec3<f32>(-1566f, -1623f, 266f), vec3<u32>(57358u, 17766u, 0u), 28156u), i32(-2147483648)), Struct_3(Struct_1(94113u, vec3<u32>(9998u, 5668u, 15948u), vec3<f32>(616f, -1000f, -838f), vec3<u32>(4294967295u, 4294967295u, 18905u), 4294967295u), i32(-2147483648)), Struct_3(Struct_1(16357u, vec3<u32>(93126u, 4294967295u, 9032u), vec3<f32>(-796f, -2392f, 261f), vec3<u32>(0u, 0u, 5049u), 0u), -14562i), Struct_3(Struct_1(1u, vec3<u32>(14597u, 0u, 34194u), vec3<f32>(988f, -1570f, -399f), vec3<u32>(4294967295u, 1u, 1u), 4294967295u), -16689i), Struct_3(Struct_1(1u, vec3<u32>(4294967295u, 12532u, 0u), vec3<f32>(1512f, 270f, 253f), vec3<u32>(1u, 17936u, 70974u), 30315u), 34492i));

var<private> global1: Struct_3 = Struct_3(Struct_1(20720u, vec3<u32>(12064u, 0u, 7858u), vec3<f32>(-1000f, -384f, 1234f), vec3<u32>(66734u, 1u, 4294967295u), 1u), 0i);

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_2(arg_0: vec3<i32>, arg_1: vec3<bool>, arg_2: vec2<u32>, arg_3: i32) -> bool {
    var var_0 = arg_1;
    let var_1 = _wgslsmith_sub_i32(~_wgslsmith_dot_vec2_i32(arg_0.zz, arg_0.zy), _wgslsmith_clamp_i32(_wgslsmith_mod_i32(_wgslsmith_mod_i32(firstTrailingBit(-70884i), arg_3), ~(-arg_0.x)), arg_3, _wgslsmith_dot_vec2_i32(~_wgslsmith_sub_vec2_i32(arg_0.xy, arg_0.yy), arg_0.xz)));
    var var_2 = max(_wgslsmith_mod_i32(arg_0.x, 1i), arg_0.x);
    var var_3 = Struct_3(Struct_1(_wgslsmith_div_u32(u_input.e.x, arg_2.x), countOneBits(~min(vec3<u32>(4294967295u, 36971u, 26869u), u_input.e)), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(step(global1.a.c, vec3<f32>(global1.a.c.x, 693f, global1.a.c.x))))), u_input.e, abs(14871u)), var_1);
    let var_4 = any(arg_1.xy);
    return !arg_1.x;
}

fn func_3() -> vec4<bool> {
    let var_0 = Struct_3(global1.a, global1.b);
    var var_1 = var_0.b;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0.a.c.x, _wgslsmith_div_f32(1471f, _wgslsmith_f_op_f32(global1.a.c.x + 888f))))));
    return vec4<bool>(global1.b > global1.b, global1.b <= -min(max(global1.b, var_0.b), 1i), true, true);
}

fn func_1(arg_0: i32, arg_1: Struct_3, arg_2: f32) -> vec4<i32> {
    var var_0 = firstLeadingBit(80889u);
    let var_1 = Struct_1(global1.a.e, u_input.b.zww, vec3<f32>(arg_1.a.c.x, 415f, 1087f), countOneBits(_wgslsmith_add_vec3_u32(global1.a.d, min(abs(vec3<u32>(arg_1.a.a, arg_1.a.a, 0u)), arg_1.a.b))), arg_1.a.b.x);
    var var_2 = !select(vec4<bool>(true, true, true, func_2(_wgslsmith_mult_vec3_i32(vec3<i32>(-1i, arg_1.b, -52503i), vec3<i32>(arg_0, -55146i, -1i)), vec3<bool>(false, false, true), firstLeadingBit(global1.a.b.zx), _wgslsmith_mult_i32(arg_1.b, arg_1.b))), vec4<bool>(true, any(vec4<bool>(false, true, true, false)), !(arg_1.b < arg_0), true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, all(vec3<bool>(true, false, true)), true), func_3()));
    var var_3 = Struct_1((select(_wgslsmith_mult_u32(22132u, u_input.b.x), arg_1.a.a, false) >> (~(~global1.a.a) % 32u)) & _wgslsmith_mod_u32(_wgslsmith_mod_u32(~u_input.b.x, _wgslsmith_clamp_u32(42377u, 16170u, 4294967295u)), arg_1.a.e), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.b.x, global1.a.e, var_1.b.x), _wgslsmith_clamp_vec3_u32(var_1.b, firstTrailingBit(_wgslsmith_mod_vec3_u32(arg_1.a.b, vec3<u32>(0u, global1.a.a, global1.a.a))), select(arg_1.a.b, ~arg_1.a.d, true))), _wgslsmith_f_op_vec3_f32(arg_1.a.c - vec3<f32>(_wgslsmith_f_op_f32(select(arg_2, 197f, !var_2.x)), _wgslsmith_f_op_f32(global1.a.c.x * _wgslsmith_f_op_f32(min(561f, arg_1.a.c.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-197f + var_1.c.x), _wgslsmith_f_op_f32(arg_2 - 317f)))), countOneBits(u_input.e), ~u_input.e.x);
    var_3 = global1.a;
    return vec4<i32>(arg_0, arg_1.b, arg_1.b, _wgslsmith_mult_i32(abs(arg_0), _wgslsmith_div_i32(_wgslsmith_add_i32(reverseBits(global1.b), arg_0), _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(-1i, 1i, 25389i), vec3<i32>(-17961i, global1.b, arg_1.b)), vec3<i32>(arg_0, arg_1.b, -2147483647i)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_3, 10>();
    var var_0 = min(~(-(~min(vec4<i32>(global1.b, global1.b, global1.b, global1.b), vec4<i32>(-12906i, -1i, 5825i, 4144i)))), ~(-func_1(global1.b ^ -20550i, Struct_3(global1.a, 2147483647i), global1.a.c.x)));
    var_0 = select(select(-_wgslsmith_add_vec4_i32(countOneBits(vec4<i32>(16587i, global1.b, var_0.x, global1.b)), vec4<i32>(2147483647i, -1i, -32674i, 7955i)), select(_wgslsmith_mult_vec4_i32(vec4<i32>(0i, var_0.x, -25204i, global1.b), select(vec4<i32>(-1i, var_0.x, -1i, global1.b), vec4<i32>(global1.b, 2147483647i, global1.b, var_0.x), false)), select(-vec4<i32>(global1.b, 20376i, 1i, -20694i), max(vec4<i32>(41831i, 604i, 1i, var_0.x), vec4<i32>(0i, -36404i, global1.b, -10814i)), all(vec3<bool>(true, true, false))), vec4<bool>(true, any(vec2<bool>(false, false)), true, global1.a.c.x > 561f)), vec4<bool>(true, true, true, true)), _wgslsmith_div_vec4_i32(select(vec4<i32>(~var_0.x, ~var_0.x, -2147483647i | global1.b, 1i), select(_wgslsmith_div_vec4_i32(vec4<i32>(global1.b, 0i, -1i, -45231i), vec4<i32>(var_0.x, var_0.x, global1.b, global1.b)), ~vec4<i32>(75318i, -3469i, global1.b, -3464i), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true)), select(vec4<i32>(1i, i32(-1i) * -2147483647i, var_0.x, func_1(global1.b, Struct_3(global1.a, -1i), 448f).x), _wgslsmith_mult_vec4_i32(vec4<i32>(2147483647i, var_0.x, -26430i, var_0.x), vec4<i32>(var_0.x, global1.b, var_0.x, var_0.x)) | select(vec4<i32>(var_0.x, 317i, 2147483647i, -43410i), vec4<i32>(global1.b, -2147483647i, var_0.x, global1.b), false), vec4<bool>(true, true, true, true))), true);
    var_0 = -_wgslsmith_clamp_vec4_i32(vec4<i32>(-global1.b & max(2147483647i, -4954i), _wgslsmith_add_i32(var_0.x, global1.b), i32(-1i) * -2774i, 10458i), abs(vec4<i32>(i32(-1i) * -1i, abs(var_0.x), _wgslsmith_dot_vec3_i32(vec3<i32>(var_0.x, -27370i, 0i), vec3<i32>(global1.b, 42730i, 0i)), -var_0.x)), vec4<i32>(var_0.x, abs(global1.b), var_0.x, 2147483647i));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c);
}


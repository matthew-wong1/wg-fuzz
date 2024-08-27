struct Struct_1 {
    a: i32,
    b: vec3<u32>,
    c: vec3<bool>,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: vec3<bool> = vec3<bool>(false, true, true);

var<private> global2: array<vec4<bool>, 29>;

var<private> global3: array<vec3<f32>, 31> = array<vec3<f32>, 31>(vec3<f32>(1265f, 783f, 1026f), vec3<f32>(-1000f, -1267f, 1290f), vec3<f32>(1012f, 271f, 1998f), vec3<f32>(-437f, 447f, 682f), vec3<f32>(-800f, -628f, -489f), vec3<f32>(-343f, -408f, 1000f), vec3<f32>(1952f, -150f, 419f), vec3<f32>(-1034f, 159f, 927f), vec3<f32>(545f, -754f, -334f), vec3<f32>(1392f, 308f, -453f), vec3<f32>(890f, 1000f, 460f), vec3<f32>(-1183f, 997f, -2158f), vec3<f32>(810f, -1000f, 1000f), vec3<f32>(-441f, -283f, 343f), vec3<f32>(286f, 833f, 581f), vec3<f32>(1332f, -1100f, -1098f), vec3<f32>(1000f, -853f, 137f), vec3<f32>(919f, -1171f, 1310f), vec3<f32>(-561f, -1667f, -1495f), vec3<f32>(-709f, -1692f, 2353f), vec3<f32>(540f, 730f, -1981f), vec3<f32>(-1403f, -2118f, 1710f), vec3<f32>(1475f, -316f, -135f), vec3<f32>(-484f, 1000f, 1000f), vec3<f32>(1000f, 273f, -1000f), vec3<f32>(-797f, 1000f, -1240f), vec3<f32>(-990f, 774f, 455f), vec3<f32>(-471f, 823f, 405f), vec3<f32>(1000f, 698f, -1327f), vec3<f32>(1000f, 1055f, 201f), vec3<f32>(482f, 402f, 916f));

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2() -> Struct_1 {
    var var_0 = global0.d.x;
    var_0 = 1u;
    let var_1 = abs(global0.d.yyy);
    var var_2 = Struct_1(~(~(~u_input.a.x)), vec3<u32>(1u, 29966u, abs(~(~global0.b.x))), !global0.c, firstTrailingBit(~vec4<u32>(global0.d.x, global0.b.x, var_1.x & 4294967295u, _wgslsmith_clamp_u32(0u, var_1.x, 0u))));
    return Struct_1(countOneBits(i32(-1i) * -u_input.a.x), var_1, select(vec3<bool>(true, ~global0.d.x != global0.b.x, true), select(vec3<bool>(any(global0.c), select(global0.c.x, true, true), true), !vec3<bool>(true, true, global1.x), var_2.c.x), global0.c), var_2.d);
}

fn func_3(arg_0: vec2<u32>, arg_1: vec2<u32>, arg_2: vec4<u32>, arg_3: Struct_1) -> Struct_1 {
    let var_0 = global2[_wgslsmith_index_u32(_wgslsmith_add_u32(~(~global0.d.x), 1u), 29u)];
    let var_1 = vec3<i32>(-4358i, _wgslsmith_clamp_i32(_wgslsmith_div_i32(-u_input.a.x & (global0.a | arg_3.a), global0.a), countOneBits(arg_3.a), select(_wgslsmith_dot_vec2_i32(u_input.a, vec2<i32>(u_input.a.x, 46511i)), ~(~arg_3.a), any(select(vec4<bool>(var_0.x, arg_3.c.x, global0.c.x, global0.c.x), global2[_wgslsmith_index_u32(0u, 29u)], global1.x)))), arg_3.a >> (_wgslsmith_div_u32(4294967295u, reverseBits(global0.b.x)) % 32u));
    return Struct_1(_wgslsmith_mod_i32(arg_3.a, var_1.x), vec3<u32>(global0.d.x, 1u, min(reverseBits(4294967295u), ~1u) | _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(arg_3.d.wwz, vec3<u32>(arg_1.x, global0.b.x, 0u)), select(arg_2.yww, vec3<u32>(arg_1.x, arg_1.x, global0.d.x), false))), !select(func_2().c, arg_3.c, func_2().c), vec4<u32>(abs(arg_3.b.x), _wgslsmith_mult_u32(firstTrailingBit(30980u), 4294967295u), global0.b.x, reverseBits(arg_3.b.x)));
}

fn func_1(arg_0: u32, arg_1: i32) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(731f * _wgslsmith_f_op_f32(f32(-1f) * -1739f));
    let var_1 = func_3(global0.b.xx, global0.d.wy, global0.d, func_2());
    var var_2 = -622i;
    var_2 = arg_1;
    global0 = Struct_1(arg_1, global0.b | vec3<u32>(arg_0, _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(arg_0, arg_0), vec2<u32>(global0.d.x, global0.b.x)), vec2<u32>(1u, var_1.d.x) << (var_1.b.xy % vec2<u32>(32u))), ~arg_0), func_3(countOneBits(global0.b.xx), vec2<u32>(~_wgslsmith_dot_vec3_u32(vec3<u32>(global0.b.x, 1u, 90473u), var_1.b), ~(arg_0 | arg_0)), global0.d, Struct_1(-(~1i), max(global0.d.zzz, vec3<u32>(global0.d.x, arg_0, 5527u)), vec3<bool>(global1.x | global0.c.x, false, var_1.c.x), ~var_1.d)).c, global0.d);
    return func_3(global0.d.yy, _wgslsmith_div_vec2_u32(vec2<u32>(1u, _wgslsmith_dot_vec2_u32(var_1.d.zw, func_2().b.zx)), ~(~_wgslsmith_clamp_vec2_u32(global0.d.yw, var_1.d.wy, vec2<u32>(1u, 0u)))), global0.d, Struct_1(1i, global0.b & var_1.d.wzw, vec3<bool>(false, !var_1.c.x, true), min(~vec4<u32>(var_1.b.x, arg_0, var_1.b.x, 24699u), abs(~vec4<u32>(42928u, 1u, global0.b.x, 62983u)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1(global0.b.x, _wgslsmith_add_i32(~5333i, firstTrailingBit(firstTrailingBit(24657i))));
    let var_0 = func_3(~(~(~(~global0.b.zz))), global0.b.yx, vec4<u32>(func_1(_wgslsmith_div_u32(_wgslsmith_mod_u32(0u, 14093u), ~global0.d.x), ~u_input.a.x).b.x, 41545u, ~(~(~global0.d.x)), _wgslsmith_mult_u32(global0.d.x, global0.d.x)), func_3(~abs(func_3(vec2<u32>(4294967295u, 28560u), vec2<u32>(0u, 4294967295u), vec4<u32>(10785u, global0.b.x, global0.b.x, 6789u), Struct_1(global0.a, global0.b, vec3<bool>(global1.x, true, true), global0.d)).d.xy), vec2<u32>(4294967295u, 45994u), _wgslsmith_sub_vec4_u32(_wgslsmith_mult_vec4_u32(min(vec4<u32>(global0.d.x, global0.d.x, global0.d.x, 51436u), global0.d), global0.d), ~(~global0.d)), Struct_1(func_2().a, vec3<u32>(global0.b.x, global0.b.x | 4294967295u, global0.d.x), vec3<bool>(global1.x | true, any(vec2<bool>(global1.x, global0.c.x)), func_1(0u, u_input.a.x).c.x), global0.d))).c;
    var var_1 = !(!global0.c);
    let var_2 = func_2();
    global2 = array<vec4<bool>, 29>();
    let var_3 = var_2;
    global0 = func_1(~(31843u & var_3.d.x), _wgslsmith_mult_i32(1966i, func_2().a));
    let var_4 = ~(~var_2.d.zzx);
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mod_vec4_u32(_wgslsmith_div_vec4_u32(var_3.d, vec4<u32>(845u, 15607u, 0u, 34553u)), ~(~var_2.d)), func_1(var_3.b.x & 34403u, -2147483647i & (13336i ^ var_3.a)).d.xyz ^ vec3<u32>(~_wgslsmith_clamp_u32(global0.d.x, 4294967295u, global0.b.x), var_2.b.x, 0u));
}


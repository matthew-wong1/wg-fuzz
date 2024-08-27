struct Struct_1 {
    a: vec4<f32>,
    b: vec3<bool>,
    c: f32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: vec4<bool>,
    d: f32,
    e: vec3<bool>,
}

struct Struct_3 {
    a: i32,
    b: i32,
}

struct Struct_4 {
    a: vec4<bool>,
}

struct Struct_5 {
    a: Struct_2,
    b: bool,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec4<f32>,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<Struct_2, 14>;

var<private> global2: array<vec3<f32>, 29> = array<vec3<f32>, 29>(vec3<f32>(-224f, 1171f, -420f), vec3<f32>(135f, -105f, 533f), vec3<f32>(383f, -927f, 600f), vec3<f32>(1000f, 465f, -576f), vec3<f32>(848f, -378f, -1062f), vec3<f32>(975f, 830f, 210f), vec3<f32>(-720f, -1133f, 1000f), vec3<f32>(-858f, -229f, 261f), vec3<f32>(1745f, -221f, 971f), vec3<f32>(1960f, 228f, -1000f), vec3<f32>(-1461f, 1445f, 542f), vec3<f32>(-618f, 980f, -1342f), vec3<f32>(-673f, -874f, 292f), vec3<f32>(-619f, -967f, -1067f), vec3<f32>(341f, -503f, -1000f), vec3<f32>(-1041f, -1000f, -1863f), vec3<f32>(-437f, 1901f, -1000f), vec3<f32>(318f, 286f, -834f), vec3<f32>(-1696f, -263f, 292f), vec3<f32>(1232f, -1393f, -543f), vec3<f32>(-218f, -1087f, -1174f), vec3<f32>(168f, -633f, 518f), vec3<f32>(-1032f, -1165f, -1668f), vec3<f32>(-589f, 519f, 277f), vec3<f32>(-329f, 487f, -360f), vec3<f32>(-929f, -224f, -1001f), vec3<f32>(891f, -920f, 113f), vec3<f32>(539f, -459f, 1961f), vec3<f32>(-215f, 1919f, -717f));

var<private> global3: vec3<i32>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_2(arg_0: Struct_3, arg_1: bool) -> bool {
    var var_0 = global0.d;
    var var_1 = Struct_4(vec4<bool>(!(!(u_input.d < 0i)), global0.c.x, global0.d > -209f, global0.b.b.x));
    global2 = array<vec3<f32>, 29>();
    return var_1.a.x;
}

fn func_3(arg_0: i32, arg_1: u32, arg_2: vec3<bool>, arg_3: vec2<bool>) -> Struct_3 {
    let var_0 = arg_0;
    let var_1 = 10506u;
    let var_2 = global0.c;
    var var_3 = ~countOneBits(u_input.b.xw);
    var var_4 = Struct_4(global0.c);
    return Struct_3(global3.x, 15675i);
}

fn func_1(arg_0: Struct_3, arg_1: vec4<f32>, arg_2: vec2<bool>, arg_3: vec4<u32>) -> vec3<u32> {
    let var_0 = func_3(-abs(~_wgslsmith_mod_i32(-1i, arg_0.b)), ~arg_3.x, !global0.c.yzy, select(vec2<bool>(func_2(arg_0, global0.e.x), true), arg_2, arg_2));
    var var_1 = Struct_5(Struct_2(u_input.b.x, global0.b, vec4<bool>(arg_2.x, !global0.c.x, global0.e.x, all(select(global0.c.wxz, global0.c.zwz, arg_2.x))), arg_1.x, !vec3<bool>(false, arg_2.x | arg_2.x, !global0.c.x)), select(all(vec3<bool>(true, arg_2.x, false)), all(vec2<bool>(global0.b.a.x < global0.b.c, arg_2.x)), !(!(false & global0.c.x))), _wgslsmith_clamp_vec2_i32(global3.xy, vec2<i32>(firstTrailingBit(global3.x), _wgslsmith_mult_i32(77751i, arg_0.b)) >> (vec2<u32>(~0u, 40124u) % vec2<u32>(32u)), (min(vec2<i32>(1i, arg_0.b), vec2<i32>(-8455i, 0i)) >> (u_input.b.ww % vec2<u32>(32u))) | (-vec2<i32>(u_input.c, -66416i) >> (~arg_3.ww % vec2<u32>(32u)))));
    let var_2 = reverseBits(~_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.c, _wgslsmith_dot_vec4_i32(vec4<i32>(var_1.c.x, 0i, var_1.c.x, arg_0.a), vec4<i32>(455i, -2147483647i, global3.x, arg_0.b)), abs(-1i), ~u_input.c), min(-vec4<i32>(global3.x, 1i, 2147483647i, var_1.c.x), ~vec4<i32>(arg_0.a, var_0.a, -2147483647i, u_input.d))));
    global3 = vec3<i32>(var_2.x ^ -7528i, select(10551i, _wgslsmith_add_i32(-8376i, u_input.d), true) | _wgslsmith_mult_i32(24941i, _wgslsmith_div_i32(u_input.d, global3.x)), -2147483647i) >> (vec3<u32>(76693u, arg_3.x, ~((arg_3.x | 10357u) & firstLeadingBit(38507u))) % vec3<u32>(32u));
    let var_3 = reverseBits(arg_3);
    return min(vec3<u32>(0u, 28978u, _wgslsmith_clamp_u32(~arg_3.x, _wgslsmith_dot_vec2_u32(var_3.wx, select(u_input.b.ww, vec2<u32>(22352u, var_3.x), vec2<bool>(false, arg_2.x))), _wgslsmith_div_u32(4294967295u, 4294967295u) ^ u_input.b.x)), ~vec3<u32>(arg_3.x, u_input.a, 4294967295u) | (select(vec3<u32>(1u, u_input.b.x, 4294967295u), vec3<u32>(1u, 4294967295u, 1u) >> (vec3<u32>(u_input.a, 0u, arg_3.x) % vec3<u32>(32u)), any(arg_2)) >> (~u_input.b.zwy % vec3<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mult_vec3_u32(_wgslsmith_add_vec3_u32(~_wgslsmith_mult_vec3_u32(u_input.b.yyy, u_input.b.yyw), min(vec3<u32>(1u, 31715u, u_input.a), func_1(Struct_3(global3.x, 16984i), global0.b.a, vec2<bool>(global0.e.x, false), u_input.b))), firstTrailingBit(select(u_input.b.zzw << (u_input.b.wyw % vec3<u32>(32u)), _wgslsmith_clamp_vec3_u32(vec3<u32>(0u, u_input.b.x, u_input.a), vec3<u32>(u_input.b.x, u_input.a, 63370u), vec3<u32>(u_input.a, 82264u, 4294967295u)), !global0.b.b))) >> (u_input.b.wwy % vec3<u32>(32u));
    global1 = array<Struct_2, 14>();
    global0 = Struct_2(global0.a >> (firstLeadingBit(max(~8757u, abs(1u))) % 32u), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(global0.b.a)))), global0.b.b, -734f), global0.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.b.c + global0.d)), vec3<bool>(global0.b.a.x <= -2852f, !global0.c.x, true));
    global0 = global1[_wgslsmith_index_u32(global0.a, 14u)];
    let var_1 = all(vec2<bool>(false, true));
    global1 = array<Struct_2, 14>();
    let var_2 = global0.b;
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.c, global3.x, u_input.c >> (var_0.x % 32u)), vec3<i32>(u_input.c, firstLeadingBit(global3.x), _wgslsmith_mult_i32(0i, global3.x))), _wgslsmith_dot_vec4_u32(firstTrailingBit(firstLeadingBit(vec4<u32>(u_input.a, var_0.x, 4294967295u, 5087u))), _wgslsmith_clamp_vec4_u32(abs(u_input.b), u_input.b, abs(vec4<u32>(var_0.x, 24930u, var_0.x, var_0.x)))) >> (22147u % 32u), global0.b.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(global0.b.c, -399f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(-1351f))))))), ~max(1i, u_input.c << (34813u % 32u)));
}


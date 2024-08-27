struct Struct_1 {
    a: vec4<f32>,
    b: vec3<f32>,
    c: vec2<i32>,
    d: bool,
    e: vec2<i32>,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct Struct_3 {
    a: bool,
    b: bool,
    c: vec2<i32>,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_1,
    c: u32,
}

struct Struct_5 {
    a: vec4<f32>,
    b: vec4<bool>,
    c: Struct_3,
    d: Struct_2,
    e: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: vec3<i32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec4<i32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 20> = array<Struct_2, 20>(Struct_2(vec2<u32>(4294967295u, 0u)), Struct_2(vec2<u32>(8026u, 4294967295u)), Struct_2(vec2<u32>(84527u, 1u)), Struct_2(vec2<u32>(0u, 19021u)), Struct_2(vec2<u32>(47107u, 0u)), Struct_2(vec2<u32>(25908u, 44501u)), Struct_2(vec2<u32>(93481u, 34146u)), Struct_2(vec2<u32>(4294967295u, 20822u)), Struct_2(vec2<u32>(1u, 0u)), Struct_2(vec2<u32>(39415u, 0u)), Struct_2(vec2<u32>(46863u, 17619u)), Struct_2(vec2<u32>(1u, 43851u)), Struct_2(vec2<u32>(4294967295u, 1u)), Struct_2(vec2<u32>(39782u, 4294967295u)), Struct_2(vec2<u32>(1u, 4294967295u)), Struct_2(vec2<u32>(0u, 0u)), Struct_2(vec2<u32>(8493u, 35560u)), Struct_2(vec2<u32>(4294967295u, 40463u)), Struct_2(vec2<u32>(77478u, 0u)), Struct_2(vec2<u32>(29592u, 1u)));

var<private> global1: Struct_5;

var<private> global2: u32;

var<private> global3: array<u32, 5>;

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_2(arg_0: Struct_4) -> vec2<i32> {
    global1 = Struct_5(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(global1.a * arg_0.b.a), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(arg_0.b.a, global1.a)), vec4<f32>(global1.e, global1.e, global1.e, -159f))), !vec4<bool>(any(vec4<bool>(false, global1.b.x, false, false)), !select(false, arg_0.b.d, false), true, !any(vec3<bool>(arg_0.b.d, false, global1.b.x))), Struct_3(-abs(u_input.c.x) <= abs(~arg_0.b.e.x), (!arg_0.b.d | global1.c.b) | !(global1.d.a.x <= global1.d.a.x), min(-(~u_input.c.xy), -_wgslsmith_mod_vec2_i32(global1.c.c, vec2<i32>(arg_0.b.e.x, 632i)))), global1.d, _wgslsmith_div_f32(1069f, arg_0.b.b.x));
    let var_0 = global1.c.a;
    let var_1 = arg_0;
    var var_2 = u_input.c;
    let var_3 = global1.a.yx;
    return vec2<i32>(~countOneBits(global1.c.c.x), select(firstLeadingBit(var_1.b.e.x << (50433u % 32u)) | ~u_input.c.x, firstLeadingBit(0i) & -(~var_1.b.e.x), !any(global1.b.yw)));
}

fn func_3(arg_0: u32, arg_1: vec4<bool>, arg_2: Struct_1) -> Struct_2 {
    global0 = array<Struct_2, 20>();
    let var_0 = global1.c;
    global3 = array<u32, 5>();
    return Struct_2(_wgslsmith_clamp_vec2_u32(global1.d.a, u_input.d, vec2<u32>(arg_0, 51375u)));
}

fn func_1(arg_0: vec2<f32>, arg_1: vec3<i32>, arg_2: vec3<bool>, arg_3: vec4<f32>) -> i32 {
    let var_0 = u_input.c.x;
    var var_1 = _wgslsmith_dot_vec4_u32(~(~(~_wgslsmith_mult_vec4_u32(vec4<u32>(global1.d.a.x, 9106u, 4294967295u, 1u), vec4<u32>(global1.d.a.x, 3759u, 4294967295u, 4294967295u)))), vec4<u32>(abs(~global1.d.a.x), u_input.a.x, 1u, 41626u));
    global2 = _wgslsmith_div_u32(u_input.d.x, ~u_input.b.x);
    var_1 = 0u;
    let var_2 = Struct_4(func_3(1u, global1.b, Struct_1(_wgslsmith_f_op_vec4_f32(arg_3 * global1.a), _wgslsmith_f_op_vec3_f32(round(arg_3.yxx)), u_input.c.zx, false, func_2(Struct_4(Struct_2(u_input.b), Struct_1(arg_3, global1.a.xzz, vec2<i32>(arg_1.x, -6860i), false, vec2<i32>(10657i, 2147483647i)), 1u)))), Struct_1(vec4<f32>(-651f, arg_3.x, 869f, arg_0.x), _wgslsmith_f_op_vec3_f32(arg_3.xwy * _wgslsmith_f_op_vec3_f32(global1.a.zxw + _wgslsmith_f_op_vec3_f32(-global1.a.wyy))), vec2<i32>(countOneBits(arg_1.x) & global1.c.c.x, ~2147483647i), select(true | (-1177f == global1.e), arg_2.x == !arg_2.x, true), ~vec2<i32>(countOneBits(var_0), u_input.c.x)), max(global3[_wgslsmith_index_u32(~func_3(4294967295u, global1.b, Struct_1(vec4<f32>(509f, global1.a.x, 1000f, arg_3.x), vec3<f32>(global1.a.x, 2114f, 1253f), arg_1.zy, global1.b.x, vec2<i32>(global1.c.c.x, arg_1.x))).a.x, 5u)], _wgslsmith_mult_u32(reverseBits(0u) | func_3(global3[_wgslsmith_index_u32(1u, 5u)], vec4<bool>(global1.c.a, true, global1.c.a, global1.b.x), Struct_1(vec4<f32>(arg_3.x, -610f, -269f, -1263f), global1.a.zyw, global1.c.c, arg_2.x, vec2<i32>(u_input.c.x, -1i))).a.x, ~global1.d.a.x)));
    return -1i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1.a.x;
    global1 = Struct_5(vec4<f32>(global1.e, -1716f, _wgslsmith_f_op_f32(f32(-1f) * -501f), global1.e), global1.b, Struct_3(!global1.b.x, false, ~vec2<i32>(func_1(global1.a.xx, vec3<i32>(-27500i, 45046i, u_input.c.x), vec3<bool>(true, false, global1.b.x), vec4<f32>(887f, 1184f, 150f, global1.e)), -2147483647i)), func_3(~(114212u & (46079u | global3[_wgslsmith_index_u32(u_input.b.x, 5u)])), !global1.b, Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global1.a) * _wgslsmith_div_vec4_f32(global1.a, global1.a)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1021f, 215f, 129f))), vec2<i32>(-24157i >> (1u % 32u), -u_input.c.x), !select(false, false, true), firstTrailingBit(u_input.c.xx | vec2<i32>(14346i, 36711i)))), global1.a.x);
    let var_1 = all(select(vec3<bool>(global1.c.b, false, any(global1.b.yz)), global1.b.yxy, !all(global1.b.zx)));
    let var_2 = global1.e;
    global2 = countOneBits(_wgslsmith_div_u32(global3[_wgslsmith_index_u32(0u, 5u)], 4294967295u));
    var_0 = _wgslsmith_f_op_f32(global1.e * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-1091f, _wgslsmith_f_op_f32(962f + global1.a.x))))));
    let var_3 = Struct_4(func_3(~19421u, vec4<bool>(select(false, true && global1.c.b, true), var_1 && false, !(!global1.c.a), any(global1.b)), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(global1.a))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(256f, global1.a.x, 947f)), select(_wgslsmith_mult_vec2_i32(vec2<i32>(20065i, 38562i), vec2<i32>(u_input.c.x, u_input.c.x)), ~vec2<i32>(-2147483647i, -1i), vec2<bool>(true, true)), true, u_input.c.zz)), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global1.a)), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_div_f32(-222f, 946f), global1.a.x, 1871f))), vec2<i32>(_wgslsmith_mod_i32(-u_input.c.x, global1.c.c.x), u_input.c.x << (global3[_wgslsmith_index_u32(abs(1u), 5u)] % 32u)), all(select(select(vec3<bool>(var_1, false, global1.b.x), vec3<bool>(var_1, global1.c.b, global1.b.x), false), global1.b.yyy, select(false, global1.c.b, false))), _wgslsmith_add_vec2_i32(u_input.c.yy, abs(u_input.c.zz))), ~(~_wgslsmith_sub_u32(global3[_wgslsmith_index_u32(abs(u_input.a.x), 5u)], u_input.a.x & global3[_wgslsmith_index_u32(u_input.b.x, 5u)])));
    let x = u_input.a;
    s_output = StorageBuffer(var_3.c, _wgslsmith_dot_vec2_u32(~(~vec2<u32>(17410u, global3[_wgslsmith_index_u32(0u, 5u)])), ~firstTrailingBit(vec2<u32>(global1.d.a.x, 95496u))) >> (_wgslsmith_mult_u32(_wgslsmith_mult_u32(var_3.a.a.x, ~10269u), var_3.c) % 32u), _wgslsmith_div_vec4_i32(-vec4<i32>(1801i, func_2(Struct_4(Struct_2(var_3.a.a), Struct_1(vec4<f32>(1619f, 1140f, global1.a.x, var_3.b.b.x), vec3<f32>(var_3.b.b.x, global1.e, var_3.b.b.x), vec2<i32>(-964i, 2147483647i), var_1, u_input.c.xz), global1.d.a.x)).x, -2147483647i, ~u_input.c.x), abs(reverseBits(vec4<i32>(u_input.c.x, 16197i, var_3.b.c.x, var_3.b.e.x))) ^ vec4<i32>(i32(-1i) * -12165i, -global1.c.c.x, 0i, _wgslsmith_mult_i32(1i, u_input.c.x))), abs(abs(vec4<u32>(abs(u_input.a.x), ~77171u, 1u, reverseBits(78366u)))));
}


struct Struct_1 {
    a: vec4<u32>,
    b: vec2<f32>,
    c: u32,
    d: vec4<f32>,
    e: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
    d: vec2<f32>,
    e: vec3<bool>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec2<i32>,
    c: Struct_1,
    d: i32,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: vec4<i32>,
    d: vec3<i32>,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec4<u32>,
    d: vec2<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 13>;

var<private> global1: Struct_1;

var<private> global2: vec3<f32>;

var<private> global3: Struct_2 = Struct_2(Struct_1(vec4<u32>(10694u, 1u, 28276u, 42089u), vec2<f32>(-1533f, 435f), 17455u, vec4<f32>(-1000f, -1000f, -402f, -2322f), vec3<bool>(false, true, true)), Struct_1(vec4<u32>(4294967295u, 35318u, 26722u, 50623u), vec2<f32>(1024f, -1157f), 0u, vec4<f32>(1851f, 752f, -238f, 2046f), vec3<bool>(true, false, true)), 4294967295u, vec2<f32>(1001f, 804f), vec3<bool>(true, true, true));

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> u32 {
    global0 = array<vec2<bool>, 13>();
    let var_0 = u_input.e;
    let var_1 = Struct_1(_wgslsmith_mult_vec4_u32(vec4<u32>(12905u, ~abs(global1.c), 1u, ~abs(1u)), global3.b.a), _wgslsmith_f_op_vec2_f32(vec2<f32>(-446f, -253f) + vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -791f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.x - -886f)))), ~global1.a.x, global1.d, select(vec3<bool>(!(!global3.b.e.x), 4294967295u <= global3.c, any(!global3.e.yy)), !vec3<bool>(global1.e.x, all(global3.a.e), global1.b.x == -844f), global3.a.e.x));
    let var_2 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.d.x) * _wgslsmith_f_op_f32(trunc(var_1.d.x)))))));
    let var_3 = ~var_1.a.xww;
    return 1u;
}

fn func_2(arg_0: bool) -> Struct_1 {
    var var_0 = u_input.e;
    let var_1 = ~func_3();
    var var_2 = Struct_1(vec4<u32>(902u, ~_wgslsmith_sub_u32(4294967295u, _wgslsmith_div_u32(var_1, 37053u)), ~_wgslsmith_mult_u32(firstLeadingBit(4294967295u), abs(57869u)), countOneBits(global1.c)), vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.x + global3.a.b.x) + -1693f))), _wgslsmith_f_op_f32(ceil(-1000f))), 36102u, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global1.d * vec4<f32>(3176f, 1125f, 2299f, global1.b.x))))) + vec4<f32>(_wgslsmith_f_op_f32(global2.x - _wgslsmith_f_op_f32(max(725f, global1.b.x))), -566f, -1462f, _wgslsmith_f_op_f32(round(1000f)))), global3.a.e);
    var var_3 = 28544i;
    let var_4 = u_input.c ^ _wgslsmith_sub_vec4_i32(u_input.c, -firstTrailingBit(u_input.c));
    return global3.a;
}

fn func_1() -> vec2<u32> {
    global3 = Struct_2(global3.b, func_2(true), ~(u_input.b.x | global1.a.x), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1068f, -428f), vec2<f32>(global3.b.b.x, 1355f)))), global3.a.d.xx)), _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(963f, 1683f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1219f, global1.b.x))), global2.zy), true)), select(global1.e, global1.e, all(vec4<bool>(true, true, true, true)) || (true || !global1.e.x)));
    global1 = Struct_1(vec4<u32>(1u, ~global1.a.x, firstTrailingBit(_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(global3.a.a.zyz, u_input.b), 1u)), abs(1u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1332f, 207f))))), 1u, vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(-467f)), _wgslsmith_f_op_f32(global2.x * global3.b.b.x))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(-1727f)))), _wgslsmith_f_op_f32(select(global1.d.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1118f)) * -982f), false)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global3.a.d.x)))))), !vec3<bool>(!global3.b.e.x, global1.e.x, any(!vec4<bool>(global3.b.e.x, global1.e.x, true, false))));
    global1 = global3.a;
    let var_0 = global3.b.b.x;
    var var_1 = select(-42257i, u_input.e, func_2(!any(!vec4<bool>(global3.e.x, global3.e.x, true, global1.e.x))).e.x);
    return vec2<u32>(_wgslsmith_div_u32(_wgslsmith_div_u32(abs(_wgslsmith_add_u32(global1.a.x, u_input.b.x)), 33700u), _wgslsmith_mod_u32(~reverseBits(global1.c), ~_wgslsmith_dot_vec2_u32(global3.b.a.xy, vec2<u32>(global3.c, 4294967295u)))), abs(global1.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = reverseBits(1i | (_wgslsmith_add_i32(-2147483647i & u_input.d.x, u_input.e) ^ -3410i));
    var var_1 = false;
    global2 = global1.d.zyy;
    var var_2 = ~_wgslsmith_sub_vec3_u32(u_input.b, abs(_wgslsmith_clamp_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.a.x, 58801u, 1u), vec3<u32>(37310u, 28037u, 20482u)), _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a.x, 4103u, 10328u), u_input.b), u_input.b)));
    var_0 = 1i;
    global2 = _wgslsmith_f_op_vec3_f32(-global3.b.d.yyy);
    var var_3 = global3.b;
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.d.x + global2.x)))));
    var var_5 = select(~16649u, _wgslsmith_dot_vec2_u32(select(_wgslsmith_sub_vec2_u32(vec2<u32>(var_2.x, 1353u), vec2<u32>(4294967295u, var_2.x)), vec2<u32>(~var_3.c, global3.b.a.x & 4294967295u), var_3.e.x), func_1()), _wgslsmith_clamp_i32(select(u_input.e, i32(-1i) * -23282i, any(vec2<bool>(true, false))), u_input.d.x, -(~u_input.c.x)) > u_input.d.x);
    let x = u_input.a;
    s_output = StorageBuffer(~33244i, u_input.c, ~global3.a.a >> ((~(~vec4<u32>(16090u, var_3.a.x, u_input.a.x, var_3.a.x)) | reverseBits(select(var_3.a, vec4<u32>(global3.b.a.x, 4294967295u, global3.c, global1.c), vec4<bool>(true, false, global1.e.x, true)))) % vec4<u32>(32u)), vec2<i32>(-46209i, _wgslsmith_clamp_i32(-53929i, 1i, abs(-2147483647i))) << (vec2<u32>(_wgslsmith_dot_vec3_u32(global3.b.a.xww, ~vec3<u32>(4294967295u, global3.b.a.x, 26626u)), _wgslsmith_mod_u32(_wgslsmith_mod_u32(var_3.a.x, global3.a.a.x), var_2.x)) % vec2<u32>(32u)), -2147483647i);
}


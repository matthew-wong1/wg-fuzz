struct Struct_1 {
    a: vec2<i32>,
    b: bool,
    c: vec3<f32>,
    d: vec2<bool>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: f32,
    c: vec2<u32>,
    d: vec2<bool>,
    e: i32,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_1,
    c: f32,
    d: vec2<i32>,
    e: vec4<bool>,
}

struct Struct_5 {
    a: vec2<bool>,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: vec4<i32>,
    d: f32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 28>;

var<private> global1: vec3<u32> = vec3<u32>(12233u, 1u, 1u);

var<private> global2: array<vec3<bool>, 29> = array<vec3<bool>, 29>(vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(true, false, false));

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2(arg_0: u32) -> Struct_4 {
    var var_0 = Struct_2(u_input.b, Struct_1(~(-u_input.a.zz), ((global1.x | 63008u) > (4294967295u >> (0u % 32u))) & any(select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, true))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-234f, 1344f, 972f))))), vec2<bool>(true, true)));
    let var_1 = firstLeadingBit(-(~u_input.a));
    global0 = array<vec2<f32>, 28>();
    global0 = array<vec2<f32>, 28>();
    let var_2 = -var_0.a;
    return Struct_4(Struct_3(_wgslsmith_dot_vec2_u32(firstLeadingBit(global1.zy), _wgslsmith_div_vec2_u32(vec2<u32>(0u, arg_0), vec2<u32>(global1.x, 0u))) | _wgslsmith_sub_u32(select(1u, global1.x, var_0.b.b), _wgslsmith_sub_u32(arg_0, global1.x)), 595f, _wgslsmith_div_vec2_u32(firstLeadingBit(global1.xx | vec2<u32>(0u, arg_0)), global1.xx), var_0.b.d, _wgslsmith_sub_i32(~(u_input.a.x >> (arg_0 % 32u)), var_2)), var_0.b, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -481f))))), countOneBits(u_input.a.yx), !(!vec4<bool>(var_0.a == u_input.a.x, var_0.b.b & var_0.b.d.x, true, false)));
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_4, arg_2: Struct_1, arg_3: Struct_4) -> vec2<u32> {
    let var_0 = Struct_5(func_2(94462u).e.zy, Struct_2(~(-10259i), func_2(arg_1.a.a).b));
    var var_1 = func_2(global1.x);
    global1 = _wgslsmith_sub_vec3_u32(~select(vec3<u32>(var_1.a.a ^ global1.x, 5546u, select(var_1.a.c.x, global1.x, arg_2.b)), _wgslsmith_mod_vec3_u32(vec3<u32>(arg_3.a.a, 4294967295u, arg_3.a.a), vec3<u32>(global1.x, 4294967295u, 47365u)) | ~vec3<u32>(arg_3.a.a, arg_1.a.a, 0u), true), min(~(~(vec3<u32>(1u, 0u, 4294967295u) | vec3<u32>(arg_3.a.a, var_1.a.a, var_1.a.c.x))), vec3<u32>(~4294967295u, _wgslsmith_div_u32(~arg_1.a.c.x, 15147u), ~_wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.a.a, 45506u, 4945u), vec3<u32>(20309u, 0u, 0u)))));
    var_1 = Struct_4(func_2(arg_1.a.c.x).a, arg_3.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.c)), _wgslsmith_sub_vec2_i32(_wgslsmith_mod_vec2_i32(abs(vec2<i32>(var_1.d.x, 36663i)), ~vec2<i32>(-25231i, var_0.b.b.a.x)), _wgslsmith_sub_vec2_i32((vec2<i32>(-7511i, 0i) | var_0.b.b.a) ^ (var_0.b.b.a & vec2<i32>(arg_1.b.a.x, 0i)), abs(~u_input.a.zz))), arg_3.e);
    var_1 = Struct_4(Struct_3(countOneBits(firstTrailingBit(arg_3.a.a)), _wgslsmith_f_op_f32(abs(var_1.b.c.x)), _wgslsmith_mult_vec2_u32(abs(global1.zz & arg_1.a.c), var_1.a.c), var_1.a.d, _wgslsmith_sub_i32(select(~var_0.b.b.a.x, 1i, any(arg_3.e)), max(0i, -arg_3.d.x))), arg_1.b, 2450f, ~_wgslsmith_clamp_vec2_i32(_wgslsmith_clamp_vec2_i32(~vec2<i32>(arg_1.a.e, -9802i), max(vec2<i32>(var_0.b.b.a.x, -2147483647i), vec2<i32>(21345i, var_0.b.b.a.x)), var_1.b.a >> (vec2<u32>(110612u, arg_1.a.c.x) % vec2<u32>(32u))), (arg_1.d >> (arg_1.a.c % vec2<u32>(32u))) ^ (u_input.a.zx ^ vec2<i32>(0i, arg_1.a.e)), vec2<i32>(1678i, -7408i ^ arg_3.d.x)), !select(vec4<bool>(false, arg_1.a.d.x, !arg_2.d.x, var_0.b.b.b), !(!vec4<bool>(arg_3.e.x, false, false, arg_0.x)), all(!vec3<bool>(arg_3.e.x, false, true))));
    return ~var_1.a.c;
}

fn func_1(arg_0: i32) -> u32 {
    global1 = ~vec3<u32>(~global1.x, global1.x, _wgslsmith_dot_vec2_u32(global1.xz | global1.yy, func_3(select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, true)), func_2(global1.x), func_2(global1.x).b, Struct_4(Struct_3(global1.x, 442f, vec2<u32>(54386u, global1.x), vec2<bool>(true, false), -37142i), Struct_1(vec2<i32>(arg_0, u_input.a.x), false, vec3<f32>(-153f, -1000f, 1434f), vec2<bool>(true, false)), -466f, vec2<i32>(4783i, -1i), vec4<bool>(false, false, false, false)))));
    let var_0 = Struct_4(func_2(1u).a, func_2(~(firstLeadingBit(17305u) >> (global1.x % 32u))).b, 285f, vec2<i32>(abs(max(-51601i, reverseBits(arg_0))), firstLeadingBit(i32(-1i) * -1i)), func_2(~((4294967295u << (global1.x % 32u)) & reverseBits(68217u))).e);
    let var_1 = Struct_2(46345i, Struct_1(firstTrailingBit(-max(vec2<i32>(var_0.a.e, -2147483647i), vec2<i32>(0i, arg_0))), !select(false, var_0.b.b, !var_0.b.b), _wgslsmith_f_op_vec3_f32(var_0.b.c - vec3<f32>(_wgslsmith_f_op_f32(min(-329f, -403f)), _wgslsmith_f_op_f32(1225f - var_0.c), _wgslsmith_f_op_f32(919f - -469f))), func_2(105874u).a.d));
    global0 = array<vec2<f32>, 28>();
    global0 = array<vec2<f32>, 28>();
    return ~19021u;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec3<bool>, 29>();
    global2 = array<vec3<bool>, 29>();
    global1 = vec3<u32>(func_1(_wgslsmith_sub_i32(_wgslsmith_add_i32(-2147483647i, u_input.b), _wgslsmith_dot_vec2_i32(-u_input.a.xy, u_input.a.zy))), ~global1.x, _wgslsmith_dot_vec4_u32(select(_wgslsmith_clamp_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, global1.x, 1u, 665u), vec4<u32>(global1.x, 26727u, 4294967295u, 10294u)), abs(vec4<u32>(0u, global1.x, global1.x, global1.x)), vec4<u32>(global1.x, 33952u, global1.x, global1.x)), vec4<u32>(min(0u, global1.x), ~62918u, global1.x, global1.x ^ global1.x), true), ~_wgslsmith_sub_vec4_u32(vec4<u32>(global1.x, global1.x, 49055u, global1.x), vec4<u32>(global1.x, 1u, 0u, global1.x) ^ vec4<u32>(0u, global1.x, global1.x, 37334u))));
    global2 = array<vec3<bool>, 29>();
    let var_0 = !(!(!select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, false))));
    let var_1 = _wgslsmith_clamp_vec2_i32(u_input.a.xx, vec2<i32>(_wgslsmith_sub_i32(2147483647i, u_input.b | (12858i >> (global1.x % 32u))), -abs(_wgslsmith_div_i32(u_input.a.x, -9953i))), firstTrailingBit(_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a.x, u_input.a.x), reverseBits(vec2<i32>(-1i, 57901i))) >> (_wgslsmith_clamp_vec2_u32(vec2<u32>(global1.x, 4294967295u), vec2<u32>(4294967295u, global1.x), vec2<u32>(1u, 1u)) % vec2<u32>(32u))));
    global2 = array<vec3<bool>, 29>();
    global2 = array<vec3<bool>, 29>();
    let x = u_input.a;
    s_output = StorageBuffer(var_1.x, _wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-925f)) + 724f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-683f, -136f)) - _wgslsmith_f_op_f32(-175f - -477f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(209f * -874f)))), ~(vec4<i32>(u_input.b >> (global1.x % 32u), var_1.x, var_1.x, 12524i) | vec4<i32>(abs(60439i), u_input.a.x, -1i, ~u_input.b)), _wgslsmith_f_op_f32(select(1f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(148f, _wgslsmith_f_op_f32(f32(-1f) * -1200f), var_0.x == var_0.x)), 1000f)), var_0.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-491f - 107f))), -1545f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(893f)))))));
}


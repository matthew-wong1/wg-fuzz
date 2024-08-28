struct Struct_1 {
    a: bool,
    b: f32,
    c: vec3<u32>,
    d: vec2<i32>,
    e: i32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec4<u32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: u32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<f32>,
    c: i32,
    d: f32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 17> = array<Struct_2, 17>(Struct_2(vec2<f32>(-1295f, -304f), vec4<u32>(99849u, 0u, 109782u, 9733u), Struct_1(false, 603f, vec3<u32>(48881u, 1u, 4952u), vec2<i32>(1i, -1i), 30364i)), Struct_2(vec2<f32>(1394f, 279f), vec4<u32>(0u, 54433u, 47593u, 4294967295u), Struct_1(true, 1018f, vec3<u32>(39333u, 9384u, 4294967295u), vec2<i32>(991i, -26990i), 11493i)), Struct_2(vec2<f32>(-1032f, 1697f), vec4<u32>(0u, 52383u, 17095u, 29100u), Struct_1(true, -859f, vec3<u32>(799u, 22035u, 35789u), vec2<i32>(-1i, 9872i), -32987i)), Struct_2(vec2<f32>(1592f, -1000f), vec4<u32>(40529u, 1u, 3618u, 4294967295u), Struct_1(false, 428f, vec3<u32>(4294967295u, 4294967295u, 68393u), vec2<i32>(0i, 2147483647i), -1i)), Struct_2(vec2<f32>(-1417f, 531f), vec4<u32>(44441u, 134144u, 16739u, 21224u), Struct_1(true, -1000f, vec3<u32>(4294967295u, 51070u, 1u), vec2<i32>(1i, 2147483647i), 1i)), Struct_2(vec2<f32>(245f, -1106f), vec4<u32>(1u, 37879u, 1u, 4294967295u), Struct_1(true, 789f, vec3<u32>(4294967295u, 0u, 1u), vec2<i32>(-16099i, 0i), -1i)), Struct_2(vec2<f32>(-354f, -730f), vec4<u32>(1u, 5797u, 4294967295u, 49965u), Struct_1(false, -1000f, vec3<u32>(95189u, 19653u, 89726u), vec2<i32>(-18543i, 19473i), i32(-2147483648))), Struct_2(vec2<f32>(1850f, 1382f), vec4<u32>(1u, 29473u, 1u, 65065u), Struct_1(true, -676f, vec3<u32>(78620u, 30740u, 38455u), vec2<i32>(59985i, 20672i), 2147483647i)), Struct_2(vec2<f32>(-1276f, 704f), vec4<u32>(4294967295u, 41994u, 39257u, 1397u), Struct_1(true, 191f, vec3<u32>(1u, 4294967295u, 13162u), vec2<i32>(2147483647i, 2147483647i), -3373i)), Struct_2(vec2<f32>(1957f, 885f), vec4<u32>(1u, 10867u, 37853u, 4294967295u), Struct_1(false, 496f, vec3<u32>(1u, 1u, 4294967295u), vec2<i32>(-30115i, 2147483647i), 0i)), Struct_2(vec2<f32>(-715f, 191f), vec4<u32>(88653u, 13533u, 4294967295u, 12144u), Struct_1(false, 467f, vec3<u32>(29106u, 0u, 1u), vec2<i32>(7337i, -1615i), 1i)), Struct_2(vec2<f32>(1230f, -1000f), vec4<u32>(40106u, 1u, 11884u, 4294967295u), Struct_1(true, 185f, vec3<u32>(1395u, 56983u, 25013u), vec2<i32>(i32(-2147483648), 1i), -30701i)), Struct_2(vec2<f32>(-1571f, 1814f), vec4<u32>(1u, 16677u, 0u, 4778u), Struct_1(false, -2048f, vec3<u32>(21263u, 14853u, 122375u), vec2<i32>(0i, 1i), 1i)), Struct_2(vec2<f32>(1906f, -1278f), vec4<u32>(53786u, 45813u, 50257u, 4294967295u), Struct_1(true, 319f, vec3<u32>(89433u, 1u, 0u), vec2<i32>(-3941i, 0i), i32(-2147483648))), Struct_2(vec2<f32>(519f, 107f), vec4<u32>(46926u, 53530u, 44930u, 44442u), Struct_1(true, -1052f, vec3<u32>(4294967295u, 1u, 87910u), vec2<i32>(2147483647i, i32(-2147483648)), -47419i)), Struct_2(vec2<f32>(222f, 1000f), vec4<u32>(23167u, 4294967295u, 65037u, 1u), Struct_1(true, 1115f, vec3<u32>(5234u, 21301u, 1u), vec2<i32>(12540i, 16743i), 1i)), Struct_2(vec2<f32>(-511f, 639f), vec4<u32>(46868u, 27859u, 1u, 4294967295u), Struct_1(false, 1617f, vec3<u32>(0u, 1u, 4294967295u), vec2<i32>(-20109i, -4752i), 1i)));

var<private> global1: vec2<u32>;

var<private> global2: vec4<f32>;

var<private> global3: bool = true;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_1(arg_0: vec2<f32>, arg_1: f32, arg_2: Struct_1) -> vec2<i32> {
    return vec2<i32>(-1i, _wgslsmith_add_i32(arg_2.d.x, arg_2.e));
}

fn func_3(arg_0: Struct_2) -> vec2<i32> {
    var var_0 = _wgslsmith_div_vec4_f32(vec4<f32>(456f, _wgslsmith_f_op_f32(-1f), -367f, 635f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.c.b, -1222f, arg_0.a.x, -1036f)))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(124f, _wgslsmith_f_op_f32(103f + arg_0.a.x), -2160f, 290f))));
    var var_1 = 308f;
    let var_2 = arg_0.c;
    var var_3 = true;
    var_3 = arg_0.c.a;
    return vec2<i32>(2147483647i, firstLeadingBit(0i | var_2.e)) ^ var_2.d;
}

fn func_2(arg_0: Struct_1, arg_1: bool, arg_2: vec3<i32>) -> Struct_1 {
    let var_0 = 1u;
    global1 = (arg_0.c.xz & _wgslsmith_clamp_vec2_u32(u_input.a.zz, _wgslsmith_div_vec2_u32(u_input.d.zx, arg_0.c.yz), _wgslsmith_mult_vec2_u32(~vec2<u32>(arg_0.c.x, arg_0.c.x), vec2<u32>(1u, global1.x)))) ^ (~vec2<u32>(~30414u, var_0) ^ u_input.a.zz);
    var var_1 = func_3(global0[_wgslsmith_index_u32(4294967295u, 17u)]);
    global1 = ~vec2<u32>((93037u << (_wgslsmith_dot_vec3_u32(vec3<u32>(global1.x, 1u, global1.x), arg_0.c) % 32u)) | global1.x, countOneBits(select(4294967295u, _wgslsmith_sub_u32(u_input.b, 1u), true)));
    var_1 = ~select(select(vec2<i32>(abs(var_1.x), ~2147483647i), vec2<i32>(-11436i, arg_0.e), !arg_1), vec2<i32>(firstLeadingBit(arg_0.d.x), arg_2.x), any(select(!vec2<bool>(arg_1, true), vec2<bool>(true, true), false)));
    return arg_0;
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: Struct_1) -> Struct_2 {
    var var_0 = vec4<i32>(42799i, -(~arg_1.d.x), -((i32(-1i) * -21200i) | arg_1.e), arg_2.d.x);
    var var_1 = -323f;
    var var_2 = arg_1;
    let var_3 = true;
    let var_4 = u_input.d;
    return Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(trunc(global2.yw)))) * _wgslsmith_f_op_vec2_f32(step(vec2<f32>(1f, 1f), _wgslsmith_f_op_vec2_f32(-global2.yw))))), abs(select(vec4<u32>(34117u, firstLeadingBit(12067u), _wgslsmith_add_u32(var_2.c.x, 4294967295u), 4294967295u), ~(~vec4<u32>(arg_1.c.x, 4294967295u, arg_2.c.x, arg_2.c.x)), vec4<bool>(!arg_2.a, var_2.b < global2.x, all(vec4<bool>(var_3, true, arg_1.a, true)), !arg_1.a))), func_2(func_2(Struct_1(any(vec3<bool>(false, true, arg_2.a)), var_2.b, countOneBits(var_4.yxx), vec2<i32>(var_0.x, -30640i), 1i & var_0.x), true, select(vec3<i32>(var_2.d.x, -2147483647i, var_0.x) >> (arg_2.c % vec3<u32>(32u)), var_0.yzx, vec3<bool>(true, false, arg_1.a))), arg_2.a, -vec3<i32>(func_3(global0[_wgslsmith_index_u32(arg_1.c.x, 17u)]).x, ~var_2.d.x, _wgslsmith_div_i32(var_0.x, 0i))));
}

fn func_5(arg_0: Struct_2, arg_1: Struct_2, arg_2: f32) -> Struct_1 {
    var var_0 = _wgslsmith_mod_i32(0i, 1i);
    global3 = func_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, -1241f, -1441f, _wgslsmith_f_op_f32(max(1209f, arg_1.c.b)))) + vec4<f32>(_wgslsmith_f_op_f32(-arg_2), _wgslsmith_div_f32(arg_0.a.x, arg_1.c.b), _wgslsmith_f_op_f32(f32(-1f) * -380f), _wgslsmith_f_op_f32(abs(func_4(vec4<f32>(-1122f, 695f, arg_2, 1074f), arg_1.c, arg_0.c).c.b)))), Struct_1(arg_0.c.a, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_1.a.x)) - _wgslsmith_f_op_f32(-159f + arg_2)))), countOneBits(~(~vec3<u32>(arg_1.c.c.x, 66043u, 71358u))), vec2<i32>(reverseBits(abs(arg_1.c.e)), 18837i), -1i), Struct_1(func_4(vec4<f32>(-104f, global2.x, 1167f, -1069f), arg_1.c, Struct_1(arg_1.c.a, -394f, u_input.a, arg_0.c.d, arg_1.c.e)).c.d.x != _wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(arg_1.c.d, vec2<i32>(arg_0.c.d.x, 0i)), arg_1.c.d.x, arg_0.c.e), global2.x, arg_1.c.c >> (~arg_0.c.c % vec3<u32>(32u)), ~(~(-vec2<i32>(arg_1.c.e, arg_0.c.e))), max(-14453i, func_3(Struct_2(global2.yz, arg_0.b, Struct_1(false, arg_1.a.x, arg_1.b.xwz, arg_1.c.d, arg_0.c.d.x))).x))).c.a;
    let var_1 = vec2<bool>(arg_1.c.a, arg_1.c.a);
    var var_2 = func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(563f, _wgslsmith_f_op_f32(arg_0.c.b * -293f), _wgslsmith_f_op_f32(sign(arg_0.a.x)), _wgslsmith_f_op_f32(exp2(global2.x)))))), func_2(arg_1.c, false, min(-vec3<i32>(-1546i, arg_0.c.e, 8376i), abs(vec3<i32>(arg_0.c.d.x, 30536i, -2147483647i)))), func_2(arg_1.c, any(!vec3<bool>(true, var_1.x, false)), ~reverseBits(reverseBits(vec3<i32>(arg_0.c.d.x, arg_0.c.d.x, 1903i)))));
    var_0 = var_2.c.d.x;
    return Struct_1(true == any(!(!vec4<bool>(true, var_2.c.a, true, var_2.c.a))), -230f, u_input.a, vec2<i32>(abs(var_2.c.e >> (global1.x % 32u)), 1i >> (u_input.c % 32u)) >> (countOneBits(var_2.c.c.zx) % vec2<u32>(32u)), firstTrailingBit(select(countOneBits(_wgslsmith_div_i32(-2147483647i, arg_1.c.d.x)), arg_1.c.d.x, var_1.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<u32>(global1.x, 88u);
    var var_1 = global2.x;
    let var_2 = Struct_1(any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), any(vec4<bool>(true, false, true, true)))) || any(!select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, true))), _wgslsmith_f_op_f32(global2.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2022f) - -844f)), u_input.d.yxw, func_1(_wgslsmith_f_op_vec2_f32(min(global2.zw, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(global2.wx)), _wgslsmith_f_op_vec2_f32(vec2<f32>(145f, global2.x) + vec2<f32>(global2.x, -677f))))), global2.x, Struct_1(!all(vec4<bool>(false, true, true, false)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global2.x)) + global2.x), ~abs(vec3<u32>(4178u, global1.x, u_input.c)), ~(~vec2<i32>(1i, 44751i)), 1i)), ~(-2147483647i));
    var var_3 = Struct_2(global2.ww, vec4<u32>(global1.x, min(_wgslsmith_dot_vec2_u32(var_2.c.yx, vec2<u32>(4294967295u, 65805u)), var_0.x << (var_2.c.x % 32u)) ^ ~_wgslsmith_mult_u32(u_input.a.x, 1u), firstTrailingBit(~firstTrailingBit(u_input.c)), _wgslsmith_mult_u32(60296u, ~_wgslsmith_dot_vec4_u32(u_input.d, u_input.d))), func_5(Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global2.xx + global2.ww)), _wgslsmith_mult_vec4_u32(abs(u_input.d), u_input.d), Struct_1(false, 225f, vec3<u32>(var_2.c.x, 26498u, 4294967295u), _wgslsmith_add_vec2_i32(vec2<i32>(2147483647i, 0i), vec2<i32>(1i, var_2.e)), -2147483647i >> (var_2.c.x % 32u))), func_4(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, var_2.b, global2.x, -845f)), vec4<f32>(var_2.b, 218f, -172f, global2.x)), func_2(Struct_1(var_2.a, -749f, vec3<u32>(4294967295u, u_input.b, 0u), vec2<i32>(var_2.e, -1066i), var_2.e), var_2.a, ~vec3<i32>(var_2.d.x, -14196i, var_2.d.x)), var_2), global2.x));
    let var_4 = true;
    var var_5 = global0[_wgslsmith_index_u32(39754u, 17u)];
    var var_6 = vec2<bool>(false, var_3.c.a);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(var_5.a.x, _wgslsmith_f_op_f32(min(var_2.b, -286f))), _wgslsmith_f_op_vec3_f32(-global2.yxw), -7094i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1050f)))) - _wgslsmith_f_op_f32(round(-419f))), vec3<u32>(max((var_0.x << (var_2.c.x % 32u)) | ~4294967295u, var_5.b.x), _wgslsmith_sub_u32(0u, var_5.c.c.x) | 36968u, ~(~_wgslsmith_mult_u32(2308u, 54680u))));
}


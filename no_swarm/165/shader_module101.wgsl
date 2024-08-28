struct Struct_1 {
    a: u32,
    b: vec3<bool>,
    c: vec4<f32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: i32,
    d: f32,
    e: Struct_1,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: vec2<i32>,
    b: f32,
    c: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec3<i32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: i32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: vec3<f32>;

var<private> global2: vec3<bool> = vec3<bool>(true, false, true);

var<private> global3: array<vec4<i32>, 13>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_4, arg_2: Struct_4) -> bool {
    var var_0 = Struct_4(arg_1.a, -1000f, select(all(select(vec2<bool>(true, true), vec2<bool>(false, arg_2.c), arg_0.a > 8519u)), false, any(select(vec4<bool>(global2.x, arg_1.c, true, arg_2.c), select(vec4<bool>(arg_0.b.x, true, global2.x, false), vec4<bool>(true, false, true, false), true), vec4<bool>(true, true, true, true)))));
    let var_1 = _wgslsmith_dot_vec3_i32((countOneBits(select(u_input.a.wzx, vec3<i32>(u_input.c.x, var_0.a.x, -6473i), arg_0.b)) >> (~vec3<u32>(0u, 1u, 25470u) % vec3<u32>(32u))) >> ((vec3<u32>(_wgslsmith_mod_u32(0u, 4294967295u), 3005u, 1u) | ((vec3<u32>(arg_0.a, 4294967295u, arg_0.a) & vec3<u32>(arg_0.a, arg_0.a, 36473u)) | _wgslsmith_clamp_vec3_u32(vec3<u32>(1u, arg_0.a, arg_0.a), vec3<u32>(arg_0.a, 31092u, 54172u), vec3<u32>(1372u, 9827u, 17386u)))) % vec3<u32>(32u)), u_input.d);
    global2 = vec3<bool>(all(select(!vec4<bool>(true, arg_0.b.x, true, arg_0.b.x), select(!vec4<bool>(var_0.c, true, arg_2.c, arg_2.c), !vec4<bool>(arg_1.c, true, arg_0.b.x, arg_2.c), select(vec4<bool>(true, arg_2.c, true, arg_0.b.x), vec4<bool>(true, false, false, var_0.c), vec4<bool>(true, arg_1.c, var_0.c, true))), all(arg_0.b.xy))), true, var_0.c || global2.x);
    global3 = array<vec4<i32>, 13>();
    let var_2 = Struct_3(!(!(!any(vec4<bool>(global2.x, false, global2.x, var_0.c)))));
    return 2147483647i != ~(~_wgslsmith_div_i32(var_0.a.x, ~2147483647i));
}

fn func_2(arg_0: bool, arg_1: Struct_3, arg_2: f32, arg_3: Struct_2) -> bool {
    let var_0 = global3[_wgslsmith_index_u32(66518u, 13u)];
    var var_1 = arg_3.e.a;
    let var_2 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global1.x, -1816f))))))));
    let var_3 = u_input.c.x;
    global1 = _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(arg_2 * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2))), _wgslsmith_f_op_f32(f32(-1f) * -1770f), arg_3.b.c.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(var_2 - -1652f), _wgslsmith_f_op_f32(arg_2 + arg_3.d), _wgslsmith_f_op_f32(abs(151f))) + arg_3.b.c.xzw))));
    return (func_3(arg_3.b, Struct_4(max(u_input.d.yx, var_0.xy), _wgslsmith_f_op_f32(-arg_3.b.c.x), true), Struct_4(-var_0.zx, 2163f, arg_3.b.b.x)) & (_wgslsmith_mult_u32(~arg_3.e.a, 22763u) >= arg_3.e.a)) == false;
}

fn func_1() -> u32 {
    let var_0 = ~(~1u & _wgslsmith_clamp_u32(4294967295u, 0u, select(1227u, 1u, global2.x) & _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(1u, 1u))));
    let var_1 = vec3<bool>(global2.x, global2.x, select(true, func_2(true, Struct_3(false), 1000f, Struct_2(vec2<f32>(global1.x, -176f), Struct_1(0u, vec3<bool>(global2.x, false, global2.x), vec4<f32>(global1.x, global1.x, global1.x, 544f)), u_input.b, -875f, Struct_1(1u, vec3<bool>(true, true, true), vec4<f32>(-581f, global1.x, global1.x, global1.x)))) | (global2.x != false), !(var_0 < 21881u)) | true);
    var var_2 = Struct_4(vec2<i32>(u_input.a.x, u_input.c.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x)) + 934f), any(var_1));
    var var_3 = Struct_3(any(!(!select(vec4<bool>(var_1.x, var_1.x, true, global2.x), vec4<bool>(false, global2.x, var_1.x, true), global2.x))));
    var var_4 = var_2.c;
    return ~reverseBits(_wgslsmith_clamp_u32(4118u, _wgslsmith_sub_u32(4294967295u, _wgslsmith_sub_u32(var_0, var_0)), var_0));
}

fn func_4(arg_0: u32, arg_1: vec4<u32>, arg_2: vec3<i32>) -> Struct_1 {
    global0 = arg_1.x;
    global1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(435f, _wgslsmith_f_op_f32(f32(-1f) * -1242f), _wgslsmith_div_f32(global1.x, _wgslsmith_f_op_f32(max(global1.x, -134f))))) - _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global1.x, 136f, global1.x))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(1378f, global1.x, global1.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, global1.x, global1.x))))))));
    let var_0 = select(select(vec4<bool>(global2.x, all(!vec3<bool>(global2.x, global2.x, global2.x)), true, global2.x), vec4<bool>(arg_0 > 1668u, !global2.x, global2.x, global2.x || all(vec2<bool>(true, false))), !(!select(vec4<bool>(false, false, false, true), vec4<bool>(global2.x, true, true, global2.x), true))), select(vec4<bool>(false, arg_0 != (77592u | arg_1.x), true, func_2(global2.x != true, Struct_3(false), global1.x, Struct_2(vec2<f32>(global1.x, -461f), Struct_1(arg_0, vec3<bool>(global2.x, global2.x, false), vec4<f32>(global1.x, 894f, global1.x, global1.x)), 1i, 1370f, Struct_1(arg_0, vec3<bool>(global2.x, global2.x, false), vec4<f32>(global1.x, global1.x, 1924f, -351f))))), vec4<bool>(false, global2.x, true, !global2.x), global2.x), true);
    var var_1 = i32(-1i) * -63862i;
    global0 = firstLeadingBit(arg_1.x) | arg_1.x;
    return Struct_1(~7240u, !select(var_0.zzz, !select(vec3<bool>(var_0.x, true, global2.x), var_0.zyz, var_0.zxw), select(select(var_0.yyx, var_0.xyx, var_0.xxy), vec3<bool>(global2.x, global2.x, false), var_0.yyw)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -889f)), _wgslsmith_div_f32(-1187f, global1.x), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f + 1708f), global1.x) - _wgslsmith_f_op_f32(f32(-1f) * -977f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -550f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global1.x, global1.x)) - -558f))));
}

fn func_5(arg_0: vec3<f32>, arg_1: Struct_2) -> Struct_1 {
    global1 = _wgslsmith_f_op_vec3_f32(abs(arg_1.e.c.wxz));
    var var_0 = Struct_4(reverseBits(vec2<i32>(-(arg_1.c >> (4294967295u % 32u)), ~(~u_input.b))), global1.x, !all(vec4<bool>(select(global2.x, false, true), !arg_1.b.b.x, global2.x & true, false)));
    global1 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(arg_0.x, var_0.b, var_0.b))), vec3<f32>(arg_0.x, var_0.b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-402f)), 1000f)))));
    let var_1 = ~min(global3[_wgslsmith_index_u32(select(arg_1.b.a & arg_1.e.a, countOneBits(_wgslsmith_sub_u32(arg_1.e.a, arg_1.b.a)), global2.x), 13u)], select(_wgslsmith_add_vec4_i32(vec4<i32>(-10294i, var_0.a.x, arg_1.c, var_0.a.x), _wgslsmith_mod_vec4_i32(vec4<i32>(var_0.a.x, 53819i, 2147483647i, arg_1.c), vec4<i32>(14717i, 24804i, -2147483647i, u_input.b))), u_input.a, select(select(vec4<bool>(arg_1.e.b.x, global2.x, arg_1.e.b.x, global2.x), vec4<bool>(false, false, var_0.c, false), vec4<bool>(false, var_0.c, false, arg_1.b.b.x)), select(vec4<bool>(global2.x, true, var_0.c, false), vec4<bool>(false, global2.x, false, global2.x), vec4<bool>(arg_1.b.b.x, global2.x, false, true)), !vec4<bool>(false, var_0.c, true, var_0.c))));
    global0 = _wgslsmith_add_u32(11970u, 31142u);
    return func_4(arg_1.b.a, reverseBits(~(~max(vec4<u32>(1u, 4286u, arg_1.b.a, arg_1.e.a), vec4<u32>(arg_1.e.a, arg_1.b.a, 22784u, 4294967295u)))), ~(abs(abs(u_input.c)) << ((~vec3<u32>(8227u, arg_1.b.a, 4577u) | select(vec3<u32>(1u, 4294967295u, 1u), vec3<u32>(arg_1.e.a, 20850u, 54029u), global2.x)) % vec3<u32>(32u))));
}

fn func_6(arg_0: i32, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec4<u32>) -> StorageBuffer {
    global3 = array<vec4<i32>, 13>();
    global0 = 56288u;
    let var_0 = ~(~u_input.d.x) & abs(-(i32(-1i) * -u_input.c.x));
    global0 = arg_3.x ^ ~(19303u & func_5(vec3<f32>(arg_2.c.x, -1524f, arg_1.c.x), Struct_2(vec2<f32>(arg_2.c.x, arg_1.c.x), Struct_1(arg_1.a, vec3<bool>(true, global2.x, arg_1.b.x), vec4<f32>(global1.x, arg_2.c.x, 227f, arg_2.c.x)), 2147483647i, global1.x, Struct_1(arg_2.a, arg_2.b, arg_1.c))).a);
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(1f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1330f)), func_4(_wgslsmith_mod_u32(_wgslsmith_div_u32(~1u, select(4053u, 1u, true)), abs(firstLeadingBit(0u))), ~max(~arg_3, select(arg_3, arg_3, vec4<bool>(arg_1.b.x, true, global2.x, global2.x))), vec3<i32>(max(_wgslsmith_dot_vec3_i32(u_input.c, vec3<i32>(var_0, -2147483647i, var_0)), abs(-33608i)), 0i, u_input.d.x)).c.x, 491f);
    return StorageBuffer(2147483647i, _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-459f, 392f, _wgslsmith_f_op_f32(457f * 1000f)))))), u_input.b, vec3<u32>(1u, arg_1.a, arg_2.a ^ 8791u));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_6(9263i >> (~abs(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 0u), vec2<u32>(89431u, 95866u))) % 32u), func_5(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(622f, global1.x, global1.x)))) + vec3<f32>(_wgslsmith_div_f32(-1401f, global1.x), _wgslsmith_f_op_f32(select(global1.x, global1.x, global2.x)), _wgslsmith_f_op_f32(min(759f, -242f)))), Struct_2(global1.xy, func_4(func_1(), ~vec4<u32>(68765u, 68079u, 25475u, 47442u), u_input.a.yyy), firstTrailingBit(_wgslsmith_add_i32(9889i, u_input.d.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-437f - -2275f), _wgslsmith_f_op_f32(2194f * global1.x)), func_4(_wgslsmith_add_u32(74194u, 24037u), ~vec4<u32>(1u, 32563u, 4294967295u, 38019u), u_input.c))), Struct_1(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), firstTrailingBit(firstLeadingBit(vec4<u32>(86671u, 0u, 0u, 18228u)))), func_5(vec3<f32>(-460f, -279f, -1394f), Struct_2(vec2<f32>(global1.x, 1471f), func_5(vec3<f32>(-213f, global1.x, 101f), Struct_2(global1.yz, Struct_1(1u, vec3<bool>(false, global2.x, false), vec4<f32>(871f, -390f, 937f, global1.x)), 19771i, 985f, Struct_1(4294967295u, vec3<bool>(false, false, true), vec4<f32>(global1.x, global1.x, global1.x, -926f)))), _wgslsmith_dot_vec2_i32(vec2<i32>(11846i, u_input.a.x), vec2<i32>(1i, u_input.a.x)), _wgslsmith_f_op_f32(step(global1.x, global1.x)), Struct_1(22784u, vec3<bool>(global2.x, global2.x, global2.x), vec4<f32>(309f, 686f, -244f, 1173f)))).b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(512f, global1.x, 1705f, 1112f))))))), vec4<u32>(0u, _wgslsmith_clamp_u32(4294967295u, _wgslsmith_div_u32(~9744u, 1u), 19618u), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, firstLeadingBit(42204u), _wgslsmith_sub_u32(4294967295u, 1u)), _wgslsmith_clamp_vec3_u32(abs(vec3<u32>(7886u, 1198u, 4294967295u)), vec3<u32>(1u, 1u, 1u), vec3<u32>(89915u, 98852u, 0u))), 1u));
}


struct Struct_1 {
    a: i32,
    b: vec2<f32>,
    c: vec2<i32>,
    d: f32,
}

struct Struct_2 {
    a: vec4<bool>,
}

struct Struct_3 {
    a: vec2<u32>,
    b: bool,
    c: Struct_1,
    d: vec2<f32>,
    e: vec2<u32>,
}

struct Struct_4 {
    a: i32,
    b: Struct_3,
    c: Struct_2,
}

struct Struct_5 {
    a: Struct_2,
    b: bool,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: vec3<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: array<vec3<u32>, 14>;

var<private> global2: u32;

var<private> global3: vec2<u32>;

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3() -> vec4<bool> {
    global2 = 1u | global3.x;
    let var_0 = abs(~abs(_wgslsmith_div_u32(~37498u, min(0u, global3.x))));
    global3 = vec2<u32>(9282u, 88339u);
    global2 = 52026u;
    global0 = vec2<u32>(36001u, global3.x);
    return !vec4<bool>(global3.x >= _wgslsmith_clamp_u32(~global3.x, _wgslsmith_add_u32(13868u, global3.x), var_0), all(vec2<bool>(true, true)), true, 7221u < (4294967295u ^ global0.x));
}

fn func_2() -> Struct_2 {
    var var_0 = Struct_5(Struct_2(vec4<bool>(true && all(vec3<bool>(false, false, false)), any(vec3<bool>(true, true, false)), any(vec3<bool>(false, true, true)) && true, true)), true);
    global3 = reverseBits(~_wgslsmith_mult_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(18446u, global3.x), vec2<u32>(1u, 0u)), select(vec2<u32>(1u, 0u), vec2<u32>(global3.x, global0.x), var_0.a.a.zx))) ^ ~abs(vec2<u32>(~4294967295u, global3.x | global3.x));
    let var_1 = max(abs(u_input.c), u_input.b) | _wgslsmith_clamp_i32(_wgslsmith_div_i32(-u_input.a, ~1i), firstTrailingBit(22085i), 3332i);
    var var_2 = reverseBits(abs(_wgslsmith_add_vec2_i32(vec2<i32>(559i, ~48741i), vec2<i32>(-u_input.c, 36854i))));
    var var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1072f, 1654f) - vec2<f32>(852f, -629f)) - vec2<f32>(1f, 1f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(floor(-1262f)), -662f) * vec2<f32>(_wgslsmith_f_op_f32(343f * 408f), _wgslsmith_f_op_f32(round(257f)))))) * vec2<f32>(504f, -266f));
    return Struct_2(vec4<bool>(all(func_3()), !all(select(vec4<bool>(var_0.a.a.x, var_0.b, var_0.b, var_0.a.a.x), var_0.a.a, var_0.a.a.x)), all(vec3<bool>(all(vec4<bool>(var_0.a.a.x, var_0.b, true, false)), true, var_0.b)), true));
}

fn func_1(arg_0: vec3<u32>, arg_1: f32, arg_2: f32, arg_3: u32) -> Struct_3 {
    let var_0 = Struct_5(func_2(), true);
    let var_1 = Struct_3(~(countOneBits(_wgslsmith_mult_vec2_u32(arg_0.zx, arg_0.xx)) ^ max(vec2<u32>(38160u, global0.x), arg_0.xy ^ arg_0.xx)), all(select(select(var_0.a.a, !var_0.a.a, func_2().a), var_0.a.a, select(var_0.b | false, false && var_0.a.a.x, var_0.a.a.x))), Struct_1(u_input.a, _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, arg_1)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1394f, arg_1)), vec2<bool>(var_0.a.a.x, true))))), _wgslsmith_clamp_vec2_i32(firstLeadingBit(min(vec2<i32>(-1i, u_input.b), vec2<i32>(u_input.b, u_input.c))), vec2<i32>(~u_input.a, u_input.c), vec2<i32>(u_input.b >> (arg_0.x % 32u), u_input.c)), _wgslsmith_f_op_f32(-arg_2)), vec2<f32>(-253f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_1 + _wgslsmith_f_op_f32(-1798f * arg_2))))), arg_0.yx);
    var var_2 = (_wgslsmith_add_vec3_u32(select(arg_0, vec3<u32>(arg_3, global3.x, 0u), !var_0.a.a.zzy), arg_0) ^ ~vec3<u32>(abs(25165u), reverseBits(3571u), arg_3)) << (_wgslsmith_div_vec3_u32(arg_0, max(arg_0 >> (vec3<u32>(global3.x, 23062u, 21899u) % vec3<u32>(32u)), countOneBits(global1[_wgslsmith_index_u32(global3.x, 14u)])) ^ vec3<u32>(~arg_0.x, global0.x, 9010u)) % vec3<u32>(32u));
    let var_3 = _wgslsmith_dot_vec4_u32(select(min(abs(~vec4<u32>(arg_0.x, global0.x, arg_3, var_2.x)), vec4<u32>(global3.x, arg_0.x & 0u, arg_0.x, ~1u)), ~vec4<u32>(arg_3, ~global0.x, var_1.a.x, ~var_2.x), select(vec4<bool>(any(var_0.a.a.ww), false, var_2.x > 65915u, var_0.b), select(!var_0.a.a, select(vec4<bool>(true, var_1.b, false, var_0.b), var_0.a.a, var_0.a.a.x), !var_0.a.a), vec4<bool>(var_1.b, true, var_0.a.a.x, select(false, var_0.a.a.x, var_0.b)))), _wgslsmith_clamp_vec4_u32(~(~(~vec4<u32>(0u, 36105u, global3.x, arg_0.x))), _wgslsmith_mult_vec4_u32(firstLeadingBit(vec4<u32>(global0.x, arg_0.x, var_2.x, 4218u)), _wgslsmith_div_vec4_u32(vec4<u32>(arg_3, 34653u, 4294967295u, var_1.e.x), vec4<u32>(var_2.x, var_1.a.x, var_2.x, arg_3))) ^ countOneBits(vec4<u32>(var_1.e.x, 4294967295u, 0u, arg_0.x) | vec4<u32>(arg_0.x, var_2.x, 38105u, 4294967295u)), vec4<u32>(var_2.x, 1u, _wgslsmith_div_u32(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, arg_0.x, var_2.x, global3.x), vec4<u32>(0u, arg_3, arg_3, 0u))), 25926u)));
    let var_4 = Struct_3(_wgslsmith_div_vec2_u32(max(vec2<u32>(4294967295u, abs(var_2.x)), arg_0.xz), arg_0.zx | vec2<u32>(arg_0.x, arg_3)), !var_0.b, var_1.c, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-136f, arg_1))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.c.d, 564f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(281f, arg_1)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, arg_2)) * _wgslsmith_f_op_vec2_f32(select(var_1.c.b, vec2<f32>(arg_1, 1051f), var_0.a.a.x))))), _wgslsmith_mod_vec2_u32(vec2<u32>(~0u, 1u), arg_0.zy));
    return Struct_3(~(~var_2.xz | (vec2<u32>(1u, 1u) << ((vec2<u32>(var_4.a.x, 4294967295u) & vec2<u32>(1u, var_1.a.x)) % vec2<u32>(32u)))), true, var_1.c, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_4.c.b.x, -400f) + _wgslsmith_f_op_vec2_f32(-var_4.c.b)) * _wgslsmith_f_op_vec2_f32(-var_1.d)) + var_4.d), ~(~var_4.a & var_1.a) | ~vec2<u32>(_wgslsmith_sub_u32(83372u, 1u), var_3));
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_3, arg_2: f32, arg_3: f32) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(204f, arg_3, -213f, arg_2) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(433f, arg_1.d.x, arg_3, arg_2), vec4<f32>(arg_1.c.d, -1233f, 566f, arg_1.d.x), arg_1.b)))))));
    var var_1 = _wgslsmith_sub_vec3_i32(arg_0, arg_0);
    let var_2 = arg_2;
    let var_3 = ~(~max(reverseBits(global1[_wgslsmith_index_u32(4072u >> (global0.x % 32u), 14u)]), min(_wgslsmith_sub_vec3_u32(global1[_wgslsmith_index_u32(global0.x, 14u)], vec3<u32>(4294967295u, 5794u, arg_1.a.x)), select(vec3<u32>(arg_1.e.x, global0.x, 0u), vec3<u32>(global0.x, global3.x, global3.x), vec3<bool>(true, true, false)))));
    let var_4 = Struct_4(~(~(~2147483647i)), Struct_3(~vec2<u32>(global3.x, _wgslsmith_clamp_u32(1u, global3.x, 7534u)), (abs(2147483647i) == -var_1.x) || (all(vec4<bool>(arg_1.b, true, arg_1.b, true)) || all(vec2<bool>(arg_1.b, arg_1.b))), arg_1.c, _wgslsmith_f_op_vec2_f32(min(vec2<f32>(arg_2, arg_2), arg_1.d)), ~var_3.yy | vec2<u32>(4294967295u, arg_1.e.x)), Struct_2(!select(vec4<bool>(true, true, arg_1.b, arg_1.b), vec4<bool>(arg_1.b, arg_1.b, arg_1.b, arg_1.b), !vec4<bool>(false, arg_1.b, false, false))));
    return Struct_2(var_4.c.a);
}

fn func_5(arg_0: Struct_2, arg_1: u32, arg_2: Struct_4) -> vec4<u32> {
    var var_0 = func_4(vec3<i32>(-_wgslsmith_mult_i32(_wgslsmith_mod_i32(0i, u_input.b), 2147483647i << (arg_1 % 32u)), u_input.a, 16308i), arg_2.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_2.b.d.x, 404f) + -1054f)) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_2.b.d.x), arg_2.b.c.b.x))))), arg_2.b.c.b.x).a.x;
    let var_1 = _wgslsmith_mod_u32(global3.x, arg_1);
    var var_2 = 477f;
    global0 = select(vec2<u32>(global3.x, 1u << (global0.x % 32u)) | arg_2.b.a, arg_2.b.a, vec2<bool>((46991u <= var_1) | (var_1 > 45435u), arg_0.a.x)) << (arg_2.b.e % vec2<u32>(32u));
    var var_3 = true;
    return firstTrailingBit(~_wgslsmith_clamp_vec4_u32(firstLeadingBit(vec4<u32>(64387u, arg_1, arg_2.b.e.x, global0.x)), firstLeadingBit(vec4<u32>(global3.x, 18134u, 61441u, global0.x) & vec4<u32>(arg_2.b.e.x, arg_1, 100094u, 5599u)), countOneBits(~vec4<u32>(global0.x, 108715u, 4294967295u, 29301u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~func_5(func_4(_wgslsmith_sub_vec3_i32(vec3<i32>(-43049i, u_input.c, 10339i) >> (vec3<u32>(41469u, 4294967295u, 1u) % vec3<u32>(32u)), ~vec3<i32>(-40825i, 0i, 2147483647i)), func_1(_wgslsmith_div_vec3_u32(global1[_wgslsmith_index_u32(3120u, 14u)], global1[_wgslsmith_index_u32(global0.x, 14u)]), 944f, _wgslsmith_div_f32(-616f, 872f), ~0u), 422f, 1395f), firstLeadingBit(90631u), Struct_4(-1i, Struct_3(vec2<u32>(global0.x, global3.x) | vec2<u32>(global3.x, global3.x), true, Struct_1(1i, vec2<f32>(-1124f, 355f), vec2<i32>(-27135i, u_input.c), -649f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(184f, 518f)), _wgslsmith_mod_vec2_u32(vec2<u32>(global3.x, 4294967295u), vec2<u32>(global0.x, 4294967295u))), func_4(select(vec3<i32>(u_input.b, -2147483647i, -22128i), vec3<i32>(u_input.b, u_input.a, u_input.a), true), func_1(vec3<u32>(global3.x, global3.x, global3.x), 604f, -1048f, 4294967295u), 1443f, 220f)));
    var var_1 = func_4(_wgslsmith_add_vec3_i32(-select(vec3<i32>(65651i, u_input.c, u_input.c), _wgslsmith_div_vec3_i32(vec3<i32>(u_input.a, -2147483647i, 0i), vec3<i32>(5183i, -12305i, 0i)), vec3<bool>(true, true, true)), vec3<i32>(u_input.c, ~u_input.a, min(0i, u_input.a << (var_0.x % 32u)))), Struct_3(vec2<u32>(_wgslsmith_dot_vec2_u32(var_0.xw, vec2<u32>(var_0.x, global3.x)) ^ global0.x, 30311u), false, Struct_1(-1i, vec2<f32>(-337f, _wgslsmith_f_op_f32(f32(-1f) * -553f)), abs(~vec2<i32>(-9762i, -32471i)), _wgslsmith_f_op_f32(-445f * _wgslsmith_div_f32(849f, 216f))), vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-187f - 337f))), 804f), countOneBits(var_0.yy | vec2<u32>(global0.x, 0u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1000f)) * _wgslsmith_f_op_f32(f32(-1f) * -364f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(2171f, 274f, all(vec3<bool>(true, false, true)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(f32(-1f) * -196f)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-282f + _wgslsmith_f_op_f32(sign(1325f))) + _wgslsmith_f_op_f32(select(-1862f, -1064f, false)))));
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(sign(-391f)), -1288f, -563f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(-759f, -1452f)))))));
    var var_3 = Struct_3(~abs(var_0.ww), any(func_3()), func_1(select(vec3<u32>(global3.x, ~var_0.x, ~0u), vec3<u32>(74840u, var_0.x, 44136u) ^ max(var_0.xyz, var_0.zxy), var_1.a.zww), 590f, -1932f, var_0.x).c, var_2.wx, _wgslsmith_div_vec2_u32(vec2<u32>(~(~var_0.x), _wgslsmith_div_u32(global0.x, 1u)), ~(~var_0.wy & vec2<u32>(var_0.x, 1u))));
    var var_4 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-var_2.zx)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_4.x) - -190f), _wgslsmith_f_op_f32(-var_3.c.d), var_2.x), _wgslsmith_f_op_f32(abs(333f)), _wgslsmith_f_op_vec3_f32(var_2.xww - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_2.wyz), var_2.xyy)), -1128f);
}


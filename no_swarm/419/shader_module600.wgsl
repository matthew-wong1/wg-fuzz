struct Struct_1 {
    a: u32,
    b: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
    c: vec2<u32>,
    d: vec4<u32>,
    e: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: f32,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 26> = array<vec2<i32>, 26>(vec2<i32>(-4462i, i32(-2147483648)), vec2<i32>(11686i, i32(-2147483648)), vec2<i32>(2147483647i, i32(-2147483648)), vec2<i32>(-1i, i32(-2147483648)), vec2<i32>(14826i, -22515i), vec2<i32>(13290i, 11109i), vec2<i32>(-29680i, -33207i), vec2<i32>(1i, -1i), vec2<i32>(1i, -1903i), vec2<i32>(2147483647i, 76790i), vec2<i32>(i32(-2147483648), -29933i), vec2<i32>(51758i, 2147483647i), vec2<i32>(8795i, 1i), vec2<i32>(51934i, 25952i), vec2<i32>(7346i, 0i), vec2<i32>(-37450i, -1i), vec2<i32>(1i, -20975i), vec2<i32>(-9684i, -1774i), vec2<i32>(1i, 1i), vec2<i32>(-19666i, 16306i), vec2<i32>(666i, i32(-2147483648)), vec2<i32>(i32(-2147483648), 1i), vec2<i32>(6698i, 3947i), vec2<i32>(-1i, i32(-2147483648)), vec2<i32>(-5925i, 1i), vec2<i32>(i32(-2147483648), 1i));

var<private> global1: vec2<u32>;

var<private> global2: array<Struct_2, 3>;

var<private> global3: f32 = 623f;

var<private> global4: Struct_2;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: vec3<f32>) -> u32 {
    global4 = Struct_2(Struct_1(u_input.a.x, arg_0), max(~(_wgslsmith_mod_vec3_u32(vec3<u32>(63523u, global1.x, global4.c.x), vec3<u32>(12875u, global4.a.a, global1.x)) >> (abs(vec3<u32>(817u, global1.x, 4294967295u)) % vec3<u32>(32u))), _wgslsmith_mult_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a.x, global4.b.x, 28096u), vec3<u32>(76317u, 4294967295u, 12419u)), vec3<u32>(6174u, global1.x, global1.x)) ^ ~(vec3<u32>(43670u, global1.x, global1.x) >> (u_input.a.yxy % vec3<u32>(32u)))), vec2<u32>(24040u & _wgslsmith_dot_vec3_u32(select(vec3<u32>(54984u, u_input.a.x, 30214u), global4.d.zzx, global4.e), u_input.a.zzw), 1u), u_input.a, any(!select(select(vec4<bool>(false, true, false, global4.e), vec4<bool>(false, global4.e, global4.e, true), vec4<bool>(global4.e, false, global4.e, true)), !vec4<bool>(true, true, global4.e, false), vec4<bool>(true, true, true, true))));
    let var_0 = Struct_2(Struct_1(4294967295u, vec3<f32>(global4.a.b.x, _wgslsmith_div_f32(-642f, global4.a.b.x), -311f)), abs(global4.b ^ vec3<u32>(97520u, max(global1.x, 1u), global1.x)), vec2<u32>(_wgslsmith_clamp_u32(~0u, _wgslsmith_dot_vec2_u32(vec2<u32>(90050u, global1.x), ~global4.b.zy), u_input.a.x), ~4294967295u), min(_wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32(~vec4<u32>(global4.a.a, 0u, 28u, global4.a.a), min(u_input.a, u_input.a)), vec4<u32>(firstLeadingBit(0u), global1.x, firstTrailingBit(global1.x), _wgslsmith_mult_u32(global4.c.x, u_input.a.x))), u_input.a), all(vec4<bool>(select(!global4.e, true, global4.e), !all(vec4<bool>(global4.e, true, true, true)), _wgslsmith_sub_u32(u_input.a.x, 0u) != _wgslsmith_mod_u32(global4.d.x, global1.x), true)));
    return ~(~(~1u)) & reverseBits(u_input.a.x);
}

fn func_2(arg_0: vec4<f32>, arg_1: i32) -> f32 {
    let var_0 = !vec4<bool>(!global4.e || !global4.e, global4.e | false, global4.e || any(vec4<bool>(global4.e, global4.e, global4.e, true)), !global4.e);
    global4 = Struct_2(global4.a, u_input.a.wyy, ~vec2<u32>(global1.x, 1u), global4.d >> ((~global4.d << (abs(vec4<u32>(u_input.a.x, 4294967295u, 9506u, 4294967295u)) % vec4<u32>(32u))) % vec4<u32>(32u)), all(!(!vec4<bool>(false, false, global4.e, var_0.x))));
    global2 = array<Struct_2, 3>();
    global4 = Struct_2(Struct_1(func_3(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(974f, 1238f, -840f)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(-914f + arg_0.x), _wgslsmith_f_op_f32(-arg_0.x)))), min(_wgslsmith_mult_vec3_u32(select(u_input.a.wyw, global4.b, global4.e), u_input.a.xzz), _wgslsmith_mod_vec3_u32(~u_input.a.wyx, global4.d.xyz)), countOneBits(select(~_wgslsmith_clamp_vec2_u32(vec2<u32>(0u, global1.x), vec2<u32>(4294967295u, global1.x), u_input.a.xx), ~_wgslsmith_mod_vec2_u32(vec2<u32>(19143u, 1u), global4.b.xx), !var_0.wx)), global4.d | ~(vec4<u32>(1u, 0u, global1.x, 109763u) >> (~vec4<u32>(global1.x, 0u, 3475u, 0u) % vec4<u32>(32u))), !(749f >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1376f * -588f) * _wgslsmith_f_op_f32(arg_0.x - -868f))));
    var var_1 = Struct_2(Struct_1(_wgslsmith_mult_u32(_wgslsmith_sub_u32(global1.x << (u_input.a.x % 32u), ~global1.x), _wgslsmith_dot_vec4_u32(u_input.a, _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a.x, 0u, global1.x, 4640u), vec4<u32>(4294967295u, global4.a.a, 0u, 23403u), vec4<u32>(0u, 4294967295u, 27660u, u_input.a.x)))), arg_0.zww), ~_wgslsmith_sub_vec3_u32(_wgslsmith_add_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(global1.x, global1.x, 23353u), vec3<u32>(78124u, 0u, global4.b.x)), _wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, 31849u, global4.c.x), global4.d.wwx)), max(reverseBits(vec3<u32>(58322u, 4294967295u, 4294967295u)), ~global4.b)), _wgslsmith_mod_vec2_u32(u_input.a.wy, ~global4.d.yy), firstLeadingBit(vec4<u32>(27222u >> (global4.a.a % 32u), 4294967295u, reverseBits(global4.d.x), ~u_input.a.x)), all(!(!vec3<bool>(true, global4.e, false))));
    return 499f;
}

fn func_1(arg_0: vec2<bool>, arg_1: i32, arg_2: u32) -> bool {
    global0 = array<vec2<i32>, 26>();
    global2 = array<Struct_2, 3>();
    let var_0 = _wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global4.a.b.x, global4.a.b.x, 1128f, -1439f) + vec4<f32>(global4.a.b.x, 1000f, -1722f, 1103f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(1420f, -2347f, global4.a.b.x, global4.a.b.x) * vec4<f32>(global4.a.b.x, global4.a.b.x, 108f, -1612f))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1093f, global4.a.b.x, -823f, global4.a.b.x)) + _wgslsmith_f_op_vec4_f32(min(vec4<f32>(global4.a.b.x, 803f, global4.a.b.x, global4.a.b.x), vec4<f32>(141f, global4.a.b.x, global4.a.b.x, global4.a.b.x))))))), -2147483647i));
    var var_1 = global4.a.b.yy;
    var var_2 = global4.c;
    return global4.e;
}

fn func_4(arg_0: vec2<bool>, arg_1: bool, arg_2: vec3<f32>) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(select(1339f, -128f, select(false, arg_0.x, false))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4.a.b.x)), _wgslsmith_div_f32(global4.a.b.x, _wgslsmith_f_op_f32(arg_2.x - 819f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-870f - -192f) - _wgslsmith_f_op_f32(exp2(global4.a.b.x))))));
    var var_1 = !select(select(select(vec3<bool>(global4.e, true, arg_0.x), vec3<bool>(arg_1, global4.e, true), vec3<bool>(true, true, arg_0.x)), vec3<bool>(arg_1, func_1(vec2<bool>(arg_1, arg_1), -1i, 87396u), true & global4.e), true), vec3<bool>(true, !(!global4.e), !global4.e), select(vec3<bool>(0u < global4.a.a, arg_1, global1.x < global1.x), select(select(vec3<bool>(global4.e, false, arg_1), vec3<bool>(true, false, true), vec3<bool>(arg_1, arg_1, arg_1)), vec3<bool>(global4.e, arg_0.x, false), any(vec4<bool>(false, false, global4.e, false))), any(!vec3<bool>(arg_0.x, true, global4.e))));
    let var_2 = func_3(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.x, -576f, var_0.x) * vec3<f32>(global4.a.b.x, arg_2.x, -871f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global4.a.b.x, -728f, 659f) * arg_2) * var_0.yzz))));
    let var_3 = 3655f;
    var var_4 = Struct_1(~firstLeadingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 77955u), ~vec2<u32>(3305u, 91843u))), _wgslsmith_f_op_vec3_f32(-global4.a.b));
    return global2[_wgslsmith_index_u32(6176u, 3u)];
}

fn func_5(arg_0: Struct_2, arg_1: Struct_1, arg_2: f32) -> Struct_1 {
    var var_0 = global0[_wgslsmith_index_u32(~18881u, 26u)];
    var var_1 = func_4(select(!vec2<bool>(arg_0.e, arg_0.e), !select(vec2<bool>(arg_0.e, global4.e), select(vec2<bool>(true, arg_0.e), vec2<bool>(global4.e, false), true), vec2<bool>(true, true)), select(select(vec2<bool>(true, true), !vec2<bool>(global4.e, arg_0.e), !vec2<bool>(arg_0.e, false)), select(select(vec2<bool>(true, true), vec2<bool>(false, true), arg_0.e), !vec2<bool>(global4.e, false), !vec2<bool>(arg_0.e, true)), func_1(vec2<bool>(true, true), 12202i, 20302u))), global4.e, global4.a.b);
    var var_2 = func_4(!select(select(!vec2<bool>(var_1.e, global4.e), vec2<bool>(true, true), !vec2<bool>(global4.e, arg_0.e)), vec2<bool>(true, true), !(!vec2<bool>(global4.e, global4.e))), true, _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-var_1.a.b))) - vec3<f32>(arg_1.b.x, arg_2, _wgslsmith_f_op_f32(exp2(arg_1.b.x)))))));
    global3 = _wgslsmith_f_op_f32(var_1.a.b.x + -541f);
    global3 = _wgslsmith_f_op_f32(f32(-1f) * -294f);
    return global4.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(func_4(select(select(vec2<bool>(true, global4.e), vec2<bool>(global4.e, global4.e), !vec2<bool>(global4.e, global4.e)), vec2<bool>(func_1(vec2<bool>(global4.e, global4.e), 3229i, 55038u), all(vec4<bool>(true, global4.e, global4.e, global4.e))), false), global4.e, global4.a.b), Struct_1(13102u, _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(global4.a.b.x, global4.a.b.x, 1050f))), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global4.a.b.x, -1000f, 577f)))))), global4.a.b.x);
    let var_1 = u_input.b >> (u_input.a.x % 32u);
    var var_2 = func_5(global2[_wgslsmith_index_u32(u_input.a.x ^ 0u, 3u)], global4.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b.x + var_0.b.x))));
    var var_3 = vec2<u32>(var_2.a & (global4.d.x >> (abs(global1.x) % 32u)), ~firstLeadingBit(countOneBits(global1.x | 20086u)));
    var var_4 = _wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.b.x, _wgslsmith_f_op_f32(var_0.b.x + -1200f), _wgslsmith_f_op_f32(f32(-1f) * -1157f), _wgslsmith_div_f32(var_2.b.x, global4.a.b.x))))), ~abs(var_1)));
    var_3 = firstLeadingBit(_wgslsmith_mod_vec2_u32(vec2<u32>(2881u, abs(firstLeadingBit(var_0.a))), abs(~u_input.a.xx)));
    var var_5 = 1i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec3_i32(-max(-vec3<i32>(32583i, 52312i, -6507i), vec3<i32>(17932i, var_1, 0i)), -(~vec3<i32>(-8875i, u_input.b, 15648i) << (abs(u_input.a.zxx) % vec3<u32>(32u)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_2.b.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1253f, _wgslsmith_f_op_f32(-254f + _wgslsmith_f_op_f32(floor(-1000f)))))), _wgslsmith_add_u32(u_input.a.x >> ((~var_2.a | 5907u) % 32u), abs(_wgslsmith_dot_vec3_u32(global4.d.zzx, global4.b) >> (_wgslsmith_mod_u32(var_0.a, 4294967295u) % 32u))), global1.x);
}


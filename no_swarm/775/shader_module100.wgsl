struct Struct_1 {
    a: u32,
    b: vec4<bool>,
    c: vec4<bool>,
    d: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
    d: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec2<i32>,
    c: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec3<f32>,
    d: vec4<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

var<private> global1: u32 = 4294967295u;

var<private> global2: array<Struct_3, 24>;

var<private> global3: vec3<i32> = vec3<i32>(0i, -55347i, 25657i);

var<private> global4: vec3<bool>;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_2(arg_0: i32) -> Struct_3 {
    global2 = array<Struct_3, 24>();
    let var_0 = !(!global4.x);
    let var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(1657f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1000f - 1131f))) * -834f)) - _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-871f, _wgslsmith_f_op_f32(round(-1417f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 233f)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1f, 1f))))));
    global2 = array<Struct_3, 24>();
    let var_2 = !(!(!select(select(vec2<bool>(var_0, true), vec2<bool>(true, global4.x), true), global4.xz, vec2<bool>(false, false))));
    return Struct_3(~u_input.b.yx, _wgslsmith_mult_vec2_i32((vec2<i32>(global3.x, arg_0) << (_wgslsmith_mult_vec2_u32(u_input.b.xz, vec2<u32>(4294967295u, 61871u)) % vec2<u32>(32u))) << (vec2<u32>(~4294967295u, _wgslsmith_clamp_u32(4294967295u, u_input.b.x, u_input.a)) % vec2<u32>(32u)), ~global3.zx ^ _wgslsmith_sub_vec2_i32(vec2<i32>(global0.x, global3.x) >> (vec2<u32>(2149u, u_input.b.x) % vec2<u32>(32u)), ~vec2<i32>(arg_0, 0i))), false);
}

fn func_3(arg_0: Struct_3, arg_1: vec3<i32>, arg_2: Struct_3) -> Struct_2 {
    let var_0 = vec4<i32>(25129i, -abs(-5107i), -10497i, 1i);
    var var_1 = select(arg_2.a.x, ~(~8598u), all(global4.zz));
    let var_2 = _wgslsmith_mod_u32(~(~_wgslsmith_add_u32(abs(arg_2.a.x), reverseBits(u_input.a))), 24048u);
    global3 = var_0.zzw;
    global0 = vec3<i32>(abs(arg_2.b.x ^ select(-var_0.x, _wgslsmith_clamp_i32(1i, 2147483647i, -10038i), !arg_2.c)), _wgslsmith_dot_vec4_i32(-vec4<i32>(_wgslsmith_clamp_i32(35975i, arg_2.b.x, -10848i), _wgslsmith_add_i32(0i, -11490i), select(-4864i, -1i, arg_0.c), var_0.x << (arg_2.a.x % 32u)), var_0), _wgslsmith_sub_i32(_wgslsmith_add_i32(_wgslsmith_mod_i32(arg_0.b.x, _wgslsmith_mult_i32(-49683i, -25493i)), _wgslsmith_sub_i32(var_0.x, 1i)), ~abs(~0i)));
    return Struct_2(Struct_1(firstTrailingBit(max(~arg_0.a.x, 4294967295u)), vec4<bool>(arg_2.c, func_2(_wgslsmith_mult_i32(global3.x, arg_2.b.x)).c, !any(vec3<bool>(global4.x, true, arg_2.c)), true), vec4<bool>(global4.x, arg_0.a.x > 1u, !(!arg_0.c), true), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1000f, -1696f))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-694f, 714f))))), Struct_1(~(~_wgslsmith_div_u32(4294967295u, 1u)), !vec4<bool>(global4.x, true, !arg_2.c, arg_2.c), !select(!vec4<bool>(arg_2.c, false, arg_0.c, false), select(vec4<bool>(false, global4.x, true, arg_0.c), vec4<bool>(arg_0.c, global4.x, global4.x, global4.x), vec4<bool>(false, false, true, arg_0.c)), !vec4<bool>(arg_2.c, true, arg_0.c, arg_2.c)), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(min(-331f, 329f)), _wgslsmith_f_op_f32(abs(-1000f))), vec2<f32>(-1079f, _wgslsmith_f_op_f32(-503f * 131f))))), 0i >= _wgslsmith_mult_i32(arg_2.b.x, (global0.x ^ arg_2.b.x) | arg_1.x), Struct_1(_wgslsmith_add_u32(~4294967295u, var_2), !(!select(vec4<bool>(arg_2.c, false, arg_0.c, global4.x), vec4<bool>(false, false, false, arg_2.c), global4.x)), !vec4<bool>(all(vec2<bool>(true, true)), true, arg_2.c, global4.x & false), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-1000f, 661f), vec2<f32>(707f, -998f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(785f, 1980f)))))));
}

fn func_1(arg_0: Struct_1) -> vec4<i32> {
    var var_0 = _wgslsmith_f_op_f32(round(arg_0.d.x));
    global1 = abs((_wgslsmith_mod_u32(74821u, u_input.b.x) << (~_wgslsmith_div_u32(1u, arg_0.a) % 32u)) & 38126u);
    global1 = u_input.b.x >> (~reverseBits(u_input.a) % 32u);
    let var_1 = select(~u_input.b.x & min(~(u_input.b.x >> (16905u % 32u)), 65597u & u_input.a), 3186u, true);
    let var_2 = func_3(Struct_3(_wgslsmith_div_vec2_u32(~u_input.b.zz, vec2<u32>(1u, var_1)) ^ max(select(u_input.b.wx, u_input.b.yz, arg_0.b.x), firstTrailingBit(u_input.b.zw)), global0.zy, true), _wgslsmith_sub_vec3_i32(max(-vec3<i32>(global0.x, 2147483647i, 41649i), vec3<i32>(0i, global0.x, 85629i) << (u_input.b.wyx % vec3<u32>(32u))) ^ ~vec3<i32>(global0.x, global0.x, global3.x), firstLeadingBit(vec3<i32>(0i, -1i, global3.x))), func_2(~abs(1i)));
    return vec4<i32>(_wgslsmith_div_i32(1i, _wgslsmith_mod_i32(abs(_wgslsmith_add_i32(7392i, -2147483647i)), -countOneBits(global0.x))), global3.x, _wgslsmith_dot_vec2_i32(vec2<i32>(~1i, _wgslsmith_div_i32(5554i, global3.x) >> (var_2.b.a % 32u)), select(~max(vec2<i32>(global0.x, 9154i), vec2<i32>(28701i, global3.x)), -vec2<i32>(-2147483647i, global0.x) & global3.xy, global4.xx)), global3.x);
}

fn func_4(arg_0: vec4<i32>, arg_1: vec3<f32>, arg_2: u32) -> Struct_3 {
    let var_0 = Struct_3(vec2<u32>(~arg_2, arg_2), global3.xy, _wgslsmith_mod_i32(~_wgslsmith_add_i32(arg_0.x, 39847i), -global3.x) < (_wgslsmith_add_i32(global3.x, _wgslsmith_mult_i32(47881i, 1i)) ^ -2147483647i));
    global3 = arg_0.zzz;
    var var_1 = Struct_1(func_3(func_2(_wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(arg_0, vec4<i32>(global3.x, -2147483647i, global3.x, global0.x)), _wgslsmith_dot_vec4_i32(vec4<i32>(23971i, 108985i, -20950i, arg_0.x), vec4<i32>(global3.x, global0.x, 23246i, -35857i)))), ~(-abs(arg_0.yyy)), func_2(arg_0.x)).b.a, vec4<bool>(~var_0.a.x >= arg_2, all(!func_3(global2[_wgslsmith_index_u32(66053u, 24u)], arg_0.wyw, global2[_wgslsmith_index_u32(5714u, 24u)]).d.c.yx), 2147483647i >= ~(-arg_0.x), any(vec2<bool>(true, true))), !vec4<bool>(any(select(vec3<bool>(false, true, global4.x), vec3<bool>(false, global4.x, true), var_0.c)), true, all(vec4<bool>(global4.x, false, var_0.c, global4.x)), global4.x), arg_1.xz);
    let var_2 = Struct_2(func_3(var_0, _wgslsmith_div_vec3_i32(vec3<i32>(var_0.b.x, 2147483647i, global0.x), _wgslsmith_sub_vec3_i32(arg_0.wyy, arg_0.zzw)), func_2(i32(-1i) * -47696i)).d, Struct_1(28298u, select(var_1.c, var_1.c, !func_3(Struct_3(vec2<u32>(39999u, u_input.b.x), global0.zz, false), vec3<i32>(-8652i, global3.x, -57557i), global2[_wgslsmith_index_u32(70895u, 24u)]).d.b), vec4<bool>(all(select(global4.xy, var_1.b.zy, var_1.c.wy)), _wgslsmith_f_op_f32(-arg_1.x) > _wgslsmith_f_op_f32(ceil(arg_1.x)), false, all(global4.zy)), arg_1.yz), _wgslsmith_add_u32(firstLeadingBit(97699u), reverseBits(var_0.a.x) ^ 0u) > _wgslsmith_clamp_u32(~select(u_input.a, 4294967295u, false), ~0u, ~var_0.a.x), func_3(Struct_3(~(u_input.b.yx >> (vec2<u32>(u_input.a, 1u) % vec2<u32>(32u))), _wgslsmith_mod_vec2_i32(arg_0.xy, vec2<i32>(global3.x, global0.x)), !(!global4.x)), arg_0.yxw, var_0).b);
    global1 = firstLeadingBit(~0u) & max(max(31200u, 9392u) & arg_2, 4231u << (arg_2 % 32u));
    return global2[_wgslsmith_index_u32(~(~u_input.b.x) & max(var_2.a.a ^ ((0u << (arg_2 % 32u)) ^ var_0.a.x), var_0.a.x), 24u)];
}

fn func_5(arg_0: u32, arg_1: vec3<u32>, arg_2: Struct_3, arg_3: f32) -> bool {
    let var_0 = ~(arg_2.b.x | _wgslsmith_mult_i32(~(-41512i), global0.x << (_wgslsmith_mod_u32(83110u, 36787u) % 32u)));
    global4 = vec3<bool>(true, global4.x, all(!(!func_3(global2[_wgslsmith_index_u32(arg_1.x, 24u)], vec3<i32>(11225i, -2147483647i, var_0), Struct_3(arg_2.a, global3.yy, false)).d.c)));
    let var_1 = ~u_input.b.xw;
    global1 = ~(~_wgslsmith_div_u32(~(~13162u), _wgslsmith_dot_vec4_u32(firstLeadingBit(u_input.b), select(vec4<u32>(u_input.a, arg_2.a.x, arg_0, u_input.a), u_input.b, vec4<bool>(false, arg_2.c, arg_2.c, true)))));
    return !global4.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(abs(_wgslsmith_mult_u32(_wgslsmith_add_u32(u_input.a, _wgslsmith_add_u32(0u, u_input.a)), _wgslsmith_mod_u32(44899u, 1u))), ~u_input.b.yxz, func_4(func_1(Struct_1(~u_input.b.x, vec4<bool>(global4.x, true, global4.x, global4.x), select(vec4<bool>(true, true, global4.x, global4.x), vec4<bool>(global4.x, global4.x, global4.x, global4.x), vec4<bool>(false, false, global4.x, false)), vec2<f32>(276f, -193f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(2310f, 325f, -1290f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1953f, 567f, -900f) - vec3<f32>(1667f, 2096f, -846f)))), _wgslsmith_mod_u32(u_input.b.x, u_input.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(313f)) - _wgslsmith_f_op_f32(-475f + -285f))));
    var var_1 = global2[_wgslsmith_index_u32(firstTrailingBit(~_wgslsmith_add_u32(firstLeadingBit(u_input.a) >> (34161u % 32u), u_input.a)), 24u)];
    var var_2 = func_2(~func_1(Struct_1(u_input.b.x, !vec4<bool>(global4.x, true, global4.x, true), !vec4<bool>(var_1.c, false, var_1.c, false), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-264f, -1310f)))).x);
    let var_3 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(-1095f)), _wgslsmith_f_op_f32(f32(-1f) * -1009f), true)), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-795f, 881f))))) * _wgslsmith_f_op_f32(455f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1343f)) + _wgslsmith_f_op_f32(ceil(1508f)))))));
    var var_4 = var_3;
    var var_5 = Struct_2(Struct_1(2250u, vec4<bool>(1118f > var_3, false, any(vec2<bool>(var_1.c, false)), true), select(vec4<bool>(var_2.c || false, var_2.c, !var_2.c, var_2.c), func_3(func_4(vec4<i32>(var_2.b.x, 0i, 101511i, var_2.b.x), vec3<f32>(var_3, var_3, var_3), 1u), -vec3<i32>(0i, var_2.b.x, global3.x), global2[_wgslsmith_index_u32(func_3(Struct_3(var_1.a, vec2<i32>(-31768i, var_2.b.x), true), vec3<i32>(-1i, global0.x, var_1.b.x), Struct_3(vec2<u32>(17852u, u_input.b.x), vec2<i32>(1i, 1i), false)).b.a, 24u)]).a.c, var_3 <= -637f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_3, 1477f) + vec2<f32>(var_3, var_3)))))), func_3(func_4(vec4<i32>(-1i, 1i, 9132i, var_2.b.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-630f, -1992f, var_3)), 22260u), _wgslsmith_clamp_vec3_i32(vec3<i32>(firstLeadingBit(2147483647i), var_2.b.x, 2147483647i), ~vec3<i32>(-38413i, 1011i, -5510i), ~max(vec3<i32>(global0.x, 1i, -25997i), vec3<i32>(5714i, 0i, -1i))), global2[_wgslsmith_index_u32(u_input.b.x, 24u)]).a, true, func_3(func_4(vec4<i32>(62172i, -2147483647i, 1i, var_1.b.x) << (min(u_input.b, vec4<u32>(var_1.a.x, 4294967295u, u_input.a, 59604u)) % vec4<u32>(32u)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_3, -853f, var_3), vec3<f32>(var_3, 468f, 1487f))), _wgslsmith_div_vec3_f32(vec3<f32>(var_3, 498f, var_3), vec3<f32>(756f, var_3, 298f)), var_2.c)), 2348u), ~vec3<i32>(~global0.x, _wgslsmith_add_i32(var_2.b.x, var_1.b.x), global3.x), global2[_wgslsmith_index_u32(var_2.a.x >> (_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(var_1.a.x, var_1.a.x, 1u, 41694u), vec4<u32>(0u, var_2.a.x, var_2.a.x, 4294967295u)), abs(u_input.b)) % 32u), 24u)]).d);
    var var_6 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(var_5.d.d.x, var_3))))));
    var var_7 = vec4<f32>(var_5.b.d.x, -163f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_5.a.d.x, -1114f)) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_5.b.d.x)))))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1155f)))))));
    let var_8 = Struct_2(Struct_1(min(~var_5.a.a, u_input.a >> (57440u % 32u)) & 6043u, select(vec4<bool>(false, var_1.c, !var_5.b.b.x, all(var_5.b.c.zx)), !select(var_5.b.c, vec4<bool>(true, var_1.c, global4.x, true), var_5.a.b), all(var_5.d.b.zy)), vec4<bool>(all(!vec4<bool>(var_5.d.c.x, true, var_1.c, global4.x)), select(var_5.b.c.x & var_5.a.b.x, var_2.c, var_5.b.b.x), var_1.c, (global0.x != var_2.b.x) | all(global4.yy)), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-var_7.yx)))), Struct_1(var_5.a.a, vec4<bool>(true, true, true, true), !var_5.b.c, var_5.b.d), true, var_5.b);
    let x = u_input.a;
    s_output = StorageBuffer(global3.xz, func_2(var_1.b.x).b.x | _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(global0.yy, var_2.b), var_1.b.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(570f, _wgslsmith_div_f32(_wgslsmith_div_f32(840f, var_3), -1505f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(637f + 707f)))), _wgslsmith_mult_vec4_u32(~u_input.b, _wgslsmith_mod_vec4_u32(vec4<u32>(reverseBits(var_8.d.a), max(39982u, 4463u), u_input.b.x, u_input.b.x), u_input.b)), -34104i);
}


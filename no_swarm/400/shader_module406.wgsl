struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec2<u32>,
    c: vec2<u32>,
    d: vec4<bool>,
    e: vec2<bool>,
}

struct Struct_3 {
    a: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec4<i32>,
    d: vec2<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: vec3<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 13> = array<Struct_1, 13>(Struct_1(vec4<u32>(1u, 31012u, 63421u, 70023u)), Struct_1(vec4<u32>(6902u, 78333u, 40914u, 27492u)), Struct_1(vec4<u32>(1u, 21218u, 11052u, 0u)), Struct_1(vec4<u32>(1u, 0u, 9433u, 23392u)), Struct_1(vec4<u32>(1u, 26110u, 4294967295u, 0u)), Struct_1(vec4<u32>(0u, 2697u, 4294967295u, 0u)), Struct_1(vec4<u32>(31923u, 0u, 21352u, 85600u)), Struct_1(vec4<u32>(4294967295u, 61787u, 45338u, 3785u)), Struct_1(vec4<u32>(0u, 2527u, 0u, 1u)), Struct_1(vec4<u32>(4294967295u, 20898u, 34049u, 1u)), Struct_1(vec4<u32>(33049u, 4294967295u, 33418u, 6532u)), Struct_1(vec4<u32>(4294967295u, 0u, 0u, 4294967295u)), Struct_1(vec4<u32>(1u, 0u, 1u, 4294967295u)));

var<private> global1: array<bool, 16> = array<bool, 16>(true, true, false, false, false, false, true, true, true, false, true, false, true, true, true, true);

var<private> global2: array<Struct_1, 21> = array<Struct_1, 21>(Struct_1(vec4<u32>(1u, 0u, 59454u, 25518u)), Struct_1(vec4<u32>(28895u, 1u, 4294967295u, 4294967295u)), Struct_1(vec4<u32>(0u, 4294967295u, 22680u, 0u)), Struct_1(vec4<u32>(21148u, 4294967295u, 1u, 1u)), Struct_1(vec4<u32>(1442u, 45167u, 0u, 23093u)), Struct_1(vec4<u32>(1u, 36829u, 80615u, 1u)), Struct_1(vec4<u32>(19793u, 4294967295u, 4294967295u, 53206u)), Struct_1(vec4<u32>(4294967295u, 1u, 1u, 168u)), Struct_1(vec4<u32>(7932u, 6139u, 1u, 0u)), Struct_1(vec4<u32>(0u, 0u, 4294967295u, 0u)), Struct_1(vec4<u32>(83375u, 26022u, 51546u, 15382u)), Struct_1(vec4<u32>(4294967295u, 1u, 1u, 4294967295u)), Struct_1(vec4<u32>(32594u, 0u, 4294967295u, 1u)), Struct_1(vec4<u32>(1u, 58310u, 28989u, 0u)), Struct_1(vec4<u32>(70976u, 24712u, 24614u, 53157u)), Struct_1(vec4<u32>(0u, 46507u, 4294967295u, 4294967295u)), Struct_1(vec4<u32>(4294967295u, 67175u, 1772u, 1u)), Struct_1(vec4<u32>(4294967295u, 52994u, 56513u, 0u)), Struct_1(vec4<u32>(61249u, 39240u, 4294967295u, 4294967295u)), Struct_1(vec4<u32>(48366u, 1824u, 1u, 4294967295u)), Struct_1(vec4<u32>(1u, 51030u, 1u, 4294967295u)));

var<private> global3: array<f32, 32>;

var<private> global4: Struct_3 = Struct_3(25888u);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: f32) -> vec2<bool> {
    var var_0 = -512f;
    var var_1 = Struct_2(!vec3<bool>(any(!vec4<bool>(global1[_wgslsmith_index_u32(31685u, 16u)], true, false, global1[_wgslsmith_index_u32(u_input.e.x, 16u)])), global1[_wgslsmith_index_u32(0u, 16u)], any(select(vec2<bool>(true, true), vec2<bool>(global1[_wgslsmith_index_u32(13468u, 16u)], global1[_wgslsmith_index_u32(0u, 16u)]), vec2<bool>(true, false)))), (vec2<u32>(~29629u, countOneBits(global4.a)) | (u_input.e.zx >> (~vec2<u32>(global4.a, global4.a) % vec2<u32>(32u)))) & (min(vec2<u32>(u_input.e.x, global4.a), ~vec2<u32>(0u, global4.a)) >> (~u_input.e.yx % vec2<u32>(32u))), reverseBits(_wgslsmith_sub_vec2_u32(~select(u_input.e.yz, u_input.e.xy, true), _wgslsmith_sub_vec2_u32(vec2<u32>(38885u, 43785u) & vec2<u32>(u_input.b, u_input.e.x), u_input.e.xz))), vec4<bool>(any(select(vec3<bool>(global1[_wgslsmith_index_u32(14867u, 16u)], global1[_wgslsmith_index_u32(u_input.b, 16u)], global1[_wgslsmith_index_u32(global4.a, 16u)]), !vec3<bool>(global1[_wgslsmith_index_u32(u_input.b, 16u)], global1[_wgslsmith_index_u32(1u, 16u)], true), u_input.c.x >= u_input.a.x)), global1[_wgslsmith_index_u32(u_input.e.x, 16u)], true, !(!select(false, true, global1[_wgslsmith_index_u32(7632u, 16u)]))), select(select(select(select(vec2<bool>(false, global1[_wgslsmith_index_u32(37273u, 16u)]), vec2<bool>(true, true), vec2<bool>(global1[_wgslsmith_index_u32(global4.a, 16u)], false)), vec2<bool>(global1[_wgslsmith_index_u32(u_input.e.x, 16u)], global1[_wgslsmith_index_u32(26923u, 16u)]), select(vec2<bool>(global1[_wgslsmith_index_u32(137813u, 16u)], true), vec2<bool>(global1[_wgslsmith_index_u32(48676u, 16u)], false), vec2<bool>(global1[_wgslsmith_index_u32(global4.a, 16u)], true))), vec2<bool>(true, global1[_wgslsmith_index_u32(u_input.b, 16u)]), select(select(vec2<bool>(true, global1[_wgslsmith_index_u32(1u, 16u)]), vec2<bool>(global1[_wgslsmith_index_u32(u_input.b, 16u)], true), global1[_wgslsmith_index_u32(4294967295u, 16u)]), !vec2<bool>(true, global1[_wgslsmith_index_u32(u_input.e.x, 16u)]), vec2<bool>(true, true))), vec2<bool>((29504i != u_input.a.x) | !global1[_wgslsmith_index_u32(0u, 16u)], global1[_wgslsmith_index_u32(~8851u, 16u)]), !all(select(vec3<bool>(false, global1[_wgslsmith_index_u32(1u, 16u)], false), vec3<bool>(global1[_wgslsmith_index_u32(0u, 16u)], global1[_wgslsmith_index_u32(u_input.b, 16u)], false), vec3<bool>(global1[_wgslsmith_index_u32(4294967295u, 16u)], global1[_wgslsmith_index_u32(u_input.b, 16u)], false)))));
    let var_2 = var_1.e;
    var var_3 = select(_wgslsmith_clamp_i32(min(u_input.c.x, -1i), firstLeadingBit(-2147483647i), ~abs(u_input.c.x)), u_input.c.x, true);
    let var_4 = u_input.e.x;
    return !vec2<bool>(any(var_1.d.yy), arg_0 < 1000f);
}

fn func_2(arg_0: bool, arg_1: bool, arg_2: f32, arg_3: Struct_2) -> bool {
    var var_0 = _wgslsmith_div_vec2_i32(firstTrailingBit(select(vec2<i32>(-u_input.a.x, -12149i ^ u_input.c.x), ~vec2<i32>(u_input.a.x, u_input.a.x) << (~vec2<u32>(u_input.b, global4.a) % vec2<u32>(32u)), func_3(_wgslsmith_f_op_f32(1248f * -1044f)))), ~vec2<i32>(u_input.d.x, _wgslsmith_sub_i32(u_input.a.x, u_input.c.x) << (~u_input.b % 32u)));
    global3 = array<f32, 32>();
    var var_1 = Struct_1(vec4<u32>(~(~_wgslsmith_clamp_u32(118480u, u_input.e.x, 0u)), 10758u, _wgslsmith_sub_u32(u_input.b, _wgslsmith_div_u32(~11469u, global4.a)), global4.a));
    global3 = array<f32, 32>();
    return !arg_3.e.x;
}

fn func_1(arg_0: vec2<u32>, arg_1: vec4<u32>, arg_2: Struct_3) -> i32 {
    let var_0 = vec3<bool>(((true != func_2(false, global1[_wgslsmith_index_u32(0u, 16u)], global3[_wgslsmith_index_u32(18162u, 32u)], Struct_2(vec3<bool>(true, global1[_wgslsmith_index_u32(arg_1.x, 16u)], global1[_wgslsmith_index_u32(arg_2.a, 16u)]), vec2<u32>(4294967295u, 34564u), vec2<u32>(arg_0.x, 5701u), vec4<bool>(global1[_wgslsmith_index_u32(arg_2.a, 16u)], false, global1[_wgslsmith_index_u32(arg_2.a, 16u)], false), vec2<bool>(true, global1[_wgslsmith_index_u32(3166u, 16u)])))) || true) | !(!global1[_wgslsmith_index_u32(global4.a, 16u)]), global1[_wgslsmith_index_u32(arg_2.a, 16u)], false);
    let var_1 = vec4<f32>(1043f, _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.e.x, _wgslsmith_dot_vec3_u32(vec3<u32>(34353u, arg_0.x, 34106u) >> (vec3<u32>(1u, global4.a, 40913u) % vec3<u32>(32u)), ~arg_1.xzy)), 32u)] + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(global4.a, 32u)])) * _wgslsmith_f_op_f32(trunc(-1575f)))), global3[_wgslsmith_index_u32(arg_0.x, 32u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(firstLeadingBit(arg_2.a) ^ 6597u, 32u)]) + _wgslsmith_f_op_f32(select(340f, -445f, func_2(var_0.x, all(vec2<bool>(true, true)), _wgslsmith_f_op_f32(max(611f, global3[_wgslsmith_index_u32(arg_0.x, 32u)])), Struct_2(var_0, vec2<u32>(1u, arg_2.a), vec2<u32>(arg_2.a, 1u), vec4<bool>(global1[_wgslsmith_index_u32(u_input.b, 16u)], global1[_wgslsmith_index_u32(u_input.e.x, 16u)], var_0.x, var_0.x), var_0.xx))))));
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(var_1.zxx)) * _wgslsmith_f_op_vec3_f32(var_1.zzz - _wgslsmith_f_op_vec3_f32(sign(var_1.wwz))));
    var var_3 = Struct_2(vec3<bool>(var_0.x, !(!global1[_wgslsmith_index_u32(85057u, 16u)]), all(!select(vec4<bool>(true, var_0.x, global1[_wgslsmith_index_u32(12029u, 16u)], var_0.x), vec4<bool>(false, var_0.x, global1[_wgslsmith_index_u32(59970u, 16u)], var_0.x), vec4<bool>(true, var_0.x, var_0.x, var_0.x)))), vec2<u32>(select(160u, 4294967295u, true), select(~(~80589u), _wgslsmith_dot_vec3_u32(arg_1.yyw, vec3<u32>(1u, 59162u, 48753u)), true)), abs(vec2<u32>(abs(~global4.a), countOneBits(arg_0.x) | 0u)), !select(select(vec4<bool>(global1[_wgslsmith_index_u32(arg_1.x, 16u)], true, false, var_0.x), vec4<bool>(false, var_0.x, var_0.x, true), true), select(!vec4<bool>(global1[_wgslsmith_index_u32(arg_2.a, 16u)], global1[_wgslsmith_index_u32(arg_2.a, 16u)], false, global1[_wgslsmith_index_u32(147133u, 16u)]), select(vec4<bool>(true, true, true, var_0.x), vec4<bool>(false, true, var_0.x, global1[_wgslsmith_index_u32(4294967295u, 16u)]), vec4<bool>(var_0.x, global1[_wgslsmith_index_u32(28306u, 16u)], false, global1[_wgslsmith_index_u32(u_input.e.x, 16u)])), select(vec4<bool>(var_0.x, var_0.x, true, var_0.x), vec4<bool>(true, true, true, false), vec4<bool>(true, var_0.x, var_0.x, global1[_wgslsmith_index_u32(arg_0.x, 16u)]))), select(select(vec4<bool>(false, var_0.x, global1[_wgslsmith_index_u32(0u, 16u)], true), vec4<bool>(global1[_wgslsmith_index_u32(arg_0.x, 16u)], true, global1[_wgslsmith_index_u32(1u, 16u)], false), true), vec4<bool>(global1[_wgslsmith_index_u32(arg_2.a, 16u)], global1[_wgslsmith_index_u32(arg_2.a, 16u)], var_0.x, global1[_wgslsmith_index_u32(arg_2.a, 16u)]), !vec4<bool>(true, global1[_wgslsmith_index_u32(arg_0.x, 16u)], false, false))), select(func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1225f + -174f) * _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(1u, 32u)]))), vec2<bool>(-u_input.a.x >= u_input.c.x, _wgslsmith_mult_i32(u_input.c.x, u_input.d.x) >= u_input.a.x), func_3(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(var_1.x)))))));
    var_3 = Struct_2(var_3.a, vec2<u32>(global4.a, ~35252u), abs(_wgslsmith_sub_vec2_u32(arg_0, arg_1.xx)), select(select(!select(var_3.d, var_3.d, false), var_3.d, all(vec3<bool>(true, true, true))), vec4<bool>(global1[_wgslsmith_index_u32(~arg_0.x, 16u)], func_2(all(vec4<bool>(true, false, true, var_0.x)), !global1[_wgslsmith_index_u32(19364u, 16u)], _wgslsmith_f_op_f32(step(-144f, -1292f)), Struct_2(var_0, vec2<u32>(arg_1.x, global4.a), arg_1.yy, vec4<bool>(true, var_0.x, true, true), vec2<bool>(false, false))), !(!var_0.x), any(var_0)), select(select(select(var_3.d, vec4<bool>(var_3.e.x, var_0.x, global1[_wgslsmith_index_u32(13194u, 16u)], true), true), var_3.d, !global1[_wgslsmith_index_u32(arg_1.x, 16u)]), var_3.d, !(93657u >= global4.a))), vec2<bool>(true, all(vec2<bool>(true, true))));
    return select(-1i, -1i, all(vec4<bool>((var_0.x | false) && (arg_2.a >= arg_0.x), all(!vec3<bool>(var_3.e.x, global1[_wgslsmith_index_u32(0u, 16u)], true)), false, all(var_3.d.yyy))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1[_wgslsmith_index_u32(global4.a, 16u)];
    global3 = array<f32, 32>();
    let var_1 = _wgslsmith_mult_i32(_wgslsmith_div_i32(-_wgslsmith_mult_i32(func_1(vec2<u32>(1u, global4.a), vec4<u32>(28205u, 4294967295u, u_input.b, u_input.b), Struct_3(u_input.b)), max(u_input.d.x, u_input.a.x)), _wgslsmith_dot_vec3_i32(reverseBits(_wgslsmith_clamp_vec3_i32(u_input.c.wyw, vec3<i32>(u_input.d.x, u_input.a.x, u_input.a.x), u_input.c.xwx)), vec3<i32>(i32(-1i) * -14970i, u_input.d.x, u_input.d.x))), max(~2147483647i, _wgslsmith_dot_vec4_i32(u_input.c, -u_input.c | vec4<i32>(1i, 24810i, -2147483647i, -2147483647i))));
    global0 = array<Struct_1, 13>();
    global1 = array<bool, 16>();
    global0 = array<Struct_1, 13>();
    let var_2 = Struct_2(select(!vec3<bool>(any(vec4<bool>(global1[_wgslsmith_index_u32(u_input.e.x, 16u)], global1[_wgslsmith_index_u32(0u, 16u)], false, true)), true, true), !select(vec3<bool>(true, false, global1[_wgslsmith_index_u32(u_input.e.x, 16u)]), !vec3<bool>(global1[_wgslsmith_index_u32(u_input.e.x, 16u)], global1[_wgslsmith_index_u32(2333u, 16u)], true), !vec3<bool>(global1[_wgslsmith_index_u32(4294967295u, 16u)], global1[_wgslsmith_index_u32(global4.a, 16u)], global1[_wgslsmith_index_u32(global4.a, 16u)])), vec3<bool>(true, true, true)), _wgslsmith_clamp_vec2_u32(firstTrailingBit(~vec2<u32>(1u, 17963u)), ~max(u_input.e.yx, u_input.e.yx), ~(~firstTrailingBit(u_input.e.xy))), u_input.e.yy, select(select(!select(vec4<bool>(global1[_wgslsmith_index_u32(global4.a, 16u)], global1[_wgslsmith_index_u32(u_input.b, 16u)], global1[_wgslsmith_index_u32(22888u, 16u)], false), vec4<bool>(true, false, false, global1[_wgslsmith_index_u32(global4.a, 16u)]), false), vec4<bool>(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(20493u, 9692u, u_input.e.x, 35334u), vec4<u32>(36209u, 1u, 69228u, 4294967295u)), 16u)], true, func_2(true, true, global3[_wgslsmith_index_u32(u_input.b, 32u)], Struct_2(vec3<bool>(global1[_wgslsmith_index_u32(0u, 16u)], global1[_wgslsmith_index_u32(1u, 16u)], global1[_wgslsmith_index_u32(1753u, 16u)]), u_input.e.xx, u_input.e.xz, vec4<bool>(global1[_wgslsmith_index_u32(1u, 16u)], true, true, true), vec2<bool>(global1[_wgslsmith_index_u32(u_input.e.x, 16u)], global1[_wgslsmith_index_u32(global4.a, 16u)]))), true), var_1 >= 2147483647i), !select(vec4<bool>(global1[_wgslsmith_index_u32(u_input.b, 16u)], global1[_wgslsmith_index_u32(4294967295u, 16u)], global1[_wgslsmith_index_u32(global4.a, 16u)], global1[_wgslsmith_index_u32(global4.a, 16u)]), !vec4<bool>(false, global1[_wgslsmith_index_u32(u_input.e.x, 16u)], true, true), vec4<bool>(global1[_wgslsmith_index_u32(49374u, 16u)], false, global1[_wgslsmith_index_u32(51625u, 16u)], false)), select(vec4<bool>(func_3(global3[_wgslsmith_index_u32(4294967295u, 32u)]).x, any(vec3<bool>(true, true, false)), u_input.a.x >= var_1, true), !select(vec4<bool>(global1[_wgslsmith_index_u32(u_input.b, 16u)], false, global1[_wgslsmith_index_u32(u_input.e.x, 16u)], true), vec4<bool>(false, global1[_wgslsmith_index_u32(0u, 16u)], false, false), global1[_wgslsmith_index_u32(global4.a, 16u)]), global1[_wgslsmith_index_u32(u_input.e.x, 16u)])), vec2<bool>(!any(!vec2<bool>(global1[_wgslsmith_index_u32(global4.a, 16u)], true)), _wgslsmith_dot_vec2_u32(firstLeadingBit(vec2<u32>(0u, 0u)), vec2<u32>(4294967295u, 0u)) <= global4.a));
    let var_3 = -u_input.c;
    global1 = array<bool, 16>();
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(-347f, -1162f, global3[_wgslsmith_index_u32(var_2.b.x, 32u)]), 1u, var_3.wwy, _wgslsmith_div_f32(global3[_wgslsmith_index_u32(~(~(var_2.c.x | u_input.e.x)), 32u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(1u, 32u)])))));
}


struct Struct_1 {
    a: vec4<u32>,
    b: bool,
    c: vec2<i32>,
    d: vec3<bool>,
}

struct Struct_2 {
    a: i32,
    b: vec2<i32>,
    c: vec2<f32>,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: vec3<i32>,
    d: vec4<f32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<u32>(4294967295u, 1u, 0u, 0u), true, vec2<i32>(0i, 0i), vec3<bool>(true, true, false));

var<private> global1: vec4<i32>;

var<private> global2: array<vec2<f32>, 5>;

var<private> global3: Struct_1 = Struct_1(vec4<u32>(76708u, 0u, 53143u, 1u), false, vec2<i32>(11994i, 0i), vec3<bool>(true, false, true));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: vec2<i32>) -> bool {
    let var_0 = Struct_1(firstTrailingBit(select(_wgslsmith_clamp_vec4_u32(global3.a, global3.a, global3.a >> (global3.a % vec4<u32>(32u))), vec4<u32>(_wgslsmith_mult_u32(33114u, global0.a.x), 23124u, 1u, _wgslsmith_mult_u32(global3.a.x, 26215u)), vec4<bool>(true, true, !global3.d.x, !global0.d.x))), true, ~(-_wgslsmith_clamp_vec2_i32(arg_0 & vec2<i32>(global1.x, global3.c.x), u_input.c.yw, vec2<i32>(-2597i, global3.c.x))), select(vec3<bool>(global3.d.x, true, all(vec4<bool>(global3.d.x, false, true, true))), global0.d, select(vec3<bool>(global0.b, select(true, global3.d.x, global3.d.x), global3.d.x), vec3<bool>(any(global3.d.zy), 6025u > u_input.b, global3.d.x), vec3<bool>(all(vec4<bool>(false, global0.b, true, global0.b)), global0.d.x, global3.b))));
    global1 = vec4<i32>(_wgslsmith_dot_vec2_i32(~vec2<i32>(-2231i, 14878i) >> (~(~vec2<u32>(u_input.b, var_0.a.x)) % vec2<u32>(32u)), u_input.c.yw & select(vec2<i32>(-29032i, 0i) >> (global0.a.xw % vec2<u32>(32u)), max(var_0.c, u_input.c.yw), vec2<bool>(global0.d.x, false))), 5096i, -(~1i), -40233i);
    let var_1 = var_0;
    global1 = _wgslsmith_mod_vec4_i32(abs(abs(_wgslsmith_div_vec4_i32(-vec4<i32>(global3.c.x, 0i, global3.c.x, u_input.a), vec4<i32>(-18895i, -31282i, -45867i, -12143i)))), max(vec4<i32>(-12812i, abs(select(-9707i, 4789i, var_0.b)), _wgslsmith_dot_vec3_i32(-global1.yzw, global1.xzx), 1i), _wgslsmith_sub_vec4_i32(vec4<i32>(2147483647i, global1.x, var_1.c.x, -2147483647i), -vec4<i32>(0i, 19235i, var_0.c.x, u_input.c.x)) >> ((var_0.a >> (_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, global3.a.x, var_1.a.x, var_1.a.x), var_0.a) % vec4<u32>(32u))) % vec4<u32>(32u))));
    global1 = vec4<i32>(18548i, _wgslsmith_clamp_i32(global1.x, _wgslsmith_mod_i32(-17242i, i32(-1i) * -23537i), reverseBits(select(countOneBits(31817i), -1406i, false))), min(_wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(var_0.c.x, -1i), global0.c), vec2<i32>(global0.c.x, 28346i)), arg_0.x, ~_wgslsmith_clamp_i32(11185i, global0.c.x, 1833i)), _wgslsmith_sub_i32(max(_wgslsmith_dot_vec2_i32(global0.c, u_input.c.zz), var_0.c.x), -abs(21942i))), var_0.c.x);
    return all(select(vec2<bool>(var_1.d.x, var_1.b), !(!var_0.d.zx), vec2<bool>(false, var_1.b)));
}

fn func_2(arg_0: i32, arg_1: Struct_1, arg_2: Struct_1) -> f32 {
    let var_0 = Struct_2(0i, _wgslsmith_div_vec2_i32(vec2<i32>(arg_0, global3.c.x), select(_wgslsmith_mult_vec2_i32(vec2<i32>(arg_0, arg_1.c.x), vec2<i32>(-2147483647i, -28755i)), ~vec2<i32>(u_input.d, 1i), true)) ^ ~vec2<i32>(~arg_1.c.x, ~global3.c.x), _wgslsmith_f_op_vec2_f32(global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(arg_1.a.x & 3798u, u_input.b), 5u)] - global2[_wgslsmith_index_u32(~40528u, 5u)]), global1.wyw);
    var var_1 = !select(vec2<bool>(func_3(vec2<i32>(arg_1.c.x, var_0.d.x) << (vec2<u32>(arg_2.a.x, global3.a.x) % vec2<u32>(32u))), u_input.b == ~u_input.b), !arg_2.d.xx, arg_1.d.zy);
    let var_2 = select(!select(!vec4<bool>(global3.d.x, global3.b, true, arg_2.b), !select(vec4<bool>(arg_1.d.x, global0.b, false, arg_1.b), vec4<bool>(arg_1.b, true, false, true), var_1.x), firstTrailingBit(arg_1.c.x) > ~var_0.a), !(!vec4<bool>(true, func_3(vec2<i32>(global3.c.x, arg_2.c.x)), true, all(vec4<bool>(global3.d.x, var_1.x, global3.b, false)))), all(vec3<bool>(!arg_1.b, true != (var_0.b.x <= global1.x), true && global3.b)));
    var var_3 = Struct_2(~1i, _wgslsmith_mult_vec2_i32(abs(firstTrailingBit(u_input.c.xw)) | ~global3.c, -abs(vec2<i32>(0i, arg_1.c.x))), var_0.c, u_input.c.yyz);
    global1 = firstLeadingBit(vec4<i32>(_wgslsmith_mod_i32(616i, reverseBits(~global0.c.x)), 62156i, global1.x, _wgslsmith_dot_vec2_i32(var_0.d.zy, abs(select(vec2<i32>(0i, var_0.a), global3.c, global3.d.xz)))));
    return var_0.c.x;
}

fn func_1(arg_0: i32, arg_1: u32) -> vec3<i32> {
    global2 = array<vec2<f32>, 5>();
    global1 = -_wgslsmith_add_vec4_i32(select(vec4<i32>(-1i & arg_0, abs(1i), global1.x >> (90684u % 32u), -1i), vec4<i32>(_wgslsmith_mod_i32(2147483647i, -1i), global0.c.x, u_input.c.x, 1i), select(!vec4<bool>(false, false, global0.b, global0.d.x), !vec4<bool>(global0.b, global3.d.x, global3.d.x, global0.b), select(vec4<bool>(false, true, global3.b, false), vec4<bool>(false, false, false, false), vec4<bool>(global0.d.x, false, false, global0.d.x)))), u_input.c);
    let var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -544f), _wgslsmith_f_op_f32(func_2(1i, Struct_1(vec4<u32>(u_input.b, 45679u, 4294967295u, u_input.b), global3.d.x, u_input.c.yw, global0.d), Struct_1(vec4<u32>(107141u, 60799u, arg_1, 0u), true, global3.c, vec3<bool>(global0.b, false, false)))), -427f, 151f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1160f, -1598f, -565f, -853f)) - _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(371f, 1040f, -957f, -850f)))))));
    global1 = _wgslsmith_sub_vec4_i32(u_input.c, vec4<i32>(global1.x, abs(-12017i), (u_input.d >> (firstTrailingBit(4294967295u) % 32u)) >> (abs(0u) % 32u), ~arg_0));
    global0 = Struct_1(~(~(~vec4<u32>(4294967295u, 15107u, 4294967295u, 4294967295u))) | ~firstTrailingBit(vec4<u32>(4294967295u, global3.a.x, u_input.b, global0.a.x)), any(vec3<bool>(18503u < select(global3.a.x, 6041u, false), global0.d.x, global3.b)), ~firstLeadingBit(global1.wx), global3.d);
    return select(_wgslsmith_div_vec3_i32(u_input.c.xwx, abs(u_input.c.wxz)), _wgslsmith_mod_vec3_i32(abs(min(abs(vec3<i32>(-1i, u_input.c.x, global0.c.x)), global1.xzx)), ~global1.wyx), vec3<bool>(true & !global0.d.x, global0.b, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1571f))) <= _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-397f - -242f), -408f))));
}

fn func_4(arg_0: u32, arg_1: Struct_2, arg_2: vec4<bool>) -> Struct_1 {
    global3 = Struct_1(~reverseBits(reverseBits(global0.a ^ global0.a)), all(arg_2.xxz), -(select(vec2<i32>(50862i, 38079i), abs(global1.zx), !vec2<bool>(arg_2.x, true)) | _wgslsmith_clamp_vec2_i32(-global0.c, u_input.c.yy, _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.c.x, global3.c.x), vec2<i32>(1i, global1.x)))), select(vec3<bool>(func_3(vec2<i32>(64762i, global3.c.x)), arg_2.x, arg_1.a > 38407i), select(select(arg_2.zww, select(global0.d, global3.d, arg_2.x), select(global0.d, vec3<bool>(arg_2.x, true, arg_2.x), global3.d)), !arg_2.wzz, select(vec3<bool>(global0.d.x, false, true), vec3<bool>(global0.d.x, global3.b, true), vec3<bool>(false, true, false))), !arg_2.zyw));
    global1 = countOneBits(firstTrailingBit(_wgslsmith_mod_vec4_i32(u_input.c, _wgslsmith_sub_vec4_i32(vec4<i32>(-2147483647i, -3892i, -24967i, global1.x), u_input.c) | _wgslsmith_sub_vec4_i32(u_input.c, vec4<i32>(2147483647i, 2147483647i, -1i, 2147483647i)))));
    global0 = Struct_1(global0.a, !(!select(true, true, global3.d.x || global0.d.x)), global3.c, vec3<bool>(false, !global0.d.x, global0.b));
    var var_0 = arg_1;
    global3 = Struct_1(global0.a, !(arg_1.c.x > _wgslsmith_f_op_f32(-arg_1.c.x)), u_input.c.xw, global3.d);
    return Struct_1(max(vec4<u32>(global0.a.x, ~44815u, global3.a.x, ~_wgslsmith_div_u32(1u, 13491u)), ~(firstLeadingBit(global0.a) & global3.a)), arg_2.x, vec2<i32>(-1i) * -(select(vec2<i32>(arg_1.b.x, global3.c.x), global1.yw, global0.d.yy) & vec2<i32>(44352i, 47729i)), select(global0.d, !vec3<bool>(all(arg_2.wxx), global0.b, any(vec2<bool>(false, true))), !select(global3.d, arg_2.xyx, false)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(~u_input.b, Struct_2(reverseBits(-global1.x) << (~firstLeadingBit(global3.a.x) % 32u), reverseBits(~u_input.c.zw), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(min(global2[_wgslsmith_index_u32(0u, 5u)], vec2<f32>(737f, 441f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(global2[_wgslsmith_index_u32(global3.a.x, 5u)])) - vec2<f32>(-314f, -1004f))), func_1(global0.c.x, select(99876u, ~18393u, true))), vec4<bool>(true, true, true, global0.b == !all(global0.d)));
    var var_1 = 1164f;
    global3 = func_4(u_input.b, Struct_2(global3.c.x >> (abs(1u | u_input.b) % 32u), var_0.c, vec2<f32>(-391f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -996f), 1093f))), _wgslsmith_clamp_vec3_i32(vec3<i32>(_wgslsmith_sub_i32(-1i, -19676i), select(var_0.c.x, global0.c.x, var_0.d.x), -43695i), select(reverseBits(vec3<i32>(25603i, 28933i, -2147483647i)), abs(global1.zwz), !var_0.b), -(vec3<i32>(global3.c.x, global3.c.x, u_input.c.x) >> (global0.a.xyx % vec3<u32>(32u))))), !select(select(vec4<bool>(false, global0.d.x, global0.b, global3.b), vec4<bool>(global0.b, false, false, true), true), select(select(vec4<bool>(global3.b, false, global0.d.x, var_0.b), vec4<bool>(false, true, false, global0.d.x), true), vec4<bool>(true, true, false, global3.b), !vec4<bool>(false, global3.b, global3.d.x, true)), global3.d.x));
    global3 = Struct_1(vec4<u32>(~_wgslsmith_dot_vec3_u32(vec3<u32>(global3.a.x, var_0.a.x, var_0.a.x), countOneBits(global3.a.xyw)), var_0.a.x, var_0.a.x >> (~(~76442u) % 32u), global0.a.x), true, var_0.c, vec3<bool>(true, true, true));
    var var_2 = 69u;
    global0 = Struct_1(_wgslsmith_mult_vec4_u32(abs(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.b, 38205u, global0.a.x, 1u), global3.a) << (vec4<u32>(38941u, global3.a.x, var_0.a.x, global3.a.x) % vec4<u32>(32u))), ~global3.a), global0.d.x, _wgslsmith_mod_vec2_i32(u_input.c.wy, max(u_input.c.wx, vec2<i32>(firstLeadingBit(-17941i), ~global0.c.x))), vec3<bool>(!global3.b, global3.b, false));
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.c.zxx, _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-1313f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(-129f, -1422f)))))), -438f), vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(58416i, global0.c.x, -21350i, var_0.c.x), vec4<i32>(global1.x, 1i, 70217i, 13425i)) | abs(global1.x), 0i, u_input.d) & global1.wyw, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1002f, -699f, -2062f, 453f) + vec4<f32>(1008f, 570f, 493f, -760f)))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1033f), _wgslsmith_f_op_f32(f32(-1f) * -875f), -1062f, _wgslsmith_f_op_f32(f32(-1f) * -1166f))))), ~vec4<u32>(_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.b, var_0.a.x, 41882u), vec4<u32>(0u, var_0.a.x, var_0.a.x, 47850u)), _wgslsmith_add_u32(var_0.a.x, 0u)), ~(~45370u), u_input.b, 3081u & _wgslsmith_mod_u32(global0.a.x, 3442u)));
}


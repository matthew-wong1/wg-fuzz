struct Struct_1 {
    a: i32,
    b: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: i32,
    d: i32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<f32>,
    c: vec3<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 27> = array<Struct_1, 27>(Struct_1(89047i, 2147483647i), Struct_1(i32(-2147483648), 45780i), Struct_1(2147483647i, -33243i), Struct_1(11967i, 0i), Struct_1(1i, -1i), Struct_1(-9123i, i32(-2147483648)), Struct_1(7503i, 0i), Struct_1(i32(-2147483648), 0i), Struct_1(22477i, 40340i), Struct_1(-1i, 1i), Struct_1(-46498i, 73886i), Struct_1(-17i, -21678i), Struct_1(1i, 12821i), Struct_1(2147483647i, -12704i), Struct_1(16990i, 21467i), Struct_1(-1i, 1750i), Struct_1(-72384i, 2147483647i), Struct_1(-55035i, 19391i), Struct_1(i32(-2147483648), 1i), Struct_1(-27796i, i32(-2147483648)), Struct_1(-62247i, 1i), Struct_1(i32(-2147483648), 607i), Struct_1(-10991i, -1i), Struct_1(2147483647i, -22778i), Struct_1(1i, -6575i), Struct_1(0i, -2605i), Struct_1(i32(-2147483648), -4378i));

var<private> global1: array<Struct_1, 26> = array<Struct_1, 26>(Struct_1(23340i, 781i), Struct_1(-51585i, -23170i), Struct_1(7021i, -9116i), Struct_1(12619i, -10343i), Struct_1(1i, -19157i), Struct_1(-16487i, i32(-2147483648)), Struct_1(-47326i, i32(-2147483648)), Struct_1(1178i, -14160i), Struct_1(59122i, 2147483647i), Struct_1(1i, 1i), Struct_1(2147483647i, 2147483647i), Struct_1(-16338i, -1604i), Struct_1(-18550i, 2147483647i), Struct_1(40624i, i32(-2147483648)), Struct_1(i32(-2147483648), 72821i), Struct_1(-3199i, -31079i), Struct_1(-16661i, -12039i), Struct_1(39474i, 1i), Struct_1(2147483647i, 7068i), Struct_1(2721i, 0i), Struct_1(52031i, 0i), Struct_1(4593i, 13219i), Struct_1(2147483647i, 47621i), Struct_1(9250i, 7764i), Struct_1(0i, 15735i), Struct_1(24769i, 1i));

var<private> global2: Struct_1;

var<private> global3: f32;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2() -> Struct_1 {
    let var_0 = true;
    var var_1 = Struct_1(-36179i, _wgslsmith_mult_i32(countOneBits(~global2.b), firstLeadingBit(-(i32(-1i) * -2147483647i))));
    var_1 = Struct_1(abs(_wgslsmith_div_i32(u_input.c, -reverseBits(var_1.b))), 0i);
    var var_2 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_div_f32(-154f, 722f), _wgslsmith_f_op_f32(sign(-461f)), _wgslsmith_f_op_f32(-421f - -2014f), _wgslsmith_div_f32(839f, -2385f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-1201f, -169f, -1000f, 260f), vec4<f32>(-1506f, 267f, -994f, -1015f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(290f, -1493f, -1000f, -511f)))))))));
    var var_3 = Struct_1(_wgslsmith_dot_vec3_i32(reverseBits(~countOneBits(vec3<i32>(global2.a, u_input.c, 26782i))), _wgslsmith_add_vec3_i32(~(vec3<i32>(var_1.b, 11354i, u_input.a) >> (vec3<u32>(22153u, u_input.e.x, 0u) % vec3<u32>(32u))), abs(_wgslsmith_mod_vec3_i32(vec3<i32>(-5649i, var_1.a, u_input.d), vec3<i32>(var_1.a, var_1.a, u_input.a))))), u_input.c);
    return Struct_1(0i, ~abs(1i));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: f32) -> i32 {
    var var_0 = -12294i;
    global0 = array<Struct_1, 27>();
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -844f), 864f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2076f) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_2)))));
    global3 = -402f;
    let var_2 = _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(118f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1191f, _wgslsmith_f_op_f32(select(var_1.x, var_1.x, false))) + _wgslsmith_f_op_f32(-var_1.x)), _wgslsmith_f_op_f32(202f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(813f, -833f, true)))))));
    return u_input.d;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> u32 {
    var var_0 = func_2();
    var var_1 = _wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1389f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1612f * -328f)))))));
    var var_2 = abs(-reverseBits(1i) ^ ~_wgslsmith_add_i32(-arg_1.b, -23044i));
    global0 = array<Struct_1, 27>();
    var var_3 = Struct_1(_wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(-vec4<i32>(59931i, arg_1.b, 1i, -33992i), _wgslsmith_sub_vec4_i32(vec4<i32>(9505i, arg_2.a, arg_3.a, 1i), vec4<i32>(-28473i, 26974i, -11008i, u_input.d)), vec4<i32>(arg_3.b, arg_0.b, -42046i, 49360i)) | vec4<i32>(_wgslsmith_mult_i32(1i, arg_1.a), 0i, -1i, ~(-1i)), -countOneBits(vec4<i32>(arg_2.a, -14816i, arg_1.a, u_input.a))), global2.a);
    return abs(max(_wgslsmith_div_u32(~8782u, ~u_input.e.x), _wgslsmith_clamp_u32(_wgslsmith_clamp_u32(u_input.e.x, 58641u, 0u), ~u_input.e.x, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.e.x, u_input.b.x, u_input.b.x, 75623u), vec4<u32>(0u, 0u, 1u, u_input.e.x)))) >> (u_input.e.x % 32u));
}

fn func_1(arg_0: vec4<i32>, arg_1: u32) -> Struct_1 {
    var var_0 = global0[_wgslsmith_index_u32(26800u, 27u)];
    var var_1 = _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-280f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1028f, _wgslsmith_f_op_f32(floor(374f))))), _wgslsmith_f_op_f32(ceil(-1717f)), _wgslsmith_f_op_f32(floor(654f)))));
    global2 = global1[_wgslsmith_index_u32(arg_1, 26u)];
    global2 = global0[_wgslsmith_index_u32(func_4(func_2(), global1[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(~(~u_input.b.x), countOneBits(~33616u), 32752u), 26u)], Struct_1(1i, func_3(func_2(), -vec3<i32>(1091i, arg_0.x, 1i), var_1.x)), Struct_1(u_input.d, firstLeadingBit(1i | var_0.a))), 27u)];
    global2 = global0[_wgslsmith_index_u32(~_wgslsmith_add_u32(16979u, arg_1), 27u)];
    return Struct_1(~var_0.b, -2147483647i);
}

fn func_5(arg_0: Struct_1) -> bool {
    global0 = array<Struct_1, 27>();
    let var_0 = !vec4<bool>(true, true, !all(vec4<bool>(false, true, true, true)) | false, (i32(-1i) * -89054i) >= ((arg_0.b | global2.b) | arg_0.b));
    let var_1 = _wgslsmith_sub_vec4_i32(~(vec4<i32>(global2.b, 22546i, -10989i, global2.b) >> (~vec4<u32>(u_input.e.x, 59689u, u_input.e.x, 54896u) % vec4<u32>(32u))) ^ -_wgslsmith_sub_vec4_i32(-vec4<i32>(arg_0.a, arg_0.a, 2147483647i, arg_0.b), firstTrailingBit(vec4<i32>(-37584i, 2945i, 1i, u_input.d))), vec4<i32>(1i, u_input.a, 33101i, arg_0.b));
    let var_2 = var_0;
    var var_3 = func_1(vec4<i32>(abs(1i), func_1(var_1, u_input.e.x & _wgslsmith_mod_u32(35918u, u_input.e.x)).a, ~reverseBits(var_1.x), func_3(Struct_1(global2.a, -45474i), ~vec3<i32>(global2.b, -52525i, 1i), -2247f) << (~(~u_input.b.x) % 32u)), u_input.b.x);
    return any(!(!(!vec2<bool>(var_2.x, var_2.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(any(vec4<bool>(true, true, true, all(vec4<bool>(true, true, true, true)))), func_5(func_1(_wgslsmith_sub_vec4_i32(vec4<i32>(global2.b, global2.a, global2.a, u_input.c), vec4<i32>(1i, global2.b, u_input.d, global2.b) << (vec4<u32>(0u, u_input.b.x, u_input.b.x, 4294967295u) % vec4<u32>(32u))), u_input.b.x)), true);
    let var_1 = Struct_1(_wgslsmith_mod_i32(-3553i, _wgslsmith_dot_vec2_i32(~vec2<i32>(global2.a, global2.a), vec2<i32>(_wgslsmith_mult_i32(u_input.c, -2147483647i), -9451i | global2.a))), u_input.c);
    var var_2 = !(!(!vec2<bool>(true, all(vec4<bool>(true, false, true, false)))));
    var_0 = ~(-1i) < -global2.b;
    global1 = array<Struct_1, 26>();
    let var_3 = _wgslsmith_div_u32(4294967295u, 1u);
    var_2 = select(!select(vec2<bool>(var_2.x | false, var_2.x & false), select(vec2<bool>(true, false), select(vec2<bool>(var_2.x, var_2.x), vec2<bool>(var_2.x, var_2.x), vec2<bool>(false, true)), all(vec3<bool>(true, true, var_2.x))), var_2.x), vec2<bool>(!all(!vec3<bool>(false, var_2.x, false)), -(global2.b ^ 4072i) < var_1.b), select(!(!select(vec2<bool>(false, true), vec2<bool>(false, var_2.x), vec2<bool>(var_2.x, var_2.x))), select(vec2<bool>(var_3 > 99131u, true), select(!vec2<bool>(true, var_2.x), select(vec2<bool>(var_2.x, var_2.x), vec2<bool>(var_2.x, true), var_2.x), select(vec2<bool>(false, var_2.x), vec2<bool>(var_2.x, var_2.x), true)), select(vec2<bool>(var_2.x, true), vec2<bool>(var_2.x, false), var_2.x)), any(!vec2<bool>(false, var_2.x))));
    global3 = -233f;
    var var_4 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(abs(474f)), -2599f) + _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(824f, -1285f) + vec2<f32>(-1000f, -490f)), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-675f, -1275f))), select(vec2<bool>(true, var_2.x), vec2<bool>(var_2.x, false), vec2<bool>(var_2.x, var_2.x))))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(546f + -157f)), -1000f)), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(327f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * _wgslsmith_f_op_f32(f32(-1f) * -853f))), -443f), all(select(vec4<bool>(u_input.d == var_1.b, var_2.x, true, false), vec4<bool>(var_2.x, all(vec2<bool>(false, true)), 28483u < u_input.e.x, !var_2.x), select(vec4<bool>(true, false, true, false), !vec4<bool>(var_2.x, var_2.x, var_2.x, false), true)))));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(select(vec3<i32>(var_1.b, -50254i >> (u_input.e.x % 32u), global2.a), vec3<i32>(18647i, global2.a, var_1.a) >> (_wgslsmith_mod_vec3_u32(vec3<u32>(0u, 28738u, u_input.e.x), vec3<u32>(4173u, u_input.e.x, 38594u)) % vec3<u32>(32u)), vec3<bool>(any(vec3<bool>(false, true, true)), any(vec3<bool>(false, var_2.x, true)), var_2.x | false))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(406f, 220f, _wgslsmith_f_op_f32(var_4.x + 1065f), 1127f)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_4.x, var_4.x, var_4.x, -192f), vec4<f32>(109f, var_4.x, -390f, var_4.x), false)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1520f, 823f, var_4.x, -106f)))))), vec3<f32>(var_4.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1006f)))), _wgslsmith_div_f32(788f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(-267f, var_4.x)))))), _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(u_input.e, min(vec2<u32>(4294967295u, 4294967295u), u_input.b) >> (_wgslsmith_mod_vec2_u32(u_input.b, vec2<u32>(var_3, u_input.e.x)) % vec2<u32>(32u))), ~abs(_wgslsmith_add_vec2_u32(u_input.e, vec2<u32>(4294967295u, u_input.e.x)))));
}


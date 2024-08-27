struct Struct_1 {
    a: bool,
    b: vec3<bool>,
    c: vec2<i32>,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec2<i32>,
    d: vec4<u32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 595f;

var<private> global1: array<Struct_1, 10> = array<Struct_1, 10>(Struct_1(false, vec3<bool>(false, true, false), vec2<i32>(0i, 1i), vec2<i32>(i32(-2147483648), 2147483647i)), Struct_1(false, vec3<bool>(false, true, true), vec2<i32>(0i, -17468i), vec2<i32>(0i, -23134i)), Struct_1(false, vec3<bool>(false, false, false), vec2<i32>(-1303i, 0i), vec2<i32>(-1i, -36251i)), Struct_1(false, vec3<bool>(false, true, true), vec2<i32>(-37683i, 6084i), vec2<i32>(-26691i, 7133i)), Struct_1(false, vec3<bool>(false, false, false), vec2<i32>(1i, i32(-2147483648)), vec2<i32>(-34975i, -45897i)), Struct_1(false, vec3<bool>(false, true, false), vec2<i32>(-16483i, -3333i), vec2<i32>(2147483647i, -10081i)), Struct_1(true, vec3<bool>(false, false, true), vec2<i32>(28259i, i32(-2147483648)), vec2<i32>(0i, 2147483647i)), Struct_1(true, vec3<bool>(true, true, false), vec2<i32>(0i, 1068i), vec2<i32>(2147483647i, 2147483647i)), Struct_1(true, vec3<bool>(true, false, true), vec2<i32>(-49862i, 2147483647i), vec2<i32>(67907i, 2147483647i)), Struct_1(false, vec3<bool>(true, true, true), vec2<i32>(0i, 31874i), vec2<i32>(18991i, -1i)));

var<private> global2: Struct_1 = Struct_1(true, vec3<bool>(true, true, true), vec2<i32>(-1i, -1i), vec2<i32>(2147483647i, 47367i));

var<private> global3: array<Struct_1, 17> = array<Struct_1, 17>(Struct_1(true, vec3<bool>(true, false, false), vec2<i32>(0i, -1i), vec2<i32>(-35004i, 0i)), Struct_1(true, vec3<bool>(false, true, false), vec2<i32>(13250i, 35720i), vec2<i32>(2147483647i, 2147483647i)), Struct_1(true, vec3<bool>(false, true, true), vec2<i32>(17661i, -19869i), vec2<i32>(1i, 2147483647i)), Struct_1(true, vec3<bool>(true, true, false), vec2<i32>(2147483647i, 39220i), vec2<i32>(23502i, -1i)), Struct_1(false, vec3<bool>(true, true, false), vec2<i32>(1i, 2147483647i), vec2<i32>(-39229i, 0i)), Struct_1(false, vec3<bool>(false, false, true), vec2<i32>(-832i, 7251i), vec2<i32>(0i, -13823i)), Struct_1(true, vec3<bool>(false, false, false), vec2<i32>(i32(-2147483648), -1i), vec2<i32>(36868i, -1i)), Struct_1(true, vec3<bool>(true, false, false), vec2<i32>(2147483647i, 2147483647i), vec2<i32>(-58955i, 2147483647i)), Struct_1(false, vec3<bool>(true, false, false), vec2<i32>(46722i, -19897i), vec2<i32>(i32(-2147483648), -7874i)), Struct_1(true, vec3<bool>(false, false, true), vec2<i32>(8369i, 20618i), vec2<i32>(2147483647i, -27498i)), Struct_1(false, vec3<bool>(false, true, true), vec2<i32>(19925i, 39630i), vec2<i32>(-796i, 0i)), Struct_1(false, vec3<bool>(true, true, false), vec2<i32>(1i, 29220i), vec2<i32>(-1i, 48333i)), Struct_1(false, vec3<bool>(false, true, false), vec2<i32>(23068i, -67092i), vec2<i32>(43826i, 1i)), Struct_1(false, vec3<bool>(false, false, false), vec2<i32>(6347i, -56739i), vec2<i32>(2147483647i, i32(-2147483648))), Struct_1(false, vec3<bool>(false, true, true), vec2<i32>(2147483647i, 17218i), vec2<i32>(49686i, 17534i)), Struct_1(false, vec3<bool>(false, false, false), vec2<i32>(1i, i32(-2147483648)), vec2<i32>(-47756i, 1i)), Struct_1(false, vec3<bool>(true, true, false), vec2<i32>(2147483647i, -1i), vec2<i32>(10305i, 2147483647i)));

var<private> global4: u32 = 4294967295u;

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1(arg_0: bool, arg_1: vec3<f32>, arg_2: vec3<f32>) -> u32 {
    global2 = Struct_1(!arg_0, vec3<bool>(!any(!global2.b), global2.a, true), _wgslsmith_sub_vec2_i32(~global2.c, -(u_input.c >> (vec2<u32>(5658u, 23876u) % vec2<u32>(32u))) ^ ~vec2<i32>(global2.d.x, 3298i)), ~vec2<i32>(u_input.c.x, 1i));
    global1 = array<Struct_1, 10>();
    global1 = array<Struct_1, 10>();
    let var_0 = Struct_1(!any(global2.b.yz), select(global2.b, select(vec3<bool>(false, u_input.b.x <= 0u, true), select(!global2.b, select(global2.b, global2.b, global2.b), any(global2.b)), select(global2.b, select(vec3<bool>(global2.a, false, arg_0), vec3<bool>(true, arg_0, global2.b.x), false), vec3<bool>(true, false, global2.b.x))), true), vec2<i32>(5175i, -69998i), ~select(_wgslsmith_clamp_vec2_i32(~vec2<i32>(global2.d.x, global2.c.x), reverseBits(global2.c), select(u_input.c, global2.d, false)), u_input.c, global2.b.zz));
    global3 = array<Struct_1, 17>();
    return u_input.e.x;
}

fn func_3(arg_0: i32) -> i32 {
    let var_0 = true;
    var var_1 = -751f;
    global2 = Struct_1(all(select(select(vec3<bool>(true, false, false), global2.b, vec3<bool>(true, false, false)), select(global2.b, global2.b, false), select(global2.b, global2.b, true))) & !any(select(vec2<bool>(global2.a, global2.b.x), global2.b.xz, var_0)), select(global2.b, select(!global2.b, !(!global2.b), !global2.b), global2.b), vec2<i32>(-_wgslsmith_mult_i32(u_input.c.x, -1369i), 0i << (_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b.x, 4294967295u, 4294967295u, 35588u), vec4<u32>(u_input.b.x, 36652u, 4294967295u, u_input.d.x)), u_input.e) % 32u)), vec2<i32>(10030i, countOneBits(arg_0)));
    global1 = array<Struct_1, 10>();
    global4 = 13857u | _wgslsmith_dot_vec4_u32(abs(~(~vec4<u32>(0u, u_input.a, u_input.a, u_input.a))), max(abs(_wgslsmith_div_vec4_u32(u_input.d, vec4<u32>(u_input.d.x, u_input.d.x, u_input.b.x, 4294967295u))), min(u_input.e, ~u_input.d)));
    return _wgslsmith_div_i32(_wgslsmith_mod_i32(_wgslsmith_add_i32(-2147483647i, u_input.c.x), _wgslsmith_mod_i32(u_input.c.x, ~23344i)), _wgslsmith_sub_i32(global2.c.x, -arg_0) ^ -9106i) | _wgslsmith_add_i32(arg_0, (_wgslsmith_add_i32(33996i, 45969i) << ((u_input.d.x >> (u_input.d.x % 32u)) % 32u)) & 12238i);
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    global2 = Struct_1(global2.b.x, vec3<bool>(any(!vec4<bool>(false, global2.a, arg_0.a, false)), arg_0.a, global2.a), -global2.c, vec2<i32>(-1i, func_3(_wgslsmith_mult_i32(1i << (u_input.a % 32u), 59765i))));
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(floor(-467f)), 1f), vec2<f32>(_wgslsmith_f_op_f32(-1000f + -374f), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(771f, -1995f), _wgslsmith_f_op_f32(select(161f, 994f, arg_0.b.x))))))) * vec2<f32>(-372f, -441f));
    global1 = array<Struct_1, 10>();
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_0.x)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-117f, -710f, !arg_0.b.x)) + var_0.x)));
    let var_2 = Struct_1(any(vec4<bool>(true, true == any(vec3<bool>(global2.a, false, false)), global2.b.x, any(global2.b.yy))), !select(!select(global2.b, vec3<bool>(arg_0.a, true, arg_0.a), global2.b.x), !(!vec3<bool>(arg_0.a, arg_0.a, arg_0.b.x)), vec3<bool>(any(arg_0.b), !arg_0.b.x, !arg_0.a)), vec2<i32>(global2.d.x, _wgslsmith_dot_vec4_i32(-(~vec4<i32>(global2.d.x, global2.d.x, global2.d.x, arg_0.d.x)), _wgslsmith_add_vec4_i32(vec4<i32>(arg_0.c.x, -14574i, 2147483647i, -2147483647i), vec4<i32>(u_input.c.x, 2147483647i, -1i, 1i)))), vec2<i32>(0i, 0i));
    return Struct_1(global2.c.x == firstTrailingBit(_wgslsmith_dot_vec2_i32(-global2.c, select(vec2<i32>(-2434i, var_2.d.x), var_2.d, arg_0.b.xx))), select(vec3<bool>(true, var_2.b.x & all(vec3<bool>(arg_0.a, var_2.b.x, true)), all(var_2.b.yz) || false), !select(select(global2.b, global2.b, true), var_2.b, var_2.b.x), arg_0.b), -(firstLeadingBit(arg_0.d) | u_input.c), min(var_2.d, vec2<i32>(_wgslsmith_dot_vec4_i32(max(vec4<i32>(-2147483647i, -1i, 2147483647i, arg_0.d.x), vec4<i32>(2147483647i, arg_0.c.x, 30086i, -7645i)), select(vec4<i32>(-6529i, global2.d.x, u_input.c.x, -1i), vec4<i32>(u_input.c.x, 10802i, var_2.d.x, var_2.c.x), vec4<bool>(true, var_2.b.x, arg_0.a, true))), 0i)));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    let var_0 = -firstLeadingBit(abs(u_input.c.x));
    var var_1 = select(select(select(arg_1.b.zx, arg_0.b.xz, vec2<bool>(!arg_1.b.x, false)), vec2<bool>(!global2.b.x, true), true), arg_1.b.yz, all(!vec4<bool>(true, true, !global2.a, arg_1.a)));
    var var_2 = select(max(u_input.d.zw, u_input.d.yw | u_input.d.wx), vec2<u32>(0u | ~u_input.d.x, 1u), global2.a) << (vec2<u32>(func_1(arg_0.b.x, _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(690f, -427f, 474f) + vec3<f32>(-1303f, 1750f, -1000f)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(816f, 684f, -137f) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 231f, -951f)))), _wgslsmith_div_u32(~u_input.b.x, _wgslsmith_mod_u32(firstLeadingBit(u_input.b.x), 33439u))) % vec2<u32>(32u));
    global2 = arg_1;
    let var_3 = countOneBits(~(~_wgslsmith_clamp_vec3_i32(countOneBits(vec3<i32>(2147483647i, global2.d.x, -26456i)), _wgslsmith_div_vec3_i32(vec3<i32>(u_input.c.x, -24560i, arg_1.d.x), vec3<i32>(-31088i, -1i, global2.d.x)), vec3<i32>(u_input.c.x, var_0, -9457i))));
    return Struct_1(any(vec3<bool>(var_1.x, true, arg_0.b.x)), select(arg_0.b, vec3<bool>(arg_0.b.x, any(arg_1.b.yx) & true, true), select(!(!vec3<bool>(arg_0.a, global2.a, true)), vec3<bool>(all(global2.b), var_1.x, arg_1.a), select(select(arg_0.b, vec3<bool>(global2.b.x, true, false), vec3<bool>(arg_1.a, true, true)), select(arg_0.b, vec3<bool>(var_1.x, false, false), arg_1.b), true))), _wgslsmith_clamp_vec2_i32(func_2(func_2(func_2(Struct_1(arg_1.a, vec3<bool>(false, false, false), arg_1.d, vec2<i32>(0i, 41452i))))).d, firstLeadingBit((var_3.yy | arg_1.d) | max(global2.d, global2.d)), vec2<i32>(10049i, arg_1.c.x)), ~firstLeadingBit(_wgslsmith_clamp_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(var_3.x, arg_1.c.x), arg_1.c), vec2<i32>(var_3.x, arg_1.d.x), -vec2<i32>(-12887i, arg_1.d.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~((vec2<u32>(abs(46984u), u_input.e.x) >> (vec2<u32>(_wgslsmith_mult_u32(1u, u_input.e.x), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 1u, 63373u, u_input.b.x), vec4<u32>(1u, u_input.e.x, u_input.b.x, 1u))) % vec2<u32>(32u))) >> (vec2<u32>(4294967295u, 20646u) % vec2<u32>(32u)));
    let var_1 = Struct_1(false, global2.b, vec2<i32>(countOneBits(_wgslsmith_mult_i32(1i, global2.c.x) >> ((var_0.x | var_0.x) % 32u)), _wgslsmith_sub_i32(u_input.c.x, -(i32(-1i) * -29526i))), vec2<i32>(1i, global2.d.x));
    var var_2 = global1[_wgslsmith_index_u32((u_input.e.x ^ firstLeadingBit(func_1(false, vec3<f32>(257f, -1315f, -1129f), vec3<f32>(-488f, -541f, -853f)) ^ _wgslsmith_div_u32(55565u, u_input.e.x))) | ((var_0.x | u_input.e.x) | ~(~var_0.x)), 10u)];
    var var_3 = var_1;
    let var_4 = func_4(func_2(Struct_1(!any(var_2.b.xz), global2.b, u_input.c, ~(~vec2<i32>(-8869i, var_2.c.x)))), global1[_wgslsmith_index_u32(u_input.b.x, 10u)]);
    let var_5 = Struct_1(func_2(Struct_1(true, var_3.b, ~(~var_4.d), _wgslsmith_clamp_vec2_i32(vec2<i32>(0i, global2.c.x), ~u_input.c, func_2(global3[_wgslsmith_index_u32(22106u, 17u)]).c))).b.x, select(global2.b, vec3<bool>(any(select(vec3<bool>(global2.b.x, true, var_2.a), vec3<bool>(false, false, true), var_4.b)), var_3.a, false), var_4.b.x), vec2<i32>(-_wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(var_1.d, u_input.c), _wgslsmith_mod_i32(-28489i, var_4.c.x)), var_4.c.x), vec2<i32>(_wgslsmith_div_i32(-2147483647i, u_input.c.x), _wgslsmith_dot_vec4_i32(vec4<i32>(-30207i, var_1.d.x, var_1.c.x, 0i), -vec4<i32>(68208i, 15299i, var_2.d.x, var_1.d.x))) & _wgslsmith_sub_vec2_i32(max(vec2<i32>(-41230i, global2.c.x), vec2<i32>(var_4.c.x, global2.d.x)) & ~vec2<i32>(var_2.d.x, global2.d.x), func_2(var_4).d));
    var var_6 = vec2<bool>(true, var_1.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1520f, _wgslsmith_f_op_f32(sign(1116f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, -1831f) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-707f, -971f) + vec2<f32>(1247f, -1000f))), !var_5.b.yx))));
}


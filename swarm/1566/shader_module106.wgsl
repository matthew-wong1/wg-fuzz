struct Struct_1 {
    a: bool,
    b: u32,
    c: i32,
    d: vec3<u32>,
    e: u32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(false, 0u, -1i, vec3<u32>(26884u, 20374u, 1u), 0u);

var<private> global1: array<vec2<f32>, 21>;

var<private> global2: array<vec3<f32>, 10> = array<vec3<f32>, 10>(vec3<f32>(-2509f, 571f, 209f), vec3<f32>(-898f, 1917f, -1026f), vec3<f32>(134f, 719f, 769f), vec3<f32>(2058f, 172f, -1112f), vec3<f32>(1477f, 626f, 117f), vec3<f32>(-444f, -277f, -886f), vec3<f32>(-944f, 333f, 833f), vec3<f32>(-696f, -935f, -1979f), vec3<f32>(728f, -376f, -1000f), vec3<f32>(-1510f, 817f, 430f));

var<private> global3: Struct_1 = Struct_1(false, 1u, -1i, vec3<u32>(10215u, 1u, 4294967295u), 44169u);

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<u32>) -> i32 {
    let var_0 = _wgslsmith_add_vec4_i32(vec4<i32>(arg_0.c, ~global3.c, min(global0.c & (0i ^ global3.c), 2147483647i), reverseBits(1i)), ~vec4<i32>(_wgslsmith_dot_vec3_i32(~vec3<i32>(global0.c, 2147483647i, 2147483647i), vec3<i32>(-1i, -56005i, arg_0.c)), max(1i, _wgslsmith_add_i32(arg_0.c, global0.c)), -25791i, -reverseBits(global0.c)));
    global0 = Struct_1(true, _wgslsmith_dot_vec3_u32(~max(vec3<u32>(arg_0.b, arg_1.x, arg_0.d.x), vec3<u32>(arg_0.e, u_input.a, u_input.a)) | global0.d, _wgslsmith_add_vec3_u32(max(firstTrailingBit(vec3<u32>(1u, 1u, global3.b)), max(arg_1, vec3<u32>(4294967295u, arg_1.x, global3.e))), ~global0.d)), _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, -61149i, arg_0.c, global0.c), abs(-_wgslsmith_sub_vec4_i32(var_0, vec4<i32>(0i, -73599i, var_0.x, arg_0.c)))), ~_wgslsmith_clamp_vec3_u32(reverseBits(abs(vec3<u32>(arg_1.x, global3.e, 0u))), ~vec3<u32>(4294967295u, global0.e, 11942u), ~max(vec3<u32>(4294967295u, global0.b, u_input.a), global3.d)), _wgslsmith_add_u32(reverseBits(countOneBits(21674u)), abs(u_input.a)) | arg_0.d.x);
    var var_1 = true;
    var var_2 = 1i;
    var_1 = !any(vec2<bool>(!any(vec4<bool>(arg_0.a, global3.a, false, global3.a)), any(select(vec2<bool>(global3.a, arg_0.a), vec2<bool>(global0.a, global3.a), vec2<bool>(false, global3.a)))));
    return -21150i;
}

fn func_4(arg_0: i32, arg_1: u32) -> i32 {
    let var_0 = false;
    global2 = array<vec3<f32>, 10>();
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(-1170f - -656f), _wgslsmith_f_op_f32(155f + -547f), _wgslsmith_f_op_f32(trunc(-131f)), -523f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1163f, -292f, 990f, -101f) * vec4<f32>(635f, 306f, -631f, -261f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1182f, -191f, 1009f, 1307f)))))));
    var var_2 = !(var_0 | true);
    global1 = array<vec2<f32>, 21>();
    return _wgslsmith_clamp_i32(0i, global0.c, _wgslsmith_mod_i32(~(-(~arg_0)), reverseBits(~global0.c)));
}

fn func_2() -> u32 {
    var var_0 = func_4(_wgslsmith_mult_i32(func_3(Struct_1(true, ~u_input.a, ~0i, global3.d, _wgslsmith_add_u32(global0.d.x, global3.d.x)), global3.d), global3.c), ~reverseBits(1u));
    let var_1 = vec4<u32>(_wgslsmith_sub_u32(45620u, 1u) | _wgslsmith_clamp_u32(21401u, ~(u_input.a & 5413u), _wgslsmith_dot_vec3_u32(global3.d, global0.d >> (global0.d % vec3<u32>(32u)))), _wgslsmith_dot_vec3_u32(max(firstLeadingBit(vec3<u32>(11231u, global3.d.x, global0.d.x)), ~(~vec3<u32>(global0.e, 4294967295u, u_input.a))), firstTrailingBit(global3.d)), max(17550u, ~(~global0.e)), ~u_input.a | countOneBits(u_input.a));
    let var_2 = Struct_1(true, reverseBits(_wgslsmith_add_u32(0u, 1u)), _wgslsmith_add_i32(_wgslsmith_add_i32(global0.c, global0.c), ~global3.c), var_1.xyx, global0.b);
    global3 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -419f) + _wgslsmith_f_op_f32(floor(-1000f))), 1f) != -162f, countOneBits(global3.b), _wgslsmith_sub_i32(reverseBits(global0.c >> (23804u % 32u)), -34303i) >> (abs(max(_wgslsmith_sub_u32(var_2.d.x, 61348u), _wgslsmith_dot_vec3_u32(var_1.ywx, global3.d))) % 32u), ~max(global0.d << (vec3<u32>(0u, global3.e, global3.e) % vec3<u32>(32u)), ~var_1.wyy) & vec3<u32>(~52642u, ~_wgslsmith_mod_u32(1u, global3.b), u_input.a), var_2.e | var_2.b);
    var_0 = i32(-1i) * -(~(-8300i));
    return abs(abs(62795u));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<bool>) -> vec3<u32> {
    global2 = array<vec3<f32>, 10>();
    let var_0 = Struct_1(any(select(select(!vec4<bool>(arg_2.x, global0.a, false, true), vec4<bool>(true, true, true, true), !arg_2.x), !select(vec4<bool>(true, global0.a, arg_0.a, arg_1.a), vec4<bool>(arg_0.a, arg_2.x, arg_2.x, false), false), !vec4<bool>(arg_0.a, true, global0.a, arg_2.x))), ~(firstTrailingBit(47309u) << (~u_input.a % 32u)), global3.c, vec3<u32>(arg_1.d.x, 20754u, ~1u) >> (_wgslsmith_sub_vec3_u32(_wgslsmith_sub_vec3_u32(~vec3<u32>(0u, 8977u, 7903u), ~global0.d), arg_1.d) % vec3<u32>(32u)), ~1463u);
    return vec3<u32>(_wgslsmith_sub_u32(var_0.e, 1u), _wgslsmith_sub_u32(global0.b, ~u_input.a), _wgslsmith_mult_u32(select(_wgslsmith_sub_u32(~0u, max(0u, 0u)), 0u, !(global0.b != arg_1.b)), abs(arg_1.e & 4294967295u)));
}

fn func_1() -> Struct_1 {
    global1 = array<vec2<f32>, 21>();
    var var_0 = Struct_1(global0.a, u_input.a, ~(-_wgslsmith_dot_vec4_i32(min(vec4<i32>(global0.c, -51881i, global0.c, 5812i), vec4<i32>(global3.c, 1i, global3.c, 1i)), ~vec4<i32>(global0.c, global3.c, global3.c, global0.c))), min(~global3.d, func_5(Struct_1(!global3.a, func_2(), ~global3.c, vec3<u32>(1u, 75665u, 85157u), _wgslsmith_sub_u32(0u, global3.b)), Struct_1(all(vec3<bool>(true, global0.a, true)), global3.e, -4481i, vec3<u32>(13398u, 1u, global0.b), ~14562u), vec2<bool>(global3.a, any(vec3<bool>(true, global3.a, true))))), global3.d.x);
    return Struct_1(true, 1u, ~max(_wgslsmith_mod_i32(global3.c << (0u % 32u), var_0.c), global3.c), firstTrailingBit(~_wgslsmith_mod_vec3_u32(~global0.d, ~vec3<u32>(13718u, global0.e, global3.d.x))), firstLeadingBit(func_5(Struct_1(true, 0u, ~global0.c, vec3<u32>(var_0.d.x, global0.d.x, global0.b), 1u), Struct_1(global0.a, global3.b, 2147483647i | global0.c, vec3<u32>(global0.d.x, 1u, 4052u), reverseBits(71961u)), select(!vec2<bool>(var_0.a, global3.a), !vec2<bool>(global0.a, true), vec2<bool>(true, true))).x));
}

fn func_6(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<f32>) -> Struct_1 {
    global0 = arg_0;
    let var_0 = vec2<u32>(2099u, ~(~global0.e));
    var var_1 = Struct_1(true, func_1().b, arg_1.c, min(~_wgslsmith_mult_vec3_u32(vec3<u32>(arg_1.b, 1u, arg_0.d.x), global3.d), firstLeadingBit(arg_1.d) << (global3.d % vec3<u32>(32u))), _wgslsmith_mod_u32(min(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 2556u), ~global0.d.yz), 63929u), _wgslsmith_dot_vec3_u32(arg_0.d, vec3<u32>(~4294967295u, ~47351u, _wgslsmith_div_u32(var_0.x, global3.e)))));
    global0 = func_1();
    let var_2 = vec2<f32>(-859f, _wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(f32(-1f) * -1047f)));
    return Struct_1(arg_1.a, ~func_1().e, -10147i, _wgslsmith_div_vec3_u32(vec3<u32>(u_input.a, ~(~var_0.x), 25614u), firstLeadingBit(~max(arg_1.d, arg_1.d))), func_2());
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(all(vec3<bool>(global3.a, !global0.a, global0.a)), _wgslsmith_div_u32(~u_input.a, u_input.a), -global0.c, countOneBits(~(firstTrailingBit(vec3<u32>(u_input.a, u_input.a, global0.d.x)) ^ global3.d)), global3.e);
    let var_1 = false;
    let var_2 = _wgslsmith_mult_vec4_u32(min(_wgslsmith_add_vec4_u32(~max(vec4<u32>(global3.e, global3.d.x, global3.b, 0u), vec4<u32>(u_input.a, var_0.e, 0u, 0u)), ~(~vec4<u32>(3079u, global0.d.x, 1u, 4294967295u))), (~vec4<u32>(var_0.b, 70395u, 1u, global0.e) >> (~vec4<u32>(4294967295u, 19869u, global3.b, global0.d.x) % vec4<u32>(32u))) >> (~_wgslsmith_div_vec4_u32(vec4<u32>(global3.b, var_0.e, 4294967295u, 26475u), vec4<u32>(30992u, var_0.d.x, 4736u, var_0.d.x)) % vec4<u32>(32u))), abs(vec4<u32>(global3.e, global3.b | 4294967295u, _wgslsmith_sub_u32(global0.e, u_input.a), var_0.e)));
    let var_3 = -var_0.c;
    global0 = func_6(func_1(), func_1(), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-646f, -1560f, 1423f, -1000f))) - vec4<f32>(562f, -288f, -105f, 342f))) * _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1458f, -1196f, -729f, 615f))))));
    var var_4 = vec4<u32>(_wgslsmith_mod_u32(_wgslsmith_sub_u32(abs(~global3.d.x), 140767u), _wgslsmith_div_u32(~(~0u), 1u)), ~var_0.d.x, ~min(_wgslsmith_mult_u32(1u, firstTrailingBit(var_0.e)), _wgslsmith_dot_vec2_u32(var_2.wx, global3.d.zy)), _wgslsmith_div_u32(var_0.b, global0.d.x));
    let var_5 = Struct_1(true, ~firstLeadingBit(_wgslsmith_dot_vec4_u32(min(vec4<u32>(global0.b, 25091u, 0u, u_input.a), vec4<u32>(var_0.b, 0u, global0.b, global0.d.x)), vec4<u32>(1u, var_4.x, global3.d.x, 33337u))), _wgslsmith_add_i32(-1i, 2147483647i), vec3<u32>(_wgslsmith_dot_vec4_u32(var_2, _wgslsmith_div_vec4_u32(var_2, vec4<u32>(var_0.b, global3.b, 0u, var_4.x))) >> (var_2.x % 32u), countOneBits(u_input.a), var_4.x), 1u >> (_wgslsmith_add_u32(abs(var_4.x), var_0.e) % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, -1220f, -1231f)) - _wgslsmith_f_op_vec3_f32(abs(global2[_wgslsmith_index_u32(var_5.b, 10u)]))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(global3.e, var_5.d.x), 10u)]) - global2[_wgslsmith_index_u32(max(var_5.b, var_2.x) & min(1u, global0.d.x), 10u)]))));
}


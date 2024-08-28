struct Struct_1 {
    a: vec3<u32>,
    b: i32,
    c: vec2<i32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec2<f32>,
    c: i32,
    d: vec4<f32>,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: array<vec2<u32>, 14>;

var<private> global2: array<Struct_2, 12>;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: Struct_3, arg_3: u32) -> vec4<i32> {
    var var_0 = Struct_1(vec3<u32>(arg_3, ~arg_1.a.x, _wgslsmith_add_u32(25041u, _wgslsmith_mod_u32(arg_3, 1u))) >> (~(~reverseBits(arg_1.a)) % vec3<u32>(32u)), -(~max(~arg_1.b, arg_1.c.x)), -vec2<i32>(arg_2.c.b, _wgslsmith_add_i32(-15305i, 27457i)));
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-242f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-3466f - 1000f)))) + 1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1026f)))), -274f, -1225f);
    var var_2 = vec3<i32>(-33007i, -43923i, arg_1.c.x);
    var var_3 = var_1.xz;
    let var_4 = vec4<i32>(arg_1.c.x, arg_1.c.x, select(-50213i << (_wgslsmith_add_u32(arg_3, 4294967295u) % 32u), firstLeadingBit(-arg_1.b), arg_2.a.x), 4117i) & vec4<i32>(select(var_2.x, var_2.x, var_1.x < _wgslsmith_f_op_f32(var_1.x - 1847f)), arg_1.b, var_2.x, ~_wgslsmith_dot_vec4_i32(~vec4<i32>(-2147483647i, -15331i, var_2.x, 16072i), firstLeadingBit(vec4<i32>(var_2.x, 16855i, var_2.x, var_0.b))));
    return reverseBits(_wgslsmith_clamp_vec4_i32(~vec4<i32>(i32(-1i) * -2147483647i, var_2.x, select(var_4.x, arg_1.b, arg_0), 1i), vec4<i32>(-1i, var_2.x, arg_1.b, -19725i), var_4));
}

fn func_2(arg_0: Struct_2, arg_1: Struct_2, arg_2: f32, arg_3: Struct_1) -> i32 {
    let var_0 = all(vec2<bool>(_wgslsmith_f_op_f32(round(-474f)) != arg_2, arg_0.a.x));
    let var_1 = min(1i, _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_div_i32(_wgslsmith_mod_i32(arg_1.c, arg_1.c), arg_1.c), _wgslsmith_mult_i32(arg_0.e.b, arg_1.c) | -1i, countOneBits(1i), 27869i), func_3(!arg_1.a.x, Struct_1(arg_3.a, arg_0.e.b, vec2<i32>(arg_0.e.b, arg_1.e.b)), Struct_3(arg_1.a.zyw, arg_3, arg_0.e, Struct_1(arg_1.e.a, 0i, arg_0.e.c)), 38753u) | select(vec4<i32>(arg_0.c, -5402i, -23750i, 2147483647i), vec4<i32>(arg_1.c, 19980i, -56830i, arg_1.e.c.x), arg_0.a.x)));
    var var_2 = arg_0;
    var var_3 = -_wgslsmith_clamp_i32(arg_3.b, _wgslsmith_sub_i32(reverseBits(_wgslsmith_mod_i32(-2147483647i, 1i)), _wgslsmith_mod_i32(1i, -1i >> (arg_3.a.x % 32u))), firstTrailingBit(~arg_0.e.b));
    var var_4 = arg_1.e.a.zz;
    return -1i;
}

fn func_1() -> Struct_3 {
    var var_0 = _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(reverseBits(vec4<i32>(func_2(global2[_wgslsmith_index_u32(u_input.a, 12u)], global2[_wgslsmith_index_u32(u_input.a, 12u)], 2119f, Struct_1(vec3<u32>(4294967295u, u_input.a, u_input.a), 1i, vec2<i32>(-1i, -1i))), firstTrailingBit(-2147483647i), 12041i, i32(-1i) * -2147483647i)), -func_3(true, Struct_1(vec3<u32>(u_input.a, 0u, 0u), -1i, vec2<i32>(1i, 0i)), Struct_3(vec3<bool>(false, true, true), Struct_1(vec3<u32>(u_input.a, u_input.a, 1u), 2147483647i, vec2<i32>(-15806i, 0i)), Struct_1(vec3<u32>(39424u, 71906u, 4294967295u), 9489i, vec2<i32>(34560i, -26524i)), Struct_1(vec3<u32>(u_input.a, 92369u, 4294967295u), -18335i, vec2<i32>(2147483647i, -1i))), 63462u), select(vec4<i32>(-1i >> (0u % 32u), 1i, reverseBits(2147483647i), 15711i), select(-vec4<i32>(2147483647i, 2147483647i, 0i, -25693i), vec4<i32>(1i, 1i, 1i, 1i), true), select(select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, true)), select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, false), true), any(vec4<bool>(true, true, true, true))))), vec4<i32>(firstLeadingBit(i32(-1i) * -2147483647i), func_3(true, Struct_1(vec3<u32>(u_input.a, 1u, u_input.a), 0i, vec2<i32>(-8762i, -269i)), Struct_3(vec3<bool>(true, false, true), Struct_1(vec3<u32>(4294967295u, 4294967295u, u_input.a), -18730i, vec2<i32>(-1i, 0i)), Struct_1(vec3<u32>(0u, 4294967295u, 1u), -4807i, vec2<i32>(0i, 43025i)), Struct_1(vec3<u32>(4294967295u, 1u, 0u), 2626i, vec2<i32>(-1i, 3359i))), ~u_input.a).x, ~2147483647i, func_3(any(vec2<bool>(false, false)), Struct_1(vec3<u32>(u_input.a, u_input.a, 42454u), -20816i, vec2<i32>(-2147483647i, -1i)), Struct_3(vec3<bool>(true, true, true), Struct_1(vec3<u32>(u_input.a, u_input.a, 5646u), -53879i, vec2<i32>(-2147483647i, -2147483647i)), Struct_1(vec3<u32>(0u, 4294967295u, u_input.a), -1i, vec2<i32>(-1i, 37488i)), Struct_1(vec3<u32>(u_input.a, 2316u, 16957u), 0i, vec2<i32>(-1i, -3387i))), max(4294967295u, u_input.a)).x) & vec4<i32>(_wgslsmith_clamp_i32(-4739i, -57893i, -2147483647i) & select(9131i, -30959i, false), _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, 23339i), vec2<i32>(1i, -14512i)) & -13235i, _wgslsmith_div_i32(~2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, 1i), vec2<i32>(-2147483647i, -12801i))), 2147483647i));
    var_0 = (1i ^ min(~81004i, ~(8478i << (u_input.a % 32u)))) | ~(-firstTrailingBit(reverseBits(0i)));
    global2 = array<Struct_2, 12>();
    let var_1 = select((select(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a, 55079u, 20664u), vec3<u32>(u_input.a, 0u, 4294967295u)), select(vec3<u32>(0u, u_input.a, 68036u), vec3<u32>(u_input.a, u_input.a, 1u), vec3<bool>(true, false, true)), select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(true, false, false))) & abs(vec3<u32>(u_input.a, 19114u, 32951u) >> (vec3<u32>(16973u, 28868u, 44001u) % vec3<u32>(32u)))) >> (vec3<u32>(abs(58042u), 17806u, 57683u) % vec3<u32>(32u)), vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(21421u, _wgslsmith_mult_u32(0u, u_input.a), ~11023u), _wgslsmith_mult_vec3_u32(abs(vec3<u32>(16375u, 4294967295u, u_input.a)), vec3<u32>(1u, u_input.a, u_input.a))), min(u_input.a, countOneBits(~1u)), ~(~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.a, 47071u), vec3<u32>(1u, u_input.a, 1941u)))), vec3<bool>(!(_wgslsmith_clamp_i32(25844i, -1i, -2147483647i) > min(2147483647i, -1i)), any(select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), all(vec4<bool>(true, false, true, false)))), !select(true, true, true)));
    let var_2 = ~(vec4<u32>(firstTrailingBit(abs(102877u)), var_1.x, ~u_input.a, (0u & var_1.x) & 12308u) >> (~vec4<u32>(u_input.a & u_input.a, u_input.a, 4294967295u, 13738u) % vec4<u32>(32u)));
    return Struct_3(vec3<bool>(true, true, true), Struct_1(vec3<u32>(_wgslsmith_mult_u32(_wgslsmith_clamp_u32(var_2.x, u_input.a, 49435u), _wgslsmith_mod_u32(76646u, 4294967295u)), (var_2.x ^ 4294967295u) >> (~var_1.x % 32u), ~_wgslsmith_div_u32(14533u, 1u)), -13609i, max(countOneBits(firstLeadingBit(vec2<i32>(0i, 52074i))), -vec2<i32>(1i, 1i))), Struct_1(~(~(var_2.xwy << (var_2.zzw % vec3<u32>(32u)))), func_3(false, Struct_1(abs(vec3<u32>(0u, 444u, var_1.x)), -1i, -vec2<i32>(-12660i, -24405i)), Struct_3(vec3<bool>(false, false, false), Struct_1(vec3<u32>(var_2.x, 4294967295u, 1u), 1i, vec2<i32>(-17895i, -2147483647i)), Struct_1(var_2.xwz, -2061i, vec2<i32>(22798i, -2147483647i)), Struct_1(var_1, -2147483647i, vec2<i32>(1i, 1i))), _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(var_1.x, 45362u, var_1.x, 3268u), var_2), var_2)).x, ~(-select(vec2<i32>(-14150i, 2138i), vec2<i32>(2147483647i, 0i), false))), Struct_1(var_2.xzz << (_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a, 0u, u_input.a), var_2.xyx) % vec3<u32>(32u)), ~(~1i), vec2<i32>(func_2(Struct_2(vec4<bool>(false, true, true, true), vec2<f32>(1046f, 792f), 23407i, vec4<f32>(1094f, 2054f, -563f, -2401f), Struct_1(var_1, -248i, vec2<i32>(708i, 7468i))), global2[_wgslsmith_index_u32(12801u, 12u)], -1000f, Struct_1(vec3<u32>(4294967295u, 1u, u_input.a), 9102i, vec2<i32>(2147483647i, -27460i))) ^ _wgslsmith_add_i32(-9125i, -1i), select(_wgslsmith_add_i32(-2147483647i, 2147483647i), _wgslsmith_add_i32(0i, 45033i), any(vec3<bool>(false, true, false))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -_wgslsmith_dot_vec2_i32(-vec2<i32>(_wgslsmith_add_i32(-56577i, 8945i), _wgslsmith_dot_vec2_i32(vec2<i32>(-31194i, 37156i), vec2<i32>(31995i, 22621i))), reverseBits(-_wgslsmith_div_vec2_i32(vec2<i32>(3350i, -50717i), vec2<i32>(-2147483647i, -2147483647i))));
    let var_1 = func_1();
    global0 = func_1().a.x;
    global0 = !(!any(vec4<bool>(false, !var_1.a.x, all(var_1.a.xy), any(vec2<bool>(var_1.a.x, var_1.a.x)))));
    let var_2 = var_1.d.a.x;
    global1 = array<vec2<u32>, 14>();
    var var_3 = vec3<i32>(-1i) * -countOneBits(firstTrailingBit(~vec3<i32>(var_0, -34978i, 42939i)));
    var var_4 = !(var_1.d.a.x < ~u_input.a) || all(vec2<bool>(true, !(!var_1.a.x)));
    let var_5 = ~var_0;
    let x = u_input.a;
    s_output = StorageBuffer(-var_1.d.c, _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(var_1.b.c, var_1.d.c), vec2<i32>(-1i ^ ~var_0, _wgslsmith_mult_i32(~var_1.b.b, firstLeadingBit(2147483647i)))), 16528i);
}


struct Struct_1 {
    a: f32,
    b: i32,
    c: vec3<bool>,
    d: vec2<u32>,
    e: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: i32,
    d: vec4<f32>,
    e: vec4<i32>,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: Struct_1,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(-690f, 0i, vec3<bool>(true, true, true), vec2<u32>(1u, 39810u), vec4<i32>(i32(-2147483648), -1i, 17561i, -26196i));

var<private> global1: vec2<bool>;

var<private> global2: array<vec3<f32>, 20> = array<vec3<f32>, 20>(vec3<f32>(-453f, -841f, 1243f), vec3<f32>(-394f, 786f, -1502f), vec3<f32>(813f, 1947f, -1163f), vec3<f32>(-830f, 1499f, -115f), vec3<f32>(-224f, -1000f, 283f), vec3<f32>(-1770f, -609f, 1883f), vec3<f32>(618f, -1025f, -1000f), vec3<f32>(1307f, -1069f, -645f), vec3<f32>(-234f, 134f, -239f), vec3<f32>(-915f, 216f, -223f), vec3<f32>(312f, 378f, -744f), vec3<f32>(279f, 1139f, 1206f), vec3<f32>(-811f, -480f, -1275f), vec3<f32>(-317f, -1000f, 619f), vec3<f32>(569f, -1670f, 863f), vec3<f32>(212f, 436f, 458f), vec3<f32>(-728f, 1378f, -1000f), vec3<f32>(-293f, 529f, 486f), vec3<f32>(-1253f, 137f, -2406f), vec3<f32>(-972f, 498f, 174f));

var<private> global3: f32;

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_3) -> vec3<bool> {
    var var_0 = global0.c.yy;
    var var_1 = !(!(!(!select(global0.c, global0.c, false))));
    let var_2 = Struct_4(Struct_1(_wgslsmith_f_op_f32(global0.a - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(552f)), 995f))), 2147483647i, global0.c, global0.d, min(max(_wgslsmith_sub_vec4_i32(vec4<i32>(-12669i, global0.e.x, -20986i, u_input.c.x), global0.e), _wgslsmith_mod_vec4_i32(global0.e, global0.e)), ~global0.e)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(vec2<f32>(global0.a, global0.a), vec2<f32>(-1059f, global0.a)))), vec2<f32>(global0.a, _wgslsmith_f_op_f32(step(514f, global0.a))))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(425f, global0.a))))));
    let var_3 = vec4<f32>(global0.a, var_2.a.a, -492f, global0.a);
    var var_4 = -1i;
    return select(vec3<bool>(any(vec3<bool>(all(vec3<bool>(var_2.a.c.x, false, false)), global1.x, select(var_1.x, var_1.x, true))), _wgslsmith_f_op_f32(select(-658f, _wgslsmith_f_op_f32(min(global0.a, 976f)), var_0.x)) >= global0.a, !var_2.a.c.x || true), vec3<bool>(var_0.x, !any(select(var_2.a.c.xz, global0.c.zx, true)), var_0.x), select(vec3<bool>(!all(vec2<bool>(var_2.a.c.x, true)), global0.c.x, any(var_1.xz) && (1i > u_input.b)), var_2.a.c, var_0.x));
}

fn func_2(arg_0: vec2<f32>, arg_1: i32, arg_2: bool) -> Struct_1 {
    let var_0 = select(!(!select(!vec4<bool>(global1.x, arg_2, true, global1.x), vec4<bool>(false, global0.c.x, true, true), global0.c.x || false)), !vec4<bool>(false & all(vec4<bool>(arg_2, true, false, false)), !select(global1.x, arg_2, arg_2), abs(5268u) != global0.d.x, arg_2), ~(u_input.d >> (4294967295u % 32u)) != global0.d.x);
    let var_1 = -_wgslsmith_mult_vec2_i32(reverseBits(_wgslsmith_div_vec2_i32(min(vec2<i32>(2147483647i, arg_1), vec2<i32>(-4403i, -1i)), -global0.e.yx)), (vec2<i32>(46281i, 0i) >> (~global0.d % vec2<u32>(32u))) & (u_input.c ^ _wgslsmith_clamp_vec2_i32(u_input.c, vec2<i32>(-39367i, arg_1), u_input.c)));
    var var_2 = Struct_1(520f, -29085i, !select(select(!vec3<bool>(false, false, global0.c.x), select(var_0.zyz, var_0.zyz, vec3<bool>(arg_2, false, var_0.x)), global0.c), !func_3(Struct_3(-2147483647i), Struct_3(global0.b)), !global0.c), ~(global0.d ^ _wgslsmith_mod_vec2_u32(reverseBits(global0.d), ~vec2<u32>(u_input.a, u_input.d))), global0.e);
    let var_3 = Struct_3(firstLeadingBit(select(_wgslsmith_div_i32(~var_2.b, -1i), ~countOneBits(2147483647i), global0.c.x)));
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1173f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x))));
    return Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.a)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(-471f)))))))), _wgslsmith_sub_i32(32514i, ~(-50401i)), !func_3(Struct_3(17592i), Struct_3(1i)), firstLeadingBit(global0.d), vec4<i32>(-(u_input.c.x | max(arg_1, 30200i)), 0i, arg_1, _wgslsmith_add_i32(min(~var_1.x, var_2.b), var_1.x)));
}

fn func_4(arg_0: Struct_1, arg_1: f32) -> Struct_1 {
    let var_0 = select(firstLeadingBit(-_wgslsmith_sub_vec2_i32(vec2<i32>(-2147483647i, -1i), vec2<i32>(0i, -43639i))), global0.e.zx, !(abs(u_input.a) <= (global0.d.x >> (1u % 32u)))) >> (func_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1403f, global0.a), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1328f, global0.a)), true)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(183f, 326f)))), arg_0.b, select(true, false, true)).d % vec2<u32>(32u));
    let var_1 = Struct_2(arg_0, -1802f, arg_0.e.x, vec4<f32>(_wgslsmith_f_op_f32(step(-126f, arg_1)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.a, _wgslsmith_div_f32(-2328f, arg_0.a))), 559f, _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1 - -1563f), -290f), _wgslsmith_f_op_f32(max(arg_0.a, -252f))))), func_2(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-647f, 121f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))), u_input.b, !global0.c.x).e);
    global3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1197f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1, -723f) * _wgslsmith_f_op_f32(exp2(var_1.a.a))))));
    global2 = array<vec3<f32>, 20>();
    global0 = func_2(_wgslsmith_div_vec2_f32(var_1.d.wx, _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(277f, var_1.a.a)))))), max(~(-1i), countOneBits(~_wgslsmith_dot_vec4_i32(global0.e, vec4<i32>(global0.e.x, -2147483647i, var_0.x, -2147483647i)))), !arg_0.c.x);
    return Struct_1(_wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_vec2_f32(ceil(var_1.d.ww)), -select(-2147483647i, var_0.x, true), ~global0.d.x == ~global0.d.x).a + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1000f)) - _wgslsmith_f_op_f32(arg_0.a * _wgslsmith_div_f32(1320f, -412f)))), max(60033i, var_0.x), vec3<bool>(true, var_1.a.c.x, func_2(var_1.d.zz, -(i32(-1i) * -65568i), !any(var_1.a.c)).c.x), arg_0.d, var_1.e);
}

fn func_1(arg_0: Struct_1) -> vec4<i32> {
    var var_0 = func_4(func_2(vec2<f32>(-1254f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a + arg_0.a))), abs(-46428i), global1.x), -933f);
    let var_1 = var_0.d.x;
    let var_2 = 1i;
    let var_3 = ~select(vec4<u32>(28592u & global0.d.x, func_4(arg_0, -379f).d.x, abs(global0.d.x), 17010u) ^ countOneBits(firstTrailingBit(vec4<u32>(29963u, 145932u, 34950u, global0.d.x))), ~_wgslsmith_sub_vec4_u32(countOneBits(vec4<u32>(0u, var_0.d.x, 1u, u_input.a)), vec4<u32>(4294967295u, 11939u, u_input.d, 7529u)), select(!(!vec4<bool>(false, true, false, var_0.c.x)), !vec4<bool>(global0.c.x, var_0.c.x, false, false), select(select(vec4<bool>(true, var_0.c.x, true, true), vec4<bool>(true, true, false, false), vec4<bool>(global0.c.x, global0.c.x, arg_0.c.x, global0.c.x)), select(vec4<bool>(false, false, true, var_0.c.x), vec4<bool>(false, arg_0.c.x, global1.x, true), vec4<bool>(false, false, true, true)), vec4<bool>(true, true, true, true))));
    let var_4 = Struct_2(func_2(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(global0.a, -523f), vec2<f32>(var_0.a, var_0.a))))), -28236i | ~_wgslsmith_div_i32(global0.b, global0.b), !var_0.c.x), -405f, -1i ^ -_wgslsmith_mult_i32(i32(-1i) * -2147483647i, arg_0.e.x), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a + arg_0.a)), _wgslsmith_f_op_f32(abs(arg_0.a)), var_0.a, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.a * -535f), -599f))), vec4<i32>(var_0.b, -_wgslsmith_dot_vec3_i32(global0.e.xyw, var_0.e.ywx), -14268i, arg_0.b) | var_0.e);
    return global0.e & vec4<i32>(_wgslsmith_mod_i32(34703i, ~(-8699i) | ~u_input.c.x), countOneBits(0i), _wgslsmith_mod_i32(var_0.e.x, (1i ^ global0.b) >> (var_0.d.x % 32u)), 1i >> (1u % 32u));
}

fn func_5(arg_0: Struct_4, arg_1: Struct_2, arg_2: vec2<f32>, arg_3: vec3<bool>) -> Struct_1 {
    let var_0 = arg_1.d;
    let var_1 = Struct_4(Struct_1(_wgslsmith_f_op_f32(-442f - _wgslsmith_f_op_f32(var_0.x * _wgslsmith_div_f32(global0.a, arg_2.x))), max(~(-8821i), _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, u_input.c.x), vec2<i32>(5391i, global0.b)) & _wgslsmith_add_i32(1i, 0i)), select(arg_1.a.c, vec3<bool>(func_3(Struct_3(global0.e.x), Struct_3(-2147483647i)).x, func_3(Struct_3(arg_0.a.b), Struct_3(-1i)).x, true), !(!arg_1.a.c.x)), _wgslsmith_sub_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(arg_1.a.d.x, global0.d.x) >> (arg_0.a.d % vec2<u32>(32u)), arg_1.a.d), func_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(-393f, arg_2.x) * arg_0.b), arg_0.a.e.x & global0.e.x, arg_1.a.c.x).d), select(vec4<i32>(arg_1.c, u_input.c.x, u_input.c.x, -1i), countOneBits(max(arg_0.a.e, global0.e)), vec4<bool>(arg_0.a.c.x, all(vec4<bool>(arg_3.x, arg_1.a.c.x, true, true)), false, !arg_1.a.c.x))), vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_0.b.x + arg_1.d.x), -171f)), _wgslsmith_f_op_f32(-531f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-743f * global0.a)))));
    var var_2 = select(select(vec4<bool>(true, true, true, true), vec4<bool>(473f == _wgslsmith_f_op_f32(-arg_2.x), all(global0.c), arg_3.x, arg_3.x), vec4<bool>(any(arg_1.a.c) || !var_1.a.c.x, !arg_0.a.c.x, (arg_1.a.d.x ^ arg_0.a.d.x) <= arg_1.a.d.x, any(vec4<bool>(false, arg_0.a.c.x, false, arg_0.a.c.x)))), select(!select(!vec4<bool>(true, true, var_1.a.c.x, true), vec4<bool>(arg_0.a.c.x, arg_3.x, false, true), arg_0.a.c.x), vec4<bool>(false, global0.c.x, true, -arg_1.c != 12167i), any(vec4<bool>(arg_3.x || global0.c.x, true, true & arg_0.a.c.x, func_4(arg_0.a, arg_0.a.a).c.x))), vec4<bool>(false, arg_0.a.d.x >= 13541u, false, true));
    let var_3 = false;
    var var_4 = arg_1.d;
    return func_2(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.b.x, _wgslsmith_f_op_f32(f32(-1f) * -260f))), _wgslsmith_f_op_vec2_f32(-var_0.zz))), -((i32(-1i) * -u_input.b) << ((1u & ~var_1.a.d.x) % 32u)), global0.c.x == true);
}

fn func_6(arg_0: Struct_1, arg_1: bool, arg_2: vec3<bool>, arg_3: bool) -> Struct_1 {
    return func_5(Struct_4(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.a * arg_0.a) - -1078f), u_input.b, vec3<bool>(global0.c.x, true, false), ~(~global0.d), select(vec4<i32>(arg_0.b, 1i, global0.b, global0.e.x), arg_0.e, select(vec4<bool>(arg_0.c.x, true, true, true), vec4<bool>(false, arg_2.x, arg_0.c.x, false), vec4<bool>(true, false, arg_1, global1.x)))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1737f, arg_0.a)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.a, arg_0.a)), vec2<f32>(-244f, arg_0.a), func_3(Struct_3(global0.b), Struct_3(u_input.b)).xz)), arg_3))), Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a)), ~global0.e.x, select(func_4(Struct_1(312f, global0.e.x, global0.c, arg_0.d, arg_0.e), global0.a).c, vec3<bool>(false, false, arg_2.x), global1.x), global0.d, ~global0.e), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-722f * _wgslsmith_f_op_f32(-global0.a)))), arg_0.b, vec4<f32>(-1026f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1359f + -690f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.a, arg_0.a)), 480f), ~vec4<i32>(10736i, func_4(Struct_1(-151f, global0.b, arg_2, vec2<u32>(u_input.d, u_input.a), vec4<i32>(-86503i, global0.b, global0.e.x, u_input.b)), global0.a).b, global0.b << (u_input.d % 32u), u_input.c.x)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global0.a, global0.a))), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(global0.a, global0.a))), true))) - vec2<f32>(global0.a, global0.a)), vec3<bool>(arg_2.x, true, _wgslsmith_f_op_f32(-arg_0.a) == func_5(Struct_4(arg_0, vec2<f32>(arg_0.a, global0.a)), Struct_2(arg_0, global0.a, 67394i, vec4<f32>(1713f, arg_0.a, -1454f, global0.a), global0.e), vec2<f32>(540f, -1208f), func_3(Struct_3(2147483647i), Struct_3(u_input.b))).a));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global2[_wgslsmith_index_u32(~50213u, 20u)];
    var_0 = global2[_wgslsmith_index_u32(~global0.d.x, 20u)];
    var var_1 = func_6(func_5(Struct_4(Struct_1(_wgslsmith_f_op_f32(var_0.x + var_0.x), 1i, !vec3<bool>(global1.x, true, global0.c.x), ~global0.d, _wgslsmith_sub_vec4_i32(vec4<i32>(-1i, u_input.b, global0.b, 107517i), global0.e)), var_0.xz), Struct_2(Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, -2678i), vec2<i32>(global0.b, global0.b)), vec3<bool>(true, false, global1.x), _wgslsmith_add_vec2_u32(global0.d, vec2<u32>(0u, u_input.d)), global0.e), var_0.x, firstTrailingBit(~(-2147483647i)), vec4<f32>(global0.a, _wgslsmith_f_op_f32(global0.a + 1130f), -1411f, _wgslsmith_f_op_f32(sign(553f))), firstLeadingBit(func_1(Struct_1(439f, -1i, vec3<bool>(global0.c.x, true, global0.c.x), global0.d, global0.e)))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global0.a, 1469f))), var_0.x), global0.c), any(vec3<bool>(global1.x, true, global1.x)), global0.c, global0.a <= var_0.x);
    global1 = !vec2<bool>((global1.x | all(vec4<bool>(false, var_1.c.x, var_1.c.x, false))) || (false || func_2(var_0.zx, var_1.e.x, true).c.x), true);
    var var_2 = global0.c.x;
    let var_3 = Struct_4(func_4(Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -231f), -41795i, global0.c, vec2<u32>(1u, abs(u_input.d)), max(vec4<i32>(global0.b, 71i, u_input.b, var_1.e.x), select(vec4<i32>(var_1.e.x, global0.b, var_1.e.x, var_1.e.x), global0.e, true))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -529f)))), _wgslsmith_f_op_vec2_f32(-var_0.zz));
    var_2 = !((2147483647i > -(global0.e.x >> (4294967295u % 32u))) == all(vec4<bool>(global0.d.x > 79122u, func_2(var_0.zy, -2147483647i, var_3.a.c.x).c.x, func_6(var_3.a, true, vec3<bool>(var_3.a.c.x, var_3.a.c.x, false), global0.c.x).c.x, var_0.x <= var_3.b.x)));
    var_0 = _wgslsmith_f_op_vec3_f32(floor(global2[_wgslsmith_index_u32(var_3.a.d.x, 20u)]));
    let x = u_input.a;
    s_output = StorageBuffer(global0.e);
}


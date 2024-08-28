struct Struct_1 {
    a: f32,
    b: i32,
    c: vec3<i32>,
    d: vec2<i32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: i32,
    c: vec3<u32>,
}

struct Struct_3 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: f32 = -218f;

var<private> global2: array<vec2<bool>, 7>;

var<private> global3: vec4<i32>;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3(arg_0: vec3<f32>, arg_1: i32, arg_2: f32) -> vec3<i32> {
    var var_0 = reverseBits(36981i);
    global3 = vec4<i32>(i32(-1i) * -13333i, _wgslsmith_add_i32(global3.x, 1i), abs(-2147483647i), (arg_1 ^ ~_wgslsmith_mult_i32(-1i, u_input.a.x)) & (u_input.a.x >> (0u % 32u)));
    var_0 = 0i;
    var_0 = arg_1;
    var var_1 = Struct_3(arg_0.yy);
    return -vec3<i32>(-u_input.a.x, _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_sub_i32(31522i, u_input.a.x), arg_1), countOneBits(firstLeadingBit(vec2<i32>(9782i, 0i)))), u_input.a.x);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: u32) -> u32 {
    let var_0 = (arg_0.c.x | 92523u) ^ abs(abs(~(~u_input.c.x)));
    global0 = select(true, all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), !all(vec3<bool>(false, true, true)))), all(vec3<bool>(true, true, true)) | any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))));
    var var_1 = 385f;
    var var_2 = Struct_3(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_div_f32(-781f, -950f), -267f))), vec2<f32>(1000f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(1000f, -1006f) - _wgslsmith_f_op_f32(783f + -2042f))))));
    let var_3 = Struct_2(select(_wgslsmith_div_vec3_i32(global3.wzy, arg_0.a) ^ _wgslsmith_mult_vec3_i32(vec3<i32>(-36476i, -1i, -1i), vec3<i32>(arg_0.b, 1i, 8716i)), vec3<i32>(_wgslsmith_sub_i32(-1i, arg_1.a.x), -1i, -1i), vec3<bool>(true, false, all(vec3<bool>(true, true, true)))) | _wgslsmith_add_vec3_i32(vec3<i32>(~global3.x, arg_1.b, -2147483647i << (var_0 % 32u)), -_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a.x, 2147483647i, 2147483647i), vec3<i32>(u_input.a.x, arg_0.b, 13231i))), u_input.a.x, abs(vec3<u32>(~(~9592u), _wgslsmith_sub_u32(~arg_1.c.x, 72804u), select(4294967295u, _wgslsmith_mod_u32(7647u, 15906u), true))));
    return ~(~0u);
}

fn func_2(arg_0: u32, arg_1: Struct_3, arg_2: Struct_1, arg_3: vec4<i32>) -> Struct_3 {
    var var_0 = vec4<u32>(4294967295u, _wgslsmith_add_u32(arg_0, ~u_input.d) & _wgslsmith_clamp_u32(17134u >> (1u % 32u), 41850u, 61075u), func_4(Struct_2(func_3(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.a.x, -232f, arg_1.a.x) * vec3<f32>(arg_1.a.x, arg_2.a, arg_1.a.x)), 2147483647i, 1000f), u_input.a.x, ~(vec3<u32>(0u, arg_0, 27366u) >> (vec3<u32>(15405u, 4294967295u, 1u) % vec3<u32>(32u)))), Struct_2(firstTrailingBit(global3.yzw) >> (_wgslsmith_sub_vec3_u32(vec3<u32>(52328u, arg_0, u_input.b.x), vec3<u32>(40963u, 25213u, arg_0)) % vec3<u32>(32u)), firstLeadingBit(_wgslsmith_mult_i32(arg_3.x, 2147483647i)), u_input.c.zyw), reverseBits(_wgslsmith_mult_u32(arg_0, _wgslsmith_mod_u32(1u, u_input.d)))), ~_wgslsmith_mult_u32(firstLeadingBit(~u_input.b.x), _wgslsmith_mod_u32(~arg_0, arg_0)));
    var var_1 = !vec4<bool>(true, true || select(false, true, true), true, true);
    var_1 = vec4<bool>(true, any(global2[_wgslsmith_index_u32(arg_0, 7u)]), true, all(var_1.zxy));
    var var_2 = Struct_2(vec3<i32>(-3969i | firstLeadingBit(-62747i << (u_input.c.x % 32u)), -1i, arg_2.d.x), func_3(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1417f, arg_2.a, 398f)) * vec3<f32>(arg_2.a, arg_1.a.x, arg_2.a)))), global3.x, arg_2.a).x, select(min(vec3<u32>(4294967295u, arg_0, u_input.d), ~vec3<u32>(4294967295u, arg_0, 91342u)), abs(vec3<u32>(arg_0, 0u, var_0.x)), var_1.x) ^ var_0.wzx);
    var var_3 = arg_1;
    return Struct_3(var_3.a);
}

fn func_5(arg_0: Struct_3, arg_1: f32, arg_2: Struct_3) -> Struct_2 {
    let var_0 = ~abs(u_input.a.x);
    let var_1 = ~4294967295u;
    var var_2 = -21129i;
    let var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-322f, arg_0.a.x, arg_0.a.x, 233f))))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-220f, arg_2.a.x, arg_2.a.x, arg_0.a.x), vec4<f32>(arg_1, arg_2.a.x, -171f, arg_1), vec4<bool>(true, false, true, false))) + _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(383f, 1202f, arg_2.a.x, 1158f)))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-1175f, 375f, -1235f, 618f) - _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_0.a.x, arg_0.a.x, 235f, 977f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, 465f, arg_0.a.x, -2291f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a.x, arg_1, arg_2.a.x, 1160f)))))));
    var var_4 = true;
    return Struct_2(-vec3<i32>(~(-27354i), _wgslsmith_add_i32(-u_input.a.x, -u_input.a.x), ~(u_input.a.x << (u_input.d % 32u))), _wgslsmith_div_i32(_wgslsmith_clamp_i32(_wgslsmith_add_i32(abs(-42768i), var_0), 85410i, -3117i), -var_0), vec3<u32>(abs(25468u), _wgslsmith_mod_u32(u_input.c.x, u_input.c.x), 1u));
}

fn func_6(arg_0: vec4<f32>, arg_1: Struct_2) -> Struct_3 {
    var var_0 = u_input.d;
    let var_1 = all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, any(vec4<bool>(true, true, true, true))), all(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false), select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, true), true)))));
    global3 = ~(-firstLeadingBit(vec4<i32>(_wgslsmith_div_i32(-1368i, u_input.a.x), u_input.a.x, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_1.b, 4669i, -2147483647i, -9546i), vec4<i32>(global3.x, global3.x, 16589i, -50342i)), u_input.a.x)));
    let var_2 = var_1;
    return Struct_3(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, arg_0.x)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.x, arg_0.x) * vec2<f32>(arg_0.x, arg_0.x)), true)))));
}

fn func_7(arg_0: Struct_3, arg_1: u32, arg_2: vec2<i32>, arg_3: vec3<f32>) -> vec4<i32> {
    global1 = -417f;
    var var_0 = true;
    var var_1 = arg_3;
    let var_2 = Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(func_2(56539u, arg_0, Struct_1(172f, -7210i, vec3<i32>(6591i, -13607i, global3.x), vec2<i32>(arg_2.x, 2147483647i)), -vec4<i32>(-41345i, u_input.a.x, u_input.a.x, arg_2.x)).a.x)))), global3.x, global3.xzz, u_input.a.xy & vec2<i32>(u_input.a.x, ~firstTrailingBit(-2147483647i)));
    var var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -211f), arg_3.x);
    return ~min(vec4<i32>(_wgslsmith_clamp_i32(-36904i, countOneBits(arg_2.x), 2147483647i), 1i, func_5(Struct_3(vec2<f32>(-628f, arg_3.x)), 1000f, arg_0).a.x, -1i), select(abs(-vec4<i32>(u_input.a.x, u_input.a.x, arg_2.x, var_2.d.x)), min(vec4<i32>(-10887i, -23995i, -1i, u_input.a.x) << (u_input.c % vec4<u32>(32u)), ~vec4<i32>(var_2.d.x, u_input.a.x, 2147483647i, arg_2.x)), _wgslsmith_f_op_f32(-var_1.x) == -130f));
}

fn func_1(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: u32) -> Struct_3 {
    var var_0 = select(true, true, true);
    var var_1 = (-_wgslsmith_div_vec4_i32(-vec4<i32>(u_input.a.x, u_input.a.x, -12838i, 9976i), ~vec4<i32>(2147483647i, -12892i, global3.x, 0i)) & -((vec4<i32>(u_input.a.x, u_input.a.x, -7352i, arg_1.c.x) << (vec4<u32>(4294967295u, 4294967295u, arg_0.x, u_input.c.x) % vec4<u32>(32u))) ^ vec4<i32>(global3.x, 2147483647i, -44511i, 39749i))) >> (~arg_0 % vec4<u32>(32u));
    let var_2 = arg_1;
    var_1 = func_7(func_6(_wgslsmith_div_vec4_f32(vec4<f32>(var_2.a, arg_1.a, -147f, _wgslsmith_f_op_f32(-117f * 1782f)), vec4<f32>(_wgslsmith_f_op_f32(arg_1.a - var_2.a), _wgslsmith_f_op_f32(var_2.a + 550f), _wgslsmith_f_op_f32(max(arg_1.a, -1577f)), _wgslsmith_f_op_f32(min(var_2.a, arg_1.a)))), func_5(Struct_3(vec2<f32>(-663f, 1000f)), _wgslsmith_f_op_f32(-706f - var_2.a), func_2(0u, Struct_3(vec2<f32>(var_2.a, -528f)), Struct_1(790f, -1i, global3.xxw, vec2<i32>(var_2.c.x, u_input.a.x)), _wgslsmith_clamp_vec4_i32(vec4<i32>(2147483647i, -16506i, var_1.x, var_2.c.x), vec4<i32>(1i, 2147483647i, var_1.x, arg_1.c.x), vec4<i32>(u_input.a.x, 0i, 2147483647i, 0i))))), ~reverseBits(~u_input.d >> (arg_2 % 32u)), -var_2.c.xx, _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-arg_1.a), _wgslsmith_div_f32(-257f, -685f), _wgslsmith_f_op_f32(f32(-1f) * -494f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1022f, 1000f, arg_1.a))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-1367f, var_2.a, 863f) - vec3<f32>(var_2.a, arg_1.a, 1109f)))))));
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -539f) * -2036f), arg_1.a, arg_1.a) - _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-862f, arg_1.a, var_2.a))))));
    return Struct_3(_wgslsmith_f_op_vec2_f32(var_3.xx * _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.a, var_2.a)))))));
}

fn func_8(arg_0: Struct_3, arg_1: vec3<i32>, arg_2: Struct_3) -> vec4<f32> {
    global0 = true;
    global2 = array<vec2<bool>, 7>();
    var var_0 = Struct_1(arg_2.a.x, -_wgslsmith_mod_i32(global3.x & _wgslsmith_mod_i32(36094i, 1i), firstTrailingBit(global3.x)), -_wgslsmith_mult_vec3_i32(vec3<i32>(~40392i, abs(-45821i), -37870i), -_wgslsmith_mod_vec3_i32(vec3<i32>(28937i, arg_1.x, arg_1.x), vec3<i32>(arg_1.x, -49180i, arg_1.x))), -vec2<i32>(u_input.a.x, 9768i | firstLeadingBit(u_input.a.x)));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1000f)))), arg_1.x, u_input.a, u_input.a.zy | ~firstTrailingBit(~global3.zw));
    var_1 = Struct_1(_wgslsmith_f_op_f32(floor(func_6(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1303f, 369f, var_0.a, var_1.a)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-234f, arg_2.a.x, 298f, var_1.a))), func_5(arg_2, _wgslsmith_div_f32(arg_2.a.x, arg_0.a.x), Struct_3(arg_0.a))).a.x)), ~1i, func_7(func_2(firstLeadingBit(56854u), func_6(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_0.a.x, 325f, arg_0.a.x, var_1.a))), func_5(arg_0, 300f, arg_0)), Struct_1(arg_0.a.x, _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, 1i, global3.x), arg_1), -arg_1, select(var_0.d, vec2<i32>(54853i, -1i), global2[_wgslsmith_index_u32(47755u, 7u)])), vec4<i32>(~arg_1.x, 0i, -48571i, ~arg_1.x)), (1u | _wgslsmith_clamp_u32(0u, 61587u, u_input.b.x)) | _wgslsmith_mult_u32(func_5(arg_0, var_1.a, arg_2).c.x, countOneBits(u_input.c.x)), arg_1.xy, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1363f, var_1.a, arg_2.a.x))), vec3<f32>(170f, -937f, -385f))) * vec3<f32>(1000f, _wgslsmith_f_op_f32(step(483f, var_1.a)), _wgslsmith_f_op_f32(-arg_2.a.x)))).yyx, u_input.a.xy);
    return _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-1848f + -1063f), var_0.a, _wgslsmith_f_op_f32(ceil(1710f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.a.x + -1141f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_0.a.x, -1979f, arg_2.a.x, 875f), vec4<f32>(arg_0.a.x, var_0.a, 430f, var_1.a)))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.a.x, -478f, -611f, arg_0.a.x))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 456f, var_0.a, -1938f))))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec2<bool>, 7>();
    var var_0 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1133f, 1031f, 534f, 1000f) + vec4<f32>(-1001f, -182f, -984f, -679f)), vec4<f32>(-540f, -450f, -792f, -202f)) + vec4<f32>(-1166f, _wgslsmith_f_op_f32(f32(-1f) * -870f), _wgslsmith_f_op_f32(1056f - -196f), 471f)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(func_8(func_1(min(u_input.c, vec4<u32>(1u, u_input.d, u_input.c.x, u_input.b.x)), Struct_1(-1345f, 2147483647i, u_input.a, vec2<i32>(2147483647i, global3.x)), _wgslsmith_clamp_u32(4294967295u, 0u, u_input.b.x)), select(vec3<i32>(u_input.a.x, global3.x, global3.x) << (u_input.c.zww % vec3<u32>(32u)), u_input.a << (u_input.c.zxy % vec3<u32>(32u)), true), Struct_3(_wgslsmith_div_vec2_f32(vec2<f32>(1000f, -943f), vec2<f32>(1000f, -1791f))))), _wgslsmith_f_op_vec4_f32(func_8(func_2(u_input.c.x, func_1(u_input.c, Struct_1(493f, u_input.a.x, global3.zwy, vec2<i32>(u_input.a.x, global3.x)), 56823u), Struct_1(1715f, u_input.a.x, vec3<i32>(-2853i, 30198i, u_input.a.x), u_input.a.zy), firstLeadingBit(vec4<i32>(-2147483647i, u_input.a.x, u_input.a.x, 0i))), firstLeadingBit(u_input.a), Struct_3(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1447f, -518f), vec2<f32>(-380f, 1494f)))))))));
    var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(666f, 519f, var_0.x, var_0.x) * vec4<f32>(433f, 1302f, 271f, var_0.x)), vec4<f32>(var_0.x, 804f, var_0.x, 1000f))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_0.x, -465f, -1318f, var_0.x))) + _wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_0.x, var_0.x, var_0.x, -549f)))))));
    var var_1 = Struct_2(func_7(func_6(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1032f, -234f, 168f, var_0.x)))), func_5(func_1(u_input.c, Struct_1(var_0.x, 2147483647i, u_input.a, vec2<i32>(global3.x, global3.x)), u_input.d), _wgslsmith_f_op_f32(-var_0.x), func_6(vec4<f32>(-565f, var_0.x, var_0.x, var_0.x), Struct_2(vec3<i32>(u_input.a.x, 17030i, u_input.a.x), global3.x, u_input.c.wyy)))), ~11522u, _wgslsmith_mod_vec2_i32(firstLeadingBit(~vec2<i32>(u_input.a.x, global3.x)), ~u_input.a.xy), _wgslsmith_f_op_vec3_f32(-var_0.xyz)).wxx, -10832i, vec3<u32>(10590u, 86587u, ~u_input.b.x));
    var var_2 = true;
    var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.x, var_0.x)) + var_0.x), _wgslsmith_f_op_f32(f32(-1f) * -422f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(var_0.x)), _wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_8(Struct_3(var_0.zx), _wgslsmith_mod_vec3_i32(u_input.a, u_input.a), Struct_3(vec2<f32>(var_0.x, 539f)))).x)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1000f, var_0.x, 325f, -653f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(2497f, var_0.x, var_0.x, -774f)), true)))) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_0.x, 470f, 1597f, -361f))) + vec4<f32>(var_0.x, -520f, -353f, -2004f)), vec4<f32>(_wgslsmith_f_op_f32(-1042f - -1644f), 436f, _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(-var_0.x)), false))));
    let var_3 = Struct_1(func_1(reverseBits(_wgslsmith_add_vec4_u32(~u_input.c, vec4<u32>(var_1.c.x, 1u, var_1.c.x, 29821u) >> (u_input.c % vec4<u32>(32u)))), Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(533f)), var_0.x), countOneBits(global3.x), vec3<i32>(-1i) * -global3.xzz, _wgslsmith_mult_vec2_i32(u_input.a.zy, vec2<i32>(15101i, 57356i))), 1u).a.x, _wgslsmith_div_i32(global3.x, 49160i), func_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_0.x, 1440f))))), ~(21134i & var_1.b), _wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(1560f)))))), max(abs(vec2<i32>(_wgslsmith_sub_i32(var_1.a.x, var_1.b), i32(-1i) * -54321i)), _wgslsmith_mult_vec2_i32(-vec2<i32>(global3.x, var_1.b), reverseBits(var_1.a.zx))));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.c, firstLeadingBit(-vec4<i32>(20389i, 0i, 0i, global3.x)) | -vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-27104i, var_1.b, 2147483647i), u_input.a), ~u_input.a.x, 2147483647i, global3.x >> (0u % 32u)));
}


struct Struct_1 {
    a: bool,
    b: bool,
    c: i32,
    d: i32,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
    c: Struct_1,
    d: vec2<u32>,
}

struct Struct_3 {
    a: u32,
    b: vec3<i32>,
    c: Struct_1,
    d: bool,
}

struct Struct_4 {
    a: vec2<bool>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_5 {
    a: Struct_4,
    b: vec3<i32>,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -775f;

var<private> global1: f32 = -1955f;

var<private> global2: array<Struct_5, 6>;

var<private> global3: f32 = 153f;

var<private> global4: f32;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3() -> vec4<bool> {
    var var_0 = ~(~vec4<i32>(u_input.b, -1i, max(u_input.b, ~u_input.b), u_input.b));
    let var_1 = Struct_4(vec2<bool>(false && select(true, u_input.a.x <= 37273u, true), true), Struct_1(!(_wgslsmith_mod_u32(u_input.a.x, 1u) <= 0u), any(vec3<bool>(true, true, true)), abs(u_input.b), u_input.b, false), Struct_1(!any(vec2<bool>(false, true)), true, -11733i, firstTrailingBit(-61496i ^ countOneBits(var_0.x)), false));
    global2 = array<Struct_5, 6>();
    let var_2 = vec4<i32>(u_input.b, var_0.x, u_input.b << ((0u & ~u_input.a.x) % 32u), -max(countOneBits(var_0.x | 2147483647i), ~(i32(-1i) * -2147483647i)));
    global3 = _wgslsmith_div_f32(-549f, _wgslsmith_f_op_f32(floor(-690f)));
    return !(!(!(!(!vec4<bool>(var_1.b.b, var_1.b.e, var_1.a.x, false)))));
}

fn func_4(arg_0: vec4<bool>) -> f32 {
    var var_0 = select(!vec4<bool>(true, true, any(arg_0.zy), true), vec4<bool>(all(!vec2<bool>(false, arg_0.x)), all(!arg_0.zyw), !arg_0.x, !(select(false, true, true) | false)), true);
    global2 = array<Struct_5, 6>();
    let var_1 = !(!(!var_0.x));
    let var_2 = 4294967295u;
    let var_3 = vec4<bool>(false, countOneBits(u_input.b) > min(abs(u_input.b), u_input.b), any(vec2<bool>(false, min(-1i, -2147483647i) != u_input.b)), any(vec3<bool>(true, false, !var_0.x)));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1000f)) - _wgslsmith_f_op_f32(797f - -1032f))))) - 1f);
}

fn func_2() -> Struct_4 {
    global0 = _wgslsmith_f_op_f32(func_4(select(select(!select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, true)), func_3(), !func_3()), vec4<bool>(true, any(vec3<bool>(true, false, true)), true, true), func_3())));
    var var_0 = Struct_3(69803u << (_wgslsmith_dot_vec3_u32(countOneBits(u_input.a), abs(firstTrailingBit(vec3<u32>(31726u, 4294967295u, u_input.a.x)))) % 32u), _wgslsmith_mult_vec3_i32(max(~abs(vec3<i32>(2147483647i, 46947i, 15613i)), select(vec3<i32>(u_input.b, 77842i, u_input.b), ~vec3<i32>(-74193i, u_input.b, u_input.b), true)), vec3<i32>(countOneBits(-2147483647i), -u_input.b, ~_wgslsmith_add_i32(u_input.b, u_input.b))), Struct_1(true, false, firstTrailingBit(_wgslsmith_sub_i32(select(21151i, u_input.b, false), ~2147483647i)), 2147483647i, true), !(56844u != max(u_input.a.x, 4294967295u)));
    let var_1 = min(abs(var_0.c.c), max(i32(-1i) * -15611i, ~(-1i)));
    var var_2 = Struct_1(var_0.c.a, !(!var_0.c.e), _wgslsmith_clamp_i32(~(var_1 >> (u_input.a.x % 32u)), ~_wgslsmith_sub_i32(var_1, 21056i), ~(u_input.b | 0i)) >> (max(26905u, ~_wgslsmith_clamp_u32(35219u, 16906u, u_input.a.x)) % 32u), var_1, true);
    let var_3 = -_wgslsmith_clamp_i32(_wgslsmith_add_i32(select(-1i, max(var_0.b.x, 1i), false), var_0.b.x), var_1, 27231i);
    return Struct_4(!(!func_3().wx), Struct_1(!(!(false && var_0.d)), var_2.a, -var_1, (-18732i << ((u_input.a.x << (19298u % 32u)) % 32u)) ^ _wgslsmith_div_i32(0i, firstLeadingBit(0i)), true), var_0.c);
}

fn func_5(arg_0: Struct_4) -> Struct_1 {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-901f, _wgslsmith_f_op_f32(1264f + -664f)))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1832f * -1146f), _wgslsmith_f_op_f32(f32(-1f) * -625f))), _wgslsmith_f_op_f32(trunc(-701f)))), 200f);
    let var_1 = (vec3<i32>(-1i) * -(~(-vec3<i32>(arg_0.b.c, u_input.b, u_input.b)))) >> (select(_wgslsmith_mult_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(7157u, u_input.a.x, u_input.a.x), vec3<u32>(u_input.a.x, 46799u, 9668u)), ~vec3<u32>(u_input.a.x, 4294967295u, 37971u)) << (_wgslsmith_sub_vec3_u32(u_input.a, u_input.a) % vec3<u32>(32u)), ~_wgslsmith_mult_vec3_u32(~vec3<u32>(1u, 66226u, u_input.a.x), max(vec3<u32>(0u, u_input.a.x, 33683u), vec3<u32>(u_input.a.x, 1u, 4294967295u))), !vec3<bool>(false, false != arg_0.a.x, arg_0.a.x)) % vec3<u32>(32u));
    global1 = var_0;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -489f) - var_0) * _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(var_0, -131f))))));
    global2 = array<Struct_5, 6>();
    return Struct_1(!arg_0.a.x, (_wgslsmith_sub_u32(51447u, _wgslsmith_sub_u32(58656u, u_input.a.x)) == 33194u) || true, arg_0.b.d, u_input.b >> (1u % 32u), true);
}

fn func_6(arg_0: Struct_4, arg_1: vec4<i32>, arg_2: vec3<i32>, arg_3: bool) -> Struct_5 {
    global4 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_div_f32(2120f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -663f)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2672f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(846f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2164f) + _wgslsmith_div_f32(-434f, -1869f))))));
    global2 = array<Struct_5, 6>();
    global1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1000f, _wgslsmith_f_op_f32(583f + -849f)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1000f, -2329f)) * 239f), !all(vec3<bool>(arg_3, false, true))))))));
    var var_0 = _wgslsmith_mod_vec4_u32(~vec4<u32>(u_input.a.x, u_input.a.x, 16268u, u_input.a.x), _wgslsmith_mult_vec4_u32(~abs(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a.x, 0u, 0u, 0u), vec4<u32>(29765u, u_input.a.x, u_input.a.x, u_input.a.x))), select(vec4<u32>(u_input.a.x, ~u_input.a.x, ~26022u, u_input.a.x), min(vec4<u32>(27976u, u_input.a.x, u_input.a.x, 0u), vec4<u32>(3739u, 0u, 0u, 4294967295u)) & ~vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, u_input.a.x), vec4<bool>(true, func_5(Struct_4(vec2<bool>(arg_0.c.b, false), arg_0.b, Struct_1(arg_3, arg_3, arg_2.x, -2056i, arg_3))).e, func_3().x, true))));
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(func_4(select(select(vec4<bool>(true, false, arg_3, arg_3), func_3(), !arg_3), !(!vec4<bool>(arg_0.c.a, true, true, arg_3)), true))), -1098f);
    return Struct_5(func_2(), min(_wgslsmith_mult_vec3_i32(firstLeadingBit(vec3<i32>(arg_0.b.d, -30168i, -9918i) | vec3<i32>(9108i, -1i, u_input.b)), firstTrailingBit(reverseBits(arg_2))), max(arg_1.zyx, vec3<i32>(_wgslsmith_dot_vec3_i32(arg_1.yww, vec3<i32>(u_input.b, arg_0.b.c, 6809i)), _wgslsmith_add_i32(-49983i, arg_1.x), ~(-12433i)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(var_1, _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1356f, var_1.x)))), vec2<bool>(func_5(Struct_4(arg_0.a, arg_0.c, arg_0.c)).b, arg_3))) + var_1));
}

fn func_1(arg_0: vec4<i32>, arg_1: vec4<i32>, arg_2: i32) -> vec4<bool> {
    var var_0 = func_6(Struct_4(select(vec2<bool>(true, true), select(select(vec2<bool>(false, true), vec2<bool>(false, false), false), vec2<bool>(true, false), any(vec4<bool>(true, true, true, true))), !all(vec3<bool>(true, false, true))), Struct_1(!(0u == u_input.a.x), true, -59148i, -(~23224i), true), func_5(func_2())), vec4<i32>(~arg_2, _wgslsmith_mod_i32(u_input.b, u_input.b), arg_1.x, abs(1i >> ((u_input.a.x ^ u_input.a.x) % 32u))), ~vec3<i32>(_wgslsmith_add_i32(-1i, u_input.b) & arg_2, _wgslsmith_div_i32(u_input.b, arg_0.x), i32(-1i) * -38411i), 1f >= _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_4(vec4<bool>(true, false, false, false)))))));
    global3 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_0.c.x - -789f), _wgslsmith_f_op_f32(var_0.c.x * var_0.c.x)))) + _wgslsmith_div_f32(var_0.c.x, 1306f))));
    var var_1 = vec2<u32>(~u_input.a.x, 31726u) ^ firstLeadingBit(vec2<u32>(_wgslsmith_add_u32(4294967295u, u_input.a.x), reverseBits(10064u)) << (~_wgslsmith_clamp_vec2_u32(vec2<u32>(1u, u_input.a.x), vec2<u32>(u_input.a.x, 44777u), u_input.a.zz) % vec2<u32>(32u)));
    var var_2 = u_input.a.x;
    var var_3 = 90239i;
    return select(select(vec4<bool>(true, any(func_3().xy), true, func_3().x && var_0.a.a.x), func_3(), vec4<bool>(true, func_5(var_0.a).e, false, var_0.a.b.a)), vec4<bool>(func_3().x, !(!var_0.a.a.x) && !(!var_0.a.a.x), !var_0.a.c.e, true), vec4<bool>(max(u_input.b, 1i) >= ~(-2147483647i), !all(select(vec4<bool>(var_0.a.a.x, false, var_0.a.b.a, var_0.a.c.a), vec4<bool>(var_0.a.c.a, var_0.a.a.x, false, var_0.a.c.b), vec4<bool>(var_0.a.a.x, true, true, false))), any(vec3<bool>(true, true, true)) && !select(var_0.a.b.a, var_0.a.c.b, var_0.a.c.a), !(var_0.c.x > _wgslsmith_f_op_f32(var_0.c.x * 2432f))));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(1000f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f)))))))));
    let var_0 = global2[_wgslsmith_index_u32(abs(u_input.a.x), 6u)];
    global3 = -201f;
    var var_1 = all(vec2<bool>(any(select(func_1(vec4<i32>(-1i, -1i, u_input.b, 66393i), vec4<i32>(-30939i, u_input.b, var_0.b.x, 5007i), var_0.b.x), !vec4<bool>(var_0.a.b.a, var_0.a.a.x, true, var_0.a.a.x), var_0.a.b.e)), !any(vec4<bool>(false, false, var_0.a.b.b, false)) == ((0i > var_0.a.c.d) & true)));
    let var_2 = all(vec4<bool>(false, true, var_0.a.a.x, -_wgslsmith_clamp_i32(var_0.b.x, var_0.b.x, -1i) >= countOneBits(_wgslsmith_dot_vec3_i32(var_0.b, var_0.b))));
    let var_3 = Struct_5(Struct_4(vec2<bool>(min(1u, 13754u) != u_input.a.x, true), var_0.a.c, var_0.a.c), _wgslsmith_div_vec3_i32(_wgslsmith_clamp_vec3_i32(var_0.b | var_0.b, vec3<i32>(var_0.b.x ^ var_0.a.b.d, ~u_input.b, var_0.b.x), vec3<i32>(_wgslsmith_sub_i32(-2147483647i, var_0.a.b.d), _wgslsmith_div_i32(var_0.a.c.d, var_0.a.b.c), _wgslsmith_mod_i32(u_input.b, u_input.b))), _wgslsmith_sub_vec3_i32(var_0.b, min(_wgslsmith_add_vec3_i32(var_0.b, vec3<i32>(var_0.a.c.d, u_input.b, 7472i)), _wgslsmith_sub_vec3_i32(vec3<i32>(1i, 1i, 41338i), vec3<i32>(-4986i, u_input.b, -26987i))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(floor(var_0.c.x)), _wgslsmith_f_op_f32(abs(2310f)))))));
    let var_4 = Struct_2(Struct_1(all(vec2<bool>(var_3.a.c.c >= 1i, true)), var_0.a.a.x, 1i, max(min(-21389i, u_input.b), var_0.b.x), !(func_2().a.x && !var_2)), vec3<f32>(-302f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(502f, var_0.c.x)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.c.x) - _wgslsmith_f_op_f32(floor(var_3.c.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1843f) - _wgslsmith_f_op_f32(floor(var_0.c.x)))), Struct_1(any(!vec2<bool>(false, var_2)), true, 14990i, ~(-86521i), func_2().b.a), vec2<u32>(firstTrailingBit(u_input.a.x), 22038u));
    let x = u_input.a;
    s_output = StorageBuffer(var_3.b | ~vec3<i32>(~var_0.a.c.d, _wgslsmith_div_i32(var_0.a.b.d, 1i), 601i), (var_4.d.x & firstLeadingBit(u_input.a.x | 0u)) >> (max(~(var_4.d.x >> (var_4.d.x % 32u)), 0u) % 32u));
}


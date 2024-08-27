struct Struct_1 {
    a: bool,
    b: bool,
    c: u32,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: i32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: vec3<i32>;

var<private> global2: array<vec3<f32>, 7> = array<vec3<f32>, 7>(vec3<f32>(-218f, 1330f, 883f), vec3<f32>(-1911f, -460f, 825f), vec3<f32>(929f, 1448f, -1650f), vec3<f32>(-405f, -553f, 343f), vec3<f32>(1008f, 2401f, 235f), vec3<f32>(1000f, -1000f, 1112f), vec3<f32>(830f, 1927f, -1017f));

var<private> global3: array<Struct_2, 28> = array<Struct_2, 28>(Struct_2(Struct_1(false, false, 68027u, 4294967295u), false, Struct_1(true, false, 0u, 4294967295u), Struct_1(true, false, 51256u, 31139u), Struct_1(true, false, 29911u, 1u)), Struct_2(Struct_1(true, false, 1u, 1u), true, Struct_1(false, false, 4294967295u, 4294967295u), Struct_1(false, true, 71691u, 3898u), Struct_1(false, false, 1u, 1u)), Struct_2(Struct_1(true, false, 80049u, 0u), true, Struct_1(true, false, 82817u, 0u), Struct_1(false, true, 20742u, 71947u), Struct_1(false, false, 4294967295u, 40817u)), Struct_2(Struct_1(true, true, 28194u, 4294967295u), true, Struct_1(false, true, 0u, 1u), Struct_1(false, false, 24041u, 4294967295u), Struct_1(false, false, 0u, 1u)), Struct_2(Struct_1(true, false, 0u, 1u), true, Struct_1(false, true, 4294967295u, 1u), Struct_1(true, true, 1u, 1u), Struct_1(true, false, 25950u, 53277u)), Struct_2(Struct_1(true, true, 1u, 4294967295u), true, Struct_1(false, false, 1u, 1u), Struct_1(false, false, 0u, 5422u), Struct_1(false, true, 1u, 30101u)), Struct_2(Struct_1(false, false, 3562u, 0u), true, Struct_1(true, false, 0u, 4294967295u), Struct_1(false, false, 4294967295u, 0u), Struct_1(false, false, 20540u, 1u)), Struct_2(Struct_1(true, false, 4294967295u, 1u), false, Struct_1(true, false, 65625u, 0u), Struct_1(true, false, 4294967295u, 0u), Struct_1(false, false, 0u, 0u)), Struct_2(Struct_1(true, true, 4859u, 4135u), true, Struct_1(true, true, 1u, 13961u), Struct_1(false, true, 69766u, 4294967295u), Struct_1(true, false, 42236u, 1u)), Struct_2(Struct_1(false, false, 0u, 55871u), false, Struct_1(false, false, 1u, 4294967295u), Struct_1(true, true, 0u, 51518u), Struct_1(true, true, 21956u, 54014u)), Struct_2(Struct_1(true, false, 4294967295u, 57736u), true, Struct_1(true, false, 66733u, 770u), Struct_1(false, true, 0u, 4294967295u), Struct_1(false, true, 9635u, 1u)), Struct_2(Struct_1(false, false, 47507u, 1u), false, Struct_1(false, true, 33121u, 3092u), Struct_1(true, true, 1u, 80300u), Struct_1(false, true, 4294967295u, 76282u)), Struct_2(Struct_1(false, false, 67771u, 4294967295u), true, Struct_1(true, true, 1u, 5159u), Struct_1(true, true, 69297u, 43276u), Struct_1(false, false, 1u, 0u)), Struct_2(Struct_1(true, true, 0u, 106419u), true, Struct_1(true, false, 0u, 94161u), Struct_1(false, true, 4294967295u, 50413u), Struct_1(false, true, 670u, 42995u)), Struct_2(Struct_1(false, false, 1u, 63109u), false, Struct_1(false, false, 4294967295u, 57076u), Struct_1(true, false, 54470u, 27877u), Struct_1(true, false, 0u, 26398u)), Struct_2(Struct_1(false, false, 12941u, 70931u), false, Struct_1(true, true, 17451u, 1u), Struct_1(false, true, 56944u, 87991u), Struct_1(true, true, 0u, 5293u)), Struct_2(Struct_1(false, false, 24376u, 1097u), true, Struct_1(true, true, 16665u, 22953u), Struct_1(true, true, 0u, 3448u), Struct_1(true, true, 12187u, 4294967295u)), Struct_2(Struct_1(false, true, 4294967295u, 10002u), false, Struct_1(false, false, 20171u, 30296u), Struct_1(true, true, 50847u, 16105u), Struct_1(true, false, 9712u, 62003u)), Struct_2(Struct_1(true, false, 0u, 4294967295u), true, Struct_1(false, false, 4294967295u, 1u), Struct_1(true, true, 1u, 36673u), Struct_1(false, false, 4294967295u, 1u)), Struct_2(Struct_1(false, true, 25462u, 26835u), true, Struct_1(false, true, 0u, 1u), Struct_1(true, true, 82711u, 1u), Struct_1(true, true, 37645u, 2027u)), Struct_2(Struct_1(false, true, 0u, 1u), true, Struct_1(true, true, 0u, 53805u), Struct_1(false, false, 28632u, 4294967295u), Struct_1(true, true, 440u, 0u)), Struct_2(Struct_1(true, false, 50065u, 4294967295u), true, Struct_1(false, true, 56719u, 15955u), Struct_1(false, true, 6248u, 36581u), Struct_1(false, false, 1u, 4294967295u)), Struct_2(Struct_1(true, true, 4294967295u, 4294967295u), true, Struct_1(false, false, 12458u, 1u), Struct_1(false, true, 0u, 4294967295u), Struct_1(true, false, 1u, 17430u)), Struct_2(Struct_1(false, true, 0u, 8415u), false, Struct_1(false, true, 31095u, 53440u), Struct_1(true, true, 19121u, 0u), Struct_1(false, false, 7152u, 4294967295u)), Struct_2(Struct_1(false, true, 13870u, 4294967295u), false, Struct_1(true, true, 4294967295u, 0u), Struct_1(false, false, 51748u, 21727u), Struct_1(false, true, 0u, 8221u)), Struct_2(Struct_1(true, true, 1u, 100785u), true, Struct_1(true, false, 1u, 70028u), Struct_1(true, true, 4294967295u, 0u), Struct_1(false, true, 1u, 0u)), Struct_2(Struct_1(false, false, 4294967295u, 0u), false, Struct_1(true, false, 1u, 0u), Struct_1(false, false, 0u, 11743u), Struct_1(true, true, 7660u, 33519u)), Struct_2(Struct_1(true, true, 1868u, 7143u), false, Struct_1(false, true, 14188u, 0u), Struct_1(true, false, 44350u, 2842u), Struct_1(false, false, 0u, 0u)));

var<private> global4: Struct_2;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
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

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_2(arg_0: bool, arg_1: Struct_4, arg_2: vec3<f32>, arg_3: vec4<u32>) -> u32 {
    var var_0 = Struct_3(global4.c);
    var var_1 = vec2<i32>(global1.x, _wgslsmith_dot_vec3_i32(vec3<i32>(~global1.x, _wgslsmith_sub_i32(-u_input.c.x, global1.x), ~1i), u_input.b));
    let var_2 = Struct_3(Struct_1(any(vec2<bool>(-8523i >= global1.x, false)), select(true, global0.a | (4294967295u != arg_3.x), all(vec2<bool>(true, true))), var_0.a.d, 31397u));
    return ~_wgslsmith_dot_vec4_u32(~firstLeadingBit(vec4<u32>(arg_3.x, u_input.a.x, 0u, arg_3.x)) ^ (arg_3 | _wgslsmith_add_vec4_u32(arg_3, arg_3)), vec4<u32>(_wgslsmith_mult_u32(var_0.a.c, global0.d >> (global4.a.c % 32u)), reverseBits(var_0.a.c), min(_wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(global0.d, 47068u, 1u)), var_0.a.c), countOneBits(~71655u)));
}

fn func_3(arg_0: Struct_4, arg_1: bool, arg_2: Struct_4) -> f32 {
    var var_0 = global3[_wgslsmith_index_u32(~(~_wgslsmith_clamp_u32(global0.d, 1u, _wgslsmith_clamp_u32(global0.d & arg_2.a.d, arg_2.a.c, ~global0.c))), 28u)];
    let var_1 = all(vec4<bool>(global0.b, arg_2.a.c != ~1u, select(true, !arg_2.a.b & global4.b, true), true));
    let var_2 = arg_1;
    var var_3 = true;
    global4 = global3[_wgslsmith_index_u32(1u, 28u)];
    return -1000f;
}

fn func_1(arg_0: u32) -> vec3<bool> {
    let var_0 = Struct_3(Struct_1(!global4.d.a, global1.x >= -62212i, arg_0 & 33350u, func_2(true, Struct_4(Struct_1(false, global4.b, global4.d.d, arg_0)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(global2[_wgslsmith_index_u32(global4.d.d, 7u)]))), ~_wgslsmith_mult_vec4_u32(vec4<u32>(arg_0, 1u, 7720u, global4.a.d), vec4<u32>(0u, 1u, 54485u, 20753u)))));
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(func_3(Struct_4(global4.e), false, Struct_4(global4.d))), -1717f, _wgslsmith_f_op_f32(f32(-1f) * -1000f));
    global1 = vec3<i32>(u_input.b.x, -47523i, _wgslsmith_dot_vec2_i32(~(~_wgslsmith_add_vec2_i32(vec2<i32>(global1.x, -1i), global1.zz)), abs(vec2<i32>(max(u_input.b.x, 61613i), _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, global1.x, -15142i, 8973i), vec4<i32>(u_input.b.x, 36252i, u_input.c.x, 2147483647i))))));
    let var_2 = global3[_wgslsmith_index_u32(1u, 28u)];
    var_1 = vec3<f32>(-479f, _wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1008f + _wgslsmith_f_op_f32(var_1.x * 653f)))) + -1000f));
    return select(vec3<bool>(!any(vec2<bool>(false, false)), true, (-27387i >> (1u % 32u)) <= global1.x), select(vec3<bool>(1u >= u_input.a.x, all(!vec2<bool>(false, var_0.a.b)), var_0.a.b), !(!(!vec3<bool>(global4.a.b, false, var_2.a.b))), !(true || !global0.b)), var_0.a.b);
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_4, arg_2: Struct_3, arg_3: vec3<bool>) -> Struct_3 {
    global0 = arg_1.a;
    var var_0 = global3[_wgslsmith_index_u32(4294967295u, 28u)];
    var_0 = global3[_wgslsmith_index_u32(arg_1.a.d, 28u)];
    var var_1 = vec4<u32>(global4.e.c, _wgslsmith_dot_vec2_u32(select(u_input.a.yz, u_input.a.zz, !vec2<bool>(var_0.c.b, arg_0.x)), abs(reverseBits(u_input.a.yz))), ~(~1u), arg_2.a.d);
    let var_2 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1104f)));
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(vec3<bool>(global4.d.a & true, any(!func_1(0u)), !all(vec4<bool>(global4.b, true, global0.b, true))), Struct_4(Struct_1(~0u != u_input.a.x, any(vec3<bool>(global0.b, global0.a, false)), firstTrailingBit(~u_input.a.x), ~reverseBits(81240u))), Struct_3(global4.e), vec3<bool>(all(!vec3<bool>(global0.a, global0.a, false)), false, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-511f)) * -490f) < _wgslsmith_f_op_f32(func_3(Struct_4(global4.e), u_input.b.x < global1.x, Struct_4(Struct_1(global4.c.b, global0.b, global0.c, global0.c))))));
    var var_1 = vec2<f32>(-1126f, -1405f);
    var var_2 = -vec2<i32>(_wgslsmith_mod_i32(u_input.b.x, u_input.b.x), -10543i);
    var var_3 = _wgslsmith_dot_vec3_u32(u_input.a, _wgslsmith_mod_vec3_u32(~(~u_input.a), firstLeadingBit(select(select(vec3<u32>(77678u, 13955u, 22728u), vec3<u32>(1u, u_input.a.x, 37915u), vec3<bool>(global4.c.b, global4.e.a, true)), vec3<u32>(u_input.a.x, 0u, 49782u) ^ u_input.a, func_1(u_input.a.x).x))));
    var var_4 = -abs(vec4<i32>(-10004i, u_input.b.x, global1.x, -u_input.c.x << (_wgslsmith_mult_u32(9964u, global4.d.c) % 32u)));
    let var_5 = var_0.a.b;
    var var_6 = (select(max(_wgslsmith_clamp_vec4_i32(vec4<i32>(var_2.x, var_4.x, global1.x, u_input.b.x), vec4<i32>(-3469i, -31988i, 26366i, 13346i), vec4<i32>(global1.x, -2147483647i, u_input.c.x, global1.x)), vec4<i32>(u_input.c.x, 0i, 5685i, u_input.b.x) >> (vec4<u32>(u_input.a.x, 4294967295u, 1u, 4294967295u) % vec4<u32>(32u))), vec4<i32>(~u_input.b.x, firstTrailingBit(global1.x), 42213i & u_input.b.x, _wgslsmith_div_i32(0i, 31479i)), global4.c.a) ^ vec4<i32>(-1i, var_4.x << (_wgslsmith_sub_u32(global0.d, 4294967295u) % 32u), u_input.c.x, _wgslsmith_clamp_i32(_wgslsmith_mod_i32(global1.x, 1i), var_4.x, -53820i))) & (firstTrailingBit(-vec4<i32>(2147483647i, 20867i, u_input.b.x, global1.x) & ~vec4<i32>(u_input.b.x, 1i, 20360i, -2147483647i)) >> (vec4<u32>(global0.d, var_0.a.c, _wgslsmith_mod_u32(abs(1u), ~global0.d), ~(~3052u)) % vec4<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(var_6.x, _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1000f, _wgslsmith_f_op_f32(var_1.x - _wgslsmith_f_op_f32(abs(var_1.x)))), vec2<f32>(_wgslsmith_f_op_f32(func_3(Struct_4(global4.a), false, Struct_4(Struct_1(false, true, u_input.a.x, 1u)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x))), func_4(vec3<bool>(true, any(vec2<bool>(true, true)), !global4.a.a), Struct_4(Struct_1(var_0.a.b, global4.e.b, global0.d, 4294967295u)), func_4(vec3<bool>(false, var_0.a.a, true), Struct_4(Struct_1(false, global0.a, u_input.a.x, 1u)), func_4(vec3<bool>(true, false, true), Struct_4(global4.a), Struct_3(Struct_1(global4.d.a, false, global0.c, 9462u)), vec3<bool>(false, true, false)), vec3<bool>(true, true, true)), func_1(0u)).a.a)), _wgslsmith_add_i32(_wgslsmith_mult_i32(global1.x, var_6.x << (var_0.a.d % 32u)), var_2.x) ^ var_4.x, vec4<u32>(4294967295u, min(_wgslsmith_dot_vec4_u32(abs(vec4<u32>(var_0.a.d, 25833u, 0u, var_0.a.c)), vec4<u32>(global0.d, var_0.a.c, global4.d.c, 46862u) | vec4<u32>(u_input.a.x, global4.c.c, global0.c, var_0.a.d)), ~min(global4.c.c, 79265u)), ~_wgslsmith_dot_vec2_u32(u_input.a.xz, ~u_input.a.zz), 6018u));
}


struct Struct_1 {
    a: vec4<i32>,
    b: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: vec3<bool>,
    d: u32,
}

struct Struct_3 {
    a: bool,
    b: i32,
    c: Struct_2,
    d: vec4<i32>,
}

struct Struct_4 {
    a: f32,
    b: i32,
    c: u32,
}

struct Struct_5 {
    a: bool,
    b: Struct_1,
    c: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 12>;

var<private> global1: array<vec2<bool>, 32> = array<vec2<bool>, 32>(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false));

var<private> global2: array<vec3<bool>, 16>;

var<private> global3: array<Struct_2, 5>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_2, arg_2: u32) -> f32 {
    let var_0 = select(arg_1.c, vec3<bool>(true, true, true), any(select(vec2<bool>(true, false), vec2<bool>(arg_1.c.x, !arg_1.c.x), !select(global1[_wgslsmith_index_u32(arg_1.d, 32u)], vec2<bool>(false, false), vec2<bool>(false, arg_1.c.x)))));
    var var_1 = Struct_1(_wgslsmith_clamp_vec4_i32(global0[_wgslsmith_index_u32(arg_1.d, 12u)], min(abs(vec4<i32>(u_input.a.x, u_input.a.x, arg_0.x, u_input.a.x)), vec4<i32>(min(arg_1.b, 2147483647i), _wgslsmith_mult_i32(0i, u_input.a.x), 72572i | arg_0.x, arg_1.a.a.x)), ~(_wgslsmith_clamp_vec4_i32(global0[_wgslsmith_index_u32(4294967295u, 12u)], arg_1.a.a, arg_1.a.a) ^ -global0[_wgslsmith_index_u32(23029u, 12u)])), _wgslsmith_f_op_vec4_f32(arg_1.a.b - vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_1.a.b.x))), arg_1.a.b.x, arg_1.a.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1044f))))));
    global3 = array<Struct_2, 5>();
    var var_2 = _wgslsmith_div_f32(arg_1.a.b.x, -1000f);
    var_1 = Struct_1(global0[_wgslsmith_index_u32(abs(35351u), 12u)], _wgslsmith_f_op_vec4_f32(-var_1.b));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_1.a.b.x)) - var_1.b.x));
}

fn func_2(arg_0: vec4<u32>, arg_1: Struct_4) -> vec4<u32> {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3((max(vec4<i32>(9691i, u_input.a.x, u_input.a.x, -2147483647i), global0[_wgslsmith_index_u32(117113u, 12u)]) >> (~vec4<u32>(6313u, arg_1.c, 48533u, arg_1.c) % vec4<u32>(32u))) & _wgslsmith_div_vec4_i32(vec4<i32>(-1i, u_input.a.x, arg_1.b, arg_1.b), vec4<i32>(30669i, 2147483647i, 0i, -38723i) << (arg_0 % vec4<u32>(32u))), global3[_wgslsmith_index_u32(arg_1.c << (arg_1.c % 32u), 5u)], arg_0.x)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(-vec4<i32>(-2147483647i, arg_1.b, 1i, 6447i), Struct_2(Struct_1(global0[_wgslsmith_index_u32(32045u, 12u)], vec4<f32>(arg_1.a, 1490f, arg_1.a, -990f)), firstLeadingBit(u_input.a.x), select(global2[_wgslsmith_index_u32(arg_1.c, 16u)], vec3<bool>(false, true, true), vec3<bool>(true, false, false)), arg_0.x), _wgslsmith_sub_u32(abs(arg_0.x), ~arg_1.c)))));
    global2 = array<vec3<bool>, 16>();
    var var_1 = vec4<i32>(0i, arg_1.b, -2147483647i, _wgslsmith_mod_i32(-(~(-65781i)), -1i));
    let var_2 = vec2<i32>(61377i, abs(abs(countOneBits(countOneBits(u_input.a.x)))));
    let var_3 = max(vec2<i32>(arg_1.b, var_2.x), vec2<i32>(~min(u_input.a.x, var_1.x) << ((arg_0.x & 0u) % 32u), -var_1.x));
    return select(_wgslsmith_mod_vec4_u32(select(_wgslsmith_sub_vec4_u32(vec4<u32>(976u, 52463u, arg_1.c, 4294967295u) >> (arg_0 % vec4<u32>(32u)), ~arg_0), arg_0, select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, false), arg_0.x != arg_1.c)), max(vec4<u32>(arg_1.c, arg_1.c, 0u, arg_0.x) ^ select(vec4<u32>(arg_1.c, arg_0.x, arg_1.c, arg_1.c), vec4<u32>(0u, arg_0.x, arg_1.c, arg_1.c), false), abs(firstLeadingBit(arg_0)))), vec4<u32>(_wgslsmith_div_u32(~arg_1.c, arg_0.x), arg_0.x, ~70742u, arg_1.c), select(vec4<bool>(true, true, _wgslsmith_f_op_f32(sign(168f)) > _wgslsmith_f_op_f32(var_0 - 1000f), true), vec4<bool>(true, true, true, true), !select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, false), true)));
}

fn func_1(arg_0: Struct_5) -> f32 {
    var var_0 = vec4<u32>(50019u, 21666u, 4294967295u, 17572u);
    global3 = array<Struct_2, 5>();
    var_0 = select(select(_wgslsmith_sub_vec4_u32(func_2(~vec4<u32>(var_0.x, var_0.x, var_0.x, var_0.x), Struct_4(arg_0.b.b.x, u_input.a.x, var_0.x)), vec4<u32>(var_0.x, func_2(vec4<u32>(var_0.x, 31667u, 8281u, 4294967295u), Struct_4(arg_0.b.b.x, u_input.a.x, var_0.x)).x, var_0.x, var_0.x)), (vec4<u32>(4294967295u, var_0.x, var_0.x, 4294967295u) << (vec4<u32>(28337u, 33764u, var_0.x, var_0.x) % vec4<u32>(32u))) >> (vec4<u32>(var_0.x, 0u | var_0.x, var_0.x, var_0.x) % vec4<u32>(32u)), vec4<bool>(!arg_0.a, true | all(vec3<bool>(false, arg_0.c, true)), true, arg_0.a)), ~abs(~vec4<u32>(0u, 15171u, var_0.x, 4294967295u)) >> (firstLeadingBit(countOneBits(vec4<u32>(4294967295u, 1u, var_0.x, var_0.x)) >> (max(vec4<u32>(1u, var_0.x, var_0.x, var_0.x), vec4<u32>(35959u, var_0.x, 27569u, var_0.x)) % vec4<u32>(32u))) % vec4<u32>(32u)), !(!select(!vec4<bool>(arg_0.a, false, arg_0.a, arg_0.c), select(vec4<bool>(arg_0.c, false, arg_0.c, false), vec4<bool>(true, arg_0.a, false, arg_0.a), vec4<bool>(arg_0.a, true, false, arg_0.a)), vec4<bool>(arg_0.a, arg_0.c, arg_0.a, false))));
    var_0 = vec4<u32>(87528u, _wgslsmith_add_u32(~(~var_0.x) & var_0.x, ~28693u), firstLeadingBit(~var_0.x), 90019u);
    let var_1 = true;
    return _wgslsmith_f_op_f32(arg_0.b.b.x + 1000f);
}

fn func_4(arg_0: f32, arg_1: i32, arg_2: Struct_2, arg_3: vec4<bool>) -> vec2<bool> {
    global0 = array<vec4<i32>, 12>();
    global1 = array<vec2<bool>, 32>();
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(vec4<i32>(_wgslsmith_add_i32(-67481i, select(-13817i, arg_1, true)), _wgslsmith_dot_vec4_i32(global0[_wgslsmith_index_u32(21099u, 12u)], ~global0[_wgslsmith_index_u32(1u, 12u)]), _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(-2147483647i, 40685i, 2147483647i), vec3<i32>(0i, 2147483647i, 2147483647i)), arg_2.a.a.wyx), min(-33554i, -1i) << (arg_2.d % 32u)), Struct_2(Struct_1(vec4<i32>(u_input.a.x, -1i, -4979i, u_input.a.x), _wgslsmith_f_op_vec4_f32(arg_2.a.b * vec4<f32>(638f, arg_2.a.b.x, arg_2.a.b.x, 851f))), -79519i, select(arg_2.c, select(arg_2.c, vec3<bool>(false, false, false), arg_3.zzx), select(vec3<bool>(true, arg_2.c.x, arg_2.c.x), vec3<bool>(false, arg_2.c.x, false), arg_2.c.x)), arg_2.d), arg_2.d)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_2.a.b.x))) - _wgslsmith_f_op_f32(arg_2.a.b.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-831f))))));
    let var_1 = Struct_1(firstTrailingBit((-arg_2.a.a | arg_2.a.a) & max(~arg_2.a.a, _wgslsmith_mult_vec4_i32(global0[_wgslsmith_index_u32(0u, 12u)], vec4<i32>(-2147483647i, 0i, arg_1, arg_1)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_2.a.b * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(arg_2.a.b))))));
    let var_2 = vec4<bool>(true, all(!arg_3.yz), arg_2.c.x, true);
    return select(!vec2<bool>(_wgslsmith_f_op_f32(func_1(Struct_5(arg_3.x, arg_2.a, false))) >= _wgslsmith_f_op_f32(-arg_0), true), !global1[_wgslsmith_index_u32((0u ^ _wgslsmith_sub_u32(80093u, arg_2.d)) & 28436u, 32u)], !any(!arg_2.c.zx));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec2<bool>, 32>();
    let var_0 = !(!func_4(_wgslsmith_f_op_f32(func_1(Struct_5(true, Struct_1(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), vec4<f32>(226f, 126f, 1000f, -1215f)), true))), u_input.a.x, global3[_wgslsmith_index_u32(86832u, 5u)], select(select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, false)), vec4<bool>(false, true, true, true), false)));
    global0 = array<vec4<i32>, 12>();
    let var_1 = _wgslsmith_clamp_vec4_u32(vec4<u32>(124824u, 49244u, _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(1194u, 11469u, 4294967295u, 67273u), vec4<u32>(1u, 4294967295u, 1u, 53142u)), _wgslsmith_mult_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(1u, 1u, 1u, 1u))), 4294967295u), ~vec4<u32>(abs(1u), firstTrailingBit(func_2(vec4<u32>(14737u, 4294967295u, 1u, 27843u), Struct_4(956f, u_input.a.x, 55767u)).x), abs(1u), firstTrailingBit(1u)), _wgslsmith_sub_vec4_u32(vec4<u32>(~1454u, 1u, 6154u, 1u), (~vec4<u32>(1u, 10540u, 0u, 0u) | select(vec4<u32>(66265u, 105175u, 0u, 0u), vec4<u32>(4294967295u, 0u, 0u, 1u), vec4<bool>(true, var_0.x, var_0.x, false))) | vec4<u32>(1u, 1u, 1u, 1u)));
    let x = u_input.a;
    s_output = StorageBuffer(~(vec2<u32>(abs(1u), ~var_1.x) | vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(84450u, 0u), var_1.yw), ~6974u)), ~0i, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(869f, -2052f), _wgslsmith_f_op_f32(select(-1435f, 872f, var_0.x)), 939f) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-145f, 2000f, 415f), vec3<f32>(-2124f, -456f, 2769f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1432f, 795f, 814f))))));
}


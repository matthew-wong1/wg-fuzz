struct Struct_1 {
    a: vec3<u32>,
    b: i32,
    c: vec3<u32>,
    d: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: vec3<i32>,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 27>;

var<private> global1: array<vec4<f32>, 19>;

var<private> global2: array<Struct_1, 1> = array<Struct_1, 1>(Struct_1(vec3<u32>(50968u, 46003u, 4294967295u), i32(-2147483648), vec3<u32>(1621u, 66016u, 1u), vec4<u32>(4294967295u, 35223u, 0u, 4294967295u)));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2, arg_2: bool, arg_3: vec2<bool>) -> i32 {
    var var_0 = select(vec3<bool>(true, false, !select(true, false, arg_3.x)), !vec3<bool>(!any(vec3<bool>(arg_2, false, arg_2)), all(vec2<bool>(arg_2, arg_3.x)) & all(vec4<bool>(false, arg_2, true, true)), arg_3.x), vec3<bool>(true, true, ~arg_1.c.a.x >= ~(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 27u)], 27u)] | 0u)));
    var var_1 = max(arg_1.c.d.yx >> (~_wgslsmith_sub_vec2_u32(~vec2<u32>(1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(arg_0.b.a.x, 27u)], 27u)]), u_input.c) % vec2<u32>(32u)), vec2<u32>(~select(arg_0.c.d.x, abs(58867u), !arg_2), min(~u_input.c.x | firstTrailingBit(u_input.c.x), ~39950u)));
    var var_2 = Struct_1(vec3<u32>(~(~arg_1.a.d.x), 64308u >> (_wgslsmith_dot_vec4_u32(abs(vec4<u32>(36954u, u_input.c.x, 20619u, arg_0.b.a.x)), arg_0.b.d) % 32u), _wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a.x, arg_0.c.c.x, var_1.x), vec3<u32>(var_1.x, arg_1.b.c.x, 0u), u_input.a), select(vec3<u32>(global0[_wgslsmith_index_u32(u_input.b.x, 27u)], 41612u, var_1.x), vec3<u32>(14901u, arg_1.c.c.x, 74858u), vec3<bool>(arg_2, true, true))), global0[_wgslsmith_index_u32(u_input.c.x, 27u)], ~(~47350u))), firstLeadingBit(_wgslsmith_sub_i32(-72706i, arg_1.a.b)), _wgslsmith_mult_vec3_u32(arg_0.b.a, select(_wgslsmith_div_vec3_u32(vec3<u32>(3556u, u_input.c.x, arg_0.a.c.x) & vec3<u32>(13836u, u_input.c.x, 48219u), vec3<u32>(1u, 6875u, 4294967295u)), abs(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a.x, arg_1.a.c.x, u_input.a.x), arg_1.b.a)), arg_2)), (~(~arg_0.a.d) >> ((vec4<u32>(arg_1.b.c.x, 34128u, global0[_wgslsmith_index_u32(arg_0.c.a.x, 27u)], var_1.x) << (~arg_0.a.d % vec4<u32>(32u))) % vec4<u32>(32u))) >> (arg_0.a.d % vec4<u32>(32u)));
    var var_3 = vec3<f32>(235f, -1000f, -1162f);
    var var_4 = global1[_wgslsmith_index_u32(~firstLeadingBit(~_wgslsmith_add_u32(global0[_wgslsmith_index_u32(4294967295u, 27u)], ~u_input.b.x)), 19u)];
    return firstLeadingBit(-(arg_0.a.b >> (19991u % 32u)));
}

fn func_2(arg_0: i32, arg_1: vec2<u32>, arg_2: vec2<u32>) -> Struct_1 {
    global0 = array<u32, 27>();
    var var_0 = _wgslsmith_clamp_vec3_i32(_wgslsmith_div_vec3_i32(_wgslsmith_mult_vec3_i32(~vec3<i32>(arg_0, -13357i, arg_0), vec3<i32>(1i, 2147483647i, _wgslsmith_mult_i32(arg_0, arg_0))), vec3<i32>(countOneBits(_wgslsmith_mod_i32(arg_0, 209i)), _wgslsmith_mod_i32(1i, arg_0), ~arg_0 & arg_0)), _wgslsmith_mult_vec3_i32(_wgslsmith_sub_vec3_i32(~(~vec3<i32>(-2147483647i, -16304i, arg_0)), -(~vec3<i32>(14479i, arg_0, -43846i))), _wgslsmith_mult_vec3_i32(-select(vec3<i32>(arg_0, 0i, 2147483647i), vec3<i32>(arg_0, -62628i, arg_0), vec3<bool>(true, false, false)), -(~vec3<i32>(2147483647i, arg_0, arg_0)))), select(~_wgslsmith_mult_vec3_i32(vec3<i32>(1i, arg_0, arg_0), vec3<i32>(2147483647i, 28302i, arg_0)) ^ vec3<i32>(arg_0, ~0i, ~(-11790i)), vec3<i32>(-1i, arg_0, ~1i), any(!select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true)))));
    var var_1 = true;
    let var_2 = Struct_2(global2[_wgslsmith_index_u32(reverseBits(11623u), 1u)], global2[_wgslsmith_index_u32(abs(_wgslsmith_sub_u32(~(~arg_2.x), 2891u)), 1u)], Struct_1(_wgslsmith_mult_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(arg_2.x, arg_1.x, 0u), u_input.a), firstLeadingBit(u_input.b)), -1i, vec3<u32>(global0[_wgslsmith_index_u32(~103265u, 27u)], ~(~0u), 2614u), min(vec4<u32>(firstLeadingBit(arg_1.x), ~42161u, firstTrailingBit(global0[_wgslsmith_index_u32(4037u, 27u)]), 51223u), vec4<u32>(global0[_wgslsmith_index_u32(arg_1.x, 27u)], arg_2.x, 1u, arg_2.x) >> (vec4<u32>(26916u, 16720u, global0[_wgslsmith_index_u32(u_input.c.x, 27u)], 21434u) % vec4<u32>(32u)))));
    global0 = array<u32, 27>();
    return Struct_1(vec3<u32>(84711u, ~7366u, arg_1.x), _wgslsmith_dot_vec3_i32(-vec3<i32>(firstLeadingBit(arg_0), 1i, 1i), ~vec3<i32>(-1i, arg_0, func_3(Struct_2(var_2.a, global2[_wgslsmith_index_u32(0u, 1u)], global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.c.x, 27u)], 1u)]), var_2, true, vec2<bool>(false, false)))), vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(~arg_1.x, u_input.b.x ^ global0[_wgslsmith_index_u32(u_input.a.x, 27u)], ~arg_1.x), _wgslsmith_mult_vec3_u32(reverseBits(vec3<u32>(arg_1.x, 28274u, arg_2.x)), u_input.a)), u_input.b.x << (_wgslsmith_sub_u32(0u, u_input.a.x) % 32u), _wgslsmith_add_u32(global0[_wgslsmith_index_u32(~(61409u ^ global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 27u)], 27u)], 27u)]), 27u)], 4294967295u)), vec4<u32>(_wgslsmith_clamp_u32(_wgslsmith_mod_u32(~global0[_wgslsmith_index_u32(u_input.a.x, 27u)], _wgslsmith_clamp_u32(37943u, 80750u, u_input.b.x)), 0u, 4294967295u), 25467u, 84608u, countOneBits(~u_input.a.x) >> (arg_1.x % 32u)));
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_1) -> f32 {
    let var_0 = func_2(arg_1.b, arg_1.d.wy, arg_1.c.yy);
    var var_1 = false;
    let var_2 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-262f - 1347f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(152f, -673f, false))))))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1262f - -696f))), 315f)));
    var var_3 = ~(~(-7591i));
    var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_2.x + _wgslsmith_f_op_f32(ceil(var_2.x))))) == _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-231f + 658f), _wgslsmith_f_op_f32(f32(-1f) * -541f), 4294967295u >= arg_0.x)), var_2.x));
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(310f, 1f));
}

fn func_1(arg_0: i32) -> i32 {
    global0 = array<u32, 27>();
    let var_0 = _wgslsmith_f_op_f32(func_4(u_input.a.yx, func_2(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_0, 56i, arg_0, 1i), vec4<i32>(5826i, 11664i, -12820i, -27895i)) | -1i, countOneBits(~vec2<u32>(u_input.c.x, u_input.a.x)), u_input.a.yz)));
    var var_1 = Struct_1(~(~(~u_input.a)), i32(-1i) * -33093i, vec3<u32>(u_input.c.x, 1u, ~_wgslsmith_sub_u32(~4294967295u, max(u_input.c.x, 64403u))), _wgslsmith_add_vec4_u32(((vec4<u32>(31516u, u_input.a.x, 0u, 18917u) >> (vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.c.x, 27u)], 27u)], global0[_wgslsmith_index_u32(48596u, 27u)], 10282u, global0[_wgslsmith_index_u32(0u, 27u)]) % vec4<u32>(32u))) | max(vec4<u32>(4294967295u, 24062u, 4294967295u, 16737u), vec4<u32>(4294967295u, 28686u, u_input.a.x, 1u))) ^ vec4<u32>(65441u & global0[_wgslsmith_index_u32(u_input.c.x, 27u)], 46704u, abs(global0[_wgslsmith_index_u32(u_input.c.x, 27u)]), ~1u), vec4<u32>(global0[_wgslsmith_index_u32(u_input.a.x, 27u)], 79525u, ~16862u, u_input.b.x)));
    global1 = array<vec4<f32>, 19>();
    var_1 = Struct_1(func_2(min(-_wgslsmith_add_i32(arg_0, -25785i), arg_0), u_input.a.yx, var_1.a.zy).d.zww, firstLeadingBit(arg_0), ~var_1.d.zyw, max(var_1.d, ~(~(~vec4<u32>(global0[_wgslsmith_index_u32(20045u, 27u)], 48350u, u_input.b.x, var_1.a.x)))));
    return ~arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 2147483647i & func_1(-min(1i, min(5935i, 8745i)));
    var_0 = _wgslsmith_sub_i32(-24881i, func_2(min(~1i, -2147483647i >> (global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 27u)], 27u)] % 32u)), u_input.b.zx, ~reverseBits(u_input.a.yx)).b);
    var_0 = _wgslsmith_mult_i32(-max(15915i, 1i), ~1i);
    let var_1 = true;
    let var_2 = Struct_2(func_2(_wgslsmith_add_i32(2147483647i, _wgslsmith_add_i32(-11201i, -10238i)), u_input.b.yz, ~(vec2<u32>(global0[_wgslsmith_index_u32(4907u, 27u)], global0[_wgslsmith_index_u32(u_input.a.x, 27u)]) >> (u_input.c % vec2<u32>(32u)))), Struct_1(u_input.b, 0i, u_input.b, vec4<u32>(4294967295u, ~29184u ^ global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(4294967295u, 27u)], u_input.b.x), vec2<u32>(global0[_wgslsmith_index_u32(166326u, 27u)], 4121u)), 27u)], u_input.c.x, u_input.a.x | ~4294967295u)), global2[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(u_input.a, ~u_input.a), 1u)]);
    var var_3 = Struct_2(func_2(_wgslsmith_mult_i32(var_2.b.b, 3138i), max(~vec2<u32>(31992u, var_2.b.a.x), var_2.b.c.xy << (var_2.b.d.zy % vec2<u32>(32u))) >> (firstLeadingBit(_wgslsmith_sub_vec2_u32(var_2.a.a.zz, u_input.c)) % vec2<u32>(32u)), _wgslsmith_div_vec2_u32(max(vec2<u32>(global0[_wgslsmith_index_u32(u_input.b.x, 27u)], global0[_wgslsmith_index_u32(0u, 27u)]), var_2.c.c.zz), ~countOneBits(vec2<u32>(0u, u_input.a.x)))), func_2(_wgslsmith_clamp_i32(var_2.c.b, var_2.a.b, max(var_2.c.b, -21639i) >> (firstLeadingBit(u_input.a.x) % 32u)), vec2<u32>(var_2.c.a.x, ~u_input.a.x), vec2<u32>(_wgslsmith_dot_vec2_u32(u_input.a.zx, u_input.b.zz), select(global0[_wgslsmith_index_u32(0u, 27u)], u_input.c.x, false)) ^ vec2<u32>(_wgslsmith_mod_u32(1u, u_input.b.x), _wgslsmith_div_u32(u_input.a.x, u_input.c.x))), global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.b.x, 120380u), 1u)]);
    var var_4 = Struct_2(Struct_1(vec3<u32>(~(~99072u), 15097u, abs(_wgslsmith_mult_u32(var_3.a.d.x, 32558u))), -(~(~var_3.c.b)), var_3.a.d.zyz, var_2.b.d), Struct_1(~abs(vec3<u32>(0u, global0[_wgslsmith_index_u32(1u, 27u)], var_3.b.a.x)), 22989i, _wgslsmith_div_vec3_u32(var_3.c.c, ~vec3<u32>(0u, 1u, 0u)), _wgslsmith_mult_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(u_input.c.x, 27u)], global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(1u, var_2.a.c.x), 27u)], ~49548u, _wgslsmith_mod_u32(4294967295u, 25468u)), reverseBits(_wgslsmith_add_vec4_u32(vec4<u32>(0u, var_3.b.a.x, 50182u, u_input.a.x), var_3.b.d)))), Struct_1(abs(abs(var_3.c.d.yzx) >> ((vec3<u32>(var_3.b.a.x, 1u, 53906u) | vec3<u32>(0u, u_input.c.x, var_3.c.c.x)) % vec3<u32>(32u))), var_2.a.b, vec3<u32>(~(~u_input.c.x), 0u, global0[_wgslsmith_index_u32(~_wgslsmith_sub_u32(var_3.b.c.x, 4294967295u), 27u)]), var_2.b.d));
    var var_5 = var_2.c.b;
    let var_6 = func_2(_wgslsmith_dot_vec4_i32(vec4<i32>(-33168i, i32(-1i) * -var_4.b.b, func_3(var_2, var_2, false, vec2<bool>(var_1, false)), reverseBits(0i)), _wgslsmith_add_vec4_i32(vec4<i32>(~var_2.c.b, select(var_2.c.b, var_4.c.b, false), ~var_3.b.b, ~var_3.c.b), max(vec4<i32>(var_2.c.b, 0i, var_2.c.b, -21492i), vec4<i32>(var_3.c.b, 0i, -34934i, var_2.c.b)) >> (vec4<u32>(70512u, 1u, 233u, global0[_wgslsmith_index_u32(var_3.b.c.x, 27u)]) % vec4<u32>(32u)))), var_4.a.d.zy, func_2(var_4.a.b, vec2<u32>(1u, ~var_3.b.a.x) | var_2.b.c.xx, vec2<u32>(~global0[_wgslsmith_index_u32(var_2.c.c.x, 27u)] | (var_3.b.d.x >> (12064u % 32u)), _wgslsmith_clamp_u32(0u, ~var_3.c.a.x, countOneBits(46062u)))).a.xz);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-442f, _wgslsmith_f_op_f32(799f * -1000f))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-494f, -300f), vec2<f32>(-488f, -136f))), vec2<f32>(215f, 269f)))), !(!vec2<bool>(var_1, true)))), _wgslsmith_dot_vec2_u32((func_2(var_4.b.b, vec2<u32>(12749u, 142797u), var_2.a.d.xy).d.wx << (var_6.c.yz % vec2<u32>(32u))) << (var_2.b.a.xx % vec2<u32>(32u)), ~vec2<u32>(var_6.d.x ^ var_6.d.x, ~4294967295u)), ~_wgslsmith_sub_vec3_i32(min(firstLeadingBit(vec3<i32>(var_4.a.b, var_2.a.b, 0i)), min(vec3<i32>(-59146i, var_6.b, 2147483647i), vec3<i32>(var_6.b, -17046i, 13783i))), _wgslsmith_div_vec3_i32(vec3<i32>(var_4.b.b, var_3.b.b, var_2.a.b), vec3<i32>(var_3.c.b, var_3.c.b, var_6.b)) & vec3<i32>(var_4.c.b, var_2.a.b, 1i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1129f + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(674f, -103f))))) - _wgslsmith_f_op_f32(abs(1f))), 1u);
}


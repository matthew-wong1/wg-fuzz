struct Struct_1 {
    a: i32,
    b: u32,
    c: bool,
    d: vec2<f32>,
    e: u32,
}

struct Struct_2 {
    a: u32,
    b: i32,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 11>;

var<private> global1: vec3<i32> = vec3<i32>(7947i, -1i, 39697i);

var<private> global2: Struct_2 = Struct_2(11150u, 0i, vec2<u32>(0u, 4294967295u));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
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

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: u32, arg_1: bool, arg_2: vec4<bool>) -> u32 {
    global0 = array<vec2<i32>, 11>();
    var var_0 = 839f;
    let var_1 = abs(_wgslsmith_mod_vec3_u32(select(min(vec3<u32>(global2.a, arg_0, global2.c.x), vec3<u32>(global2.a, 38843u, arg_0)), _wgslsmith_div_vec3_u32(vec3<u32>(601u, global2.c.x, u_input.a), vec3<u32>(global2.c.x, 51779u, global2.c.x)), true), abs(_wgslsmith_sub_vec3_u32(vec3<u32>(arg_0, 4294967295u, global2.c.x), vec3<u32>(5380u, u_input.a, arg_0)))) & (_wgslsmith_sub_vec3_u32(vec3<u32>(0u, arg_0, arg_0), firstLeadingBit(vec3<u32>(arg_0, global2.c.x, 143u))) << (select(firstTrailingBit(vec3<u32>(50790u, global2.c.x, 0u)), _wgslsmith_add_vec3_u32(vec3<u32>(global2.a, 1u, 49833u), vec3<u32>(arg_0, 4294967295u, 2431u)), vec3<bool>(true, false, arg_2.x)) % vec3<u32>(32u))));
    let var_2 = Struct_2(4989u, global2.b, _wgslsmith_mult_vec2_u32(~(~_wgslsmith_mult_vec2_u32(var_1.yx, var_1.zz)), countOneBits(_wgslsmith_add_vec2_u32(vec2<u32>(33132u, 1u), select(vec2<u32>(0u, var_1.x), vec2<u32>(1494u, arg_0), false)))));
    var_0 = 504f;
    return arg_0;
}

fn func_2(arg_0: vec2<i32>, arg_1: bool, arg_2: vec3<i32>, arg_3: Struct_1) -> u32 {
    global2 = Struct_2(_wgslsmith_mult_u32(4294967295u, func_3(~_wgslsmith_dot_vec2_u32(global2.c, vec2<u32>(0u, 1u)), !select(arg_1, true, arg_3.c), vec4<bool>(arg_1 || false, true, arg_3.c, true))), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, arg_3.a, _wgslsmith_dot_vec3_i32(vec3<i32>(47467i, 1i, arg_2.x), u_input.b.wxy), arg_3.a) << (abs(_wgslsmith_mult_vec4_u32(vec4<u32>(global2.a, arg_3.b, 96097u, 4294967295u), vec4<u32>(u_input.a, arg_3.e, arg_3.b, global2.c.x))) % vec4<u32>(32u)), firstTrailingBit(u_input.b & _wgslsmith_clamp_vec4_i32(u_input.b, vec4<i32>(-1103i, arg_2.x, -2147483647i, arg_0.x), vec4<i32>(global1.x, 2147483647i, arg_0.x, arg_0.x)))), global2.c & max(vec2<u32>(arg_3.b, ~global2.a), ~global2.c));
    return ~74661u;
}

fn func_1(arg_0: u32, arg_1: u32, arg_2: vec4<f32>, arg_3: Struct_1) -> Struct_1 {
    global0 = array<vec2<i32>, 11>();
    global0 = array<vec2<i32>, 11>();
    var var_0 = _wgslsmith_clamp_vec3_u32(countOneBits(~abs(~vec3<u32>(arg_3.b, arg_1, 21288u))), vec3<u32>(4294967295u, func_2(~u_input.b.zx, false, (u_input.b.zzx << (vec3<u32>(arg_3.b, global2.c.x, 28692u) % vec3<u32>(32u))) << (vec3<u32>(global2.c.x, 4294967295u, 38461u) % vec3<u32>(32u)), arg_3), global2.c.x), vec3<u32>(1u, ~1u, u_input.a));
    var var_1 = Struct_1(select(_wgslsmith_div_i32(~2147483647i >> (1u % 32u), -(~global2.b)), global2.b, arg_3.c), ~0u, true, vec2<f32>(_wgslsmith_div_f32(arg_3.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1165f, -895f)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-630f * arg_2.x)))))), global2.a);
    var var_2 = select(!select(vec2<bool>(false, true), !vec2<bool>(false, var_1.c), false), vec2<bool>(true, arg_3.c), vec2<bool>(true, !(var_1.c != !arg_3.c)));
    return arg_3;
}

fn func_4(arg_0: i32, arg_1: Struct_2, arg_2: Struct_1, arg_3: Struct_1) -> vec2<u32> {
    global1 = u_input.b.ywx;
    let var_0 = Struct_2(_wgslsmith_mod_u32(~u_input.a, ~13732u), 23820i, arg_1.c);
    var var_1 = _wgslsmith_mult_vec4_u32(~vec4<u32>(max(0u, arg_3.e), ~0u, ~arg_1.c.x, _wgslsmith_sub_u32(arg_3.e, arg_2.b)) ^ vec4<u32>(_wgslsmith_div_u32(1u, 14038u), func_1(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 0u, 59063u), vec3<u32>(arg_1.c.x, u_input.a, 32265u)), arg_1.a ^ u_input.a, _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-698f, 1411f, arg_2.d.x, 1021f), vec4<f32>(-798f, 802f, -1183f, arg_2.d.x), true)), Struct_1(18074i, arg_3.e, arg_2.c, arg_3.d, u_input.a)).e, ~62879u, arg_2.b), _wgslsmith_add_vec4_u32(vec4<u32>(select(~arg_3.b, _wgslsmith_mult_u32(arg_2.b, u_input.a), arg_2.c), max(arg_2.b, ~arg_3.b), ~0u, 49497u), _wgslsmith_div_vec4_u32(firstLeadingBit(vec4<u32>(u_input.a, arg_3.e, u_input.a, 4294967295u)), firstLeadingBit(vec4<u32>(6508u, 0u, 12148u, global2.c.x)) >> (abs(vec4<u32>(arg_2.b, 47524u, 0u, 69853u)) % vec4<u32>(32u)))));
    var_1 = _wgslsmith_mult_vec4_u32(~_wgslsmith_sub_vec4_u32(~vec4<u32>(u_input.a, 1u, var_1.x, 4294967295u), ~(~vec4<u32>(78826u, 22416u, u_input.a, 0u))), _wgslsmith_div_vec4_u32(~(vec4<u32>(arg_2.e, var_1.x, 26035u, 17299u) << (~vec4<u32>(1u, var_1.x, var_1.x, var_1.x) % vec4<u32>(32u))), vec4<u32>(~(~0u), _wgslsmith_clamp_u32(func_3(var_1.x, arg_2.c, vec4<bool>(arg_3.c, false, arg_2.c, arg_2.c)), ~1u, global2.a), 4294967295u, 55668u)));
    var_1 = _wgslsmith_mult_vec4_u32(_wgslsmith_clamp_vec4_u32(select((vec4<u32>(0u, 1u, 1u, arg_3.e) << (vec4<u32>(arg_1.c.x, u_input.a, u_input.a, 4294967295u) % vec4<u32>(32u))) ^ countOneBits(vec4<u32>(u_input.a, var_0.a, global2.a, 0u)), select(countOneBits(vec4<u32>(33110u, 62259u, 34970u, var_1.x)), firstLeadingBit(vec4<u32>(4294967295u, var_0.a, arg_2.e, 57650u)), false), vec4<bool>(true, arg_2.c, false, true)), ~((vec4<u32>(44315u, 28647u, 4294967295u, var_0.c.x) | vec4<u32>(var_0.a, arg_1.a, 60441u, 0u)) >> (vec4<u32>(0u, 1u, var_1.x, global2.a) % vec4<u32>(32u))), vec4<u32>(u_input.a, ~4294967295u ^ _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.a), var_1.ww), var_0.c.x, 49038u)), vec4<u32>(_wgslsmith_div_u32(73896u, 43473u), u_input.a, u_input.a, 4294967295u));
    return vec2<u32>(abs(_wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(var_1.x, arg_1.a, 1u), vec3<u32>(1u, arg_3.e, var_1.x), vec3<u32>(0u, 4294967295u, 10168u)) ^ vec3<u32>(4294967295u, var_1.x, var_0.c.x), var_1.xyw)), _wgslsmith_mult_u32(arg_3.b << (arg_3.e % 32u), ~(~arg_1.c.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a, global2.c.x, u_input.a, 51800u), vec4<u32>(reverseBits(global2.a), 49129u, 2661u, u_input.a)), 0u), abs(-global2.b), select(func_4(~_wgslsmith_div_i32(u_input.b.x, -28157i), Struct_2(_wgslsmith_dot_vec4_u32(vec4<u32>(global2.c.x, 42730u, global2.c.x, 90390u), vec4<u32>(0u, 0u, 6859u, global2.c.x)), -global2.b, vec2<u32>(49444u, global2.a)), func_1(_wgslsmith_mod_u32(94420u, global2.a), ~global2.c.x, _wgslsmith_f_op_vec4_f32(vec4<f32>(189f, -512f, 416f, 1095f) * vec4<f32>(-122f, -1000f, 1000f, -1570f)), Struct_1(0i, 4294967295u, false, vec2<f32>(-498f, 136f), 51838u)), func_1(~u_input.a, global2.a, _wgslsmith_f_op_vec4_f32(-vec4<f32>(653f, -1074f, -277f, -247f)), Struct_1(global1.x, 21549u, true, vec2<f32>(473f, 1273f), u_input.a))), global2.c, vec2<bool>(true, true)));
    let var_1 = _wgslsmith_div_vec4_u32(firstLeadingBit(vec4<u32>(~1u, _wgslsmith_mod_u32(1u, _wgslsmith_clamp_u32(u_input.a, 57580u, u_input.a)), ~u_input.a, _wgslsmith_dot_vec4_u32(select(vec4<u32>(4294967295u, var_0.c.x, u_input.a, 1u), vec4<u32>(u_input.a, 0u, 16869u, u_input.a), vec4<bool>(true, false, false, true)), ~vec4<u32>(51073u, var_0.a, 1u, 33785u)))), vec4<u32>(26162u, u_input.a, select(~u_input.a | ~u_input.a, 1u, true), ~(~(~1691u))));
    var var_2 = Struct_1(~u_input.b.x, global2.c.x, func_1(min(1u, global2.c.x), var_1.x, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(ceil(301f)), _wgslsmith_f_op_f32(abs(-2619f)), -440f, 312f)), Struct_1(~(~global1.x), ~var_1.x, false, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1503f, -1031f) + vec2<f32>(1200f, 438f))), min(var_0.a, 4227u))).c, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-2119f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(146f, -615f, false)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1507f, 125f)) - func_1(global2.c.x, 14502u << (global2.a % 32u), _wgslsmith_f_op_vec4_f32(-vec4<f32>(212f, 385f, -1616f, 2021f)), func_1(1u, 0u, vec4<f32>(-114f, -602f, -1567f, 612f), Struct_1(25550i, 1u, true, vec2<f32>(129f, -1702f), var_0.a))).d.x)), var_0.a);
    let var_3 = vec4<bool>(true || var_2.c, true, true, select(true, var_2.c, true) | false);
    global0 = array<vec2<i32>, 11>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(var_2.d.x * 1502f), _wgslsmith_f_op_f32(var_2.d.x * 922f), _wgslsmith_f_op_f32(var_2.d.x + -1556f)) * vec3<f32>(_wgslsmith_f_op_f32(-var_2.d.x), _wgslsmith_f_op_f32(var_2.d.x - 602f), 155f)) * vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -590f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.d.x) + var_2.d.x), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_2.d.x))))), ~global0[_wgslsmith_index_u32(_wgslsmith_add_u32(var_2.b, func_1(abs(u_input.a), ~var_0.c.x, _wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.d.x, var_2.d.x, 692f, var_2.d.x) - vec4<f32>(var_2.d.x, 179f, 182f, -1289f)), func_1(0u, 41507u, vec4<f32>(var_2.d.x, 1126f, -1121f, var_2.d.x), Struct_1(27287i, u_input.a, var_2.c, var_2.d, var_0.a))).b), 11u)]);
}


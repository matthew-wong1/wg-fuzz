struct Struct_1 {
    a: vec4<u32>,
    b: f32,
}

struct Struct_2 {
    a: bool,
    b: vec4<u32>,
    c: vec3<i32>,
    d: Struct_1,
    e: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: i32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<Struct_1, 7> = array<Struct_1, 7>(Struct_1(vec4<u32>(4294967295u, 1u, 4294967295u, 1u), 1439f), Struct_1(vec4<u32>(0u, 17998u, 22933u, 16489u), 1496f), Struct_1(vec4<u32>(1u, 4294967295u, 4294967295u, 4372u), 220f), Struct_1(vec4<u32>(0u, 8483u, 0u, 4294967295u), 200f), Struct_1(vec4<u32>(0u, 18233u, 39647u, 68833u), -441f), Struct_1(vec4<u32>(37878u, 1u, 56428u, 25417u), 1159f), Struct_1(vec4<u32>(11514u, 2880u, 40721u, 0u), -265f));

var<private> global2: Struct_2 = Struct_2(true, vec4<u32>(68587u, 93428u, 29603u, 1u), vec3<i32>(i32(-2147483648), 2147483647i, 32728i), Struct_1(vec4<u32>(4294967295u, 4294967295u, 76027u, 1u), -799f), i32(-2147483648));

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_1) -> i32 {
    var var_0 = ~((reverseBits(~4784i) | _wgslsmith_dot_vec2_i32(-vec2<i32>(global2.e, -12802i), vec2<i32>(4789i, u_input.d.x))) | -(~u_input.d.x));
    var var_1 = select(!(!(!vec3<bool>(global2.a, global2.a, false))), vec3<bool>(select(all(!vec3<bool>(true, global2.a, global2.a)), global2.a, _wgslsmith_f_op_f32(arg_1.b + global2.d.b) != arg_1.b), global2.a, !any(select(vec4<bool>(global2.a, global2.a, global2.a, global2.a), vec4<bool>(true, false, true, false), global2.a))), select(select(vec3<bool>(any(vec2<bool>(global2.a, false)), 6930u >= arg_1.a.x, false), select(!vec3<bool>(global2.a, global2.a, global2.a), select(vec3<bool>(true, false, global2.a), vec3<bool>(global2.a, global2.a, global2.a), vec3<bool>(false, true, global2.a)), all(vec3<bool>(global2.a, false, true))), any(!vec3<bool>(true, global2.a, false))), !select(select(vec3<bool>(global2.a, false, true), vec3<bool>(true, global2.a, global2.a), false), !vec3<bool>(true, global2.a, true), vec3<bool>(global2.a, global2.a, global2.a)), vec3<bool>(true, true, true)));
    let var_2 = _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(global2.c.xx, vec2<i32>(-_wgslsmith_sub_i32(u_input.c, 0i), -39430i), vec2<i32>(-(~global2.e), 0i)), -u_input.d.xy);
    global0 = 2147483647i;
    let var_3 = Struct_2(select(true, select(any(!var_1.xz), var_1.x, true), var_1.x), vec4<u32>(_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global2.b.x, global2.b.x, 23466u, 0u), vec4<u32>(arg_0.x, 1u, u_input.b.x, 26755u)), 80171u), countOneBits(u_input.b.x), 3876u, min(_wgslsmith_mult_u32(arg_1.a.x, arg_0.x), _wgslsmith_add_u32(1u, arg_0.x))) & ~u_input.b, _wgslsmith_clamp_vec3_i32(_wgslsmith_sub_vec3_i32(_wgslsmith_add_vec3_i32(countOneBits(global2.c), u_input.d), u_input.d), -reverseBits(select(global2.c, u_input.d, vec3<bool>(global2.a, global2.a, var_1.x))), vec3<i32>(~select(global2.c.x, 2819i, true), (i32(-1i) * -1i) << ((arg_0.x >> (global2.d.a.x % 32u)) % 32u), -32318i)), Struct_1(~_wgslsmith_div_vec4_u32(_wgslsmith_mult_vec4_u32(arg_0, global2.b), max(global2.b, vec4<u32>(arg_0.x, 4294967295u, 0u, 21300u))), _wgslsmith_f_op_f32(f32(-1f) * -242f)), u_input.c);
    return firstLeadingBit(0i);
}

fn func_2(arg_0: bool) -> bool {
    var var_0 = Struct_2(global2.a, ~u_input.b, global2.c, global1[_wgslsmith_index_u32(~(~reverseBits(u_input.b.x << (16752u % 32u))), 7u)], -33118i | max(func_3(vec4<u32>(global2.b.x, global2.d.a.x, u_input.b.x, 81618u), Struct_1(global2.d.a, global2.d.b)) | 1i, -66612i));
    global2 = Struct_2(!global2.a, vec4<u32>(59260u, global2.d.a.x, firstTrailingBit(~global2.d.a.x), min(~7013u, reverseBits(var_0.d.a.x))), vec3<i32>(~(-47770i), _wgslsmith_sub_i32(_wgslsmith_div_i32(2147483647i, u_input.d.x), _wgslsmith_dot_vec4_i32(vec4<i32>(global2.c.x, -13065i, 22973i, global2.e), vec4<i32>(var_0.e, 1i, -45990i, 0i))), -_wgslsmith_add_i32(u_input.c, -32651i)) >> (~(~(vec3<u32>(global2.d.a.x, 4294967295u, u_input.b.x) & u_input.b.xwz)) % vec3<u32>(32u)), Struct_1(_wgslsmith_div_vec4_u32(var_0.d.a, vec4<u32>(var_0.d.a.x, 14636u, 1u, var_0.d.a.x)) >> (vec4<u32>(91235u, ~689u, countOneBits(0u), ~global2.d.a.x) % vec4<u32>(32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(global2.d.b, 2050f) * -1129f))), var_0.e);
    var var_1 = all(select(!select(select(vec2<bool>(false, global2.a), vec2<bool>(var_0.a, global2.a), var_0.a), select(vec2<bool>(var_0.a, false), vec2<bool>(arg_0, true), vec2<bool>(false, arg_0)), !vec2<bool>(true, global2.a)), select(vec2<bool>(!global2.a, true), select(vec2<bool>(true, true), select(vec2<bool>(arg_0, false), vec2<bool>(arg_0, false), false), any(vec4<bool>(arg_0, true, false, global2.a))), _wgslsmith_f_op_f32(261f * var_0.d.b) >= -1522f), false));
    let var_2 = global1[_wgslsmith_index_u32(46428u, 7u)];
    var_1 = select(!(!(!select(true, true, false))), global2.a, select(select(global2.a, global2.a, !arg_0) | all(vec2<bool>(true, var_0.a)), any(select(vec3<bool>(true, false, global2.a), select(vec3<bool>(false, arg_0, var_0.a), vec3<bool>(arg_0, false, global2.a), vec3<bool>(false, global2.a, arg_0)), false)), _wgslsmith_dot_vec3_i32(var_0.c >> (vec3<u32>(var_2.a.x, global2.d.a.x, 1u) % vec3<u32>(32u)), vec3<i32>(-2147483647i, global2.e, -1i) >> (vec3<u32>(var_0.b.x, var_0.d.a.x, var_2.a.x) % vec3<u32>(32u))) >= -1132i));
    return true;
}

fn func_4(arg_0: u32, arg_1: bool, arg_2: i32) -> Struct_2 {
    let var_0 = Struct_2(func_2(!any(select(vec3<bool>(global2.a, false, true), vec3<bool>(global2.a, false, arg_1), vec3<bool>(false, false, false)))), vec4<u32>(1u, ~_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(71801u, 1u, u_input.a.x), global2.b.zwy), ~u_input.b.zwx), ~_wgslsmith_mult_u32(firstLeadingBit(global2.d.a.x), ~arg_0), 1u), _wgslsmith_clamp_vec3_i32(~(~global2.c), countOneBits(u_input.d) >> (firstTrailingBit(firstLeadingBit(u_input.b.wwz)) % vec3<u32>(32u)), vec3<i32>(firstTrailingBit(0i), countOneBits(1i), ~global2.e)), global1[_wgslsmith_index_u32(~(~1u), 7u)], _wgslsmith_add_i32(i32(-1i) * -14316i, -arg_2));
    var var_1 = global1[_wgslsmith_index_u32(global2.b.x, 7u)];
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.b) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_1.b + -224f))));
    return var_0;
}

fn func_1() -> vec3<i32> {
    global1 = array<Struct_1, 7>();
    global2 = func_4(39101u, func_2(false) & !global2.a, -_wgslsmith_dot_vec2_i32(~vec2<i32>(-1i, global2.c.x), -vec2<i32>(u_input.d.x, global2.e)) ^ _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(0i, u_input.c, 1i, u_input.c), min(vec4<i32>(u_input.c, 42587i, global2.c.x, 2147483647i), vec4<i32>(u_input.d.x, global2.e, u_input.d.x, u_input.d.x))), firstTrailingBit(vec4<i32>(u_input.c, u_input.c, u_input.c, global2.e))));
    let var_0 = 336f;
    let var_1 = -(~vec4<i32>(-2147483647i, ~(-1i), 1i, ~u_input.c)) ^ vec4<i32>(-1i, ~global2.c.x, abs(max(abs(1i), -1i)), ~1i);
    global1 = array<Struct_1, 7>();
    return ~_wgslsmith_add_vec3_i32(~(-reverseBits(u_input.d)), ~reverseBits(reverseBits(vec3<i32>(-49030i, var_1.x, 41856i))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let var_1 = !(_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.d.b) + global2.d.b)) <= _wgslsmith_f_op_f32(-global2.d.b));
    let var_2 = select(!vec4<bool>(_wgslsmith_add_u32(u_input.b.x, global2.b.x) <= 4294967295u, true, false, !var_1), vec4<bool>(global2.a, func_2(false), any(!select(vec4<bool>(var_1, false, var_1, var_1), vec4<bool>(true, var_1, var_1, false), vec4<bool>(var_1, true, global2.a, true))), all(vec2<bool>(!global2.a, var_1))), var_1);
    global2 = Struct_2(true, vec4<u32>(~(~1u), ~(~u_input.b.x), global2.b.x & ~(~60906u), reverseBits(~(~u_input.b.x))), vec3<i32>(-1i) * -vec3<i32>(var_0.x, -8307i, ~(-37515i)), Struct_1(select(abs(~vec4<u32>(25636u, 39148u, u_input.b.x, 4294967295u)), ~firstTrailingBit(vec4<u32>(30369u, u_input.a.x, 4294967295u, 28679u)), var_2), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(global2.d.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.d.b) * _wgslsmith_f_op_f32(f32(-1f) * -1507f))))), -75157i);
    global2 = Struct_2(false, vec4<u32>(~firstLeadingBit(1u), (1u & ~u_input.b.x) ^ u_input.b.x, _wgslsmith_div_u32(abs(global2.b.x), 1u << (_wgslsmith_mod_u32(global2.d.a.x, 1u) % 32u)), ~global2.d.a.x), vec3<i32>(abs(1i), global2.c.x, var_0.x), func_4(20229u << (1u % 32u), false, -_wgslsmith_div_i32(abs(1i), 1i)).d, -1i);
    let var_3 = Struct_2(true, max(u_input.b, vec4<u32>((global2.d.a.x << (u_input.a.x % 32u)) ^ ~global2.d.a.x, 4959u, 4294967295u, 34718u)), abs(global2.c), func_4(u_input.a.x, 1i < u_input.c, ~var_0.x).d, -2147483647i);
    let x = u_input.a;
    s_output = StorageBuffer(var_3.b.x);
}


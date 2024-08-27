struct Struct_1 {
    a: vec3<bool>,
    b: f32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec4<f32>,
    c: u32,
}

struct Struct_3 {
    a: vec2<bool>,
    b: f32,
    c: Struct_1,
    d: Struct_2,
    e: bool,
}

struct Struct_4 {
    a: Struct_3,
    b: vec4<u32>,
    c: Struct_2,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 16>;

var<private> global1: vec3<u32>;

var<private> global2: array<Struct_1, 5> = array<Struct_1, 5>(Struct_1(vec3<bool>(true, false, true), 384f), Struct_1(vec3<bool>(false, false, true), 282f), Struct_1(vec3<bool>(true, false, false), 956f), Struct_1(vec3<bool>(true, true, false), -605f), Struct_1(vec3<bool>(true, true, true), -1523f));

var<private> global3: Struct_4;

var<private> global4: vec4<i32>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: f32) -> vec3<u32> {
    var var_0 = vec4<u32>(3459u, ~(~countOneBits(max(global3.a.d.a.x, global3.b.x))), global1.x, _wgslsmith_add_u32(34513u ^ _wgslsmith_add_u32(74662u, global3.b.x), 26172u) ^ max(~4294967295u, ~4294967295u));
    let var_1 = global3.d.wz;
    let var_2 = !select(true, (~0i << (~var_0.x % 32u)) < _wgslsmith_clamp_i32(-2147483647i, _wgslsmith_mod_i32(global4.x, var_1.x), 75353i), global3.a.a.x);
    let var_3 = true;
    var var_4 = ~vec4<i32>(-u_input.b.x, _wgslsmith_dot_vec3_i32(-vec3<i32>(-1i, global3.d.x, u_input.a) & -vec3<i32>(global4.x, -53593i, var_1.x), firstTrailingBit(vec3<i32>(-15224i, u_input.b.x, -2147483647i))), 2147483647i ^ abs(_wgslsmith_mod_i32(-2147483647i, u_input.a)), global3.d.x);
    return firstLeadingBit(abs(abs(abs(vec3<u32>(var_0.x, global1.x, 0u) << (var_0.xyy % vec3<u32>(32u))))));
}

fn func_2() -> vec3<u32> {
    let var_0 = min(abs(reverseBits(func_3(_wgslsmith_f_op_f32(select(-486f, global3.a.c.b, global3.a.e))))), _wgslsmith_mult_vec3_u32(global3.b.wxz, _wgslsmith_clamp_vec3_u32(~min(global3.c.a, global3.c.a), ~vec3<u32>(global3.a.d.a.x, global3.b.x, 4294967295u), global3.c.a)));
    let var_1 = countOneBits(vec4<i32>(u_input.a, 2147483647i, ~_wgslsmith_clamp_i32(-global4.x, _wgslsmith_clamp_i32(global4.x, global4.x, 2147483647i), abs(51219i)), u_input.a));
    var var_2 = all(select(select(global3.a.c.a, select(global3.a.c.a, vec3<bool>(global3.a.c.a.x, global3.a.c.a.x, global3.a.e), vec3<bool>(true, global3.a.c.a.x, true)), true), vec3<bool>(all(global3.a.c.a), false, !global3.a.e), 495f == _wgslsmith_f_op_f32(global3.a.b * 598f))) && false;
    global4 = ~global3.d;
    let var_3 = global3.a;
    return select(~(~min(vec3<u32>(0u, global1.x, 58891u), var_3.d.a)), _wgslsmith_sub_vec3_u32(~(~var_0), ~var_3.d.a ^ (var_0 >> (global3.c.a % vec3<u32>(32u)))), vec3<bool>(global3.a.a.x, true, global3.a.a.x)) >> (_wgslsmith_clamp_vec3_u32(vec3<u32>(var_0.x, ~(~var_0.x), _wgslsmith_mod_u32(var_0.x, _wgslsmith_div_u32(global1.x, var_3.d.c))), vec3<u32>(_wgslsmith_dot_vec3_u32(var_0, ~var_0), 66684u, (global3.c.c >> (0u % 32u)) & 4294967295u), ~var_0) % vec3<u32>(32u));
}

fn func_1() -> u32 {
    let var_0 = _wgslsmith_clamp_vec3_u32(min(vec3<u32>(0u, _wgslsmith_mod_u32(_wgslsmith_mult_u32(0u, global3.c.c), ~38269u), ~min(1u, 33696u)), global3.c.a), ~vec3<u32>(~global3.c.a.x, _wgslsmith_mult_u32(~global3.a.d.c, global3.a.d.c), firstTrailingBit(63095u)), func_2() | global3.c.a);
    var var_1 = global3.a.c.a.xz;
    global3 = Struct_4(Struct_3(vec2<bool>(!(!global3.a.e), global3.a.e), _wgslsmith_f_op_f32(-168f + -1384f), Struct_1(!global3.a.c.a, _wgslsmith_f_op_f32(f32(-1f) * -1145f)), global3.a.d, !global3.a.e), min(global3.b, vec4<u32>(~var_0.x, 24417u, max(global3.b.x, global3.c.a.x), global1.x)), global3.c, select(select(~global3.d, _wgslsmith_clamp_vec4_i32(vec4<i32>(global4.x, global4.x, global4.x, -47466i), vec4<i32>(-38507i, u_input.b.x, -2147483647i, global3.d.x), countOneBits(vec4<i32>(0i, global3.d.x, -1i, 8578i))), all(!vec4<bool>(global3.a.e, true, true, false))), vec4<i32>(_wgslsmith_clamp_i32(global4.x | -2147483647i, 0i, global3.d.x), u_input.a, min(global3.d.x, global3.d.x), -1i), global3.a.a.x));
    global4 = select(_wgslsmith_mult_vec4_i32(vec4<i32>(33138i >> (~global1.x % 32u), countOneBits(_wgslsmith_dot_vec3_i32(u_input.b.yyw, vec3<i32>(-17966i, global4.x, global4.x))), -14673i, -14648i), ~countOneBits(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a, global3.d.x, -1i, global3.d.x), vec4<i32>(global3.d.x, 0i, 2147483647i, -30852i)))), vec4<i32>(u_input.a | u_input.a, 1046i, reverseBits(global4.x) >> (0u % 32u), ~(~u_input.b.x)), vec4<bool>(true, !(select(global3.a.a.x, true, var_1.x) & var_1.x), false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1116f)) == global3.a.b));
    global3 = Struct_4(Struct_3(select(!(!vec2<bool>(var_1.x, var_1.x)), !vec2<bool>(true, var_1.x), global3.a.a.x), 1309f, Struct_1(vec3<bool>(all(vec4<bool>(false, true, global3.a.e, true)), all(global3.a.c.a), any(vec3<bool>(var_1.x, true, true))), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(global3.a.b, global3.c.b.x), -1701f, any(vec2<bool>(false, global3.a.e))))), Struct_2(vec3<u32>(96644u, 1u, ~global1.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(-676f, global3.c.b.x, global3.a.c.b, global3.c.b.x) * global3.c.b), select(global3.b.x, 4294967295u, global3.a.e) & ~global3.c.c), ~min(global3.b.x, 0u) >= 10033u), abs(vec4<u32>(4294967295u, global1.x, 1u, max(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 4294967295u), global1.yz), ~53919u))), Struct_2(~(~_wgslsmith_add_vec3_u32(vec3<u32>(3925u, 4294967295u, 0u), vec3<u32>(global1.x, global1.x, global1.x))), global3.a.d.b, _wgslsmith_dot_vec3_u32(vec3<u32>(min(10701u, global3.c.a.x), 44278u, reverseBits(16109u)), firstLeadingBit(_wgslsmith_mod_vec3_u32(global3.c.a, global3.b.zwz)))), _wgslsmith_sub_vec4_i32(vec4<i32>(0i, ~(~global4.x), u_input.a, u_input.b.x), global3.d));
    return ~(~global1.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<bool>, 16>();
    let var_0 = global4.x;
    let var_1 = global3.a.d.b.zy;
    let var_2 = global1.x;
    var var_3 = global3.a.e;
    var var_4 = Struct_4(global3.a, _wgslsmith_sub_vec4_u32(select(select(~vec4<u32>(6918u, global1.x, global3.b.x, 1u), global3.b, true), firstLeadingBit(global3.b), vec4<bool>(any(vec4<bool>(global3.a.a.x, global3.a.c.a.x, true, global3.a.a.x)), false, global3.a.e, global3.a.c.a.x)), vec4<u32>(~func_1(), global1.x & reverseBits(global3.a.d.a.x), _wgslsmith_div_u32(~887u, global1.x), _wgslsmith_clamp_u32(global3.a.d.c << (126150u % 32u), ~4294967295u, global1.x))), global3.c, global3.d);
    var var_5 = vec3<f32>(var_4.a.d.b.x, -356f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -220f)));
    var var_6 = true;
    let var_7 = Struct_3(!select(vec2<bool>(false, true), global0[_wgslsmith_index_u32(_wgslsmith_add_u32(func_3(450f).x, 1u), 16u)], var_4.a.c.a.x), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-270f)) + _wgslsmith_f_op_f32(min(var_4.c.b.x, 1588f))), var_4.a.d.b.x), _wgslsmith_f_op_f32(f32(-1f) * -227f), var_4.a.a.x)), global2[_wgslsmith_index_u32(global3.b.x, 5u)], Struct_2(vec3<u32>(~global3.b.x, var_4.b.x & 48546u, 27479u & global1.x) & ~func_2(), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(var_5.x, var_4.c.b.x), global3.c.b.x, -1000f, _wgslsmith_f_op_f32(-var_4.c.b.x)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global3.c.b * global3.a.d.b) + _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_5.x, var_1.x, var_4.a.c.b, var_1.x))))), global1.x), !(!var_4.a.e));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_i32(global3.d.x, 2147483647i, _wgslsmith_sub_i32(2147483647i, global3.d.x)) << (~_wgslsmith_div_u32(1u, global1.x) % 32u));
}


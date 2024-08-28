struct Struct_1 {
    a: f32,
    b: f32,
    c: vec4<u32>,
    d: vec3<u32>,
    e: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: vec4<u32>,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: u32,
    d: f32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 20> = array<Struct_1, 20>(Struct_1(754f, 990f, vec4<u32>(1u, 0u, 0u, 4308u), vec3<u32>(79672u, 1u, 40621u), 10685i), Struct_1(280f, -335f, vec4<u32>(42179u, 1u, 0u, 1u), vec3<u32>(1u, 44234u, 0u), -1i), Struct_1(156f, -354f, vec4<u32>(4294967295u, 32779u, 4294967295u, 0u), vec3<u32>(49317u, 4294967295u, 23215u), 64049i), Struct_1(415f, -785f, vec4<u32>(81016u, 1u, 0u, 11023u), vec3<u32>(1u, 0u, 4294967295u), 1i), Struct_1(-2422f, 167f, vec4<u32>(4294967295u, 0u, 4294967295u, 46958u), vec3<u32>(1u, 49360u, 9u), 45393i), Struct_1(158f, -251f, vec4<u32>(26072u, 26729u, 22916u, 4294967295u), vec3<u32>(0u, 4294967295u, 4294967295u), 0i), Struct_1(947f, 1407f, vec4<u32>(15574u, 1u, 4294967295u, 0u), vec3<u32>(4294967295u, 22439u, 20704u), 0i), Struct_1(-2197f, 449f, vec4<u32>(4294967295u, 113274u, 1u, 0u), vec3<u32>(4294967295u, 19807u, 4294967295u), -18230i), Struct_1(345f, 779f, vec4<u32>(0u, 1u, 42787u, 4294967295u), vec3<u32>(60655u, 34877u, 55091u), -75448i), Struct_1(3474f, 399f, vec4<u32>(1u, 1u, 30490u, 0u), vec3<u32>(0u, 4294967295u, 4294967295u), 0i), Struct_1(-1000f, -796f, vec4<u32>(6212u, 20775u, 4294967295u, 4294967295u), vec3<u32>(10406u, 19783u, 4294967295u), -1i), Struct_1(-1238f, 1000f, vec4<u32>(74406u, 4294967295u, 0u, 0u), vec3<u32>(17080u, 7591u, 0u), 1950i), Struct_1(726f, 252f, vec4<u32>(43647u, 18564u, 0u, 3051u), vec3<u32>(27818u, 0u, 61193u), -1i), Struct_1(2241f, 1992f, vec4<u32>(89205u, 17215u, 65973u, 22554u), vec3<u32>(23622u, 0u, 46309u), 0i), Struct_1(-1392f, 740f, vec4<u32>(62267u, 4294967295u, 51288u, 4294967295u), vec3<u32>(5879u, 34434u, 88996u), 26830i), Struct_1(1365f, -1860f, vec4<u32>(18411u, 0u, 1u, 4294967295u), vec3<u32>(4294967295u, 0u, 39532u), 1i), Struct_1(-222f, -592f, vec4<u32>(0u, 66916u, 16620u, 60277u), vec3<u32>(1u, 11304u, 1u), 2147483647i), Struct_1(-538f, -1429f, vec4<u32>(48123u, 57823u, 2826u, 0u), vec3<u32>(1u, 56522u, 63913u), 2147483647i), Struct_1(-492f, 1121f, vec4<u32>(4294967295u, 41185u, 0u, 87691u), vec3<u32>(53538u, 4182u, 1u), 23391i), Struct_1(-916f, 927f, vec4<u32>(1u, 4294967295u, 17619u, 46958u), vec3<u32>(0u, 9533u, 4294967295u), -47445i));

var<private> global1: Struct_1;

var<private> global2: vec3<bool>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> vec4<u32> {
    var var_0 = arg_0.c.xy;
    global0 = array<Struct_1, 20>();
    var var_1 = _wgslsmith_f_op_f32(global1.b - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b)));
    return firstTrailingBit(_wgslsmith_add_vec4_u32(_wgslsmith_sub_vec4_u32(firstTrailingBit(~global1.c), vec4<u32>(_wgslsmith_clamp_u32(arg_1.d.x, var_0.x, arg_1.c.x), 82086u, var_0.x << (0u % 32u), _wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.c.x, 1u), vec2<u32>(36730u, arg_0.d.x)))), vec4<u32>(0u, _wgslsmith_dot_vec2_u32(vec2<u32>(arg_1.d.x, arg_2.c.x), vec2<u32>(var_0.x, arg_0.c.x)), ~9601u, ~arg_1.c.x) | arg_2.c));
}

fn func_3(arg_0: Struct_1) -> f32 {
    global1 = Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(1577f)), -1743f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-147f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -217f), _wgslsmith_f_op_f32(global1.a * arg_0.b))) + -340f), _wgslsmith_mod_vec4_u32(vec4<u32>(countOneBits(~arg_0.c.x), _wgslsmith_sub_u32(4294967295u, 32911u), u_input.d.x & u_input.c, 4294967295u), abs(vec4<u32>(~4294967295u, ~arg_0.d.x, global1.d.x, 0u))), vec3<u32>(global1.c.x, abs(48077u), 0u), _wgslsmith_mult_i32(13172i & u_input.b, -abs(countOneBits(1i))));
    var var_0 = arg_0;
    var var_1 = select(!select(vec3<bool>(global2.x, global2.x, all(vec3<bool>(global2.x, false, global2.x))), select(vec3<bool>(global2.x, global2.x, false), select(vec3<bool>(global2.x, false, true), vec3<bool>(global2.x, global2.x, true), vec3<bool>(true, true, global2.x)), global2.x), any(!vec3<bool>(global2.x, false, global2.x))), !(!vec3<bool>(any(vec4<bool>(global2.x, global2.x, global2.x, false)), global2.x != global2.x, arg_0.b > global1.a)), global2.x);
    let var_2 = global0[_wgslsmith_index_u32(74359u, 20u)];
    let var_3 = global0[_wgslsmith_index_u32(4294967295u, 20u)];
    return 544f;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1) -> u32 {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(arg_0.a)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-546f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_1(global1.b, -1000f, vec4<u32>(arg_1.d.x, arg_1.c.x, u_input.d.x, global1.c.x), vec3<u32>(global1.d.x, 0u, 1u), 0i))) - arg_0.a), any(select(vec3<bool>(global2.x, true, global2.x), vec3<bool>(global2.x, false, global2.x), global2.x)))), -813f));
    let var_1 = Struct_1(-2524f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a * _wgslsmith_f_op_f32(f32(-1f) * -916f))) + 383f), ~(vec4<u32>(firstLeadingBit(u_input.d.x), ~u_input.d.x, arg_0.c.x, arg_1.c.x) << (~(~vec4<u32>(u_input.c, arg_0.c.x, u_input.e, arg_0.d.x)) % vec4<u32>(32u))), vec3<u32>(_wgslsmith_dot_vec2_u32(global1.d.zx, arg_1.d.zy), _wgslsmith_dot_vec2_u32(reverseBits(arg_1.d.zy), vec2<u32>(firstTrailingBit(0u), min(arg_0.c.x, 1u))), _wgslsmith_mult_u32(17596u, arg_0.c.x) ^ global1.d.x), ~_wgslsmith_dot_vec4_i32(vec4<i32>(0i, min(arg_1.e, 9358i), u_input.b, _wgslsmith_add_i32(-20089i, 0i)), vec4<i32>(~u_input.b, i32(-1i) * -4294i, ~u_input.b, 77782i)));
    var var_2 = Struct_1(arg_1.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-911f - _wgslsmith_f_op_f32(-var_1.b)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_1.a), _wgslsmith_f_op_f32(-var_1.b))))), _wgslsmith_f_op_f32(f32(-1f) * -664f)), var_1.c, var_1.c.xzz, countOneBits(~abs(arg_1.e)));
    var var_3 = _wgslsmith_mod_vec2_i32(vec2<i32>(0i, _wgslsmith_dot_vec3_i32(select(-vec3<i32>(global1.e, u_input.b, u_input.b), vec3<i32>(-1i, arg_1.e, -5912i), vec3<bool>(global2.x, true, global2.x)), -(vec3<i32>(-2147483647i, 26353i, arg_0.e) >> (vec3<u32>(u_input.e, 1u, arg_0.d.x) % vec3<u32>(32u))))), _wgslsmith_add_vec2_i32(-_wgslsmith_clamp_vec2_i32(vec2<i32>(10646i, arg_1.e), vec2<i32>(u_input.b, 2147483647i), vec2<i32>(var_1.e, u_input.b)) | vec2<i32>(1i, 1i), vec2<i32>(var_1.e, ~arg_0.e)));
    var var_4 = !vec2<bool>(global2.x, global2.x);
    return 54968u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = reverseBits(0u);
    let var_1 = global0[_wgslsmith_index_u32(~_wgslsmith_sub_u32(reverseBits(select(u_input.c, global1.d.x, global2.x)) | (var_0 >> (u_input.a % 32u)), ~(~global1.d.x)), 20u)];
    var var_2 = func_2(global0[_wgslsmith_index_u32(18416u, 20u)], Struct_1(-976f, global1.b, func_1(Struct_1(2381f, var_1.a, vec4<u32>(var_1.d.x, global1.c.x, 0u, u_input.a), var_1.d, -2147483647i), global0[_wgslsmith_index_u32(var_0, 20u)], Struct_1(global1.b, 708f, u_input.d, vec3<u32>(global1.d.x, global1.d.x, global1.c.x), global1.e)), vec3<u32>(1u & global1.d.x, 4294967295u, 4294967295u), -19853i)) ^ 12503u;
    let var_3 = 200f;
    global1 = global0[_wgslsmith_index_u32(33601u, 20u)];
    global2 = !select(vec3<bool>(global2.x, !(true || global2.x), !select(global2.x, false, true)), select(vec3<bool>(!global2.x, true, var_1.b == -346f), select(select(vec3<bool>(true, global2.x, false), vec3<bool>(true, global2.x, true), vec3<bool>(false, global2.x, global2.x)), vec3<bool>(false, global2.x, true), all(vec4<bool>(global2.x, global2.x, global2.x, global2.x))), global2.x), any(!global2.yz));
    var var_4 = select(true, !global2.x, false);
    let var_5 = vec3<i32>(~(_wgslsmith_mult_i32(var_1.e, -42831i << (global1.c.x % 32u)) >> (_wgslsmith_mod_u32(_wgslsmith_sub_u32(var_1.c.x, 41327u), ~0u) % 32u)), _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(15965i, u_input.b, var_1.e), vec3<i32>(-2147483647i, var_1.e, var_1.e), vec3<i32>(global1.e, 1i, var_1.e) >> (u_input.d.zwx % vec3<u32>(32u))), _wgslsmith_div_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.b, u_input.b, u_input.b), vec3<i32>(-1i, 0i, -31129i)), firstTrailingBit(vec3<i32>(global1.e, 23082i, 67502i)))), vec3<i32>(~global1.e, -(1i << (var_0 % 32u)), _wgslsmith_div_i32(firstLeadingBit(var_1.e), ~var_1.e))), 23020i);
    var var_6 = global2.x;
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(4294967295u), _wgslsmith_mod_vec2_u32(vec2<u32>(~var_1.d.x, ~u_input.c) | var_1.d.zx, select(select(vec2<u32>(var_0, 52757u), vec2<u32>(var_0, var_0), global2.x), global1.c.zx, !select(global2.xx, vec2<bool>(global2.x, false), global2.yy))), ~var_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(304f)) + _wgslsmith_f_op_f32(func_3(Struct_1(1479f, global1.b, global1.c, vec3<u32>(var_0, var_1.c.x, global1.d.x), global1.e))))), vec4<i32>(~u_input.b, select(-1i, 85069i, 1u > var_0), global1.e, var_5.x));
}


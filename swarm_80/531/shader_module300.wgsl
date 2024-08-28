struct Struct_1 {
    a: bool,
    b: f32,
    c: vec3<u32>,
    d: vec4<f32>,
    e: i32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: f32,
    c: Struct_1,
    d: Struct_1,
    e: vec2<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<bool>,
    c: vec4<i32>,
    d: vec3<u32>,
    e: i32,
}

struct Struct_4 {
    a: f32,
    b: Struct_1,
    c: bool,
    d: i32,
}

struct Struct_5 {
    a: vec4<bool>,
    b: Struct_3,
    c: vec3<bool>,
    d: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: vec3<i32>,
    d: vec3<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 35006u;

var<private> global1: array<f32, 10> = array<f32, 10>(1950f, 1572f, -1426f, -886f, 1850f, -647f, -2634f, 843f, 331f, -2091f);

var<private> global2: Struct_1 = Struct_1(false, -1372f, vec3<u32>(25465u, 58429u, 85497u), vec4<f32>(-1443f, 419f, 1586f, 1211f), 1i);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3(arg_0: vec2<u32>) -> bool {
    global1 = array<f32, 10>();
    var var_0 = Struct_1(true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.d.x * 757f) * _wgslsmith_f_op_f32(round(-876f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global2.b)) + -134f))) - -215f), vec3<u32>(select(abs(_wgslsmith_clamp_u32(global2.c.x, arg_0.x, arg_0.x)), _wgslsmith_mult_u32(arg_0.x << (0u % 32u), 1u), global2.a), 37623u, 1u), _wgslsmith_f_op_vec4_f32(select(global2.d, vec4<f32>(_wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(global2.b + -1270f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global1[_wgslsmith_index_u32(global2.c.x, 10u)])) - -1482f), _wgslsmith_f_op_f32(f32(-1f) * -762f), -631f), global2.a)), global2.e);
    global0 = ~(~firstTrailingBit(abs(~43459u)));
    let var_1 = Struct_5(select(vec4<bool>(any(select(vec4<bool>(true, global2.a, true, true), vec4<bool>(false, var_0.a, true, false), global2.a)), global2.a, 382f >= _wgslsmith_f_op_f32(max(global2.b, global2.b)), var_0.a), vec4<bool>(true && any(vec3<bool>(var_0.a, var_0.a, false)), _wgslsmith_f_op_f32(floor(1385f)) != -632f, var_0.a, var_0.a), select(vec4<bool>(true, any(vec4<bool>(false, true, global2.a, true)), global2.a, true), select(!vec4<bool>(global2.a, global2.a, true, false), select(vec4<bool>(false, false, var_0.a, false), vec4<bool>(global2.a, var_0.a, var_0.a, global2.a), false), vec4<bool>(global2.a, false, false, global2.a)), vec4<bool>(true, any(vec2<bool>(global2.a, global2.a)), !var_0.a, true))), Struct_3(Struct_1(global2.a == var_0.a, 901f, max(~vec3<u32>(var_0.c.x, 62007u, var_0.c.x), vec3<u32>(51051u, 32339u, 42339u)), global2.d, ~(-1i)), select(select(vec4<bool>(false, true, var_0.a, false), select(vec4<bool>(var_0.a, var_0.a, var_0.a, false), vec4<bool>(false, global2.a, true, true), false), vec4<bool>(false, true, true, false)), vec4<bool>(var_0.e == global2.e, var_0.a, u_input.a != global2.e, !global2.a), !select(true, var_0.a, false)), ~(~vec4<i32>(var_0.e, 0i, -1i, 2147483647i)), ~reverseBits(global2.c), var_0.e), select(vec3<bool>(all(select(vec3<bool>(var_0.a, false, true), vec3<bool>(true, var_0.a, var_0.a), vec3<bool>(false, var_0.a, global2.a))), select(true, true, true), false), !select(!vec3<bool>(false, false, global2.a), vec3<bool>(false, false, var_0.a), true), select(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, var_0.a), vec3<bool>(var_0.a, true, var_0.a), vec3<bool>(true, var_0.a, var_0.a)), true || global2.a), select(vec3<bool>(false, true, var_0.a), vec3<bool>(true, false, global2.a), select(vec3<bool>(false, global2.a, global2.a), vec3<bool>(var_0.a, true, false), false)), select(select(vec3<bool>(true, var_0.a, true), vec3<bool>(true, global2.a, false), vec3<bool>(var_0.a, global2.a, global2.a)), !vec3<bool>(global2.a, true, false), any(vec4<bool>(var_0.a, false, global2.a, global2.a))))), Struct_3(Struct_1(var_0.a, global1[_wgslsmith_index_u32(61332u, 10u)], vec3<u32>(_wgslsmith_mod_u32(global2.c.x, global2.c.x), arg_0.x, _wgslsmith_dot_vec3_u32(vec3<u32>(global2.c.x, 9578u, global2.c.x), vec3<u32>(35642u, 0u, arg_0.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(632f, 348f, -1314f, 1000f))), global2.e), vec4<bool>(global2.a, true, global2.a, any(vec3<bool>(var_0.a, false, var_0.a))), vec4<i32>(firstLeadingBit(~u_input.b.x), _wgslsmith_clamp_i32(1i, global2.e, 5406i >> (arg_0.x % 32u)), global2.e, var_0.e), _wgslsmith_add_vec3_u32(firstLeadingBit(var_0.c), ~vec3<u32>(var_0.c.x, arg_0.x, 17075u)), var_0.e << (4294967295u % 32u)));
    var var_2 = 1u;
    return global2.a;
}

fn func_2() -> u32 {
    let var_0 = vec4<bool>(global2.a, global2.a, true, func_3((global2.c.yz >> (~global2.c.xz % vec2<u32>(32u))) | ~global2.c.zx));
    var var_1 = Struct_3(Struct_1(global2.a, -456f, ~(~(~vec3<u32>(global2.c.x, global2.c.x, global2.c.x))), vec4<f32>(_wgslsmith_f_op_f32(-global2.d.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-990f, -842f))), 682f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(global2.c.x, 10u)] - global2.b))), -global2.e), var_0, min(u_input.b, u_input.b), vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(global2.c.x, global2.c.x, 29829u) << (global2.c % vec3<u32>(32u)), ~global2.c ^ ~global2.c), global2.c.x << (1u % 32u), max(1u, global2.c.x)), 38480i);
    var var_2 = global2.e;
    var var_3 = Struct_4(1142f, var_1.a, true, firstTrailingBit(-u_input.b.x));
    global2 = Struct_1(all(var_0.zxx), _wgslsmith_f_op_f32(global2.b * _wgslsmith_f_op_f32(-global2.b)), select(vec3<u32>(countOneBits(~global2.c.x), 1u & ~global2.c.x, ~1u), vec3<u32>(~select(0u, var_1.d.x, true), var_1.a.c.x, (1u >> (var_1.a.c.x % 32u)) >> (73398u % 32u)), select(var_0.yxy, vec3<bool>(!var_1.a.a, !var_3.c, var_1.a.a), select(vec3<bool>(true, true, true), vec3<bool>(true, true, var_1.a.a), var_3.b.a))), var_1.a.d, global2.e);
    return global2.c.x;
}

fn func_1(arg_0: vec4<i32>, arg_1: bool, arg_2: vec2<i32>, arg_3: vec3<u32>) -> Struct_1 {
    global0 = ~_wgslsmith_div_u32(18061u, ~func_2());
    var var_0 = Struct_3(Struct_1(!(!(!arg_1)), global1[_wgslsmith_index_u32(~global2.c.x, 10u)], select(vec3<u32>(91890u ^ arg_3.x, 38900u, countOneBits(global2.c.x)), vec3<u32>(_wgslsmith_dot_vec2_u32(global2.c.yz, arg_3.zz), min(22756u, 1u), _wgslsmith_div_u32(0u, 4294967295u)), !arg_1), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(select(global2.d.x, global1[_wgslsmith_index_u32(global2.c.x, 10u)], arg_1)), _wgslsmith_f_op_f32(f32(-1f) * -545f), _wgslsmith_f_op_f32(max(1841f, -1119f)), _wgslsmith_f_op_f32(ceil(-1133f))), vec4<f32>(_wgslsmith_f_op_f32(-550f + 988f), -1885f, _wgslsmith_f_op_f32(min(global1[_wgslsmith_index_u32(arg_3.x, 10u)], global1[_wgslsmith_index_u32(arg_3.x, 10u)])), global2.d.x), vec4<bool>(false, arg_1, global2.a, false))), -2147483647i), select(!vec4<bool>(true, true, true, !global2.a), vec4<bool>(true, !any(vec4<bool>(arg_1, global2.a, true, true)), select(!arg_1, arg_1 && true, 0u > arg_3.x), global2.a), !func_3(arg_3.xy) | arg_1), (vec4<i32>(-1i) * -select(arg_0, vec4<i32>(arg_0.x, -2147483647i, 31644i, arg_2.x), vec4<bool>(global2.a, global2.a, false, global2.a))) >> (vec4<u32>(_wgslsmith_dot_vec3_u32(~global2.c, global2.c), _wgslsmith_mod_u32(1u, global2.c.x) >> (_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 1u, arg_3.x), arg_3) % 32u), arg_3.x, global2.c.x) % vec4<u32>(32u)), arg_3, arg_0.x);
    let var_1 = !var_0.b.xwz;
    global0 = 133691u;
    let var_2 = Struct_5(select(vec4<bool>(all(var_0.b), true, true, global2.a), select(select(select(vec4<bool>(var_0.a.a, false, true, true), vec4<bool>(arg_1, var_1.x, false, global2.a), vec4<bool>(var_0.b.x, true, var_0.a.a, var_1.x)), vec4<bool>(true, var_0.b.x, var_0.b.x, true), false), vec4<bool>(true, global2.a | true, var_1.x | false, global2.a || false), vec4<bool>(var_1.x, var_1.x, arg_1, true)), any(select(!var_0.b, select(var_0.b, var_0.b, var_0.b), !var_0.b))), Struct_3(Struct_1(countOneBits(var_0.d.x) <= 1u, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_0.a.b), -520f)), ~arg_3, vec4<f32>(_wgslsmith_f_op_f32(min(735f, 2700f)), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(global2.c.x, 10u)]), global2.b, _wgslsmith_f_op_f32(f32(-1f) * -1479f)), -2147483647i), !(!select(vec4<bool>(arg_1, true, arg_1, var_0.b.x), var_0.b, vec4<bool>(false, arg_1, true, var_0.a.a))), min(vec4<i32>(arg_2.x | global2.e, 1i, ~var_0.e, _wgslsmith_dot_vec2_i32(var_0.c.ww, arg_2)), var_0.c), global2.c | (~vec3<u32>(global2.c.x, var_0.d.x, 45276u) >> (firstLeadingBit(vec3<u32>(var_0.a.c.x, 6603u, var_0.a.c.x)) % vec3<u32>(32u))), 28342i), var_1, Struct_3(var_0.a, !(!select(vec4<bool>(false, true, true, false), var_0.b, global2.a)), _wgslsmith_div_vec4_i32(u_input.b, var_0.c), vec3<u32>(~4294967295u, ~(~2395u), ~arg_3.x ^ arg_3.x), _wgslsmith_mod_i32(-2147483647i, ~u_input.a)));
    return var_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = func_1(vec4<i32>(reverseBits(~2147483647i), ~firstTrailingBit(global2.e), countOneBits(-1i), i32(-1i) * -_wgslsmith_clamp_i32(global2.e, u_input.b.x, u_input.b.x)), true, vec2<i32>(-global2.e, i32(-1i) * -_wgslsmith_add_i32(global2.e, u_input.b.x)), vec3<u32>(~_wgslsmith_mult_u32(firstTrailingBit(global2.c.x), max(1u, 7995u)), 0u, global2.c.x));
    var var_0 = global2.c.x;
    var var_1 = Struct_3(Struct_1(func_1(vec4<i32>(-2147483647i, -14530i, u_input.a, 50698i) << (vec4<u32>(0u, global2.c.x, 1u, global2.c.x) % vec4<u32>(32u)), (global2.a | global2.a) & global2.a, ~_wgslsmith_sub_vec2_i32(u_input.b.xz, u_input.b.xz), global2.c).a, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global2.b * _wgslsmith_f_op_f32(floor(global2.d.x))))), vec3<u32>(0u, _wgslsmith_div_u32(21109u, global2.c.x), ~global2.c.x) ^ ~(~global2.c), _wgslsmith_f_op_vec4_f32(-global2.d), _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, global2.e, 1i, 0i) | -vec4<i32>(global2.e, 4419i, -1i, u_input.a), ~(-u_input.b))), select(vec4<bool>(!(408f >= global1[_wgslsmith_index_u32(4294967295u, 10u)]), !global2.a, reverseBits(u_input.b.x) > u_input.b.x, !(17467u != global2.c.x)), !vec4<bool>(-2147483647i != u_input.b.x, !global2.a, true, true), select(vec4<bool>(true || global2.a, true, true, select(true, false, false)), !select(vec4<bool>(false, global2.a, global2.a, global2.a), vec4<bool>(false, global2.a, false, false), vec4<bool>(true, global2.a, global2.a, true)), true)), vec4<i32>(~1i, _wgslsmith_sub_i32(u_input.a, _wgslsmith_dot_vec2_i32(select(u_input.b.yx, u_input.b.yz, false), -u_input.b.xx)), 30010i, _wgslsmith_dot_vec4_i32(u_input.b, _wgslsmith_add_vec4_i32(~u_input.b, u_input.b))), ~global2.c, -reverseBits(30440i));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a.b + 294f));
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-305f, _wgslsmith_f_op_f32(step(global2.b, -491f)), _wgslsmith_div_f32(global2.b, -374f)))))));
    global0 = _wgslsmith_mod_u32(firstTrailingBit(global2.c.x), _wgslsmith_add_u32(20906u, select(global2.c.x, 8063u, true)));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(~max(19216u, ~global2.c.x), ~_wgslsmith_sub_u32(~global2.c.x, _wgslsmith_dot_vec4_u32(vec4<u32>(var_1.a.c.x, global2.c.x, 0u, global2.c.x), vec4<u32>(6941u, 4294967295u, global2.c.x, 1u)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(603f * 564f))), _wgslsmith_f_op_f32(round(global2.b)))), ~_wgslsmith_add_vec3_i32(abs(vec3<i32>(var_1.e, 27284i, global2.e) ^ vec3<i32>(var_1.e, -2147483647i, -29204i)), ~_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.b.x, -1i, -5446i), vec3<i32>(-3207i, u_input.b.x, var_1.a.e))), var_1.d, max(var_1.d.x & ~(~var_1.d.x), var_1.d.x));
}


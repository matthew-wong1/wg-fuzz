struct Struct_1 {
    a: bool,
    b: bool,
    c: vec4<i32>,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: i32,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_3,
    c: bool,
}

struct Struct_5 {
    a: Struct_1,
    b: bool,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec4<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5;

var<private> global1: array<vec4<bool>, 7>;

var<private> global2: array<vec3<f32>, 7> = array<vec3<f32>, 7>(vec3<f32>(1116f, -1767f, 2804f), vec3<f32>(199f, 507f, 317f), vec3<f32>(195f, 753f, -1045f), vec3<f32>(-359f, -1919f, 2280f), vec3<f32>(-782f, 1000f, 1000f), vec3<f32>(-1614f, -2392f, -336f), vec3<f32>(1000f, 364f, -1047f));

var<private> global3: Struct_1 = Struct_1(false, true, vec4<i32>(65250i, 15207i, -42092i, 14549i), true);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec4<f32>, arg_1: vec4<f32>, arg_2: vec3<i32>, arg_3: i32) -> bool {
    let var_0 = min(select(vec4<i32>(2147483647i << (global0.c.x % 32u), 36448i, 0i, 46051i), min(max(vec4<i32>(1i, 9572i, 0i, global0.a.c.x), global3.c), vec4<i32>(global0.a.c.x, -1i, arg_3, global0.a.c.x)), false), -_wgslsmith_clamp_vec4_i32(global3.c, global0.a.c, _wgslsmith_clamp_vec4_i32(global0.a.c, global0.a.c, vec4<i32>(global0.a.c.x, arg_2.x, global0.a.c.x, 24424i)))) >> (vec4<u32>(~_wgslsmith_sub_u32(17909u, global0.c.x) & _wgslsmith_sub_u32(~global0.c.x, 1u >> (0u % 32u)), ~15104u, _wgslsmith_mod_u32(~(~global0.c.x), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, u_input.b), global0.c.yx)), firstTrailingBit(4294967295u)) % vec4<u32>(32u));
    let var_1 = abs(firstLeadingBit(abs(vec4<i32>(22406i, global3.c.x, 16570i, arg_2.x)))) & select(global0.a.c, -_wgslsmith_mult_vec4_i32(-global0.a.c, vec4<i32>(26134i, arg_2.x, -10874i, 2147483647i)), !global1[_wgslsmith_index_u32(reverseBits(_wgslsmith_mod_u32(28325u, global0.c.x)), 7u)]);
    global2 = array<vec3<f32>, 7>();
    global2 = array<vec3<f32>, 7>();
    global1 = array<vec4<bool>, 7>();
    return !(true || global0.b);
}

fn func_2(arg_0: vec3<u32>) -> Struct_1 {
    global1 = array<vec4<bool>, 7>();
    var var_0 = ~(~(~63470u)) ^ _wgslsmith_mult_u32(global0.c.x, abs(~global0.c.x));
    var var_1 = _wgslsmith_sub_u32(_wgslsmith_add_u32(countOneBits(global0.c.x), countOneBits(u_input.b)) ^ global0.c.x, countOneBits(~(~(~1u))));
    let var_2 = Struct_5(Struct_1(all(vec2<bool>(true, global0.c.x >= global0.c.x)), func_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-2173f, 2138f, 350f, -670f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -215f, -204f, -235f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, 1261f, -902f, 1249f) + vec4<f32>(181f, -932f, -1031f, 110f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(445f, 1008f, 1276f, -412f) - vec4<f32>(-627f, -1000f, 571f, -234f))), vec3<i32>(_wgslsmith_clamp_i32(1i, global3.c.x, -2147483647i), i32(-1i) * -28470i, min(-8790i, global0.a.c.x)), _wgslsmith_mult_i32(0i, 28613i)), global0.a.c, true), global3.a, firstLeadingBit(~select(vec3<u32>(global0.c.x, arg_0.x, 41243u), _wgslsmith_div_vec3_u32(vec3<u32>(1u, global0.c.x, u_input.b), arg_0), global0.a.b | global0.b)));
    var var_3 = _wgslsmith_f_op_f32(trunc(1608f));
    return Struct_1(any(select(select(vec2<bool>(false, global0.a.d), vec2<bool>(true, true), select(vec2<bool>(true, global3.d), vec2<bool>(true, global3.b), true)), select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, false), var_2.b), global0.a.b | false), global0.a.a)), global0.a.d && var_2.a.b, ~_wgslsmith_div_vec4_i32(vec4<i32>(-2147483647i, ~99872i, 1i, -1i), global0.a.c), !global0.b);
}

fn func_1(arg_0: Struct_5, arg_1: vec2<u32>, arg_2: Struct_4, arg_3: Struct_3) -> Struct_5 {
    global1 = array<vec4<bool>, 7>();
    global0 = arg_0;
    var var_0 = ~(~(~(~countOneBits(vec4<u32>(1u, arg_1.x, 3102u, global0.c.x)))));
    let var_1 = vec2<u32>(4294967295u, 74023u);
    var var_2 = ~_wgslsmith_div_i32(-16552i, _wgslsmith_sub_i32(_wgslsmith_mult_i32(select(global0.a.c.x, 0i, arg_3.a), 1i), 2147483647i));
    return Struct_5(func_2(min(~vec3<u32>(12935u, global0.c.x, 1u), ~_wgslsmith_mod_vec3_u32(u_input.a.zxy, u_input.a.xxz))), any(select(vec3<bool>(true, true, true), vec3<bool>(!arg_0.b, any(vec3<bool>(false, true, false)), global0.b), select(vec3<bool>(arg_0.a.d, false, arg_2.b.a), vec3<bool>(arg_2.b.a, false, global3.b), vec3<bool>(false, arg_0.a.d, arg_0.a.d)))), ~select(_wgslsmith_div_vec3_u32(~var_0.xzw, vec3<u32>(1u, var_0.x, var_0.x)), arg_0.c, false));
}

fn func_4(arg_0: Struct_5, arg_1: i32) -> i32 {
    global2 = array<vec3<f32>, 7>();
    global3 = global0.a;
    global3 = Struct_1(global3.b, _wgslsmith_mult_u32(select(~global0.c.x, 0u, global3.a), 92564u) != arg_0.c.x, global0.a.c | vec4<i32>(0i ^ arg_1, ~(~8327i), func_2(~u_input.a.wwz).c.x, arg_1), func_1(Struct_5(global0.a, global0.b, ~u_input.a.yzx), vec2<u32>(arg_0.c.x, 37897u), Struct_4(Struct_3(false, reverseBits(global0.a.c.x)), Struct_3(false, ~arg_1), !func_3(vec4<f32>(1182f, -757f, -200f, -2540f), vec4<f32>(-1239f, 1045f, 698f, 1084f), vec3<i32>(1i, global3.c.x, -29413i), global0.a.c.x)), Struct_3(!arg_0.b, ~global0.a.c.x)).b);
    var var_0 = func_1(Struct_5(arg_0.a, any(select(vec2<bool>(global0.b, global0.b), vec2<bool>(false, arg_0.b), vec2<bool>(true, global0.b))) | true, ~max(_wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, u_input.b, 4294967295u), vec3<u32>(arg_0.c.x, global0.c.x, u_input.b)), vec3<u32>(0u, u_input.b, global0.c.x))), vec2<u32>(~1u, u_input.a.x), Struct_4(Struct_3(true, ~_wgslsmith_sub_i32(arg_1, global3.c.x)), Struct_3(true, global0.a.c.x), arg_0.a.c.x > arg_1), Struct_3(!(firstLeadingBit(1i) == global3.c.x), ~(~global0.a.c.x) ^ (select(arg_1, arg_0.a.c.x, false) ^ -2147483647i))).a.c.yww;
    global0 = func_1(arg_0, firstLeadingBit(reverseBits(~global0.c.xx << (vec2<u32>(1u, global0.c.x) % vec2<u32>(32u)))), Struct_4(Struct_3(!(true | arg_0.a.d), global3.c.x), Struct_3(func_1(func_1(Struct_5(Struct_1(arg_0.b, true, vec4<i32>(-42213i, global3.c.x, -42927i, var_0.x), false), true, arg_0.c), u_input.a.zw, Struct_4(Struct_3(arg_0.b, global0.a.c.x), Struct_3(global3.d, 54676i), true), Struct_3(arg_0.b, 0i)), global0.c.zz, Struct_4(Struct_3(false, global3.c.x), Struct_3(global3.b, 41500i), true), Struct_3(global3.a, arg_1)).a.d, _wgslsmith_add_i32(_wgslsmith_add_i32(-2147483647i, 23606i), ~6985i)), !(!(!global0.b))), Struct_3(true, func_1(arg_0, arg_0.c.yz, Struct_4(Struct_3(false, arg_1), Struct_3(false, global3.c.x), any(vec3<bool>(false, true, global0.a.a))), Struct_3(global3.a, arg_1)).a.c.x));
    return ~abs(firstTrailingBit(-_wgslsmith_sub_i32(1i, global0.a.c.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global2[_wgslsmith_index_u32(u_input.b >> (~u_input.b % 32u), 7u)]) * global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(~vec2<u32>(0u, global0.c.x), ~vec2<u32>(global0.c.x, u_input.b), vec2<u32>(u_input.b, 61839u)), ~vec2<u32>(117773u, u_input.b) | ~vec2<u32>(global0.c.x, 25316u)), 7u)]) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(global2[_wgslsmith_index_u32(u_input.a.x, 7u)] * vec3<f32>(-1050f, -977f, -382f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-319f, 484f, -884f)) + _wgslsmith_f_op_vec3_f32(-global2[_wgslsmith_index_u32(global0.c.x, 7u)])))));
    var var_1 = Struct_5(Struct_1(true, global0.b, vec4<i32>(func_4(func_1(Struct_5(Struct_1(global0.b, global3.a, global3.c, global3.a), global0.a.d, vec3<u32>(1u, global0.c.x, u_input.a.x)), u_input.a.xy, Struct_4(Struct_3(global0.b, global0.a.c.x), Struct_3(true, global3.c.x), false), Struct_3(true, 2147483647i)), -9691i), ~(i32(-1i) * -2147483647i), -reverseBits(global3.c.x), 1i), any(!vec4<bool>(true, false, global0.a.a, true))), func_1(func_1(func_1(Struct_5(Struct_1(global3.d, global3.d, global3.c, global0.b), global0.b, global0.c), u_input.a.wx, Struct_4(Struct_3(global3.b, -1i), Struct_3(global3.d, global0.a.c.x), global3.b), Struct_3(global0.b, global3.c.x)), ~vec2<u32>(71749u, u_input.b), Struct_4(Struct_3(global3.d, -1i), Struct_3(global3.a, global0.a.c.x), true), Struct_3(true, global0.a.c.x)), vec2<u32>(u_input.b, select(u_input.b, 1u, global3.a)), Struct_4(Struct_3(global0.b, 0i), Struct_3(global3.a, global3.c.x), false & global0.b), Struct_3(global0.b, ~0i)).b && any(vec3<bool>(all(global1[_wgslsmith_index_u32(global0.c.x, 7u)]), func_3(vec4<f32>(1011f, var_0.x, var_0.x, var_0.x), vec4<f32>(790f, var_0.x, var_0.x, var_0.x), vec3<i32>(2147483647i, global0.a.c.x, -1i), global0.a.c.x), any(vec2<bool>(global3.b, global3.a)))), ~(~(~vec3<u32>(28561u, 14803u, 41217u))));
    let var_2 = Struct_2(func_1(func_1(func_1(func_1(Struct_5(Struct_1(global3.a, var_1.a.d, global3.c, false), false, vec3<u32>(global0.c.x, 14275u, global0.c.x)), vec2<u32>(u_input.b, u_input.b), Struct_4(Struct_3(false, -1i), Struct_3(var_1.a.b, var_1.a.c.x), global0.b), Struct_3(false, global3.c.x)), _wgslsmith_mod_vec2_u32(u_input.a.yw, global0.c.zy), Struct_4(Struct_3(true, global3.c.x), Struct_3(var_1.a.a, var_1.a.c.x), global0.a.b), Struct_3(global3.b, global3.c.x)), ~u_input.a.wz, Struct_4(Struct_3(true, global3.c.x), Struct_3(var_1.a.b, -8383i), var_1.c.x != var_1.c.x), Struct_3(true, _wgslsmith_add_i32(global3.c.x, global3.c.x))), u_input.a.wx, Struct_4(Struct_3(global0.b, ~global3.c.x), Struct_3(all(vec3<bool>(false, true, var_1.b)), _wgslsmith_div_i32(global3.c.x, global0.a.c.x)), (27500i & var_1.a.c.x) != 1i), Struct_3(all(vec3<bool>(global3.b, false, global0.a.a)), -22688i)).a);
    var var_3 = vec4<bool>(true, global3.b, global3.b, global3.b);
    var var_4 = vec4<f32>(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x - 315f)), _wgslsmith_f_op_f32(-var_0.x), var_0.x);
    var var_5 = vec3<bool>(true, var_4.x > _wgslsmith_f_op_f32(trunc(var_4.x)), !all(select(global1[_wgslsmith_index_u32(0u, 7u)], vec4<bool>(false, true, var_2.a.a, false), vec4<bool>(global0.a.a, false, var_2.a.a, var_2.a.d))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_u32(var_1.c, reverseBits(~(~var_1.c))), 1u, u_input.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -515f) + var_4.x));
}


struct Struct_1 {
    a: u32,
    b: vec3<bool>,
    c: i32,
    d: vec3<i32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: vec2<u32>,
    d: vec3<i32>,
    e: u32,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(6193u, 48412u, 4294967295u);

var<private> global1: i32 = -27244i;

var<private> global2: array<Struct_2, 3>;

var<private> global3: Struct_2;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3() -> vec3<u32> {
    global1 = global3.b.d.x;
    var var_0 = ~(~(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 19239u, 1u, u_input.a.x), vec4<u32>(143058u, global3.e, 1u, 6562u))) << (_wgslsmith_sub_u32(global0.x, global0.x) % 32u));
    var var_1 = Struct_3(Struct_1(u_input.a.x, select(global3.b.b, vec3<bool>(global3.b.b.x, select(global3.b.b.x, true, true), select(true, false, false)), select(!global3.b.b, global3.b.b, global3.b.b.x | global3.b.b.x)), _wgslsmith_sub_i32(global3.b.c, global3.b.c | (global3.b.d.x >> (global3.b.a % 32u))), global3.b.d));
    var var_2 = global3.b.b.x;
    let var_3 = Struct_3(var_1.a);
    return countOneBits(vec3<u32>(u_input.a.x, global3.b.a, ~global3.b.a) >> (max(~vec3<u32>(1u, 4294967295u, var_3.a.a) | abs(vec3<u32>(var_3.a.a, global3.b.a, var_1.a.a)), select(vec3<u32>(global3.a, 0u, global0.x), _wgslsmith_sub_vec3_u32(vec3<u32>(var_1.a.a, var_1.a.a, 0u), vec3<u32>(var_1.a.a, var_1.a.a, 28606u)), vec3<bool>(false, true, false))) % vec3<u32>(32u)));
}

fn func_2(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: vec2<bool>, arg_3: u32) -> Struct_2 {
    var var_0 = ~_wgslsmith_mod_vec3_u32(_wgslsmith_mod_vec3_u32(~select(vec3<u32>(arg_3, arg_0.a, global3.c.x), vec3<u32>(4294967295u, global0.x, 89403u), true), ~vec3<u32>(1u, u_input.a.x, arg_3)), countOneBits(_wgslsmith_mult_vec3_u32(vec3<u32>(arg_0.a, arg_3, 1u), vec3<u32>(14682u, u_input.a.x, global3.c.x))));
    var_0 = _wgslsmith_div_vec3_u32(func_3(), abs(vec3<u32>(1u, countOneBits(16339u), _wgslsmith_sub_u32(~arg_0.a, 21027u))));
    var var_1 = ~(~(~u_input.a));
    var_0 = vec3<u32>(global3.c.x, var_0.x, 1u);
    let var_2 = global3.b;
    return Struct_2(_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(39728u, ~38855u, 141799u), _wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, var_1.x, 0u), vec3<u32>(global3.c.x, 1u, var_0.x) & vec3<u32>(54138u, global3.e, 1u), _wgslsmith_div_vec3_u32(vec3<u32>(41168u, 67340u, 41429u), vec3<u32>(var_2.a, global0.x, 30049u)))), var_2.a), global3.b, var_0.zy, -(~vec3<i32>(var_2.c, _wgslsmith_dot_vec3_i32(vec3<i32>(0i, var_2.d.x, var_2.c), vec3<i32>(arg_0.c, 2147483647i, var_2.d.x)), 0i)), 35782u);
}

fn func_4(arg_0: Struct_3, arg_1: Struct_2, arg_2: u32, arg_3: f32) -> Struct_2 {
    let var_0 = func_2(func_2(arg_0.a, vec2<u32>(1u, _wgslsmith_mod_u32(~0u, max(arg_1.a, 0u))), vec2<bool>(true, true), 28341u).b, global3.c, !arg_0.a.b.zy, (~(~u_input.a.x) ^ (arg_1.e & (global0.x | global3.b.a))) >> (19641u % 32u));
    let var_1 = arg_0.a.d.xx;
    global3 = func_2(Struct_1(arg_2, select(func_2(func_2(Struct_1(1u, vec3<bool>(true, arg_0.a.b.x, global3.b.b.x), arg_0.a.d.x, vec3<i32>(arg_0.a.c, global3.b.d.x, -2147483647i)), vec2<u32>(17392u, 8973u), arg_0.a.b.xy, 0u).b, vec2<u32>(arg_0.a.a, global0.x), select(vec2<bool>(false, global3.b.b.x), vec2<bool>(true, arg_1.b.b.x), vec2<bool>(arg_0.a.b.x, arg_0.a.b.x)), func_3().x).b.b, !arg_1.b.b, vec3<bool>(true, true, arg_0.a.b.x)), 1i, vec3<i32>(select(1i, 18028i, global3.d.x != 1i), -28875i, arg_1.d.x)), ~vec2<u32>(~(22684u << (global0.x % 32u)), ~(~arg_2)), arg_1.b.b.yz, max(firstTrailingBit(arg_2), countOneBits(_wgslsmith_add_u32(0u, global0.x)) << (global0.x % 32u)));
    let var_2 = !(!(!var_0.b.b.yy));
    let var_3 = arg_0;
    return Struct_2(~arg_0.a.a, func_2(arg_1.b, vec2<u32>(arg_2, 0u), !var_3.a.b.zz, func_2(var_3.a, ~_wgslsmith_mult_vec2_u32(vec2<u32>(0u, arg_2), vec2<u32>(35908u, 23429u)), !func_2(Struct_1(8871u, global3.b.b, global3.d.x, vec3<i32>(1i, -47334i, var_0.b.c)), arg_1.c, var_3.a.b.yz, var_3.a.a).b.b.zy, global3.e).e).b, global3.c, vec3<i32>(-arg_1.d.x, _wgslsmith_mult_i32(~var_3.a.d.x, firstTrailingBit(var_0.d.x)) ^ (abs(arg_0.a.c) >> (abs(3872u) % 32u)), arg_1.b.d.x), ~0u);
}

fn func_1() -> i32 {
    var var_0 = ~(select(65444u, select(1u, global3.c.x, true), true) ^ ~global3.c.x);
    let var_1 = func_4(Struct_3(Struct_1(_wgslsmith_sub_u32(global0.x, 0u), select(global3.b.b, global3.b.b, global3.b.b.x & false), 1i, ~(~global3.b.d))), func_2(global3.b, ~(vec2<u32>(4294967295u, u_input.a.x) << (max(vec2<u32>(global0.x, 0u), u_input.a) % vec2<u32>(32u))), global3.b.b.xy, _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(global0.x, global3.b.a, u_input.a.x, global0.x), vec4<u32>(u_input.a.x, global3.a, global0.x, global0.x)), vec4<u32>(1u, global3.e, 40345u, global0.x)), vec4<u32>(u_input.a.x, global0.x, ~global0.x, _wgslsmith_add_u32(1u, 71060u)))), ~select(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, global0.x), abs(vec2<u32>(66827u, 9725u))), 0u, all(global3.b.b)), _wgslsmith_f_op_f32(f32(-1f) * -1455f));
    global3 = func_4(Struct_3(Struct_1(select(global3.c.x, global0.x, false), vec3<bool>(true, true, var_1.b.b.x), global3.d.x, ~var_1.d << (~vec3<u32>(var_1.a, var_1.c.x, 0u) % vec3<u32>(32u)))), global2[_wgslsmith_index_u32(~0u, 3u)], 56638u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-644f)) * 1218f));
    let var_2 = ~var_1.b.a;
    var_0 = func_3().x;
    return _wgslsmith_mult_i32(-1i, global3.d.x | global3.b.c);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<i32>(-_wgslsmith_div_i32(global3.d.x, -1i), -func_1() | ~1i, _wgslsmith_clamp_i32(_wgslsmith_sub_i32(-1i, 1i), global3.d.x >> (1u % 32u), 34756i));
    let var_1 = vec3<bool>(false, false, func_2(func_2(func_4(Struct_3(Struct_1(global3.e, global3.b.b, -74991i, global3.b.d)), func_4(Struct_3(Struct_1(53559u, global3.b.b, global3.d.x, vec3<i32>(global3.d.x, -1i, -2147483647i))), Struct_2(4294967295u, global3.b, u_input.a, vec3<i32>(1i, var_0.x, 11655i), global3.c.x), u_input.a.x, 2879f), 0u << (0u % 32u), _wgslsmith_f_op_f32(min(2961f, 597f))).b, global3.c, global3.b.b.xz, select(1u, ~0u, !global3.b.b.x)).b, vec2<u32>(global3.a, countOneBits(_wgslsmith_mod_u32(global3.b.a, u_input.a.x))), func_4(Struct_3(global3.b), global2[_wgslsmith_index_u32(firstLeadingBit(global3.b.a), 3u)], global3.a, 1000f).b.b.xx, 0u).b.b.x);
    global3 = global2[_wgslsmith_index_u32(firstTrailingBit(0u), 3u)];
    let var_2 = Struct_1(4294967295u, !var_1, 1i, firstLeadingBit(-(~global3.d)));
    var_0 = vec3<i32>(select(~(-2147483647i), 19360i, var_2.b.x) << (u_input.a.x % 32u), _wgslsmith_add_i32(select(-12200i, ~var_2.c, true), -2147483647i) << ((~min(12407u, 22595u) >> (reverseBits(global0.x) % 32u)) % 32u), 115414i);
    let var_3 = Struct_1(global3.e, var_1, 2147483647i, -var_2.d);
    var var_4 = Struct_1(1u, !var_1, -(~_wgslsmith_add_i32(~(-4807i), _wgslsmith_dot_vec4_i32(vec4<i32>(global3.d.x, var_2.c, var_0.x, var_2.c), vec4<i32>(global3.b.c, var_3.c, -6677i, -4458i)))), func_4(Struct_3(global3.b), Struct_2(global3.b.a, Struct_1(global3.e, vec3<bool>(var_2.b.x, var_2.b.x, true), abs(0i), func_4(Struct_3(Struct_1(global0.x, vec3<bool>(var_1.x, true, true), 0i, vec3<i32>(76220i, var_3.c, -25450i))), global2[_wgslsmith_index_u32(global3.e, 3u)], 0u, -761f).b.d), ~vec2<u32>(32599u, global3.e), ~var_3.d, ~global3.b.a), _wgslsmith_sub_u32(u_input.a.x, func_4(Struct_3(var_3), func_4(Struct_3(var_3), global2[_wgslsmith_index_u32(4294967295u, 3u)], var_3.a, -969f), countOneBits(46405u), _wgslsmith_f_op_f32(max(318f, 295f))).c.x), 1000f).b.d);
    var var_5 = global3.d;
    let var_6 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(~var_2.c, firstTrailingBit(_wgslsmith_sub_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(global3.b.c, -32415i, 45491i, var_2.c), vec4<i32>(-18655i, var_6.c, -2147483647i, -1i), vec4<i32>(var_4.c, var_6.d.x, var_4.d.x, global3.b.c)), _wgslsmith_mod_vec4_i32(vec4<i32>(-1880i, 0i, 2147483647i, -223i), vec4<i32>(var_2.c, -1i, -1i, -1i)))) | select(min(vec4<i32>(2147483647i, var_4.c, var_2.c, global3.b.d.x), vec4<i32>(var_5.x, 23328i, var_0.x, -2147483647i)), ~vec4<i32>(1i, -12709i, 1i, var_6.c) | vec4<i32>(-6736i, var_0.x, var_0.x, var_2.c), var_3.b.x));
}


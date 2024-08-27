struct Struct_1 {
    a: vec3<u32>,
    b: i32,
}

struct Struct_2 {
    a: bool,
    b: vec2<bool>,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: i32,
    d: vec2<u32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 18> = array<f32, 18>(-287f, 668f, -1479f, -197f, 1467f, 231f, 2906f, -330f, -1805f, 842f, 599f, 2421f, 828f, -2238f, -1668f, -1000f, -509f, -702f);

var<private> global1: array<vec2<u32>, 29>;

var<private> global2: array<u32, 6>;

var<private> global3: array<bool, 3> = array<bool, 3>(false, false, false);

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3() -> bool {
    global1 = array<vec2<u32>, 29>();
    let var_0 = Struct_2(!any(vec3<bool>(global3[_wgslsmith_index_u32(26055u, 3u)] || false, global3[_wgslsmith_index_u32(u_input.a, 3u)], true)), select(vec2<bool>(any(vec2<bool>(true, true)), all(vec3<bool>(global3[_wgslsmith_index_u32(1u, 3u)], true, false))), vec2<bool>(global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(101148u, 0u), 3u)] | true, true), select(vec2<bool>(true, global3[_wgslsmith_index_u32(32932u, 3u)] && global3[_wgslsmith_index_u32(u_input.a, 3u)]), vec2<bool>(global3[_wgslsmith_index_u32(4294967295u, 3u)], false), vec2<bool>(all(vec3<bool>(false, false, global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 6u)], 3u)])), !global3[_wgslsmith_index_u32(0u, 3u)]))), vec3<u32>(_wgslsmith_mod_u32(4294967295u, countOneBits(select(8150u, global2[_wgslsmith_index_u32(0u, 6u)], global3[_wgslsmith_index_u32(7753u, 3u)]))), 1u, ~select(~u_input.b, 4294967295u, true)));
    global0 = array<f32, 18>();
    let var_1 = ~(max(_wgslsmith_add_vec2_u32(vec2<u32>(1u, 0u), select(global1[_wgslsmith_index_u32(var_0.c.x, 29u)], vec2<u32>(61439u, 20605u), vec2<bool>(global3[_wgslsmith_index_u32(u_input.b, 3u)], global3[_wgslsmith_index_u32(29894u, 3u)]))), abs(reverseBits(vec2<u32>(25999u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(var_0.c.x, 6u)], 6u)])))) >> (select(firstTrailingBit(var_0.c.yx), vec2<u32>(_wgslsmith_dot_vec3_u32(var_0.c, vec3<u32>(0u, var_0.c.x, var_0.c.x)), 0u), var_0.b) % vec2<u32>(32u)));
    var var_2 = abs(~max(vec2<i32>(-5564i, _wgslsmith_dot_vec3_i32(vec3<i32>(-9873i, 1i, -25358i), vec3<i32>(-23608i, 40862i, 8929i))), ~(~vec2<i32>(10600i, 0i))));
    return global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(35164u, countOneBits(min(global2[_wgslsmith_index_u32(1u, 6u)], var_1.x))), 3u)];
}

fn func_2() -> vec2<bool> {
    global0 = array<f32, 18>();
    var var_0 = Struct_2(true & !(!global3[_wgslsmith_index_u32(1u, 3u)] || true), vec2<bool>(global3[_wgslsmith_index_u32(56363u, 3u)], !select(true, 4294967295u >= u_input.b, func_3())), _wgslsmith_sub_vec3_u32(~(~vec3<u32>(1u, u_input.b, u_input.a)), vec3<u32>(_wgslsmith_mod_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 6u)], 6u)], 30844u) & _wgslsmith_add_u32(91884u, 5529u), _wgslsmith_clamp_u32(~50517u, u_input.b, global2[_wgslsmith_index_u32(~global2[_wgslsmith_index_u32(u_input.b, 6u)], 6u)]), _wgslsmith_dot_vec2_u32(global1[_wgslsmith_index_u32(firstLeadingBit(u_input.a), 29u)], global1[_wgslsmith_index_u32(u_input.a, 29u)]))));
    var var_1 = Struct_1(vec3<u32>(var_0.c.x, ~4294967295u, select(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(_wgslsmith_add_u32(abs(4294967295u), 0u), 6u)], 6u)], 1u, _wgslsmith_f_op_f32(select(global0[_wgslsmith_index_u32(4294967295u, 18u)], 1219f, global3[_wgslsmith_index_u32(30053u, 3u)])) > 826f)), -1i >> (var_0.c.x % 32u));
    var var_2 = max(_wgslsmith_mult_u32(_wgslsmith_mod_u32(43267u, 129301u), max(~(~4294967295u), _wgslsmith_mult_u32(global2[_wgslsmith_index_u32(var_0.c.x, 6u)], var_0.c.x) << ((1u ^ var_1.a.x) % 32u))), 60156u);
    var var_3 = max(select(i32(-1i) * 0i, -(-1i >> (_wgslsmith_dot_vec3_u32(var_0.c, var_1.a) % 32u)), any(vec3<bool>(global0[_wgslsmith_index_u32(5773u, 18u)] <= 330f, global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 0u), var_0.c.xz), 3u)], true))), ~(-21686i));
    return var_0.b;
}

fn func_4(arg_0: Struct_2, arg_1: vec4<bool>) -> Struct_1 {
    return Struct_1(arg_0.c, 13591i);
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1) -> vec2<bool> {
    global1 = array<vec2<u32>, 29>();
    global2 = array<u32, 6>();
    global0 = array<f32, 18>();
    var var_0 = global3[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(~abs(arg_0.a), _wgslsmith_add_vec3_u32(arg_1.a, vec3<u32>(0u, select(14523u, global2[_wgslsmith_index_u32(arg_1.a.x, 6u)], global3[_wgslsmith_index_u32(arg_0.a.x, 3u)]), 98510u))), 3u)];
    var var_1 = Struct_1(arg_1.a, arg_1.b);
    return !vec2<bool>(false, any(vec2<bool>(all(vec3<bool>(global3[_wgslsmith_index_u32(16582u, 3u)], false, global3[_wgslsmith_index_u32(u_input.a, 3u)])), false)));
}

fn func_1() -> vec2<u32> {
    let var_0 = Struct_2(!global3[_wgslsmith_index_u32(4294967295u, 3u)], func_5(Struct_1(_wgslsmith_mult_vec3_u32(vec3<u32>(0u, 75569u, 4294967295u), vec3<u32>(global2[_wgslsmith_index_u32(u_input.b, 6u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.b, 6u)], 6u)], 0u)), 1i), func_4(Struct_2(all(vec3<bool>(global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.b, 6u)], 3u)], true, global3[_wgslsmith_index_u32(u_input.a, 3u)])), func_2(), _wgslsmith_clamp_vec3_u32(vec3<u32>(global2[_wgslsmith_index_u32(109132u, 6u)], u_input.b, u_input.b), vec3<u32>(36427u, 84056u, 1u), vec3<u32>(global2[_wgslsmith_index_u32(u_input.a, 6u)], 1u, 4294967295u))), select(vec4<bool>(global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.b, 6u)], 3u)], global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a, 6u)], 3u)], global3[_wgslsmith_index_u32(81392u, 3u)], true), select(vec4<bool>(true, global3[_wgslsmith_index_u32(u_input.a, 3u)], true, global3[_wgslsmith_index_u32(u_input.b, 3u)]), vec4<bool>(true, true, global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.b, 6u)], 3u)], false), global3[_wgslsmith_index_u32(0u, 3u)]), 1355f > global0[_wgslsmith_index_u32(20372u, 18u)]))), vec3<u32>(~(~select(27866u, 4294967295u, false)), ~select(_wgslsmith_div_u32(global2[_wgslsmith_index_u32(27502u, 6u)], 0u), u_input.b, all(vec2<bool>(true, global3[_wgslsmith_index_u32(u_input.b, 3u)]))), _wgslsmith_sub_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(14226u, 12359u, 30971u), vec3<u32>(u_input.a, 1u, u_input.a)), global2[_wgslsmith_index_u32(select(~0u, abs(1u), global3[_wgslsmith_index_u32(107231u, 3u)]), 6u)])));
    let var_1 = Struct_2(!(!(!global3[_wgslsmith_index_u32(u_input.a, 3u)]) & var_0.a), vec2<bool>(true, (20399i << (u_input.b % 32u)) != select(-31352i, ~0i, true)), var_0.c);
    global1 = array<vec2<u32>, 29>();
    global0 = array<f32, 18>();
    global1 = array<vec2<u32>, 29>();
    return vec2<u32>(reverseBits(var_1.c.x), 111005u);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<u32, 6>();
    let var_0 = reverseBits(~(~(~vec2<u32>(40368u, 7250u) & func_1())));
    let var_1 = Struct_2(func_2().x, vec2<bool>(false, true), vec3<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(0u, 0u, var_0.x, 4294967295u), vec4<u32>(1u, 1u, 1u, 1u) << (~vec4<u32>(global2[_wgslsmith_index_u32(var_0.x, 6u)], 17981u, 1u, global2[_wgslsmith_index_u32(116575u, 6u)]) % vec4<u32>(32u))), func_1().x, ~(~31866u)));
    var var_2 = min(func_4(var_1, select(select(select(vec4<bool>(global3[_wgslsmith_index_u32(76958u, 3u)], var_1.b.x, global3[_wgslsmith_index_u32(43004u, 3u)], global3[_wgslsmith_index_u32(var_1.c.x, 3u)]), vec4<bool>(false, false, global3[_wgslsmith_index_u32(50392u, 3u)], false), vec4<bool>(false, false, global3[_wgslsmith_index_u32(14990u, 3u)], var_1.b.x)), select(vec4<bool>(var_1.a, false, var_1.b.x, var_1.a), vec4<bool>(var_1.a, false, global3[_wgslsmith_index_u32(var_0.x, 3u)], var_1.a), false), select(vec4<bool>(global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(var_1.c.x, 6u)], 6u)], 3u)], true, var_1.b.x, false), vec4<bool>(var_1.b.x, global3[_wgslsmith_index_u32(31535u, 3u)], global3[_wgslsmith_index_u32(4294967295u, 3u)], global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(25435u, 6u)], 3u)]), var_1.b.x)), !(!vec4<bool>(false, var_1.b.x, false, false)), var_1.a)).b, abs(_wgslsmith_dot_vec3_i32(min(-vec3<i32>(86328i, -2147483647i, -42117i), max(vec3<i32>(-41323i, -2147483647i, 22904i), vec3<i32>(10896i, 28786i, -2147483647i))), ~_wgslsmith_sub_vec3_i32(vec3<i32>(-20978i, -1i, -27812i), vec3<i32>(-54627i, 0i, -2147483647i)))));
    var var_3 = var_1;
    var var_4 = ~global2[_wgslsmith_index_u32(~81380u, 6u)] >> (36060u % 32u);
    var var_5 = 50983u;
    let var_6 = 23117u;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(abs(74461u), 1u, 67962u, ~((global2[_wgslsmith_index_u32(var_6, 6u)] << (56624u % 32u)) ^ countOneBits(u_input.a))), vec4<i32>(-1i) * -vec4<i32>(_wgslsmith_mod_i32(13563i, 20637i), func_4(Struct_2(false, vec2<bool>(false, global3[_wgslsmith_index_u32(var_3.c.x, 3u)]), vec3<u32>(u_input.a, var_1.c.x, var_0.x)), vec4<bool>(global3[_wgslsmith_index_u32(49201u, 3u)], var_3.b.x, true, global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 6u)], 3u)])).b, -63963i, ~(-1i)), -2147483647i, var_1.c.zz, vec3<u32>(var_0.x, _wgslsmith_mod_u32(var_1.c.x, ~14937u) << (8019u % 32u), 0u));
}


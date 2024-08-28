struct Struct_1 {
    a: i32,
    b: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
}

struct Struct_3 {
    a: bool,
    b: u32,
}

struct Struct_4 {
    a: u32,
    b: vec3<bool>,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<i32, 20>;

var<private> global2: array<vec4<i32>, 4>;

var<private> global3: array<Struct_3, 17> = array<Struct_3, 17>(Struct_3(true, 0u), Struct_3(true, 19930u), Struct_3(false, 1u), Struct_3(true, 0u), Struct_3(true, 4294967295u), Struct_3(false, 1u), Struct_3(false, 0u), Struct_3(true, 5163u), Struct_3(true, 4294967295u), Struct_3(true, 0u), Struct_3(false, 0u), Struct_3(false, 0u), Struct_3(false, 43298u), Struct_3(false, 1u), Struct_3(true, 45523u), Struct_3(true, 56353u), Struct_3(false, 0u));

var<private> global4: i32 = -1i;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_2(arg_0: Struct_2, arg_1: Struct_1) -> u32 {
    global3 = array<Struct_3, 17>();
    global3 = array<Struct_3, 17>();
    let var_0 = arg_0;
    var var_1 = arg_0;
    var var_2 = _wgslsmith_f_op_f32(-1404f + 505f);
    return ~_wgslsmith_mult_u32(31502u, min(25034u, _wgslsmith_dot_vec2_u32(var_0.a.b.yy & arg_0.a.b.yy, select(vec2<u32>(20217u, var_0.b), var_0.a.b.xz, vec2<bool>(false, true)))));
}

fn func_1(arg_0: Struct_3, arg_1: i32) -> vec3<u32> {
    global1 = array<i32, 20>();
    global0 = abs(0i);
    global2 = array<vec4<i32>, 4>();
    var var_0 = _wgslsmith_sub_vec3_i32(vec3<i32>(max(1i, _wgslsmith_dot_vec3_i32(firstTrailingBit(u_input.b), reverseBits(vec3<i32>(1i, u_input.a, -2147483647i)))), 1i, u_input.b.x), u_input.b);
    global2 = array<vec4<i32>, 4>();
    return vec3<u32>(4294967295u, arg_0.b << (~_wgslsmith_sub_u32(arg_0.b, 45700u) % 32u), arg_0.b) | vec3<u32>(arg_0.b, ~(~_wgslsmith_sub_u32(arg_0.b, 4294967295u)), arg_0.b >> (_wgslsmith_mult_u32(arg_0.b << (26561u % 32u), func_2(Struct_2(Struct_1(arg_1, vec3<u32>(4294967295u, arg_0.b, arg_0.b)), arg_0.b), Struct_1(var_0.x, vec3<u32>(arg_0.b, arg_0.b, 37338u)))) % 32u));
}

fn func_3(arg_0: bool, arg_1: Struct_4, arg_2: vec2<u32>) -> Struct_4 {
    global3 = array<Struct_3, 17>();
    var var_0 = _wgslsmith_mult_u32(arg_2.x, ~func_1(global3[_wgslsmith_index_u32(~1u, 17u)], _wgslsmith_clamp_i32(-2147483647i, _wgslsmith_add_i32(global1[_wgslsmith_index_u32(59664u, 20u)], arg_1.c.a), -10732i)).x);
    var var_1 = -2147483647i;
    var var_2 = arg_0;
    let var_3 = _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(select(_wgslsmith_mult_vec4_i32(~global2[_wgslsmith_index_u32(12275u, 4u)], -vec4<i32>(u_input.a, -75384i, arg_1.c.a, arg_1.c.a)), vec4<i32>(global1[_wgslsmith_index_u32(arg_1.a, 20u)], 19158i, 2147483647i, 20312i) & global2[_wgslsmith_index_u32(~47224u, 4u)], false), (vec4<i32>(arg_1.c.a, arg_1.c.a, u_input.a, 0i) | vec4<i32>(arg_1.c.a, global1[_wgslsmith_index_u32(arg_2.x, 20u)], -22366i, 0i)) & (-global2[_wgslsmith_index_u32(arg_1.c.b.x, 4u)] << (_wgslsmith_div_vec4_u32(vec4<u32>(arg_1.a, 28809u, 4710u, 32004u), vec4<u32>(11737u, arg_1.a, 82548u, arg_2.x)) % vec4<u32>(32u)))), -(~vec4<i32>(-55369i, global1[_wgslsmith_index_u32(56017u, 20u)], -1i ^ u_input.a, max(-31300i, arg_1.c.a))));
    return Struct_4(24036u, arg_1.b, Struct_1(-(~arg_1.c.a), ~func_1(global3[_wgslsmith_index_u32(arg_2.x, 17u)], u_input.a) ^ arg_1.c.b));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_3(true, Struct_4(78307u, select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(all(vec4<bool>(false, false, false, true)), true, any(vec4<bool>(false, true, true, false)))), Struct_1(u_input.b.x, func_1(global3[_wgslsmith_index_u32(0u, 17u)], -u_input.a))), ~reverseBits(~(~vec2<u32>(52033u, 1u))));
    var var_1 = firstTrailingBit(~min(_wgslsmith_clamp_vec4_u32(~vec4<u32>(var_0.a, 4294967295u, var_0.a, 26016u), _wgslsmith_mult_vec4_u32(vec4<u32>(0u, 71734u, 43870u, 70931u), vec4<u32>(4294967295u, 1u, var_0.c.b.x, 1u)), ~vec4<u32>(var_0.a, 6096u, var_0.a, var_0.c.b.x)), max(~vec4<u32>(var_0.a, var_0.c.b.x, var_0.c.b.x, 0u), vec4<u32>(4294967295u, 1u, var_0.c.b.x, 69126u))));
    let var_2 = _wgslsmith_mult_vec2_u32(var_1.zy, ~abs(var_0.c.b.zx));
    var var_3 = Struct_2(func_3(all(var_0.b) & all(vec3<bool>(false, var_0.b.x, var_0.b.x)), Struct_4(1u, select(select(vec3<bool>(true, false, false), vec3<bool>(var_0.b.x, var_0.b.x, true), var_0.b.x), !vec3<bool>(false, false, var_0.b.x), false), func_3(all(var_0.b), Struct_4(38569u, vec3<bool>(var_0.b.x, false, var_0.b.x), var_0.c), func_3(var_0.b.x, Struct_4(4294967295u, vec3<bool>(var_0.b.x, true, true), var_0.c), var_1.yz).c.b.yx).c), countOneBits(var_1.xz)).c, 67561u);
    global1 = array<i32, 20>();
    global3 = array<Struct_3, 17>();
    let var_4 = any(!func_3(var_0.b.x, func_3(true, func_3(false, Struct_4(4294967295u, vec3<bool>(false, var_0.b.x, false), var_3.a), vec2<u32>(116070u, var_2.x)), ~var_2), var_3.a.b.zx).b.yy);
    let var_5 = _wgslsmith_f_op_f32(sign(-187f));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec2_i32(u_input.b.zy, vec2<i32>(-1i, 1i)));
}


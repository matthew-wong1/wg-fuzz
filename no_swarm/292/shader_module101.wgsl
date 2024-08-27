struct Struct_1 {
    a: i32,
    b: i32,
    c: u32,
    d: vec4<f32>,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
    d: i32,
}

struct Struct_3 {
    a: vec3<i32>,
    b: vec2<bool>,
}

struct Struct_4 {
    a: bool,
    b: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec3<u32>,
    d: vec3<i32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 9>;

var<private> global1: array<Struct_2, 3>;

var<private> global2: array<bool, 5> = array<bool, 5>(false, true, true, false, true);

var<private> global3: u32 = 4294967295u;

var<private> global4: vec3<i32>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_2(arg_0: Struct_4, arg_1: vec4<i32>, arg_2: vec3<u32>, arg_3: f32) -> u32 {
    return arg_2.x;
}

fn func_3(arg_0: vec3<bool>) -> f32 {
    let var_0 = vec2<i32>(_wgslsmith_div_i32(global4.x, u_input.b), global4.x);
    global1 = array<Struct_2, 3>();
    global0 = array<bool, 9>();
    global1 = array<Struct_2, 3>();
    var var_1 = Struct_4(arg_0.x, -_wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(global4.x, 57613i, var_0.x) << (vec3<u32>(29610u, 0u, 1u) % vec3<u32>(32u)), _wgslsmith_mult_vec3_i32(u_input.a, vec3<i32>(2147483647i, 18257i, -2147483647i))), -46084i));
    return -502f;
}

fn func_1(arg_0: i32, arg_1: i32) -> i32 {
    global4 = _wgslsmith_clamp_vec3_i32(~max(vec3<i32>(32172i, global4.x, arg_1), vec3<i32>(30611i, 29407i, max(arg_0, -2006i))), ~vec3<i32>(1i, min(arg_0 & global4.x, _wgslsmith_mod_i32(u_input.a.x, 2147483647i)), 1i), _wgslsmith_div_vec3_i32(-u_input.a << (~vec3<u32>(0u, 4294967295u, 27087u) % vec3<u32>(32u)), firstLeadingBit(vec3<i32>(arg_0, _wgslsmith_add_i32(arg_1, 2147483647i), _wgslsmith_mult_i32(global4.x, u_input.a.x)))));
    var var_0 = _wgslsmith_sub_vec3_u32(_wgslsmith_div_vec3_u32(~vec3<u32>(1u, 1u, 1u), ~vec3<u32>(70162u, 33158u, 49000u)), reverseBits(_wgslsmith_mod_vec3_u32(~vec3<u32>(4294967295u, 6191u, 6612u), vec3<u32>(1u, 1u, 1u)))) >> (~_wgslsmith_mult_vec3_u32(~vec3<u32>(1u, 1u, 1u), vec3<u32>(~4294967295u, min(67625u, 1u), func_2(Struct_4(global2[_wgslsmith_index_u32(4294967295u, 5u)], arg_0), vec4<i32>(global4.x, -63905i, global4.x, 55172i), vec3<u32>(4294967295u, 22964u, 56690u), -136f))) % vec3<u32>(32u));
    global2 = array<bool, 5>();
    var var_1 = 55195u;
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(161f + _wgslsmith_f_op_f32(func_3(!vec3<bool>(global2[_wgslsmith_index_u32(var_0.x, 5u)], true, true)))))) + _wgslsmith_f_op_f32(abs(-796f)));
    return 2147483647i;
}

@compute
@workgroup_size(1)
fn main() {
    global4 = u_input.a | (~vec3<i32>(abs(0i), _wgslsmith_sub_i32(-1i, u_input.b), func_1(1i, global4.x)) ^ max(_wgslsmith_mod_vec3_i32(vec3<i32>(75728i, -50950i, -20533i) & vec3<i32>(2147483647i, -1i, global4.x), select(vec3<i32>(global4.x, global4.x, 23357i), u_input.a, global2[_wgslsmith_index_u32(2804u, 5u)])), vec3<i32>(2147483647i, ~global4.x, _wgslsmith_mult_i32(12477i, u_input.a.x))));
    let var_0 = Struct_1(u_input.a.x, global4.x, 19784u, vec4<f32>(-160f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -483f)), _wgslsmith_f_op_f32(-637f - _wgslsmith_f_op_f32(trunc(1156f)))), _wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(f32(-1f) * -648f)), 2548f), -1828i);
    global3 = reverseBits(1u);
    let var_1 = Struct_4(any(vec4<bool>(true, all(select(vec2<bool>(global0[_wgslsmith_index_u32(var_0.c, 9u)], true), vec2<bool>(global2[_wgslsmith_index_u32(var_0.c, 5u)], true), false)), !(global2[_wgslsmith_index_u32(var_0.c, 5u)] || global0[_wgslsmith_index_u32(14732u, 9u)]), !(-36520i >= u_input.b))), -(~_wgslsmith_add_i32(-75518i | global4.x, u_input.a.x >> (4294967295u % 32u))));
    var var_2 = ~4294967295u;
    let var_3 = select(vec3<bool>(all(select(vec2<bool>(global0[_wgslsmith_index_u32(12424u, 9u)], global0[_wgslsmith_index_u32(73729u, 9u)]), vec2<bool>(global2[_wgslsmith_index_u32(0u, 5u)], global0[_wgslsmith_index_u32(49573u, 9u)]), true)) || true, any(vec4<bool>(false, var_1.a, global0[_wgslsmith_index_u32(~var_0.c, 9u)], !global0[_wgslsmith_index_u32(var_0.c, 9u)])), !select(true, true, var_0.d.x > var_0.d.x)), select(select(select(vec3<bool>(false, global2[_wgslsmith_index_u32(var_0.c, 5u)], global2[_wgslsmith_index_u32(var_0.c, 5u)]), select(vec3<bool>(global0[_wgslsmith_index_u32(0u, 9u)], var_1.a, global0[_wgslsmith_index_u32(var_0.c, 9u)]), vec3<bool>(true, global0[_wgslsmith_index_u32(var_0.c, 9u)], false), global2[_wgslsmith_index_u32(var_0.c, 5u)]), select(vec3<bool>(global2[_wgslsmith_index_u32(var_0.c, 5u)], global2[_wgslsmith_index_u32(var_0.c, 5u)], true), vec3<bool>(global2[_wgslsmith_index_u32(var_0.c, 5u)], global2[_wgslsmith_index_u32(38615u, 5u)], global2[_wgslsmith_index_u32(4294967295u, 5u)]), var_1.a)), !vec3<bool>(true, true, var_1.a), select(vec3<bool>(var_1.a, var_1.a, true), !vec3<bool>(var_1.a, false, var_1.a), vec3<bool>(var_1.a, var_1.a, true))), select(select(select(vec3<bool>(false, global0[_wgslsmith_index_u32(1u, 9u)], global2[_wgslsmith_index_u32(81886u, 5u)]), vec3<bool>(global0[_wgslsmith_index_u32(0u, 9u)], var_1.a, var_1.a), vec3<bool>(true, false, true)), !vec3<bool>(var_1.a, global2[_wgslsmith_index_u32(1u, 5u)], global0[_wgslsmith_index_u32(0u, 9u)]), select(vec3<bool>(false, global0[_wgslsmith_index_u32(var_0.c, 9u)], true), vec3<bool>(true, false, var_1.a), global0[_wgslsmith_index_u32(var_0.c, 9u)])), !(!vec3<bool>(global2[_wgslsmith_index_u32(0u, 5u)], true, false)), vec3<bool>(global0[_wgslsmith_index_u32(var_0.c, 9u)], any(vec4<bool>(true, true, var_1.a, false)), true)), select(!(!vec3<bool>(false, var_1.a, true)), vec3<bool>(var_0.d.x >= var_0.d.x, var_1.a, false), select(!vec3<bool>(global2[_wgslsmith_index_u32(var_0.c, 5u)], true, true), vec3<bool>(true, global2[_wgslsmith_index_u32(29281u, 5u)], global2[_wgslsmith_index_u32(var_0.c, 5u)]), true))), vec3<bool>(!var_1.a, true, all(vec3<bool>(!global2[_wgslsmith_index_u32(7908u, 5u)], true, global0[_wgslsmith_index_u32(1u, 9u)] && false))));
    var var_4 = var_0;
    var var_5 = vec2<u32>(min(~(~_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.c, 4294967295u, 0u), vec3<u32>(46397u, var_4.c, 3055u))), ~var_0.c), var_0.c);
    global0 = array<bool, 9>();
    let x = u_input.a;
    s_output = StorageBuffer(745f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_4.d.x)))) * var_0.d.x), ~abs(~vec3<u32>(var_0.c, var_5.x, var_0.c)), min(max(abs(u_input.a), u_input.a), vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(var_1.b, -1i, var_1.b, 1i), vec4<i32>(37816i, 2147483647i, var_1.b, -53895i)), ~(-16863i), -var_4.b)) & u_input.a, global4.xx);
}


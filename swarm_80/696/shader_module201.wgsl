struct Struct_1 {
    a: vec3<bool>,
    b: vec3<u32>,
    c: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: vec4<bool>,
    d: u32,
}

struct Struct_3 {
    a: vec4<f32>,
    b: vec4<bool>,
    c: Struct_1,
    d: vec3<u32>,
    e: vec4<u32>,
}

struct Struct_4 {
    a: vec2<bool>,
    b: i32,
    c: vec4<bool>,
    d: vec4<f32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 30> = array<bool, 30>(true, true, false, false, false, false, false, false, true, true, false, false, false, true, true, true, true, true, false, true, false, false, false, false, true, true, true, false, true, true);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_2() -> bool {
    global0 = array<bool, 30>();
    let var_0 = _wgslsmith_f_op_f32(abs(-1000f));
    global0 = array<bool, 30>();
    global0 = array<bool, 30>();
    return !(!any(select(vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 30u)], true, global0[_wgslsmith_index_u32(2205u, 30u)]), !vec3<bool>(false, global0[_wgslsmith_index_u32(1u, 30u)], false), global0[_wgslsmith_index_u32(1u, 30u)])));
}

fn func_3(arg_0: Struct_2, arg_1: vec3<f32>) -> bool {
    global0 = array<bool, 30>();
    let var_0 = Struct_2(arg_0.a, max(reverseBits(_wgslsmith_add_u32(arg_0.b, _wgslsmith_div_u32(arg_0.a.b.x, 0u))), arg_0.a.b.x), vec4<bool>(abs(arg_0.d) < 0u, global0[_wgslsmith_index_u32(~22614u, 30u)] && all(select(vec3<bool>(global0[_wgslsmith_index_u32(1u, 30u)], true, true), vec3<bool>(false, global0[_wgslsmith_index_u32(28427u, 30u)], arg_0.c.x), arg_0.c.x)), false, !(!global0[_wgslsmith_index_u32(1u, 30u)] || func_2())), arg_0.d);
    var var_1 = 54727u;
    global0 = array<bool, 30>();
    var var_2 = Struct_1(arg_0.a.a, ~select(vec3<u32>(abs(arg_0.b), var_0.a.b.x, arg_0.a.b.x), vec3<u32>(var_0.a.b.x, var_0.b, 47562u), _wgslsmith_f_op_f32(f32(-1f) * -387f) > arg_1.x), _wgslsmith_div_vec4_i32(~(-_wgslsmith_div_vec4_i32(vec4<i32>(-17284i, arg_0.a.c.x, var_0.a.c.x, var_0.a.c.x), var_0.a.c)), ~(-vec4<i32>(arg_0.a.c.x, 0i, -11821i, 42404i))));
    return -(~abs(1i)) == u_input.a.x;
}

fn func_1() -> u32 {
    global0 = array<bool, 30>();
    var var_0 = vec4<i32>(-(u_input.a.x << (1u % 32u)), countOneBits(u_input.a.x), _wgslsmith_dot_vec3_i32(abs(vec3<i32>(-2147483647i, u_input.a.x, 44848i) >> (vec3<u32>(4294967295u, 44815u, 18750u) % vec3<u32>(32u))), vec3<i32>(_wgslsmith_sub_i32(u_input.a.x, 1i), u_input.a.x, 0i)) ^ u_input.a.x, 39809i);
    var_0 = select(vec4<i32>(-51682i, abs(_wgslsmith_mult_i32(u_input.a.x, var_0.x)), -_wgslsmith_sub_i32(-31033i >> (0u % 32u), -2147483647i), _wgslsmith_div_i32(min(i32(-1i) * -2147483647i, 2147483647i), -2579i)), ~(~(~(~vec4<i32>(-33228i, -2147483647i, 29643i, 1i)))), !(func_2() & func_3(Struct_2(Struct_1(vec3<bool>(true, false, false), vec3<u32>(29732u, 16092u, 16160u), vec4<i32>(-36265i, u_input.a.x, 18806i, var_0.x)), 4294967295u, vec4<bool>(global0[_wgslsmith_index_u32(1u, 30u)], false, false, true), 0u), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1922f, 1000f, -1000f)))));
    let var_1 = 9001u >> ((21246u >> (_wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(1u, 0u, 10838u)), reverseBits(vec3<u32>(4294967295u, 1u, 4294967295u))) % 32u)) % 32u);
    var_0 = vec4<i32>(27678i, -(~(firstLeadingBit(-26107i) << (var_1 % 32u))), firstTrailingBit(firstTrailingBit(17464i)), reverseBits(min(-u_input.a.x ^ min(-16321i, var_0.x), -1i)));
    return _wgslsmith_add_u32(select(var_1, 4294967295u, global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(~18383u, firstTrailingBit(_wgslsmith_clamp_u32(var_1, 1022u, 4294967295u))), 30u)]), 28391u);
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_2, arg_2: bool) -> Struct_1 {
    global0 = array<bool, 30>();
    var var_0 = abs(~abs(~arg_1.a.c ^ (vec4<i32>(-79299i, u_input.a.x, u_input.a.x, -25282i) ^ arg_1.a.c)));
    let var_1 = Struct_1(select(arg_1.a.a, arg_1.c.wwy, global0[_wgslsmith_index_u32(max(arg_1.b, 4294967295u), 30u)]), arg_0, firstTrailingBit(vec4<i32>(firstTrailingBit(2147483647i), arg_1.a.c.x << (arg_1.a.b.x % 32u), -33881i << (arg_0.x % 32u), 1i) << (~(~vec4<u32>(arg_0.x, arg_0.x, arg_1.d, 946u)) % vec4<u32>(32u))));
    var_0 = arg_1.a.c;
    global0 = array<bool, 30>();
    return Struct_1(vec3<bool>(!global0[_wgslsmith_index_u32(1u, 30u)], arg_2, true), ~firstLeadingBit(vec3<u32>(~124878u, _wgslsmith_dot_vec4_u32(vec4<u32>(var_1.b.x, 1u, 3031u, 35344u), vec4<u32>(var_1.b.x, arg_0.x, var_1.b.x, 72219u)), _wgslsmith_mult_u32(arg_1.d, 0u))), arg_1.a.c);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 30>();
    let var_0 = _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a.x, _wgslsmith_mod_i32(u_input.a.x, 55118i)), (~u_input.a & u_input.a) >> ((countOneBits(~vec2<u32>(19780u, 0u)) >> (_wgslsmith_clamp_vec2_u32(~vec2<u32>(4294967295u, 10170u), vec2<u32>(44704u, 4294967295u), max(vec2<u32>(45035u, 4294967295u), vec2<u32>(4294967295u, 4294967295u))) % vec2<u32>(32u))) % vec2<u32>(32u)));
    let var_1 = func_4(vec3<u32>(_wgslsmith_sub_u32(func_1(), _wgslsmith_sub_u32(~28618u, _wgslsmith_dot_vec3_u32(vec3<u32>(59076u, 0u, 0u), vec3<u32>(12154u, 1u, 1u)))), ~max(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 4294967295u), vec2<u32>(0u, 28706u)), 1u), reverseBits(_wgslsmith_dot_vec2_u32(max(vec2<u32>(85515u, 1u), vec2<u32>(20552u, 0u)), vec2<u32>(74027u, 25820u)))), Struct_2(Struct_1(vec3<bool>(!global0[_wgslsmith_index_u32(0u, 30u)], false, global0[_wgslsmith_index_u32(1u, 30u)]), vec3<u32>(firstTrailingBit(51465u), ~0u, 8789u), ~select(vec4<i32>(2147483647i, -44940i, 44164i, 15203i), vec4<i32>(var_0.x, var_0.x, -21143i, 0i), vec4<bool>(false, global0[_wgslsmith_index_u32(1u, 30u)], global0[_wgslsmith_index_u32(25033u, 30u)], global0[_wgslsmith_index_u32(28551u, 30u)]))), 0u, vec4<bool>(false, !all(vec3<bool>(false, false, global0[_wgslsmith_index_u32(23402u, 30u)])), true, true), 19401u), false);
    global0 = array<bool, 30>();
    global0 = array<bool, 30>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(611f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-499f - 142f)))), -404f, var_1.b);
}


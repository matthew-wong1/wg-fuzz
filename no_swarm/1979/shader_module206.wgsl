struct Struct_1 {
    a: bool,
    b: vec2<bool>,
    c: bool,
    d: vec2<bool>,
    e: vec3<i32>,
}

struct Struct_2 {
    a: f32,
    b: f32,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
}

struct Struct_4 {
    a: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(1u, 0u, 1u, 4294967295u);

var<private> global1: array<u32, 18>;

var<private> global2: Struct_3;

var<private> global3: Struct_1;

var<private> global4: vec2<bool> = vec2<bool>(false, false);

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<i32>) -> vec4<u32> {
    global2 = Struct_3(u_input.b, Struct_2(global2.b.a, global2.b.a));
    let var_0 = ~(4294967295u << (firstTrailingBit(1u) % 32u)) ^ _wgslsmith_sub_u32(global2.a, 4294967295u);
    let var_1 = abs(_wgslsmith_mod_i32(arg_0.x, u_input.c));
    global3 = Struct_1(global3.e.x <= -2147483647i, vec2<bool>(true, true), true, vec2<bool>(!(!all(global3.d)), true), vec3<i32>(~global3.e.x >> (_wgslsmith_clamp_u32(max(global1[_wgslsmith_index_u32(0u, 18u)], global2.a), select(global0.x, 1u, global4.x), var_0) % 32u), ~(-2147483647i ^ _wgslsmith_dot_vec3_i32(vec3<i32>(1i, 1i, 1i), vec3<i32>(global3.e.x, 2147483647i, u_input.c))), -1i));
    return vec4<u32>(~_wgslsmith_sub_u32(firstTrailingBit(~global2.a), ~var_0), global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(0u, 18u)], 18u)], _wgslsmith_sub_u32(u_input.b, abs(global0.x ^ min(var_0, u_input.b))), u_input.b);
}

fn func_2(arg_0: bool, arg_1: Struct_2) -> u32 {
    let var_0 = arg_1;
    let var_1 = arg_1;
    var var_2 = Struct_3(_wgslsmith_dot_vec4_u32(~vec4<u32>(~global1[_wgslsmith_index_u32(9024u, 18u)], ~global1[_wgslsmith_index_u32(22575u, 18u)], firstTrailingBit(61835u), global0.x), vec4<u32>(global1[_wgslsmith_index_u32(global0.x, 18u)], 15907u, global2.a, _wgslsmith_dot_vec4_u32(func_3(global3.e), ~vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 18u)], 18u)], global0.x, global1[_wgslsmith_index_u32(u_input.b, 18u)], global2.a)))), var_1);
    let var_3 = Struct_1(global3.d.x, vec2<bool>(false, !any(vec2<bool>(global3.c, false))), arg_0, vec2<bool>(~1i == _wgslsmith_sub_i32(0i, u_input.a.x & 1i), true == (_wgslsmith_dot_vec3_i32(vec3<i32>(26908i, u_input.a.x, u_input.a.x), vec3<i32>(-2147483647i, global3.e.x, global3.e.x)) <= 1i)), vec3<i32>(~1i, global3.e.x, 2147483647i));
    global1 = array<u32, 18>();
    return ~54612u;
}

fn func_1() -> u32 {
    let var_0 = _wgslsmith_sub_vec4_i32(~(-reverseBits(firstTrailingBit(vec4<i32>(2147483647i, 2147483647i, global3.e.x, 0i)))), ~select(vec4<i32>(global3.e.x, _wgslsmith_add_i32(global3.e.x, 1i), global3.e.x, reverseBits(-1i)), _wgslsmith_mult_vec4_i32(countOneBits(vec4<i32>(-2147483647i, 1i, -8927i, 43016i)), vec4<i32>(-73514i, 0i, -5338i, -23387i) >> (vec4<u32>(4294967295u, 1271u, 1u, global2.a) % vec4<u32>(32u))), false));
    let var_1 = countOneBits(_wgslsmith_add_i32(var_0.x, _wgslsmith_div_i32(abs(u_input.d), _wgslsmith_clamp_i32(u_input.c, global3.e.x, global3.e.x)))) >> (_wgslsmith_clamp_u32(reverseBits(_wgslsmith_mult_u32(global0.x, u_input.b & global0.x)), max(firstLeadingBit(_wgslsmith_add_u32(4294967295u, global0.x)), _wgslsmith_mod_u32(~4294967295u, u_input.b | 1590u)), global2.a) % 32u);
    global0 = select(~vec4<u32>(~firstLeadingBit(1u), func_2(true, Struct_2(global2.b.b, global2.b.a)) ^ ~4294967295u, 0u, max(~1u, max(1u, 46757u))), reverseBits(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.b, 12249u, ~18386u, ~14505u), ~(~vec4<u32>(1u, 1u, global1[_wgslsmith_index_u32(u_input.b, 18u)], global0.x)))), !(!global3.a));
    return _wgslsmith_mod_u32(~select(0u << (global2.a % 32u), ~global0.x, all(vec3<bool>(true, global4.x, global4.x))), global1[_wgslsmith_index_u32(min(1u, global0.x ^ min(global1[_wgslsmith_index_u32(11555u, 18u)], 0u)), 18u)]) | max(_wgslsmith_dot_vec2_u32(global0.yz & vec2<u32>(68670u, 4294967295u), global0.wx) ^ 1u, _wgslsmith_div_u32(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(21182u, u_input.b, 0u, 48093u), vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(6975u, 18u)], 18u)], 4294967295u, 74333u, 4503u)) & global1[_wgslsmith_index_u32(_wgslsmith_add_u32(global0.x, 21030u), 18u)], 18u)], min(_wgslsmith_dot_vec3_u32(vec3<u32>(global2.a, global1[_wgslsmith_index_u32(1u, 18u)], 3247u), vec3<u32>(u_input.b, 0u, global1[_wgslsmith_index_u32(59386u, 18u)])), global1[_wgslsmith_index_u32(4294967295u, 18u)] | 108977u)));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = Struct_1(global3.a, select(select(vec2<bool>(any(vec4<bool>(global4.x, true, false, false)), !global3.d.x), vec2<bool>(global3.c, global4.x), any(vec4<bool>(false, false, global4.x, false))), select(!select(vec2<bool>(true, global3.b.x), global3.b, global4.x), !select(vec2<bool>(global4.x, global4.x), vec2<bool>(true, global4.x), global3.a), select(global3.b, select(global3.b, global3.b, global3.b.x), global3.b.x)), global3.b.x), (-46754i >> (func_1() % 32u)) == 20125i, select(global3.b, vec2<bool>(u_input.d < ~8895i, !global3.b.x), !global3.b), ~_wgslsmith_mult_vec3_i32(-min(vec3<i32>(u_input.c, u_input.a.x, global3.e.x), vec3<i32>(0i, global3.e.x, 26959i)), reverseBits(-global3.e)));
    global4 = !select(select(select(global3.d, global3.b, global4.x || global4.x), !vec2<bool>(true, global4.x), global4.x), select(!select(global3.d, vec2<bool>(true, global3.c), global4.x), !vec2<bool>(global3.c, false), global4.x), select(select(vec2<bool>(true, true), !global3.b, true), !vec2<bool>(true, global3.b.x), vec2<bool>(global4.x, true)));
    let var_0 = countOneBits(global3.e.x ^ global3.e.x);
    let var_1 = global2.b;
    global4 = select(global3.d, select(vec2<bool>(true, !(!global4.x)), vec2<bool>(true, !(global3.e.x < var_0)), select(all(!vec3<bool>(global3.c, global4.x, global4.x)), (global4.x || global3.d.x) || true, global4.x)), global4.x);
    let x = u_input.a;
    s_output = StorageBuffer(global3.e.yz, -abs(vec4<i32>(1i, var_0, 0i, 1i)), 682f, ~(~4294967295u));
}


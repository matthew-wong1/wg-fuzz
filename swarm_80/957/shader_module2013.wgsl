struct Struct_1 {
    a: i32,
    b: u32,
}

struct Struct_2 {
    a: vec4<i32>,
}

struct Struct_3 {
    a: f32,
    b: u32,
    c: i32,
    d: i32,
}

struct Struct_4 {
    a: i32,
    b: Struct_3,
}

struct Struct_5 {
    a: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -1580f;

var<private> global1: array<Struct_3, 9>;

var<private> global2: bool = true;

var<private> global3: array<bool, 7>;

var<private> global4: u32 = 5740u;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_2(arg_0: i32, arg_1: i32, arg_2: Struct_2, arg_3: i32) -> u32 {
    let var_0 = Struct_3(388f, _wgslsmith_clamp_u32(~1u, select(u_input.a, ~1u, global3[_wgslsmith_index_u32(0u, 7u)] | global3[_wgslsmith_index_u32(u_input.b, 7u)]) >> (u_input.a % 32u), u_input.b), abs(u_input.c), reverseBits(-2147483647i));
    global4 = var_0.b;
    return u_input.b;
}

fn func_3() -> i32 {
    global2 = all(select(select(select(select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), global3[_wgslsmith_index_u32(59233u, 7u)]), select(vec3<bool>(global3[_wgslsmith_index_u32(5025u, 7u)], global3[_wgslsmith_index_u32(16663u, 7u)], global3[_wgslsmith_index_u32(u_input.b, 7u)]), vec3<bool>(false, true, false), global3[_wgslsmith_index_u32(u_input.a, 7u)]), vec3<bool>(true, false, false)), vec3<bool>(any(vec2<bool>(global3[_wgslsmith_index_u32(1u, 7u)], global3[_wgslsmith_index_u32(27235u, 7u)])), any(vec4<bool>(global3[_wgslsmith_index_u32(45807u, 7u)], global3[_wgslsmith_index_u32(u_input.b, 7u)], global3[_wgslsmith_index_u32(28205u, 7u)], global3[_wgslsmith_index_u32(u_input.a, 7u)])), global3[_wgslsmith_index_u32(1u, 7u)]), all(vec3<bool>(true, true, false))), vec3<bool>(global3[_wgslsmith_index_u32(u_input.b, 7u)], false, global3[_wgslsmith_index_u32(_wgslsmith_add_u32(~30004u, 16001u), 7u)]), select(vec3<bool>(true, global3[_wgslsmith_index_u32(43089u ^ u_input.b, 7u)], any(vec3<bool>(global3[_wgslsmith_index_u32(u_input.a, 7u)], global3[_wgslsmith_index_u32(u_input.b, 7u)], false))), !(!vec3<bool>(global3[_wgslsmith_index_u32(0u, 7u)], global3[_wgslsmith_index_u32(u_input.a, 7u)], false)), !(!vec3<bool>(global3[_wgslsmith_index_u32(9443u, 7u)], true, global3[_wgslsmith_index_u32(u_input.a, 7u)])))));
    var var_0 = Struct_2(_wgslsmith_clamp_vec4_i32(~abs(vec4<i32>(-1i, -7916i, 38743i, u_input.c)), -(vec4<i32>(0i, u_input.c, -41349i, u_input.c) & vec4<i32>(u_input.c, 0i, 2147483647i, -31457i)), abs(vec4<i32>(u_input.c, 2147483647i, u_input.c, u_input.c)) & _wgslsmith_mod_vec4_i32(vec4<i32>(0i, 2147483647i, -2147483647i, u_input.c), vec4<i32>(-21268i, u_input.c, u_input.c, u_input.c))) | vec4<i32>(select(_wgslsmith_sub_i32(u_input.c, -2147483647i), _wgslsmith_div_i32(-55133i, 9441i), global3[_wgslsmith_index_u32(u_input.b, 7u)] != global3[_wgslsmith_index_u32(u_input.b, 7u)]), abs(u_input.c) | u_input.c, -(~u_input.c), ~firstTrailingBit(u_input.c)));
    var var_1 = Struct_5(global1[_wgslsmith_index_u32(~(12214u & ~u_input.a), 9u)]);
    return var_0.a.x;
}

fn func_1() -> Struct_4 {
    global4 = ~abs(~_wgslsmith_mult_u32(func_2(-10110i, u_input.c, Struct_2(vec4<i32>(u_input.c, 0i, 0i, u_input.c)), u_input.c), _wgslsmith_clamp_u32(1u, 4294967295u, u_input.a)));
    var var_0 = Struct_2(_wgslsmith_div_vec4_i32(vec4<i32>(2147483647i, -max(u_input.c, 1i), _wgslsmith_add_i32(u_input.c & 44841i, func_3()), reverseBits(-u_input.c)), ~vec4<i32>(_wgslsmith_mod_i32(u_input.c, u_input.c), _wgslsmith_dot_vec2_i32(vec2<i32>(22247i, u_input.c), vec2<i32>(-2147483647i, u_input.c)), ~u_input.c, firstLeadingBit(u_input.c))));
    global3 = array<bool, 7>();
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1072f - _wgslsmith_f_op_f32(ceil(1553f)))) + -306f));
    var_1 = -738f;
    return Struct_4((reverseBits(u_input.c) ^ -_wgslsmith_dot_vec4_i32(var_0.a, vec4<i32>(0i, var_0.a.x, 2147483647i, var_0.a.x))) ^ -44331i, global1[_wgslsmith_index_u32(13252u, 9u)]);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = countOneBits(select(~((vec4<u32>(40467u, u_input.a, 67465u, 38410u) | vec4<u32>(u_input.a, u_input.b, u_input.b, 0u)) >> (vec4<u32>(41595u, 40762u, 0u, 0u) % vec4<u32>(32u))), ~(~(vec4<u32>(u_input.b, 687u, 94520u, 1u) ^ vec4<u32>(u_input.b, u_input.b, 75789u, 64674u))), !global3[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(3619u, u_input.a, 26459u), 7u)]));
    let var_1 = func_1();
    var var_2 = Struct_5(func_1().b);
    let var_3 = var_1.b;
    var var_4 = ~select(-(vec4<i32>(u_input.c, var_3.c, u_input.c, var_2.a.c) >> (vec4<u32>(1u, u_input.a, var_1.b.b, 4294967295u) % vec4<u32>(32u))), _wgslsmith_mult_vec4_i32(select(~vec4<i32>(var_3.d, u_input.c, 0i, var_1.b.d), ~vec4<i32>(0i, var_1.a, -44627i, -1i), false), vec4<i32>(-1i, abs(var_1.a), _wgslsmith_mult_i32(-2147483647i, 0i), _wgslsmith_dot_vec4_i32(vec4<i32>(var_3.c, var_2.a.d, var_1.a, 2147483647i), vec4<i32>(0i, -10095i, var_3.d, -12587i)))), vec4<bool>(!global3[_wgslsmith_index_u32(var_3.b, 7u)] == all(vec3<bool>(true, true, global3[_wgslsmith_index_u32(var_1.b.b, 7u)])), true, global3[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, var_2.a.b), vec2<u32>(45797u, var_2.a.b)), firstTrailingBit(4294967295u)), 7u)], false));
    var_0 = _wgslsmith_div_vec4_u32(~vec4<u32>(var_1.b.b, (18547u & var_3.b) & abs(7137u), ~(~var_0.x), _wgslsmith_clamp_u32(0u ^ var_2.a.b, 1u, ~var_3.b)), vec4<u32>(var_2.a.b, _wgslsmith_add_u32(1u, 1u), 13558u, 4294967295u));
    var_0 = ~vec4<u32>(26654u, ~1u, 13229u, 10183u);
    let var_5 = var_3.c;
    global4 = ~48229u;
    let x = u_input.a;
    s_output = StorageBuffer(-825f, var_2.a.b, vec3<i32>(u_input.c, -max(_wgslsmith_clamp_i32(2147483647i, u_input.c, 2147483647i), var_4.x), -reverseBits(11241i)));
}


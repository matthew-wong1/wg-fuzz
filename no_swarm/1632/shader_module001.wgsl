struct Struct_1 {
    a: i32,
    b: vec3<i32>,
    c: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 23> = array<i32, 23>(i32(-2147483648), 2147483647i, i32(-2147483648), 0i, 1i, 6087i, 0i, -1i, 41279i, 27500i, 0i, 12961i, i32(-2147483648), 1i, i32(-2147483648), 2147483647i, 16066i, -3706i, -18454i, i32(-2147483648), i32(-2147483648), i32(-2147483648), -1i);

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec4<bool>) -> u32 {
    let var_0 = ~_wgslsmith_mod_vec2_i32(select(~arg_2.b.xy, _wgslsmith_mult_vec2_i32(-vec2<i32>(global0[_wgslsmith_index_u32(0u, 23u)], arg_2.b.x), vec2<i32>(global0[_wgslsmith_index_u32(arg_0.c, 23u)], arg_1.a) >> (vec2<u32>(35370u, 0u) % vec2<u32>(32u))), arg_3.zx), abs(-(~vec2<i32>(-1i, arg_1.b.x))));
    var var_1 = -115f;
    global0 = array<i32, 23>();
    return (~arg_1.c & ~min(arg_0.c >> (arg_2.c % 32u), _wgslsmith_mult_u32(1u, 4294967295u))) << (reverseBits(1u) % 32u);
}

fn func_3(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: vec4<u32>, arg_3: vec3<bool>) -> i32 {
    let var_0 = Struct_1(10024i, vec3<i32>(-2147483647i, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(min(vec3<u32>(arg_0.c, arg_2.x, arg_0.c), arg_2.xzw), arg_1.xxw), 23u)], firstLeadingBit(firstLeadingBit(_wgslsmith_add_i32(global0[_wgslsmith_index_u32(arg_0.c, 23u)], global0[_wgslsmith_index_u32(50890u, 23u)])))), abs(firstTrailingBit(~min(11245u, arg_0.c))));
    let var_1 = ~arg_2.x;
    return 14016i;
}

fn func_1() -> vec4<i32> {
    var var_0 = abs(vec4<u32>(select(~40171u, firstLeadingBit(48819u), true) | 1u, _wgslsmith_div_u32(~reverseBits(1u), _wgslsmith_add_u32(0u, func_2(Struct_1(u_input.a.x, vec3<i32>(global0[_wgslsmith_index_u32(4294967295u, 23u)], global0[_wgslsmith_index_u32(0u, 23u)], global0[_wgslsmith_index_u32(41325u, 23u)]), 12637u), Struct_1(2147483647i, vec3<i32>(-20557i, global0[_wgslsmith_index_u32(34780u, 23u)], global0[_wgslsmith_index_u32(82627u, 23u)]), 6693u), Struct_1(global0[_wgslsmith_index_u32(79008u, 23u)], vec3<i32>(global0[_wgslsmith_index_u32(0u, 23u)], 25261i, -1i), 0u), vec4<bool>(true, false, false, false)))), abs(_wgslsmith_clamp_u32(~14915u, ~1u, ~1u)), ~0u));
    global0 = array<i32, 23>();
    var var_1 = Struct_1(u_input.a.x, -abs(vec3<i32>(-2147483647i, u_input.a.x, reverseBits(global0[_wgslsmith_index_u32(4294967295u, 23u)]))), 32139u);
    let var_2 = Struct_1(-2147483647i, vec3<i32>(_wgslsmith_add_i32(func_3(Struct_1(var_1.a, var_1.b, var_0.x), vec4<u32>(16305u, var_1.c, var_0.x, var_1.c), vec4<u32>(31108u, var_1.c, var_0.x, var_0.x) | vec4<u32>(var_0.x, var_0.x, 3519u, 33018u), vec3<bool>(true, true, true)), ~global0[_wgslsmith_index_u32(1u, 23u)]), func_3(Struct_1(0i, var_1.b, min(57461u, 31940u)), (vec4<u32>(14721u, 49535u, var_0.x, var_1.c) & vec4<u32>(4294967295u, 1u, 25379u, var_1.c)) >> (vec4<u32>(var_1.c, var_0.x, var_0.x, var_1.c) % vec4<u32>(32u)), ~_wgslsmith_sub_vec4_u32(vec4<u32>(var_0.x, var_0.x, 0u, 20980u), vec4<u32>(var_0.x, var_1.c, 79480u, 17227u)), !select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), true)), -1i), abs(~(~(var_1.c << (0u % 32u)))));
    var_1 = var_2;
    return vec4<i32>(1i, _wgslsmith_div_i32(1i, var_2.b.x), _wgslsmith_dot_vec4_i32(select(vec4<i32>(-1i, ~var_2.a, reverseBits(-63416i), -1i), _wgslsmith_div_vec4_i32(~vec4<i32>(-1i, var_2.b.x, var_1.b.x, global0[_wgslsmith_index_u32(62242u, 23u)]), vec4<i32>(global0[_wgslsmith_index_u32(1u, 23u)], -2147483647i, -10967i, var_2.b.x) >> (vec4<u32>(0u, var_0.x, var_0.x, 33383u) % vec4<u32>(32u))), 7647i >= _wgslsmith_dot_vec2_i32(u_input.a, u_input.a)), -vec4<i32>(u_input.a.x, var_2.a << (33140u % 32u), 1i, _wgslsmith_add_i32(0i, -2147483647i))), _wgslsmith_sub_i32(func_3(Struct_1(u_input.a.x, vec3<i32>(-68465i, global0[_wgslsmith_index_u32(var_0.x, 23u)], var_2.a), 1u), _wgslsmith_clamp_vec4_u32(~vec4<u32>(var_1.c, 4294967295u, var_2.c, var_1.c), abs(vec4<u32>(var_2.c, var_2.c, 26770u, var_0.x)), vec4<u32>(var_0.x, var_1.c, 1u, 62591u) >> (vec4<u32>(var_1.c, var_1.c, var_0.x, var_2.c) % vec4<u32>(32u))), ~(vec4<u32>(33712u, var_1.c, 44083u, 30783u) >> (vec4<u32>(var_0.x, var_1.c, 0u, var_1.c) % vec4<u32>(32u))), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), false))), func_3(var_2, ~(~vec4<u32>(var_0.x, 38490u, var_1.c, var_2.c)), select(~vec4<u32>(1u, var_1.c, var_0.x, 74298u), _wgslsmith_mult_vec4_u32(vec4<u32>(var_1.c, 0u, var_2.c, var_1.c), vec4<u32>(var_2.c, 4294967295u, var_0.x, 33014u)), true), !select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), false))));
}

fn func_4(arg_0: bool, arg_1: vec4<i32>, arg_2: vec2<f32>) -> vec3<i32> {
    var var_0 = false;
    var var_1 = _wgslsmith_dot_vec3_i32(arg_1.wzz, vec3<i32>(i32(-1i) * -_wgslsmith_mult_i32(-1i, arg_1.x), _wgslsmith_div_i32(_wgslsmith_clamp_i32(max(u_input.a.x, -1i), 0i, -47941i), _wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(u_input.a, u_input.a), ~6518i, max(44033i, 45328i))), min(firstTrailingBit(-84811i), func_1().x)));
    var var_2 = arg_1.yzy;
    var var_3 = 7403u;
    var_1 = var_2.x;
    return min(select(abs(-arg_1.xyw), arg_1.zyx, all(select(!vec2<bool>(arg_0, true), !vec2<bool>(arg_0, true), arg_0))), _wgslsmith_sub_vec3_i32(min(vec3<i32>(-1i) * -arg_1.xwz, arg_1.yzx), arg_1.zyx));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_mod_i32((i32(-1i) * -u_input.a.x) | (_wgslsmith_dot_vec4_i32(vec4<i32>(8607i, -2147483647i, u_input.a.x, 14904i), vec4<i32>(-98884i, global0[_wgslsmith_index_u32(0u, 23u)], u_input.a.x, -2147483647i)) >> ((21165u << (1u % 32u)) % 32u)), u_input.a.x), func_4(true, func_1(), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1010f, -1482f)))), func_2(Struct_1(global0[_wgslsmith_index_u32(4294967295u, 23u)], vec3<i32>(15275i, -u_input.a.x, reverseBits(2147483647i)), _wgslsmith_div_u32(~52464u, ~16957u)), Struct_1(-2666i, (vec3<i32>(global0[_wgslsmith_index_u32(36894u, 23u)], u_input.a.x, -2625i) << (vec3<u32>(1u, 4294967295u, 1u) % vec3<u32>(32u))) | _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a.x, -2147483647i, 1i), vec3<i32>(global0[_wgslsmith_index_u32(4294967295u, 23u)], global0[_wgslsmith_index_u32(36376u, 23u)], global0[_wgslsmith_index_u32(4294967295u, 23u)])), 24889u), Struct_1(firstLeadingBit(i32(-1i) * -4519i), _wgslsmith_add_vec3_i32(vec3<i32>(-1i, u_input.a.x, global0[_wgslsmith_index_u32(1u, 23u)]), vec3<i32>(-511i, global0[_wgslsmith_index_u32(29780u, 23u)], u_input.a.x)) >> (select(vec3<u32>(52500u, 152293u, 0u), vec3<u32>(3628u, 1432u, 40059u), false) % vec3<u32>(32u)), 1u), vec4<bool>(all(vec4<bool>(false, true, false, true)), true, !all(vec4<bool>(true, true, true, true)), true)));
    let var_1 = -(17950i ^ _wgslsmith_mod_i32(reverseBits(~var_0.a), u_input.a.x));
    var var_2 = var_0;
    let var_3 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(-173f, _wgslsmith_f_op_f32(392f - -1000f)), -953f, 560f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(626f, 258f)) * _wgslsmith_f_op_f32(f32(-1f) * -577f)), _wgslsmith_f_op_f32(trunc(-487f))))));
    var var_4 = _wgslsmith_mult_u32(1u, 1u) > select(~(0u & _wgslsmith_div_u32(var_2.c, var_0.c)), var_0.c, any(!select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, false), true)));
    let var_5 = var_0.b;
    var var_6 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-424f * 401f), var_3.x)), _wgslsmith_f_op_f32(f32(-1f) * -899f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.x + var_3.x) + _wgslsmith_f_op_f32(max(-579f, 158f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.x) - _wgslsmith_f_op_f32(-var_3.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(530f - 382f), -507f, true)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(1u, 61476u) ^ _wgslsmith_sub_vec2_u32(_wgslsmith_add_vec2_u32(reverseBits(vec2<u32>(0u, var_0.c)), firstLeadingBit(vec2<u32>(71944u, var_0.c))), _wgslsmith_div_vec2_u32(vec2<u32>(38942u, var_2.c) | vec2<u32>(var_2.c, 100553u), countOneBits(vec2<u32>(4294967295u, 61422u)))), _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, _wgslsmith_mult_i32(-2147483647i, func_4(false, vec4<i32>(var_2.a, -1i, -2147483647i, 4494i), var_6.xz).x), var_2.a, -19922i), vec4<i32>(-_wgslsmith_div_i32(-42762i, 33299i), -u_input.a.x, 9611i, u_input.a.x)));
}


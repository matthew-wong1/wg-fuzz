struct Struct_1 {
    a: vec3<u32>,
    b: i32,
    c: f32,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: i32,
    b: vec4<f32>,
    c: vec3<bool>,
    d: vec4<u32>,
}

struct Struct_4 {
    a: u32,
    b: Struct_1,
    c: f32,
}

struct Struct_5 {
    a: f32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: f32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 17> = array<i32, 17>(0i, -46332i, -7602i, 77447i, 21654i, 0i, 2304i, -1i, 26992i, -199i, 0i, -1847i, -14273i, -6170i, -1i, -23783i, -10077i);

var<private> global1: vec3<bool> = vec3<bool>(true, true, true);

var<private> global2: vec3<f32>;

var<private> global3: array<vec3<u32>, 6> = array<vec3<u32>, 6>(vec3<u32>(1u, 4294967295u, 0u), vec3<u32>(20124u, 4294967295u, 0u), vec3<u32>(29733u, 0u, 4294967295u), vec3<u32>(1u, 4294967295u, 0u), vec3<u32>(32257u, 22409u, 4294967295u), vec3<u32>(0u, 1u, 0u));

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> f32 {
    global3 = array<vec3<u32>, 6>();
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.x) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.x - global2.x) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2.x, global2.x)))));
}

fn func_2() -> vec4<bool> {
    global3 = array<vec3<u32>, 6>();
    var var_0 = global2.x;
    var var_1 = Struct_3(-11294i, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-467f, global2.x, global2.x, -351f)) * _wgslsmith_div_vec4_f32(vec4<f32>(202f, global2.x, -433f, -134f), vec4<f32>(2127f, 1008f, global2.x, global2.x))) - vec4<f32>(580f, _wgslsmith_f_op_f32(f32(-1f) * -445f), _wgslsmith_f_op_f32(func_3()), global2.x))), select(vec3<bool>(_wgslsmith_f_op_f32(global2.x - global2.x) >= global2.x, global1.x || (u_input.a > u_input.a), false), vec3<bool>(any(vec3<bool>(false, global1.x, true)) & all(vec3<bool>(true, global1.x, true)), true, true), select(all(select(vec3<bool>(global1.x, global1.x, global1.x), vec3<bool>(global1.x, true, true), true)), any(!global1.yy), true)), countOneBits(countOneBits(~vec4<u32>(u_input.a, 4294967295u, u_input.a, 1766u) | _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, 1u, u_input.a, u_input.a), vec4<u32>(37952u, 4294967295u, 1u, u_input.a)))));
    return select(select(select(select(select(vec4<bool>(true, global1.x, var_1.c.x, var_1.c.x), vec4<bool>(global1.x, true, var_1.c.x, global1.x), vec4<bool>(global1.x, var_1.c.x, global1.x, false)), !vec4<bool>(global1.x, true, false, global1.x), vec4<bool>(var_1.c.x, false, var_1.c.x, global1.x)), vec4<bool>(var_1.c.x, var_1.c.x, global1.x, !var_1.c.x), !(var_1.c.x || global1.x)), select(!(!vec4<bool>(false, false, var_1.c.x, true)), !select(vec4<bool>(true, false, var_1.c.x, true), vec4<bool>(var_1.c.x, false, false, global1.x), vec4<bool>(var_1.c.x, false, global1.x, var_1.c.x)), all(select(vec4<bool>(global1.x, var_1.c.x, false, global1.x), vec4<bool>(false, var_1.c.x, global1.x, true), vec4<bool>(true, false, true, true)))), !vec4<bool>(false, global1.x || global1.x, !var_1.c.x, any(vec2<bool>(var_1.c.x, var_1.c.x)))), vec4<bool>(!var_1.c.x != any(select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, var_1.c.x), vec4<bool>(var_1.c.x, var_1.c.x, global1.x, false))), !var_1.c.x, all(select(var_1.c, var_1.c, select(vec3<bool>(true, true, var_1.c.x), vec3<bool>(var_1.c.x, global1.x, true), vec3<bool>(false, var_1.c.x, global1.x)))), _wgslsmith_mult_u32(~u_input.a, ~u_input.a) != select(~33383u, ~892u, !global1.x)), true);
}

fn func_4(arg_0: vec3<i32>, arg_1: vec4<bool>) -> Struct_1 {
    let var_0 = Struct_2(u_input.a);
    return Struct_1(select(max(global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(var_0.a, u_input.a) | 33633u, 6u)], global3[_wgslsmith_index_u32(var_0.a, 6u)]), ~global3[_wgslsmith_index_u32(9436u ^ _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(72397u, 81227u)), 6u)], !select(arg_1.xwy, select(vec3<bool>(false, false, false), vec3<bool>(arg_1.x, false, true), false), global2.x <= global2.x)), 74516i, -464f);
}

fn func_5(arg_0: Struct_4, arg_1: Struct_1) -> i32 {
    global3 = array<vec3<u32>, 6>();
    global1 = select(select(vec3<bool>(true && (global1.x & global1.x), global1.x, global1.x), select(vec3<bool>(true, global1.x, !global1.x), vec3<bool>(true, !global1.x, global1.x), select(func_2().ywy, select(vec3<bool>(true, global1.x, false), vec3<bool>(false, false, false), vec3<bool>(global1.x, global1.x, true)), global1.x)), !(!(!vec3<bool>(global1.x, true, true)))), !vec3<bool>(false, false && (arg_1.b >= 48284i), global1.x), !vec3<bool>(min(arg_0.a, arg_0.a) != 0u, true, all(vec2<bool>(global1.x, true)) || any(vec4<bool>(global1.x, global1.x, false, global1.x))));
    let var_0 = ~_wgslsmith_mod_vec3_i32(abs(firstTrailingBit(vec3<i32>(-28759i, arg_1.b, 11248i))), vec3<i32>(-28118i, select(2147483647i, -24i, true), _wgslsmith_div_i32(-19165i, -4477i))) >> ((_wgslsmith_add_vec3_u32(select(arg_0.b.a, _wgslsmith_div_vec3_u32(arg_1.a, arg_0.b.a), select(vec3<bool>(false, global1.x, false), vec3<bool>(global1.x, true, global1.x), false)), vec3<u32>(_wgslsmith_div_u32(15518u, arg_0.b.a.x), u_input.a, arg_0.a)) >> (vec3<u32>(55222u, abs(~u_input.a), _wgslsmith_dot_vec3_u32(vec3<u32>(14007u, u_input.a, 1u), firstTrailingBit(arg_0.b.a))) % vec3<u32>(32u))) % vec3<u32>(32u));
    global1 = select(vec3<bool>(!(_wgslsmith_f_op_f32(-686f * -1409f) != _wgslsmith_div_f32(arg_0.b.c, arg_0.c)), global1.x, global1.x), vec3<bool>(global1.x, true, global1.x), !vec3<bool>(global1.x, true, (1i >= global0[_wgslsmith_index_u32(arg_1.a.x, 17u)]) || true));
    global1 = select(!(!vec3<bool>(global1.x, global1.x, u_input.a > 1u)), select(vec3<bool>(all(!vec3<bool>(true, false, global1.x)), true, true), vec3<bool>(arg_1.b >= _wgslsmith_sub_i32(arg_1.b, global0[_wgslsmith_index_u32(arg_1.a.x, 17u)]), false, true), select(func_2().yzz, vec3<bool>(true, true, true), any(vec4<bool>(false, false, true, false)))), u_input.a <= 28999u);
    return countOneBits(global0[_wgslsmith_index_u32(806u, 17u)]);
}

fn func_1() -> bool {
    global3 = array<vec3<u32>, 6>();
    let var_0 = vec4<bool>(true, true, true, true);
    let var_1 = countOneBits(4294967295u);
    let var_2 = -func_5(Struct_4(37654u, func_4(vec3<i32>(-17149i, global0[_wgslsmith_index_u32(1u, 17u)], -7984i), func_2()), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1193f - global2.x) + _wgslsmith_f_op_f32(step(-1560f, -382f)))), Struct_1(vec3<u32>(firstLeadingBit(u_input.a), var_1, _wgslsmith_add_u32(1u, u_input.a)), reverseBits(global0[_wgslsmith_index_u32(~var_1, 17u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.x + 1759f))));
    global3 = array<vec3<u32>, 6>();
    return var_0.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global2.xy;
    let var_1 = vec4<bool>(select(global1.x, global1.x, !global1.x), true, !global1.x, all(vec4<bool>(func_1(), global1.x, false, true)));
    global2 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(-global2.x), global2.x, _wgslsmith_f_op_f32(max(global2.x, -548f)))))))));
    let var_2 = Struct_1(vec3<u32>(u_input.a, reverseBits(u_input.a) << (~54603u % 32u), u_input.a), _wgslsmith_div_i32(_wgslsmith_add_i32(u_input.d, -2147483647i), -6328i), _wgslsmith_div_f32(574f, var_0.x));
    let var_3 = Struct_2(1u);
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x));
    let x = u_input.a;
    s_output = StorageBuffer(~vec2<i32>(-44517i, 20414i), ~_wgslsmith_div_vec4_u32(vec4<u32>(1u, firstTrailingBit(var_2.a.x), _wgslsmith_div_u32(4474u, 1u), var_2.a.x >> (var_2.a.x % 32u)), ~(~vec4<u32>(var_2.a.x, 23832u, var_3.a, var_2.a.x))), 969f, vec4<u32>(~var_2.a.x, 1u, _wgslsmith_mult_u32(37758u, u_input.a), 1u));
}


struct Struct_1 {
    a: f32,
    b: vec4<i32>,
}

struct Struct_2 {
    a: vec2<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: bool,
}

struct Struct_4 {
    a: Struct_3,
}

struct Struct_5 {
    a: Struct_2,
    b: vec3<f32>,
    c: bool,
    d: Struct_3,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 26> = array<bool, 26>(true, false, true, false, true, true, false, false, false, true, true, false, true, true, true, false, false, false, false, true, false, true, true, false, true, true);

var<private> global1: bool;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_1() -> Struct_2 {
    global0 = array<bool, 26>();
    var var_0 = 1u;
    var var_1 = Struct_2(-vec2<i32>(countOneBits(min(u_input.a, u_input.b.x)), u_input.b.x));
    var var_2 = _wgslsmith_f_op_vec2_f32(vec2<f32>(-810f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -202f)), 147f))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -952f))));
    let var_3 = Struct_2(firstTrailingBit(~(~_wgslsmith_add_vec2_i32(vec2<i32>(var_1.a.x, 43134i), vec2<i32>(1i, -32019i)))));
    return Struct_2(-var_1.a);
}

fn func_3(arg_0: vec2<i32>) -> Struct_2 {
    var var_0 = ~4294967295u;
    var var_1 = select(!(!vec3<bool>(global0[_wgslsmith_index_u32(~0u, 26u)], true, global0[_wgslsmith_index_u32(~72532u, 26u)])), !select(select(select(vec3<bool>(global0[_wgslsmith_index_u32(839u, 26u)], false, true), vec3<bool>(global0[_wgslsmith_index_u32(0u, 26u)], true, false), vec3<bool>(global0[_wgslsmith_index_u32(50496u, 26u)], false, global0[_wgslsmith_index_u32(29764u, 26u)])), select(vec3<bool>(true, global0[_wgslsmith_index_u32(9900u, 26u)], global0[_wgslsmith_index_u32(44310u, 26u)]), vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 26u)], false, false), global0[_wgslsmith_index_u32(347u, 26u)]), global0[_wgslsmith_index_u32(max(0u, 1u), 26u)]), vec3<bool>(u_input.b.x < 0i, global0[_wgslsmith_index_u32(39850u, 26u)], global0[_wgslsmith_index_u32(abs(4294967295u), 26u)]), select(vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 26u)], global0[_wgslsmith_index_u32(1u, 26u)], global0[_wgslsmith_index_u32(16424u, 26u)]), vec3<bool>(false, global0[_wgslsmith_index_u32(4294967295u, 26u)], global0[_wgslsmith_index_u32(88860u, 26u)]), !vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 26u)], global0[_wgslsmith_index_u32(0u, 26u)], true))), global0[_wgslsmith_index_u32(~_wgslsmith_mod_u32(abs(_wgslsmith_div_u32(26507u, 1u)), select(~599u, ~52637u, all(vec3<bool>(global0[_wgslsmith_index_u32(54254u, 26u)], true, global0[_wgslsmith_index_u32(57695u, 26u)])))), 26u)]);
    return Struct_2(vec2<i32>(u_input.a, u_input.a));
}

fn func_4(arg_0: u32, arg_1: Struct_5, arg_2: Struct_4, arg_3: vec2<f32>) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-218f, arg_3.x, 163f, -534f))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(261f, -642f, arg_1.b.x, arg_1.b.x))))), select(vec4<bool>(false, arg_1.c, arg_2.a.c, false), !vec4<bool>(global0[_wgslsmith_index_u32(7498u, 26u)], true, true, arg_2.a.c), !vec4<bool>(global0[_wgslsmith_index_u32(40625u, 26u)], arg_1.d.c, arg_1.d.c, false))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3.x, arg_3.x, arg_3.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_3.x - 726f))))), false));
    global0 = array<bool, 26>();
    global0 = array<bool, 26>();
    let var_1 = ~(vec4<i32>(-1i) * -_wgslsmith_add_vec4_i32(reverseBits(vec4<i32>(u_input.b.x, arg_1.d.a.a.x, arg_1.d.b.a.x, arg_1.a.a.x)), vec4<i32>(-29371i, arg_1.a.a.x, 2147483647i, arg_2.a.a.a.x) | vec4<i32>(1i, u_input.a, 2147483647i, arg_1.a.a.x)));
    let var_2 = ~(-_wgslsmith_div_vec2_i32(u_input.b.zz, vec2<i32>(_wgslsmith_dot_vec3_i32(u_input.b, u_input.b), _wgslsmith_dot_vec4_i32(var_1, vec4<i32>(-1569i, 3648i, -14210i, arg_2.a.b.a.x)))));
    return func_3(firstLeadingBit(vec2<i32>(~(-6571i), -32646i) >> (vec2<u32>(arg_0, arg_0 | arg_1.e.x) % vec2<u32>(32u))));
}

fn func_2() -> Struct_3 {
    let var_0 = vec4<bool>(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(~4294967295u, 59156u), 26u)], any(!vec4<bool>(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(5862u, 3972u), 26u)], any(vec3<bool>(false, true, true)), all(vec2<bool>(global0[_wgslsmith_index_u32(58243u, 26u)], global0[_wgslsmith_index_u32(4294967295u, 26u)])), global0[_wgslsmith_index_u32(~21714u, 26u)])), !(!(!all(vec4<bool>(global0[_wgslsmith_index_u32(0u, 26u)], global0[_wgslsmith_index_u32(10308u, 26u)], false, false)))), !(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(abs(0u), 4294967295u), 26u)] | !(0i > u_input.b.x)));
    global0 = array<bool, 26>();
    let var_1 = Struct_5(func_1(), _wgslsmith_div_vec3_f32(vec3<f32>(-890f, _wgslsmith_f_op_f32(1135f * 1f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(446f + 149f), _wgslsmith_f_op_f32(ceil(-418f))))), vec3<f32>(1f, 1f, 1f)), global0[_wgslsmith_index_u32(~max(4294967295u, 1083u) << (0u % 32u), 26u)] && (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -792f)) <= _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(-1022f)), 1f))), Struct_3(func_4(abs(abs(68149u)), Struct_5(func_3(vec2<i32>(-13691i, 2147483647i)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1505f, 977f, -911f)), !var_0.x, Struct_3(Struct_2(vec2<i32>(-2147483647i, u_input.a)), Struct_2(u_input.b.yy), true), vec4<u32>(66725u, 30794u, 1u, 4294967295u)), Struct_4(Struct_3(Struct_2(vec2<i32>(u_input.b.x, u_input.b.x)), Struct_2(u_input.b.yx), global0[_wgslsmith_index_u32(0u, 26u)])), vec2<f32>(137f, _wgslsmith_f_op_f32(f32(-1f) * -445f))), func_3(select(u_input.b.zx, ~vec2<i32>(-1755i, 2147483647i), !vec2<bool>(var_0.x, false))), !(!global0[_wgslsmith_index_u32(88962u, 26u)]) | true), ~vec4<u32>(~16189u, ~35580u, 1u, 4294967295u) | vec4<u32>(1u, _wgslsmith_add_u32(30712u, _wgslsmith_clamp_u32(4294967295u, 15928u, 18149u)), ~(0u << (1u % 32u)), reverseBits(94581u << (0u % 32u))));
    let var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_1.b.x))), var_1.b.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-520f - 1288f))) - var_1.b.x));
    let var_3 = firstLeadingBit(_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(var_1.e.zy, _wgslsmith_div_vec2_u32(vec2<u32>(var_1.e.x, 4294967295u), var_1.e.xx) | var_1.e.xx), reverseBits(vec2<u32>(var_1.e.x & 4294967295u, reverseBits(var_1.e.x)))));
    return Struct_3(Struct_2(vec2<i32>(~_wgslsmith_mult_i32(13597i, u_input.b.x), u_input.a)), func_3(vec2<i32>(_wgslsmith_mod_i32(abs(1i), u_input.a), firstTrailingBit(-1i) >> (1u % 32u))), true);
}

fn func_5(arg_0: Struct_3, arg_1: Struct_1, arg_2: u32, arg_3: vec2<u32>) -> vec2<i32> {
    let var_0 = Struct_5(func_3(vec2<i32>(_wgslsmith_mult_i32(~arg_0.a.a.x, arg_0.b.a.x), 3342i)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.a, arg_1.a, arg_1.a) * vec3<f32>(-552f, 1362f, arg_1.a)), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.a, arg_1.a, arg_1.a) - vec3<f32>(-723f, -1388f, 892f))), vec3<f32>(arg_1.a, _wgslsmith_f_op_f32(select(721f, 440f, true)), _wgslsmith_f_op_f32(floor(-366f))))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1676f, arg_1.a, 1000f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-2047f, -628f, -1024f)), true)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(499f, 1537f, -744f), vec3<f32>(arg_1.a, 1173f, arg_1.a))))), !(-_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, 8755i, 20778i, 36525i), arg_1.b) < _wgslsmith_mod_i32(-u_input.b.x, _wgslsmith_mult_i32(arg_0.b.a.x, -38480i))), func_2(), countOneBits(~_wgslsmith_mult_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(53761u, arg_2, arg_3.x, 4294967295u), vec4<u32>(arg_3.x, 1u, arg_2, arg_2)), vec4<u32>(5824u, 19279u, arg_3.x, arg_2))));
    var var_1 = true;
    let var_2 = Struct_3(Struct_2(~_wgslsmith_clamp_vec2_i32(u_input.b.xy, vec2<i32>(u_input.b.x, 47532i), func_2().a.a)), arg_0.a, false);
    let var_3 = arg_1;
    var var_4 = ~var_0.a.a;
    return var_0.d.b.a;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 26>();
    var var_0 = Struct_3(func_1(), Struct_2(func_5(func_2(), Struct_1(149f, _wgslsmith_div_vec4_i32(vec4<i32>(2147483647i, u_input.a, 6356i, u_input.b.x), vec4<i32>(-37694i, u_input.b.x, u_input.a, -9791i))), 11819u, select(select(vec2<u32>(609u, 13921u), vec2<u32>(64726u, 23635u), vec2<bool>(false, global0[_wgslsmith_index_u32(51748u, 26u)])), select(vec2<u32>(1u, 1u), vec2<u32>(15385u, 28542u), true), !global0[_wgslsmith_index_u32(4294967295u, 26u)]))), all(!vec2<bool>(func_2().c, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(25257u, 101006u), vec2<u32>(78177u, 1u)), 26u)])));
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-460f, -1524f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1076f))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(914f, -651f)), _wgslsmith_f_op_f32(f32(-1f) * -1324f)))));
    let var_2 = vec3<u32>(~(~_wgslsmith_dot_vec2_u32(vec2<u32>(41715u, 17389u), vec2<u32>(52569u, 1u))) ^ 1u, firstLeadingBit(select(abs(reverseBits(41499u)), 1u, any(vec3<bool>(var_0.c, true, global0[_wgslsmith_index_u32(44279u, 26u)])))), ~(~abs(0u)) >> (1u % 32u));
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1890f, 1711f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(var_1.x)))))) >= _wgslsmith_f_op_f32(-var_1.x);
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.a);
}


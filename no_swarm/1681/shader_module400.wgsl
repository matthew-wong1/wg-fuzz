struct Struct_1 {
    a: bool,
    b: i32,
}

struct Struct_2 {
    a: vec2<bool>,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: i32,
    d: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 12> = array<vec3<i32>, 12>(vec3<i32>(2147483647i, 19251i, 2147483647i), vec3<i32>(0i, 13943i, 1i), vec3<i32>(-24584i, -1i, 2147483647i), vec3<i32>(-110i, 39883i, 83894i), vec3<i32>(3469i, -31078i, 23705i), vec3<i32>(0i, 2147483647i, -21658i), vec3<i32>(31707i, 25730i, 1i), vec3<i32>(0i, -10530i, 1i), vec3<i32>(14234i, 0i, 2147483647i), vec3<i32>(2147483647i, 0i, -1i), vec3<i32>(26438i, 2147483647i, 16419i), vec3<i32>(0i, -7949i, 2147483647i));

var<private> global1: array<bool, 15> = array<bool, 15>(false, true, false, true, false, true, true, true, false, true, true, true, false, false, true);

var<private> global2: array<vec3<i32>, 11> = array<vec3<i32>, 11>(vec3<i32>(0i, 13111i, -10114i), vec3<i32>(7633i, 2147483647i, 22340i), vec3<i32>(i32(-2147483648), -1i, 0i), vec3<i32>(-13395i, -29300i, i32(-2147483648)), vec3<i32>(20260i, -49062i, -6099i), vec3<i32>(0i, -45876i, -26933i), vec3<i32>(20383i, 2147483647i, 2147483647i), vec3<i32>(45328i, 2147483647i, 1i), vec3<i32>(13394i, 12044i, i32(-2147483648)), vec3<i32>(-1i, -14493i, -20547i), vec3<i32>(24097i, 2147483647i, i32(-2147483648)));

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> vec2<bool> {
    var var_0 = countOneBits(min(~vec4<u32>(_wgslsmith_div_u32(u_input.a, u_input.a), u_input.a, min(4294967295u, 32047u), u_input.a), ~(_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, u_input.a, 93873u, 817u), vec4<u32>(u_input.a, 0u, 31847u, 1u)) ^ ~vec4<u32>(u_input.a, 0u, 27148u, 1u))));
    var var_1 = Struct_2(vec2<bool>(any(vec4<bool>(global1[_wgslsmith_index_u32(u_input.a, 15u)] & global1[_wgslsmith_index_u32(0u, 15u)], !global1[_wgslsmith_index_u32(11572u, 15u)], true, all(vec3<bool>(global1[_wgslsmith_index_u32(u_input.a, 15u)], false, global1[_wgslsmith_index_u32(27975u, 15u)])))), false));
    let var_2 = Struct_2(var_1.a);
    global2 = array<vec3<i32>, 11>();
    let var_3 = abs(vec2<i32>(1i << (firstLeadingBit(_wgslsmith_div_u32(94551u, u_input.a)) % 32u), min(1i, -68166i) | min(-1i >> (0u % 32u), u_input.b)));
    return select(select(!select(select(vec2<bool>(global1[_wgslsmith_index_u32(u_input.a, 15u)], true), var_2.a, true), var_2.a, false), !(!select(var_2.a, var_2.a, var_1.a)), !select(select(var_2.a, vec2<bool>(global1[_wgslsmith_index_u32(var_0.x, 15u)], var_2.a.x), vec2<bool>(false, true)), select(var_2.a, var_1.a, false), !var_1.a)), vec2<bool>(true, true), var_2.a);
}

fn func_4(arg_0: Struct_2) -> vec2<u32> {
    global0 = array<vec3<i32>, 12>();
    global1 = array<bool, 15>();
    return vec2<u32>(45765u, 4294967295u);
}

fn func_2() -> i32 {
    var var_0 = -(abs(0i) >> (_wgslsmith_mult_u32(1u, ~u_input.a | (64933u & u_input.a)) % 32u));
    let var_1 = _wgslsmith_dot_vec2_u32(reverseBits(_wgslsmith_div_vec2_u32(vec2<u32>(1u, _wgslsmith_mult_u32(0u, 1u)), _wgslsmith_add_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a, 1u), vec2<u32>(63746u, 3804u)), ~vec2<u32>(u_input.a, u_input.a)))), vec2<u32>(u_input.a, u_input.a));
    global2 = array<vec3<i32>, 11>();
    let var_2 = func_4(Struct_2(func_3()));
    let var_3 = _wgslsmith_sub_vec3_i32(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(~(var_2.x ^ var_2.x), 1u), 12u)], vec3<i32>(countOneBits(u_input.b), 0i, ~countOneBits(max(9937i, u_input.b))));
    return var_3.x;
}

fn func_1(arg_0: vec4<u32>, arg_1: vec4<bool>, arg_2: u32) -> Struct_1 {
    global2 = array<vec3<i32>, 11>();
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1f, 1f))));
    let var_1 = !arg_1.wyz;
    var var_2 = ~min(_wgslsmith_add_i32(~21946i, func_2()) | _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, u_input.b, 7976i, u_input.b), vec4<i32>(u_input.b, 20507i, u_input.b, u_input.b)), ~48345i);
    global0 = array<vec3<i32>, 12>();
    return Struct_1(global1[_wgslsmith_index_u32(1u, 15u)] | any(vec3<bool>(any(vec2<bool>(global1[_wgslsmith_index_u32(25422u, 15u)], var_1.x)), true, true)), i32(-1i) * -52591i);
}

fn func_5(arg_0: Struct_3, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec4<bool>) -> Struct_1 {
    global0 = array<vec3<i32>, 12>();
    global1 = array<bool, 15>();
    let var_0 = (arg_1.b & firstLeadingBit(-1i)) & -_wgslsmith_mult_i32(firstLeadingBit(-1i) << (u_input.a % 32u), -1i);
    let var_1 = vec2<u32>(_wgslsmith_sub_u32(u_input.a, ~(u_input.a | abs(u_input.a))), 22776u);
    global1 = array<bool, 15>();
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(-451f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(547f + -303f) - 628f), -1241f)), _wgslsmith_f_op_f32(-940f + _wgslsmith_f_op_f32(ceil(711f))), _wgslsmith_f_op_f32(-2450f - 1f));
    global1 = array<bool, 15>();
    var var_1 = -abs(-4951i);
    let var_2 = func_5(Struct_3(1i, func_1(~_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a, u_input.a, 1u, 6176u), vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<u32>(u_input.a, 25202u, u_input.a, u_input.a)), !(!vec4<bool>(global1[_wgslsmith_index_u32(u_input.a, 15u)], true, true, global1[_wgslsmith_index_u32(4294967295u, 15u)])), firstTrailingBit(_wgslsmith_mult_u32(0u, 4294967295u))), 2147483647i, Struct_2(vec2<bool>(true, true))), func_1(~vec4<u32>(80433u, u_input.a, u_input.a, u_input.a) | firstLeadingBit(_wgslsmith_add_vec4_u32(vec4<u32>(1u, 15802u, 6892u, 1u), vec4<u32>(42607u, 26931u, u_input.a, 4294967295u))), select(vec4<bool>(true, true, !global1[_wgslsmith_index_u32(u_input.a, 15u)], false), vec4<bool>(u_input.a <= 0u, any(vec4<bool>(true, global1[_wgslsmith_index_u32(u_input.a, 15u)], global1[_wgslsmith_index_u32(2523u, 15u)], global1[_wgslsmith_index_u32(40794u, 15u)])), any(vec2<bool>(global1[_wgslsmith_index_u32(24117u, 15u)], true)), global1[_wgslsmith_index_u32(1u, 15u)]), global1[_wgslsmith_index_u32(u_input.a, 15u)] && global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.a, 470u), 15u)]), u_input.a), Struct_1(!global1[_wgslsmith_index_u32(4294967295u << (firstLeadingBit(u_input.a) % 32u), 15u)], ~1i), select(select(select(select(vec4<bool>(true, global1[_wgslsmith_index_u32(u_input.a, 15u)], true, false), vec4<bool>(global1[_wgslsmith_index_u32(u_input.a, 15u)], false, global1[_wgslsmith_index_u32(111903u, 15u)], global1[_wgslsmith_index_u32(u_input.a, 15u)]), vec4<bool>(false, true, true, true)), vec4<bool>(global1[_wgslsmith_index_u32(3708u, 15u)], global1[_wgslsmith_index_u32(19694u, 15u)], global1[_wgslsmith_index_u32(u_input.a, 15u)], global1[_wgslsmith_index_u32(52092u, 15u)]), true), vec4<bool>(any(vec4<bool>(global1[_wgslsmith_index_u32(28679u, 15u)], global1[_wgslsmith_index_u32(1u, 15u)], false, true)), 15067u > u_input.a, all(vec2<bool>(global1[_wgslsmith_index_u32(0u, 15u)], false)), true), global1[_wgslsmith_index_u32(firstTrailingBit(u_input.a), 15u)]), select(!select(vec4<bool>(global1[_wgslsmith_index_u32(u_input.a, 15u)], global1[_wgslsmith_index_u32(u_input.a, 15u)], true, true), vec4<bool>(true, true, global1[_wgslsmith_index_u32(1u, 15u)], global1[_wgslsmith_index_u32(4294967295u, 15u)]), vec4<bool>(global1[_wgslsmith_index_u32(u_input.a, 15u)], global1[_wgslsmith_index_u32(u_input.a, 15u)], global1[_wgslsmith_index_u32(u_input.a, 15u)], global1[_wgslsmith_index_u32(37208u, 15u)])), select(vec4<bool>(false, false, global1[_wgslsmith_index_u32(u_input.a, 15u)], true), !vec4<bool>(global1[_wgslsmith_index_u32(u_input.a, 15u)], global1[_wgslsmith_index_u32(0u, 15u)], false, false), global1[_wgslsmith_index_u32(~4294967295u, 15u)]), !(!vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 15u)], global1[_wgslsmith_index_u32(4294967295u, 15u)], true, true))), false));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(select(var_0.x, 608f, global1[_wgslsmith_index_u32(u_input.a, 15u)]))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x * -879f) * 1000f), _wgslsmith_f_op_f32(abs(var_0.x)), _wgslsmith_f_op_f32(-var_0.x)))), _wgslsmith_f_op_f32(floor(var_0.x)), var_0.x);
}


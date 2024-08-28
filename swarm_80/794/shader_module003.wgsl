struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: u32,
    d: vec4<f32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 17> = array<bool, 17>(false, false, true, false, false, false, true, false, false, true, false, true, false, false, false, true, false);

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec4<u32>, arg_1: bool, arg_2: vec3<u32>) -> u32 {
    let var_0 = Struct_1(-2147483647i);
    global0 = array<bool, 17>();
    var var_1 = vec4<bool>(all(select(vec3<bool>(true, select(arg_1, global0[_wgslsmith_index_u32(arg_2.x, 17u)], true), false), !vec3<bool>(global0[_wgslsmith_index_u32(1u, 17u)], arg_1, true), select(!vec3<bool>(true, true, arg_1), !vec3<bool>(global0[_wgslsmith_index_u32(u_input.a, 17u)], false, false), !vec3<bool>(arg_1, global0[_wgslsmith_index_u32(35164u, 17u)], arg_1)))), true, false, true);
    let var_2 = all(var_1.yz);
    let var_3 = !select(!var_1.xww, select(!(!vec3<bool>(arg_1, var_1.x, false)), select(select(var_1.yzy, vec3<bool>(var_1.x, arg_1, false), var_1.zyw), vec3<bool>(false, true, false), true), true), false);
    return arg_2.x;
}

fn func_2(arg_0: vec2<u32>) -> Struct_1 {
    var var_0 = !vec3<bool>(true || global0[_wgslsmith_index_u32(_wgslsmith_add_u32(~u_input.a, 1u), 17u)], !global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(func_3(vec4<u32>(arg_0.x, u_input.a, 1u, 72574u), false, vec3<u32>(u_input.a, arg_0.x, arg_0.x)), 16044u), 17u)], false);
    var var_1 = Struct_1(_wgslsmith_dot_vec3_i32(select(_wgslsmith_clamp_vec3_i32(-vec3<i32>(69866i, 1i, 0i), -vec3<i32>(-2147483647i, 2147483647i, 2147483647i), vec3<i32>(-26731i, -48984i, 22642i)), ~min(vec3<i32>(0i, 1i, 0i), vec3<i32>(2147483647i, -2147483647i, 1i)), select(vec3<bool>(true, false, global0[_wgslsmith_index_u32(arg_0.x, 17u)]), vec3<bool>(false, var_0.x, global0[_wgslsmith_index_u32(1u, 17u)]), !vec3<bool>(var_0.x, var_0.x, var_0.x))), vec3<i32>(-4082i, -2147483647i, -2147483647i >> (arg_0.x % 32u))));
    var_1 = Struct_1(-27122i);
    var_0 = !vec3<bool>(true, var_0.x || false, var_0.x);
    let var_2 = ~firstLeadingBit(vec3<i32>(-var_1.a, max(_wgslsmith_mod_i32(-1i, -1i), var_1.a), ~firstTrailingBit(30089i)));
    return Struct_1(_wgslsmith_mod_i32(-38315i, var_2.x) & 2147483647i);
}

fn func_1(arg_0: vec2<u32>, arg_1: f32, arg_2: vec4<u32>, arg_3: vec4<i32>) -> Struct_1 {
    var var_0 = func_2(~max(~firstTrailingBit(arg_0), ~arg_0));
    global0 = array<bool, 17>();
    var var_1 = global0[_wgslsmith_index_u32(4294967295u << (_wgslsmith_sub_u32(u_input.a, _wgslsmith_add_u32(select(0u, 65519u, true), ~arg_0.x) & min(arg_2.x, 67706u)) % 32u), 17u)];
    var_1 = global0[_wgslsmith_index_u32(arg_2.x, 17u)];
    var var_2 = ~arg_2.xzx ^ ~arg_2.wwz;
    return func_2(_wgslsmith_clamp_vec2_u32(~arg_0, arg_0, arg_2.ww));
}

fn func_4(arg_0: vec4<bool>, arg_1: i32, arg_2: bool, arg_3: Struct_1) -> Struct_1 {
    var var_0 = any(!select(!(!arg_0), arg_0, any(arg_0)));
    var var_1 = firstTrailingBit(~(~(~(vec2<u32>(u_input.a, 25793u) | vec2<u32>(4294967295u, u_input.a)))));
    let var_2 = arg_3.a;
    var var_3 = func_1(abs(~vec2<u32>(var_1.x & 4294967295u, 1u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-818f)))))), vec4<u32>(~(~1u), 11826u, abs(var_1.x), ~_wgslsmith_mod_u32(0u | var_1.x, u_input.a ^ 72279u)), select(vec4<i32>(func_2(reverseBits(vec2<u32>(var_1.x, var_1.x))).a, arg_3.a, -1i, var_2), abs(_wgslsmith_mult_vec4_i32(vec4<i32>(-33313i, arg_1, arg_3.a, 1490i) & vec4<i32>(arg_1, -43974i, 2147483647i, arg_3.a), select(vec4<i32>(arg_3.a, 0i, var_2, -1357i), vec4<i32>(arg_3.a, arg_1, arg_1, var_2), arg_0.x))), !select(!arg_0, !vec4<bool>(true, global0[_wgslsmith_index_u32(38908u, 17u)], arg_0.x, arg_0.x), vec4<bool>(true, arg_2, arg_2, true))));
    var var_4 = -1038f;
    return Struct_1(1i);
}

fn func_5(arg_0: i32, arg_1: Struct_1, arg_2: i32, arg_3: vec2<bool>) -> Struct_1 {
    let var_0 = reverseBits(firstLeadingBit(reverseBits(countOneBits(~vec3<i32>(3844i, 2147483647i, arg_1.a)))));
    var var_1 = ~(select(~103667u, ~min(u_input.a, u_input.a), !(!arg_3.x)) ^ u_input.a);
    var var_2 = !(_wgslsmith_f_op_f32(trunc(1367f)) != 684f);
    var_2 = arg_3.x;
    var var_3 = ~_wgslsmith_add_i32(_wgslsmith_mult_i32(i32(-1i) * -71167i, -5660i << (_wgslsmith_div_u32(u_input.a, u_input.a) % 32u)), func_2(vec2<u32>(~u_input.a, u_input.a)).a);
    return func_1(min(firstLeadingBit(vec2<u32>(u_input.a, u_input.a)), vec2<u32>(~abs(u_input.a), 60765u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(198f - 1f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(612f - -391f)))), vec4<u32>(~(~u_input.a << (~6313u % 32u)), max(1u, 2804u << (_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 1u, 4294967295u), vec3<u32>(u_input.a, u_input.a, 4294967295u)) % 32u)), ~(~0u) >> (~(~0u) % 32u), firstTrailingBit(u_input.a)), select(vec4<i32>(~31394i, _wgslsmith_dot_vec4_i32(~vec4<i32>(var_0.x, -52732i, arg_0, -11069i), ~vec4<i32>(var_0.x, 41001i, arg_0, -33230i)), arg_2 & 1i, max(var_0.x << (1u % 32u), countOneBits(-1i))), _wgslsmith_add_vec4_i32(-select(vec4<i32>(6068i, -2147483647i, 22789i, 28863i), vec4<i32>(var_0.x, arg_1.a, -17897i, -11049i), global0[_wgslsmith_index_u32(u_input.a, 17u)]), _wgslsmith_div_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(-1i, -27014i, -37777i, 0i), vec4<i32>(arg_0, -15317i, -18101i, -51448i)), _wgslsmith_div_vec4_i32(vec4<i32>(44343i, arg_1.a, -1i, 36361i), vec4<i32>(arg_2, arg_1.a, 0i, arg_1.a)))), vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 17u)], all(select(vec2<bool>(arg_3.x, global0[_wgslsmith_index_u32(25889u, 17u)]), vec2<bool>(global0[_wgslsmith_index_u32(u_input.a, 17u)], true), vec2<bool>(arg_3.x, global0[_wgslsmith_index_u32(4294967295u, 17u)]))), all(vec3<bool>(arg_3.x, global0[_wgslsmith_index_u32(1u, 17u)], false)), select(1u == u_input.a, false, false))));
}

fn func_6(arg_0: Struct_1, arg_1: u32, arg_2: Struct_1, arg_3: vec2<f32>) -> Struct_1 {
    var var_0 = -max(vec2<i32>(0i, 1i), select(max(-vec2<i32>(-11654i, arg_2.a), ~vec2<i32>(arg_0.a, -50997i)), (vec2<i32>(arg_2.a, -6522i) & vec2<i32>(arg_0.a, 53094i)) ^ ~vec2<i32>(-1i, 1i), true));
    var var_1 = Struct_1(arg_0.a);
    var var_2 = func_1(_wgslsmith_mod_vec2_u32(firstLeadingBit(max(vec2<u32>(0u, u_input.a), vec2<u32>(4294967295u, arg_1))) | vec2<u32>(32287u, 129u >> (arg_1 % 32u)), _wgslsmith_add_vec2_u32(abs(_wgslsmith_div_vec2_u32(vec2<u32>(0u, arg_1), vec2<u32>(48529u, 1u))), vec2<u32>(~u_input.a, 20666u))), arg_3.x, vec4<u32>(4294967295u, ~(~arg_1) & (_wgslsmith_sub_u32(u_input.a, 0u) & arg_1), 0u >> (_wgslsmith_mod_u32(1u, _wgslsmith_mod_u32(28355u, 1346u)) % 32u), 77825u), select((vec4<i32>(68217i, 27532i, var_0.x, 1i) | (vec4<i32>(arg_0.a, var_0.x, 1i, arg_2.a) | vec4<i32>(-66i, var_0.x, 2147483647i, 2147483647i))) ^ _wgslsmith_div_vec4_i32(~vec4<i32>(0i, -25769i, var_0.x, -1i), vec4<i32>(-43699i, arg_2.a, arg_2.a, 0i) >> (vec4<u32>(u_input.a, u_input.a, 16180u, u_input.a) % vec4<u32>(32u))), vec4<i32>(firstTrailingBit(-arg_2.a), 1i, -_wgslsmith_clamp_i32(arg_0.a, 15682i, var_1.a), firstTrailingBit(var_1.a)), select(!select(vec4<bool>(global0[_wgslsmith_index_u32(45635u, 17u)], true, global0[_wgslsmith_index_u32(arg_1, 17u)], global0[_wgslsmith_index_u32(40032u, 17u)]), vec4<bool>(global0[_wgslsmith_index_u32(0u, 17u)], true, false, global0[_wgslsmith_index_u32(50825u, 17u)]), vec4<bool>(global0[_wgslsmith_index_u32(63347u, 17u)], global0[_wgslsmith_index_u32(arg_1, 17u)], false, false)), select(select(vec4<bool>(global0[_wgslsmith_index_u32(u_input.a, 17u)], global0[_wgslsmith_index_u32(arg_1, 17u)], true, global0[_wgslsmith_index_u32(arg_1, 17u)]), vec4<bool>(true, global0[_wgslsmith_index_u32(arg_1, 17u)], global0[_wgslsmith_index_u32(59693u, 17u)], false), vec4<bool>(global0[_wgslsmith_index_u32(arg_1, 17u)], global0[_wgslsmith_index_u32(41834u, 17u)], false, false)), select(vec4<bool>(global0[_wgslsmith_index_u32(u_input.a, 17u)], global0[_wgslsmith_index_u32(u_input.a, 17u)], true, false), vec4<bool>(true, true, global0[_wgslsmith_index_u32(0u, 17u)], false), global0[_wgslsmith_index_u32(arg_1, 17u)]), !vec4<bool>(true, false, global0[_wgslsmith_index_u32(arg_1, 17u)], true)), true)));
    global0 = array<bool, 17>();
    global0 = array<bool, 17>();
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2603f - _wgslsmith_f_op_f32(f32(-1f) * -158f)));
    let var_1 = vec4<i32>(-1i) * -_wgslsmith_sub_vec4_i32(~vec4<i32>(1i, 1i, 1i, 1i), vec4<i32>(-33176i, i32(-1i) * -1i, _wgslsmith_mod_i32(-1i, -7256i), select(8709i, 0i, true)));
    var var_2 = func_6(func_5(-2147483647i >> (1u % 32u), func_4(!(!vec4<bool>(true, global0[_wgslsmith_index_u32(66289u, 17u)], global0[_wgslsmith_index_u32(u_input.a, 17u)], global0[_wgslsmith_index_u32(u_input.a, 17u)])), -_wgslsmith_div_i32(var_1.x, -1i), any(!vec3<bool>(global0[_wgslsmith_index_u32(3861u, 17u)], true, global0[_wgslsmith_index_u32(u_input.a, 17u)])), func_1(~vec2<u32>(1u, 4294967295u), -457f, vec4<u32>(u_input.a, u_input.a, 0u, 0u) ^ vec4<u32>(u_input.a, 40432u, u_input.a, 0u), -var_1)), -var_1.x, vec2<bool>(global0[_wgslsmith_index_u32(u_input.a, 17u)], !(!global0[_wgslsmith_index_u32(86565u, 17u)]))), ~(~17027u), func_4(select(vec4<bool>(global0[_wgslsmith_index_u32(~0u, 17u)], any(vec3<bool>(global0[_wgslsmith_index_u32(51595u, 17u)], global0[_wgslsmith_index_u32(u_input.a, 17u)], false)), true, true), select(vec4<bool>(global0[_wgslsmith_index_u32(u_input.a, 17u)], true, global0[_wgslsmith_index_u32(u_input.a, 17u)], global0[_wgslsmith_index_u32(27229u, 17u)]), vec4<bool>(global0[_wgslsmith_index_u32(27486u, 17u)], global0[_wgslsmith_index_u32(u_input.a, 17u)], global0[_wgslsmith_index_u32(u_input.a, 17u)], global0[_wgslsmith_index_u32(21777u, 17u)]), select(vec4<bool>(global0[_wgslsmith_index_u32(u_input.a, 17u)], true, global0[_wgslsmith_index_u32(u_input.a, 17u)], global0[_wgslsmith_index_u32(4294967295u, 17u)]), vec4<bool>(false, global0[_wgslsmith_index_u32(60278u, 17u)], true, global0[_wgslsmith_index_u32(49525u, 17u)]), global0[_wgslsmith_index_u32(u_input.a, 17u)])), select(true == global0[_wgslsmith_index_u32(40638u, 17u)], any(vec3<bool>(global0[_wgslsmith_index_u32(u_input.a, 17u)], true, true)), true | global0[_wgslsmith_index_u32(1u, 17u)])), -1i, true, func_5(var_1.x, Struct_1(-var_1.x), func_2(vec2<u32>(u_input.a, u_input.a)).a, !select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, global0[_wgslsmith_index_u32(u_input.a, 17u)])))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(var_0 + 369f), _wgslsmith_f_op_f32(-var_0)), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1205f, var_0))))))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, var_0))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, var_0)))));
    var var_3 = var_1.zyw;
    let x = u_input.a;
    s_output = StorageBuffer(var_2.a, vec3<f32>(-2329f, _wgslsmith_div_f32(var_0, -163f), -1470f), 1u, _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, _wgslsmith_f_op_f32(sign(var_0)), _wgslsmith_f_op_f32(-var_0), -564f)), max(firstLeadingBit(vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.a, 73193u), vec3<u32>(u_input.a, u_input.a, 4294967295u)), 70793u, u_input.a)), _wgslsmith_mult_vec3_u32(vec3<u32>(~u_input.a, select(u_input.a, u_input.a, false), ~u_input.a), ~abs(vec3<u32>(u_input.a, 69521u, 42117u)))));
}


struct Struct_1 {
    a: f32,
    b: u32,
    c: bool,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 18>;

var<private> global1: array<Struct_1, 16> = array<Struct_1, 16>(Struct_1(277f, 0u, false, vec2<i32>(-25847i, -7561i)), Struct_1(-447f, 1u, true, vec2<i32>(-1i, 49351i)), Struct_1(-868f, 1963u, false, vec2<i32>(1i, -1628i)), Struct_1(-527f, 4294967295u, true, vec2<i32>(21427i, i32(-2147483648))), Struct_1(1613f, 41u, true, vec2<i32>(-39390i, -1i)), Struct_1(-166f, 46844u, false, vec2<i32>(26578i, 55135i)), Struct_1(-1241f, 1u, true, vec2<i32>(-68767i, -1i)), Struct_1(-3269f, 4294967295u, false, vec2<i32>(1i, 18425i)), Struct_1(-386f, 19107u, true, vec2<i32>(0i, 1i)), Struct_1(-1935f, 63125u, false, vec2<i32>(15028i, 0i)), Struct_1(-1342f, 1u, false, vec2<i32>(-1i, -10291i)), Struct_1(140f, 15966u, false, vec2<i32>(-1i, -53513i)), Struct_1(-322f, 40729u, true, vec2<i32>(-4613i, 38078i)), Struct_1(-355f, 28068u, false, vec2<i32>(36303i, 30694i)), Struct_1(-481f, 7701u, true, vec2<i32>(-1i, 38850i)), Struct_1(251f, 54835u, false, vec2<i32>(i32(-2147483648), i32(-2147483648))));

var<private> global2: array<vec2<i32>, 7>;

var<private> global3: array<vec2<bool>, 31> = array<vec2<bool>, 31>(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false));

var<private> global4: vec2<bool> = vec2<bool>(false, true);

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: bool, arg_1: vec3<bool>, arg_2: f32) -> f32 {
    let var_0 = Struct_1(-419f, _wgslsmith_mod_u32(firstTrailingBit(firstLeadingBit(4294967295u)), ~(~29943u)), true, ~vec2<i32>(25736i, 41616i));
    return -718f;
}

fn func_2(arg_0: vec2<i32>) -> u32 {
    let var_0 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_3(global4.x, vec3<bool>(true, false, false), 999f)))))), -2063f), ~select(~abs(1u), ~1u, global4.x || global4.x), global4.x, vec2<i32>(-_wgslsmith_dot_vec4_i32(u_input.a, _wgslsmith_mult_vec4_i32(vec4<i32>(arg_0.x, -58728i, 59222i, u_input.a.x), vec4<i32>(58668i, -25927i, arg_0.x, u_input.a.x))), countOneBits(-4491i)));
    var var_1 = all(!vec3<bool>(true, true, !any(vec4<bool>(var_0.c, var_0.c, global4.x, false))));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_0.a))), ~(~_wgslsmith_dot_vec3_u32(vec3<u32>(11413u, var_0.b, var_0.b), firstLeadingBit(vec3<u32>(6576u, var_0.b, var_0.b)))), false, vec2<i32>(41929i, reverseBits(1i)));
    var var_3 = u_input.a & vec4<i32>(-20097i, _wgslsmith_dot_vec4_i32(~_wgslsmith_sub_vec4_i32(vec4<i32>(0i, 26496i, 1i, -2147483647i), u_input.a), -vec4<i32>(var_0.d.x, 2147483647i, 7371i, u_input.a.x)), firstLeadingBit(-(i32(-1i) * -32189i)), ~_wgslsmith_clamp_i32(firstTrailingBit(-1i), ~u_input.a.x, -1i));
    global1 = array<Struct_1, 16>();
    return _wgslsmith_sub_u32(var_0.b, var_0.b);
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1) -> vec4<bool> {
    global2 = array<vec2<i32>, 7>();
    var var_0 = Struct_1(arg_0.a, ~(~func_2(global2[_wgslsmith_index_u32(~arg_1.b, 7u)])), true, vec2<i32>(_wgslsmith_dot_vec4_i32(-u_input.a, ~vec4<i32>(277i, -35126i, arg_1.d.x, arg_1.d.x)), i32(-1i) * -16451i));
    global2 = array<vec2<i32>, 7>();
    global3 = array<vec2<bool>, 31>();
    global1 = array<Struct_1, 16>();
    return !vec4<bool>(true, true, !(_wgslsmith_f_op_f32(sign(-336f)) <= _wgslsmith_f_op_f32(f32(-1f) * -3143f)), !select(all(vec2<bool>(true, arg_0.c)), true, true));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(!select(!(!vec4<bool>(false, global4.x, global4.x, false)), vec4<bool>(global4.x, global4.x, true, !global4.x), all(vec2<bool>(global4.x, global4.x)) | true), select(!(!select(vec4<bool>(false, global4.x, true, true), vec4<bool>(false, true, global4.x, true), vec4<bool>(global4.x, global4.x, global4.x, false))), select(select(!vec4<bool>(false, global4.x, global4.x, global4.x), !vec4<bool>(global4.x, global4.x, global4.x, global4.x), func_1(global1[_wgslsmith_index_u32(15077u, 16u)], global1[_wgslsmith_index_u32(4294967295u, 16u)])), vec4<bool>(true, true, any(global3[_wgslsmith_index_u32(4294967295u, 31u)]), global4.x), global4.x), true || global4.x), vec4<bool>(global4.x, all(select(func_1(global1[_wgslsmith_index_u32(0u, 16u)], Struct_1(-1000f, 4294967295u, global4.x, vec2<i32>(u_input.a.x, -29629i))), !vec4<bool>(global4.x, global4.x, false, global4.x), vec4<bool>(true, global4.x, global4.x, global4.x))), !(_wgslsmith_div_i32(u_input.a.x, u_input.a.x) > -2147483647i), true));
    global3 = array<vec2<bool>, 31>();
    global0 = array<vec4<u32>, 18>();
    global4 = vec2<bool>(var_0.x, all(var_0.xw));
    global4 = global3[_wgslsmith_index_u32(~4294967295u | select(~_wgslsmith_mult_u32(_wgslsmith_div_u32(0u, 4294967295u), ~4294967295u), 1u, var_0.x), 31u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_i32(-((i32(-1i) * -47348i) ^ (u_input.a.x << (0u % 32u))), _wgslsmith_clamp_i32(-(i32(-1i) * -16173i), u_input.a.x | -2147483647i, -u_input.a.x)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -644f))));
}


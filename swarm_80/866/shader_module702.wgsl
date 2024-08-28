struct Struct_1 {
    a: u32,
    b: vec4<u32>,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: i32,
    d: i32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: array<Struct_1, 11>;

var<private> global2: vec2<bool>;

var<private> global3: array<bool, 13> = array<bool, 13>(true, false, false, false, true, true, false, true, false, true, true, false, false);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: u32) -> u32 {
    global3 = array<bool, 13>();
    var var_0 = !select(select(!select(vec3<bool>(global2.x, global3[_wgslsmith_index_u32(4294967295u, 13u)], true), vec3<bool>(global2.x, true, true), global3[_wgslsmith_index_u32(1u, 13u)]), !select(vec3<bool>(false, global2.x, false), vec3<bool>(false, false, global3[_wgslsmith_index_u32(arg_1.b.x, 13u)]), vec3<bool>(false, global2.x, global2.x)), !vec3<bool>(true, global2.x, global3[_wgslsmith_index_u32(4294967295u, 13u)])), vec3<bool>(global3[_wgslsmith_index_u32(arg_3, 13u)], global3[_wgslsmith_index_u32(arg_3 | _wgslsmith_clamp_u32(0u, arg_3, 49264u), 13u)], false), true);
    let var_1 = Struct_1(firstLeadingBit(~(~u_input.b)), ~(~arg_1.b ^ ~vec4<u32>(0u, arg_3, 1u, arg_3)), abs(arg_1.c));
    let var_2 = _wgslsmith_f_op_vec2_f32(round(arg_0.yz));
    var var_3 = global3[_wgslsmith_index_u32(reverseBits(41602u), 13u)];
    return ~_wgslsmith_mult_u32(0u, _wgslsmith_sub_u32(~arg_3, max(19416u, arg_3)) << (var_1.a % 32u));
}

fn func_2(arg_0: Struct_1, arg_1: i32, arg_2: Struct_1) -> u32 {
    let var_0 = arg_2;
    var var_1 = Struct_1(1u, vec4<u32>(_wgslsmith_mult_u32(72u ^ (var_0.a << (u_input.b % 32u)), 0u), 0u, ~0u, 0u << (u_input.b % 32u)), ~min(~_wgslsmith_div_vec2_u32(var_0.c, vec2<u32>(arg_0.b.x, 1u)), ~vec2<u32>(4294967295u, 1u)));
    let var_2 = _wgslsmith_add_i32(u_input.a.x, global0.x);
    var var_3 = ~(~vec4<u32>(var_0.a, u_input.b, ~func_3(vec4<f32>(659f, -793f, 365f, -164f), Struct_1(0u, vec4<u32>(var_0.a, u_input.b, var_1.a, arg_2.a), arg_0.c), Struct_1(u_input.b, vec4<u32>(arg_2.a, 84741u, 15572u, 1u), vec2<u32>(45387u, 97537u)), 7431u), abs(_wgslsmith_dot_vec2_u32(var_0.c, vec2<u32>(u_input.b, arg_0.a)))));
    var var_4 = vec3<i32>(max(abs(reverseBits(-24115i)), global0.x), 1i, ~u_input.a.x);
    return ~1u;
}

fn func_1(arg_0: i32) -> vec3<bool> {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2073f + 699f) + 2440f) - -1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(2470f - -654f), 1557f)) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(-688f, 1581f)), _wgslsmith_f_op_f32(1015f + 974f))))), 1231f);
    var var_1 = 6438i;
    global1 = array<Struct_1, 11>();
    global0 = ~(vec4<i32>(arg_0, 14153i, ~1i, _wgslsmith_mod_i32(countOneBits(arg_0), -1i)) & vec4<i32>(arg_0, _wgslsmith_div_i32(-2820i, i32(-1i) * -3241i), _wgslsmith_mult_i32(arg_0, 26037i), arg_0));
    let var_2 = vec4<i32>(14123i, 1i, u_input.a.x, -5363i >> (abs(func_2(global1[_wgslsmith_index_u32(firstTrailingBit(19635u), 11u)], arg_0, Struct_1(u_input.b, vec4<u32>(0u, 7580u, u_input.b, u_input.b), vec2<u32>(28375u, 17147u)))) % 32u));
    return vec3<bool>(global2.x, global2.x, true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(!func_1(global0.x), vec3<bool>(all(vec2<bool>(true, all(vec4<bool>(false, true, global2.x, true)))), false, !(global0.x > 3279i) || any(select(vec4<bool>(global3[_wgslsmith_index_u32(0u, 13u)], true, global3[_wgslsmith_index_u32(u_input.b, 13u)], false), vec4<bool>(global3[_wgslsmith_index_u32(u_input.b, 13u)], global3[_wgslsmith_index_u32(u_input.b, 13u)], global3[_wgslsmith_index_u32(1u, 13u)], true), global2.x))), vec3<bool>(true, true, true));
    let var_1 = u_input.a.x;
    let var_2 = u_input.b;
    let var_3 = vec3<f32>(_wgslsmith_f_op_f32(ceil(1f)), 1111f, _wgslsmith_f_op_f32(-2246f + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(-592f)), _wgslsmith_f_op_f32(627f - -954f)))))));
    var var_4 = 1029f;
    let var_5 = select(select(!vec3<bool>(var_2 == 1u, false, true), func_1(global0.x), vec3<bool>(true, select(select(global2.x, global3[_wgslsmith_index_u32(14721u, 13u)], var_0.x), var_0.x && global3[_wgslsmith_index_u32(u_input.b, 13u)], true), var_0.x)), vec3<bool>(true, any(vec3<bool>(false & global3[_wgslsmith_index_u32(4294967295u, 13u)], var_0.x || var_0.x, select(var_0.x, global2.x, false))), false), var_0.x);
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_clamp_u32(~countOneBits(0u), u_input.b, _wgslsmith_dot_vec2_u32(~vec2<u32>(var_2, 0u), firstTrailingBit(vec2<u32>(var_2, 39841u)))), min(vec3<u32>(u_input.b, u_input.b, _wgslsmith_div_u32(u_input.b, _wgslsmith_mod_u32(43720u, 32579u))), reverseBits(vec3<u32>(1u, var_2, ~var_2))), u_input.a.x, 2147483647i, _wgslsmith_div_vec4_i32(~reverseBits(-vec4<i32>(2147483647i, -2147483647i, global0.x, -1i)), _wgslsmith_sub_vec4_i32(_wgslsmith_add_vec4_i32(-vec4<i32>(var_1, -2147483647i, 0i, 2147483647i), vec4<i32>(u_input.a.x, -1i, -1987i, global0.x) ^ vec4<i32>(31630i, 37985i, -3827i, global0.x)), vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, 2147483647i), vec2<i32>(var_1, -1i)), global0.x, 2147483647i, ~u_input.a.x))));
}


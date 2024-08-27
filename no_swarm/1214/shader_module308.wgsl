struct Struct_1 {
    a: vec2<i32>,
    b: vec3<i32>,
    c: vec3<u32>,
    d: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec4<f32>,
    d: f32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<i32>(15989i, -11484i), vec3<i32>(2179i, 1i, 11745i), vec3<u32>(1u, 58425u, 49408u), 0i);

var<private> global1: array<u32, 27> = array<u32, 27>(25146u, 4294967295u, 0u, 22739u, 162165u, 1u, 1u, 32075u, 4294967295u, 4294967295u, 44232u, 62340u, 1u, 1u, 0u, 4294967295u, 69627u, 30353u, 1u, 1u, 68820u, 5748u, 1704u, 0u, 27698u, 74399u, 1u);

var<private> global2: array<bool, 7>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec3<f32>, arg_1: vec2<u32>, arg_2: bool, arg_3: vec2<bool>) -> u32 {
    var var_0 = !(!vec3<bool>(arg_3.x, !arg_2, !arg_2 || true));
    var var_1 = u_input.b;
    let var_2 = Struct_1(vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(global0.d, global0.d) << (vec2<u32>(4294967295u, global0.c.x) % vec2<u32>(32u)), u_input.c ^ vec2<i32>(-2147483647i, u_input.c.x)), reverseBits(1i)) >> (_wgslsmith_mod_vec2_u32(~(global0.c.zy & arg_1), ~min(arg_1, arg_1)) % vec2<u32>(32u)), _wgslsmith_div_vec3_i32(reverseBits(-global0.b) | vec3<i32>(-18408i, -u_input.c.x, _wgslsmith_clamp_i32(-5018i, -42742i, u_input.c.x)), global0.b), reverseBits(~abs(global0.c)), i32(-1i) * -23803i);
    global1 = array<u32, 27>();
    var_1 = _wgslsmith_clamp_vec3_u32(vec3<u32>(_wgslsmith_dot_vec3_u32(~abs(u_input.b), global0.c), var_2.c.x, 3985u), u_input.b, var_2.c);
    return _wgslsmith_dot_vec2_u32(var_1.zy, _wgslsmith_mult_vec2_u32(vec2<u32>(_wgslsmith_div_u32(1u, var_2.c.x), select(1u, 82241u, arg_3.x)), _wgslsmith_sub_vec2_u32(var_1.xy, abs(vec2<u32>(global1[_wgslsmith_index_u32(26867u, 27u)], 1u)))) >> (vec2<u32>(~var_1.x, _wgslsmith_add_u32(0u, 13385u) << (var_1.x % 32u)) % vec2<u32>(32u)));
}

fn func_2(arg_0: bool, arg_1: vec4<f32>, arg_2: f32) -> u32 {
    var var_0 = vec2<u32>(_wgslsmith_add_u32(~u_input.a, func_3(arg_1.zyw, ~select(vec2<u32>(4294967295u, global0.c.x), u_input.b.zz, vec2<bool>(true, global2[_wgslsmith_index_u32(u_input.b.x, 7u)])), true, vec2<bool>(!global2[_wgslsmith_index_u32(u_input.a, 7u)], true))), ~abs(u_input.a));
    global1 = array<u32, 27>();
    var var_1 = 46562u;
    var var_2 = Struct_1(global0.b.yx, _wgslsmith_clamp_vec3_i32(-(~vec3<i32>(global0.d, u_input.c.x, global0.b.x) >> (abs(vec3<u32>(global0.c.x, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(55591u, 27u)], 27u)], 41929u)) % vec3<u32>(32u))), ~vec3<i32>(max(-17036i, 1i), global0.a.x, ~global0.d), _wgslsmith_clamp_vec3_i32(select(_wgslsmith_mod_vec3_i32(vec3<i32>(1i, u_input.c.x, 5837i), global0.b), global0.b, vec3<bool>(true, arg_0, global2[_wgslsmith_index_u32(68035u, 7u)])), ~(-global0.b), countOneBits(global0.b))), u_input.b, _wgslsmith_clamp_i32(global0.a.x, countOneBits(-u_input.c.x), u_input.c.x) ^ 57352i);
    let var_3 = any(select(select(select(!vec2<bool>(false, arg_0), vec2<bool>(true, global2[_wgslsmith_index_u32(u_input.a, 7u)]), true), select(vec2<bool>(global2[_wgslsmith_index_u32(0u, 7u)], true), select(vec2<bool>(false, false), vec2<bool>(global2[_wgslsmith_index_u32(global0.c.x, 7u)], true), vec2<bool>(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_2.c.x, 27u)], 7u)], true)), global2[_wgslsmith_index_u32(1u, 7u)]), vec2<bool>(global2[_wgslsmith_index_u32(98749u, 7u)] | global2[_wgslsmith_index_u32(1u, 7u)], false && arg_0)), vec2<bool>(arg_0, false), true));
    return firstTrailingBit(var_0.x);
}

fn func_1(arg_0: u32, arg_1: vec3<u32>, arg_2: i32, arg_3: f32) -> Struct_1 {
    var var_0 = Struct_1(firstTrailingBit(vec2<i32>(firstTrailingBit(-1i), global0.b.x)), min(vec3<i32>(abs(1i) << (global0.c.x % 32u), abs(u_input.c.x), 0i), global0.b), vec3<u32>(arg_1.x, arg_0, ~func_2(all(vec2<bool>(global2[_wgslsmith_index_u32(4986u, 7u)], true)), _wgslsmith_f_op_vec4_f32(vec4<f32>(239f, -704f, arg_3, -715f) - vec4<f32>(arg_3, -512f, arg_3, 543f)), 1646f)), 0i);
    var var_1 = !vec2<bool>(!(!(73733u < var_0.c.x)), all(!select(vec4<bool>(false, global2[_wgslsmith_index_u32(0u, 7u)], false, false), vec4<bool>(false, global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a, 27u)], 7u)], global2[_wgslsmith_index_u32(arg_0, 7u)], global2[_wgslsmith_index_u32(u_input.b.x, 7u)]), vec4<bool>(true, global2[_wgslsmith_index_u32(arg_1.x, 7u)], global2[_wgslsmith_index_u32(7772u, 7u)], true))));
    var_0 = Struct_1(_wgslsmith_clamp_vec2_i32(global0.b.xz, var_0.b.zy, -global0.b.xz), _wgslsmith_clamp_vec3_i32(_wgslsmith_sub_vec3_i32(~vec3<i32>(var_0.a.x, 16346i, 28270i), vec3<i32>(-28736i, 8889i, global0.b.x)), global0.b, global0.b) & -var_0.b, vec3<u32>(arg_0, ~(countOneBits(0u) << (global0.c.x % 32u)), 1u), 2147483647i ^ firstTrailingBit(global0.a.x));
    let var_2 = Struct_1(select(~(~global0.b.zz), _wgslsmith_mult_vec2_i32(global0.b.zz, var_0.b.zz | var_0.b.yz), !global2[_wgslsmith_index_u32(~(~u_input.a), 7u)]), global0.b ^ var_0.b, abs(global0.c), -78943i);
    var_1 = vec2<bool>(!(~_wgslsmith_clamp_i32(var_0.b.x, 40267i, -17960i) <= _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(u_input.c, var_0.a), u_input.c << (vec2<u32>(var_2.c.x, u_input.b.x) % vec2<u32>(32u)))), !(!all(!vec3<bool>(var_1.x, false, false))));
    return Struct_1(firstTrailingBit(var_2.b.yz), reverseBits(-firstLeadingBit(~var_2.b)), firstLeadingBit(vec3<u32>(0u, ~var_0.c.x, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_0, var_2.c.x, global1[_wgslsmith_index_u32(4294967295u, 27u)]), vec3<u32>(arg_1.x, global1[_wgslsmith_index_u32(var_0.c.x, 27u)], arg_0)))) ^ firstTrailingBit(vec3<u32>(_wgslsmith_sub_u32(36101u, 0u), ~18832u, 70147u)), -var_0.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(0u, global0.c, ~firstLeadingBit(max(global0.b.x, i32(-1i) * -60034i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(355f)), _wgslsmith_f_op_f32(1728f + -1186f)))));
    let var_1 = var_0;
    let var_2 = vec4<f32>(-342f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1f * -1000f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1771f))))) - 577f), -676f, _wgslsmith_f_op_f32(1650f + _wgslsmith_f_op_f32(floor(-762f))));
    var var_3 = select(!vec4<bool>(true, true, false, all(select(vec2<bool>(false, global2[_wgslsmith_index_u32(var_0.c.x, 7u)]), vec2<bool>(global2[_wgslsmith_index_u32(1u, 7u)], global2[_wgslsmith_index_u32(var_1.c.x, 7u)]), global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(8851u, 27u)], 7u)]))), !select(vec4<bool>(!global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 27u)], 7u)], true, global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(1u, 1u, 15930u), 7u)], true), !vec4<bool>(true, global2[_wgslsmith_index_u32(1u, 7u)], true, global2[_wgslsmith_index_u32(var_0.c.x, 7u)]), 234f != var_2.x), true);
    let var_4 = countOneBits(_wgslsmith_add_vec2_u32(vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, var_0.c.x, 11406u, 10268u), vec4<u32>(global0.c.x, global0.c.x, 128247u, 49417u)), var_0.c.x), vec2<u32>(~var_1.c.x, ~u_input.b.x))) | global0.c.yx;
    let var_5 = Struct_1(var_0.b.xz, -global0.b, global0.c, -countOneBits(~u_input.c.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_i32(abs(-_wgslsmith_sub_vec4_i32(vec4<i32>(global0.b.x, u_input.c.x, 35185i, 2147483647i), vec4<i32>(var_5.d, 2147483647i, var_1.a.x, 0i))), _wgslsmith_mod_vec4_i32(vec4<i32>(var_1.b.x | u_input.c.x, u_input.c.x, 1i, 1i), ~vec4<i32>(-2147483647i, -10143i, global0.b.x, -13868i) >> (_wgslsmith_div_vec4_u32(vec4<u32>(38119u, 1u, var_4.x, u_input.b.x), vec4<u32>(1u, var_1.c.x, 59394u, var_0.c.x)) % vec4<u32>(32u)))), _wgslsmith_mult_u32(62904u, ~global1[_wgslsmith_index_u32(~(~4294967295u), 27u)]), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_2), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(2238f, var_2.x, var_2.x, -302f), vec4<f32>(var_2.x, var_2.x, 339f, var_2.x)))), var_2.x, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1009f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_2.x, 147f, var_3.x)) + _wgslsmith_f_op_f32(2175f * 639f)) + _wgslsmith_f_op_f32(f32(-1f) * -1113f)), -348f, _wgslsmith_f_op_f32(var_2.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1277f, var_2.x)) + _wgslsmith_f_op_f32(f32(-1f) * -457f)))));
}


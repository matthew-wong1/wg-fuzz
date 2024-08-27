struct Struct_1 {
    a: u32,
    b: bool,
    c: u32,
    d: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 15>;

var<private> global1: array<vec3<bool>, 9> = array<vec3<bool>, 9>(vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true));

var<private> global2: Struct_1;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec4<i32>) -> bool {
    var var_0 = Struct_1(29674u, global2.b, firstLeadingBit(~(~global2.a)), ~(~_wgslsmith_dot_vec2_u32(vec2<u32>(global2.c, global2.c), vec2<u32>(23629u, global2.d))) ^ 0u);
    global2 = global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(~min(21311u, 75766u), 4294967295u), _wgslsmith_div_vec2_u32(~vec2<u32>(3759u, 0u), vec2<u32>(max(global2.a, 4294967295u), _wgslsmith_sub_u32(global2.c, var_0.d)))), 15u)];
    var var_1 = global2.b;
    var var_2 = vec4<i32>(-19257i, _wgslsmith_mod_i32(-44384i, arg_0.x), u_input.a, arg_0.x);
    var_2 = _wgslsmith_mod_vec4_i32(~vec4<i32>(select(~35632i, _wgslsmith_sub_i32(var_2.x, var_2.x), any(vec4<bool>(true, var_0.b, true, true))), _wgslsmith_add_i32(-arg_0.x, abs(arg_0.x)), firstTrailingBit(_wgslsmith_div_i32(var_2.x, arg_0.x)), 1i), vec4<i32>(0i | _wgslsmith_div_i32(select(var_2.x, -7575i, false), _wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.x, 40171i), arg_0.wy)), firstTrailingBit(~_wgslsmith_mult_i32(-2147483647i, 1i)), abs(_wgslsmith_mod_i32(-50759i, arg_0.x | arg_0.x)), _wgslsmith_sub_i32(~(-1i), countOneBits(_wgslsmith_mod_i32(-17910i, 42370i)))));
    return false;
}

fn func_4(arg_0: vec2<bool>, arg_1: bool, arg_2: f32) -> u32 {
    global0 = array<Struct_1, 15>();
    let var_0 = Struct_1(_wgslsmith_mod_u32(18301u, firstTrailingBit(countOneBits(59809u))) ^ firstLeadingBit(_wgslsmith_mult_u32(global2.a << (global2.a % 32u), _wgslsmith_sub_u32(global2.d, global2.c))), any(!vec3<bool>(!arg_1, true || arg_1, any(arg_0))), global2.c ^ max(_wgslsmith_mod_u32(14251u, _wgslsmith_dot_vec3_u32(vec3<u32>(global2.c, 1u, 4294967295u), vec3<u32>(4872u, 4294967295u, 0u))), abs(~30133u)), select(_wgslsmith_mod_u32(~global2.c, ~79983u), 0u, arg_1));
    global1 = array<vec3<bool>, 9>();
    return _wgslsmith_dot_vec4_u32(vec4<u32>(global2.d, _wgslsmith_dot_vec3_u32(abs(vec3<u32>(20793u, global2.d, var_0.d)), abs(vec3<u32>(1992u, var_0.a, var_0.a))), firstLeadingBit(15326u), _wgslsmith_div_u32(_wgslsmith_mod_u32(1u, 1u), var_0.a)) | select(select(vec4<u32>(0u, global2.c, global2.d, 62263u), _wgslsmith_mult_vec4_u32(vec4<u32>(var_0.c, global2.a, 21020u, var_0.c), vec4<u32>(4294967295u, var_0.c, 563u, 0u)), true), vec4<u32>(_wgslsmith_clamp_u32(global2.d, var_0.a, global2.c), ~19680u, min(4294967295u, 9192u), ~0u), func_3(vec4<i32>(u_input.a, u_input.b.x, u_input.b.x, u_input.a))), abs(~(~vec4<u32>(global2.a, 4294967295u, 1u, var_0.a))) | select(vec4<u32>(_wgslsmith_div_u32(var_0.a, 0u), ~4294967295u, global2.c, 100795u), _wgslsmith_sub_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(2174u, global2.a, 1u, var_0.a), vec4<u32>(1u, 0u, var_0.c, 23573u), vec4<u32>(4294967295u, 4294967295u, global2.a, global2.a)), select(vec4<u32>(48524u, global2.c, var_0.d, 4294967295u), vec4<u32>(13691u, global2.a, global2.a, 8442u), vec4<bool>(var_0.b, var_0.b, arg_1, var_0.b))), arg_1));
}

fn func_2(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: vec3<u32>, arg_3: f32) -> Struct_1 {
    global1 = array<vec3<bool>, 9>();
    var var_0 = Struct_1(global2.a >> (25734u % 32u), global2.b, 0u, ~_wgslsmith_mod_u32(func_4(select(vec2<bool>(arg_0.b, global2.b), vec2<bool>(arg_0.b, false), vec2<bool>(true, false)), func_3(vec4<i32>(arg_1.x, arg_1.x, arg_1.x, -2147483647i)), arg_3), (global2.d << (arg_2.x % 32u)) << (71295u % 32u)));
    global1 = array<vec3<bool>, 9>();
    var var_1 = Struct_1(0u, any(select(!(!vec2<bool>(arg_0.b, false)), select(!vec2<bool>(var_0.b, arg_0.b), vec2<bool>(global2.b, var_0.b), false), vec2<bool>(any(vec2<bool>(var_0.b, false)), true))), ~arg_2.x, arg_2.x & 32024u);
    var var_2 = _wgslsmith_f_op_f32(-arg_3);
    return Struct_1(arg_0.d, !(var_0.b && arg_0.b), ~global2.c & ~_wgslsmith_add_u32(var_0.c >> (arg_0.a % 32u), _wgslsmith_dot_vec3_u32(arg_2, vec3<u32>(arg_2.x, arg_0.a, arg_0.c))), max(84816u, (0u | (var_1.c ^ 35565u)) ^ ~_wgslsmith_div_u32(var_0.d, 1u)));
}

fn func_5(arg_0: Struct_1) -> u32 {
    let var_0 = global0[_wgslsmith_index_u32(~(~min(firstLeadingBit(countOneBits(arg_0.d)), _wgslsmith_mod_u32(func_4(vec2<bool>(true, true), true, 635f), ~global2.a))), 15u)];
    var var_1 = -(i32(-1i) * -firstLeadingBit(0i));
    var var_2 = 660f;
    global0 = array<Struct_1, 15>();
    var_2 = -2304f;
    return firstTrailingBit(~(~global2.d));
}

fn func_1(arg_0: vec4<i32>, arg_1: vec4<u32>, arg_2: u32) -> Struct_1 {
    var var_0 = Struct_1(9481u, true, func_5(func_2(Struct_1(arg_1.x, false, 1u, arg_2), -select(vec3<i32>(arg_0.x, arg_0.x, arg_0.x), vec3<i32>(arg_0.x, 1i, 4447i), global2.b), select(_wgslsmith_sub_vec3_u32(arg_1.xyw, vec3<u32>(arg_2, arg_2, 0u)), abs(arg_1.xyx), true), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1574f, -716f)))), global2.d);
    let var_1 = vec4<bool>(true, global2.b, false, var_0.b);
    var var_2 = func_4(!select(vec2<bool>(true, func_3(u_input.b)), var_1.yx, false), true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -181f)));
    var var_3 = func_2(global0[_wgslsmith_index_u32(func_2(Struct_1(~arg_2, !var_1.x, _wgslsmith_mod_u32(arg_1.x, var_0.d), 36187u), vec3<i32>(arg_0.x, firstLeadingBit(arg_0.x), arg_0.x), vec3<u32>(0u, arg_1.x, ~4294967295u), 2214f).a ^ (_wgslsmith_mult_u32(arg_1.x, arg_1.x) | ~(~59231u)), 15u)], -(~vec3<i32>(u_input.a, firstTrailingBit(-9257i), 0i)), vec3<u32>(~(_wgslsmith_clamp_u32(1u, var_0.a, global2.c) << (~48210u % 32u)), 4854u, ~(~1u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(971f + _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(sign(324f))))));
    let var_4 = func_2(global0[_wgslsmith_index_u32(countOneBits(_wgslsmith_add_u32(~arg_1.x, _wgslsmith_mult_u32(var_3.c, global2.a))) ^ global2.c, 15u)], vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-41884i, max(54755i, -1i)), arg_0.yy), _wgslsmith_dot_vec4_i32(select(select(u_input.b, arg_0, var_1), countOneBits(arg_0), any(vec3<bool>(var_1.x, global2.b, var_0.b))), arg_0), i32(-1i) * -26287i), max(vec3<u32>(~6339u, ~1u, ~0u), select(arg_1.zyx, firstTrailingBit(_wgslsmith_sub_vec3_u32(vec3<u32>(var_0.d, 0u, 2004u), vec3<u32>(31295u, 0u, 118201u))), select(!vec3<bool>(var_3.b, true, var_3.b), !vec3<bool>(true, global2.b, var_0.b), true & var_1.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -583f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -501f))))));
    return Struct_1(var_3.d, true, 39u << (max(_wgslsmith_dot_vec2_u32(abs(vec2<u32>(1u, 1u)), _wgslsmith_add_vec2_u32(arg_1.wx, arg_1.zy)), 0u) % 32u), func_4(!select(!var_1.ww, var_1.xx, select(var_1.wy, var_1.wx, vec2<bool>(var_4.b, var_4.b))), !var_4.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -324f), _wgslsmith_f_op_f32(trunc(937f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec3<bool>, 9>();
    var var_0 = global0[_wgslsmith_index_u32(global2.a, 15u)];
    global0 = array<Struct_1, 15>();
    global2 = func_1(~(~(~vec4<i32>(u_input.a, -30352i, 26355i, 0i))), vec4<u32>(_wgslsmith_add_u32(0u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(global2.a, var_0.d, 1u, var_0.c), vec4<u32>(var_0.c, global2.a, var_0.d, global2.c))), global2.c, abs(global2.a), abs(26013u)), ~4294967295u);
    let var_1 = !global1[_wgslsmith_index_u32(global2.c, 9u)];
    let var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1061f, -1339f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-443f))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec3_u32(~_wgslsmith_div_vec3_u32(vec3<u32>(0u, 0u, 44706u), _wgslsmith_mod_vec3_u32(vec3<u32>(var_0.d, var_0.c, var_0.a), vec3<u32>(global2.c, var_0.c, global2.d))), select(firstTrailingBit(vec3<u32>(51045u, 4294967295u, global2.c)), firstLeadingBit(vec3<u32>(var_0.a, var_0.c, 0u)), vec3<bool>(false, true, true)) & ~min(vec3<u32>(var_0.d, global2.a, global2.d), vec3<u32>(var_0.a, global2.d, 1u))));
}


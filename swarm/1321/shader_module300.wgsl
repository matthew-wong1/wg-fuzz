struct Struct_1 {
    a: vec3<bool>,
    b: vec2<u32>,
    c: u32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: vec3<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(-23789i, 2147483647i, 7924i);

var<private> global1: array<i32, 18> = array<i32, 18>(5352i, 0i, 42451i, 0i, 2147483647i, 0i, -11382i, 37509i, i32(-2147483648), i32(-2147483648), 14195i, 1i, 49556i, 2147483647i, 35908i, 1i, -55513i, 0i);

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: u32) -> vec2<u32> {
    global1 = array<i32, 18>();
    global0 = vec3<i32>(i32(-1i) * -2147483647i, 2147483647i, -1i >> ((_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 0u), ~u_input.b.xz) >> (0u % 32u)) % 32u));
    let var_0 = all(select(select(!select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), false), vec3<bool>(true, true, true), any(vec2<bool>(false, false)) || any(vec2<bool>(false, true))), select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(true, true, arg_0 != u_input.a)), vec3<bool>(true | any(vec4<bool>(false, true, false, false)), any(vec2<bool>(false, false)), true)));
    let var_1 = Struct_1(!(!select(select(vec3<bool>(false, true, var_0), vec3<bool>(var_0, var_0, true), vec3<bool>(false, var_0, var_0)), vec3<bool>(true, false, var_0), var_0)), vec2<u32>(firstTrailingBit(arg_0), ~max(~57527u, ~arg_0)), 5316u);
    var var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(934f)) + _wgslsmith_f_op_f32(f32(-1f) * -391f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(-961f)), 297f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1525f + _wgslsmith_f_op_f32(trunc(-404f))) + _wgslsmith_f_op_f32(f32(-1f) * -209f))));
    return _wgslsmith_div_vec2_u32(vec2<u32>(var_1.b.x, max(_wgslsmith_add_u32(~29878u, 1u), ~arg_0)), _wgslsmith_sub_vec2_u32(vec2<u32>(69257u, 4294967295u) << (u_input.b.zx % vec2<u32>(32u)), u_input.b.yz) << (u_input.b.zz % vec2<u32>(32u)));
}

fn func_2(arg_0: Struct_1, arg_1: f32) -> u32 {
    var var_0 = arg_0;
    var var_1 = Struct_1(select(!var_0.a, select(!select(var_0.a, arg_0.a, arg_0.a), !(!vec3<bool>(arg_0.a.x, false, arg_0.a.x)), !arg_0.a), vec3<bool>(true, true, false)), arg_0.b, _wgslsmith_mod_u32(select(~_wgslsmith_mult_u32(1u, 29765u), ~6763u, true), 0u));
    let var_2 = Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(trunc(-490f)), _wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(125f, arg_1)), _wgslsmith_f_op_f32(select(-995f, arg_1, false)))), _wgslsmith_div_vec2_u32(abs(~vec2<u32>(1u, 1129u)), _wgslsmith_mult_vec2_u32(_wgslsmith_div_vec2_u32(~arg_0.b, func_3(0u)), var_1.b)));
    let var_3 = firstLeadingBit(((abs(u_input.b) & vec3<u32>(var_0.b.x, var_2.b.x, 0u)) << (u_input.b % vec3<u32>(32u))) & vec3<u32>(var_0.c, u_input.b.x, var_1.c));
    var var_4 = vec4<i32>(-1i) * -abs(_wgslsmith_sub_vec4_i32(~vec4<i32>(global1[_wgslsmith_index_u32(var_2.b.x, 18u)], global0.x, global1[_wgslsmith_index_u32(var_3.x, 18u)], global0.x), _wgslsmith_add_vec4_i32(vec4<i32>(-50802i, 2147483647i, global0.x, global0.x), vec4<i32>(global0.x, 1i, global1[_wgslsmith_index_u32(var_3.x, 18u)], global1[_wgslsmith_index_u32(0u, 18u)]))));
    return ~min(var_0.b.x, 83270u);
}

fn func_1(arg_0: f32) -> Struct_1 {
    var var_0 = min(_wgslsmith_dot_vec4_u32(vec4<u32>(~0u, 1u, 29430u, ~4294967295u), ~abs(vec4<u32>(1u, u_input.a, 5300u, 0u))), ~abs(func_2(Struct_1(vec3<bool>(true, true, true), u_input.b.xz, u_input.a), 1000f))) >> (u_input.b.x % 32u);
    global0 = _wgslsmith_add_vec3_i32(select(vec3<i32>(select(global0.x, _wgslsmith_sub_i32(global1[_wgslsmith_index_u32(u_input.a, 18u)], 38138i), all(vec3<bool>(false, true, true))), ~global1[_wgslsmith_index_u32(4294967295u, 18u)] | 2147483647i, global1[_wgslsmith_index_u32(min(~53732u, u_input.a), 18u)]), (~vec3<i32>(global0.x, global1[_wgslsmith_index_u32(u_input.a, 18u)], global0.x) >> (u_input.b % vec3<u32>(32u))) >> (select(vec3<u32>(1u, u_input.a, 45905u), abs(u_input.b), any(vec4<bool>(false, true, true, true))) % vec3<u32>(32u)), select(!select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(true, false, false)), vec3<bool>(true, true, true), vec3<bool>(true, false, false))), max(vec3<i32>(global0.x, _wgslsmith_dot_vec2_i32(vec2<i32>(-21531i, global1[_wgslsmith_index_u32(0u, 18u)]) >> (u_input.b.xz % vec2<u32>(32u)), ~vec2<i32>(-56899i, -53792i)), abs(reverseBits(-27068i))), max(_wgslsmith_clamp_vec3_i32(vec3<i32>(global1[_wgslsmith_index_u32(u_input.a, 18u)], global0.x, -1i) | vec3<i32>(global0.x, global0.x, 2147483647i), _wgslsmith_sub_vec3_i32(vec3<i32>(global0.x, global0.x, 0i), vec3<i32>(-2147483647i, global0.x, 49341i)), vec3<i32>(global0.x, global0.x, global1[_wgslsmith_index_u32(4294967295u, 18u)])), _wgslsmith_div_vec3_i32(vec3<i32>(-2147483647i, 25354i, 1i), _wgslsmith_clamp_vec3_i32(vec3<i32>(global1[_wgslsmith_index_u32(u_input.a, 18u)], global1[_wgslsmith_index_u32(1u, 18u)], -1i), vec3<i32>(-24235i, global1[_wgslsmith_index_u32(0u, 18u)], 49691i), vec3<i32>(-2147483647i, global0.x, -38202i))))));
    var var_1 = Struct_1(vec3<bool>(true, true, true), vec2<u32>(u_input.a, 4294967295u), _wgslsmith_add_u32(~u_input.a, ~u_input.a));
    var_0 = func_3(u_input.b.x).x;
    var var_2 = min(firstLeadingBit(_wgslsmith_mult_vec4_u32(vec4<u32>(~8779u, ~var_1.c, var_1.c >> (u_input.a % 32u), _wgslsmith_dot_vec2_u32(u_input.b.yx, var_1.b)), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b.x, var_1.b.x, 22379u, 20140u), vec4<u32>(var_1.c, 43737u, var_1.b.x, u_input.a) ^ vec4<u32>(78423u, 73547u, 13480u, u_input.a)))), vec4<u32>(u_input.a >> (var_1.c % 32u), ~u_input.a, _wgslsmith_mod_u32(u_input.a, max(u_input.b.x, _wgslsmith_clamp_u32(u_input.b.x, u_input.a, u_input.a))), 1u));
    return Struct_1(vec3<bool>(true, true, var_1.a.x | !(var_1.a.x & var_1.a.x)), ~(~select(var_1.b, vec2<u32>(var_1.c, var_2.x) << (u_input.b.zx % vec2<u32>(32u)), false | var_1.a.x)), ~var_1.b.x | min(var_1.b.x, func_2(Struct_1(vec3<bool>(var_1.a.x, true, var_1.a.x), var_1.b, var_2.x), _wgslsmith_div_f32(arg_0, arg_0))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = min(-4165i, 24577i);
    global1 = array<i32, 18>();
    var var_1 = !(!vec4<bool>(max(u_input.a, u_input.a) <= u_input.a, any(vec2<bool>(false, true)), ~16469i == global0.x, any(select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), true))));
    var var_2 = func_1(_wgslsmith_f_op_f32(abs(-609f)));
    var var_3 = Struct_2(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(395f, -1295f, -305f, 422f), vec4<f32>(1000f, 635f, 711f, 212f), vec4<bool>(var_2.a.x, var_2.a.x, var_2.a.x, var_2.a.x)))) - vec4<f32>(-2444f, 139f, -178f, -991f)))), _wgslsmith_div_vec2_u32(u_input.b.xz, u_input.b.zy));
    var var_4 = func_1(710f);
    let var_5 = func_1(_wgslsmith_f_op_f32(abs(-223f)));
    let var_6 = var_4.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(var_3.a * _wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(var_3.a)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.a.x, var_3.a.x, var_3.a.x, -476f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(var_3.a)) * vec4<f32>(var_3.a.x, var_3.a.x, var_3.a.x, 747f))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.a.x)), _wgslsmith_f_op_f32(sign(var_3.a.x)))), _wgslsmith_sub_vec3_u32(u_input.b, min(vec3<u32>(73782u, ~var_2.c, _wgslsmith_dot_vec3_u32(u_input.b, vec3<u32>(0u, 0u, var_5.b.x))), vec3<u32>(func_2(Struct_1(var_1.yzx, vec2<u32>(30584u, 37360u), 4294967295u), 775f), max(var_4.b.x, 4294967295u), abs(4294967295u)))), _wgslsmith_add_u32(93883u, var_5.c));
}


struct Struct_1 {
    a: i32,
    b: bool,
    c: u32,
    d: bool,
}

struct Struct_2 {
    a: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(4294967295u, 4294967295u);

var<private> global1: vec2<u32> = vec2<u32>(1u, 76255u);

var<private> global2: bool = false;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: f32, arg_1: Struct_1, arg_2: vec4<f32>, arg_3: Struct_1) -> bool {
    var var_0 = 41038u;
    var var_1 = Struct_1(-2147483647i, arg_1.b, _wgslsmith_mod_u32(~_wgslsmith_mod_u32(global1.x, 0u), _wgslsmith_mult_u32(global1.x >> (4294967295u % 32u), 4294967295u)), !arg_3.d);
    var var_2 = Struct_2(_wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_div_i32(2147483647i, 1i), abs(var_1.a), firstTrailingBit(-2147483647i), reverseBits(_wgslsmith_mod_i32(-1i, 24196i))), vec4<i32>(1i, ~_wgslsmith_clamp_i32(26249i, -13973i, arg_3.a), _wgslsmith_dot_vec3_i32(vec3<i32>(arg_1.a, 37674i, arg_3.a), vec3<i32>(-72458i, arg_3.a, arg_1.a)) | -33875i, arg_1.a)));
    var_1 = Struct_1(select(reverseBits(_wgslsmith_mult_i32(-1i, _wgslsmith_dot_vec3_i32(vec3<i32>(-51229i, var_1.a, arg_1.a), vec3<i32>(var_2.a, arg_1.a, -13044i)))), abs(-1i) | _wgslsmith_dot_vec3_i32(vec3<i32>(arg_3.a, 5532i, 1i), firstLeadingBit(vec3<i32>(2374i, arg_1.a, arg_3.a))), all(!vec4<bool>(arg_1.d, arg_3.b, true, arg_1.d))), !(!(arg_1.a != arg_3.a)) & arg_3.d, arg_1.c, var_1.b);
    let var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(arg_2, arg_2)) + _wgslsmith_f_op_vec4_f32(min(arg_2, arg_2)));
    return -countOneBits(-2147483647i) < (i32(-1i) * -_wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 0i, var_1.a, 1i), vec4<i32>(arg_1.a, var_1.a, -2147483647i, -2147483647i)), var_1.a));
}

fn func_2() -> f32 {
    global2 = (false | select(select(func_3(-1388f, Struct_1(31480i, false, u_input.a.x, false), vec4<f32>(-2044f, 1487f, -686f, -2120f), Struct_1(-20466i, true, 22940u, true)), true, true), true, true)) && all(select(select(select(vec2<bool>(false, true), vec2<bool>(false, false), true), select(vec2<bool>(false, false), vec2<bool>(false, true), false), true), vec2<bool>(true, any(vec4<bool>(false, true, false, false))), any(vec4<bool>(false, false, true, true))));
    global1 = vec2<u32>(abs(select(~55616u, 4294967295u, any(vec2<bool>(true, true)))), ~global0.x ^ global0.x);
    let var_0 = Struct_1(-4896i, (abs(global0.x) != ~0u) && true, _wgslsmith_add_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(global0.x, 23195u, u_input.a.x, 34707u) & vec4<u32>(0u, global1.x, 91204u, 31188u), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, 4294967295u, global0.x), vec4<u32>(4294967295u, 22486u, u_input.a.x, 75545u))), _wgslsmith_sub_u32(~global0.x, global1.x)), _wgslsmith_dot_vec4_u32(vec4<u32>(global0.x, u_input.a.x, 44014u, 1u) << (vec4<u32>(global1.x, u_input.a.x, global1.x, global1.x) % vec4<u32>(32u)), ~vec4<u32>(1u, 38219u, 111517u, u_input.a.x)) != 46149u);
    global2 = all(select(vec2<bool>(any(!vec3<bool>(var_0.b, false, true)), false), !vec2<bool>(any(vec2<bool>(true, true)), all(vec3<bool>(false, false, var_0.b))), select(select(select(vec2<bool>(var_0.d, var_0.b), vec2<bool>(var_0.d, true), var_0.d), vec2<bool>(var_0.b, var_0.b), true), vec2<bool>(any(vec4<bool>(false, true, var_0.b, var_0.b)), !var_0.d), true)));
    let var_1 = -1223f;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -698f));
}

fn func_1(arg_0: u32, arg_1: vec4<i32>) -> vec4<bool> {
    global2 = any(select(select(select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, true)), select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, true), true), global1.x <= 10932u), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, false)), true), select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, false)))) && ((~55363i <= arg_1.x) & any(vec2<bool>(any(vec3<bool>(false, true, false)), true)));
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1357f)) * _wgslsmith_f_op_f32(1484f + 499f)) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_2())))))));
    var var_1 = Struct_1(~arg_1.x, true, 0u, all(vec3<bool>(true, !all(vec2<bool>(false, false)), true)));
    return vec4<bool>(true, all(vec3<bool>(true, true, true)) | false, !(!(all(vec4<bool>(var_1.d, var_1.d, var_1.d, false)) || all(vec4<bool>(false, true, var_1.b, var_1.d)))), any(!select(!vec3<bool>(false, var_1.d, true), vec3<bool>(var_1.d, true, false), !vec3<bool>(var_1.b, var_1.b, var_1.b))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(vec4<bool>(true, false, true, true), vec4<bool>(any(vec2<bool>(true, true)), true, all(select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), true)), all(func_1(global1.x, vec4<i32>(2147483647i, 2147483647i, -33246i, 2147483647i))) | false), select(vec4<bool>(select(func_1(global0.x, vec4<i32>(34389i, 1i, 2147483647i, 9695i)).x, any(vec4<bool>(false, false, false, false)), false), true, func_3(_wgslsmith_f_op_f32(f32(-1f) * -1000f), Struct_1(1059i, false, global0.x, false), vec4<f32>(-1000f, -1028f, 1050f, -1216f), Struct_1(2865i, true, 0u, true)), true), select(select(select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, false), false), vec4<bool>(false, false, true, true), any(vec2<bool>(false, false))), select(select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, true), true), vec4<bool>(true, true, true, true), true), abs(40307u) < countOneBits(u_input.a.x)), true));
    var_0 = select(vec4<bool>(true, !var_0.x, !var_0.x, var_0.x || (!var_0.x || false)), !select(vec4<bool>(true, true, true, true), vec4<bool>(false, var_0.x | false, any(var_0.yzx), !var_0.x), !any(vec4<bool>(false, true, false, var_0.x))), select(!vec4<bool>(!var_0.x, true, true, true), select(func_1(_wgslsmith_clamp_u32(u_input.a.x, global1.x, 33302u), vec4<i32>(-22166i, 11554i, 11292i, 2147483647i)), !(!vec4<bool>(var_0.x, var_0.x, false, false)), vec4<bool>(true, true, var_0.x, !var_0.x)), func_1(global1.x, countOneBits(vec4<i32>(-1i, -2147483647i, 9191i, -27679i))).x));
    let var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-196f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1051f - 514f))), 1f, 822f) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1000f, _wgslsmith_f_op_f32(1000f * -746f), -1060f), _wgslsmith_f_op_vec3_f32(vec3<f32>(146f, 978f, 917f) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-160f, -324f, -334f), vec3<f32>(-1000f, 264f, -1405f), var_0.x)))))));
    let var_2 = ~1u;
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(~_wgslsmith_dot_vec2_u32(~vec2<u32>(25557u, var_2), reverseBits(vec2<u32>(var_2, 4294967295u)))), i32(-1i) * -_wgslsmith_dot_vec3_i32(select(vec3<i32>(1i, -2147483647i, -1i), vec3<i32>(-5406i, -2147483647i, -4255i), vec3<bool>(true, var_0.x, false)), _wgslsmith_div_vec3_i32(vec3<i32>(1i, 28467i, -2147483647i), vec3<i32>(13884i, -28376i, 19542i))), _wgslsmith_mod_i32(firstTrailingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, 1i, 1i), _wgslsmith_mult_vec3_i32(vec3<i32>(35735i, 1i, -35469i), vec3<i32>(4073i, -55792i, 1i)))), firstTrailingBit(1i)));
}


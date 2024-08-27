struct Struct_1 {
    a: vec4<u32>,
    b: u32,
    c: u32,
    d: vec3<f32>,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: vec3<f32>,
    d: vec4<f32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 8> = array<Struct_1, 8>(Struct_1(vec4<u32>(33330u, 4294967295u, 23345u, 4294967295u), 9728u, 1u, vec3<f32>(-1027f, 1000f, 590f), vec2<i32>(2147483647i, -1i)), Struct_1(vec4<u32>(1u, 34569u, 0u, 40860u), 74253u, 4294967295u, vec3<f32>(884f, -353f, 415f), vec2<i32>(-13832i, i32(-2147483648))), Struct_1(vec4<u32>(18534u, 6616u, 1u, 0u), 0u, 0u, vec3<f32>(582f, -214f, 342f), vec2<i32>(61017i, 25211i)), Struct_1(vec4<u32>(87460u, 4294967295u, 1u, 0u), 3547u, 51439u, vec3<f32>(954f, -1000f, -116f), vec2<i32>(5695i, 0i)), Struct_1(vec4<u32>(34796u, 4294967295u, 0u, 4294967295u), 76455u, 4294967295u, vec3<f32>(1067f, -1152f, 1000f), vec2<i32>(-55070i, -1i)), Struct_1(vec4<u32>(35944u, 0u, 1u, 23326u), 32033u, 58905u, vec3<f32>(-1000f, 1344f, -221f), vec2<i32>(20693i, 0i)), Struct_1(vec4<u32>(5022u, 34732u, 54785u, 33895u), 2326u, 18630u, vec3<f32>(-1737f, 1436f, 183f), vec2<i32>(-18980i, -1i)), Struct_1(vec4<u32>(8553u, 1u, 48396u, 1u), 1u, 56975u, vec3<f32>(-996f, -359f, -2132f), vec2<i32>(0i, -64304i)));

var<private> global1: array<Struct_1, 32>;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec3<i32>, arg_1: vec2<u32>) -> bool {
    return all(vec2<bool>(true, any(!select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false)))));
}

fn func_2(arg_0: vec2<u32>, arg_1: vec4<bool>) -> bool {
    var var_0 = abs(_wgslsmith_dot_vec2_u32(~(u_input.b.yz ^ arg_0) << (abs(vec2<u32>(42029u, arg_0.x)) % vec2<u32>(32u)), _wgslsmith_div_vec2_u32(_wgslsmith_sub_vec2_u32(u_input.b.zx, vec2<u32>(5093u, arg_0.x)), _wgslsmith_mult_vec2_u32(vec2<u32>(arg_0.x, 0u), vec2<u32>(arg_0.x, u_input.b.x))) >> ((select(vec2<u32>(u_input.b.x, 1u), vec2<u32>(4294967295u, u_input.b.x), vec2<bool>(true, arg_1.x)) << (arg_0 % vec2<u32>(32u))) % vec2<u32>(32u))));
    var var_1 = func_3(vec3<i32>(u_input.a, ~(-2147483647i), u_input.c), max(select(u_input.b.zx, vec2<u32>(arg_0.x, 75135u) & arg_0, select(arg_1.xw, arg_1.xz, true)), vec2<u32>(1u >> (arg_0.x % 32u), ~4294967295u))) & true;
    var var_2 = arg_1;
    var var_3 = Struct_1(~_wgslsmith_div_vec4_u32(_wgslsmith_mult_vec4_u32(firstTrailingBit(vec4<u32>(4294967295u, u_input.b.x, u_input.b.x, 34387u)), ~vec4<u32>(1u, 1u, 1u, 56392u)), vec4<u32>(firstTrailingBit(arg_0.x), u_input.b.x, 4294967295u, select(u_input.b.x, 16269u, false))), _wgslsmith_dot_vec3_u32(~(~(~u_input.b)), u_input.b >> (_wgslsmith_add_vec3_u32(vec3<u32>(28926u, u_input.b.x, 76951u) | vec3<u32>(6028u, 4294967295u, 2871u), firstTrailingBit(u_input.b)) % vec3<u32>(32u))), abs(~u_input.b.x), vec3<f32>(-297f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-802f * -257f), _wgslsmith_f_op_f32(select(589f, 312f, true))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-380f - -207f)) * _wgslsmith_f_op_f32(f32(-1f) * -568f))), vec2<i32>(_wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(-vec2<i32>(2147483647i, -5845i), ~vec2<i32>(-2147483647i, u_input.a)), firstTrailingBit(u_input.c)), u_input.a));
    var var_4 = ~(~_wgslsmith_div_i32(~(~var_3.e.x), -(~15529i)));
    return _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(var_3.e.x, 0i, -74233i, -18401i), vec4<i32>(u_input.c, var_3.e.x, u_input.c, -1i)), ~vec4<i32>(1i, 2147483647i, -49766i, 0i)), reverseBits(vec4<i32>(u_input.a, 10003i, u_input.c, 0i))), _wgslsmith_add_i32(var_3.e.x, -1i)) < var_3.e.x;
}

fn func_1(arg_0: vec2<f32>, arg_1: Struct_1) -> vec2<bool> {
    let var_0 = 0u;
    let var_1 = Struct_1((abs(abs(vec4<u32>(arg_1.a.x, 0u, 4294967295u, arg_1.c))) & ~_wgslsmith_div_vec4_u32(arg_1.a, arg_1.a)) >> (arg_1.a % vec4<u32>(32u)), arg_1.c, arg_1.b, arg_1.d, -min(arg_1.e, arg_1.e));
    var var_2 = var_1.a;
    let var_3 = vec2<bool>(!(!(max(84482i, u_input.a) > _wgslsmith_sub_i32(var_1.e.x, -6755i))), func_2(vec2<u32>(_wgslsmith_dot_vec3_u32(abs(vec3<u32>(42228u, 1u, 16051u)), vec3<u32>(u_input.b.x, 111223u, u_input.b.x)), _wgslsmith_clamp_u32(1u, arg_1.a.x, arg_1.c)), vec4<bool>(all(vec4<bool>(true, false, false, false)), var_1.c == var_0, true, true)));
    var var_4 = ~(_wgslsmith_mult_u32(u_input.b.x, ~max(var_0, var_2.x)) & abs(u_input.b.x));
    return !select(var_3, var_3, vec2<bool>(all(vec2<bool>(false, var_3.x)), var_3.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1198f - 1222f));
    let var_1 = global0[_wgslsmith_index_u32(reverseBits(u_input.b.x), 8u)];
    global1 = array<Struct_1, 32>();
    let var_2 = !select(vec2<bool>(true, true), select(func_1(vec2<f32>(var_1.d.x, -619f), Struct_1(vec4<u32>(u_input.b.x, 0u, 1u, u_input.b.x), 1005u, 0u, var_1.d, var_1.e)), vec2<bool>(true, true), _wgslsmith_f_op_f32(f32(-1f) * -424f) == _wgslsmith_f_op_f32(-693f - var_1.d.x)), !(_wgslsmith_f_op_f32(-var_1.d.x) < _wgslsmith_f_op_f32(f32(-1f) * -1000f)));
    let var_3 = global0[_wgslsmith_index_u32(~_wgslsmith_add_u32(0u, abs(_wgslsmith_dot_vec3_u32(countOneBits(var_1.a.yxx), var_1.a.ywz))), 8u)];
    let x = u_input.a;
    s_output = StorageBuffer(var_1.d.x, vec3<f32>(-518f, _wgslsmith_f_op_f32(trunc(var_1.d.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(1722f)))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(vec3<f32>(134f, var_3.d.x, -1649f), vec3<f32>(-264f, 734f, 1782f)), _wgslsmith_f_op_vec3_f32(abs(var_3.d))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_1.d) * _wgslsmith_f_op_vec3_f32(-var_1.d))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_3.d.x, var_1.d.x, var_1.d.x, -708f), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-161f, -1000f, var_3.d.x, var_3.d.x))))))), vec4<i32>(firstLeadingBit(abs(~u_input.a)), _wgslsmith_clamp_i32(~(-var_3.e.x), 6279i, var_3.e.x), _wgslsmith_dot_vec4_i32(vec4<i32>(i32(-1i) * -29772i, select(-1i, -1i, var_2.x), min(84535i, 23408i), min(u_input.c, -1i)), _wgslsmith_mult_vec4_i32(vec4<i32>(-56034i, var_1.e.x, u_input.a, 37588i) << (vec4<u32>(var_3.b, 0u, 0u, var_1.b) % vec4<u32>(32u)), ~vec4<i32>(u_input.c, 80749i, var_1.e.x, var_1.e.x))), u_input.a));
}


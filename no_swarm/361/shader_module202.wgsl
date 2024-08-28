struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
}

struct Struct_4 {
    a: bool,
    b: f32,
    c: vec3<bool>,
    d: f32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: bool = false;

var<private> global2: vec3<u32> = vec3<u32>(31489u, 23223u, 21866u);

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec3<i32>, arg_1: bool, arg_2: i32, arg_3: i32) -> f32 {
    global2 = abs(max(firstLeadingBit(vec3<u32>(global2.x, u_input.a, 4294967295u)), vec3<u32>(_wgslsmith_mult_u32(16598u, u_input.a), 1u, _wgslsmith_div_u32(23259u, 17509u))) & (vec3<u32>(~global2.x, global2.x, _wgslsmith_dot_vec2_u32(global2.zz, vec2<u32>(4294967295u, global2.x))) >> (vec3<u32>(1u, ~4815u, 4294967295u) % vec3<u32>(32u))));
    global0 = vec2<i32>(_wgslsmith_mult_i32(~_wgslsmith_div_i32(2147483647i, u_input.b), -1i), countOneBits(select(global0.x, 49149i, true))) & arg_0.xx;
    let var_0 = Struct_1(_wgslsmith_mult_vec4_i32(abs(abs(-vec4<i32>(22636i, 2147483647i, -19629i, arg_0.x))), _wgslsmith_clamp_vec4_i32(min(vec4<i32>(arg_2, u_input.b, arg_3, 43938i), reverseBits(vec4<i32>(1i, 22263i, u_input.b, arg_2))), ~vec4<i32>(arg_3, u_input.b, arg_2, global0.x), vec4<i32>(u_input.b | -13354i, global0.x, _wgslsmith_dot_vec4_i32(vec4<i32>(22086i, arg_0.x, 1i, 0i), vec4<i32>(0i, arg_3, arg_0.x, -1i)), arg_2))));
    global2 = ~select(_wgslsmith_mod_vec3_u32(~_wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, u_input.a, 0u), vec3<u32>(u_input.a, 0u, 1u)), ~firstTrailingBit(vec3<u32>(u_input.a, global2.x, global2.x))), vec3<u32>(max(~global2.x, u_input.a), ~45550u, global2.x), vec3<bool>(arg_1, !any(vec4<bool>(false, false, arg_1, arg_1)), arg_1));
    global0 = firstLeadingBit(~firstLeadingBit(_wgslsmith_mult_vec2_i32(vec2<i32>(-1i, u_input.b), vec2<i32>(arg_2, 12374i))));
    return -515f;
}

fn func_2(arg_0: vec3<bool>) -> i32 {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(-1396f + 1000f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(715f - -1568f))) + -190f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -340f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-2375f - 676f), _wgslsmith_f_op_f32(func_3(vec3<i32>(1i, global0.x, 19482i), arg_0.x, u_input.b, 1i))) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-580f * 597f), _wgslsmith_f_op_f32(-2285f * -1277f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-418f + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -171f)))), 786f));
    var_0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(-571f)), var_0.x))), _wgslsmith_f_op_f32(661f * -216f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1348f)) - _wgslsmith_f_op_f32(ceil(-584f))), _wgslsmith_f_op_f32(-var_0.x))) * var_0.x), var_0.x);
    let var_1 = Struct_4(arg_0.x, var_0.x, arg_0, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_0.x)))))));
    global2 = ~vec3<u32>(global2.x, max(global2.x, 4294967295u), ~1u);
    var var_2 = arg_0;
    return u_input.b | 48358i;
}

fn func_1(arg_0: vec3<f32>, arg_1: Struct_3) -> Struct_1 {
    var var_0 = Struct_3(Struct_1(vec4<i32>(_wgslsmith_dot_vec4_i32(arg_1.a.a, arg_1.a.a) & 0i, -func_2(vec3<bool>(true, false, false)), countOneBits(u_input.b | u_input.b), 0i)), arg_0.x);
    return Struct_1(~_wgslsmith_clamp_vec4_i32(~vec4<i32>(u_input.b, -12984i, -8386i, 0i) >> ((vec4<u32>(14795u, u_input.a, u_input.a, u_input.a) >> (vec4<u32>(4012u, 4294967295u, 0u, u_input.a) % vec4<u32>(32u))) % vec4<u32>(32u)), var_0.a.a, arg_1.a.a));
}

fn func_4(arg_0: Struct_2, arg_1: vec3<f32>, arg_2: Struct_3, arg_3: vec2<bool>) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_f32(floor(arg_2.b));
    var var_1 = !arg_3.x;
    global0 = -abs(select(arg_2.a.a.wx, ~(-arg_2.a.a.xy), !(!arg_3)));
    let var_2 = select(select(vec4<bool>(!(arg_3.x && true), all(!vec3<bool>(true, true, arg_3.x)), all(!vec4<bool>(arg_3.x, false, true, false)), true), select(select(select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, arg_3.x, arg_3.x), vec4<bool>(false, arg_3.x, arg_3.x, true)), select(vec4<bool>(arg_3.x, true, false, true), vec4<bool>(true, arg_3.x, false, true), false), !vec4<bool>(false, arg_3.x, true, arg_3.x)), !select(vec4<bool>(true, arg_3.x, arg_3.x, arg_3.x), vec4<bool>(arg_3.x, true, arg_3.x, false), vec4<bool>(arg_3.x, arg_3.x, arg_3.x, arg_3.x)), true), vec4<bool>((18573u & global2.x) != _wgslsmith_div_u32(1u, 4294967295u), any(!vec3<bool>(arg_3.x, true, arg_3.x)), true & arg_3.x, !all(vec4<bool>(true, false, arg_3.x, false)))), select(select(vec4<bool>(arg_3.x, true, any(vec3<bool>(arg_3.x, true, arg_3.x)), arg_3.x || true), !vec4<bool>(arg_3.x, arg_3.x, true, arg_3.x), false), vec4<bool>(!any(vec3<bool>(false, true, false)), false, arg_3.x, true), all(arg_3)), all(vec4<bool>(2147483647i >= global0.x, arg_3.x, !arg_3.x, true)));
    var var_3 = !var_2.yx;
    return Struct_3(arg_2.a, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_0.a.x))));
}

fn func_5(arg_0: f32, arg_1: Struct_3, arg_2: bool, arg_3: vec4<bool>) -> bool {
    var var_0 = Struct_1(arg_1.a.a);
    let var_1 = arg_1.a.a.x;
    var_0 = func_1(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -889f) + arg_0), func_4(Struct_2(vec2<f32>(arg_0, -372f), arg_0), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(arg_1.b, arg_0, -340f))), Struct_3(Struct_1(arg_1.a.a), arg_1.b), vec2<bool>(true, false)).b, arg_0), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(2917f, 390f, arg_0))) * _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(arg_1.b, arg_0, arg_0)))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_0, arg_1.b, -1331f), _wgslsmith_div_vec3_f32(vec3<f32>(arg_1.b, arg_0, arg_0), vec3<f32>(arg_1.b, -186f, 1737f)), select(vec3<bool>(arg_3.x, false, false), arg_3.zzx, true))))))), Struct_3(Struct_1(-vec4<i32>(7985i, -2975i, 1i, var_0.a.x)), arg_1.b));
    var_0 = func_4(Struct_2(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-472f, -285f))))), arg_0), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(arg_0, arg_1.b, arg_0), vec3<f32>(arg_0, arg_1.b, -1809f)) - _wgslsmith_div_vec3_f32(vec3<f32>(929f, arg_0, arg_0), vec3<f32>(arg_1.b, -392f, -262f))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 2156f, arg_1.b)) * _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1693f, arg_0, arg_1.b))))))), Struct_3(func_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(1538f, 1245f, -710f) + _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, arg_1.b, arg_0) + vec3<f32>(351f, 365f, 122f))), Struct_3(arg_1.a, arg_0)), _wgslsmith_f_op_f32(-arg_0)), vec2<bool>(!(!any(arg_3.yzy)), any(vec4<bool>(arg_0 != arg_1.b, false, false, true || arg_2)))).a;
    let var_2 = arg_1;
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(vec4<i32>((abs(u_input.b) | (i32(-1i) * -11871i)) ^ max(global0.x, -2147483647i), u_input.b, ~_wgslsmith_mod_i32(reverseBits(1i), -u_input.b), -4993i));
    let var_1 = vec4<bool>(any(vec3<bool>(false, true, true)) || !(!all(vec4<bool>(true, false, false, false))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(222f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(258f)), _wgslsmith_f_op_f32(1307f + 1206f))) == _wgslsmith_f_op_f32(ceil(1684f)), func_5(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1101f + -1182f) * _wgslsmith_f_op_f32(f32(-1f) * -1247f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1298f))))), func_4(Struct_2(_wgslsmith_div_vec2_f32(vec2<f32>(-1691f, -252f), vec2<f32>(253f, 345f)), _wgslsmith_div_f32(971f, -1189f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-473f, 297f, -381f)), Struct_3(func_1(vec3<f32>(-1406f, 1000f, -882f), Struct_3(Struct_1(var_0.a), -370f)), _wgslsmith_f_op_f32(select(710f, -1000f, true))), vec2<bool>(true, true)), true, select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, true)), true), select(select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, true)), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true)), true)), true);
    let var_2 = true;
    global1 = !var_1.x;
    var var_3 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(286f, -260f, _wgslsmith_f_op_f32(-1f)));
    var_0 = func_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(643f, 690f, -1071f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1240f, var_3.x, var_3.x)), select(vec3<bool>(var_1.x, var_1.x, var_2), var_1.zxx, vec3<bool>(false, var_2, false)))))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1444f, 1672f, 128f), vec3<f32>(1094f, var_3.x, 1450f))))), vec3<f32>(-757f, _wgslsmith_f_op_f32(var_3.x - -660f), _wgslsmith_f_op_f32(var_3.x + var_3.x)))), func_4(Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(var_3.zy)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(541f, -1000f) * vec2<f32>(var_3.x, var_3.x))), 2127f), vec3<f32>(-315f, -1015f, var_3.x), func_4(Struct_2(var_3.zy, _wgslsmith_f_op_f32(step(-1052f, 1061f))), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_3.x, var_3.x, var_3.x))), func_4(Struct_2(var_3.xx, -657f), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(292f, -1070f, var_3.x), vec3<f32>(var_3.x, 1819f, var_3.x))), func_4(Struct_2(var_3.xz, -942f), vec3<f32>(-771f, -813f, 587f), Struct_3(Struct_1(vec4<i32>(var_0.a.x, 26285i, global0.x, -2147483647i)), -176f), vec2<bool>(true, false)), var_1.wy), var_1.xz), select(vec2<bool>(false, true), var_1.wy, !var_1.x)));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(_wgslsmith_sub_u32(~global2.x, firstTrailingBit(_wgslsmith_dot_vec2_u32(global2.zz, global2.xz)))), _wgslsmith_add_vec4_i32(abs(vec4<i32>(global0.x, -359i, -2147483647i, var_0.a.x) | -var_0.a), firstTrailingBit(var_0.a)));
}


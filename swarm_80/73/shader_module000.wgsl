struct Struct_1 {
    a: u32,
    b: vec4<f32>,
    c: vec2<u32>,
    d: vec4<i32>,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 6> = array<i32, 6>(0i, 1i, -1i, -41742i, -17238i, -88236i);

var<private> global1: array<i32, 31> = array<i32, 31>(i32(-2147483648), i32(-2147483648), -59175i, -1i, 0i, i32(-2147483648), 1i, 1i, 27780i, 1070i, 1i, 80438i, -1i, 1i, -6264i, -7754i, -18610i, 72185i, 2147483647i, 1i, -20506i, -1i, 2147483647i, -4804i, -19509i, i32(-2147483648), 2147483647i, -38024i, -1682i, 1i, -1i);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: f32) -> f32 {
    global1 = array<i32, 31>();
    global0 = array<i32, 6>();
    var var_0 = ~38798i;
    global0 = array<i32, 6>();
    let var_1 = select(!select(vec2<bool>(true, false), select(select(vec2<bool>(true, false), vec2<bool>(true, false), true), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, true)), vec2<bool>(true, true), select(any(!select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, false), true)), !(all(vec2<bool>(false, false)) | true), select(true, any(vec4<bool>(false, true, true, true)) && true, !any(vec4<bool>(false, false, false, true)))));
    return _wgslsmith_f_op_f32(-arg_0);
}

fn func_2(arg_0: vec3<bool>, arg_1: f32) -> f32 {
    global0 = array<i32, 6>();
    var var_0 = Struct_1(_wgslsmith_clamp_u32(0u, 1u, _wgslsmith_mod_u32(~11862u & firstTrailingBit(4294967295u), ~1u)), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, arg_1, -860f, arg_1)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-588f, -358f, -1228f, -230f)))) * vec4<f32>(_wgslsmith_f_op_f32(select(-549f, 1538f, false)), _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(-arg_1))), -1123f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_1, arg_1))))), min(_wgslsmith_mult_vec2_u32(~vec2<u32>(52354u, 62668u), vec2<u32>(1u, 1u)), _wgslsmith_div_vec2_u32(select(vec2<u32>(172058u, 4294967295u), vec2<u32>(7563u, 1u), vec2<bool>(arg_0.x, true)) & vec2<u32>(4294967295u, 0u), abs(vec2<u32>(1u, 63103u) << (vec2<u32>(1u, 1u) % vec2<u32>(32u))))), abs(-firstTrailingBit(vec4<i32>(-38502i, 1i, u_input.a.x, 1i) | vec4<i32>(-38786i, u_input.a.x, 59036i, -2147483647i))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-615f, -1629f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-934f, arg_1)))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, arg_1))) * _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(arg_1, arg_1))))));
    let var_1 = Struct_1(reverseBits(~((var_0.a & var_0.a) >> (_wgslsmith_div_u32(var_0.a, var_0.a) % 32u))), var_0.b, vec2<u32>(39384u, ~var_0.a) & var_0.c, vec4<i32>(0i, global0[_wgslsmith_index_u32(51387u, 6u)], global0[_wgslsmith_index_u32(~_wgslsmith_mod_u32(var_0.a, 4294967295u), 6u)], -37869i) ^ reverseBits(~u_input.a), var_0.b.ww);
    var_0 = Struct_1(firstLeadingBit(_wgslsmith_add_u32(47453u, select(var_1.c.x, var_1.a, true))) << (_wgslsmith_mult_u32(var_0.c.x, _wgslsmith_div_u32(33278u, reverseBits(1872u))) % 32u), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(var_1.b, var_0.b)) - _wgslsmith_f_op_vec4_f32(var_0.b * var_1.b)))))), vec2<u32>(_wgslsmith_mod_u32(var_1.a, 4294967295u), 14686u), _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a.x, 40468i | global0[_wgslsmith_index_u32(var_0.c.x, 6u)], u_input.a.x, ~global0[_wgslsmith_index_u32(var_1.c.x, 6u)]) >> (_wgslsmith_mod_vec4_u32(min(vec4<u32>(619u, 0u, 71781u, 4294967295u), vec4<u32>(var_1.c.x, 1u, var_1.c.x, 21761u)), ~vec4<u32>(var_1.c.x, var_1.c.x, var_0.c.x, 33699u)) % vec4<u32>(32u)), select(vec4<i32>(-global1[_wgslsmith_index_u32(var_1.a, 31u)], ~var_0.d.x, var_1.d.x, 1i), abs(vec4<i32>(global1[_wgslsmith_index_u32(8400u, 31u)], -2147483647i, 57380i, -196i)), select(true, arg_0.x, false)), max(firstTrailingBit(~vec4<i32>(-33330i, var_1.d.x, 25036i, -2147483647i)), vec4<i32>(-1i, -42665i, u_input.a.x, _wgslsmith_clamp_i32(u_input.a.x, global0[_wgslsmith_index_u32(var_1.a, 6u)], var_0.d.x)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.b.yx))));
    let var_2 = vec3<u32>(~_wgslsmith_div_u32(~var_0.a, 86105u) & 4294967295u, ~max(53702u, 1u), 105522u);
    return _wgslsmith_f_op_f32(-var_0.e.x);
}

fn func_4(arg_0: vec4<u32>, arg_1: u32, arg_2: Struct_1) -> Struct_1 {
    var var_0 = ~vec2<u32>(_wgslsmith_clamp_u32(max(0u, _wgslsmith_dot_vec3_u32(arg_0.wzz, arg_0.zzx)), ~(~53737u), ~arg_0.x), min(_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(0u, arg_0.x), vec2<u32>(92117u, arg_2.a)), arg_2.c ^ arg_2.c), countOneBits(_wgslsmith_clamp_u32(arg_1, 45577u, arg_0.x))));
    global0 = array<i32, 6>();
    global1 = array<i32, 31>();
    let var_1 = 1u >> (arg_1 % 32u);
    var var_2 = vec4<f32>(-190f, -471f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_2.b.x)))), arg_2.e.x);
    return Struct_1(1u, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(arg_2.b, vec4<f32>(1f, var_2.x, _wgslsmith_f_op_f32(select(arg_2.b.x, 1000f, true)), _wgslsmith_f_op_f32(arg_2.b.x + 1000f)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(arg_2.b))))), arg_2.c, arg_2.d, vec2<f32>(-971f, arg_2.b.x));
}

fn func_1(arg_0: f32, arg_1: vec4<bool>) -> vec2<u32> {
    let var_0 = func_4(vec4<u32>(~(~1u), 0u, reverseBits(4294967295u), 1u), ~(~(~_wgslsmith_div_u32(44538u, 4294967295u))), Struct_1(~1u, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, arg_0, -711f, arg_0))))), vec2<u32>(43252u, ~_wgslsmith_div_u32(0u, 26318u)), _wgslsmith_div_vec4_i32(reverseBits(u_input.a), ~_wgslsmith_mult_vec4_i32(vec4<i32>(global1[_wgslsmith_index_u32(12947u, 31u)], global0[_wgslsmith_index_u32(1u, 6u)], global1[_wgslsmith_index_u32(4294967295u, 31u)], u_input.a.x), u_input.a)), vec2<f32>(700f, _wgslsmith_f_op_f32(func_2(vec3<bool>(true, false, arg_1.x), 1225f)))));
    global0 = array<i32, 6>();
    global1 = array<i32, 31>();
    var var_1 = Struct_1(~var_0.c.x, _wgslsmith_f_op_vec4_f32(var_0.b - vec4<f32>(_wgslsmith_f_op_f32(1f + -315f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_0)) * _wgslsmith_f_op_f32(-var_0.e.x)), arg_0, var_0.b.x)), var_0.c, ~min(-u_input.a, var_0.d) >> (~((vec4<u32>(1u, 4294967295u, var_0.a, 4294967295u) & vec4<u32>(0u, var_0.a, var_0.c.x, var_0.a)) ^ select(vec4<u32>(4294967295u, 0u, var_0.c.x, 0u), vec4<u32>(var_0.a, var_0.a, var_0.c.x, var_0.a), false)) % vec4<u32>(32u)), vec2<f32>(_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))), _wgslsmith_f_op_f32(arg_0 - arg_0)));
    var var_2 = _wgslsmith_div_u32(~_wgslsmith_div_u32(61017u, ~63351u), ~var_0.a);
    return _wgslsmith_div_vec2_u32(countOneBits(~_wgslsmith_div_vec2_u32(func_4(vec4<u32>(var_0.c.x, var_1.c.x, 0u, 1u), 21263u, Struct_1(112365u, var_0.b, var_0.c, var_1.d, var_0.e)).c, max(vec2<u32>(55821u, var_1.c.x), vec2<u32>(0u, var_0.c.x)))), vec2<u32>(abs(var_0.a), 85389u));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool, arg_3: vec2<bool>) -> StorageBuffer {
    global0 = array<i32, 6>();
    let var_0 = vec2<i32>(-21137i, _wgslsmith_clamp_i32(i32(-1i) * -2147483647i, -1i, 12875i));
    return StorageBuffer(-814f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(64221u, 4294967295u, 0u, 1518u), ~vec4<u32>(54526u, 30764u, 0u, 47594u)), 15855u) << (1u % 32u), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1228f), -413f, -205f, -2196f)))), countOneBits(~(~vec2<u32>(1u, 30213u))), u_input.a, vec2<f32>(440f, -2201f));
    let var_1 = var_0;
    global1 = array<i32, 31>();
    let var_2 = Struct_1(~1u, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.e.x, var_1.e.x)), _wgslsmith_f_op_f32(floor(-141f)), var_1.e.x, _wgslsmith_f_op_f32(-var_0.e.x)), ~vec2<u32>(0u, 0u) ^ var_0.c, ~(~_wgslsmith_mod_vec4_i32(vec4<i32>(-1i, global0[_wgslsmith_index_u32(var_0.c.x, 6u)], -28170i, -46522i), var_0.d)), var_1.e);
    global0 = array<i32, 6>();
    let x = u_input.a;
    s_output = func_5(Struct_1(~(~(~1u)), var_2.b, abs(countOneBits(var_0.c)), vec4<i32>(1i, min(max(u_input.a.x, 5199i), global1[_wgslsmith_index_u32(var_0.c.x | var_1.a, 31u)]), global0[_wgslsmith_index_u32(4294967295u, 6u)], min(-2147483647i, -1i) & _wgslsmith_div_i32(var_0.d.x, 27805i)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(401f, var_0.e.x), _wgslsmith_f_op_vec2_f32(max(var_1.e, var_1.b.zz)), vec2<bool>(true, true))))), Struct_1(_wgslsmith_div_u32(0u, ~(~46926u)), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -888f), 1000f, _wgslsmith_f_op_f32(ceil(var_1.b.x)), -386f) - _wgslsmith_f_op_vec4_f32(-var_2.b)), func_1(var_1.b.x, vec4<bool>(true, true, true, true)), firstLeadingBit(-(~var_1.d)), vec2<f32>(-1657f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1000f))))), false, vec2<bool>(!(_wgslsmith_f_op_f32(f32(-1f) * -1000f) > _wgslsmith_f_op_f32(select(var_0.e.x, var_2.b.x, true))), true));
}


struct Struct_1 {
    a: vec2<i32>,
    b: vec4<bool>,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
    b: i32,
}

struct Struct_4 {
    a: i32,
    b: i32,
    c: Struct_3,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: vec4<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<i32, 17> = array<i32, 17>(17372i, 0i, 0i, -1i, -11644i, 11325i, -51208i, 2334i, 1i, -14347i, 2147483647i, 1i, 2147483647i, 12472i, i32(-2147483648), -18928i, -24879i);

var<private> global2: Struct_3;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec3<f32>) -> i32 {
    var var_0 = Struct_3(vec2<i32>(min(-firstLeadingBit(1i), _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(global0.c.a, vec2<i32>(2147483647i, global0.c.a.x)), u_input.a)), -2147483647i), 0i);
    global1 = array<i32, 17>();
    let var_1 = Struct_3(_wgslsmith_add_vec2_i32(-select(~global2.a, vec2<i32>(global0.a.a.x, 1i), vec2<bool>(global0.c.b.x, false)), vec2<i32>(_wgslsmith_mod_i32(-global1[_wgslsmith_index_u32(19631u, 17u)], firstLeadingBit(global1[_wgslsmith_index_u32(1657u, 17u)])), global1[_wgslsmith_index_u32(1u, 17u)])), u_input.c);
    var var_2 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_0.x)) - arg_0.x)));
    var_2 = -153f;
    return -17345i;
}

fn func_2(arg_0: vec4<bool>) -> vec4<bool> {
    let var_0 = Struct_3(vec2<i32>(func_3(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-886f, 150f, 890f) - vec3<f32>(266f, -512f, -117f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-265f, 489f, -279f) + vec3<f32>(880f, 259f, 257f)))), -21513i), min(global0.c.a.x, _wgslsmith_mod_i32(u_input.b, _wgslsmith_div_i32(global0.c.c, ~global1[_wgslsmith_index_u32(2658u, 17u)]))));
    let var_1 = !(!(all(arg_0) & (var_0.b > global1[_wgslsmith_index_u32(4859u, 17u)]))) != arg_0.x;
    var var_2 = Struct_2(global0.a, vec2<bool>(arg_0.x, true), global0.c);
    var var_3 = global0.c;
    global1 = array<i32, 17>();
    return select(global0.c.b, !(!global0.a.b), vec4<bool>(all(vec4<bool>(true, true, false, global0.c.b.x)), var_3.b.x, all(vec2<bool>(var_2.a.b.x, var_1)), any(!vec4<bool>(false, false, var_1, arg_0.x))));
}

fn func_4(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: bool) -> Struct_3 {
    var var_0 = Struct_4(arg_0.a.x, -46038i, Struct_3(_wgslsmith_mult_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(-34922i, global0.c.c), min(u_input.a, vec2<i32>(-13539i, 2147483647i))), reverseBits(u_input.a)), abs(abs(i32(-1i) * -35061i))), abs(_wgslsmith_clamp_vec4_u32(abs(vec4<u32>(1u, 42378u, 1u, 3629u)), ~(~vec4<u32>(1u, 36580u, 4294967295u, 0u)), min(~vec4<u32>(4648u, 0u, 67335u, 31830u), select(vec4<u32>(40757u, 43752u, 1u, 1u), vec4<u32>(0u, 30774u, 4294967295u, 4294967295u), global0.b.x)))));
    var var_1 = ~(vec4<u32>(78728u, 13879u, countOneBits(min(var_0.d.x, 0u)), firstLeadingBit(select(var_0.d.x, 55271u, true))) << (countOneBits(firstLeadingBit(_wgslsmith_mod_vec4_u32(var_0.d, vec4<u32>(var_0.d.x, var_0.d.x, var_0.d.x, 1u)))) % vec4<u32>(32u)));
    let var_2 = arg_0;
    global2 = var_0.c;
    var_0 = Struct_4(-global2.a.x, arg_0.a.x, var_0.c, max(countOneBits(vec4<u32>(1u, ~4315u, 65415u, 16232u)), ~(~min(var_0.d, var_0.d))));
    return Struct_3(vec2<i32>(global2.a.x, var_0.b), 6940i);
}

fn func_1(arg_0: vec4<u32>, arg_1: bool) -> f32 {
    global2 = func_4(Struct_1(~(-(~global0.c.a)), !func_2(!global0.a.b), 1i), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(1230f + 2245f), -229f), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(max(-107f, 1068f)), _wgslsmith_f_op_f32(-727f - -1439f)), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -422f), _wgslsmith_div_f32(795f, 1265f))))), arg_1);
    let var_0 = vec2<bool>(!(-u_input.b > _wgslsmith_div_i32(firstLeadingBit(u_input.d), _wgslsmith_add_i32(-37090i, -29329i))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-172f, -822f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-759f)) + -1748f)) == _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -859f))));
    let var_1 = Struct_1(select(select(~select(global0.c.a, vec2<i32>(2147483647i, -7284i), var_0), global0.c.a, var_0), vec2<i32>(global0.a.c, _wgslsmith_sub_i32(~(-4255i), 1i)), var_0.x | !arg_1), !(!vec4<bool>(global0.b.x, global0.b.x, select(true, global0.b.x, arg_1), true)), abs(-38993i));
    var var_2 = ~vec3<i32>(-(func_3(vec3<f32>(482f, -141f, 641f)) >> (arg_0.x % 32u)), var_1.c, _wgslsmith_dot_vec2_i32(~global2.a | vec2<i32>(-2147483647i, global2.b), u_input.a));
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-2489f, -1000f, -831f, 1720f), vec4<f32>(593f, -599f, -1071f, 155f))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, 476f, -821f, 1073f) + vec4<f32>(-520f, 446f, -335f, -1675f))), vec4<f32>(_wgslsmith_div_f32(568f, 541f), _wgslsmith_f_op_f32(trunc(-645f)), _wgslsmith_f_op_f32(min(778f, -332f)), _wgslsmith_f_op_f32(f32(-1f) * -944f)), select(!vec4<bool>(global0.b.x, false, true, false), select(var_1.b, global0.c.b, var_1.b.x), all(vec4<bool>(var_0.x, arg_1, var_1.b.x, false))))) + vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(-474f)), -1796f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -316f))), _wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(round(1110f))), _wgslsmith_f_op_f32(floor(-1085f)))));
    return _wgslsmith_f_op_f32(-var_3.x);
}

fn func_5(arg_0: f32, arg_1: bool, arg_2: Struct_1) -> Struct_2 {
    global2 = Struct_3(vec2<i32>(~max(global2.b, u_input.b), -7951i) | ~min(countOneBits(u_input.a), _wgslsmith_mod_vec2_i32(vec2<i32>(global1[_wgslsmith_index_u32(21237u, 17u)], u_input.d), vec2<i32>(global0.c.c, global0.c.c))), global1[_wgslsmith_index_u32(countOneBits(1u), 17u)] ^ 1i);
    let var_0 = any(func_2(vec4<bool>(arg_1, arg_1, arg_2.b.x, !arg_1)).xy);
    global0 = Struct_2(arg_2, vec2<bool>(!var_0, var_0), arg_2);
    global0 = Struct_2(Struct_1(vec2<i32>(_wgslsmith_clamp_i32(-6132i, ~global0.c.c, -2147483647i), -34234i), arg_2.b, u_input.a.x), !global0.b, Struct_1(_wgslsmith_div_vec2_i32(~vec2<i32>(u_input.d, u_input.b), vec2<i32>(-global0.c.a.x, global0.c.a.x)), vec4<bool>(any(vec2<bool>(global0.b.x, arg_1)), all(vec3<bool>(global0.a.b.x, true, global0.a.b.x)), true, all(global0.a.b.xz)), _wgslsmith_add_i32(u_input.c, firstLeadingBit(28748i) >> (_wgslsmith_div_u32(48335u, 4294967295u) % 32u))));
    var var_1 = ~(49997u >> (1u % 32u));
    return Struct_2(Struct_1(u_input.a << (~vec2<u32>(1u, 1u) % vec2<u32>(32u)), vec4<bool>(select(func_2(vec4<bool>(global0.b.x, global0.c.b.x, false, false)).x, !arg_2.b.x, global0.a.b.x), all(!global0.c.b.xwy), false, !(!arg_2.b.x)), global0.a.a.x), func_2(vec4<bool>(true, !var_0 | (-3289i <= global0.c.a.x), -u_input.a.x < _wgslsmith_div_i32(1i, u_input.c), var_0)).xy, arg_2);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_5(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-886f))), 1f)), _wgslsmith_f_op_f32(func_1(select(vec4<u32>(64804u, 0u, 55921u, 4294967295u), ~vec4<u32>(26166u, 5266u, 1u, 28826u), global0.b.x), any(vec4<bool>(global0.c.b.x, true, global0.b.x, false))))), false, Struct_1(_wgslsmith_clamp_vec2_i32(u_input.a, vec2<i32>(~global2.b, 1i), global0.c.a), func_2(vec4<bool>(func_2(global0.c.b).x, !global0.a.b.x, !global0.c.b.x, true)), min(-_wgslsmith_mult_i32(-2147483647i, global0.a.a.x), -global2.b)));
    global0 = Struct_2(Struct_1(global0.c.a, vec4<bool>(global0.c.b.x, true, global0.b.x, all(func_2(vec4<bool>(global0.c.b.x, global0.b.x, true, true)).xzx)), u_input.d), !select(vec2<bool>(true, !global0.a.b.x), vec2<bool>(true, false & global0.c.b.x), vec2<bool>(global0.b.x, global0.a.b.x)), func_5(_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(abs(-304f)))), true, global0.c).c);
    global1 = array<i32, 17>();
    let var_0 = 0u;
    global0 = Struct_2(Struct_1(_wgslsmith_add_vec2_i32(func_5(_wgslsmith_f_op_f32(784f - -382f), !global0.c.b.x, Struct_1(vec2<i32>(global0.a.a.x, -14971i), global0.c.b, global2.b)).c.a, vec2<i32>(global0.a.a.x, _wgslsmith_sub_i32(-12900i, 12846i))), global0.c.b, _wgslsmith_clamp_i32(u_input.b, firstTrailingBit(-27762i), 2147483647i) | 0i), vec2<bool>(global0.b.x, any(vec4<bool>(false, global0.a.b.x, global0.b.x, global0.b.x)) & global0.c.b.x), func_5(706f, false, global0.a).a);
    var var_1 = ~(-1i);
    global1 = array<i32, 17>();
    global1 = array<i32, 17>();
    var_1 = min(-16766i, 0i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-1152f, -520f, 1915f, 560f), vec4<f32>(928f, 1143f, 874f, -419f))))))), var_0, select(vec4<u32>(4294967295u, firstLeadingBit(var_0), var_0, var_0 << (1u % 32u)), ~select(vec4<u32>(var_0, 46011u, var_0, var_0), vec4<u32>(0u, 0u, 8883u, 54194u), global0.a.b.x) | vec4<u32>(_wgslsmith_clamp_u32(var_0, 4294967295u, var_0), _wgslsmith_sub_u32(15385u, 0u), _wgslsmith_sub_u32(25191u, var_0), reverseBits(var_0)), true), ~_wgslsmith_clamp_u32(_wgslsmith_mult_u32(firstLeadingBit(var_0), ~var_0), 1u, ~1u >> (var_0 % 32u)));
}


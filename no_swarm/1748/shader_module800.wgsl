struct Struct_1 {
    a: vec4<f32>,
    b: u32,
    c: f32,
    d: vec3<u32>,
    e: u32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: Struct_1,
    d: vec3<i32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: Struct_2;

var<private> global2: array<Struct_1, 14>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec3<u32>) -> u32 {
    global1 = Struct_2(global1.a, global1.c, Struct_1(_wgslsmith_f_op_vec4_f32(select(global1.c.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-177f, -305f, global1.e.a.x, 959f)) * global1.b.a), any(vec3<bool>(true, true, true)))), arg_0.x, global1.c.a.x, global1.b.d, global0.c.e), vec3<i32>(-8516i, firstLeadingBit(global1.d.x >> (1u % 32u)), countOneBits(_wgslsmith_add_i32(0i, global0.d.x) & -1i)), global2[_wgslsmith_index_u32(global0.b.d.x, 14u)]);
    let var_0 = vec3<i32>(-1i, ~(-594i) << (((4294967295u | _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, global0.b.d.x), vec2<u32>(global1.c.b, 49358u))) | u_input.c) % 32u), 1372i);
    var var_1 = Struct_2(global1.a, global2[_wgslsmith_index_u32(global0.c.d.x, 14u)], global0.c, _wgslsmith_mult_vec3_i32(vec3<i32>(max(var_0.x, 41351i) >> (firstLeadingBit(arg_0.x) % 32u), min(_wgslsmith_dot_vec3_i32(vec3<i32>(-7654i, 32251i, global1.d.x), var_0), ~u_input.a.x), -(var_0.x & global0.d.x)), abs(vec3<i32>(59326i, var_0.x, 2147483647i) >> (vec3<u32>(4294967295u, arg_0.x, 4294967295u) % vec3<u32>(32u)))), global0.b);
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(928f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.e.c) + global0.b.a.x)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(595f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_1.e.a.x, global1.c.a.x)))), var_1.e.a.x)), global1.c.a.x);
    var var_3 = _wgslsmith_dot_vec3_u32(countOneBits(~(~var_1.e.d)), vec3<u32>(~countOneBits(~14293u), u_input.c, u_input.c));
    return global1.e.b;
}

fn func_2(arg_0: bool, arg_1: vec3<u32>) -> Struct_1 {
    var var_0 = !global1.a.x;
    var var_1 = global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(15082u, arg_1.x & global0.c.d.x, _wgslsmith_add_u32(arg_1.x, func_3(vec3<u32>(~u_input.c, firstLeadingBit(22726u), global0.b.e)))), 14u)];
    global2 = array<Struct_1, 14>();
    global1 = Struct_2(select(select(select(!global0.a, global0.a, select(global1.a, vec2<bool>(global1.a.x, true), vec2<bool>(true, global1.a.x))), vec2<bool>(false, global1.a.x | true), ~(-26811i) >= _wgslsmith_mult_i32(u_input.b.x, u_input.b.x)), select(select(global1.a, !vec2<bool>(global0.a.x, global0.a.x), select(vec2<bool>(true, true), vec2<bool>(true, false), true)), vec2<bool>(true, any(vec3<bool>(global1.a.x, global0.a.x, arg_0))), false), global1.a.x), Struct_1(var_1.a, max(global0.e.d.x, 4294967295u), var_1.a.x, ~countOneBits(vec3<u32>(var_1.e, 1u, global1.e.b)) ^ (firstTrailingBit(vec3<u32>(u_input.c, global0.b.b, u_input.c)) ^ ~global0.e.d), func_3(select(global0.e.d, arg_1, vec3<bool>(arg_0, global1.a.x, false)) << ((arg_1 << (vec3<u32>(0u, global0.c.d.x, arg_1.x) % vec3<u32>(32u))) % vec3<u32>(32u)))), global2[_wgslsmith_index_u32(47037u, 14u)], abs(-(-vec3<i32>(-2147483647i, -33747i, global1.d.x) ^ vec3<i32>(2123i, 1i, global0.d.x))), Struct_1(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(global0.c.a + vec4<f32>(-483f, -1000f, -1097f, global1.c.a.x)), _wgslsmith_f_op_vec4_f32(select(var_1.a, vec4<f32>(326f, 936f, global0.c.a.x, 282f), !vec4<bool>(arg_0, global0.a.x, false, arg_0))))), 0u >> ((global0.c.b | ~105568u) % 32u), global1.c.a.x, reverseBits(_wgslsmith_clamp_vec3_u32(~arg_1, arg_1 ^ var_1.d, vec3<u32>(arg_1.x, 4294967295u, 4294967295u))), _wgslsmith_mult_u32(11125u, 1u)));
    let var_2 = vec2<u32>(_wgslsmith_dot_vec4_u32(abs(~vec4<u32>(0u, 56400u, 4672u, arg_1.x)), ~vec4<u32>(global0.b.e, u_input.c, 1u, 8813u)), 41393u) & min(~_wgslsmith_sub_vec2_u32(arg_1.yy, abs(vec2<u32>(global1.e.e, 31276u))), vec2<u32>(select(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, global0.e.b), vec2<u32>(global1.e.d.x, arg_1.x)), global1.e.d.x, -13471i >= global0.d.x), firstTrailingBit(0u)));
    return Struct_1(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -130f), _wgslsmith_f_op_f32(var_1.c - global1.b.c), _wgslsmith_f_op_f32(f32(-1f) * -399f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.c - 1000f)))), arg_1.x, _wgslsmith_f_op_f32(select(-359f, global0.c.c, false)), _wgslsmith_mod_vec3_u32(~_wgslsmith_add_vec3_u32(arg_1, vec3<u32>(4294967295u, 0u, var_2.x)) | firstLeadingBit(global1.c.d), (min(vec3<u32>(global1.b.e, 25418u, arg_1.x), vec3<u32>(arg_1.x, 65932u, 0u)) ^ ~global0.c.d) & var_1.d), ~firstTrailingBit(_wgslsmith_div_u32(0u, ~33922u)));
}

fn func_1(arg_0: f32, arg_1: vec2<f32>, arg_2: bool) -> Struct_1 {
    var var_0 = global0.b;
    global0 = Struct_2(global1.a, func_2(!arg_2, vec3<u32>(~_wgslsmith_clamp_u32(0u, 4294967295u, global0.e.d.x), (global0.b.e >> (global1.e.e % 32u)) | var_0.e, 99415u)), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-265f, -975f, 1271f, 912f)))), func_2(all(select(vec2<bool>(global0.a.x, false), vec2<bool>(global0.a.x, global1.a.x), false)), ~global0.b.d).e, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x)), global1.b.d, ~1u), vec3<i32>(-14955i, ~(-10731i), ~(-16354i)), func_2(true, func_2(all(select(vec4<bool>(global1.a.x, true, arg_2, arg_2), vec4<bool>(global0.a.x, global1.a.x, global1.a.x, true), vec4<bool>(global1.a.x, true, false, false))), vec3<u32>(_wgslsmith_mod_u32(global1.e.d.x, u_input.c), reverseBits(26474u), func_2(global0.a.x, vec3<u32>(global1.e.b, u_input.c, global0.b.b)).d.x)).d));
    var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(2128f, var_0.a.x, -1544f, _wgslsmith_f_op_f32(-1046f - -1475f))))), _wgslsmith_div_u32(firstTrailingBit(4294967295u), ~67043u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1035f, global1.c.a.x)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-757f)) - 1019f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1380f)))), vec3<u32>(countOneBits(~1u), func_3(max(global0.e.d, abs(vec3<u32>(1u, 14944u, var_0.e)))), 43685u), var_0.e);
    var_0 = func_2(803f >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -156f)) - _wgslsmith_f_op_f32(floor(-1787f))), global1.e.d);
    var var_1 = any(!vec4<bool>(true, false, global0.a.x, true | global1.a.x));
    return Struct_1(vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(global1.b.c, -116f, global0.a.x)))), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(global0.e.c, _wgslsmith_f_op_f32(f32(-1f) * -1029f)), 320f)), -134f, _wgslsmith_f_op_f32(-348f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.b.a.x), -1129f))), u_input.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.b.c - global1.c.c) + -551f) - -1000f), ~(~vec3<u32>(~4294967295u, 4294967295u, _wgslsmith_mult_u32(global0.c.d.x, global1.b.e))), reverseBits(global0.c.e));
}

fn func_4(arg_0: Struct_2, arg_1: vec3<f32>, arg_2: vec3<f32>, arg_3: Struct_2) -> Struct_1 {
    global1 = Struct_2(select(select(arg_3.a, vec2<bool>(true, true), vec2<bool>(arg_3.a.x, true)), !select(select(vec2<bool>(true, arg_0.a.x), vec2<bool>(true, true), vec2<bool>(global0.a.x, true)), !arg_3.a, global1.a.x | true), global1.a), Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(global1.e.a))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_3.c.a) + global0.e.a)), _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(~arg_3.b.d, global1.b.d), 11140u), -409f, arg_0.e.d, ~global0.c.b), Struct_1(func_2(global1.a.x, min(vec3<u32>(10214u, u_input.c, 87538u), global0.b.d) ^ global0.c.d).a, _wgslsmith_mult_u32(global1.c.b, 1u), _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_2.x, _wgslsmith_f_op_f32(-795f - global1.e.c)) + 1f), ~global1.e.d, _wgslsmith_dot_vec2_u32(global0.e.d.yz, global0.c.d.zx)), abs(vec3<i32>(u_input.a.x, ~firstLeadingBit(arg_0.d.x), _wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.d.x, 2147483647i), ~global0.d.xx))), func_1(_wgslsmith_f_op_f32(abs(global0.c.a.x)), vec2<f32>(-942f, arg_1.x), true));
    global0 = arg_0;
    let var_0 = global1.d.x;
    global1 = arg_0;
    return Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_0.b.a)), 1u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.b.a.x * _wgslsmith_f_op_f32(-1226f + 1917f)) - _wgslsmith_f_op_f32(-func_2(true, ~vec3<u32>(global0.c.b, arg_3.e.b, 1u)).a.x)), reverseBits(arg_3.e.d), func_2(arg_3.a.x, vec3<u32>(4294967295u, 0u, 67430u) ^ select(min(arg_3.c.d, vec3<u32>(0u, 55504u, 4294967295u)), vec3<u32>(arg_0.e.e, global1.e.b, global0.c.e), any(vec4<bool>(global0.a.x, true, false, arg_3.a.x)))).e);
}

fn func_5(arg_0: Struct_1, arg_1: Struct_2, arg_2: i32, arg_3: Struct_1) -> f32 {
    global1 = arg_1;
    var var_0 = !(arg_1.a.x && false);
    var var_1 = ~global1.d;
    var var_2 = ~(~(~(~reverseBits(vec4<u32>(arg_1.b.d.x, arg_1.b.b, 4294967295u, 46692u)))));
    var_0 = !((global0.a.x || true) || global0.a.x) || global0.a.x;
    return _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.e.a.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.c.a.x * 893f) - -303f) + -491f)), _wgslsmith_f_op_f32(sign(640f)), _wgslsmith_f_op_f32(func_5(func_4(Struct_2(!vec2<bool>(global0.a.x, global0.a.x), func_1(global0.e.a.x, global0.c.a.xw, global0.a.x), func_2(global1.a.x, global0.b.d), vec3<i32>(u_input.b.x, -1i, u_input.b.x), Struct_1(vec4<f32>(417f, -515f, -1133f, global1.b.a.x), 4294967295u, -494f, global1.e.d, 4294967295u)), global1.c.a.xxy, global0.b.a.ywx, Struct_2(!vec2<bool>(global1.a.x, global1.a.x), global0.c, global2[_wgslsmith_index_u32(global0.e.b, 14u)], vec3<i32>(u_input.b.x, 42089i, 12344i), Struct_1(vec4<f32>(-1000f, global0.e.c, global0.e.c, -484f), 4294967295u, 501f, global0.c.d, global1.b.d.x))), Struct_2(global1.a, Struct_1(_wgslsmith_f_op_vec4_f32(-global0.e.a), func_1(global1.c.c, vec2<f32>(global0.c.c, global0.b.c), true).b, _wgslsmith_div_f32(global1.e.a.x, global1.e.c), func_1(107f, vec2<f32>(global0.c.a.x, global1.e.c), global0.a.x).d, global0.e.e), func_2(true, ~vec3<u32>(14567u, 0u, global1.b.d.x)), global0.d, Struct_1(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(219f, -1000f, global1.b.a.x, 137f))), global0.c.d.x, _wgslsmith_f_op_f32(-global0.e.c), global1.c.d | vec3<u32>(1u, 4294967295u, 85089u), global1.c.d.x)), -reverseBits(_wgslsmith_mult_i32(global1.d.x, global0.d.x)), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-global1.e.c), _wgslsmith_f_op_f32(-global1.b.c), _wgslsmith_f_op_f32(global0.b.c - global1.e.a.x), 1788f), ~global0.b.e, global1.e.c, global0.b.d, global0.c.b))));
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(func_2(global0.a.x, vec3<u32>(0u, global1.e.d.x, 0u)).a.x, -1033f, global0.e.a.x) * func_1(_wgslsmith_f_op_f32(min(669f, 242f)), global0.b.a.yz, global0.a.x).a.zzw), var_0)));
    let var_2 = vec2<bool>(global0.a.x, !global1.a.x);
    let var_3 = func_1(1081f, _wgslsmith_f_op_vec2_f32(-global0.b.a.yx), select(select(any(vec2<bool>(global1.a.x, true)) & (global0.b.e <= global0.b.e), all(!vec3<bool>(true, global1.a.x, true)), false), any(!vec4<bool>(true, global0.a.x, global0.a.x, false)) || any(!vec3<bool>(false, false, global0.a.x)), true & (any(vec4<bool>(global1.a.x, false, true, false)) | global1.a.x)));
    global0 = Struct_2(var_2, Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, -507f, 585f, 1505f))), _wgslsmith_dot_vec3_u32(var_3.d & var_3.d, abs(var_3.d)) & func_1(_wgslsmith_f_op_f32(-var_3.a.x), _wgslsmith_f_op_vec2_f32(-var_1.yx), true).d.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1474f, var_1.x)) + _wgslsmith_f_op_f32(-572f * var_1.x)) + -605f), vec3<u32>(6256u, global1.e.e, _wgslsmith_dot_vec4_u32(vec4<u32>(global1.e.d.x, global0.c.d.x, 1u, 1u) >> (vec4<u32>(0u, global0.b.e, var_3.e, 9821u) % vec4<u32>(32u)), min(vec4<u32>(global1.e.d.x, global0.e.e, var_3.b, 139730u), vec4<u32>(var_3.b, global1.e.b, global0.c.e, u_input.c)))), var_3.d.x & ~3408u), global1.c, _wgslsmith_sub_vec3_i32(~vec3<i32>(2147483647i, ~8766i, _wgslsmith_dot_vec4_i32(vec4<i32>(16950i, -217i, u_input.a.x, global1.d.x), vec4<i32>(global1.d.x, 2147483647i, 25401i, u_input.b.x))), ~u_input.b), Struct_1(func_4(Struct_2(!vec2<bool>(global1.a.x, global0.a.x), Struct_1(var_3.a, 12653u, global1.c.c, vec3<u32>(35731u, 18038u, 4294967295u), 4294967295u), Struct_1(global1.b.a, 1u, -1090f, vec3<u32>(global1.b.e, global0.e.e, 0u), 1u), global0.d ^ u_input.b, global2[_wgslsmith_index_u32(~42196u, 14u)]), global0.c.a.zzz, global1.c.a.wzy, Struct_2(select(global0.a, var_2, global1.a), Struct_1(global0.c.a, 38306u, -483f, global1.b.d, 1u), func_2(true, var_3.d), _wgslsmith_mod_vec3_i32(global1.d, vec3<i32>(global0.d.x, global1.d.x, -21497i)), func_4(Struct_2(var_2, Struct_1(var_3.a, global0.c.b, var_0.x, var_3.d, 78804u), Struct_1(global1.b.a, 1u, var_3.c, global1.e.d, 95261u), vec3<i32>(0i, global0.d.x, global0.d.x), global2[_wgslsmith_index_u32(78327u, 14u)]), vec3<f32>(-1450f, var_1.x, var_3.c), global1.e.a.yzx, Struct_2(vec2<bool>(true, global1.a.x), global1.e, global1.e, vec3<i32>(global1.d.x, global0.d.x, u_input.a.x), global1.c)))).a, 0u, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(global1.c.a.x)))), -488f)), global0.c.d, _wgslsmith_div_u32(~79415u, _wgslsmith_dot_vec3_u32(func_2(var_2.x, vec3<u32>(1u, 1u, global1.b.d.x)).d, func_2(var_2.x, var_3.d).d))));
    let var_4 = global0.d.xy;
    let var_5 = global1.e;
    let x = u_input.a;
    s_output = StorageBuffer(-38436i);
}


struct Struct_1 {
    a: vec3<f32>,
    b: vec3<f32>,
    c: u32,
    d: vec2<bool>,
    e: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
    c: vec3<bool>,
}

struct Struct_4 {
    a: vec2<u32>,
}

struct Struct_5 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
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

var<private> global0: Struct_4 = Struct_4(vec2<u32>(77727u, 28053u));

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: i32) -> bool {
    var var_0 = Struct_1(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(793f, 168f)))), _wgslsmith_f_op_f32(step(-965f, _wgslsmith_f_op_f32(f32(-1f) * -1067f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(308f, 1437f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(236f, 146f, 281f), vec3<f32>(-865f, 863f, -1263f), vec3<bool>(true, true, true)))))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-256f, _wgslsmith_f_op_f32(f32(-1f) * -1247f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-2050f + _wgslsmith_f_op_f32(ceil(-331f))), _wgslsmith_f_op_f32(ceil(-309f)), true)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(251f, 997f)), 1f, true))))), min(1u, ~17797u), !select(!select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, true), all(vec3<bool>(true, true, true))), _wgslsmith_add_vec4_u32(reverseBits(_wgslsmith_div_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(global0.a.x, global0.a.x, 1u, global0.a.x), vec4<u32>(1296u, global0.a.x, 47850u, global0.a.x)), vec4<u32>(global0.a.x, global0.a.x, global0.a.x, global0.a.x))), firstLeadingBit(~(~vec4<u32>(global0.a.x, global0.a.x, global0.a.x, global0.a.x)))));
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -936f);
    var var_2 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(var_0.b.yx, var_0.b.zx), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.b.zz + _wgslsmith_f_op_vec2_f32(-var_0.a.zz)) * _wgslsmith_f_op_vec2_f32(select(var_0.a.zx, _wgslsmith_f_op_vec2_f32(-var_0.b.xy), var_0.d))), vec2<f32>(_wgslsmith_f_op_f32(var_0.a.x + 1f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_0.a.x - 1646f), var_0.a.x))), select(select(vec2<bool>(true, true), vec2<bool>(false, var_0.d.x), var_0.d.x), !var_0.d, min(45614i, 1i) > ~arg_0)))));
    global0 = Struct_4(var_0.e.xz);
    var var_3 = var_0.c;
    return var_0.d.x;
}

fn func_2() -> vec2<u32> {
    var var_0 = true;
    global0 = Struct_4(vec2<u32>(global0.a.x, 0u));
    var var_1 = _wgslsmith_mult_i32(u_input.a, _wgslsmith_mod_i32(abs(-1i), reverseBits(-1i)));
    var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-105f + -508f))))) == _wgslsmith_f_op_f32(select(-477f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(467f))))), false));
    let var_2 = select(select(!vec2<bool>(func_3(6040i), all(vec2<bool>(false, true))), !select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true)), select(!select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true)), vec2<bool>(true, global0.a.x >= global0.a.x), select(select(false, true, true), all(vec4<bool>(false, true, true, false)), true))), !select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), !select(vec2<bool>(true, true), vec2<bool>(false, false), false), true), vec2<bool>(true, true));
    return global0.a;
}

fn func_1(arg_0: vec2<u32>) -> Struct_1 {
    global0 = Struct_4(func_2());
    global0 = Struct_4(vec2<u32>(31020u, min(_wgslsmith_dot_vec3_u32(vec3<u32>(24067u, 36430u, arg_0.x), ~vec3<u32>(1850u, 19518u, 1u)), ~(~4294967295u))));
    global0 = Struct_4(~(~global0.a >> (vec2<u32>(_wgslsmith_add_u32(arg_0.x, 16662u), max(arg_0.x, 1u)) % vec2<u32>(32u))));
    var var_0 = 1u;
    let var_1 = _wgslsmith_add_i32(-2147483647i, _wgslsmith_mult_i32(u_input.a, 1i));
    return Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(871f, 1144f, 316f) - vec3<f32>(1000f, -656f, -2029f)))) + _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-289f, 1539f, 517f))))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 293f, _wgslsmith_div_f32(275f, _wgslsmith_f_op_f32(round(-1027f))))), _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(abs(vec4<u32>(arg_0.x, global0.a.x, 21431u, global0.a.x)) & vec4<u32>(global0.a.x, 4294967295u, global0.a.x, arg_0.x), firstTrailingBit(_wgslsmith_mult_vec4_u32(vec4<u32>(arg_0.x, global0.a.x, arg_0.x, 1u), vec4<u32>(arg_0.x, global0.a.x, 4294967295u, 4294967295u))), ~min(vec4<u32>(arg_0.x, 39664u, 38334u, 4294967295u), vec4<u32>(global0.a.x, global0.a.x, global0.a.x, arg_0.x))), (vec4<u32>(arg_0.x, 4294967295u, 24782u, arg_0.x) << (select(vec4<u32>(arg_0.x, global0.a.x, 49427u, 36680u), vec4<u32>(global0.a.x, global0.a.x, global0.a.x, 0u), true) % vec4<u32>(32u))) >> (min(vec4<u32>(global0.a.x, 1970u, 4294967295u, 0u) ^ vec4<u32>(4294967295u, 4294967295u, global0.a.x, 1u), ~vec4<u32>(global0.a.x, 31592u, 4294967295u, global0.a.x)) % vec4<u32>(32u))), vec2<bool>(true, true), vec4<u32>(global0.a.x, global0.a.x, _wgslsmith_mult_u32(global0.a.x, 80141u), ((23270u << (global0.a.x % 32u)) & ~1u) | _wgslsmith_mult_u32(~arg_0.x, arg_0.x)));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_4, arg_2: Struct_2, arg_3: vec3<bool>) -> Struct_4 {
    let var_0 = arg_2;
    global0 = Struct_4(vec2<u32>(global0.a.x, global0.a.x));
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -216f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1713f) - _wgslsmith_f_op_f32(-arg_2.a.b.x)), -1204f, _wgslsmith_div_f32(arg_0.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_0.a.a.x)) + _wgslsmith_f_op_f32(max(arg_2.a.a.x, 763f))))));
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(-1112f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.a.b.x) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1031f * -399f), -1000f)))), _wgslsmith_f_op_f32(-1053f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -192f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-1185f, arg_2.a.a.x), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_2.a.a.x), func_1(global0.a).b.x, arg_3.x)), false))), -632f);
    global0 = arg_1;
    return Struct_4(~(~select(_wgslsmith_mod_vec2_u32(vec2<u32>(arg_2.a.c, 1u), vec2<u32>(arg_1.a.x, 4294967295u)), arg_1.a, vec2<bool>(true, arg_2.a.d.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(407f - -121f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -286f)), _wgslsmith_f_op_f32(-854f - _wgslsmith_f_op_f32(select(365f, -1510f, false))))), -787f);
    global0 = func_4(func_1(select(global0.a, vec2<u32>(1u, global0.a.x), !all(vec2<bool>(true, true)))), Struct_4(countOneBits(abs(max(vec2<u32>(0u, 4294967295u), vec2<u32>(4294967295u, 4294967295u))))), Struct_2(func_1(_wgslsmith_clamp_vec2_u32(vec2<u32>(global0.a.x, 1u), ~global0.a, vec2<u32>(14789u, global0.a.x)))), !vec3<bool>(false, all(vec2<bool>(false, false)), all(vec4<bool>(true, true, true, true))));
    global0 = func_4(func_1(global0.a), func_4(func_1(firstTrailingBit(global0.a)), Struct_4(global0.a), Struct_2(Struct_1(vec3<f32>(var_0.x, -355f, 318f), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_0.x, var_0.x, var_0.x))), ~14247u, vec2<bool>(false, false), firstLeadingBit(vec4<u32>(0u, global0.a.x, global0.a.x, global0.a.x)))), vec3<bool>(!any(vec2<bool>(true, false)), all(select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, false), true)), true)), Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(471f, var_0.x, -1000f), vec3<f32>(-704f, 198f, 1632f), vec3<bool>(true, true, true))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_0.x, var_0.x, var_0.x))), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, 861f, var_0.x) - vec3<f32>(var_0.x, var_0.x, -582f)))), global0.a.x, vec2<bool>(true, true), vec4<u32>(~4294967295u, ~global0.a.x, _wgslsmith_mod_u32(4294967295u, global0.a.x), 4294967295u))), select(!vec3<bool>(any(vec2<bool>(false, false)), true, var_0.x != 1236f), !vec3<bool>(func_1(global0.a).d.x, true, all(vec4<bool>(false, false, true, true))), select(vec3<bool>(func_1(global0.a).d.x, any(vec2<bool>(true, false)), true), select(select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), false), select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), false), true), true)));
    global0 = Struct_4(global0.a ^ global0.a);
    let var_1 = !(_wgslsmith_f_op_f32(max(var_0.x, _wgslsmith_f_op_f32(step(var_0.x, var_0.x)))) != _wgslsmith_f_op_f32(-var_0.x)) && (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(740f - 2064f))) >= _wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(-func_1(global0.a).b.x)));
    var var_2 = abs(~(-(~firstTrailingBit(u_input.a))));
    global0 = Struct_4(~reverseBits(_wgslsmith_mult_vec2_u32(~vec2<u32>(global0.a.x, global0.a.x), ~vec2<u32>(global0.a.x, 45778u))));
    let var_3 = reverseBits(u_input.a);
    var_2 = u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(656f);
}


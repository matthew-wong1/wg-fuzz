struct Struct_1 {
    a: vec3<f32>,
    b: vec2<bool>,
    c: bool,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<vec3<i32>, 3>;

var<private> global2: array<Struct_1, 24>;

var<private> global3: f32 = -1020f;

var<private> global4: array<i32, 1>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: bool) -> vec4<f32> {
    global1 = array<vec3<i32>, 3>();
    let var_0 = _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(566f, _wgslsmith_f_op_f32(max(549f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -367f), _wgslsmith_f_op_f32(abs(137f)))))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(1467f, 1584f)), 1000f)))), _wgslsmith_f_op_f32(-594f * _wgslsmith_f_op_f32(f32(-1f) * -638f)))));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0.x, var_0.x)));
    let var_2 = vec2<u32>(50685u, _wgslsmith_mult_u32(1u, _wgslsmith_mod_u32(u_input.c, select(u_input.d, ~0u, arg_0))));
    global3 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1384f, _wgslsmith_f_op_f32(-var_0.x)))) + _wgslsmith_f_op_f32(ceil(-1014f)))));
    return var_0;
}

fn func_2() -> vec2<bool> {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1806f), _wgslsmith_f_op_f32(ceil(652f))) + _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(-733f, 573f) * vec2<f32>(1453f, 1318f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(305f, 269f) + vec2<f32>(-575f, -568f)))))));
    global0 = var_0.x;
    let var_1 = u_input.b;
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, -1009f, var_0.x, var_0.x))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(false)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_0.x, -961f, 412f) + vec4<f32>(-1366f, -1024f, -1000f, var_0.x))))));
    let var_3 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -767f) + _wgslsmith_f_op_f32(ceil(-438f))))))));
    return select(select(vec2<bool>(true, select(all(vec4<bool>(true, false, false, true)), true, var_0.x < -229f)), vec2<bool>(!any(vec2<bool>(false, true)), select(any(vec3<bool>(true, false, true)), true, any(vec2<bool>(true, false)))), vec2<bool>(all(vec3<bool>(false, false, false)) || true, _wgslsmith_f_op_f32(round(2133f)) < -970f)), vec2<bool>(all(vec4<bool>(true, true, true, true)), all(vec2<bool>(true, any(vec3<bool>(true, false, true))))), !select(vec2<bool>(any(vec2<bool>(true, true)), u_input.c < u_input.c), select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, true), false), vec2<bool>(false, false)), vec2<bool>(true, true)));
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> bool {
    var var_0 = 85322u;
    global3 = _wgslsmith_f_op_f32(1356f + _wgslsmith_f_op_f32(max(-2070f, arg_3.a.x)));
    global3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_0))), -750f, 2147483647i < _wgslsmith_mult_i32(arg_2.d.x, -40722i)))) + arg_0);
    global3 = 528f;
    var var_1 = ~(_wgslsmith_mult_vec3_u32(vec3<u32>(43431u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, u_input.d, u_input.c, 0u), vec4<u32>(u_input.d, u_input.d, u_input.c, u_input.c)), ~4294967295u), ~(~vec3<u32>(0u, u_input.d, u_input.d))) | max(firstLeadingBit(countOneBits(vec3<u32>(1899u, 1u, 100410u))), ~(vec3<u32>(30051u, 1u, u_input.c) ^ vec3<u32>(31602u, u_input.d, u_input.c))));
    return func_2().x;
}

fn func_1() -> vec2<f32> {
    let var_0 = reverseBits(u_input.b.x);
    var var_1 = vec3<bool>(true, true, func_4(-1686f, Struct_1(vec3<f32>(_wgslsmith_f_op_f32(round(-200f)), _wgslsmith_f_op_f32(ceil(1248f)), 1359f), select(vec2<bool>(false, true), func_2(), vec2<bool>(false, true)), true, _wgslsmith_mult_vec2_i32(u_input.b.yz, countOneBits(u_input.b.zx))), global2[_wgslsmith_index_u32(countOneBits(u_input.d), 24u)], global2[_wgslsmith_index_u32(u_input.c, 24u)]));
    global3 = 224f;
    let var_2 = vec2<f32>(1f, 1f);
    var var_3 = global2[_wgslsmith_index_u32(u_input.d, 24u)];
    return vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_2.x)) - 104f)), var_2.x);
}

fn func_5(arg_0: Struct_1, arg_1: u32, arg_2: vec2<f32>, arg_3: vec2<f32>) -> Struct_1 {
    let var_0 = abs(reverseBits(global4[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(0u, u_input.d), vec2<u32>(u_input.d, 35925u)), 1u)]) ^ arg_0.d.x);
    let var_1 = arg_0.c;
    var var_2 = vec2<u32>(1u, 71524u);
    var var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-arg_2), vec2<f32>(arg_2.x, 573f), !func_2())), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -154f), 1f))), !(_wgslsmith_f_op_f32(-arg_2.x) != _wgslsmith_f_op_f32(round(-214f))))) - vec2<f32>(arg_0.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.a.x * 236f) - _wgslsmith_f_op_f32(-499f - 609f)) * 1894f)));
    var_2 = _wgslsmith_sub_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(arg_1, 4294967295u), vec2<u32>(arg_1, 0u), _wgslsmith_sub_vec2_u32(vec2<u32>(var_2.x, arg_1) >> (vec2<u32>(4294967295u, u_input.c) % vec2<u32>(32u)), reverseBits(vec2<u32>(var_2.x, u_input.c)))) & firstLeadingBit(~_wgslsmith_mod_vec2_u32(vec2<u32>(arg_1, arg_1), vec2<u32>(4294967295u, 13155u))), vec2<u32>(_wgslsmith_div_u32(~18822u, select(abs(u_input.c), firstTrailingBit(var_2.x), var_1)), countOneBits(_wgslsmith_dot_vec3_u32(vec3<u32>(67489u, 0u, 1u), countOneBits(vec3<u32>(87573u, u_input.d, u_input.c))))));
    return Struct_1(arg_0.a, !(!(!vec2<bool>(var_1, var_1))), arg_0.b.x, -(u_input.b.xz & ~(vec2<i32>(29154i, 5594i) & arg_0.d)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_1, 24>();
    var var_0 = func_5(global2[_wgslsmith_index_u32(reverseBits(_wgslsmith_div_u32(reverseBits(43957u), ~max(u_input.d, 65473u))), 24u)], 61766u, _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1450f, -364f) - vec2<f32>(-941f, -794f))))))), _wgslsmith_f_op_vec2_f32(func_1()));
    global2 = array<Struct_1, 24>();
    global0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.x)), -2284f));
    var_0 = func_5(func_5(func_5(Struct_1(var_0.a, select(vec2<bool>(var_0.c, true), vec2<bool>(var_0.c, var_0.c), vec2<bool>(true, true)), var_0.c, var_0.d), select(u_input.d, u_input.c, u_input.d != 47431u), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0.a.x, var_0.a.x), var_0.a.zz, vec2<bool>(var_0.b.x, false))) * vec2<f32>(var_0.a.x, -797f)), vec2<f32>(-940f, 328f)), 4294967295u, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(var_0.a.zz)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.a.x, var_0.a.x) * vec2<f32>(844f, var_0.a.x))) + var_0.a.xy), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(796f, _wgslsmith_f_op_f32(exp2(var_0.a.x))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a.x, 1903f))))), u_input.d, vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -640f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(177f - func_5(global2[_wgslsmith_index_u32(98984u, 24u)], u_input.d, var_0.a.yy, var_0.a.yy).a.x))), _wgslsmith_f_op_vec2_f32(func_1()));
    let var_1 = _wgslsmith_dot_vec3_i32(-(~countOneBits(max(vec3<i32>(var_0.d.x, 3358i, -1844i), u_input.b))), vec3<i32>(2147483647i, -var_0.d.x, global4[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.c, u_input.d), vec2<u32>(u_input.c, u_input.c), vec2<u32>(20674u, 21237u)), min(vec2<u32>(u_input.c, u_input.d), vec2<u32>(u_input.c, 0u)), ~vec2<u32>(4294967295u, u_input.c)), _wgslsmith_sub_vec2_u32(vec2<u32>(1u, 0u) & vec2<u32>(u_input.d, 35145u), ~vec2<u32>(u_input.c, u_input.d))), 1u)]));
    global3 = _wgslsmith_f_op_f32(ceil(-127f));
    var_0 = func_5(func_5(global2[_wgslsmith_index_u32(_wgslsmith_div_u32(53277u, u_input.c), 24u)], ~_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.c, 31280u, u_input.d, u_input.c), vec4<u32>(4294967295u, u_input.c, 33104u, u_input.c), vec4<u32>(4294967295u, u_input.d, 0u, 1u)), vec4<u32>(u_input.d, 1u, 4294967295u, u_input.d)), _wgslsmith_f_op_vec2_f32(var_0.a.xy + vec2<f32>(1156f, 1030f)), vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(var_0.a.x)))), var_0.a.x)), u_input.c, _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(187f + _wgslsmith_f_op_f32(f32(-1f) * -921f)), _wgslsmith_f_op_f32(-1000f - -123f)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.a.zy), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-var_0.a.x), 308f))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.x - 1000f))), -2721f, _wgslsmith_f_op_f32(max(-645f, var_0.a.x)), var_0.a.x), min(countOneBits(~var_0.d.x) >> (~1u % 32u), ~(_wgslsmith_sub_i32(global4[_wgslsmith_index_u32(4294967295u, 1u)], 1i) ^ 32254i)), -var_0.d);
}


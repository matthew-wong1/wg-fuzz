struct Struct_1 {
    a: vec3<f32>,
    b: vec2<f32>,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: i32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<vec3<u32>, 11> = array<vec3<u32>, 11>(vec3<u32>(81981u, 29202u, 24594u), vec3<u32>(1u, 0u, 58596u), vec3<u32>(6503u, 1u, 0u), vec3<u32>(111526u, 12978u, 4294967295u), vec3<u32>(1u, 1u, 118561u), vec3<u32>(40130u, 4294967295u, 0u), vec3<u32>(1u, 15772u, 14942u), vec3<u32>(4294967295u, 30668u, 50773u), vec3<u32>(28953u, 21020u, 4294967295u), vec3<u32>(81291u, 17778u, 10483u), vec3<u32>(41431u, 1u, 35774u));

var<private> global2: array<f32, 9> = array<f32, 9>(1179f, -1030f, 2116f, -842f, 1000f, 409f, 582f, -832f, -417f);

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec3<f32> {
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1796f, global2[_wgslsmith_index_u32(u_input.a, 9u)], 533f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(global2[_wgslsmith_index_u32(u_input.a, 9u)], 147f, global2[_wgslsmith_index_u32(u_input.b.x, 9u)]) + vec3<f32>(global2[_wgslsmith_index_u32(46631u, 9u)], -875f, global2[_wgslsmith_index_u32(1u, 9u)])), all(vec3<bool>(false, true, true)))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global2[_wgslsmith_index_u32(1u, 9u)], -935f, global2[_wgslsmith_index_u32(26907u, 9u)]), vec3<f32>(-988f, global2[_wgslsmith_index_u32(u_input.b.x, 9u)], global2[_wgslsmith_index_u32(u_input.a, 9u)]), vec3<bool>(false, false, true))))) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(global2[_wgslsmith_index_u32(u_input.b.x, 9u)], global2[_wgslsmith_index_u32(1u, 9u)], global2[_wgslsmith_index_u32(83318u, 9u)]), vec3<f32>(312f, 518f, -145f), vec3<bool>(false, false, true)))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-200f, 1363f), vec2<f32>(global2[_wgslsmith_index_u32(52902u, 9u)], global2[_wgslsmith_index_u32(u_input.a, 9u)]))))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(select(global2[_wgslsmith_index_u32(1u, 9u)], -1000f, true)), _wgslsmith_div_f32(global2[_wgslsmith_index_u32(u_input.b.x, 9u)], -1000f)) * _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(global2[_wgslsmith_index_u32(u_input.b.x, 9u)], -582f))), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(global2[_wgslsmith_index_u32(74778u, 9u)], global2[_wgslsmith_index_u32(48202u, 9u)]))))))), _wgslsmith_div_vec3_u32(vec3<u32>(4563u, _wgslsmith_clamp_u32(_wgslsmith_sub_u32(116533u, 10041u), abs(4294967295u), abs(u_input.b.x)), ~u_input.a ^ u_input.b.x), _wgslsmith_add_vec3_u32(global1[_wgslsmith_index_u32(u_input.b.x, 11u)], _wgslsmith_clamp_vec3_u32(u_input.b, ~global1[_wgslsmith_index_u32(4294967295u, 11u)], vec3<u32>(1u, u_input.a, u_input.b.x)))));
    var var_1 = var_0;
    var var_2 = ~_wgslsmith_sub_vec2_u32(vec2<u32>(max(_wgslsmith_mult_u32(u_input.a, 46392u), var_0.c.x), var_1.c.x), countOneBits(var_0.c.zy));
    var var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(var_0.a * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b.x, -299f, 1360f)))))), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1935f + _wgslsmith_f_op_f32(trunc(541f))), var_0.b.x), _wgslsmith_f_op_f32(-228f - _wgslsmith_f_op_f32(var_0.b.x * _wgslsmith_f_op_f32(var_1.a.x - var_1.a.x)))), _wgslsmith_add_vec3_u32(var_1.c, ~select(u_input.b, u_input.b, vec3<bool>(false, true, false)) | ~(var_0.c & vec3<u32>(var_2.x, u_input.a, var_0.c.x))));
    var var_4 = Struct_1(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(1000f + -859f), _wgslsmith_f_op_f32(-1301f - var_3.b.x), -284f)), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-555f, 148f, _wgslsmith_f_op_f32(trunc(var_0.a.x))))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_1.b))))), vec3<u32>(_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(var_3.c.x, var_2.x, var_2.x, var_3.c.x)), vec4<u32>(50093u, u_input.a, 0u, var_2.x)), ~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, var_1.c.x, 4294967295u), var_1.c)), _wgslsmith_mod_u32(_wgslsmith_sub_u32(4294967295u, abs(20569u)), ~var_0.c.x), _wgslsmith_clamp_u32(~(u_input.b.x >> (38727u % 32u)), 8743u, ~(~0u))));
    return _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_1.a.x, -860f)))), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1086f - var_1.a.x), -203f)))));
}

fn func_2(arg_0: i32, arg_1: bool, arg_2: i32, arg_3: f32) -> Struct_1 {
    let var_0 = _wgslsmith_mod_vec4_u32(firstLeadingBit(firstTrailingBit(~vec4<u32>(77486u, 28519u, u_input.a, u_input.a)) >> (~(~vec4<u32>(u_input.a, 45592u, 26804u, 0u)) % vec4<u32>(32u))), vec4<u32>(select(max(u_input.b.x, u_input.a), ~53757u, arg_1 != true) & ~abs(1u), _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(u_input.b, vec3<u32>(4294967295u, u_input.b.x, u_input.b.x)), u_input.a), _wgslsmith_dot_vec2_u32(u_input.b.xz, vec2<u32>(28805u, ~u_input.b.x)), 1u));
    global0 = -1i;
    global0 = _wgslsmith_mod_i32(2147483647i, -13819i);
    global1 = array<vec3<u32>, 11>();
    var var_1 = all(!(!select(select(vec2<bool>(false, arg_1), vec2<bool>(true, false), arg_1), vec2<bool>(arg_1, false), select(vec2<bool>(arg_1, arg_1), vec2<bool>(false, true), false))));
    return Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3()), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(arg_3, _wgslsmith_f_op_vec3_f32(func_3()).x, _wgslsmith_f_op_f32(ceil(830f)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(global2[_wgslsmith_index_u32(24180u, 9u)], 401f), _wgslsmith_div_f32(3014f, 1258f)))), var_0.wxx);
}

fn func_4(arg_0: vec2<u32>, arg_1: f32, arg_2: i32, arg_3: Struct_1) -> vec2<f32> {
    let var_0 = func_2(-3145i, !(all(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true))) && ((u_input.b.x | 58277u) == u_input.b.x)), arg_2, 2065f);
    var var_1 = any(vec3<bool>(false, -2141f < _wgslsmith_f_op_vec3_f32(func_3()).x, true));
    var var_2 = _wgslsmith_mod_vec2_u32(max(_wgslsmith_mult_vec2_u32(arg_3.c.zx, var_0.c.xy), ~_wgslsmith_mod_vec2_u32(select(vec2<u32>(arg_3.c.x, 30547u), vec2<u32>(var_0.c.x, 4294967295u), true), var_0.c.zz)), _wgslsmith_div_vec2_u32(abs(select(select(arg_0, arg_3.c.zx, true), firstTrailingBit(vec2<u32>(var_0.c.x, arg_3.c.x)), vec2<bool>(false, false))), countOneBits((vec2<u32>(10199u, arg_3.c.x) | u_input.b.zx) >> (arg_3.c.zx % vec2<u32>(32u)))));
    let var_3 = var_0;
    var var_4 = var_3;
    return _wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_3.b.x, _wgslsmith_f_op_vec3_f32(func_3()).x), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(var_0.b, var_0.b)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec3_f32(func_3()).xz), vec2<bool>(any(vec4<bool>(true, true, false, false)), true))) * _wgslsmith_f_op_vec2_f32(func_2(arg_2, all(vec3<bool>(false, false, true)), 7331i, _wgslsmith_f_op_f32(select(global2[_wgslsmith_index_u32(38460u, 9u)], -1130f, true))).b * _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(var_4.b * arg_3.a.xy), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_3.b.x, arg_3.b.x)))))))));
}

fn func_1(arg_0: vec3<u32>) -> vec2<f32> {
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global2[_wgslsmith_index_u32(arg_0.x, 9u)], _wgslsmith_f_op_f32(2642f - global2[_wgslsmith_index_u32(66125u | u_input.a, 9u)])) + _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(func_4(arg_0.xy, _wgslsmith_f_op_f32(1000f + global2[_wgslsmith_index_u32(5119u, 9u)]), select(-1i, 2147483647i, true), func_2(2147483647i, true, 12138i, global2[_wgslsmith_index_u32(72481u, 9u)])))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = i32(-1i) * -abs(i32(-1i) * -2147483647i);
    var var_0 = !(_wgslsmith_f_op_f32(max(global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_mod_u32(0u, 1u), 42759u), 9u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1261f)))) == -433f);
    let var_1 = any(select(select(vec4<bool>(false, global2[_wgslsmith_index_u32(43504u, 9u)] >= global2[_wgslsmith_index_u32(u_input.b.x, 9u)], select(true, true, true), true), vec4<bool>(true, true, true, u_input.a != 0u), vec4<bool>(false, global2[_wgslsmith_index_u32(u_input.a, 9u)] >= -828f, all(vec3<bool>(false, true, true)), true)), select(select(vec4<bool>(true, true, true, false), select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, true)), true), vec4<bool>(true, true, true, true), u_input.b.x == ~u_input.b.x), all(select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, false))) || true));
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 933f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(global2[_wgslsmith_index_u32(u_input.b.x, 9u)], -102f))))), _wgslsmith_f_op_vec2_f32(func_1(~(global1[_wgslsmith_index_u32(0u, 11u)] >> (vec3<u32>(0u, 10960u, u_input.b.x) % vec3<u32>(32u)))))));
    let var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(647f, 1842f, var_2.x)))))))), var_2, vec3<u32>(_wgslsmith_div_u32(func_2(-1i, all(vec2<bool>(var_1, true)), -34830i << (u_input.a % 32u), _wgslsmith_f_op_vec3_f32(func_3()).x).c.x, ~_wgslsmith_clamp_u32(1u, u_input.b.x, 75103u)), ~u_input.b.x, ~4294967295u));
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.a, var_2.x, -2147483647i, firstTrailingBit(~(~(var_3.c.xy | vec2<u32>(34955u, var_3.c.x)))));
}


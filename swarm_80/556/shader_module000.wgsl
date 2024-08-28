struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 0i;

var<private> global1: Struct_1;

var<private> global2: array<Struct_1, 4> = array<Struct_1, 4>(Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(true));

var<private> global3: array<f32, 16>;

var<private> global4: array<Struct_1, 9>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2() -> Struct_1 {
    global1 = Struct_1(global1.a);
    global4 = array<Struct_1, 9>();
    global3 = array<f32, 16>();
    global3 = array<f32, 16>();
    let var_0 = 1u;
    return global2[_wgslsmith_index_u32(~(~(~(_wgslsmith_dot_vec3_u32(vec3<u32>(111517u, var_0, var_0), vec3<u32>(33443u, 4294967295u, var_0)) | 1u))), 4u)];
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: vec4<i32>, arg_3: vec3<f32>) -> u32 {
    var var_0 = vec3<bool>(-2147483647i <= _wgslsmith_sub_i32(arg_2.x, u_input.a), global3[_wgslsmith_index_u32(4294967295u, 16u)] <= global3[_wgslsmith_index_u32(max(arg_0, firstLeadingBit(1u)), 16u)], global1.a);
    global0 = ~19250i;
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3[_wgslsmith_index_u32(21472u, 16u)], -1947f, global3[_wgslsmith_index_u32(arg_0, 16u)], 156f)) * vec4<f32>(-846f, _wgslsmith_f_op_f32(step(1488f, -493f)), _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(47880u, 16u)]), _wgslsmith_f_op_f32(-280f - 587f)))));
    var var_2 = global2[_wgslsmith_index_u32(4294967295u, 4u)];
    var var_3 = _wgslsmith_f_op_vec2_f32(arg_3.zy * _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_3.x, 711f) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_3.xx - arg_3.zz)))));
    return ~reverseBits(~arg_0) >> (min(89u, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, max(arg_0, arg_0), 1u, ~1u), max(countOneBits(vec4<u32>(86959u, 1u, arg_0, 39143u)), ~vec4<u32>(arg_0, 4294967295u, 4294967295u, arg_0)))) % 32u);
}

fn func_4(arg_0: u32, arg_1: vec2<i32>, arg_2: vec2<f32>, arg_3: bool) -> Struct_1 {
    let var_0 = all(select(select(vec4<bool>(arg_0 > 17055u, global1.a, all(vec4<bool>(global1.a, true, false, global1.a)), arg_3 & global1.a), vec4<bool>(18010i > u_input.a, true, !arg_3, true), false), select(!vec4<bool>(false, false, global1.a, true), !select(vec4<bool>(true, arg_3, global1.a, true), vec4<bool>(false, arg_3, arg_3, arg_3), vec4<bool>(true, global1.a, global1.a, true)), vec4<bool>(!global1.a, true, arg_1.x >= 1i, arg_3 & false)), !vec4<bool>(-958f > global3[_wgslsmith_index_u32(15382u, 16u)], any(vec4<bool>(global1.a, true, true, global1.a)), all(vec3<bool>(false, arg_3, global1.a)), !arg_3)));
    var var_1 = (_wgslsmith_add_vec3_u32(~_wgslsmith_mod_vec3_u32(vec3<u32>(0u, 21579u, arg_0), vec3<u32>(35408u, arg_0, arg_0)), ~(vec3<u32>(arg_0, 1u, arg_0) & vec3<u32>(arg_0, 1u, arg_0))) >> (~(vec3<u32>(32302u, arg_0, 21189u) ^ (vec3<u32>(4294967295u, arg_0, 4901u) >> (vec3<u32>(33382u, arg_0, arg_0) % vec3<u32>(32u)))) % vec3<u32>(32u))) | _wgslsmith_div_vec3_u32(vec3<u32>(_wgslsmith_sub_u32(firstTrailingBit(0u), arg_0), arg_0, 1u), ~abs(vec3<u32>(arg_0, arg_0, 54974u) >> (vec3<u32>(14256u, 11040u, 1u) % vec3<u32>(32u))));
    let var_2 = func_2();
    let var_3 = ~abs(arg_0);
    global1 = var_2;
    return var_2;
}

fn func_1(arg_0: vec2<i32>, arg_1: vec3<bool>) -> bool {
    let var_0 = func_4(_wgslsmith_sub_u32(_wgslsmith_add_u32(func_3(4294967295u, func_2(), _wgslsmith_add_vec4_i32(vec4<i32>(arg_0.x, arg_0.x, arg_0.x, -1i), vec4<i32>(u_input.a, 19022i, u_input.a, -1i)), _wgslsmith_f_op_vec3_f32(vec3<f32>(global3[_wgslsmith_index_u32(78863u, 16u)], global3[_wgslsmith_index_u32(55443u, 16u)], 375f) - vec3<f32>(1051f, global3[_wgslsmith_index_u32(4294967295u, 16u)], 529f))), _wgslsmith_div_u32(~48005u, 4294967295u)), func_3(firstTrailingBit(4294967295u), Struct_1(false), vec4<i32>(arg_0.x, 46427i, u_input.a, arg_0.x), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1084f, -587f, global3[_wgslsmith_index_u32(77560u, 16u)])))) << (~(~0u) % 32u)), _wgslsmith_mod_vec2_i32(min(firstTrailingBit(vec2<i32>(u_input.a, u_input.a)), select(arg_0, vec2<i32>(12461i, u_input.a), vec2<bool>(arg_1.x, arg_1.x))), vec2<i32>(reverseBits(1i), ~73950i)) << (_wgslsmith_clamp_vec2_u32(~vec2<u32>(1405u, 34144u), _wgslsmith_clamp_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(0u, 0u), vec2<u32>(1u, 1u)), _wgslsmith_clamp_vec2_u32(vec2<u32>(67224u, 1u), vec2<u32>(1u, 29535u), vec2<u32>(4294967295u, 2909u)) ^ vec2<u32>(0u, 0u)) % vec2<u32>(32u)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1081f, 156f) - _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(global3[_wgslsmith_index_u32(4294967295u, 16u)], 821f))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(4294967295u, 16u)]), _wgslsmith_f_op_f32(f32(-1f) * -211f)))), all(arg_1.xz));
    let var_1 = _wgslsmith_mult_vec4_u32(vec4<u32>(_wgslsmith_clamp_u32(1u, ~0u, ~17546u), ~124512u, 6052u, firstLeadingBit(max(4294967295u, 870u))), vec4<u32>(1u, 1u, 1u, 1u)) >> (vec4<u32>(1u, _wgslsmith_mod_u32(58709u, 1u), abs(firstLeadingBit(_wgslsmith_clamp_u32(8974u, 24667u, 66773u))), 4294967295u) % vec4<u32>(32u));
    let var_2 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global3[_wgslsmith_index_u32(var_1.x, 16u)], -1357f, global3[_wgslsmith_index_u32(0u, 16u)]))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global3[_wgslsmith_index_u32(var_1.x, 16u)], global3[_wgslsmith_index_u32(4294967295u, 16u)], 494f)))))))));
    global1 = func_4(var_1.x ^ var_1.x, vec2<i32>(_wgslsmith_clamp_i32(-2147483647i, 0i, -7884i), u_input.a) >> (vec2<u32>(29791u, var_1.x) % vec2<u32>(32u)), _wgslsmith_f_op_vec2_f32(ceil(var_2.xz)), any(vec4<bool>(arg_1.x && (false && arg_1.x), arg_1.x, true, true)));
    let var_3 = func_4(var_1.x, select(abs(-arg_0), vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, -12087i), arg_0 ^ vec2<i32>(2147483647i, -1i)), -2147483647i), arg_1.yx), vec2<f32>(var_2.x, -180f), arg_1.x);
    return all(!select(select(arg_1.zx, vec2<bool>(global1.a, var_3.a), var_0.a), arg_1.zy, !global1.a)) != any(!arg_1.zz);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(!vec4<bool>(false, global1.a, false, false), !select(!(!vec4<bool>(false, true, global1.a, global1.a)), select(!vec4<bool>(true, global1.a, true, global1.a), !vec4<bool>(true, global1.a, false, true), select(false, true, true)), !func_1(vec2<i32>(u_input.a, u_input.a), vec3<bool>(global1.a, true, false))), !global1.a);
    var var_1 = global2[_wgslsmith_index_u32(_wgslsmith_div_u32(~_wgslsmith_mod_u32(max(1u, firstLeadingBit(76794u)), 4294967295u), 138474u), 4u)];
    let x = u_input.a;
    s_output = StorageBuffer(1u);
}


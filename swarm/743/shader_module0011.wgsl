struct Struct_1 {
    a: vec3<bool>,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 6>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_2(arg_0: Struct_1) -> bool {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-550f, 795f))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1745f, -1583f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-913f, 604f)))))) * vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2184f + _wgslsmith_f_op_f32(830f + 1263f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -696f) - _wgslsmith_f_op_f32(480f * -1531f)) + 1f)));
    var var_1 = 52235u;
    var var_2 = Struct_1(!(!(!arg_0.a)), arg_0.b);
    var var_3 = Struct_1(!(!select(arg_0.a, var_2.a, !var_2.a)), ~var_2.b ^ arg_0.b);
    var_2 = Struct_1(select(select(vec3<bool>(26183u > var_3.b.x, true, var_3.a.x), arg_0.a, var_2.a), !var_3.a, !(!var_2.a.x != var_3.a.x)), select(var_2.b, ~vec4<u32>(abs(var_2.b.x), 10592u, abs(arg_0.b.x), firstLeadingBit(var_2.b.x)), arg_0.a.x));
    return 33012i >= ~_wgslsmith_dot_vec2_i32(u_input.a.zx, (u_input.a.zy & vec2<i32>(u_input.a.x, 1i)) & u_input.a.yy);
}

fn func_1(arg_0: vec4<i32>, arg_1: vec4<f32>, arg_2: i32, arg_3: Struct_1) -> vec2<u32> {
    var var_0 = vec2<i32>(-(-(i32(-1i) * -33880i) << ((_wgslsmith_dot_vec2_u32(arg_3.b.wz, arg_3.b.xz) & 1u) % 32u)), -(~_wgslsmith_mod_i32(1i, _wgslsmith_dot_vec3_i32(u_input.a, vec3<i32>(0i, arg_2, u_input.a.x)))));
    global0 = array<i32, 6>();
    let var_1 = arg_3;
    let var_2 = Struct_1(select(select(vec3<bool>(false, any(vec4<bool>(false, var_1.a.x, false, true)), true), !var_1.a, select(true, var_1.a.x, func_2(Struct_1(arg_3.a, arg_3.b)))), select(select(arg_3.a, select(vec3<bool>(var_1.a.x, arg_3.a.x, true), vec3<bool>(true, var_1.a.x, false), arg_3.a.x), vec3<bool>(true, true, true)), !var_1.a, var_1.a), !(!any(vec4<bool>(var_1.a.x, true, true, arg_3.a.x)))), reverseBits(~(~_wgslsmith_sub_vec4_u32(vec4<u32>(31255u, arg_3.b.x, var_1.b.x, var_1.b.x), vec4<u32>(arg_3.b.x, arg_3.b.x, arg_3.b.x, var_1.b.x)))));
    let var_3 = !(!vec4<bool>(var_1.a.x, true, false, !(u_input.a.x >= arg_0.x)));
    return var_2.b.zz;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 6>();
    global0 = array<i32, 6>();
    var var_0 = _wgslsmith_sub_vec2_u32(func_1(_wgslsmith_div_vec4_i32(~vec4<i32>(1i, 0i, -37840i, -2147483647i), vec4<i32>(-23936i, 14926i, global0[_wgslsmith_index_u32(0u, 6u)], u_input.a.x)), vec4<f32>(-302f, -353f, -576f, -1089f), _wgslsmith_dot_vec4_i32(min(vec4<i32>(global0[_wgslsmith_index_u32(30769u, 6u)], global0[_wgslsmith_index_u32(1u, 6u)], -2147483647i, global0[_wgslsmith_index_u32(19250u, 6u)]), vec4<i32>(42949i, 16697i, global0[_wgslsmith_index_u32(88056u, 6u)], 1i)), select(vec4<i32>(2147483647i, u_input.a.x, -24890i, u_input.a.x), vec4<i32>(46176i, global0[_wgslsmith_index_u32(75679u, 6u)], u_input.a.x, -2147483647i), vec4<bool>(false, false, false, false))), Struct_1(vec3<bool>(true, true, true), vec4<u32>(4294967295u, 1u, 4383u, 42757u))) ^ _wgslsmith_mult_vec2_u32(vec2<u32>(~32200u, firstLeadingBit(47451u)), _wgslsmith_clamp_vec2_u32(func_1(vec4<i32>(u_input.a.x, 865i, global0[_wgslsmith_index_u32(55392u, 6u)], global0[_wgslsmith_index_u32(46670u, 6u)]), vec4<f32>(-1000f, 1095f, -1111f, 407f), 2147483647i, Struct_1(vec3<bool>(false, false, true), vec4<u32>(0u, 23441u, 4294967295u, 4294967295u))), vec2<u32>(4294967295u, 15918u), ~vec2<u32>(13972u, 1u))), ~(~(_wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, 34817u), vec2<u32>(4294967295u, 23046u)) << (vec2<u32>(0u, 1u) % vec2<u32>(32u)))));
    var_0 = ~func_1(~(~vec4<i32>(global0[_wgslsmith_index_u32(4294967295u, 6u)], 2147483647i, global0[_wgslsmith_index_u32(var_0.x, 6u)], -41702i)), vec4<f32>(473f, _wgslsmith_div_f32(864f, 984f), _wgslsmith_f_op_f32(f32(-1f) * -215f), -1000f), _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(global0[_wgslsmith_index_u32(var_0.x, 6u)], global0[_wgslsmith_index_u32(var_0.x, 6u)], u_input.a.x, u_input.a.x), vec4<i32>(2147483647i, 0i, u_input.a.x, 2147483647i)), vec4<i32>(-46950i, global0[_wgslsmith_index_u32(var_0.x, 6u)], -2147483647i, 1i)), Struct_1(select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(false, true, false)), _wgslsmith_mod_vec4_u32(vec4<u32>(1u, var_0.x, 49383u, 21398u), vec4<u32>(var_0.x, var_0.x, 27913u, var_0.x)))) >> (vec2<u32>(21453u, 1u) % vec2<u32>(32u));
    let var_1 = vec2<u32>(1u, 34971u >> (max(~var_0.x, 0u) % 32u)) << ((~vec2<u32>(12147u, var_0.x) << (~select(~vec2<u32>(0u, 0u), firstTrailingBit(vec2<u32>(4294967295u, 4294967295u)), vec2<bool>(true, true)) % vec2<u32>(32u))) % vec2<u32>(32u));
    var var_2 = true;
    let var_3 = !(var_1.x >= (var_0.x >> (4444u % 32u)));
    var var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1000f)) - _wgslsmith_div_f32(-551f, -434f))))) - _wgslsmith_f_op_f32(exp2(1f)));
    let x = u_input.a;
    s_output = StorageBuffer(~reverseBits(vec3<u32>(~var_1.x, ~var_0.x, ~4294967295u)), firstLeadingBit(u_input.a));
}


struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: u32,
    b: vec2<f32>,
    c: vec2<i32>,
    d: vec3<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<bool>,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 26>;

var<private> global1: array<Struct_1, 8> = array<Struct_1, 8>(Struct_1(vec2<bool>(false, false)), Struct_1(vec2<bool>(true, true)), Struct_1(vec2<bool>(true, true)), Struct_1(vec2<bool>(true, true)), Struct_1(vec2<bool>(true, false)), Struct_1(vec2<bool>(true, false)), Struct_1(vec2<bool>(false, false)), Struct_1(vec2<bool>(false, false)));

var<private> global2: f32;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec4<bool>) -> bool {
    let var_0 = -781f;
    global2 = _wgslsmith_f_op_f32(-778f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-2960f)))));
    let var_1 = _wgslsmith_div_u32(1u, ~u_input.b.x) >= _wgslsmith_mult_u32(firstTrailingBit(4294967295u), abs(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, u_input.b.x, 4294967295u), ~vec3<u32>(4294967295u, u_input.b.x, 6422u))));
    global0 = array<vec3<f32>, 26>();
    var var_2 = u_input.b.yxy;
    return true;
}

fn func_2(arg_0: Struct_2, arg_1: vec2<i32>, arg_2: Struct_2) -> i32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-arg_0.b);
    let var_1 = arg_2;
    global0 = array<vec3<f32>, 26>();
    let var_2 = func_3(select(!(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), true)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), true));
    var var_3 = Struct_3(var_1, !(!select(select(vec3<bool>(false, false, var_2), vec3<bool>(true, var_2, var_2), var_2), select(vec3<bool>(var_2, var_2, var_2), vec3<bool>(var_2, var_2, true), vec3<bool>(false, true, var_2)), !var_2)), arg_2);
    return reverseBits(-(arg_0.d.x ^ (-arg_1.x ^ (i32(-1i) * -29302i))));
}

fn func_1(arg_0: i32, arg_1: Struct_1) -> i32 {
    let var_0 = global1[_wgslsmith_index_u32(u_input.b.x, 8u)];
    let var_1 = select(vec4<i32>(min(min(_wgslsmith_mod_i32(u_input.a.x, 0i), func_2(Struct_2(u_input.b.x, vec2<f32>(-572f, -293f), vec2<i32>(u_input.a.x, arg_0), vec3<i32>(u_input.a.x, arg_0, 35959i)), u_input.a.xz, Struct_2(11604u, vec2<f32>(2087f, 522f), vec2<i32>(arg_0, -1i), u_input.a))), select(-1i, ~(-17584i), u_input.b.x >= u_input.b.x)), -_wgslsmith_clamp_i32(reverseBits(u_input.a.x), select(u_input.a.x, arg_0, true), -40020i >> (u_input.b.x % 32u)), 0i, ~_wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(-1i, 2147483647i), vec2<i32>(arg_0, -42029i)), _wgslsmith_mod_vec2_i32(u_input.a.zz, u_input.a.yx))), reverseBits(vec4<i32>(-firstTrailingBit(1i), -64319i, ~1i, firstTrailingBit(arg_0))), vec4<bool>(78115u == _wgslsmith_mod_u32(u_input.b.x, _wgslsmith_div_u32(80431u, 18733u)), -2147483647i <= func_2(Struct_2(26260u, vec2<f32>(-853f, 467f), vec2<i32>(47322i, 0i), u_input.a), firstLeadingBit(vec2<i32>(arg_0, u_input.a.x)), Struct_2(u_input.b.x, vec2<f32>(-1000f, -302f), vec2<i32>(u_input.a.x, 21918i), vec3<i32>(u_input.a.x, arg_0, arg_0))), all(vec2<bool>(true, arg_1.a.x)), select(true, any(vec4<bool>(var_0.a.x, var_0.a.x, false, false)) & true, arg_1.a.x)));
    var var_2 = -9784i;
    var var_3 = vec4<u32>(reverseBits(_wgslsmith_dot_vec2_u32(vec2<u32>(24299u, u_input.b.x) & u_input.b.xz, _wgslsmith_mod_vec2_u32(u_input.b.xy, ~vec2<u32>(u_input.b.x, 0u)))), _wgslsmith_mult_u32(_wgslsmith_sub_u32(abs(u_input.b.x), 5385u), max(~27435u >> (_wgslsmith_div_u32(u_input.b.x, u_input.b.x) % 32u), u_input.b.x)), u_input.b.x, ~u_input.b.x);
    let var_4 = Struct_1(!(!select(vec2<bool>(false, arg_1.a.x), !vec2<bool>(var_0.a.x, var_0.a.x), true)));
    return u_input.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = countOneBits(-_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x << (u_input.b.x % 32u), 1i, func_1(u_input.a.x, Struct_1(vec2<bool>(false, false)))), vec3<i32>(u_input.a.x, 1i | u_input.a.x, u_input.a.x)));
    var var_1 = u_input.a.zz;
    let var_2 = true;
    let var_3 = ~u_input.b.x;
    var var_4 = !((var_3 ^ var_3) >= 4294967295u);
    var var_5 = Struct_2(53494u, _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-1156f - 1000f), 1000f) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(908f, -118f) * vec2<f32>(-323f, -1223f)))))), abs(max(-vec2<i32>(var_0, 0i), ~(~u_input.a.yy))), u_input.a & vec3<i32>(-37032i, 1i, 1i >> (u_input.b.x % 32u)));
    let var_6 = var_5.b.x;
    var var_7 = _wgslsmith_div_vec4_i32(vec4<i32>(-2147483647i, 9089i, ~var_5.c.x, var_1.x), ~firstTrailingBit(vec4<i32>(min(-80214i, var_0), -var_1.x, -17597i, ~var_1.x)));
    let x = u_input.a;
    s_output = StorageBuffer(55959u, _wgslsmith_div_u32(36163u & _wgslsmith_dot_vec3_u32(abs(u_input.b.xyw), ~u_input.b.zyz), var_5.a));
}


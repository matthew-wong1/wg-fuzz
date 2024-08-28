struct Struct_1 {
    a: bool,
    b: f32,
    c: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(1u, 46921u);

var<private> global1: array<u32, 16> = array<u32, 16>(0u, 25554u, 2932u, 51256u, 58209u, 47428u, 2953u, 1u, 22133u, 83537u, 0u, 65876u, 17632u, 66063u, 1u, 4294967295u);

var<private> global2: array<u32, 9>;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: Struct_1, arg_1: Struct_2) -> u32 {
    var var_0 = arg_0.c.x;
    global2 = array<u32, 9>();
    global2 = array<u32, 9>();
    let var_1 = 1f;
    var var_2 = arg_1;
    return 54149u;
}

fn func_3(arg_0: vec2<bool>, arg_1: u32, arg_2: bool, arg_3: vec3<u32>) -> vec4<bool> {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-2061f))))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(439f))))), -354f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -2106f), -501f))), -1839f);
    global0 = ~arg_3.zz;
    var var_1 = u_input.b.x & u_input.b.x;
    global0 = _wgslsmith_mult_vec2_u32(firstLeadingBit(u_input.c.xz), ~select(vec2<u32>(global1[_wgslsmith_index_u32(global0.x, 16u)] >> (14260u % 32u), _wgslsmith_clamp_u32(16529u, arg_1, 1u)), max(vec2<u32>(4294967295u, arg_1), vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 16u)], 16u)], 11479u)) >> (~vec2<u32>(25007u, arg_1) % vec2<u32>(32u)), arg_2));
    var var_2 = Struct_1(!all(select(!vec3<bool>(true, arg_2, false), vec3<bool>(arg_2, arg_0.x, arg_0.x), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_0.x, _wgslsmith_f_op_f32(f32(-1f) * -848f))) - var_0.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(vec3<f32>(var_0.x, -1018f, -430f), var_0.yzz))))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_0.x, 983f)) * var_0.xyz)));
    return vec4<bool>(arg_2, false, all(!vec4<bool>(var_2.a, !arg_0.x, any(vec2<bool>(arg_2, var_2.a)), !arg_0.x)), var_2.a);
}

fn func_1() -> Struct_1 {
    global0 = vec2<u32>(_wgslsmith_mod_u32(~(global1[_wgslsmith_index_u32(u_input.c.x, 16u)] ^ 17184u), 29222u), _wgslsmith_div_u32(3167u, ~global0.x) | global1[_wgslsmith_index_u32(abs(_wgslsmith_mult_u32(1u, 34047u)), 16u)]) & (~abs(_wgslsmith_clamp_vec2_u32(u_input.c.zx, vec2<u32>(4294967295u, 1u), u_input.c.zy)) << (vec2<u32>(countOneBits(func_2(Struct_1(false, 574f, vec3<f32>(-727f, 701f, 1578f)), Struct_2(Struct_1(false, 1301f, vec3<f32>(-2231f, 493f, -603f))))), abs(global0.x)) % vec2<u32>(32u)));
    var var_0 = u_input.c.yy;
    let var_1 = ((select(vec4<u32>(global2[_wgslsmith_index_u32(4294967295u, 9u)], 2342u, 4294967295u, 1u), vec4<u32>(2381u, 4294967295u, global2[_wgslsmith_index_u32(u_input.c.x, 9u)], u_input.c.x) >> (vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(var_0.x, 9u)], 16u)], 16u)], 25577u, var_0.x, var_0.x) % vec4<u32>(32u)), func_3(vec2<bool>(false, true), var_0.x, false, u_input.c)) ^ reverseBits(vec4<u32>(global2[_wgslsmith_index_u32(24675u, 9u)], var_0.x, u_input.c.x, 31728u))) | (firstLeadingBit(~vec4<u32>(13950u, var_0.x, u_input.c.x, global2[_wgslsmith_index_u32(global0.x, 9u)])) | _wgslsmith_add_vec4_u32(vec4<u32>(var_0.x, 0u, 4294967295u, 19327u), vec4<u32>(28913u, global0.x, 56727u, u_input.c.x) | vec4<u32>(var_0.x, global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global0.x, 16u)], 9u)], var_0.x, 1658u)))) >> (~(vec4<u32>(~u_input.c.x, _wgslsmith_clamp_u32(8388u, var_0.x, 0u), 0u, max(15323u, global0.x)) ^ ~(vec4<u32>(11495u, global1[_wgslsmith_index_u32(0u, 16u)], 4294967295u, u_input.c.x) ^ vec4<u32>(global1[_wgslsmith_index_u32(u_input.c.x, 16u)], global0.x, global1[_wgslsmith_index_u32(48339u, 16u)], global0.x))) % vec4<u32>(32u));
    var_0 = vec2<u32>(global2[_wgslsmith_index_u32(select(_wgslsmith_mod_u32(_wgslsmith_mod_u32(global2[_wgslsmith_index_u32(var_0.x, 9u)], _wgslsmith_mod_u32(var_0.x, 0u)), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(5830u, global2[_wgslsmith_index_u32(8944u, 9u)], 4294967295u, 1u), var_1) & ~36424u, 16u)]), min(13548u, ~(~u_input.c.x)), true), 9u)], _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(abs(firstTrailingBit(vec2<u32>(35892u, 10604u))), var_1.yz), firstLeadingBit(_wgslsmith_clamp_vec2_u32(~var_1.wz, vec2<u32>(1u, global0.x), var_1.xw))));
    let var_2 = Struct_3(Struct_1(false, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-409f * -1747f))) * _wgslsmith_f_op_f32(step(-669f, _wgslsmith_f_op_f32(max(-2109f, -997f))))), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1214f * 1039f), _wgslsmith_f_op_f32(f32(-1f) * -1336f)), _wgslsmith_f_op_f32(sign(-1000f)), -1622f)), Struct_1((~1u > u_input.c.x) || true, -1412f, vec3<f32>(_wgslsmith_f_op_f32(trunc(-964f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1000f, 542f) * _wgslsmith_f_op_f32(-1771f * -637f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1547f, -449f)))), u_input.a);
    return Struct_1(var_2.b.a, _wgslsmith_f_op_f32(floor(var_2.a.b)), _wgslsmith_f_op_vec3_f32(-var_2.b.c));
}

fn func_4(arg_0: bool, arg_1: Struct_2, arg_2: f32) -> bool {
    let var_0 = Struct_3(Struct_1(true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(1139f, -1000f), arg_1.a.c.x))), arg_1.a.c), arg_1.a, 18333i);
    global2 = array<u32, 9>();
    global2 = array<u32, 9>();
    global0 = vec2<u32>(_wgslsmith_clamp_u32(u_input.c.x, _wgslsmith_dot_vec2_u32(vec2<u32>(global0.x, u_input.c.x) | vec2<u32>(u_input.c.x, 74081u), vec2<u32>(global0.x ^ 41673u, 14576u)), min(firstTrailingBit(~10279u), ~max(u_input.c.x, 4294967295u))), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, (global2[_wgslsmith_index_u32(4294967295u, 9u)] ^ 10489u) & ~23207u, _wgslsmith_div_u32(u_input.c.x, 82138u) & (32557u | u_input.c.x), ~global2[_wgslsmith_index_u32(~global0.x, 9u)]), select(~vec4<u32>(0u, 0u, 0u, 4136u), ~_wgslsmith_sub_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(global0.x, 16u)], 12642u, global2[_wgslsmith_index_u32(u_input.c.x, 9u)], global1[_wgslsmith_index_u32(1u, 16u)]), vec4<u32>(1u, global0.x, 0u, 68314u)), vec4<bool>(true, true, func_1().a, !var_0.a.a))));
    let var_1 = !(!vec2<bool>(arg_0, any(select(vec3<bool>(true, true, true), vec3<bool>(arg_1.a.a, true, arg_1.a.a), vec3<bool>(var_0.a.a, true, false)))));
    return any(func_3(func_3(!var_1, func_2(Struct_1(var_1.x, -1113f, arg_1.a.c), Struct_2(Struct_1(true, arg_2, vec3<f32>(978f, -659f, var_0.b.b)))), arg_0, vec3<u32>(global1[_wgslsmith_index_u32(41369u, 16u)], 4294967295u, 4294967295u) | (u_input.c | u_input.c)).wz, u_input.c.x, var_1.x, abs(vec3<u32>(~u_input.c.x, min(4294967295u, 1u), max(4294967295u, 0u)))).xzz);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 35280i;
    var_0 = u_input.b.x;
    global0 = u_input.c.zx;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-175f)));
    global1 = array<u32, 16>();
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(598f)), -435f), _wgslsmith_f_op_f32(f32(-1f) * -991f)))) + _wgslsmith_f_op_f32(-485f - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1116f)))));
    let var_3 = !vec2<bool>(true || !all(vec4<bool>(true, false, true, false)), select(any(vec2<bool>(false, true)), !any(vec2<bool>(false, false)), !any(vec2<bool>(true, true))));
    var var_4 = Struct_1(func_4(false, Struct_2(func_1()), 350f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(func_1().b))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, -837f, 257f)));
    let x = u_input.a;
    s_output = StorageBuffer(-2147483647i, u_input.b.x);
}


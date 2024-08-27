struct Struct_1 {
    a: vec2<u32>,
    b: bool,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
    b: Struct_2,
    c: f32,
}

struct Struct_4 {
    a: bool,
    b: bool,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: vec3<bool>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<bool>, arg_1: vec2<u32>, arg_2: Struct_1) -> vec4<bool> {
    let var_0 = global0.b;
    global0 = Struct_3(vec3<u32>(_wgslsmith_mod_u32(_wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(global0.a, vec3<u32>(4349u, global0.a.x, 18194u)), ~30085u, arg_2.c >> (arg_2.a.x % 32u)), ~_wgslsmith_mult_u32(arg_2.c, arg_2.c)), 4294967295u, 7036u), global0.b, _wgslsmith_f_op_f32(ceil(-1546f)));
    var var_1 = select(_wgslsmith_mult_i32(~(-u_input.b), -1i | u_input.b), 47512i, global0.b.c < firstTrailingBit(var_0.b.a.x | global0.a.x)) & 2147483647i;
    let var_2 = Struct_2(Struct_1(reverseBits(select(global0.b.a.a, arg_1, arg_2.b) << (~vec2<u32>(79569u, 33237u) % vec2<u32>(32u))), !arg_0.x != (arg_0.x || arg_0.x), 4294967295u), var_0.d, 45283u, Struct_1(select(vec2<u32>(4294967295u, countOneBits(45474u)), vec2<u32>(arg_2.a.x & 10197u, 4294967295u), !select(vec2<bool>(var_0.b.b, var_0.d.b), arg_0, true)), false, 1u));
    return vec4<bool>(~arg_1.x < _wgslsmith_mod_u32(0u, 1u >> (arg_1.x % 32u)), select(any(arg_0), all(select(global1.zx, arg_0, true)), var_0.a.b), 1u > (var_0.b.c >> (~(~1u) % 32u)), 360f <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-960f - global0.c))));
}

fn func_2(arg_0: f32) -> bool {
    global1 = vec3<bool>(false, !(!(!(64183u != global0.a.x))), !any(vec4<bool>(all(vec3<bool>(true, false, global0.b.d.b)), global0.a.x >= 1u, global0.b.a.b, global0.b.b.b)));
    global1 = vec3<bool>(true, true, true);
    global1 = vec3<bool>(true, !all(func_3(select(global1.yz, vec2<bool>(false, true), vec2<bool>(global0.b.d.b, global0.b.d.b)), ~vec2<u32>(48031u, 45545u), Struct_1(global0.a.yx, global0.b.a.b, global0.b.a.a.x))), global0.b.b.b);
    var var_0 = global0.b.b;
    var var_1 = 1i;
    return ~var_0.a.x > 68184u;
}

fn func_1(arg_0: u32, arg_1: i32, arg_2: bool) -> bool {
    let var_0 = true;
    let var_1 = ~reverseBits(51464u);
    global1 = !(!select(select(vec3<bool>(global1.x, arg_2, var_0), vec3<bool>(global1.x, global0.b.d.b, global0.b.d.b), vec3<bool>(arg_2, var_0, true)), vec3<bool>(func_2(global0.c), global1.x, global1.x), select(!vec3<bool>(false, arg_2, true), vec3<bool>(var_0, true, arg_2), func_3(global1.yz, vec2<u32>(4294967295u, arg_0), Struct_1(vec2<u32>(global0.a.x, 28005u), true, global0.a.x)).xxz)));
    global1 = vec3<bool>(global1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(395f - global0.c))) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global0.c)) + -1060f), !(global1.x || (true != func_3(vec2<bool>(false, true), vec2<u32>(8784u, var_1), global0.b.d).x)));
    var var_2 = vec4<bool>(_wgslsmith_f_op_f32(step(-1575f, -813f)) < -847f, false, true, all(func_3(global1.zx, ~select(global0.a.zx, global0.a.yz, var_0), Struct_1(~global0.a.yx, all(vec4<bool>(false, arg_2, var_0, arg_2)), select(92200u, var_1, false))).xyx));
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = any(vec3<bool>(!(!(!global1.x)), true, (firstLeadingBit(-277i) > u_input.b) | (~u_input.c.x != _wgslsmith_dot_vec2_i32(vec2<i32>(0i, u_input.c.x), u_input.c.xw))));
    global1 = vec3<bool>(true, !global0.b.d.b, true);
    var var_1 = Struct_4(func_1(global0.b.a.c, _wgslsmith_mod_i32(u_input.c.x, -18782i), global0.b.d.b), true);
    var_0 = global0.b.d.b;
    let var_2 = ~(~(vec2<u32>(~global0.a.x, select(14257u, global0.a.x, global1.x)) << (select(vec2<u32>(global0.b.b.a.x, 4294967295u) << (vec2<u32>(global0.b.a.a.x, 7657u) % vec2<u32>(32u)), _wgslsmith_clamp_vec2_u32(vec2<u32>(51588u, global0.a.x), global0.a.xx, global0.a.xy), vec2<bool>(true, true)) % vec2<u32>(32u))));
    var var_3 = Struct_4(true, true);
    let var_4 = vec3<bool>(global1.x, var_3.b, !(965f <= _wgslsmith_f_op_f32(trunc(global0.c))));
    var var_5 = Struct_1(var_2, true, ~_wgslsmith_mult_u32(1u, var_2.x));
    let x = u_input.a;
    s_output = StorageBuffer(select(max(vec4<u32>(global0.a.x, _wgslsmith_clamp_u32(var_2.x, 45164u, 80924u), _wgslsmith_mult_u32(0u, 1u), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 57674u, 1u, 137618u), vec4<u32>(24141u, global0.a.x, 1u, var_2.x))), firstLeadingBit(vec4<u32>(0u, var_5.a.x, 1u, 0u) & vec4<u32>(1u, var_2.x, 115432u, global0.b.a.c))), _wgslsmith_sub_vec4_u32(vec4<u32>(var_2.x, var_5.a.x, var_5.c, var_5.a.x) ^ vec4<u32>(global0.a.x, global0.a.x, 4294967295u, global0.a.x), firstTrailingBit(firstTrailingBit(vec4<u32>(global0.b.d.a.x, var_2.x, 29579u, 4294967295u)))), vec4<bool>(false, var_4.x, global0.b.b.b, true)));
}


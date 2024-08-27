struct Struct_1 {
    a: bool,
    b: bool,
    c: f32,
    d: i32,
    e: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec4<u32>,
    d: vec3<i32>,
}

struct Struct_3 {
    a: vec4<f32>,
    b: vec2<bool>,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec4<i32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: u32,
    d: vec3<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: Struct_1 = Struct_1(true, false, -123f, -28602i, vec3<i32>(i32(-2147483648), 0i, -1i));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: bool, arg_1: Struct_2) -> vec4<bool> {
    var var_0 = global0.b.x;
    let var_1 = Struct_3(global0.a, global0.b, -(~vec2<i32>(abs(global0.c.x), max(global1.d, arg_1.a.e.x))));
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(331f, global0.a.x) * _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(sign(global1.c)), -282f)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(global0.a.yw, var_1.a.ww)));
    let var_3 = ~793u;
    let var_4 = arg_1;
    return select(!vec4<bool>(reverseBits(30573i) != select(-1i, -15107i, false), all(select(vec4<bool>(true, true, false, false), vec4<bool>(var_1.b.x, true, var_1.b.x, true), vec4<bool>(false, true, arg_0, false))), max(0u, 1u) <= ~var_4.c.x, true), vec4<bool>(var_1.b.x, all(!select(vec3<bool>(var_4.a.a, false, var_4.a.a), vec3<bool>(global0.b.x, true, arg_0), global0.b.x)), !global1.a, false), false);
}

fn func_2(arg_0: vec3<i32>, arg_1: vec4<i32>, arg_2: vec2<f32>, arg_3: bool) -> Struct_1 {
    global0 = Struct_3(vec4<f32>(1271f, 1f, global1.c, _wgslsmith_f_op_f32(select(global1.c, -1504f, global0.b.x))), select(global0.b, global0.b, false), ~(-(~global0.c)));
    var var_0 = Struct_1(true, all(func_3(arg_3, Struct_2(Struct_1(false, global1.a, global0.a.x, -17082i, vec3<i32>(1i, u_input.c.x, 1i)), arg_2.x, vec4<u32>(45853u, u_input.d.x, u_input.d.x, 4294967295u), vec3<i32>(global0.c.x, 1i, 34713i)))) || true, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(470f, _wgslsmith_f_op_f32(global0.a.x - arg_2.x)), _wgslsmith_f_op_f32(-1411f + _wgslsmith_f_op_f32(min(arg_2.x, global1.c))))))), 0i, global1.e);
    let var_1 = u_input.d;
    var var_2 = any(!(!select(!vec3<bool>(false, arg_3, true), !vec3<bool>(var_0.b, global1.b, var_0.b), func_3(var_0.b, Struct_2(Struct_1(false, true, -1220f, 0i, arg_1.zxw), -645f, vec4<u32>(u_input.d.x, 16686u, 0u, 12583u), vec3<i32>(global1.d, 0i, 5432i))).yxy)));
    var var_3 = min(firstTrailingBit(global0.c.x), _wgslsmith_div_i32(~firstTrailingBit(global1.d), _wgslsmith_dot_vec3_i32(max(vec3<i32>(global1.d, 33438i, arg_0.x), vec3<i32>(1i, 33824i, arg_0.x)), -arg_0)) >> (10052u % 32u));
    return Struct_1(var_0.a, !any(select(vec3<bool>(var_0.b, false, true), vec3<bool>(var_0.b, false, false), vec3<bool>(true, arg_3, var_0.b))) == (_wgslsmith_sub_u32(firstTrailingBit(0u), var_1.x) > 0u), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(729f, arg_2.x)), _wgslsmith_f_op_f32(round(-1000f)), global1.c > global1.c))), global1.c), -2147483647i, vec3<i32>(-21294i, _wgslsmith_mod_i32(var_0.d >> (0u % 32u), abs(arg_1.x)) ^ reverseBits(_wgslsmith_mod_i32(global0.c.x, 34282i)), min(-global1.d, u_input.c.x)));
}

fn func_1(arg_0: bool) -> StorageBuffer {
    global1 = func_2(u_input.b.xxx, (reverseBits(u_input.b) & (u_input.b & -vec4<i32>(24818i, global1.e.x, u_input.c.x, global1.d))) ^ (u_input.c >> (_wgslsmith_add_vec4_u32(select(vec4<u32>(u_input.d.x, u_input.d.x, u_input.d.x, 35783u), vec4<u32>(u_input.d.x, u_input.d.x, u_input.d.x, 27378u), arg_0), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.d.x, u_input.d.x, u_input.d.x, u_input.d.x), vec4<u32>(u_input.d.x, 1u, u_input.d.x, u_input.d.x))) % vec4<u32>(32u))), global0.a.yz, all(!(!(!vec4<bool>(false, global0.b.x, global0.b.x, true)))));
    global1 = Struct_1(all(!vec3<bool>(true, all(vec4<bool>(true, arg_0, global0.b.x, arg_0)), arg_0)), arg_0, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -693f)), global0.a.x)))), 56809i, ~max(u_input.b.zxy, max(u_input.b.yxy, u_input.c.wwz)));
    return StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1351f * global0.a.x))))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global1.c)) * _wgslsmith_f_op_f32(f32(-1f) * -1382f))), -vec4<i32>(select(1i, ~1i, all(vec3<bool>(false, false, true))), global1.d, ~0i, global0.c.x), 68177u, vec3<f32>(_wgslsmith_f_op_f32(max(global1.c, global1.c)), _wgslsmith_f_op_f32(select(-2759f, func_2(-vec3<i32>(global0.c.x, global0.c.x, global0.c.x), countOneBits(vec4<i32>(global1.e.x, 0i, u_input.c.x, 2147483647i)), _wgslsmith_f_op_vec2_f32(-global0.a.xw), arg_0).c, global1.b)), 1128f), ~_wgslsmith_dot_vec3_i32(-(vec3<i32>(global0.c.x, 0i, 2278i) ^ u_input.b.xyy), -abs(u_input.b.wyy)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_1(global1.a, any(!select(select(vec3<bool>(global0.b.x, global1.b, global1.a), vec3<bool>(true, false, global1.b), false), !vec3<bool>(false, global1.b, global0.b.x), all(global0.b))), -2212f, -(global0.c.x << (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d.x, 4294967295u, 1u, u_input.d.x), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.d.x, 43415u, 0u, u_input.d.x), vec4<u32>(0u, u_input.d.x, u_input.d.x, 4294967295u))) % 32u)), u_input.c.wzy);
    let x = u_input.a;
    s_output = func_1(select(any(select(vec4<bool>(true, global1.a, global0.b.x, global0.b.x), vec4<bool>(true, true, false, false), false)), global0.b.x & true, false));
}


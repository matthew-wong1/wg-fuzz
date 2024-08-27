struct Struct_1 {
    a: bool,
    b: u32,
    c: f32,
    d: vec2<u32>,
    e: vec3<f32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
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

var<private> global0: i32 = 1i;

var<private> global1: vec4<bool> = vec4<bool>(false, false, true, false);

var<private> global2: array<u32, 6> = array<u32, 6>(1u, 1u, 33865u, 1u, 0u, 0u);

var<private> global3: i32;

var<private> global4: vec2<f32>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: vec2<bool>) -> vec4<bool> {
    let var_0 = 731f;
    global0 = -(~_wgslsmith_mod_i32(u_input.b, _wgslsmith_dot_vec2_i32(~vec2<i32>(-2147483647i, -23553i), ~vec2<i32>(11032i, u_input.b))));
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -111f);
    let var_2 = -1311f;
    let var_3 = !select(select(select(global1.yxw, global1.zyz, vec3<bool>(true, true, true)), select(vec3<bool>(arg_0.x, global1.x, true), !global1.ywy, !global1.xww), vec3<bool>(arg_0.x || true, true, var_0 != global4.x)), select(global1.wwx, select(global1.wzw, !global1.wzx, arg_0.x), true), select(!vec3<bool>(true, arg_0.x, global1.x), vec3<bool>(select(false, arg_0.x, arg_0.x), !global1.x, var_0 >= -1065f), !vec3<bool>(arg_0.x, arg_0.x, true)));
    return !vec4<bool>(all(select(select(vec4<bool>(false, var_3.x, false, false), vec4<bool>(var_3.x, false, false, true), vec4<bool>(global1.x, false, false, var_3.x)), select(vec4<bool>(false, var_3.x, var_3.x, var_3.x), vec4<bool>(arg_0.x, true, arg_0.x, true), global1.x), var_3.x)), any(global1.xxy), all(select(!vec4<bool>(arg_0.x, true, false, arg_0.x), vec4<bool>(false, true, var_3.x, global1.x), !vec4<bool>(arg_0.x, var_3.x, false, true))), true);
}

fn func_2(arg_0: Struct_1) -> f32 {
    global3 = ~u_input.b;
    let var_0 = vec2<i32>(_wgslsmith_dot_vec3_i32(abs(firstTrailingBit(vec3<i32>(24578i, u_input.b, u_input.b))), vec3<i32>(select(2147483647i, -1i, false), u_input.b, ~u_input.b)) << (~arg_0.b % 32u), i32(-1i) * -u_input.b);
    var var_1 = 228f;
    global1 = select(func_3(global1.zz), select(select(vec4<bool>(!global1.x, all(vec4<bool>(arg_0.a, arg_0.a, false, arg_0.a)), true, all(vec2<bool>(global1.x, arg_0.a))), !vec4<bool>(arg_0.a, true, true, true), select(select(vec4<bool>(false, false, false, global1.x), vec4<bool>(arg_0.a, arg_0.a, global1.x, true), arg_0.a), vec4<bool>(arg_0.a, true, false, arg_0.a), !vec4<bool>(false, false, global1.x, false))), select(vec4<bool>(false, global4.x < arg_0.e.x, all(vec4<bool>(global1.x, true, true, true)), true), !func_3(vec2<bool>(arg_0.a, global1.x)), select(!vec4<bool>(false, global1.x, true, false), func_3(global1.ww), vec4<bool>(global1.x, false, true, true))), true), false);
    let var_2 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(arg_0.c, global4.x, arg_0.c, 688f), vec4<f32>(694f, arg_0.c, arg_0.e.x, global4.x)))))), Struct_1(global1.x, u_input.a.x << (_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.a.x, 71140u), vec2<u32>(15293u, 80291u)) % 32u), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.c * global4.x)))), vec2<u32>(~u_input.a.x << (~4294967295u % 32u), 1u), vec3<f32>(-1000f, 1122f, _wgslsmith_div_f32(470f, -607f))));
    return _wgslsmith_f_op_f32(round(719f));
}

fn func_1(arg_0: bool) -> Struct_2 {
    let var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(global4.x, _wgslsmith_f_op_f32(max(-1000f, _wgslsmith_f_op_f32(func_2(Struct_1(true, 32241u, global4.x, vec2<u32>(13795u, 0u), vec3<f32>(global4.x, global4.x, -1717f)))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(-766f)), global4.x)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-985f * global4.x)))))), Struct_1(any(vec2<bool>(false, true)) || func_3(vec2<bool>(arg_0, global1.x)).x, _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(~u_input.a.xy, _wgslsmith_mod_vec2_u32(u_input.a.zx, u_input.a.xx)), _wgslsmith_dot_vec2_u32(~vec2<u32>(4294967295u, global2[_wgslsmith_index_u32(89630u, 6u)]), u_input.a.xy)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(258f - _wgslsmith_f_op_f32(func_2(Struct_1(false, 46007u, -1813f, u_input.a.xy, vec3<f32>(global4.x, global4.x, global4.x))))), global4.x)), min(u_input.a.zz, abs(u_input.a.yx)) << (u_input.a.zz % vec2<u32>(32u)), vec3<f32>(_wgslsmith_f_op_f32(957f + _wgslsmith_f_op_f32(round(global4.x))), _wgslsmith_f_op_f32(global4.x + global4.x), _wgslsmith_f_op_f32(select(global4.x, _wgslsmith_f_op_f32(-global4.x), 1672f > global4.x)))));
    let var_1 = u_input.b;
    let var_2 = ~0u;
    let var_3 = Struct_1(false | var_0.b.a, abs(1u), _wgslsmith_f_op_f32(f32(-1f) * -409f), var_0.b.d, var_0.b.e);
    var var_4 = _wgslsmith_dot_vec4_u32(vec4<u32>(countOneBits(~(~0u)), ~_wgslsmith_mult_u32(1u, var_3.d.x) ^ _wgslsmith_add_u32(~0u, u_input.a.x >> (var_2 % 32u)), ~(~var_2), min(~_wgslsmith_mult_u32(u_input.a.x, 4294967295u), ~(5956u << (var_3.d.x % 32u)))), ~min(firstTrailingBit(vec4<u32>(u_input.a.x, 3949u, global2[_wgslsmith_index_u32(u_input.a.x, 6u)], var_2)) << (select(vec4<u32>(var_0.b.d.x, 11029u, global2[_wgslsmith_index_u32(var_0.b.b, 6u)], u_input.a.x), vec4<u32>(var_0.b.d.x, 10329u, 374u, 25392u), false) % vec4<u32>(32u)), ~(~vec4<u32>(31249u, 4294967295u, 27908u, var_0.b.d.x))));
    return var_0;
}

fn func_4(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: u32, arg_3: Struct_2) -> f32 {
    var var_0 = func_1(u_input.b < min(-28566i & u_input.b, -(~1i))).b;
    global0 = 92021i;
    let var_1 = func_1(!(!func_1(!global1.x).b.a));
    global4 = _wgslsmith_f_op_vec2_f32(round(var_0.e.xx));
    var var_2 = arg_2;
    return var_0.e.x;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = -(i32(-1i) * -(u_input.b ^ -u_input.b));
    global2 = array<u32, 6>();
    let var_0 = -868f;
    let var_1 = false;
    global4 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(global4.x, -220f) * vec2<f32>(449f, -568f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0, var_0) + vec2<f32>(-2008f, var_0)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) * _wgslsmith_f_op_vec2_f32(vec2<f32>(global4.x, -1682f) * vec2<f32>(-1000f, 1641f)))) - vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global4.x)) * _wgslsmith_f_op_f32(trunc(var_0))), _wgslsmith_f_op_f32(func_4(Struct_1(global1.x, 1u, -2791f, vec2<u32>(global2[_wgslsmith_index_u32(u_input.a.x, 6u)], 70535u), vec3<f32>(282f, var_0, global4.x)), vec4<bool>(true, global1.x, var_1, var_1), ~u_input.a.x, func_1(true))))));
    let var_2 = ~(global2[_wgslsmith_index_u32(countOneBits(0u), 6u)] | ((_wgslsmith_add_u32(global2[_wgslsmith_index_u32(0u, 6u)], u_input.a.x) >> (global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.a.x, 10500u), 6u)] % 32u)) & global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(29874u, 37504u, 1u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 6u)], 6u)]), vec4<u32>(u_input.a.x, 27298u, 38946u, u_input.a.x)), 6u)], 6u)]));
    let var_3 = vec2<i32>(-firstLeadingBit(~u_input.b), u_input.b);
    let x = u_input.a;
    s_output = StorageBuffer(var_2);
}


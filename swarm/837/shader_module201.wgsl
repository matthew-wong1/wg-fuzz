struct Struct_1 {
    a: vec3<u32>,
    b: f32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
    c: f32,
}

struct Struct_3 {
    a: vec2<i32>,
    b: u32,
    c: Struct_1,
    d: vec3<i32>,
}

struct Struct_4 {
    a: vec2<u32>,
    b: Struct_1,
    c: Struct_2,
    d: Struct_2,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: i32,
    d: vec2<i32>,
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

var<private> global0: vec3<u32>;

var<private> global1: u32;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_4) -> vec4<i32> {
    let var_0 = _wgslsmith_clamp_vec4_i32(select(vec4<i32>(47361i, -8315i, ~_wgslsmith_dot_vec2_i32(u_input.d, u_input.d), firstLeadingBit(u_input.d.x)), abs(-vec4<i32>(u_input.d.x, u_input.d.x, u_input.d.x, u_input.d.x)) << (u_input.b % vec4<u32>(32u)), true), vec4<i32>(u_input.d.x, firstTrailingBit(0i), u_input.d.x, ~max(19506i, -1i | u_input.c)), -max(vec4<i32>(_wgslsmith_mult_i32(u_input.d.x, u_input.d.x), min(-2147483647i, u_input.d.x), -u_input.d.x, _wgslsmith_sub_i32(u_input.c, u_input.d.x)), vec4<i32>(~u_input.d.x, ~(-53822i), u_input.c, firstTrailingBit(-41010i))));
    var var_1 = u_input.d.x | ~(i32(-1i) * -2147483647i);
    return firstTrailingBit(abs(var_0));
}

fn func_2(arg_0: vec3<u32>, arg_1: vec4<i32>, arg_2: vec4<i32>, arg_3: vec3<f32>) -> bool {
    global0 = ~(~arg_0);
    var var_0 = arg_2.x;
    let var_1 = ~vec3<u32>(arg_0.x, 42735u, 5860u);
    let var_2 = select(u_input.d.x <= abs(24454i), _wgslsmith_dot_vec4_i32(arg_2, arg_1 & func_3(Struct_4(vec2<u32>(0u, arg_0.x), Struct_1(arg_0, arg_3.x), Struct_2(vec4<f32>(-478f, arg_3.x, arg_3.x, arg_3.x), Struct_1(arg_0, 319f), arg_3.x), Struct_2(vec4<f32>(237f, -1073f, 757f, -290f), Struct_1(vec3<u32>(u_input.a.x, u_input.b.x, 60290u), arg_3.x), arg_3.x), Struct_2(vec4<f32>(arg_3.x, 156f, arg_3.x, arg_3.x), Struct_1(vec3<u32>(u_input.a.x, global0.x, arg_0.x), arg_3.x), -247f)))) <= ~0i, any(vec4<bool>(true, all(vec3<bool>(true, true, true)), any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), false)), true)));
    global1 = ~_wgslsmith_dot_vec2_u32(~(~vec2<u32>(arg_0.x, global0.x)), vec2<u32>(~1u, global0.x) & vec2<u32>(16291u, ~1u));
    return false;
}

fn func_1(arg_0: Struct_3) -> vec4<f32> {
    var var_0 = arg_0.d;
    var var_1 = !vec4<bool>(true & (_wgslsmith_mod_i32(var_0.x, -1i) >= ~u_input.c), !any(vec2<bool>(true, true)), arg_0.b == u_input.b.x, all(vec2<bool>(func_2(arg_0.c.a, vec4<i32>(0i, arg_0.a.x, -2147483647i, u_input.d.x), vec4<i32>(2147483647i, -35567i, var_0.x, arg_0.a.x), vec3<f32>(-1000f, 836f, arg_0.c.b)), true)));
    let var_2 = -630f;
    var var_3 = u_input.c;
    var_1 = !vec4<bool>(!(true & (var_1.x | true)), false && !(var_1.x != var_1.x), all(select(select(vec2<bool>(var_1.x, true), vec2<bool>(false, var_1.x), vec2<bool>(false, false)), select(vec2<bool>(false, var_1.x), vec2<bool>(false, var_1.x), vec2<bool>(var_1.x, false)), vec2<bool>(var_1.x, false))), var_1.x);
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2, var_2, -688f, 2652f)) - _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-837f, 1000f, arg_0.c.b, arg_0.c.b), vec4<f32>(var_2, -883f, -1115f, var_2)))))), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(ceil(-1395f)), -950f, _wgslsmith_f_op_f32(-var_2), _wgslsmith_f_op_f32(arg_0.c.b * arg_0.c.b)))))) + vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(-500f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2))), _wgslsmith_f_op_f32(trunc(arg_0.c.b)), _wgslsmith_f_op_f32(141f + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(round(arg_0.c.b)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(vec3<u32>(~max(global0.x >> (86417u % 32u), _wgslsmith_dot_vec3_u32(vec3<u32>(global0.x, 4294967295u, global0.x), u_input.a)), ((18442u >> (1u % 32u)) << ((u_input.a.x ^ global0.x) % 32u)) ^ 1u, ~_wgslsmith_mult_u32(global0.x, global0.x) ^ 4294967295u), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-997f, 1349f) + _wgslsmith_f_op_f32(1188f - -699f)) * 693f))));
    global1 = global0.x;
    global0 = u_input.a;
    var var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_1(Struct_3(u_input.d, var_0.a.x, Struct_1(vec3<u32>(u_input.b.x, 0u, u_input.a.x), var_0.b), vec3<i32>(26405i, u_input.c, u_input.c) >> (vec3<u32>(global0.x, u_input.a.x, global0.x) % vec3<u32>(32u)))))), var_0, _wgslsmith_f_op_f32(min(-1133f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(var_0.b)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(-266f, 490f))))))));
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(-var_0.b), var_1.b.b);
    let x = u_input.a;
    s_output = StorageBuffer(global0.x);
}


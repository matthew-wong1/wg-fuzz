struct Struct_1 {
    a: bool,
    b: vec3<bool>,
    c: vec3<bool>,
    d: u32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec4<f32>,
    c: Struct_1,
    d: bool,
    e: vec2<f32>,
}

struct Struct_3 {
    a: bool,
    b: vec2<i32>,
    c: Struct_1,
    d: u32,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(false, vec2<i32>(21034i, 32467i), Struct_1(true, vec3<bool>(false, true, true), vec3<bool>(false, true, false), 0u), 1u, Struct_2(vec2<bool>(true, true), vec4<f32>(1000f, 2244f, -772f, -1193f), Struct_1(false, vec3<bool>(true, true, false), vec3<bool>(true, false, true), 3098u), true, vec2<f32>(1000f, -2182f)));

var<private> global1: vec3<u32>;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: i32) -> vec2<u32> {
    var var_0 = -814f >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global0.e.e.x))))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.e.b.x * -1429f) - 2836f)));
    let var_1 = global0.e.b.x;
    var var_2 = _wgslsmith_add_u32(u_input.a.x | global1.x, global0.c.d);
    var var_3 = Struct_1(global0.c.c.x, !(!global0.e.c.b), select(vec3<bool>(!global0.e.d, global0.e.a.x, any(select(global0.c.c.zx, vec2<bool>(global0.a, false), vec2<bool>(global0.e.d, global0.c.c.x)))), vec3<bool>(global0.a, true, true), global0.c.a), reverseBits(u_input.a.x));
    let var_4 = all(!select(select(select(vec4<bool>(global0.c.a, false, var_3.b.x, true), vec4<bool>(true, true, global0.c.a, false), vec4<bool>(global0.e.c.c.x, true, false, var_3.a)), !vec4<bool>(true, var_3.a, false, var_3.a), any(vec2<bool>(false, global0.a))), select(select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, global0.c.c.x), vec4<bool>(false, true, global0.e.d, global0.a)), !vec4<bool>(false, true, global0.e.d, var_3.a), global0.e.a.x | var_3.b.x), true));
    return _wgslsmith_sub_vec2_u32(_wgslsmith_mod_vec2_u32(abs(vec2<u32>(u_input.a.x, u_input.a.x) >> (vec2<u32>(32819u, global0.e.c.d) % vec2<u32>(32u))), firstLeadingBit(vec2<u32>(21597u, abs(11832u)))), min(global1.xy, vec2<u32>(min(_wgslsmith_dot_vec2_u32(global1.xx, u_input.a.zy), _wgslsmith_dot_vec3_u32(u_input.a, u_input.a)), firstTrailingBit(~22882u))));
}

fn func_4(arg_0: vec3<bool>, arg_1: vec2<u32>, arg_2: vec4<f32>) -> u32 {
    var var_0 = Struct_2(select(vec2<bool>(select(any(global0.c.b), !arg_0.x, true), all(vec2<bool>(arg_0.x, global0.c.b.x)) | false), vec2<bool>(true, true), select(select(vec2<bool>(true, arg_0.x), vec2<bool>(false, true), global0.a), select(!arg_0.zy, select(arg_0.yy, global0.c.c.yz, arg_0.zy), select(arg_0.xx, vec2<bool>(arg_0.x, true), global0.e.a)), all(global0.e.c.c))), arg_2, Struct_1(arg_0.x, global0.c.b, vec3<bool>(any(!vec2<bool>(global0.c.b.x, global0.a)), select(global0.c.b.x, global0.a, all(vec2<bool>(false, global0.c.b.x))), _wgslsmith_f_op_f32(step(global0.e.b.x, 971f)) > _wgslsmith_f_op_f32(global0.e.e.x + -1189f)), ~arg_1.x), !(!any(select(vec2<bool>(true, arg_0.x), arg_0.xz, true))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(global0.e.e, arg_2.xz), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1359f, arg_2.x)))))));
    let var_1 = Struct_2(var_0.a, vec4<f32>(_wgslsmith_f_op_f32(global0.e.e.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.e.b.x * global0.e.b.x))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-941f, 173f, false))))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1636f)) + _wgslsmith_f_op_f32(f32(-1f) * -278f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b.x - global0.e.e.x)), -199f)), Struct_1(false, !vec3<bool>(!var_0.d, !var_0.c.c.x, false | var_0.c.b.x), select(arg_0, vec3<bool>(global0.a, true, false), true), _wgslsmith_mult_u32(~0u, reverseBits(global1.x ^ 4294967295u))), all(!(!global0.c.b)), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(global0.e.b.x, _wgslsmith_div_f32(_wgslsmith_div_f32(-1196f, var_0.b.x), global0.e.e.x)))));
    let var_2 = vec2<u32>(u_input.a.x, global1.x);
    var_0 = var_1;
    var var_3 = vec3<u32>((func_3(global0.b.x).x ^ global0.d) >> (func_3(u_input.b.x).x % 32u), countOneBits(~(~_wgslsmith_div_u32(4294967295u, u_input.a.x))), 71323u);
    return _wgslsmith_dot_vec3_u32(~abs(abs(min(u_input.a, vec3<u32>(4294967295u, var_2.x, var_1.c.d)))), firstTrailingBit(vec3<u32>(u_input.a.x, reverseBits(30319u), arg_1.x)));
}

fn func_2(arg_0: Struct_2, arg_1: vec2<f32>) -> f32 {
    global1 = ~vec3<u32>(1u, u_input.a.x & _wgslsmith_dot_vec3_u32(u_input.a, u_input.a), _wgslsmith_mod_u32(~1u, ~1u));
    let var_0 = arg_0.b.x;
    let var_1 = global0.e.b.zww;
    var var_2 = _wgslsmith_mult_vec4_u32(vec4<u32>(firstLeadingBit(func_4(!global0.c.b, func_3(-2147483647i), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.x, -484f, -151f, var_1.x)))), _wgslsmith_clamp_u32(u_input.a.x, 0u, ~(~u_input.a.x)), global0.c.d, ~0u), vec4<u32>(~firstTrailingBit(0u), _wgslsmith_mod_u32(136247u, ~5148u), u_input.a.x, ~countOneBits(4294967295u)) << (~(~vec4<u32>(global0.d, 17544u, 19743u, 368u)) % vec4<u32>(32u)));
    let var_3 = abs(~(var_2.x | _wgslsmith_mult_u32(~arg_0.c.d, _wgslsmith_sub_u32(29184u, global1.x))));
    return arg_1.x;
}

fn func_1() -> u32 {
    let var_0 = true;
    global1 = ~_wgslsmith_mod_vec3_u32(~u_input.a, u_input.a);
    let var_1 = Struct_1(true, select(vec3<bool>(true, _wgslsmith_f_op_f32(func_2(global0.e, global0.e.e)) == _wgslsmith_f_op_f32(-global0.e.e.x), global1.x <= ~global1.x), vec3<bool>(true, select(var_0, true, global0.e.a.x) && !var_0, any(!vec4<bool>(global0.a, true, global0.a, global0.c.a))), var_0), global0.e.c.b, _wgslsmith_dot_vec3_u32(vec3<u32>(global1.x, _wgslsmith_sub_u32(_wgslsmith_add_u32(global0.e.c.d, 87303u), reverseBits(12428u)), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 86402u), u_input.a.yx ^ u_input.a.xx)), vec3<u32>(global1.x, ~func_4(vec3<bool>(global0.a, true, global0.c.b.x), u_input.a.xz, vec4<f32>(global0.e.e.x, global0.e.e.x, -835f, -1000f)), ~global1.x)));
    let var_2 = var_1;
    let var_3 = global0.e.e.x;
    return 1u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -1i;
    global1 = _wgslsmith_mod_vec3_u32(vec3<u32>(_wgslsmith_mod_u32(u_input.a.x, global1.x << (30933u % 32u)) << (~(~global0.e.c.d) % 32u), 4294967295u, global1.x >> (_wgslsmith_add_u32(1u, 36063u) % 32u)), u_input.a);
    global1 = abs(_wgslsmith_add_vec3_u32(vec3<u32>(_wgslsmith_add_u32(~0u, countOneBits(0u)), global0.d, func_1()), u_input.a));
    let var_1 = Struct_3(true, global0.b, global0.c, 4295u, global0.e);
    global1 = max(~countOneBits(min(u_input.a, u_input.a) ^ u_input.a), select(select(vec3<u32>(u_input.a.x, 1u, ~38859u), u_input.a, !all(global0.e.c.c)), vec3<u32>(1u, _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(u_input.a.yz, vec2<u32>(global1.x, global1.x)), u_input.a.x), ~u_input.a.x), !vec3<bool>(var_1.c.a, global0.e.c.a, true)));
    var var_2 = Struct_2(vec2<bool>(global0.e.e.x <= var_1.e.b.x, true), _wgslsmith_f_op_vec4_f32(-var_1.e.b), var_1.e.c, global0.a, vec2<f32>(1719f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.e.b.x * global0.e.e.x)), global0.e.e.x)));
    let var_3 = var_2.c.d;
    var var_4 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(var_1.e.b)) + var_2.b)));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(~_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, global0.d, var_1.d, var_1.e.c.d), vec4<u32>(0u, var_1.c.d, global1.x, 54125u)), ~82394u), 0u, ~65924u, 0u), _wgslsmith_dot_vec2_i32(global0.b, vec2<i32>(~(-6946i), -19380i)), global0.e.e.x, 867f);
}


struct Struct_1 {
    a: vec2<f32>,
    b: vec2<i32>,
    c: i32,
    d: vec3<f32>,
    e: vec4<bool>,
}

struct Struct_2 {
    a: vec3<u32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: vec4<f32>,
}

struct Struct_5 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 4>;

var<private> global1: Struct_4 = Struct_4(1747f, vec4<f32>(502f, 164f, -799f, -1006f));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: u32) -> u32 {
    return 4294967295u;
}

fn func_2() -> vec4<bool> {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(global1.a, global1.a, global1.a), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-544f, global1.a, global1.a))) * vec3<f32>(326f, global1.b.x, -972f)) + vec3<f32>(_wgslsmith_f_op_f32(round(global1.a)), _wgslsmith_f_op_f32(1475f + -271f), 1259f))));
    var var_1 = Struct_2(~vec3<u32>(1u, 1u, func_3(15857u)));
    global0 = array<Struct_3, 4>();
    var var_2 = Struct_5(Struct_1(_wgslsmith_f_op_vec2_f32(select(var_0.xx, var_0.zx, false)), _wgslsmith_clamp_vec2_i32(_wgslsmith_mult_vec2_i32(max(vec2<i32>(0i, 0i), vec2<i32>(u_input.a, u_input.a)), countOneBits(vec2<i32>(-22558i, 38707i))), select(vec2<i32>(u_input.a, u_input.b) & vec2<i32>(u_input.a, -1i), ~vec2<i32>(u_input.a, u_input.a), true), -(~vec2<i32>(2147483647i, -41851i))), -1i ^ -_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, -1i, -2147483647i, u_input.a), vec4<i32>(5457i, 22475i, 1i, u_input.a)), vec3<f32>(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1507f - var_0.x)), var_0.x), select(!select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, true), false), vec4<bool>(true, true, true, true), false)));
    let var_3 = Struct_5(var_2.a);
    return !var_2.a.e;
}

fn func_1(arg_0: u32) -> f32 {
    var var_0 = Struct_5(Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-889f, global1.b.x), vec2<f32>(global1.a, 1907f))))), -vec2<i32>(1i, max(u_input.a, -2147483647i)), u_input.b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global1.b.yzy + vec3<f32>(-763f, 243f, -812f)) * global1.b.yzx)), func_2()));
    let var_1 = var_0.a.e.wx;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.a - -553f)));
    var var_3 = Struct_5(var_0.a);
    var var_4 = var_3.a;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1403f)) - var_0.a.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -(vec3<i32>(-2147483647i, ~1i, select(u_input.a, u_input.b, false)) >> (vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u))) | vec3<i32>(u_input.b, _wgslsmith_sub_i32(2147483647i, u_input.b), _wgslsmith_clamp_i32(-_wgslsmith_dot_vec2_i32(vec2<i32>(-2860i, -769i), vec2<i32>(u_input.b, 0i)), -u_input.b, 18660i << (1u % 32u)));
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(global1.b.wzz, _wgslsmith_f_op_vec3_f32(-global1.b.zwy), true)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1349f, _wgslsmith_f_op_f32(-global1.b.x), _wgslsmith_f_op_f32(func_1(~60236u)))));
    let var_2 = !(all(select(vec2<bool>(true, true), vec2<bool>(true, true), false)) || (_wgslsmith_f_op_f32(-global1.b.x) < _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(global1.a, 318f)))));
    var var_3 = Struct_2(vec3<u32>(1u, 1u, 1u) << (reverseBits(select(vec3<u32>(1u, 1u, 1u), ~vec3<u32>(4294967295u, 20553u, 0u), func_2().zwz)) % vec3<u32>(32u)));
    let var_4 = -1i;
    var var_5 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(191f)))), global1.a);
    let x = u_input.a;
    s_output = StorageBuffer(var_1.xy, var_5.x);
}


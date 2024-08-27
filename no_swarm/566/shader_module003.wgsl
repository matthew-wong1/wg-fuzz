struct Struct_1 {
    a: vec3<f32>,
    b: u32,
    c: vec2<bool>,
    d: vec4<u32>,
}

struct Struct_2 {
    a: bool,
    b: vec2<bool>,
    c: u32,
    d: vec2<f32>,
}

struct Struct_3 {
    a: vec3<u32>,
    b: vec2<f32>,
    c: Struct_1,
    d: Struct_2,
}

struct Struct_4 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: Struct_3;

var<private> global2: Struct_4 = Struct_4(vec4<i32>(12022i, -1i, 157i, -1i));

var<private> global3: vec3<f32>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3() -> vec3<u32> {
    let var_0 = Struct_3(_wgslsmith_mod_vec3_u32(~global1.a, vec3<u32>(~(~50615u), _wgslsmith_mult_u32(min(725u, u_input.a), ~9617u), ~_wgslsmith_sub_u32(global1.d.c, u_input.c.x))), global1.b, global1.c, global1.d);
    return countOneBits(_wgslsmith_mod_vec3_u32(~vec3<u32>(global1.c.b, 4294967295u, 4294967295u), vec3<u32>(abs(14859u), ~u_input.a, global1.d.c ^ u_input.a))) & vec3<u32>(firstTrailingBit(45970u), _wgslsmith_dot_vec4_u32(global1.c.d, vec4<u32>(~14615u, 1u, ~global0.x, 0u)), abs(32160u));
}

fn func_2() -> Struct_4 {
    global0 = ~min(vec2<u32>(80667u, min(~global1.c.d.x, abs(5603u))), global1.a.yy ^ vec2<u32>(_wgslsmith_dot_vec3_u32(u_input.c, vec3<u32>(u_input.c.x, u_input.a, global1.d.c)), 26109u));
    let var_0 = -984f;
    let var_1 = 52i;
    let var_2 = Struct_3(func_3() & vec3<u32>(u_input.c.x, _wgslsmith_dot_vec2_u32(select(global1.c.d.yx, u_input.c.xx, true), vec2<u32>(1u, global0.x) >> (u_input.c.yz % vec2<u32>(32u))), global0.x), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(163f, var_0))))), global1.c, Struct_2(!all(select(vec2<bool>(global1.d.b.x, false), global1.c.c, vec2<bool>(false, false))), !(!(!global1.c.c)), select(44834u, global0.x << (4294967295u % 32u), global1.c.c.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(global1.c.a.x, -1135f))))))));
    let var_3 = var_2;
    return Struct_4(abs(~vec4<i32>(u_input.b, -global2.a.x, select(2147483647i, -76405i, global1.d.b.x), global2.a.x)));
}

fn func_1(arg_0: bool) -> Struct_4 {
    global2 = func_2();
    global0 = func_3().xy;
    global1 = Struct_3(_wgslsmith_mod_vec3_u32(global1.a, vec3<u32>(~abs(global0.x), u_input.a, 10475u)), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(625f))), _wgslsmith_f_op_f32(abs(319f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1482f, global1.c.a.x), _wgslsmith_f_op_vec2_f32(ceil(global1.d.d)), !global1.c.c.x))))), Struct_1(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global1.c.a)), _wgslsmith_f_op_vec3_f32(global1.c.a * global1.c.a))), 81128u, !(!vec2<bool>(arg_0, global1.c.c.x)), global1.c.d), Struct_2(false, vec2<bool>(false, !(true || arg_0)), global0.x, global3.xy));
    let var_0 = 1i;
    global3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global1.c.a) - _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-global1.c.a)))))) + global1.c.a);
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    global2 = func_1(any(vec2<bool>(any(global1.d.b) & true, global1.c.c.x)));
    global1 = Struct_3(_wgslsmith_add_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, u_input.a, 1u), vec3<u32>(17188u, global0.x, global1.d.c) << (u_input.c % vec3<u32>(32u))), vec3<u32>(80534u & global0.x, func_3().x, ~global0.x)) | _wgslsmith_mult_vec3_u32(u_input.c, _wgslsmith_sub_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(global1.a.x, 29094u, global0.x), global1.a), vec3<u32>(global1.c.b, global1.a.x, u_input.c.x))), global3.yy, Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(global1.c.a, vec3<f32>(global3.x, global3.x, global3.x), false)))), 0u, select(global1.c.c, select(select(global1.d.b, global1.d.b, global1.d.b.x), vec2<bool>(true, global1.d.b.x), select(global1.c.c.x, true, false)), false), ~(vec4<u32>(4294967295u, 28819u, 18275u, 1u) & vec4<u32>(60356u, u_input.a, 0u, global0.x)) | ~(~vec4<u32>(global1.d.c, global0.x, 1u, global1.a.x))), Struct_2(all(select(!vec4<bool>(false, true, true, global1.c.c.x), vec4<bool>(global1.d.b.x, true, false, global1.d.a), vec4<bool>(true, true, true, global1.d.b.x))), !vec2<bool>(!global1.c.c.x, global1.d.a), 33654u, global3.xx));
    var var_0 = _wgslsmith_sub_vec3_u32(select(_wgslsmith_clamp_vec3_u32(_wgslsmith_sub_vec3_u32(_wgslsmith_div_vec3_u32(global1.a, u_input.c), ~u_input.c), global1.c.d.yxw, vec3<u32>(global0.x | 2874u, 0u, u_input.c.x)), vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(10707u, global0.x, 52304u), vec3<u32>(global1.d.c, 70493u, global1.c.b) ^ u_input.c), global1.c.d.x, 2491u), select(!vec3<bool>(false, true, global1.c.c.x), vec3<bool>(true, global1.d.b.x & true, true), true)), ~vec3<u32>(abs(_wgslsmith_sub_u32(global1.d.c, global1.d.c)), ~global1.a.x, 1u));
    var var_1 = global1.d;
    global0 = ~(~vec2<u32>(1u, ~(~global0.x)));
    var var_2 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(global1.b.x, -453f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.b.x + global3.x)), -1940f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-143f, var_1.d.x, global3.x, global3.x) + vec4<f32>(global1.c.a.x, 864f, global1.b.x, 1740f)) - _wgslsmith_div_vec4_f32(vec4<f32>(-1308f, -966f, var_1.d.x, var_1.d.x), vec4<f32>(var_1.d.x, global1.c.a.x, -141f, global3.x))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.b.x, -1113f, 719f, -1061f) - vec4<f32>(global1.d.d.x, 1266f, global3.x, var_1.d.x)) + vec4<f32>(var_1.d.x, var_1.d.x, -160f, global3.x))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)), vec4<bool>(false, any(vec3<bool>(true, true, !var_1.b.x)), any(!vec3<bool>(global1.c.c.x, global1.c.c.x, global1.d.a)), global1.d.b.x)));
    var var_3 = vec3<f32>(_wgslsmith_f_op_f32(-global1.b.x), var_2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global3.x))));
    global3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(vec3<f32>(-1988f, 249f, var_1.d.x), vec3<f32>(var_2.x, 593f, global1.c.a.x))))))));
    let x = u_input.a;
    s_output = StorageBuffer(((vec3<u32>(global0.x, 0u, global0.x) & u_input.c) ^ (vec3<u32>(global0.x, var_1.c, global1.d.c) ^ abs(u_input.c))) & vec3<u32>(~4294967295u, 3860u, u_input.c.x));
}


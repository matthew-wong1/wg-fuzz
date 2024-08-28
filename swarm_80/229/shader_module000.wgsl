struct Struct_1 {
    a: vec2<bool>,
    b: vec3<bool>,
}

struct Struct_2 {
    a: f32,
    b: i32,
    c: vec3<u32>,
    d: vec4<f32>,
}

struct Struct_3 {
    a: vec3<u32>,
    b: bool,
    c: Struct_1,
    d: vec3<i32>,
}

struct Struct_4 {
    a: vec2<u32>,
    b: bool,
    c: i32,
    d: Struct_2,
}

struct Struct_5 {
    a: vec4<i32>,
    b: f32,
    c: vec4<f32>,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: u32,
    d: vec4<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: Struct_2 = Struct_2(-1617f, 0i, vec3<u32>(50705u, 40363u, 1u), vec4<f32>(-1937f, 696f, 113f, -478f));

var<private> global2: u32;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_5) -> vec2<bool> {
    global1 = Struct_2(617f, arg_0.a.x, u_input.d.zzw >> (u_input.d.yzx % vec3<u32>(32u)), vec4<f32>(global1.d.x, global1.d.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-887f)) - 963f), _wgslsmith_f_op_f32(-arg_0.b)));
    let var_0 = arg_0;
    var var_1 = firstLeadingBit(reverseBits(u_input.d));
    let var_2 = _wgslsmith_f_op_vec4_f32(-global1.d);
    var_1 = vec4<u32>(~_wgslsmith_dot_vec2_u32(vec2<u32>(var_1.x, u_input.c), var_1.zx) ^ 87020u, ~global1.c.x, 16639u, _wgslsmith_mult_u32(u_input.c, global1.c.x) >> (u_input.e % 32u)) >> (_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, _wgslsmith_dot_vec3_u32(~vec3<u32>(var_1.x, 0u, 47713u), _wgslsmith_div_vec3_u32(vec3<u32>(8138u, 1694u, var_1.x), global1.c)), firstTrailingBit(0u), countOneBits(0u)), (u_input.d >> (u_input.d % vec4<u32>(32u))) << (u_input.d % vec4<u32>(32u))) % vec4<u32>(32u));
    return !vec2<bool>(global0.a.x, all(vec4<bool>(true, global0.a.x, !global0.b.x, any(vec2<bool>(true, global0.a.x)))));
}

fn func_2(arg_0: f32, arg_1: vec2<bool>, arg_2: bool) -> Struct_1 {
    global2 = u_input.c;
    global0 = Struct_1(func_3(Struct_5(vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(global1.b, 48796i), u_input.b.yz), -23899i & u_input.b.x, u_input.a.x, min(1i, 50939i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.d.x) + arg_0), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global1.d) - global1.d), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global1.d.xz - vec2<f32>(arg_0, -134f))))), select(global0.b, select(vec3<bool>(true, true, true), vec3<bool>(any(vec4<bool>(false, arg_2, false, true)), arg_2, global1.b < 2147483647i), global0.b), false));
    let var_0 = arg_2;
    return Struct_1(global0.a, vec3<bool>(!(_wgslsmith_f_op_f32(global1.d.x - 1654f) == global1.d.x), !(!any(vec2<bool>(true, arg_2))), true));
}

fn func_1() -> f32 {
    let var_0 = func_2(1410f, !select(global0.a, vec2<bool>(false, global0.b.x), global0.a), any(global0.b));
    let var_1 = Struct_3(_wgslsmith_div_vec3_u32(u_input.d.xyz, _wgslsmith_clamp_vec3_u32(min(vec3<u32>(1u, 1u, global1.c.x), countOneBits(global1.c)), vec3<u32>(10246u, 4294967295u, global1.c.x), ~global1.c)), false, func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1198f - 2357f) + global1.d.x)), func_2(-1000f, select(global0.a, vec2<bool>(true, var_0.a.x), vec2<bool>(false, var_0.b.x)), var_0.a.x).a, var_0.a.x), reverseBits(-u_input.a ^ u_input.a) ^ vec3<i32>(14824i, 1i, ~u_input.a.x));
    let var_2 = func_2(_wgslsmith_f_op_f32(-global1.a), vec2<bool>(var_1.b, true), false);
    global1 = Struct_2(global1.d.x, 1i, u_input.d.zzx, _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1000f, global1.a, -658f, -1152f)))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.a, global1.a, -231f, global1.a)), _wgslsmith_div_vec4_f32(vec4<f32>(global1.d.x, 1012f, global1.a, global1.d.x), global1.d)))))));
    let var_3 = max(vec3<u32>(abs(_wgslsmith_add_u32(global1.c.x, 72549u) | u_input.c), ~(~max(35390u, u_input.c)), global1.c.x & 13467u), var_1.a);
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(2005f)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global1.a + -982f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(u_input.d.xyy, _wgslsmith_f_op_f32(func_1()) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -176f)), Struct_1(func_3(Struct_5(abs(vec4<i32>(-22271i, -1i, global1.b, -37285i)), _wgslsmith_f_op_f32(f32(-1f) * -133f), _wgslsmith_f_op_vec4_f32(-global1.d), _wgslsmith_f_op_vec2_f32(vec2<f32>(-606f, global1.a) + vec2<f32>(global1.d.x, global1.a)))), vec3<bool>(global0.a.x, select(global0.b.x, true, false) || !global0.b.x, global0.b.x)), vec3<i32>(-6892i, _wgslsmith_div_i32(34258i << (_wgslsmith_sub_u32(u_input.e, global1.c.x) % 32u), global1.b), -47113i));
    var var_1 = global0.b;
    var_1 = select(func_2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-592f + -312f) - global1.d.x), _wgslsmith_f_op_f32(-1436f - _wgslsmith_f_op_f32(-global1.d.x)))), !func_2(-600f, !vec2<bool>(var_0.c.a.x, var_1.x), true).a, var_0.c.a.x).b, !vec3<bool>(1i != reverseBits(var_0.d.x), u_input.e > _wgslsmith_add_u32(global1.c.x, 21050u), all(vec2<bool>(true, true))), var_0.c.b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec2_u32(vec2<u32>(_wgslsmith_dot_vec3_u32(u_input.d.xwx, vec3<u32>(u_input.d.x, 0u, global1.c.x)), ~global1.c.x) | ~u_input.d.zw, u_input.d.zw), -var_0.d, select(firstTrailingBit(max(vec3<i32>(u_input.a.x, global1.b, 15308i), var_0.d) | var_0.d), select(reverseBits(vec3<i32>(var_0.d.x, u_input.b.x, -1i)) >> (u_input.d.zyz % vec3<u32>(32u)), u_input.a, vec3<bool>(true, true, var_0.c.b.x)), var_0.c.b));
}


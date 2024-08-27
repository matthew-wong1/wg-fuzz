struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<bool>,
    c: i32,
}

struct Struct_4 {
    a: f32,
    b: vec3<bool>,
    c: vec3<bool>,
}

struct Struct_5 {
    a: vec3<u32>,
    b: vec4<bool>,
    c: Struct_1,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(-60536i, 1i);

var<private> global1: vec4<f32>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_2, arg_1: vec2<u32>, arg_2: u32) -> bool {
    var var_0 = Struct_1(vec2<u32>(_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, arg_1.x, 87335u), vec3<u32>(1u, 4294967295u, 42896u)), arg_2), arg_1.x) | vec2<u32>(_wgslsmith_clamp_u32(~0u, 0u, 2628u ^ arg_1.x), 84189u));
    var var_1 = u_input.b.xx;
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2181f, -519f, 610f)) + _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global1.x, -486f, global1.x)))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(floor(-1000f)), _wgslsmith_f_op_f32(-global1.x), 278f) - vec3<f32>(633f, global1.x, _wgslsmith_div_f32(1455f, 877f)))));
    let var_3 = ~(-34946i);
    let var_4 = Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_2.x - -465f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(246f - var_2.x)), false)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_2.x))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(464f)), var_2.x)))), !(!select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), true))), vec3<bool>(any(!select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(false, true, true))), true, false));
    return (_wgslsmith_f_op_f32(-671f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1623f)))) > _wgslsmith_f_op_f32(max(var_2.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_2.x + 530f)))))) || var_4.c.x;
}

fn func_4(arg_0: Struct_4) -> bool {
    let var_0 = 0u;
    return arg_0.c.x;
}

fn func_5(arg_0: bool) -> vec4<bool> {
    var var_0 = vec2<bool>(_wgslsmith_f_op_f32(global1.x - global1.x) > global1.x, !any(vec2<bool>(false, all(vec4<bool>(arg_0, false, false, arg_0)))));
    var var_1 = Struct_3(Struct_1(~_wgslsmith_sub_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(0u, u_input.a.x), vec2<u32>(u_input.a.x, 33448u)), vec2<u32>(42911u, 78514u) ^ vec2<u32>(u_input.a.x, u_input.a.x))), !select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(arg_0, var_0.x), vec2<bool>(var_0.x, true)), var_0.x), _wgslsmith_add_i32(-34642i, -11713i));
    let var_2 = _wgslsmith_f_op_f32(sign(global1.x));
    let var_3 = vec4<u32>(reverseBits(~39557u), reverseBits(max(12220u, u_input.a.x)), _wgslsmith_div_u32(4294967295u, 1u), reverseBits(734u));
    var_1 = Struct_3(Struct_1(_wgslsmith_sub_vec2_u32(u_input.a, ~(~vec2<u32>(var_3.x, 15636u)))), !select(vec2<bool>(true, true), !select(vec2<bool>(var_0.x, true), var_1.b, var_1.b), select(!var_1.b, !var_1.b, var_1.b)), _wgslsmith_dot_vec2_i32(u_input.b.zz, select(vec2<i32>(min(-47579i, global0.x), firstTrailingBit(global0.x)), select(~u_input.b.zx, u_input.b.yx, select(var_1.b, vec2<bool>(false, true), var_1.b)), all(select(vec3<bool>(arg_0, true, var_1.b.x), vec3<bool>(arg_0, false, var_0.x), var_1.b.x)))));
    return select(vec4<bool>(!(_wgslsmith_f_op_f32(f32(-1f) * -1161f) <= var_2), all(select(!vec2<bool>(var_1.b.x, false), var_1.b, !var_1.b)), false, var_0.x), vec4<bool>(var_0.x, true, !(var_1.a.a.x < var_3.x) || any(vec4<bool>(true, false, true, false)), true), !vec4<bool>(true, true, !var_1.b.x, true));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_2) -> vec4<bool> {
    var var_0 = -1032f;
    global0 = _wgslsmith_mod_vec2_i32(u_input.b.yy, u_input.b.zz);
    let var_1 = global1.x;
    global0 = ~(vec2<i32>(abs(arg_1.a & -20802i), ~(-arg_1.a)) | firstTrailingBit(u_input.b.yy));
    global0 = u_input.b.yz;
    return func_5(func_4(Struct_4(global1.x, select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), func_3(arg_1, vec2<u32>(u_input.a.x, 0u), 9242u)), vec3<bool>(true, false, func_3(Struct_2(27234i), vec2<u32>(4294967295u, u_input.a.x), 14172u)))));
}

fn func_1() -> StorageBuffer {
    var var_0 = !(!(!select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, false), func_2(Struct_1(u_input.a), Struct_2(-2147483647i), Struct_2(1i)))));
    var var_1 = u_input.b.x;
    var var_2 = Struct_2(global0.x << (_wgslsmith_sub_u32(72593u, 1u) % 32u));
    let var_3 = Struct_1(vec2<u32>(u_input.a.x, ~0u));
    var var_4 = _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a.x, 1u, ~4294967295u), max(vec3<u32>(1u | abs(u_input.a.x), 69125u, _wgslsmith_dot_vec3_u32(vec3<u32>(31938u, 4294967295u, 14328u), vec3<u32>(var_3.a.x, 0u, 65921u)) >> (1u % 32u)), vec3<u32>(19114u, 4294967295u, ~_wgslsmith_div_u32(u_input.a.x, 4294967295u))), max(_wgslsmith_clamp_vec3_u32(~vec3<u32>(13667u, var_3.a.x, 0u), vec3<u32>(u_input.a.x, 1u, u_input.a.x), ~vec3<u32>(u_input.a.x, 30225u, u_input.a.x)), countOneBits(vec3<u32>(var_3.a.x, 1529u, 1u) | vec3<u32>(6361u, var_3.a.x, var_3.a.x))) << (~(max(vec3<u32>(u_input.a.x, var_3.a.x, 24008u), vec3<u32>(1u, 1u, var_3.a.x)) >> (vec3<u32>(u_input.a.x, var_3.a.x, u_input.a.x) % vec3<u32>(32u))) % vec3<u32>(32u)));
    return StorageBuffer(min(0i, var_2.a));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = vec4<f32>(922f, -624f, _wgslsmith_f_op_f32(round(global1.x)), global1.x);
    let var_0 = reverseBits(2147483647i);
    var var_1 = select(select(!(!select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), true)), select(vec3<bool>(false, true, true), vec3<bool>(any(vec4<bool>(false, true, false, true)), true, global1.x != global1.x), true), !all(vec4<bool>(true, true, false, false))), vec3<bool>(!all(vec2<bool>(true, true)) || false, !all(vec4<bool>(true, true, true, true)), !any(vec3<bool>(true, true, true))), select(!select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(false, true, false)), any(vec2<bool>(false, false))), vec3<bool>((u_input.b.x << (102772u % 32u)) < min(2147483647i, global0.x), true, all(vec2<bool>(true, true))), vec3<bool>(true, true, true)));
    var var_2 = -9492i;
    var var_3 = Struct_3(Struct_1(abs(_wgslsmith_mod_vec2_u32(~u_input.a, ~vec2<u32>(u_input.a.x, 4294967295u)))), var_1.xy, u_input.b.x);
    let x = u_input.a;
    s_output = func_1();
}


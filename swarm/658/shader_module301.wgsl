struct Struct_1 {
    a: vec4<u32>,
    b: vec2<u32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec3<u32>,
    c: vec2<bool>,
    d: vec2<i32>,
    e: vec4<f32>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec3<u32>,
    c: vec2<bool>,
    d: vec4<u32>,
}

struct Struct_4 {
    a: i32,
    b: vec3<i32>,
    c: vec3<u32>,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(vec2<f32>(-1000f, 1902f), vec3<u32>(9320u, 31791u, 4294967295u), vec2<bool>(false, true), vec4<u32>(4294967295u, 1762u, 1u, 25595u));

var<private> global1: Struct_3;

var<private> global2: vec4<i32> = vec4<i32>(-21598i, -35370i, i32(-2147483648), -31596i);

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: f32, arg_1: Struct_4, arg_2: Struct_3, arg_3: u32) -> f32 {
    var var_0 = Struct_1(vec4<u32>(0u, arg_1.c.x, ~arg_2.b.x, _wgslsmith_add_u32(24114u, 1u ^ _wgslsmith_mult_u32(global0.d.x, 1u))), ~arg_2.b.zy);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global1.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) + -1349f), false))));
    let var_2 = Struct_1(_wgslsmith_clamp_vec4_u32(~max(~vec4<u32>(u_input.b.x, arg_1.c.x, global0.b.x, arg_3), _wgslsmith_div_vec4_u32(global1.d, var_0.a)), ~arg_2.d, ~(~(arg_2.d >> (vec4<u32>(var_0.b.x, 1u, global1.d.x, 70195u) % vec4<u32>(32u))))), ~vec2<u32>(firstTrailingBit(68985u), arg_2.d.x));
    var var_3 = select(!(!select(!vec4<bool>(arg_1.d.c.x, arg_2.c.x, false, false), !vec4<bool>(global1.c.x, false, global0.c.x, global0.c.x), vec4<bool>(global0.c.x, false, true, global0.c.x))), vec4<bool>(_wgslsmith_div_i32(countOneBits(-1i), arg_1.a) == abs(2147483647i), (arg_2.c.x || true) || false, all(vec2<bool>(any(vec2<bool>(false, global1.c.x)), true & global0.c.x)), false), !select(select(vec4<bool>(true, true, true, arg_2.c.x), vec4<bool>(arg_1.d.c.x, arg_1.d.c.x, arg_2.c.x, true), vec4<bool>(arg_1.d.c.x, true, false, false)), select(!vec4<bool>(arg_2.c.x, global1.c.x, arg_1.d.c.x, arg_2.c.x), select(vec4<bool>(arg_1.d.c.x, true, true, global0.c.x), vec4<bool>(false, global0.c.x, global1.c.x, global1.c.x), true), global1.c.x), !(arg_1.d.c.x & arg_1.d.c.x)));
    var_3 = select(!select(!select(vec4<bool>(global1.c.x, false, arg_2.c.x, true), vec4<bool>(arg_2.c.x, true, true, arg_2.c.x), vec4<bool>(arg_1.d.c.x, true, arg_1.d.c.x, true)), !select(vec4<bool>(false, false, false, false), vec4<bool>(global1.c.x, true, true, true), arg_1.d.c.x), global0.c.x), vec4<bool>(true, var_3.x, true, global0.c.x & (true && all(vec2<bool>(global1.c.x, false)))), all(!select(select(vec4<bool>(false, global0.c.x, true, global0.c.x), vec4<bool>(true, var_3.x, global0.c.x, false), vec4<bool>(false, arg_2.c.x, true, arg_1.d.c.x)), vec4<bool>(true, true, true, true), arg_1.d.c.x)));
    return _wgslsmith_f_op_f32(-516f + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1115f, -566f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(462f)) + _wgslsmith_f_op_f32(var_1 + 654f))))));
}

fn func_2(arg_0: Struct_2, arg_1: vec3<bool>, arg_2: Struct_3) -> vec3<bool> {
    global2 = u_input.a;
    let var_0 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.a.x, _wgslsmith_f_op_f32(func_3(1898f, Struct_4(-46633i, vec3<i32>(-14034i, -2147483647i, arg_0.d.x), global1.d.zwz, Struct_2(vec4<f32>(353f, -309f, global1.a.x, 186f), global1.d.wwx, arg_1.yx, vec2<i32>(1i, 0i), arg_0.e)), arg_2, 11004u)))) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1896f, arg_0.e.x)) + _wgslsmith_div_vec2_f32(arg_0.e.ww, vec2<f32>(1068f, arg_2.a.x))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(arg_2.a.x, global1.a.x)))))))));
    return vec3<bool>(arg_0.c.x, true, all(vec4<bool>(arg_1.x, true, global1.c.x, ~global1.b.x >= arg_2.b.x)));
}

fn func_1(arg_0: i32) -> StorageBuffer {
    let var_0 = select(select(!select(select(vec3<bool>(global1.c.x, global1.c.x, true), vec3<bool>(true, global0.c.x, global1.c.x), global1.c.x), vec3<bool>(global0.c.x, false, global0.c.x), func_2(Struct_2(vec4<f32>(global0.a.x, -1000f, global1.a.x, -1000f), global1.b, global0.c, u_input.a.yw, vec4<f32>(545f, global1.a.x, global1.a.x, global1.a.x)), vec3<bool>(global1.c.x, global0.c.x, global1.c.x), Struct_3(vec2<f32>(global1.a.x, 921f), global1.d.xyx, global1.c, vec4<u32>(global0.b.x, 38320u, 3665u, global0.d.x)))), vec3<bool>(global0.c.x, true, global1.c.x), select(select(!vec3<bool>(global0.c.x, false, global0.c.x), !vec3<bool>(global1.c.x, false, global0.c.x), global0.c.x), vec3<bool>(global1.b.x <= 4294967295u, true, global0.c.x), any(vec4<bool>(global0.c.x, global0.c.x, global1.c.x, global0.c.x)))), vec3<bool>(global1.c.x, global1.c.x && true, any(global0.c)), !vec3<bool>(global0.c.x, true, global1.c.x));
    global2 = u_input.a;
    var var_1 = abs(_wgslsmith_dot_vec3_i32(~vec3<i32>(global2.x, arg_0, 2147483647i) | u_input.a.zyx, ~vec3<i32>(_wgslsmith_clamp_i32(2147483647i, -19658i, -2147483647i), global2.x | global2.x, -12929i)));
    global0 = Struct_3(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.a.x, global1.a.x)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(global1.a + global0.a), _wgslsmith_f_op_vec2_f32(vec2<f32>(global1.a.x, global0.a.x) * global1.a)), vec2<bool>(true, true))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(global0.a + vec2<f32>(global1.a.x, 2055f)), vec2<f32>(324f, 489f), true)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-776f, -939f))))), _wgslsmith_clamp_vec3_u32(~vec3<u32>(global1.b.x >> (66821u % 32u), ~40860u, 45549u ^ global0.d.x), vec3<u32>(_wgslsmith_div_u32(global1.b.x, 57543u), global1.d.x | (global0.b.x | global0.b.x), reverseBits(~global0.b.x)), min(~(~global1.b), vec3<u32>(~40537u, firstTrailingBit(44345u), ~14954u))), vec2<bool>(global1.c.x, var_0.x), _wgslsmith_mod_vec4_u32(_wgslsmith_clamp_vec4_u32(abs(vec4<u32>(71147u, global0.d.x, global0.d.x, 89627u)), _wgslsmith_div_vec4_u32(global0.d, global0.d), vec4<u32>(18135u, global1.b.x, 12709u, 31509u)), _wgslsmith_div_vec4_u32(vec4<u32>(global1.b.x, global0.b.x, u_input.b.x, 0u), firstLeadingBit(vec4<u32>(global0.d.x, 4094u, 55840u, 4294967295u)))) << (global1.d % vec4<u32>(32u)));
    global0 = Struct_3(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.a.x, global0.a.x) - global0.a))), _wgslsmith_f_op_vec2_f32(select(global0.a, _wgslsmith_f_op_vec2_f32(abs(global1.a)), var_0.yy)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global0.a)), global1.c.x)), global0.d.xzz, global1.c, ~(~_wgslsmith_sub_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b.x, global1.b.x, 58599u, u_input.b.x), global0.d), ~global1.d)));
    return StorageBuffer(global2.yzw, u_input.a.wx, global2.wyx | (max(global2.xyx, vec3<i32>(global2.x, global2.x, global2.x)) << (_wgslsmith_add_vec3_u32(~global0.d.wzw, vec3<u32>(1u, 1u, u_input.b.x)) % vec3<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1(global2.x);
}


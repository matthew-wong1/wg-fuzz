struct Struct_1 {
    a: u32,
    b: vec2<bool>,
    c: vec4<i32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<f32>,
    c: vec2<u32>,
    d: i32,
}

struct Struct_4 {
    a: f32,
    b: bool,
    c: Struct_2,
    d: vec3<f32>,
    e: Struct_2,
}

struct Struct_5 {
    a: i32,
    b: f32,
    c: vec2<bool>,
    d: vec3<f32>,
    e: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: vec2<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<f32>,
    c: u32,
    d: i32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5;

var<private> global1: array<f32, 21>;

var<private> global2: u32 = 98317u;

var<private> global3: array<Struct_3, 2> = array<Struct_3, 2>(Struct_3(Struct_1(46905u, vec2<bool>(true, true), vec4<i32>(2147483647i, -45298i, 1i, -6475i)), vec4<f32>(1106f, -1854f, -1475f, 420f), vec2<u32>(1u, 1u), -13407i), Struct_3(Struct_1(4294967295u, vec2<bool>(true, true), vec4<i32>(-19008i, -1i, 0i, i32(-2147483648))), vec4<f32>(-720f, -1132f, -378f, -1227f), vec2<u32>(16783u, 62895u), 2147483647i));

var<private> global4: i32;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: Struct_1) -> i32 {
    let var_0 = arg_2.c.x;
    let var_1 = Struct_1(_wgslsmith_mod_u32(31197u, firstLeadingBit(arg_0)), vec2<bool>(arg_2.b.x, select(any(vec3<bool>(arg_2.b.x, false, global0.c.x)) & true, any(select(vec3<bool>(arg_1.b.x, false, arg_2.b.x), vec3<bool>(arg_1.b.x, global0.c.x, arg_1.b.x), true)), any(!vec3<bool>(false, false, arg_1.b.x)))), arg_2.c);
    global0 = Struct_5(-2147483647i & _wgslsmith_mult_i32(-1i, -_wgslsmith_div_i32(1i, global0.a)), _wgslsmith_f_op_f32(f32(-1f) * -783f), !vec2<bool>(!all(vec2<bool>(true, arg_1.b.x)), select(true, true, true)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(global0.d, global0.d), _wgslsmith_f_op_vec3_f32(global0.d - global0.d)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global1[_wgslsmith_index_u32(4294967295u, 21u)]))));
    var var_2 = max(var_1.c | vec4<i32>(_wgslsmith_dot_vec4_i32(~vec4<i32>(var_1.c.x, arg_2.c.x, 1397i, 22156i), reverseBits(vec4<i32>(2147483647i, var_1.c.x, arg_2.c.x, -25366i))), (2147483647i | var_1.c.x) >> (1u % 32u), select(~0i, -global0.a, true), -4313i), -var_1.c);
    let var_3 = Struct_2(abs(vec2<u32>(_wgslsmith_clamp_u32(var_1.a, ~var_1.a, u_input.c.x << (4294967295u % 32u)), _wgslsmith_dot_vec2_u32(~u_input.c, vec2<u32>(41715u, u_input.c.x)))), Struct_1(var_1.a >> (abs(abs(arg_0)) % 32u), global0.c, vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_1.c.x, 10118i, -1i, var_2.x) << (vec4<u32>(0u, var_1.a, 4294967295u, 25090u) % vec4<u32>(32u)), vec4<i32>(var_1.c.x, arg_2.c.x, -20099i, var_1.c.x)), _wgslsmith_mod_i32(~var_1.c.x, i32(-1i) * -2147483647i), -23990i, 1i)), global0.a);
    return firstLeadingBit(2147483647i);
}

fn func_2(arg_0: vec2<f32>) -> bool {
    var var_0 = Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1407f, 1519f))))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1287f - global1[_wgslsmith_index_u32(u_input.d, 21u)])))), true, Struct_2(u_input.c, Struct_1(u_input.d, global0.c, vec4<i32>(u_input.b.x, func_3(0u, Struct_1(18468u, global0.c, vec4<i32>(1i, 1i, u_input.a.x, global0.a)), Struct_1(u_input.d, vec2<bool>(global0.c.x, true), vec4<i32>(global0.a, 0i, -28088i, global0.a))), u_input.b.x, i32(-1i) * -19703i)), 26305i), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.c.x, 21u)]), -772f, -297f) + global0.d))), Struct_2(countOneBits(u_input.c), Struct_1(_wgslsmith_sub_u32(28975u, abs(0u)), global0.c, select(u_input.a, vec4<i32>(-39763i, u_input.a.x, u_input.b.x, 0i) ^ vec4<i32>(global0.a, global0.a, -2147483647i, global0.a), -38850i == global0.a)), global0.a));
    return var_0.e.b.b.x;
}

fn func_1() -> StorageBuffer {
    var var_0 = !func_2(global0.d.zx);
    let var_1 = vec4<f32>(global1[_wgslsmith_index_u32(~0u, 21u)], _wgslsmith_f_op_f32(trunc(-1000f)), -682f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global0.d.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1096f) * global1[_wgslsmith_index_u32(0u, 21u)])), _wgslsmith_f_op_f32(-329f + 445f))));
    return StorageBuffer(firstTrailingBit(u_input.c), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-468f, -1483f, global0.e))) * _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-var_1.zzy)))) + vec3<f32>(global0.b, -521f, global1[_wgslsmith_index_u32(abs(_wgslsmith_add_u32(4294967295u, u_input.c.x)), 21u)])), u_input.c.x, _wgslsmith_add_i32(abs(~(-13610i)), i32(-1i) * -14220i), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(772f, global0.d.x) - global0.d.zy) * _wgslsmith_f_op_vec2_f32(vec2<f32>(1321f, var_1.x) + vec2<f32>(global0.b, -1385f))))), vec2<f32>(-115f, _wgslsmith_div_f32(-761f, _wgslsmith_f_op_f32(min(global0.d.x, var_1.x)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -(vec2<i32>(global0.a, global0.a) >> (u_input.c % vec2<u32>(32u)));
    let var_1 = abs(u_input.a.zy);
    var var_2 = !vec3<bool>(global0.c.x, ~(~u_input.a.x) >= -(~var_0.x), false);
    let var_3 = var_0.x;
    var var_4 = Struct_5(-40516i, 1255f, var_2.yx, _wgslsmith_f_op_vec3_f32(-global0.d), 517f);
    global2 = u_input.c.x;
    var var_5 = firstTrailingBit(-8370i);
    let x = u_input.a;
    s_output = func_1();
}


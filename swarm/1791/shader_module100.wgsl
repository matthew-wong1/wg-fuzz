struct Struct_1 {
    a: f32,
    b: i32,
    c: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<f32>,
}

struct Struct_3 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3() -> bool {
    var var_0 = Struct_3(_wgslsmith_f_op_f32(floor(global0.a)) >= -313f);
    return all(vec4<bool>(any(vec3<bool>(true, true, !var_0.a)), true, any(!(!vec4<bool>(var_0.a, var_0.a, false, true))), true));
}

fn func_2(arg_0: vec3<f32>) -> Struct_1 {
    global0 = Struct_1(2144f, -1i, vec4<f32>(-312f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1919f - -1935f)))), arg_0.x, global0.a));
    var var_0 = Struct_3(func_3());
    let var_1 = i32(-1i) * -32143i;
    var_0 = Struct_3((firstLeadingBit(var_1 << (u_input.a % 32u)) >= -global0.b) == true);
    let var_2 = Struct_2(Struct_1(_wgslsmith_div_f32(arg_0.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(1202f)), _wgslsmith_f_op_f32(arg_0.x * global0.a)))), -18725i, vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(global0.a)), 616f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x + 530f) - 1462f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(191f - arg_0.x)))), Struct_1(_wgslsmith_div_f32(1057f, 1756f), 0i >> (~_wgslsmith_dot_vec2_u32(vec2<u32>(32638u, 38743u), vec2<u32>(1u, 1u)) % 32u), _wgslsmith_f_op_vec4_f32(round(global0.c))), arg_0);
    return var_2.a;
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: u32) -> Struct_2 {
    let var_0 = -2147483647i | -global0.b;
    let var_1 = _wgslsmith_sub_vec2_u32(select((~vec2<u32>(arg_2, 12305u) ^ (vec2<u32>(arg_2, arg_2) | vec2<u32>(1u, arg_2))) >> (_wgslsmith_add_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(arg_2, 0u), vec2<u32>(u_input.a, u_input.a)), select(vec2<u32>(u_input.a, 8523u), vec2<u32>(u_input.a, 0u), vec2<bool>(true, true))) % vec2<u32>(32u)), vec2<u32>(~4294967295u, 24111u >> ((25803u & arg_2) % 32u)), select(vec2<bool>(true, true), select(vec2<bool>(true, false), select(vec2<bool>(false, false), vec2<bool>(true, true), false), select(vec2<bool>(true, true), vec2<bool>(false, false), false)), all(select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, true))))), abs(firstLeadingBit(vec2<u32>(u_input.a, _wgslsmith_mult_u32(u_input.a, arg_2)))));
    var var_2 = global0.c;
    var var_3 = Struct_3(false);
    var var_4 = ~var_1;
    return Struct_2(func_2(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_0.c.xzy), var_2.yyx), vec3<f32>(global0.c.x, _wgslsmith_f_op_f32(arg_0.a + 109f), _wgslsmith_f_op_f32(-global0.a)))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_2.x, 508f))), -34578i, global0.c), vec3<f32>(-868f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(vec3<f32>(890f, var_2.x, var_2.x)).c.x + _wgslsmith_f_op_f32(-arg_0.c.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(arg_0.c.x)), -378f)));
}

fn func_1(arg_0: Struct_3) -> StorageBuffer {
    var var_0 = func_4(func_2(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-global0.c.yyy), _wgslsmith_f_op_vec3_f32(global0.c.xzx * global0.c.zzx)))))), u_input.b, u_input.a);
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global0.c.wy + _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(237f, -352f), _wgslsmith_f_op_vec2_f32(var_0.b.c.zy * vec2<f32>(894f, global0.a))) * global0.c.ww)));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(1000f, _wgslsmith_f_op_f32(-global0.a))))), -(i32(-1i) * -var_0.a.b), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_div_f32(1763f, var_1.x), var_0.b.c.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(var_0.b.a, 710f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -464f) * _wgslsmith_f_op_f32(max(var_1.x, 165f)))))));
    let var_3 = arg_0;
    global0 = var_0.a;
    return StorageBuffer(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.a, u_input.a & u_input.a, _wgslsmith_clamp_u32(u_input.a, 17917u, 6424u)) & ~_wgslsmith_div_vec3_u32(vec3<u32>(u_input.a, 41816u, 0u), vec3<u32>(u_input.a, u_input.a, 4631u)), _wgslsmith_sub_vec3_u32(~(vec3<u32>(u_input.a, u_input.a, u_input.a) << (vec3<u32>(u_input.a, u_input.a, 4294967295u) % vec3<u32>(32u))), ~(~vec3<u32>(u_input.a, u_input.a, 87327u)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.c.x + global0.a) - _wgslsmith_f_op_f32(max(1550f, -1487f))) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.x, -101f) - var_2.a)))), _wgslsmith_mod_vec3_i32(_wgslsmith_clamp_vec3_i32(abs(~vec3<i32>(63913i, global0.b, -2147483647i)), select(vec3<i32>(var_0.b.b, u_input.b, 2147483647i), vec3<i32>(global0.b, 2147483647i, u_input.b), arg_0.a) >> (_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a, 14201u, 31201u), vec3<u32>(4294967295u, u_input.a, 31426u)) % vec3<u32>(32u)), _wgslsmith_div_vec3_i32(vec3<i32>(-1i, 27280i, 1i), vec3<i32>(-2147483647i, u_input.b, global0.b)) ^ _wgslsmith_mod_vec3_i32(vec3<i32>(2147483647i, var_0.b.b, var_0.b.b), vec3<i32>(2147483647i, -2147483647i, var_0.a.b))), ~vec3<i32>(reverseBits(global0.b), 17572i, countOneBits(-2147483647i))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1(Struct_3(!(true == select(true, true, true))));
}


struct Struct_1 {
    a: vec2<i32>,
    b: f32,
}

struct Struct_2 {
    a: u32,
    b: vec3<bool>,
}

struct Struct_3 {
    a: vec2<i32>,
    b: Struct_2,
    c: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: bool,
}

struct Struct_5 {
    a: f32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec2<u32>,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_2(arg_0: i32) -> u32 {
    var var_0 = arg_0;
    let var_1 = Struct_5(-891f);
    var_0 = 1i;
    var var_2 = -reverseBits(~vec4<i32>(1i, 22729i, -2147483647i, _wgslsmith_div_i32(-7778i, arg_0)));
    var var_3 = Struct_4(Struct_2(~(~32933u), vec3<bool>(true, true, !all(vec2<bool>(true, true)))), true || all(vec4<bool>(true, true, true, true)));
    return u_input.a;
}

fn func_3(arg_0: Struct_2, arg_1: vec3<i32>) -> vec3<bool> {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(1f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(1461f, -686f)), 350f)))) - -1919f);
    var var_1 = countOneBits(min(37718i, -arg_1.x << (u_input.a % 32u)) >> (~_wgslsmith_div_u32(u_input.a, ~46824u) % 32u));
    let var_2 = vec2<bool>(arg_0.b.x || !any(select(vec3<bool>(false, arg_0.b.x, arg_0.b.x), arg_0.b, true)), true);
    let var_3 = vec3<u32>(reverseBits(27366u), u_input.a, 2049u);
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(round(-639f))))));
    return select(!(!arg_0.b), arg_0.b, !any(select(arg_0.b.zz, var_2, true)));
}

fn func_1(arg_0: vec3<u32>, arg_1: bool, arg_2: Struct_5) -> vec2<bool> {
    global0 = any(select(vec4<bool>(true, 4294967295u >= func_2(-29599i), all(func_3(Struct_2(arg_0.x, vec3<bool>(true, true, false)), vec3<i32>(1i, 82994i, 59855i))), true), select(!(!vec4<bool>(arg_1, true, arg_1, arg_1)), select(vec4<bool>(false, arg_1, false, arg_1), !vec4<bool>(false, arg_1, false, true), arg_1), true), !arg_1));
    let var_0 = Struct_4(Struct_2(abs(_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(arg_0.yy, arg_0.zz), 9665u)), vec3<bool>(false, arg_1 && all(vec3<bool>(true, arg_1, arg_1)), arg_1)), true);
    var var_1 = Struct_4(var_0.a, true);
    global0 = true;
    var_1 = var_0;
    return vec2<bool>((_wgslsmith_f_op_f32(f32(-1f) * -628f) != arg_2.a) & (arg_2.a != _wgslsmith_f_op_f32(step(-1000f, _wgslsmith_f_op_f32(exp2(arg_2.a))))), !all(select(select(vec4<bool>(false, true, arg_1, false), vec4<bool>(var_0.b, false, var_1.b, true), vec4<bool>(false, var_1.a.b.x, var_0.a.b.x, false)), select(vec4<bool>(true, true, var_0.b, var_0.a.b.x), vec4<bool>(var_0.a.b.x, false, var_1.a.b.x, false), vec4<bool>(true, false, arg_1, var_0.a.b.x)), !vec4<bool>(arg_1, false, false, var_1.b))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_add_u32(~651u, _wgslsmith_clamp_u32(1u, _wgslsmith_add_u32(1u, countOneBits(25530u)), _wgslsmith_dot_vec3_u32(abs(_wgslsmith_sub_vec3_u32(vec3<u32>(11019u, 51805u, u_input.a), vec3<u32>(0u, 1u, 3646u))), vec3<u32>(firstTrailingBit(4294967295u), ~0u, u_input.a << (0u % 32u)))));
    let var_1 = all(select(!(!func_1(vec3<u32>(u_input.a, u_input.a, u_input.a), true, Struct_5(-2114f))), vec2<bool>(all(select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), false)), any(vec4<bool>(true, true, false, true))), !select(vec2<bool>(true, true), func_1(vec3<u32>(u_input.a, 20661u, 15016u), true, Struct_5(-703f)), vec2<bool>(true, true))));
    var var_2 = var_1;
    let var_3 = Struct_3(~_wgslsmith_mod_vec2_i32(~_wgslsmith_clamp_vec2_i32(vec2<i32>(-2147483647i, -31925i), vec2<i32>(15340i, 26239i), vec2<i32>(-88664i, 2147483647i)), select(vec2<i32>(-1i, 20734i), vec2<i32>(1i, 1i), select(vec2<bool>(var_1, var_1), vec2<bool>(var_1, var_1), vec2<bool>(false, true)))), Struct_2(8807u, vec3<bool>(false, true, any(func_3(Struct_2(u_input.a, vec3<bool>(true, true, var_1)), vec3<i32>(-1i, 15675i, 31011i)).zz))), Struct_1(vec2<i32>(_wgslsmith_dot_vec2_i32(countOneBits(vec2<i32>(0i, 2147483647i)), vec2<i32>(-2147483647i, 0i)), -_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, -2147483647i, 2147483647i, 1i), vec4<i32>(2147483647i, -20475i, -28711i, 31897i))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1f)))));
    let var_4 = vec3<i32>(var_3.a.x | 1i, 59065i, var_3.c.a.x >> (u_input.a % 32u));
    var var_5 = abs(abs(-27559i));
    var_0 = func_2(abs(i32(-1i) * -1i));
    var var_6 = !vec4<bool>(false, all(select(!var_3.b.b, var_3.b.b, func_3(var_3.b, vec3<i32>(-26590i, 5354i, var_4.x)))), all(select(vec3<bool>(false, true, true), var_3.b.b, !vec3<bool>(var_1, var_3.b.b.x, false))), var_1);
    let x = u_input.a;
    s_output = StorageBuffer(var_3.b.a, -_wgslsmith_sub_i32(1i, -1i), vec2<u32>(~(~0u), 0u), 1u, -165f);
}


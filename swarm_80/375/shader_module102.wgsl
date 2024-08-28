struct Struct_1 {
    a: vec3<i32>,
    b: vec3<f32>,
    c: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    let var_0 = true;
    var var_1 = arg_0.a.x;
    var_1 = _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, ~arg_0.a.x, ~((2147483647i << (u_input.b % 32u)) & arg_0.a.x), reverseBits(_wgslsmith_add_i32(arg_0.a.x, -arg_0.a.x))), -_wgslsmith_mult_vec4_i32(vec4<i32>(arg_0.a.x, -1i, reverseBits(arg_0.a.x), 1i), _wgslsmith_div_vec4_i32(~vec4<i32>(-1i, arg_0.a.x, arg_0.a.x, 0i), vec4<i32>(arg_0.a.x, -30492i, 0i, -2147483647i) | vec4<i32>(arg_0.a.x, -1i, arg_0.a.x, -19598i))));
    let var_2 = Struct_1(vec3<i32>(~arg_0.a.x, 34644i, _wgslsmith_mult_i32(~(-arg_0.a.x), _wgslsmith_dot_vec4_i32(vec4<i32>(0i, arg_0.a.x, arg_0.a.x, arg_0.a.x), vec4<i32>(arg_0.a.x, -13556i, 1i, 2147483647i)) >> (u_input.a.x % 32u))), arg_0.b, arg_0.b.x);
    var_1 = var_2.a.x;
    return Struct_1(arg_0.a, var_2.b, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1343f))));
}

fn func_3(arg_0: vec4<bool>, arg_1: u32, arg_2: f32, arg_3: Struct_1) -> Struct_1 {
    var var_0 = u_input.a.x;
    var_0 = 10729u;
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_3.b - _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_3.c, _wgslsmith_f_op_f32(f32(-1f) * -1000f), arg_3.c))));
    let var_2 = arg_3.a.yy;
    var var_3 = _wgslsmith_f_op_f32(f32(-1f) * -1154f);
    return arg_3;
}

fn func_4(arg_0: Struct_1, arg_1: vec2<u32>) -> bool {
    var var_0 = 22037u;
    var var_1 = (true || (max(select(1u, 4294967295u, false), _wgslsmith_dot_vec4_u32(vec4<u32>(17023u, 4294967295u, arg_1.x, arg_1.x), vec4<u32>(42467u, 82484u, arg_1.x, arg_1.x))) > _wgslsmith_mod_u32(3749u, u_input.a.x))) && any(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true)));
    let var_2 = 578f;
    var var_3 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.b.x, 1000f, var_2, 683f)), vec4<f32>(arg_0.c, -1000f, -1539f, var_2), u_input.b == 41502u))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(307f, arg_0.b.x, var_2, 1038f))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(var_2, var_2, arg_0.b.x, -1000f) + vec4<f32>(var_2, -315f, 390f, var_2))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-971f, 503f, var_2, arg_0.b.x), vec4<f32>(var_2, 845f, 1000f, arg_0.c), true)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2, 1000f, var_2, 1260f)))))));
    var var_4 = Struct_1(vec3<i32>(reverseBits(arg_0.a.x), ~(~arg_0.a.x ^ func_2(Struct_1(arg_0.a, vec3<f32>(894f, var_2, var_2), var_2)).a.x), i32(-1i) * -44234i), _wgslsmith_div_vec3_f32(vec3<f32>(-708f, _wgslsmith_f_op_f32(f32(-1f) * -150f), 917f), _wgslsmith_f_op_vec3_f32(arg_0.b - var_3.wwz)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1142f * _wgslsmith_f_op_f32(-var_3.x)))));
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_3.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -504f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_4.b.x)))))) > 140f;
}

fn func_1() -> bool {
    let var_0 = !vec4<bool>(any(vec2<bool>(any(vec2<bool>(false, true)), true)), true, true, func_4(func_3(vec4<bool>(false, true, true, false), u_input.b, _wgslsmith_f_op_f32(select(-306f, 276f, true)), func_2(Struct_1(vec3<i32>(-1i, 14274i, -1i), vec3<f32>(-1672f, 975f, -371f), 1067f))), u_input.a));
    return var_0.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = min(1u, u_input.b) << (u_input.b % 32u);
    var_0 = u_input.a.x & ~15049u;
    let var_1 = !vec4<bool>(true, any(vec4<bool>(func_1(), true, false, true)), all(select(vec2<bool>(true, true), vec2<bool>(true, false), select(vec2<bool>(true, false), vec2<bool>(true, false), false))), func_4(func_2(func_2(Struct_1(vec3<i32>(2147483647i, 1i, -1i), vec3<f32>(-369f, 756f, -454f), -1695f))), ~u_input.a));
    let var_2 = func_2(func_2(func_2(func_2(Struct_1(vec3<i32>(8469i, -26269i, 15798i), vec3<f32>(-1464f, 622f, 2477f), 846f)))));
    var var_3 = var_2.a;
    var var_4 = _wgslsmith_div_vec4_u32(~vec4<u32>(52048u, _wgslsmith_mult_u32(4294967295u, u_input.a.x), select(u_input.a.x, _wgslsmith_div_u32(27299u, u_input.b), false), u_input.b), abs(~vec4<u32>(u_input.a.x, u_input.b, u_input.b, 1u) | vec4<u32>(u_input.b, u_input.a.x, u_input.b, 96017u)));
    var var_5 = select(select(var_1.yx, !vec2<bool>(var_1.x, var_1.x), select(!(!var_1.yw), vec2<bool>(true, var_1.x), !select(vec2<bool>(var_1.x, var_1.x), vec2<bool>(var_1.x, false), vec2<bool>(var_1.x, var_1.x)))), select(select(!select(var_1.zz, var_1.zz, var_1.x), var_1.xz, any(!vec4<bool>(var_1.x, var_1.x, var_1.x, false))), var_1.xy, var_1.zz), select(select(vec2<bool>(any(vec3<bool>(false, true, var_1.x)), var_1.x), select(select(vec2<bool>(var_1.x, true), vec2<bool>(var_1.x, var_1.x), vec2<bool>(false, true)), select(vec2<bool>(var_1.x, var_1.x), var_1.wx, var_1.x), true), true), !var_1.yw, true));
    var var_6 = vec3<f32>(var_2.c, -845f, _wgslsmith_f_op_f32(-var_2.b.x));
    let var_7 = func_2(Struct_1(-vec3<i32>(22983i, -1i, 0i) | vec3<i32>(var_3.x, func_2(Struct_1(var_2.a, vec3<f32>(-499f, -407f, var_6.x), var_6.x)).a.x, select(var_3.x, 1i, false)), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(594f, _wgslsmith_f_op_f32(abs(var_2.c)), var_6.x))), -1682f));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(u_input.a.x), -_wgslsmith_mult_i32(var_2.a.x >> (var_4.x % 32u), var_3.x));
}


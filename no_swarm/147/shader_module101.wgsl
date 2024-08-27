struct Struct_1 {
    a: i32,
    b: f32,
    c: vec4<i32>,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
    c: vec2<bool>,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: f32,
    d: vec3<f32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: vec3<bool> = vec3<bool>(false, true, true);

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> vec3<bool> {
    var var_0 = -((u_input.a.yz << ((firstTrailingBit(vec2<u32>(46541u, 1u)) >> (_wgslsmith_clamp_vec2_u32(vec2<u32>(461u, 13712u), vec2<u32>(12650u, 0u), vec2<u32>(60429u, 49723u)) % vec2<u32>(32u))) % vec2<u32>(32u))) >> (vec2<u32>(10685u, _wgslsmith_add_u32(1u, abs(1u))) % vec2<u32>(32u)));
    let var_1 = select(vec4<bool>(true, true, all(!(!vec3<bool>(true, global1.x, false))), all(vec3<bool>(false, false, !global1.x))), vec4<bool>(global1.x, true, global1.x, !global1.x), select(select(vec4<bool>(all(vec3<bool>(global1.x, global1.x, false)), true, !global1.x, any(vec3<bool>(global1.x, false, global1.x))), vec4<bool>(select(global1.x, true, global1.x), true, any(global1.yz), false), any(vec2<bool>(true, true))), select(vec4<bool>(global1.x, false, var_0.x != -71907i, 2147483647i != u_input.a.x), vec4<bool>(!global1.x, true, global1.x, any(global1.yz)), vec4<bool>(!global1.x, true, any(vec3<bool>(global1.x, false, global1.x)), global1.x)), false));
    let var_2 = u_input.a.yxz;
    global1 = !select(select(vec3<bool>(var_1.x, var_0.x < -18522i, false), !select(var_1.yxw, vec3<bool>(global1.x, global1.x, true), var_1.wxx), vec3<bool>(false, global1.x | global1.x, !var_1.x)), select(!var_1.xzz, var_1.zww, var_1.x), vec3<bool>(global1.x & true, all(vec2<bool>(var_1.x, global1.x)), !(var_0.x > 1i)));
    global1 = select(select(!select(!vec3<bool>(var_1.x, false, global1.x), select(vec3<bool>(true, true, global1.x), var_1.xxx, global1.x), true), var_1.wwz, select(var_1.xwy, vec3<bool>(any(var_1.wzy), !global1.x, false), !vec3<bool>(var_1.x, global1.x, true))), !vec3<bool>(true, all(select(vec4<bool>(global1.x, false, false, false), vec4<bool>(false, true, global1.x, false), false)), var_1.x), any(!(!var_1.xy)) | !(!(u_input.a.x == u_input.a.x)));
    return vec3<bool>(!any(vec2<bool>(true, true)) || true, any(select(select(vec4<bool>(true, false, true, true), var_1, var_1.x == var_1.x), vec4<bool>(all(vec4<bool>(true, true, global1.x, global1.x)), true, false, !global1.x), var_1)), !(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-562f))) < _wgslsmith_div_f32(-1552f, -770f)));
}

fn func_2(arg_0: Struct_1, arg_1: f32, arg_2: i32, arg_3: Struct_1) -> f32 {
    let var_0 = abs(-firstLeadingBit(_wgslsmith_sub_vec2_i32(u_input.a.wz & vec2<i32>(arg_3.c.x, 5640i), ~arg_3.c.yw)));
    var var_1 = Struct_2(arg_0, !select(select(!vec3<bool>(global1.x, global1.x, false), select(vec3<bool>(false, true, false), vec3<bool>(false, global1.x, true), false), !global1.x), vec3<bool>(!global1.x, global1.x && global1.x, true), func_3()), !vec2<bool>(any(vec3<bool>(true, true, true)), !all(vec4<bool>(true, global1.x, false, true))), abs(_wgslsmith_sub_vec2_u32(~firstLeadingBit(vec2<u32>(0u, 4294967295u)), vec2<u32>(1u, 1u))));
    let var_2 = arg_3;
    var var_3 = var_1.a;
    let var_4 = Struct_1(firstLeadingBit(-78787i ^ (_wgslsmith_sub_i32(var_3.d, var_3.c.x) & _wgslsmith_div_i32(var_1.a.c.x, 26870i))), _wgslsmith_f_op_f32(arg_1 - _wgslsmith_f_op_f32(round(arg_1))), var_3.c, var_0.x);
    return -330f;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: u32) -> u32 {
    var var_0 = 1005f;
    let var_1 = arg_2;
    global0 = false;
    var var_2 = _wgslsmith_add_vec4_u32(~(vec4<u32>(29680u, 0u, arg_2, 31151u) | reverseBits(vec4<u32>(arg_2, 26780u, 4294967295u, arg_2))), _wgslsmith_mod_vec4_u32((vec4<u32>(4294967295u, var_1, arg_2, arg_2) >> (vec4<u32>(arg_2, arg_2, var_1, 0u) % vec4<u32>(32u))) << ((vec4<u32>(var_1, var_1, 73116u, var_1) | vec4<u32>(arg_2, 36743u, var_1, arg_2)) % vec4<u32>(32u)), select(vec4<u32>(4294967295u, 49745u, 950u, 0u), vec4<u32>(1u, arg_2, 13176u, 4294967295u) & vec4<u32>(4294967295u, var_1, 0u, var_1), any(vec4<bool>(global1.x, global1.x, false, false))))) | ~(~vec4<u32>(var_1, arg_2, 15033u, 1u));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1154f, arg_0.b))), max(0i, 45835i) ^ ~_wgslsmith_sub_i32(arg_0.a, 1i), arg_1)));
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1((~_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, 0i), vec2<i32>(-9379i, u_input.a.x)) | ~(-50757i)) & ~(~u_input.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1143f))) * -1137f), min(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, 24307i) ^ ~u_input.a, -(u_input.a << (vec4<u32>(17230u, 0u, 53758u, 47854u) % vec4<u32>(32u)))) | reverseBits(u_input.a), abs(u_input.a.x));
    var var_1 = abs(1u) << (0u % 32u);
    var_1 = _wgslsmith_mult_u32(7403u, ~func_1(var_0, Struct_1(firstLeadingBit(-7491i), var_0.b, -u_input.a, _wgslsmith_add_i32(var_0.c.x, u_input.a.x)), abs(~1u)));
    var_1 = min(_wgslsmith_mult_u32(0u, ~(~reverseBits(47098u))), 10830u);
    var_1 = ~_wgslsmith_mod_u32(_wgslsmith_clamp_u32(firstLeadingBit(firstTrailingBit(1u)), _wgslsmith_mod_u32(0u, 27202u), firstLeadingBit(1u)), ~firstLeadingBit(45576u));
    global0 = false;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.b, var_0.b, 431f, 1270f), _wgslsmith_div_vec4_f32(vec4<f32>(var_0.b, 800f, var_0.b, var_0.b), vec4<f32>(var_0.b, 243f, -1000f, var_0.b)), !vec4<bool>(global1.x, false, false, false))))))), -1986i, 469f, _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_0.b, var_0.b, var_0.b)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b, -309f, var_0.b))))), min(vec2<u32>(1u, 1u), vec2<u32>(70837u, _wgslsmith_clamp_u32(0u, 1u, 11971u))) | ~(~(~vec2<u32>(92273u, 1u))));
}


struct Struct_1 {
    a: i32,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: Struct_1,
    c: vec2<bool>,
}

struct Struct_4 {
    a: u32,
    b: Struct_3,
    c: f32,
    d: u32,
    e: vec3<i32>,
}

struct Struct_5 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: vec3<i32>,
    d: u32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: i32,
    d: vec4<u32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2() -> Struct_2 {
    let var_0 = ~(~u_input.a);
    return Struct_2(Struct_1(reverseBits(0i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-524f, -555f, true)) + _wgslsmith_f_op_f32(-470f - 1172f)))));
}

fn func_3(arg_0: vec2<u32>, arg_1: vec2<f32>) -> Struct_1 {
    var var_0 = Struct_5(Struct_2(Struct_1(u_input.c.x, arg_1.x)));
    var var_1 = vec3<u32>(max(~_wgslsmith_div_u32(u_input.d, 121205u) << (abs(32774u) % 32u), 33379u), 16583u, ~abs(_wgslsmith_mod_u32(4294967295u, u_input.e.x)));
    var var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -377f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_0.a.a.b))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.x * -382f) + _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(var_0.a.a.b, var_0.a.a.b)))), 953f));
    var var_3 = ~select(u_input.b.zz << (u_input.e.xx % vec2<u32>(32u)), abs(-(~vec2<i32>(0i, u_input.c.x))), true);
    let var_4 = vec3<bool>(!all(vec2<bool>(false, true)) && all(vec4<bool>(true, var_2.x != -999f, 1i <= var_0.a.a.a, select(false, false, false))), true, true);
    return var_0.a.a;
}

fn func_4(arg_0: i32, arg_1: vec3<i32>, arg_2: Struct_1, arg_3: f32) -> f32 {
    var var_0 = Struct_4(firstTrailingBit(u_input.d), Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, arg_3, -1169f))), func_3(_wgslsmith_mod_vec2_u32(u_input.a, u_input.a) & u_input.e.yw, _wgslsmith_f_op_vec2_f32(round(vec2<f32>(arg_2.b, -1148f)))), select(select(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true)), vec2<bool>(false, false), vec2<bool>(true, true)), select(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true)), vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, true), false)), !select(true, true, false))), arg_3, _wgslsmith_div_u32(0u, ~(_wgslsmith_clamp_u32(4294967295u, 1u, 1u) << (~58625u % 32u))), _wgslsmith_mult_vec3_i32(vec3<i32>(-1i) * -(~vec3<i32>(-7809i, -41791i, u_input.c.x)), (max(arg_1, arg_1) | vec3<i32>(-68108i, 2147483647i, -2147483647i)) & ~arg_1));
    let var_1 = var_0.b;
    var var_2 = !vec3<bool>(1000f != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0.c, arg_3))), _wgslsmith_f_op_f32(-1260f - -1131f) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_2.b))), false);
    var_0 = Struct_4(1u, Struct_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_1.a * _wgslsmith_f_op_vec3_f32(-var_0.b.a)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_1.a))), func_3(_wgslsmith_sub_vec2_u32(_wgslsmith_mod_vec2_u32(u_input.a, vec2<u32>(6790u, u_input.e.x)), u_input.a | u_input.a), vec2<f32>(func_3(u_input.e.xz, var_1.a.xz).b, _wgslsmith_f_op_f32(max(var_1.b.b, arg_3)))), !select(var_1.c, select(vec2<bool>(var_1.c.x, var_0.b.c.x), vec2<bool>(var_1.c.x, var_2.x), vec2<bool>(var_0.b.c.x, var_1.c.x)), true)), _wgslsmith_f_op_f32(1627f + -362f), 43152u, arg_1);
    let var_3 = -arg_1.yx;
    return var_0.b.a.x;
}

fn func_1(arg_0: vec3<u32>) -> Struct_2 {
    var var_0 = false;
    var_0 = any(select(!select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, false)), vec4<bool>(true, all(vec4<bool>(false, true, false, true)), -3724i <= u_input.b.x, true), any(vec2<bool>(true, false)) != true)) | false;
    let var_1 = -u_input.c.x | ~(-17070i);
    let var_2 = func_2();
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(var_1, ~u_input.c, func_3(arg_0.xz, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.a.b, -1000f) * vec2<f32>(-517f, var_2.a.b)))), _wgslsmith_f_op_f32(round(-524f)))));
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(Struct_1(i32(-1i) * -1i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-278f)))));
    var_0 = Struct_2(var_0.a);
    var var_1 = true;
    var_0 = func_1(u_input.e.xxx);
    var var_2 = func_2().a.a;
    let var_3 = select(vec4<bool>(true, true, true, true), vec4<bool>(all(vec4<bool>(false, true, true, false)) == true, _wgslsmith_add_u32(0u, u_input.d) >= u_input.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-559f + var_0.a.b)) >= -1218f, !(select(false, true, true) & all(vec2<bool>(false, false)))), any(vec4<bool>(!all(vec3<bool>(true, true, true)), all(vec3<bool>(true, true, true)), any(select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), false)), true)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_0.a.b + -985f), _wgslsmith_f_op_f32(abs(-1944f)))) - -463f)), _wgslsmith_dot_vec2_i32(-_wgslsmith_clamp_vec2_i32(vec2<i32>(0i, u_input.b.x), u_input.c.zx, -u_input.b.yz), firstLeadingBit(~u_input.b.xw)), select(~u_input.e, _wgslsmith_sub_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a.x, 0u, u_input.e.x, 27299u), vec4<u32>(u_input.e.x, 9919u, 1u, 4294967295u)), u_input.e), !(!var_3)) | (abs(u_input.e) << (countOneBits(abs(u_input.e)) % vec4<u32>(32u))), select(u_input.e.zwz, vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(24039u, 1u, u_input.d, 74621u) << (u_input.e % vec4<u32>(32u)), ~u_input.e), min(67586u, _wgslsmith_clamp_u32(u_input.e.x, u_input.d, 29291u)), firstTrailingBit(reverseBits(93236u))), var_3.wzw));
}


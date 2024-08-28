struct Struct_1 {
    a: u32,
    b: vec4<i32>,
    c: vec2<bool>,
    d: vec4<u32>,
}

struct Struct_2 {
    a: vec4<bool>,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: vec4<u32>,
}

struct Struct_4 {
    a: u32,
    b: Struct_3,
}

struct Struct_5 {
    a: vec3<u32>,
    b: vec2<i32>,
    c: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: u32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3() -> u32 {
    return ~(~(~firstLeadingBit(62686u) >> (~4294967295u % 32u)));
}

fn func_2(arg_0: vec3<i32>, arg_1: vec3<i32>, arg_2: bool) -> u32 {
    var var_0 = Struct_2(select(vec4<bool>(firstTrailingBit(1u) > 1u, arg_2, true, true | (true & arg_2)), vec4<bool>(!all(vec3<bool>(true, arg_2, true)), any(select(vec2<bool>(arg_2, arg_2), vec2<bool>(arg_2, false), arg_2)), true, any(vec2<bool>(false, false))), !all(!vec4<bool>(arg_2, true, arg_2, arg_2))));
    var var_1 = _wgslsmith_div_u32(_wgslsmith_sub_u32(abs(firstTrailingBit(4294967295u)), ~1u), abs(1u));
    let var_2 = vec2<u32>(func_3() ^ _wgslsmith_mult_u32(select(~60362u, ~1u, true), _wgslsmith_mod_u32(_wgslsmith_div_u32(71865u, 4294967295u), 23639u << (0u % 32u))), (1u ^ _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 0u), _wgslsmith_clamp_vec3_u32(vec3<u32>(88425u, 17257u, 80166u), vec3<u32>(17795u, 4294967295u, 18135u), vec3<u32>(20831u, 24549u, 4294967295u)))) << (~(~(~50222u)) % 32u));
    var_1 = var_2.x;
    var_0 = Struct_2(select(select(vec4<bool>(var_0.a.x, true, true, true), !select(var_0.a, var_0.a, var_0.a.x), vec4<bool>(true, any(vec4<bool>(false, false, false, arg_2)), true, true)), !var_0.a, var_0.a));
    return min(1u | var_2.x, _wgslsmith_div_u32(var_2.x, ~_wgslsmith_mod_u32(21743u, func_3())));
}

fn func_4(arg_0: Struct_5, arg_1: Struct_4, arg_2: vec3<u32>) -> Struct_5 {
    let var_0 = _wgslsmith_div_u32(firstLeadingBit(arg_2.x), arg_2.x);
    let var_1 = arg_1.b.b.a.x;
    let var_2 = arg_0.c;
    let var_3 = Struct_1(45034u, vec4<i32>(i32(-1i) * -2147483647i, arg_1.b.a, arg_1.b.a, arg_0.b.x | select(u_input.a.x, _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, -1961i, u_input.a.x, arg_0.b.x), u_input.a), any(arg_1.b.b.a.yy))), arg_1.b.b.a.zz, arg_1.b.c);
    var var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_0.c))), var_2)) * arg_0.c);
    return arg_0;
}

fn func_1(arg_0: bool, arg_1: Struct_4, arg_2: i32) -> vec2<i32> {
    let var_0 = arg_1.b.b.a.yzy;
    var var_1 = arg_1;
    let var_2 = func_4(Struct_5(select(~var_1.b.c.yzw, arg_1.b.c.zyz, arg_1.b.b.a.wxz) | vec3<u32>(func_2(vec3<i32>(arg_2, -2147483647i, -11811i), vec3<i32>(arg_1.b.a, var_1.b.a, 2147483647i), var_0.x), 0u, 0u), vec2<i32>(3371i, _wgslsmith_sub_i32(2317i, abs(u_input.a.x))), -540f), arg_1, var_1.b.c.wyy);
    var_1 = arg_1;
    var_1 = Struct_4(abs(_wgslsmith_mult_u32(_wgslsmith_add_u32(var_2.a.x, var_2.a.x), var_2.a.x)), var_1.b);
    return vec2<i32>(_wgslsmith_clamp_i32(0i, u_input.a.x, firstTrailingBit(-1i)), ~(~0i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_dot_vec2_i32(select(_wgslsmith_sub_vec2_i32(u_input.a.zx, ~u_input.a.ww), u_input.a.wy, false), abs(u_input.a.zz)) | firstTrailingBit(-1i);
    var_0 = -_wgslsmith_dot_vec2_i32(-vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, 31923i, u_input.a.x), u_input.a), firstTrailingBit(2147483647i)), _wgslsmith_mult_vec2_i32(vec2<i32>(1i, i32(-1i) * -41822i), firstLeadingBit(func_1(false, Struct_4(55600u, Struct_3(u_input.a.x, Struct_2(vec4<bool>(true, false, true, false)), vec4<u32>(0u, 4294967295u, 0u, 31205u))), 35722i))));
    let var_1 = _wgslsmith_dot_vec4_i32(vec4<i32>(-1i) * -(~u_input.a), u_input.a);
    var var_2 = select(vec4<bool>(false, false, true, any(vec4<bool>(true, true, true, true))), !vec4<bool>(false, all(vec4<bool>(false, true, true, false)), any(vec3<bool>(true, true, true)), true), !select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, false)), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, false), true), true), vec4<bool>(true, all(vec4<bool>(true, false, false, true)), true, select(false, false, true))));
    var_0 = firstTrailingBit(~(i32(-1i) * -2147483647i));
    var_2 = !(!vec4<bool>(!var_2.x, true, all(vec3<bool>(true, true, true)), !(false || var_2.x)));
    var var_3 = ~1i;
    let var_4 = select(!var_2.xxy, var_2.zyy, all(vec2<bool>(false, false)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, vec2<u32>(~(~(~20864u)), _wgslsmith_div_u32(1u, ~1u)), (max(~85194u, max(32667u, 0u)) ^ _wgslsmith_div_u32(select(50452u, 84163u, var_2.x), 1u)) & ~firstTrailingBit(firstTrailingBit(33502u)), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1134f, _wgslsmith_f_op_f32(f32(-1f) * -602f))), _wgslsmith_f_op_f32(sign(143f)), 662f));
}


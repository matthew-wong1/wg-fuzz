struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: u32,
    b: vec3<f32>,
    c: Struct_1,
    d: Struct_1,
    e: bool,
}

struct Struct_3 {
    a: vec3<i32>,
    b: Struct_2,
}

struct Struct_4 {
    a: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: i32,
    d: vec4<u32>,
    e: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_2(arg_0: vec3<i32>, arg_1: Struct_4) -> Struct_4 {
    return arg_1;
}

fn func_3(arg_0: vec3<bool>, arg_1: vec4<f32>, arg_2: Struct_4, arg_3: Struct_1) -> vec3<i32> {
    let var_0 = u_input.c;
    var var_1 = u_input.d.yz >> (arg_3.a.yy % vec2<u32>(32u));
    var var_2 = abs(~u_input.d.zy);
    var var_3 = Struct_2(var_2.x, arg_1.xwy, Struct_1(_wgslsmith_div_vec4_u32(vec4<u32>(~u_input.e, ~var_1.x, firstLeadingBit(28782u), 4294967295u), vec4<u32>(39923u, u_input.d.x, 14008u, arg_3.a.x) >> (firstTrailingBit(u_input.d) % vec4<u32>(32u)))), arg_3, true);
    var var_4 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(114f, arg_1.x, 1956f, var_3.b.x), vec4<f32>(-2042f, 184f, 440f, -820f))) - _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(528f, arg_1.x, arg_1.x, var_3.b.x) + vec4<f32>(arg_1.x, arg_1.x, -667f, arg_1.x)), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_1.x, arg_1.x, var_3.b.x, 2167f)))))), vec4<f32>(var_3.b.x, 606f, var_3.b.x, 318f)))));
    return ~abs(vec3<i32>(-1i) * -_wgslsmith_sub_vec3_i32(vec3<i32>(-44710i, 27619i, var_0), vec3<i32>(7688i, 7409i, var_0)));
}

fn func_1(arg_0: vec2<u32>, arg_1: Struct_2) -> Struct_3 {
    var var_0 = Struct_1(u_input.d);
    return Struct_3(~firstLeadingBit(func_3(select(vec3<bool>(arg_1.e, false, arg_1.e), vec3<bool>(true, false, arg_1.e), vec3<bool>(arg_1.e, true, false)), vec4<f32>(-790f, -402f, -517f, 655f), func_2(vec3<i32>(1i, u_input.c, 49223i), Struct_4(4294967295u)), Struct_1(vec4<u32>(arg_0.x, arg_1.c.a.x, 8466u, arg_1.c.a.x)))), arg_1);
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_4, arg_2: Struct_3, arg_3: i32) -> Struct_4 {
    var var_0 = vec3<u32>(arg_1.a, 4294967295u, 32902u);
    var_0 = vec3<u32>(_wgslsmith_clamp_u32(_wgslsmith_mod_u32(arg_0.x, countOneBits(~arg_2.b.c.a.x)), ~39044u, arg_0.x), ~func_1(vec2<u32>(_wgslsmith_mult_u32(27535u, 38921u), ~25256u), Struct_2(u_input.b.x, _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1146f, arg_2.b.b.x, -487f))), Struct_1(u_input.d), arg_2.b.c, true)).b.c.a.x, (var_0.x >> (100482u % 32u)) | arg_2.b.d.a.x);
    var_0 = ~u_input.d.xxy;
    var_0 = arg_2.b.c.a.zzw;
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = abs(max(~u_input.d.wxw, u_input.d.zzy));
    var var_1 = func_4(~vec2<u32>(~u_input.b.x | _wgslsmith_mult_u32(0u, u_input.d.x), 0u), Struct_4(_wgslsmith_mult_u32(u_input.b.x, ~0u)), func_1(~max(vec2<u32>(u_input.b.x, 24614u), ~u_input.b), Struct_2(u_input.e, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(544f, -1913f, -301f))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-246f, -1000f, -384f) + vec3<f32>(1046f, 827f, -1868f))), Struct_1(vec4<u32>(u_input.e, 1u, u_input.d.x, u_input.d.x) | u_input.d), Struct_1(vec4<u32>(u_input.e, 0u, 4294967295u, u_input.e)), select(true, false, true))), u_input.a);
    var var_2 = u_input.b | ~_wgslsmith_mult_vec2_u32(vec2<u32>(14645u, ~4294967295u), reverseBits(select(vec2<u32>(var_1.a, var_1.a), vec2<u32>(1u, 0u), false)));
    var_2 = u_input.d.zx;
    var var_3 = func_1(~u_input.b, Struct_2(~(~max(var_2.x, 23640u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1000f, 128f, -1564f))))), func_1(_wgslsmith_sub_vec2_u32(select(var_0.yx, u_input.d.xx, true), countOneBits(vec2<u32>(15185u, 0u))), Struct_2(_wgslsmith_sub_u32(var_2.x, u_input.e), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-202f, -940f, 590f)), Struct_1(vec4<u32>(32212u, var_2.x, var_2.x, 21201u)), Struct_1(vec4<u32>(var_2.x, 1u, 40186u, var_0.x)), any(vec3<bool>(false, false, false)))).b.c, func_1(~(var_0.xy ^ vec2<u32>(var_2.x, 1u)), func_1(select(var_0.zx, vec2<u32>(18266u, var_2.x), false), Struct_2(var_0.x, vec3<f32>(746f, 1568f, -151f), Struct_1(u_input.d), Struct_1(vec4<u32>(u_input.e, var_0.x, var_1.a, 23272u)), true)).b).b.c, true)).b;
    var var_4 = var_3.b;
    var_2 = ~vec2<u32>(114419u, var_3.d.a.x);
    let var_5 = ~countOneBits(vec3<u32>(1u, ~32212u, 7737u) ^ vec3<u32>(~1u, var_0.x, ~var_1.a));
    var_2 = vec2<u32>(~4294967295u, 0u);
    let x = u_input.a;
    s_output = StorageBuffer(-724f);
}


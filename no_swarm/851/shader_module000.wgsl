struct Struct_1 {
    a: f32,
    b: vec3<u32>,
    c: i32,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: u32,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: u32, arg_1: vec3<i32>, arg_2: vec3<i32>) -> vec3<u32> {
    var var_0 = !select(select(vec3<bool>(true, any(vec4<bool>(false, false, false, false)), any(vec2<bool>(true, false))), select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), true), true), !(!select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(false, false, false))), any(vec2<bool>(all(vec3<bool>(true, false, true)), true)));
    return ~(select(~vec3<u32>(arg_0, arg_0, 14528u) | (vec3<u32>(arg_0, arg_0, arg_0) >> (vec3<u32>(arg_0, arg_0, arg_0) % vec3<u32>(32u))), ~_wgslsmith_add_vec3_u32(vec3<u32>(arg_0, arg_0, arg_0), vec3<u32>(1u, 1u, arg_0)), vec3<bool>(true, var_0.x, all(vec4<bool>(false, var_0.x, false, true)))) ^ reverseBits(max(_wgslsmith_clamp_vec3_u32(vec3<u32>(1u, arg_0, arg_0), vec3<u32>(4294967295u, 18519u, arg_0), vec3<u32>(arg_0, arg_0, arg_0)), firstLeadingBit(vec3<u32>(arg_0, arg_0, arg_0)))));
}

fn func_2(arg_0: Struct_4) -> vec2<u32> {
    var var_0 = Struct_3(_wgslsmith_div_u32(abs(countOneBits(_wgslsmith_mod_u32(arg_0.a.x, 4294967295u))), _wgslsmith_mod_u32(_wgslsmith_sub_u32(6422u, arg_0.a.x) ^ 1u, 1u)));
    var var_1 = ~(~func_3(_wgslsmith_add_u32(50150u, var_0.a), u_input.a.wyx, _wgslsmith_div_vec3_i32(vec3<i32>(-74114i, u_input.a.x, 2147483647i), u_input.a.zyx))) << (abs(vec3<u32>(arg_0.a.x, 53056u, var_0.a | ~40129u)) % vec3<u32>(32u));
    var var_2 = u_input.a.zx;
    var_0 = Struct_3(var_0.a);
    var var_3 = _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(-u_input.a.wz, u_input.a.zy), ~firstTrailingBit(-u_input.a.zx) ^ ~(-(u_input.a.xx | vec2<i32>(22803i, u_input.a.x))));
    return ~(~_wgslsmith_sub_vec2_u32(~var_1.yy, vec2<u32>(var_1.x, 4294967295u) | var_1.yz) ^ ~_wgslsmith_mult_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(arg_0.a.x, 1u), vec2<u32>(0u, 25541u)), ~vec2<u32>(22572u, 18478u)));
}

fn func_4(arg_0: vec2<u32>) -> Struct_4 {
    var var_0 = (u_input.a.xx ^ u_input.a.xw) >> (vec2<u32>(min(~arg_0.x << (_wgslsmith_clamp_u32(12987u, 18251u, arg_0.x) % 32u), func_3(arg_0.x << (arg_0.x % 32u), _wgslsmith_sub_vec3_i32(vec3<i32>(-2147483647i, u_input.a.x, u_input.a.x), u_input.a.yzz), vec3<i32>(0i, u_input.a.x, 25770i)).x), arg_0.x) % vec2<u32>(32u));
    var_0 = u_input.a.wz;
    var_0 = min(u_input.a.wz, u_input.a.zy);
    var var_1 = firstLeadingBit(var_0.x & -_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, 57703i, 2147483647i), ~vec3<i32>(u_input.a.x, -2147483647i, u_input.a.x)));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-687f, _wgslsmith_f_op_f32(select(833f, 371f, true)))))), _wgslsmith_add_vec3_u32(~reverseBits(vec3<u32>(1u, 1u, arg_0.x)), _wgslsmith_add_vec3_u32(vec3<u32>(1u, arg_0.x, arg_0.x), vec3<u32>(arg_0.x, arg_0.x, 41866u))) << (_wgslsmith_add_vec3_u32(~(~vec3<u32>(arg_0.x, 16938u, 4294967295u)), vec3<u32>(countOneBits(arg_0.x), ~arg_0.x, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.x, 1u, 7840u), vec3<u32>(arg_0.x, 0u, arg_0.x)))) % vec3<u32>(32u)), _wgslsmith_dot_vec2_i32(abs(abs(vec2<i32>(2147483647i, var_0.x))) << (min(vec2<u32>(0u, 27484u), ~vec2<u32>(0u, arg_0.x)) % vec2<u32>(32u)), _wgslsmith_mod_vec2_i32(u_input.a.wz, vec2<i32>(-1i) * -vec2<i32>(u_input.a.x, 1i))), (u_input.a.x >> ((countOneBits(arg_0.x) & _wgslsmith_mod_u32(arg_0.x, 4294967295u)) % 32u)) == ~abs(var_0.x));
    return Struct_4(arg_0);
}

fn func_5(arg_0: vec4<u32>, arg_1: Struct_4, arg_2: f32) -> Struct_3 {
    return Struct_3(1u);
}

fn func_1(arg_0: Struct_3) -> Struct_2 {
    let var_0 = func_5(countOneBits(abs(vec4<u32>(0u, arg_0.a, arg_0.a | 4294967295u, arg_0.a))), func_4(func_2(Struct_4(vec2<u32>(4294967295u, arg_0.a)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -103f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1164f)) * _wgslsmith_f_op_f32(-219f - -446f))))));
    return Struct_2(Struct_1(_wgslsmith_f_op_f32(1099f * 2082f), abs(countOneBits(vec3<u32>(arg_0.a, var_0.a, arg_0.a))) << (_wgslsmith_sub_vec3_u32(firstLeadingBit(vec3<u32>(var_0.a, var_0.a, var_0.a)), ~vec3<u32>(var_0.a, var_0.a, var_0.a)) % vec3<u32>(32u)), -1i, all(vec3<bool>(any(vec2<bool>(false, true)), true, true))), 1u, func_4(~vec2<u32>(arg_0.a, 124805u)).a.x);
}

fn func_6(arg_0: Struct_2, arg_1: vec3<i32>, arg_2: Struct_1, arg_3: Struct_1) -> Struct_2 {
    var var_0 = arg_0;
    var var_1 = func_4(vec2<u32>(96117u, ~arg_2.b.x));
    var var_2 = ~arg_3.b;
    let var_3 = abs(u_input.a);
    let var_4 = vec2<i32>(max(35806i, ~_wgslsmith_mod_i32(-35535i, -23046i)), _wgslsmith_div_i32(-(~37986i), -61836i)) | -u_input.a.wx;
    return func_1(Struct_3(4294967295u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(func_1(Struct_3(~(~25588u))), -u_input.a.yyy, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-221f - -189f)), vec3<u32>(20716u >> (1u % 32u), 0u, func_4(vec2<u32>(22452u, 27415u)).a.x) | reverseBits(vec3<u32>(4294967295u, 13372u, 1u)), func_1(func_5(vec4<u32>(1u, 1u, 1u, 1u), func_4(vec2<u32>(1u, 3283u)), -541f)).a.c, true), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1624f), _wgslsmith_f_op_f32(floor(-252f))))), func_3(_wgslsmith_clamp_u32(1u, 1u, ~55419u), vec3<i32>(abs(u_input.a.x), u_input.a.x, 0i), -min(u_input.a.yzx, vec3<i32>(-2147483647i, -38606i, u_input.a.x))), firstLeadingBit(u_input.a.x), true));
    var var_1 = -1347f;
    let var_2 = var_0.a;
    let var_3 = func_6(func_1(func_5(_wgslsmith_clamp_vec4_u32(vec4<u32>(var_0.b, var_2.b.x, var_0.a.b.x, var_2.b.x) ^ vec4<u32>(29049u, 1u, 0u, 0u), _wgslsmith_add_vec4_u32(vec4<u32>(1u, var_0.b, 0u, 40527u), vec4<u32>(var_0.b, var_0.c, 0u, var_0.c)), vec4<u32>(1u, var_0.b, 1u, 27896u)), Struct_4(abs(vec2<u32>(4294967295u, 1u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-277f * 1607f) - 433f))), _wgslsmith_sub_vec3_i32(vec3<i32>(-1i) * -firstLeadingBit(u_input.a.xyw), u_input.a.zzz), func_6(func_1(Struct_3(func_3(var_2.b.x, vec3<i32>(u_input.a.x, var_2.c, -2996i), u_input.a.xyw).x)), _wgslsmith_sub_vec3_i32(_wgslsmith_mult_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(var_0.a.c, u_input.a.x, 37937i), vec3<i32>(1i, 2147483647i, -26939i)), vec3<i32>(var_2.c, 1i, var_0.a.c)), vec3<i32>(i32(-1i) * -15585i, func_1(Struct_3(var_0.c)).a.c, countOneBits(0i))), func_1(func_5(~vec4<u32>(81383u, var_0.c, var_0.c, 83270u), func_4(vec2<u32>(var_0.b, 4294967295u)), 324f)).a, Struct_1(_wgslsmith_f_op_f32(-var_2.a), _wgslsmith_div_vec3_u32(var_0.a.b, var_2.b), 8482i, var_0.a.d)).a, var_0.a);
    var var_4 = var_3;
    var_4 = var_3;
    let x = u_input.a;
    s_output = StorageBuffer(select(-u_input.a, u_input.a, !vec4<bool>(false, var_4.a.d, func_6(Struct_2(Struct_1(var_0.a.a, vec3<u32>(var_2.b.x, 48247u, 1u), 2147483647i, false), var_0.b, var_0.a.b.x), vec3<i32>(0i, -31254i, -17424i), var_0.a, Struct_1(var_0.a.a, var_4.a.b, 0i, false)).a.d, var_3.a.d)), 15659u);
}


struct Struct_1 {
    a: i32,
    b: vec2<bool>,
    c: u32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
    d: f32,
}

struct Struct_3 {
    a: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: vec2<i32>) -> u32 {
    var var_0 = abs(0i);
    var var_1 = true;
    var_1 = true;
    var_0 = abs(~reverseBits(u_input.a.x) & _wgslsmith_add_i32(_wgslsmith_mult_i32(~(-42761i), ~(-1i)), -39536i));
    let var_2 = !select(select(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false)), vec2<bool>(true, true), vec2<bool>(true, true)), !select(vec2<bool>(true, false), vec2<bool>(true, true), true), all(select(vec4<bool>(false, false, false, false), select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, false), true), vec4<bool>(true, true, true, true))));
    return 4294967295u;
}

fn func_2() -> Struct_2 {
    let var_0 = max(1u, ~min(22297u, _wgslsmith_mult_u32(0u, 17903u))) & (~_wgslsmith_add_u32(0u, firstTrailingBit(4294967295u)) | (_wgslsmith_sub_u32(4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 61831u), vec2<u32>(33244u, 4965u))) & 30701u));
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)));
    var var_2 = max(vec4<u32>(var_0, ~0u, min(func_3(_wgslsmith_div_vec2_i32(u_input.a.ww, u_input.a.wx)), func_3(-u_input.a.xw)), var_0), min(_wgslsmith_clamp_vec4_u32(~max(vec4<u32>(var_0, 57352u, var_0, var_0), vec4<u32>(58607u, 1u, 12125u, var_0)), min(select(vec4<u32>(var_0, 38590u, var_0, var_0), vec4<u32>(var_0, var_0, var_0, 4294967295u), vec4<bool>(false, true, true, true)), _wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, var_0, var_0, 2366u), vec4<u32>(var_0, var_0, 0u, var_0))), _wgslsmith_add_vec4_u32(max(vec4<u32>(0u, 4294967295u, var_0, 51955u), vec4<u32>(52731u, var_0, 0u, 57177u)), _wgslsmith_sub_vec4_u32(vec4<u32>(26332u, var_0, 0u, var_0), vec4<u32>(var_0, var_0, var_0, 4294967295u)))), select(~vec4<u32>(var_0, 4294967295u, 17143u, 64374u), abs(vec4<u32>(1u, var_0, 113940u, 0u)) ^ (vec4<u32>(var_0, var_0, var_0, var_0) & vec4<u32>(var_0, var_0, var_0, 18923u)), select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), all(vec3<bool>(false, true, true))))));
    var_1 = vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(475f, _wgslsmith_f_op_f32(f32(-1f) * -1344f))), var_1.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)) - -214f));
    var_1 = _wgslsmith_div_vec2_f32(vec2<f32>(var_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_1.x, -270f))) * 893f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, var_1.x)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f))) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(619f, var_1.x) - vec2<f32>(var_1.x, var_1.x))), _wgslsmith_div_vec2_f32(vec2<f32>(394f, var_1.x), vec2<f32>(1384f, var_1.x)))));
    return Struct_2(0u, Struct_1(~u_input.a.x, select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, all(vec3<bool>(false, true, true)))), countOneBits(var_2.x)), Struct_1(-(u_input.a.x << ((var_2.x & 27059u) % 32u)), select(vec2<bool>(true, true), vec2<bool>(any(vec3<bool>(true, false, false)), any(vec3<bool>(true, true, false))), true), ~4294967295u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2563f - -549f)) + _wgslsmith_f_op_f32(var_1.x - 1444f))));
}

fn func_4(arg_0: Struct_2, arg_1: bool) -> u32 {
    let var_0 = countOneBits(0u);
    let var_1 = -_wgslsmith_add_vec3_i32(u_input.a.zzw, u_input.a.zxz);
    var var_2 = vec3<u32>(var_0, _wgslsmith_dot_vec2_u32(~(~vec2<u32>(9313u, arg_0.b.c)) & countOneBits(~vec2<u32>(var_0, 4294967295u)), select(~vec2<u32>(0u, var_0), reverseBits(abs(vec2<u32>(43309u, 51491u))), true)), arg_0.b.c);
    let var_3 = 1u;
    var_2 = select(_wgslsmith_mod_vec3_u32(_wgslsmith_mod_vec3_u32(select(vec3<u32>(arg_0.c.c, var_3, 0u), _wgslsmith_mult_vec3_u32(vec3<u32>(56751u, var_0, 0u), vec3<u32>(var_0, 0u, arg_0.c.c)), arg_1), countOneBits(abs(vec3<u32>(52012u, var_0, var_3)))), countOneBits(~vec3<u32>(var_2.x, 19812u, 1u))), ~min(min(vec3<u32>(39201u, arg_0.b.c, 4294967295u), vec3<u32>(37731u, var_0, 36392u)) | (vec3<u32>(var_3, var_3, var_3) & vec3<u32>(var_2.x, 1u, 1u)), ~vec3<u32>(var_3, 0u, 4294967295u) & ~vec3<u32>(var_2.x, var_2.x, var_3)), !select(vec3<bool>(true, true, true), vec3<bool>(select(true, true, arg_0.b.b.x), true, true), true));
    return 30352u;
}

fn func_1(arg_0: bool, arg_1: bool, arg_2: vec4<f32>) -> vec2<f32> {
    let var_0 = Struct_2(func_4(func_2(), 1000f >= _wgslsmith_f_op_f32(arg_2.x + _wgslsmith_f_op_f32(max(680f, 701f)))), Struct_1(select(_wgslsmith_sub_i32(u_input.a.x, _wgslsmith_div_i32(19151i, -2147483647i)), 25399i, !(arg_0 || arg_1)), vec2<bool>(true, any(vec4<bool>(arg_0, false, arg_1, false))), abs(0u)), Struct_1(u_input.a.x, func_2().b.b, ~_wgslsmith_mult_u32(~53037u, abs(0u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(-1571f, -623f, false)), _wgslsmith_f_op_f32(-arg_2.x))) * -192f) + _wgslsmith_f_op_f32(arg_2.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.x)))));
    let var_1 = select(select(vec3<bool>(true, !any(vec4<bool>(arg_1, true, arg_0, false)), false), vec3<bool>(true, true, true), !select(select(vec3<bool>(var_0.b.b.x, false, arg_1), vec3<bool>(var_0.c.b.x, var_0.c.b.x, false), arg_0), !vec3<bool>(arg_0, true, arg_1), select(vec3<bool>(var_0.b.b.x, arg_0, var_0.b.b.x), vec3<bool>(arg_0, true, arg_0), true))), select(!select(select(vec3<bool>(arg_0, true, arg_1), vec3<bool>(arg_1, arg_1, var_0.b.b.x), vec3<bool>(arg_1, false, arg_1)), select(vec3<bool>(false, var_0.c.b.x, false), vec3<bool>(false, arg_1, var_0.b.b.x), arg_0), select(vec3<bool>(true, arg_0, arg_0), vec3<bool>(false, true, arg_1), vec3<bool>(true, true, var_0.b.b.x))), select(!(!vec3<bool>(false, true, var_0.c.b.x)), select(vec3<bool>(arg_0, var_0.b.b.x, false), vec3<bool>(false, true, arg_1), true), true), !any(vec4<bool>(arg_1, false, true, var_0.c.b.x))), vec3<bool>(false, select(arg_0, !(!var_0.b.b.x), (arg_1 || arg_0) & true), arg_0));
    var var_2 = vec3<i32>(~(-_wgslsmith_mod_i32(-var_0.b.a, 0i)), -1796i << (0u % 32u), ~_wgslsmith_dot_vec3_i32(u_input.a.xwx, u_input.a.wxz));
    var_2 = -max(min(u_input.a.yyy, u_input.a.yww), vec3<i32>(u_input.a.x, var_0.c.a, -u_input.a.x));
    let var_3 = Struct_3(var_0.c.c);
    return vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2246f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(299f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0.d))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(2437f, -961f))))) - _wgslsmith_f_op_vec2_f32(func_1(true, u_input.a.x <= 1i, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1260f, 155f, -701f, -552f) * vec4<f32>(250f, 242f, 152f, -277f)))))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1128f, 541f)))) * vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -560f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1022f), -1228f))));
    var var_1 = 6122u;
    var_1 = func_2().b.c;
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(vec3<i32>(u_input.a.x, -u_input.a.x, u_input.a.x)) << (vec3<u32>(_wgslsmith_dot_vec2_u32(~vec2<u32>(82703u, 45248u), vec2<u32>(1u, 4294967295u)), abs(~4294967295u), ~31425u >> (0u % 32u)) % vec3<u32>(32u)), u_input.a.zz, ~1u);
}


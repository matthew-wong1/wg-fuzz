struct Struct_1 {
    a: f32,
    b: vec3<bool>,
}

struct Struct_2 {
    a: vec3<bool>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: i32,
    c: vec2<i32>,
}

struct Struct_4 {
    a: vec3<u32>,
    b: Struct_2,
}

struct Struct_5 {
    a: i32,
    b: vec4<bool>,
    c: vec3<i32>,
    d: i32,
    e: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: vec4<i32>,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: vec2<i32> = vec2<i32>(-19441i, i32(-2147483648));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: f32) -> vec3<bool> {
    global0 = vec4<i32>(~global0.x ^ _wgslsmith_dot_vec3_i32(global0.zxx, ~global0.ywy >> (vec3<u32>(u_input.b, u_input.d.x, u_input.a) % vec3<u32>(32u))), -1i, ~(~_wgslsmith_sub_i32(~45455i, ~(-16473i))), _wgslsmith_sub_i32(global1.x, select(1i, global0.x, true)));
    global1 = global0.yz;
    let var_0 = _wgslsmith_sub_vec3_i32(global0.xww, abs(~abs(-vec3<i32>(-1i, global0.x, global0.x))));
    global0 = (((abs(vec4<i32>(-2147483647i, 2147483647i, -1i, u_input.c)) << (_wgslsmith_div_vec4_u32(vec4<u32>(0u, 1u, u_input.d.x, u_input.b), vec4<u32>(1u, 1u, 4294967295u, 62098u)) % vec4<u32>(32u))) >> (reverseBits(~vec4<u32>(u_input.b, 9215u, u_input.b, 4294967295u)) % vec4<u32>(32u))) | -(~min(vec4<i32>(var_0.x, 28597i, 0i, var_0.x), vec4<i32>(var_0.x, var_0.x, var_0.x, var_0.x)))) | countOneBits(-vec4<i32>(-1i ^ global0.x, i32(-1i) * -41368i, ~40529i, global1.x));
    let var_1 = ~firstTrailingBit(-45177i) < -9663i;
    return arg_0.b;
}

fn func_2(arg_0: i32, arg_1: vec3<u32>) -> Struct_2 {
    let var_0 = Struct_1(220f, select(select(select(vec3<bool>(true, true, true), func_3(Struct_1(295f, vec3<bool>(true, false, false)), vec3<bool>(true, false, false), 1218f), all(vec2<bool>(false, true))), !select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), false), all(select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, true)))), !(!select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(false, false, true))), !vec3<bool>(true, select(false, false, true), true)));
    var var_1 = Struct_2(select(select(var_0.b, var_0.b, var_0.b.x), var_0.b, var_0.b));
    var var_2 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_0.a, var_0.a))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0.a, -1803f), vec2<f32>(-1139f, 1099f), vec2<bool>(false, var_1.a.x)))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a, -924f)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.a, -203f) - vec2<f32>(var_0.a, 1000f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-632f, 945f) + vec2<f32>(var_0.a, var_0.a))))), !vec2<bool>(false, !var_1.a.x))), vec2<f32>(var_0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a * var_0.a)) * -600f))));
    var_1 = Struct_2(var_1.a);
    global0 = -vec4<i32>(arg_0, 0i, min(~1i, _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, global0.x, -2147483647i, arg_0), vec4<i32>(-25901i, global1.x, -1i, global1.x))) ^ global1.x, _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(22458i, -38434i), vec2<i32>(global0.x, 36464i)) >> ((arg_1.x ^ arg_1.x) % 32u), u_input.c >> (arg_1.x % 32u)));
    return Struct_2(func_3(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2499f * var_2.x) + var_0.a), !(!var_0.b)), var_0.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-770f, 264f)) * _wgslsmith_f_op_f32(f32(-1f) * -1529f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x)))));
}

fn func_1(arg_0: Struct_5, arg_1: Struct_2, arg_2: Struct_4, arg_3: vec2<f32>) -> vec4<i32> {
    let var_0 = (~(~(~39911u)) >= abs(~(~u_input.d.x))) & !arg_2.b.a.x;
    let var_1 = func_2(_wgslsmith_dot_vec3_i32(-global0.yxx, vec3<i32>(1i, -810i, ~u_input.c)), arg_2.a);
    global0 = vec4<i32>(~(-1i), 0i, abs(max(~(u_input.c & global1.x), global0.x)), -1i);
    global1 = -abs(~global0.xy);
    let var_2 = -20682i;
    return select(abs(vec4<i32>(var_2, firstTrailingBit(reverseBits(global1.x)), -69046i, _wgslsmith_add_i32(arg_0.e ^ 18040i, global1.x))), -vec4<i32>(-2147483647i, -7573i >> (_wgslsmith_dot_vec2_u32(arg_2.a.xx, vec2<u32>(41195u, 4581u)) % 32u), arg_0.d, select(37563i, -1i, true)), true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -280f;
    global0 = max(~func_1(Struct_5(2147483647i, vec4<bool>(false, true, false, false), global0.zzw, global0.x, 0i), Struct_2(vec3<bool>(false, false, true)), Struct_4(vec3<u32>(3812u, u_input.a, 0u), Struct_2(vec3<bool>(true, true, true))), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_0, 190f)))), ~vec4<i32>(4249i, global1.x, u_input.c, max(2147483647i, -1i))) ^ -vec4<i32>(-(~global0.x), 1i, -(~global1.x), _wgslsmith_mult_i32(u_input.c & global1.x, u_input.c));
    var var_1 = 1u;
    global0 = vec4<i32>(firstLeadingBit(~global0.x), -2147483647i, -(~global0.x), ~(-countOneBits(-1i)));
    let x = u_input.a;
    s_output = StorageBuffer(var_0, vec2<u32>(u_input.a, countOneBits(_wgslsmith_mult_u32(36143u, u_input.d.x))) << (select(abs(~vec2<u32>(u_input.b, u_input.a)), abs(_wgslsmith_div_vec2_u32(u_input.d, vec2<u32>(u_input.b, u_input.a))), vec2<bool>(true, all(vec3<bool>(false, false, false)))) % vec2<u32>(32u)), vec4<i32>(_wgslsmith_mod_i32(u_input.c & -2147483647i, 1i), global1.x, ~max(firstTrailingBit(2147483647i), abs(-1i)), abs(-reverseBits(-27208i))), 0u, ~_wgslsmith_add_u32(_wgslsmith_mult_u32(_wgslsmith_add_u32(1u, u_input.d.x), u_input.b), _wgslsmith_sub_u32(_wgslsmith_clamp_u32(9756u, 26378u, u_input.b), _wgslsmith_dot_vec4_u32(vec4<u32>(56661u, 1u, 0u, u_input.a), vec4<u32>(1u, 37052u, 4294967295u, u_input.d.x)))));
}


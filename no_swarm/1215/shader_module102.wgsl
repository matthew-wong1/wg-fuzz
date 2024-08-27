struct Struct_1 {
    a: vec2<bool>,
    b: vec2<bool>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3(arg_0: f32, arg_1: Struct_2, arg_2: vec3<f32>) -> f32 {
    let var_0 = Struct_1(arg_1.b.yz, !select(vec2<bool>(false & arg_1.b.x, arg_1.b.x), !vec2<bool>(arg_1.b.x, false), select(arg_1.b.xy, arg_1.b.xx, any(vec4<bool>(arg_1.b.x, arg_1.b.x, arg_1.b.x, true)))));
    let var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0, 581f, arg_2.x, arg_2.x), _wgslsmith_f_op_vec4_f32(arg_1.a - vec4<f32>(arg_2.x, arg_1.a.x, 1481f, 1243f)), select(vec4<bool>(arg_1.b.x, var_0.b.x, arg_1.b.x, var_0.a.x), vec4<bool>(var_0.b.x, false, var_0.b.x, true), true))))), !select(select(select(vec3<bool>(var_0.a.x, arg_1.b.x, var_0.a.x), arg_1.b, vec3<bool>(var_0.a.x, true, var_0.b.x)), !arg_1.b, 82110u <= u_input.a.x), vec3<bool>(var_0.a.x, all(arg_1.b), var_0.b.x), vec3<bool>(true, false, select(var_0.b.x, arg_1.b.x, var_0.b.x))));
    var var_2 = _wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(firstTrailingBit(reverseBits(u_input.a.x)), firstTrailingBit(u_input.a.x), 1u)), u_input.a);
    var_2 = 71487u;
    var_2 = 2501u;
    return arg_0;
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    var var_0 = vec3<bool>(true || !(!any(vec3<bool>(true, true, arg_0.a.x))), arg_0.b.x, all(!arg_0.a));
    let var_1 = Struct_2(vec4<f32>(_wgslsmith_f_op_f32(1475f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1372f))), _wgslsmith_f_op_f32(func_3(214f, Struct_2(vec4<f32>(-1512f, 131f, -573f, -351f), vec3<bool>(false, arg_0.b.x, false)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(444f, 1155f, 1734f)))), _wgslsmith_f_op_f32(sign(2058f)), _wgslsmith_f_op_f32(abs(902f))), select(!(!vec3<bool>(arg_0.a.x, var_0.x, false)), vec3<bool>(false, arg_0.b.x, true), any(!vec3<bool>(arg_0.b.x, false, var_0.x))));
    var_0 = !select(!select(vec3<bool>(false, var_0.x, false), vec3<bool>(true, true, var_0.x), true), var_1.b, all(select(var_1.b, select(var_1.b, var_1.b, var_0.x), vec3<bool>(arg_0.a.x, false, true))));
    let var_2 = arg_0;
    var_0 = vec3<bool>(var_1.b.x, all(vec3<bool>(var_2.b.x, any(!vec4<bool>(false, true, var_0.x, true)), false || var_0.x)), !(var_1.b.x || !(!arg_0.a.x)));
    return arg_0;
}

fn func_4(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: Struct_1, arg_3: i32) -> i32 {
    let var_0 = vec3<i32>(arg_3 & -24993i, ~(-2147483647i), _wgslsmith_mult_i32(_wgslsmith_div_i32(1i, _wgslsmith_div_i32(-24855i, arg_1.x)), arg_3 | (max(23255i, arg_3) & _wgslsmith_dot_vec3_i32(arg_1, arg_1))));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1186f + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(-1171f, -2318f))))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-478f - -1475f))))) == _wgslsmith_f_op_f32(646f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -252f)) - _wgslsmith_f_op_f32(abs(-185f))));
    var_1 = true;
    var var_2 = vec4<u32>(~(~(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), vec4<u32>(27828u, 7051u, u_input.a.x, u_input.a.x)))), u_input.a.x, 0u, ~u_input.a.x);
    let var_3 = -_wgslsmith_mult_i32(abs(firstTrailingBit(-1i)) & arg_3, var_0.x);
    return _wgslsmith_clamp_i32(var_0.x, 34499i, var_0.x);
}

fn func_5(arg_0: i32, arg_1: Struct_1) -> Struct_1 {
    var var_0 = -293f;
    let var_1 = vec3<bool>(true, all(!select(vec4<bool>(arg_1.a.x, false, false, arg_1.b.x), vec4<bool>(true, arg_1.b.x, arg_1.b.x, arg_1.b.x), true)), arg_1.a.x);
    var var_2 = ~_wgslsmith_add_vec4_u32(abs(~(~vec4<u32>(24455u, u_input.a.x, 128757u, u_input.a.x))), min(_wgslsmith_mod_vec4_u32(max(vec4<u32>(u_input.a.x, u_input.a.x, 100726u, u_input.a.x), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)), vec4<u32>(26763u, 14074u, 1u, u_input.a.x)), vec4<u32>(13182u, 4294967295u, _wgslsmith_mod_u32(0u, 6216u), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x), u_input.a.xz))));
    let var_3 = arg_0;
    let var_4 = var_1.x;
    return Struct_1(select(vec2<bool>(true, true), var_1.zx, func_2(Struct_1(!vec2<bool>(arg_1.b.x, false), vec2<bool>(arg_1.a.x, var_4))).b), !arg_1.a);
}

fn func_1(arg_0: u32) -> Struct_1 {
    return func_5(func_4(func_2(Struct_1(vec2<bool>(true, false), vec2<bool>(false, false))), vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, -1i), vec2<i32>(0i, -60120i)), _wgslsmith_clamp_i32(0i, 64015i, 1i), 2147483647i) ^ vec3<i32>(1i, 1i, select(-2147483647i, 1i, true)), Struct_1(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), any(vec3<bool>(false, false, true)))), 0i), Struct_1(func_2(Struct_1(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, false), false))).a, select(!select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true)), vec2<bool>(all(vec3<bool>(false, false, true)), select(false, true, false)), !select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true)))));
}

fn func_6(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: vec2<i32>) -> u32 {
    var var_0 = ~(~(~vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 54011u)) << (abs(~vec4<u32>(u_input.a.x, 39168u, 48251u, 4294967295u)) % vec4<u32>(32u)));
    var_0 = _wgslsmith_mult_vec4_u32(vec4<u32>(~select(_wgslsmith_add_u32(0u, var_0.x), _wgslsmith_sub_u32(4294967295u, var_0.x), arg_0.a.x), u_input.a.x | abs(0u & var_0.x), u_input.a.x, min(4138u, var_0.x ^ ~4294967295u)), firstTrailingBit(vec4<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a.x, var_0.x, u_input.a.x, 0u), vec4<u32>(u_input.a.x, 36916u, var_0.x, 1u)), vec4<u32>(u_input.a.x, var_0.x, u_input.a.x, 15139u)), _wgslsmith_add_u32(u_input.a.x, var_0.x), u_input.a.x, u_input.a.x)));
    let var_1 = arg_0;
    var_0 = select(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a.x, 1u, var_0.x, 0u), vec4<u32>(1u, var_0.x, 86985u, u_input.a.x)) | _wgslsmith_mod_vec4_u32(select(vec4<u32>(var_0.x, 1u, var_0.x, 3573u), vec4<u32>(41987u, 0u, var_0.x, var_0.x), arg_0.a.x), firstTrailingBit(vec4<u32>(1u, var_0.x, 20387u, 0u))), abs(_wgslsmith_div_vec4_u32(~vec4<u32>(4294967295u, u_input.a.x, 81772u, var_0.x), vec4<u32>(u_input.a.x, var_0.x, 4294967295u, 95383u))), select(vec4<bool>(true, arg_2.x >= -24420i, true, var_1.b.x), !vec4<bool>(var_1.a.x, true, true, var_1.b.x), arg_0.b.x)) & (reverseBits(vec4<u32>(countOneBits(u_input.a.x), ~44590u, 63578u, 7387u)) ^ vec4<u32>(0u, ~u_input.a.x, abs(~u_input.a.x), ~(~var_0.x)));
    let var_2 = arg_0;
    return 11144u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_clamp_i32(-1i, -(i32(-1i) * -2147483647i), -abs(_wgslsmith_clamp_i32(31193i, 1i, 1i))) >= ~(~abs(2147483647i) << (func_6(func_1(u_input.a.x), select(vec2<i32>(-47460i, 1492i), vec2<i32>(-41667i, 25405i), false), vec2<i32>(1i, 1i)) % 32u));
    var var_1 = -(vec3<i32>(-1i) * -vec3<i32>(-52420i, i32(-1i) * -2147483647i, -2147483647i));
    var_0 = all(select(vec4<bool>(true, any(vec4<bool>(false, true, true, false)), !all(vec3<bool>(true, true, true)), false & (var_1.x > var_1.x)), !vec4<bool>(true, true, func_2(Struct_1(vec2<bool>(false, false), vec2<bool>(true, true))).b.x, u_input.a.x != 88210u), select(vec4<bool>(true, u_input.a.x >= u_input.a.x, true, true), !select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, false), true), vec4<bool>(true, true, true, true))));
    var_1 = vec3<i32>(_wgslsmith_sub_i32(-_wgslsmith_clamp_i32(~var_1.x, _wgslsmith_mod_i32(var_1.x, 22067i), ~var_1.x), ~1i), firstTrailingBit(var_1.x), -(~_wgslsmith_mod_i32(~var_1.x, ~(-2147483647i))));
    let x = u_input.a;
    s_output = StorageBuffer(~func_6(Struct_1(func_2(Struct_1(vec2<bool>(false, true), vec2<bool>(false, true))).b, func_2(Struct_1(vec2<bool>(false, false), vec2<bool>(false, true))).a), abs(var_1.xy) | abs(vec2<i32>(var_1.x, var_1.x)), -firstLeadingBit(var_1.yy)), u_input.a.x);
}


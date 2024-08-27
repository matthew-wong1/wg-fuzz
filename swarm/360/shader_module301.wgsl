struct Struct_1 {
    a: vec4<bool>,
    b: i32,
    c: f32,
    d: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 4>;

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: vec4<u32>) -> bool {
    let var_0 = any(arg_1.a.xwy);
    var var_1 = vec2<i32>(-(~arg_1.b << (arg_2.x % 32u)), abs(_wgslsmith_clamp_i32(-2152i, _wgslsmith_dot_vec2_i32(firstLeadingBit(vec2<i32>(-2147483647i, u_input.a)), vec2<i32>(u_input.a, arg_0)), ~0i & arg_0)));
    global0 = array<Struct_1, 4>();
    var_1 = _wgslsmith_mult_vec2_i32(firstLeadingBit((~vec2<i32>(arg_1.b, arg_1.b) ^ (vec2<i32>(arg_1.b, 0i) | vec2<i32>(arg_0, arg_0))) & _wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.a, arg_1.b), _wgslsmith_div_vec2_i32(vec2<i32>(1i, arg_0), vec2<i32>(10522i, var_1.x)), _wgslsmith_mult_vec2_i32(vec2<i32>(-18928i, -34776i), vec2<i32>(3397i, 0i)))), -(~(-(vec2<i32>(u_input.a, var_1.x) >> (u_input.b.yx % vec2<u32>(32u))))));
    var var_2 = arg_1;
    return var_0;
}

fn func_2(arg_0: bool, arg_1: u32) -> Struct_1 {
    let var_0 = Struct_1(!select(select(!vec4<bool>(arg_0, true, arg_0, arg_0), select(vec4<bool>(true, true, arg_0, arg_0), vec4<bool>(arg_0, arg_0, arg_0, true), false), arg_0 && arg_0), vec4<bool>(true, all(vec3<bool>(false, true, arg_0)), false, true), select(vec4<bool>(false, arg_0, arg_0, arg_0), select(vec4<bool>(true, true, arg_0, arg_0), vec4<bool>(true, true, arg_0, arg_0), vec4<bool>(arg_0, true, true, arg_0)), false)), ~firstTrailingBit(0i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-277f)) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-204f * -2140f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(270f))));
    let var_1 = var_0;
    global0 = array<Struct_1, 4>();
    var var_2 = Struct_1(vec4<bool>(arg_0, true, false, false), abs(-abs(-u_input.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -313f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1072f - _wgslsmith_f_op_f32(min(930f, var_0.d)))));
    let var_3 = func_3(var_0.b, global0[_wgslsmith_index_u32(firstTrailingBit(arg_1), 4u)], vec4<u32>(u_input.b.x, u_input.b.x, arg_1, ~_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(53629u, 1u, arg_1, arg_1), vec4<u32>(arg_1, 16231u, 32089u, arg_1)), _wgslsmith_mod_u32(arg_1, 0u))));
    return var_1;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<f32>) -> vec4<bool> {
    global0 = array<Struct_1, 4>();
    global0 = array<Struct_1, 4>();
    let var_0 = select(select(select(!vec4<bool>(arg_1.a.x, arg_1.a.x, false, arg_1.a.x), arg_1.a, arg_0.a.x), !(!(!arg_0.a)), arg_1.a.x), select(vec4<bool>(_wgslsmith_mod_u32(96588u, 53203u) != ~u_input.b.x, arg_1.a.x, !(32580i > u_input.a), !arg_1.a.x & !arg_1.a.x), vec4<bool>(arg_1.a.x, any(!arg_1.a.xz), _wgslsmith_mult_u32(1u, u_input.b.x) > ~u_input.b.x, !arg_1.a.x), !arg_1.a), arg_0.a);
    let var_1 = !arg_1.a.yyw;
    global0 = array<Struct_1, 4>();
    return !vec4<bool>(func_2(all(arg_1.a.zwx), u_input.b.x).a.x, !all(var_1), var_0.x, !func_3(arg_0.b, Struct_1(vec4<bool>(var_0.x, arg_0.a.x, false, var_0.x), 2147483647i, arg_1.d, 499f), vec4<u32>(1u, u_input.b.x, 50529u, 0u)));
}

fn func_1(arg_0: u32) -> Struct_1 {
    global0 = array<Struct_1, 4>();
    var var_0 = arg_0;
    let var_1 = Struct_1(select(!func_4(func_2(false, arg_0), global0[_wgslsmith_index_u32(1u, 4u)], vec3<f32>(-1090f, -417f, -1000f)), vec4<bool>(true, true, true, true), vec4<bool>(true != (u_input.b.x >= arg_0), false, true, all(vec2<bool>(false, true)))), u_input.a, -209f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(1936f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-155f)), 1000f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(991f - -110f) * -310f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(-942f)), -799f)))));
    var_0 = ~(~(~(~_wgslsmith_mult_u32(u_input.b.x, arg_0))));
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.d * _wgslsmith_f_op_f32(var_1.d - var_1.c)) + var_1.d) + var_1.c), -144f);
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0[_wgslsmith_index_u32(((u_input.b.x ^ u_input.b.x) >> (~(~0u | u_input.b.x) % 32u)) | ~4294967295u, 4u)];
    var var_1 = global0[_wgslsmith_index_u32(16665u, 4u)];
    var var_2 = func_1(~firstLeadingBit(abs(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, 1u), u_input.b.xz))));
    let var_3 = countOneBits(_wgslsmith_div_vec4_u32(reverseBits(~_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 0u, 35070u, u_input.b.x), vec4<u32>(49359u, u_input.b.x, 33092u, 24574u))), vec4<u32>(abs(1u), max(4294967295u, u_input.b.x), 4294967295u, ~(u_input.b.x >> (u_input.b.x % 32u)))));
    var var_4 = _wgslsmith_mod_vec3_i32(_wgslsmith_add_vec3_i32(_wgslsmith_sub_vec3_i32(-(vec3<i32>(var_2.b, 0i, var_2.b) << (u_input.b % vec3<u32>(32u))), vec3<i32>(0i, var_2.b, -2147483647i) & vec3<i32>(-1i, -2147483647i, var_2.b)), vec3<i32>(_wgslsmith_add_i32(-6651i, var_0.b), func_2(var_0.a.x || var_1.a.x, firstLeadingBit(0u)).b, 0i)), ~vec3<i32>(var_1.b & var_2.b, u_input.a, u_input.a) ^ vec3<i32>(countOneBits(abs(-49879i)), 1i, ~_wgslsmith_dot_vec4_i32(vec4<i32>(var_2.b, -21509i, 2147483647i, 18949i), vec4<i32>(-51566i, var_0.b, 1i, -46285i))));
    var var_5 = var_4.xy;
    var var_6 = global0[_wgslsmith_index_u32(u_input.b.x, 4u)];
    var_5 = _wgslsmith_clamp_vec2_i32(vec2<i32>(func_1(62140u).b, var_4.x) | -_wgslsmith_clamp_vec2_i32(var_4.xx, vec2<i32>(24602i, -4071i) ^ var_4.xz, var_4.zx & var_4.xx), var_4.xz, _wgslsmith_clamp_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(~23005i, var_5.x >> (0u % 32u)), min(vec2<i32>(1i, -47909i), vec2<i32>(var_2.b, var_1.b))), var_4.xz, countOneBits(vec2<i32>(1i, var_5.x))));
    var var_7 = Struct_1(func_2(51007i < ~var_1.b, u_input.b.x).a, var_6.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_0.c)))), _wgslsmith_f_op_f32(sign(var_1.d)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-2171f, -842f, 1671f), vec3<f32>(var_6.d, var_2.c, var_1.c), var_2.a.x)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(1150f, var_0.c, 369f) + vec3<f32>(var_1.c, var_6.c, 286f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1587f, -1014f, var_2.d)) * _wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_1.d, var_1.d, var_6.c), vec3<f32>(var_1.c, var_6.c, var_0.c))))))), ~u_input.b.x);
}


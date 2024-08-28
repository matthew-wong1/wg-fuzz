struct Struct_1 {
    a: f32,
    b: f32,
    c: vec2<f32>,
    d: f32,
    e: i32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec2<i32>,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: vec3<u32>,
    d: u32,
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

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_3, arg_2: vec2<f32>) -> f32 {
    let var_0 = arg_1.c.a.x;
    let var_1 = -177f;
    let var_2 = 1i;
    let var_3 = arg_1;
    var var_4 = ~vec3<u32>(firstLeadingBit(~(~63927u)), 48785u, 1u);
    return _wgslsmith_f_op_f32(-arg_2.x);
}

fn func_2(arg_0: i32, arg_1: i32, arg_2: Struct_1, arg_3: vec2<i32>) -> Struct_2 {
    let var_0 = vec4<i32>(-((u_input.a ^ -2147483647i) & (-17963i | arg_2.e)), -2147483647i, i32(-1i) * -select(arg_3.x, 13081i, false), -arg_1) | -reverseBits(abs(vec4<i32>(44131i, -17739i, arg_0, arg_3.x)));
    let var_1 = _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_2.c.x * arg_2.c.x), -168f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(vec4<i32>(-arg_1, -20167i & arg_3.x, ~(-44041i), u_input.a), Struct_3(arg_2.d, Struct_2(vec3<bool>(false, false, true), arg_3), Struct_2(vec3<bool>(false, true, true), arg_3)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(arg_2.c, vec2<f32>(arg_2.c.x, -1000f))))) + _wgslsmith_div_f32(arg_2.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -363f)))));
    let var_2 = ((_wgslsmith_add_i32(firstLeadingBit(17755i), 2067i) << (countOneBits(19312u) % 32u)) ^ max(_wgslsmith_mod_i32(1i, arg_2.e ^ -12157i), -30264i)) << (_wgslsmith_add_u32(firstTrailingBit(_wgslsmith_div_u32(~64455u, ~44416u)), max(~4294967295u, _wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, 0u, 0u, 54438u), _wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 8523u, 0u, 48017u), vec4<u32>(1u, 17857u, 63964u, 44737u), vec4<u32>(74556u, 65748u, 1u, 1u))))) % 32u);
    var var_3 = select(_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_mod_u32(36105u, 4294967295u), 1u, 4294967295u, 1u), ~abs(vec4<u32>(4294967295u, 4294967295u, 19169u, 4294967295u))) > _wgslsmith_add_u32(1u & firstTrailingBit(4294967295u), 1u), false, any(select(vec3<bool>(true, true, var_1 < var_1), vec3<bool>(true, true, true), !select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(false, false, true)))));
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.d + arg_2.a));
    return Struct_2(vec3<bool>(!all(vec3<bool>(true, false, false)), (1i | -var_2) <= -_wgslsmith_dot_vec3_i32(var_0.wxx, var_0.yyx), true), arg_3);
}

fn func_4(arg_0: Struct_3, arg_1: Struct_2) -> Struct_2 {
    let var_0 = 1i;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec4<i32>(_wgslsmith_mod_i32(abs(var_0), arg_0.c.b.x), var_0, firstLeadingBit(1i | arg_0.c.b.x), arg_1.b.x), arg_0, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-310f, arg_0.a)))));
    return arg_0.b;
}

fn func_1() -> Struct_4 {
    var var_0 = Struct_3(-520f, Struct_2(vec3<bool>(!any(vec4<bool>(true, true, true, true)), true, true), max(-vec2<i32>(-11396i, -39201i), _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(-6133i, u_input.a))) & (firstTrailingBit(vec2<i32>(u_input.a, -1i)) | -vec2<i32>(u_input.a, -18708i))), func_4(Struct_3(1f, Struct_2(vec3<bool>(true, false, false), vec2<i32>(-16601i, -14341i)), Struct_2(select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), false), vec2<i32>(-2147483647i, 4149i))), func_2(~1i, firstTrailingBit(-1i), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(abs(1561f)), _wgslsmith_div_vec2_f32(vec2<f32>(1000f, 716f), vec2<f32>(-1000f, 739f)), _wgslsmith_f_op_f32(f32(-1f) * -651f), ~u_input.a), min(-vec2<i32>(u_input.a, -2147483647i), max(vec2<i32>(u_input.a, -46349i), vec2<i32>(57619i, 0i))))));
    var_0 = Struct_3(var_0.a, Struct_2(var_0.b.a, min(reverseBits(var_0.c.b) & vec2<i32>(u_input.a, u_input.a), firstLeadingBit(var_0.c.b))), Struct_2(vec3<bool>(!all(var_0.c.a.zz), var_0.b.a.x | true, true), firstTrailingBit(var_0.c.b)));
    var var_1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_3(-(~select(vec4<i32>(u_input.a, var_0.c.b.x, u_input.a, var_0.c.b.x), vec4<i32>(1i, -2147483647i, 1i, 1i), var_0.c.a.x)), Struct_3(360f, func_4(Struct_3(-795f, Struct_2(var_0.c.a, var_0.c.b), Struct_2(vec3<bool>(false, var_0.c.a.x, var_0.c.a.x), vec2<i32>(var_0.b.b.x, u_input.a))), Struct_2(var_0.c.a, var_0.c.b)), Struct_2(vec3<bool>(true, true, true), vec2<i32>(1i, 0i))), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1f, _wgslsmith_f_op_f32(sign(143f))))))), _wgslsmith_f_op_f32(-var_0.a), func_2(~max(u_input.a, reverseBits(7150i)), -57502i, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1263f - -960f) * _wgslsmith_f_op_f32(step(var_0.a, 131f))), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(1196f, var_0.a), var_0.a)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_0.a, -528f)))), var_0.a, u_input.a), var_0.b.b).a.x));
    let var_2 = Struct_2(var_0.c.a, (-var_0.b.b << (~vec2<u32>(88604u, 1u) % vec2<u32>(32u))) | _wgslsmith_mult_vec2_i32(-vec2<i32>(2147483647i, var_0.b.b.x) & vec2<i32>(u_input.a, var_0.c.b.x), ~(vec2<i32>(var_0.b.b.x, -45433i) & vec2<i32>(u_input.a, 2147483647i))));
    var_1 = 561f;
    return Struct_4(Struct_3(_wgslsmith_f_op_f32(var_0.a + _wgslsmith_f_op_f32(sign(var_0.a))), Struct_2(vec3<bool>(false, all(vec4<bool>(true, var_2.a.x, true, true)), true), vec2<i32>(var_2.b.x & -18164i, -16453i)), var_2));
}

fn func_5(arg_0: bool, arg_1: vec4<f32>, arg_2: Struct_4) -> u32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-arg_1.xz);
    return ~(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(4294967295u, 4294967295u, 1u)) | _wgslsmith_mult_u32(firstTrailingBit(1u), ~max(0u, 1u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = abs(vec4<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(-vec4<i32>(u_input.a, u_input.a, u_input.a, -2147483647i), ~vec4<i32>(18513i, u_input.a, u_input.a, u_input.a)), vec4<i32>(u_input.a << (25226u % 32u), _wgslsmith_mult_i32(u_input.a, u_input.a), -1i, _wgslsmith_sub_i32(u_input.a, u_input.a))), 2147483647i, u_input.a, u_input.a));
    var_0 = vec4<i32>(_wgslsmith_dot_vec2_i32(select(_wgslsmith_div_vec2_i32(_wgslsmith_add_vec2_i32(var_0.xx, vec2<i32>(var_0.x, -2147483647i)), vec2<i32>(u_input.a, -8604i) << (vec2<u32>(42849u, 1u) % vec2<u32>(32u))), var_0.zw, vec2<bool>(true, true)), var_0.wz >> (vec2<u32>(9556u, ~91968u) % vec2<u32>(32u))), _wgslsmith_dot_vec4_i32((select(vec4<i32>(-2147483647i, -12288i, u_input.a, 32801i), vec4<i32>(2935i, -46956i, 30664i, -24390i), vec4<bool>(false, true, false, true)) | vec4<i32>(-1i, u_input.a, u_input.a, 1i)) << (vec4<u32>(1u, 1u, 1u, 1u) % vec4<u32>(32u)), abs(~(-vec4<i32>(u_input.a, u_input.a, -15535i, u_input.a)))), -59468i, u_input.a);
    var var_1 = vec2<u32>(func_5(reverseBits(countOneBits(var_0.x)) < var_0.x, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2117f * -682f)), -665f, _wgslsmith_f_op_f32(149f + 189f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-365f)))), func_1()), 58363u);
    let var_2 = any(!(!vec3<bool>(true, true, var_1.x >= var_1.x)));
    let var_3 = ~1u;
    let x = u_input.a;
    s_output = StorageBuffer(~countOneBits(vec3<u32>(~69622u, ~38664u, firstLeadingBit(var_1.x))), -491f, _wgslsmith_div_vec3_u32(reverseBits(~vec3<u32>(var_1.x, var_3, var_3) >> (vec3<u32>(16368u, 4294967295u, 8234u) % vec3<u32>(32u))), _wgslsmith_clamp_vec3_u32(vec3<u32>(var_3, _wgslsmith_mod_u32(1u, var_1.x), var_3), _wgslsmith_mult_vec3_u32(vec3<u32>(var_1.x, 3416u, 4294967295u), vec3<u32>(16150u, var_3, 6265u)), ~(~vec3<u32>(63784u, var_3, var_3)))), 1u);
}


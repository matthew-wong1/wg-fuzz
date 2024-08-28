struct Struct_1 {
    a: u32,
    b: vec4<u32>,
    c: vec3<u32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
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

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: vec4<f32>) -> bool {
    var var_0 = u_input.a.xx;
    var_0 = _wgslsmith_clamp_vec2_i32((_wgslsmith_sub_vec2_i32(u_input.a.xx, u_input.a.zy) & ~max(u_input.a.zx, vec2<i32>(0i, var_0.x))) | vec2<i32>(var_0.x, var_0.x), vec2<i32>(var_0.x, firstTrailingBit(var_0.x)), min(u_input.a.xy, u_input.a.zx) & abs(firstLeadingBit(_wgslsmith_clamp_vec2_i32(u_input.a.yy, vec2<i32>(7289i, -33067i), vec2<i32>(var_0.x, var_0.x)))));
    var_0 = _wgslsmith_mult_vec2_i32(u_input.a.zx, u_input.a.xz);
    var var_1 = select(countOneBits(0u), ~max(~65279u, _wgslsmith_sub_u32(abs(17910u), countOneBits(0u))), false);
    let var_2 = vec4<bool>(true, !any(select(vec2<bool>(true, true), vec2<bool>(true, false), true)), !(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(2416f, -1951f), arg_0.x)) >= arg_0.x), !((-1i <= u_input.a.x) | true) & (select(select(true, false, true), true, true) || ((arg_0.x >= arg_0.x) | true)));
    return all(vec4<bool>(!(var_2.x != (u_input.a.x >= var_0.x)), true, _wgslsmith_f_op_f32(max(-615f, _wgslsmith_f_op_f32(trunc(arg_0.x)))) >= _wgslsmith_f_op_f32(floor(509f)), var_2.x));
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_2(select(vec3<bool>(any(vec4<bool>(false, false, false, false)) && any(vec4<bool>(false, true, false, false)), func_3(vec4<f32>(536f, 1000f, -2007f, 591f)) && true, true), vec3<bool>(!all(vec4<bool>(false, true, true, false)), !any(vec4<bool>(true, false, true, false)), true), !all(vec2<bool>(false, true)) && any(vec4<bool>(true, false, false, false))), Struct_1(4294967295u, ~vec4<u32>(1u, 1u, 1u, 1u), select(vec3<u32>(~17951u, 1u, ~1u), vec3<u32>(1u, ~4294967295u, ~0u), vec3<bool>(true, true, true))));
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1000f, 605f, -449f, 215f))) - vec4<f32>(_wgslsmith_f_op_f32(1000f * 1000f), -670f, -694f, _wgslsmith_f_op_f32(-897f + -748f))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-924f, -1703f, 833f, -673f))))))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(927f, _wgslsmith_f_op_f32(652f - 916f), _wgslsmith_f_op_f32(268f + -185f), -1401f) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-581f, 361f, 266f, -720f) - vec4<f32>(-923f, 197f, -214f, -236f)) + vec4<f32>(1164f, 413f, -1271f, 1846f)))));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1037f * 1000f), var_1.x))));
    var var_3 = vec3<bool>(!(u_input.a.x < -26286i), func_3(var_1), _wgslsmith_dot_vec2_i32(-_wgslsmith_add_vec2_i32(vec2<i32>(u_input.a.x, -1i), vec2<i32>(1709i, 1i)), _wgslsmith_mod_vec2_i32(u_input.a.xz, vec2<i32>(u_input.a.x, u_input.a.x))) >= 34263i);
    var_3 = !var_0.a;
    return Struct_1(~1u, vec4<u32>(81957u, ~var_0.b.b.x, _wgslsmith_mod_u32(var_0.b.b.x | var_0.b.b.x, _wgslsmith_clamp_u32(var_0.b.a, 1u, var_0.b.a)) << (~58328u % 32u), 0u), abs(abs(_wgslsmith_add_vec3_u32(var_0.b.c, countOneBits(var_0.b.b.yyz)))));
}

fn func_1(arg_0: bool, arg_1: u32, arg_2: Struct_2) -> Struct_1 {
    let var_0 = countOneBits(arg_2.b.b << (~arg_2.b.b % vec4<u32>(32u)));
    var var_1 = ~(~vec2<u32>(arg_1 & 1u, arg_1));
    var var_2 = _wgslsmith_clamp_vec2_i32(u_input.a.xz, -reverseBits(u_input.a.zz), u_input.a.xx);
    var var_3 = func_2();
    let var_4 = arg_2;
    return var_4.b;
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec4<u32>) -> bool {
    var var_0 = max(vec4<i32>(-1i, -2147483647i, _wgslsmith_clamp_i32(_wgslsmith_mod_i32(u_input.a.x | u_input.a.x, u_input.a.x ^ 32361i), ~firstLeadingBit(u_input.a.x), abs(~u_input.a.x)), 55073i), ~_wgslsmith_add_vec4_i32(~abs(vec4<i32>(-1i, u_input.a.x, u_input.a.x, u_input.a.x)), vec4<i32>(u_input.a.x, -35885i ^ u_input.a.x, u_input.a.x, -15474i)));
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(vec2<f32>(189f, 847f), vec2<f32>(-1147f, 835f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(867f, -184f))))))));
    var_0 = vec4<i32>(1i, u_input.a.x, abs(-select(min(-1i, 2147483647i), u_input.a.x, all(vec4<bool>(false, true, true, false)))), -u_input.a.x);
    let var_2 = abs(-vec4<i32>(-select(var_0.x, u_input.a.x, false), firstLeadingBit(select(var_0.x, 1802i, true)), 1i, (u_input.a.x << (arg_1.b.x % 32u)) >> (arg_0.x % 32u)));
    var_0 = -(~(_wgslsmith_div_vec4_i32(-vec4<i32>(-63102i, var_0.x, var_2.x, var_0.x), var_2) | var_2));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a.xy;
    let var_1 = !(!select(select(vec2<bool>(false, false), vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, false), true)), vec2<bool>(true, true), func_4(reverseBits(vec2<u32>(4294967295u, 4294967295u)), func_1(false, 1u, Struct_2(vec3<bool>(false, false, false), Struct_1(4294967295u, vec4<u32>(1u, 3528u, 0u, 0u), vec3<u32>(4294967295u, 4294967295u, 1u)))), Struct_1(0u, vec4<u32>(1u, 59602u, 44739u, 4294967295u), vec3<u32>(0u, 4586u, 4294967295u)), vec4<u32>(0u, 125110u, 1u, 29196u))));
    var var_2 = _wgslsmith_clamp_vec3_i32(u_input.a ^ _wgslsmith_add_vec3_i32(_wgslsmith_div_vec3_i32(_wgslsmith_sub_vec3_i32(u_input.a, vec3<i32>(-24824i, var_0.x, -26439i)), select(u_input.a, u_input.a, true)), u_input.a), u_input.a, firstTrailingBit(~vec3<i32>(-12853i, -u_input.a.x, 1i)));
    var_2 = (~((vec3<i32>(1i, var_2.x, -22198i) << (vec3<u32>(31788u, 1u, 78631u) % vec3<u32>(32u))) ^ u_input.a) | -vec3<i32>(-2147483647i << (0u % 32u), _wgslsmith_clamp_i32(var_0.x, -1i, -5183i), u_input.a.x)) | u_input.a;
    var_2 = abs(u_input.a);
    let var_3 = _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -251f), _wgslsmith_f_op_f32(ceil(1405f))))), -735f)));
    var_2 = _wgslsmith_mult_vec3_i32(u_input.a, vec3<i32>(var_0.x, abs(u_input.a.x), _wgslsmith_mult_i32(var_0.x, (u_input.a.x ^ var_2.x) ^ _wgslsmith_div_i32(0i, -904i))));
    let var_4 = ~vec4<u32>(select(0u, 0u, var_1.x), 0u, _wgslsmith_dot_vec2_u32(countOneBits(reverseBits(vec2<u32>(18565u, 4294967295u))), vec2<u32>(23649u, _wgslsmith_div_u32(4294967295u, 74501u))), _wgslsmith_dot_vec4_u32(~vec4<u32>(1u, 1u, 1u, 1u), ~max(vec4<u32>(8445u, 891u, 8947u, 78807u), vec4<u32>(1u, 0u, 61412u, 8515u))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x, vec4<u32>(62850u, ~(~29176u) | ~var_4.x, _wgslsmith_dot_vec4_u32(var_4, countOneBits(var_4)), _wgslsmith_clamp_u32(firstTrailingBit(func_2().b.x), _wgslsmith_dot_vec3_u32(max(var_4.zwx, vec3<u32>(4294967295u, 12249u, 4294967295u)), var_4.xxx), 8983u)), u_input.a.x);
}


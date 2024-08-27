struct Struct_1 {
    a: f32,
    b: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_1(arg_0: bool, arg_1: Struct_2) -> Struct_2 {
    var var_0 = 22289u;
    var var_1 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(select(arg_1.a.b, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-676f, 712f, 1018f, 332f), vec4<f32>(637f, 1604f, -408f, arg_1.a.b.x), arg_0))) + vec4<f32>(589f, arg_1.a.a, _wgslsmith_f_op_f32(-arg_1.a.b.x), arg_1.a.b.x)), !(!vec4<bool>(false, false, arg_0, arg_0))))));
    var var_2 = vec4<i32>(~(~(-1i)), min(~(u_input.a | -765i), u_input.c.x), _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(max(19335i, -9819i), _wgslsmith_dot_vec3_i32(vec3<i32>(0i, u_input.a, -36466i), vec3<i32>(-1i, -24643i, 1i)), abs(-9621i)), vec3<i32>(u_input.c.x, ~u_input.b, u_input.a & 2147483647i)), ~(vec3<i32>(u_input.b, u_input.b, -2147483647i) & vec3<i32>(u_input.b, u_input.b, -2147483647i))), u_input.b);
    var var_3 = vec2<bool>(!arg_0, select(arg_0, all(select(vec2<bool>(arg_0, false), vec2<bool>(true, true), vec2<bool>(arg_0, false))) & arg_0, true));
    var_2 = vec4<i32>(48406i, var_2.x, ~9045i, abs(var_2.x));
    return arg_1;
}

fn func_2(arg_0: u32, arg_1: Struct_2) -> Struct_2 {
    let var_0 = ~_wgslsmith_mod_vec2_i32(vec2<i32>(-u_input.b, min(11182i, u_input.b)) ^ u_input.c.zx, u_input.c.zx);
    let var_1 = firstTrailingBit(var_0.x << (~7882u % 32u));
    var var_2 = vec3<i32>(var_0.x | _wgslsmith_div_i32(~reverseBits(var_0.x), -1i), i32(-1i) * -482i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, ~(-14230i), -1i), -(~u_input.c)));
    var_2 = u_input.c;
    var var_3 = _wgslsmith_mod_u32(abs(~arg_0), ~abs(~arg_0)) >> (~(~5972u) % 32u);
    return func_1(select((~u_input.c.x ^ firstTrailingBit(10278i)) < -firstTrailingBit(-1370i), !(true | (arg_0 >= arg_0)), false), func_1(select(true, false, any(vec2<bool>(false, false))), Struct_2(Struct_1(243f, arg_1.a.b))));
}

fn func_3(arg_0: i32, arg_1: Struct_2, arg_2: f32) -> Struct_2 {
    var var_0 = true;
    var var_1 = !select(vec2<bool>(!any(vec3<bool>(false, true, false)), all(vec4<bool>(false, false, true, true)) | true), vec2<bool>(-arg_0 == (i32(-1i) * -1i), all(vec3<bool>(true, true, true))), select(vec2<bool>(false, true), !select(vec2<bool>(false, false), vec2<bool>(false, true), false), vec2<bool>(true, true)));
    var_1 = vec2<bool>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1000f))), -1233f)) == _wgslsmith_f_op_f32(trunc(arg_1.a.a)), !var_1.x);
    var var_2 = vec2<u32>(24967u, firstTrailingBit(54246u));
    var var_3 = max(vec4<i32>(_wgslsmith_dot_vec2_i32(reverseBits(u_input.c.yz), vec2<i32>(arg_0, arg_0)), arg_0, 1i, ~1i) ^ _wgslsmith_mod_vec4_i32(vec4<i32>(-2147483647i, _wgslsmith_add_i32(11292i, 0i), 1i, arg_0 & arg_0), _wgslsmith_div_vec4_i32(firstTrailingBit(vec4<i32>(-69491i, arg_0, u_input.b, -48971i)), vec4<i32>(35478i, -937i, -2147483647i, arg_0) | vec4<i32>(u_input.c.x, u_input.c.x, 2147483647i, u_input.b))), vec4<i32>(arg_0, 1i, ~7377i, -abs(0i)) & select(_wgslsmith_add_vec4_i32(~vec4<i32>(-6069i, u_input.b, arg_0, arg_0), abs(vec4<i32>(arg_0, u_input.c.x, arg_0, u_input.a))), firstTrailingBit(select(vec4<i32>(arg_0, 0i, 2147483647i, 0i), vec4<i32>(-10974i, arg_0, 0i, u_input.b), vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x))), !select(vec4<bool>(false, var_1.x, var_1.x, false), vec4<bool>(false, false, true, var_1.x), vec4<bool>(false, var_1.x, true, var_1.x))));
    return func_1(4294967295u >= (1u & (43290u & var_2.x)), func_1(var_1.x, arg_1));
}

fn func_4(arg_0: bool, arg_1: Struct_2, arg_2: vec3<bool>) -> Struct_1 {
    var var_0 = func_2(_wgslsmith_mod_u32(abs(min(1u, ~1u)), 1u), Struct_2(func_2(_wgslsmith_clamp_u32(abs(0u), 54915u, ~59138u), Struct_2(arg_1.a)).a)).a.b.x;
    var var_1 = select(!vec4<bool>(!any(vec4<bool>(true, arg_2.x, false, arg_2.x)), false, true, arg_0), !vec4<bool>(true, all(!vec4<bool>(false, arg_2.x, true, arg_0)), false, true), (true & select(any(arg_2), arg_1.a.b.x <= arg_1.a.a, true)) | true);
    var_0 = arg_1.a.b.x;
    var var_2 = _wgslsmith_dot_vec4_u32(countOneBits(~(~(~vec4<u32>(36449u, 90668u, 0u, 60743u)))), vec4<u32>(1u, 1u, 1u, 1u));
    var_1 = vec4<bool>(all(!(!vec4<bool>(var_1.x, true, true, false))), false, true, arg_2.x);
    return Struct_1(-1000f, arg_1.a.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<u32>(0u, ~1u, 1u, _wgslsmith_mult_u32(3169u, 4164u)) << ((vec4<u32>(4294967295u, ~(~61274u), 0u, 39455u) >> (_wgslsmith_sub_vec4_u32(vec4<u32>(~24882u, _wgslsmith_dot_vec3_u32(vec3<u32>(12915u, 0u, 52711u), vec3<u32>(30937u, 0u, 0u)), 4294967295u, 27670u), ~select(vec4<u32>(4294967295u, 4294967295u, 90220u, 1u), vec4<u32>(1u, 2202u, 1u, 988u), true)) % vec4<u32>(32u))) % vec4<u32>(32u));
    var var_1 = -_wgslsmith_sub_vec4_i32(vec4<i32>(1i, 19355i, u_input.c.x, ~_wgslsmith_dot_vec2_i32(u_input.c.xz, vec2<i32>(u_input.b, u_input.b))), _wgslsmith_mult_vec4_i32(-(~vec4<i32>(u_input.b, -7034i, 16563i, u_input.a)), -reverseBits(vec4<i32>(u_input.c.x, u_input.a, u_input.c.x, 1i))));
    let var_2 = Struct_2(func_4(false, func_3(-_wgslsmith_div_i32(3218i, u_input.c.x), func_2(1u, func_1(false, Struct_2(Struct_1(-278f, vec4<f32>(352f, 1280f, 698f, 1331f))))), -1496f), vec3<bool>(true, all(select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(false, true, false))), false)));
    let var_3 = ~var_0;
    var_1 = ~(~vec4<i32>((u_input.a | var_1.x) << (var_0.x % 32u), _wgslsmith_sub_i32(-26009i, -var_1.x), min(~u_input.a, ~u_input.b), -2147483647i));
    var var_4 = false;
    let var_5 = var_0.zxw | _wgslsmith_add_vec3_u32(_wgslsmith_add_vec3_u32(var_0.zzx, vec3<u32>(~1u, reverseBits(var_3.x), _wgslsmith_mod_u32(0u, var_3.x))), ~firstTrailingBit(_wgslsmith_clamp_vec3_u32(var_0.zyw, var_3.wyz, var_3.wxy)));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.a.b.xx, vec3<i32>(firstLeadingBit(u_input.a) & -_wgslsmith_clamp_i32(25179i, -2147483647i, var_1.x), -2147483647i, _wgslsmith_dot_vec2_i32(-vec2<i32>(5009i, -36023i), ~var_1.yx) ^ var_1.x));
}


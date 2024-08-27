struct Struct_1 {
    a: u32,
    b: i32,
    c: vec3<u32>,
    d: vec3<bool>,
    e: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec2<u32>,
    d: vec3<u32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: u32,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_2(arg_0: vec2<u32>) -> bool {
    let var_0 = ~_wgslsmith_mult_u32(arg_0.x, ~arg_0.x);
    var var_1 = Struct_2(Struct_1(var_0, -countOneBits(u_input.a.x), vec3<u32>(_wgslsmith_mult_u32(_wgslsmith_mult_u32(var_0, u_input.c.x), reverseBits(4294967295u)), ~1u, 0u), select(vec3<bool>(var_0 < 1u, true, true), vec3<bool>(true, true, true), all(vec4<bool>(true, true, true, true))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))), Struct_1((u_input.d.x & u_input.c.x) << (~(var_0 >> (29943u % 32u)) % 32u), u_input.a.x, ~(~abs(vec3<u32>(arg_0.x, u_input.e.x, 84875u))), vec3<bool>(true, true, true), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), vec4<bool>(true, false, arg_0.x != 34814u, true), vec4<bool>(true, true, true, true))));
    let var_2 = var_1.a;
    return !var_1.b.e.x;
}

fn func_3(arg_0: Struct_2, arg_1: i32) -> bool {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-426f + 716f))))));
    let var_1 = arg_0.a.d.x;
    let var_2 = Struct_2(arg_0.a, Struct_1(_wgslsmith_dot_vec2_u32(u_input.d.xy, ~arg_0.b.c.yy), arg_0.a.b << (reverseBits(0u) % 32u), _wgslsmith_mult_vec3_u32(select(vec3<u32>(8996u, 4294967295u, 0u), vec3<u32>(60916u, 128797u, u_input.d.x), all(vec3<bool>(var_1, false, false))), firstTrailingBit(arg_0.a.c ^ arg_0.a.c)), vec3<bool>(any(arg_0.b.d.zx) | true, false, any(!arg_0.a.e.xwz)), !(!(!arg_0.b.e))));
    let var_3 = !arg_0.a.d.x | all(select(!vec2<bool>(false, var_2.b.d.x), vec2<bool>(arg_1 < 2147483647i, arg_0.a.d.x), !select(var_2.a.e.xw, vec2<bool>(true, arg_0.b.d.x), arg_0.b.e.yx)));
    var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1225f)))))));
    return abs(var_2.b.c.x) <= abs(_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_dot_vec4_u32(u_input.e, u_input.e), 57467u, u_input.e.x), arg_0.a.c));
}

fn func_1(arg_0: vec2<u32>, arg_1: vec4<bool>, arg_2: f32) -> vec2<i32> {
    let var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_2, 153f)) - _wgslsmith_f_op_f32(arg_2 - -302f)))))));
    var var_1 = Struct_1(~_wgslsmith_add_u32(4294967295u, firstTrailingBit(1u)), _wgslsmith_mod_i32(-max(firstLeadingBit(-1464i), _wgslsmith_mult_i32(u_input.a.x, -12578i)), u_input.a.x), vec3<u32>(1u, _wgslsmith_clamp_u32(firstTrailingBit(~u_input.c.x), _wgslsmith_dot_vec3_u32(min(vec3<u32>(26269u, 4294967295u, 4294967295u), vec3<u32>(22963u, 1u, arg_0.x)), ~vec3<u32>(arg_0.x, 1u, arg_0.x)), arg_0.x), _wgslsmith_div_u32(11754u >> (1u % 32u), _wgslsmith_add_u32(1u, _wgslsmith_add_u32(1u, arg_0.x)))), vec3<bool>(select(func_2(vec2<u32>(arg_0.x, 7467u)), any(select(vec4<bool>(false, arg_1.x, arg_1.x, arg_1.x), arg_1, arg_1)), all(vec4<bool>(false, true, true, arg_1.x))), all(!(!arg_1.wx)), false), vec4<bool>(select(true, true, true), true, !any(arg_1.yyy), func_3(Struct_2(Struct_1(arg_0.x, u_input.a.x, vec3<u32>(4294967295u, arg_0.x, 4294967295u), vec3<bool>(true, true, true), arg_1), Struct_1(4294967295u, u_input.a.x, u_input.e.zxz, vec3<bool>(false, arg_1.x, true), vec4<bool>(true, arg_1.x, arg_1.x, arg_1.x))), i32(-1i) * -18667i)));
    let var_2 = Struct_2(Struct_1(~u_input.c.x, 39926i, ~abs(countOneBits(u_input.d)), select(vec3<bool>(arg_1.x & arg_1.x, func_3(Struct_2(Struct_1(0u, var_1.b, vec3<u32>(1658u, 76179u, 4294967295u), var_1.d, vec4<bool>(var_1.d.x, arg_1.x, arg_1.x, arg_1.x)), Struct_1(var_1.c.x, 5557i, u_input.d, vec3<bool>(true, false, false), var_1.e)), 1i), all(vec3<bool>(var_1.d.x, var_1.d.x, true))), vec3<bool>(true, true, true), 2147483647i > (u_input.a.x | u_input.a.x)), vec4<bool>(func_2(vec2<u32>(12421u, var_1.c.x)) & true, any(!vec3<bool>(arg_1.x, false, arg_1.x)), arg_1.x | true, true)), Struct_1(reverseBits(_wgslsmith_clamp_u32(_wgslsmith_sub_u32(16446u, var_1.c.x), _wgslsmith_mult_u32(0u, 82345u), abs(u_input.b))), firstLeadingBit(countOneBits(var_1.b)), _wgslsmith_mult_vec3_u32(select(var_1.c >> (u_input.e.zxz % vec3<u32>(32u)), u_input.d, !arg_1.x), ~vec3<u32>(arg_0.x, var_1.a, 28084u)), vec3<bool>(any(!vec4<bool>(true, false, arg_1.x, arg_1.x)), select(!arg_1.x, false, arg_1.x), var_1.d.x), vec4<bool>(true, _wgslsmith_f_op_f32(max(var_0, arg_2)) > _wgslsmith_f_op_f32(-1073f + var_0), func_3(Struct_2(Struct_1(var_1.c.x, var_1.b, var_1.c, vec3<bool>(var_1.d.x, var_1.d.x, arg_1.x), arg_1), Struct_1(u_input.b, var_1.b, u_input.d, var_1.d, vec4<bool>(var_1.e.x, false, true, true))), ~1i), countOneBits(u_input.a.x) > _wgslsmith_sub_i32(-2147483647i, -1i))));
    return max(vec2<i32>(var_1.b, -(~(-u_input.a.x))), firstLeadingBit(vec2<i32>(_wgslsmith_dot_vec2_i32(~u_input.a, -u_input.a), var_1.b)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~vec4<u32>(u_input.d.x | _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, u_input.b, u_input.b), vec3<u32>(0u, 9616u, u_input.b)), select(u_input.d.x, 3251u, true)), ~select(23641u, ~u_input.d.x, true), ~u_input.e.x | 52268u, u_input.e.x);
    var var_1 = -(_wgslsmith_mod_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(1i, -58473i), func_1(u_input.c, vec4<bool>(true, true, false, true), -452f)), firstTrailingBit(u_input.a) | u_input.a) | _wgslsmith_mod_vec2_i32(u_input.a, _wgslsmith_clamp_vec2_i32(firstLeadingBit(vec2<i32>(2147483647i, 1i)), countOneBits(vec2<i32>(u_input.a.x, 0i)), u_input.a)));
    var_1 = -(~vec2<i32>(countOneBits(var_1.x), var_1.x));
    let var_2 = Struct_1(u_input.e.x, -2147483647i, ~_wgslsmith_clamp_vec3_u32(select(vec3<u32>(106137u, 24661u, var_0.x), _wgslsmith_mod_vec3_u32(vec3<u32>(var_0.x, 6068u, 16031u), var_0.yxw), select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(true, true, true))), var_0.zzw, ~(u_input.d & vec3<u32>(var_0.x, var_0.x, 1u))), !select(vec3<bool>(true, true, true), !select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(true, false, true)), vec3<bool>(33995i != u_input.a.x, true, true)), select(!select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, true), select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, true))), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), all(vec3<bool>(false, false, true))), select(select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true)), vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true)), true), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-3241f - 718f))) < -812f));
    var_1 = u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer((_wgslsmith_add_i32(~(-16630i), _wgslsmith_clamp_i32(var_1.x, 0i, var_1.x)) >> ((~4294967295u | _wgslsmith_div_u32(42316u, var_2.c.x)) % 32u)) >> (max(1u, min(4294967295u, ~var_0.x)) % 32u), 1960f, u_input.c.x, i32(-1i) * -43364i, u_input.e.x);
}


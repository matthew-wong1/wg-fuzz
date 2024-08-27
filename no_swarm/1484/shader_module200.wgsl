struct Struct_1 {
    a: i32,
    b: vec2<f32>,
}

struct Struct_2 {
    a: f32,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_2(arg_0: Struct_2) -> vec2<bool> {
    var var_0 = _wgslsmith_mod_vec2_i32(arg_0.b, _wgslsmith_mult_vec2_i32(arg_0.b, -arg_0.b));
    var var_1 = select(!select(select(select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(true, true, false)), vec3<bool>(true, true, true), any(vec4<bool>(true, false, true, true))), !select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), false), vec3<bool>(true, any(vec4<bool>(true, true, true, false)), true)), vec3<bool>(any(vec4<bool>(true, true, true, true)), true, true), any(vec2<bool>(!any(vec3<bool>(true, true, true)), true)));
    var var_2 = !var_1.x;
    var var_3 = _wgslsmith_mod_i32(firstLeadingBit(-(~0i)), ~_wgslsmith_mult_i32(var_0.x, arg_0.b.x));
    let var_4 = _wgslsmith_f_op_f32(-arg_0.a);
    return var_1.xy;
}

fn func_3() -> vec4<bool> {
    var var_0 = vec4<u32>(u_input.a.x, 39651u, 122631u, ~_wgslsmith_dot_vec2_u32(~(~vec2<u32>(u_input.a.x, 0u)), _wgslsmith_mult_vec2_u32(u_input.a.wx | u_input.a.xz, vec2<u32>(1u, 4294967295u))));
    var var_1 = Struct_2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-591f - -521f)), 932f)), min(reverseBits(select(vec2<i32>(15115i, 0i), vec2<i32>(0i, 36682i), vec2<bool>(true, true))), min(vec2<i32>(1i, 1i), select(vec2<i32>(1i, 1i), vec2<i32>(0i, -34556i), true))));
    var var_2 = _wgslsmith_f_op_f32(var_1.a + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a - 1f)), -579f, false)));
    let var_3 = ~1u ^ _wgslsmith_mod_u32(3464u & firstTrailingBit(firstLeadingBit(u_input.a.x)), reverseBits(_wgslsmith_dot_vec2_u32(vec2<u32>(19692u, 97034u), _wgslsmith_mod_vec2_u32(var_0.zy, u_input.a.zw))));
    var_1 = Struct_2(204f, _wgslsmith_sub_vec2_i32(_wgslsmith_clamp_vec2_i32(-(~vec2<i32>(7546i, 2147483647i)), vec2<i32>(var_1.b.x, 1i), vec2<i32>(1i, firstLeadingBit(53023i))), -(~_wgslsmith_div_vec2_i32(var_1.b, var_1.b))));
    return !vec4<bool>(true, !(!all(vec2<bool>(true, false))), !(!all(vec2<bool>(true, false))), true);
}

fn func_1() -> Struct_2 {
    var var_0 = select(vec4<bool>(true, true && all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), false)), (any(vec4<bool>(true, true, true, true)) && true) && true, true), vec4<bool>(false, !any(func_2(Struct_2(-900f, vec2<i32>(0i, 2147483647i)))), true || !any(vec3<bool>(true, true, true)), func_2(Struct_2(_wgslsmith_div_f32(-1000f, 473f), vec2<i32>(-35991i, -26857i))).x), select(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false)), func_3(), !func_3()));
    let var_1 = firstLeadingBit(firstTrailingBit((~vec2<u32>(u_input.a.x, 70284u) & (vec2<u32>(u_input.a.x, 22014u) >> (u_input.a.xz % vec2<u32>(32u)))) & abs(select(vec2<u32>(0u, u_input.a.x), vec2<u32>(u_input.a.x, 4294967295u), var_0.x))));
    let var_2 = !select(func_3(), select(select(select(vec4<bool>(var_0.x, var_0.x, false, false), vec4<bool>(var_0.x, false, true, true), var_0.x), vec4<bool>(false, true, false, var_0.x), var_0.x), !func_3(), !vec4<bool>(var_0.x, false, true, true)), vec4<bool>(var_0.x, true, true, true));
    var_0 = vec4<bool>(false, any(vec3<bool>(var_0.x, var_2.x, any(var_2.yzz))), var_0.x, func_2(Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1148f + -1000f) - _wgslsmith_f_op_f32(min(-744f, -549f))), vec2<i32>(1i, 1i))).x);
    var_0 = !(!(!(!vec4<bool>(var_2.x, var_0.x, var_2.x, var_0.x))));
    return Struct_2(_wgslsmith_f_op_f32(-422f * 1f), ~(abs(_wgslsmith_mod_vec2_i32(vec2<i32>(18987i, 2147483647i), vec2<i32>(2147483647i, 49514i))) | select(firstLeadingBit(vec2<i32>(53986i, 1i)), firstLeadingBit(vec2<i32>(1i, 0i)), true)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let var_1 = !select(vec2<bool>(!all(vec2<bool>(true, false)), all(vec4<bool>(false, true, true, false))), vec2<bool>(false, true), true);
    var_0 = Struct_2(func_1().a, func_1().b);
    var var_2 = true;
    var var_3 = 2147483647i;
    var var_4 = -1i;
    let var_5 = ~u_input.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(-var_0.b, 2975u);
}


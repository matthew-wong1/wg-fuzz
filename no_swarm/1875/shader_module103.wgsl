struct Struct_1 {
    a: vec4<f32>,
    b: i32,
    c: vec4<i32>,
    d: vec2<i32>,
    e: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: i32,
    d: vec4<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
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

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: Struct_1) -> i32 {
    var var_0 = ~(~u_input.d.zy);
    let var_1 = !select(vec4<bool>(true, true, false, all(vec2<bool>(false, true)) | true), !vec4<bool>(arg_0.e <= 4294967295u, all(vec3<bool>(true, false, true)), true, true), !vec4<bool>(true, arg_0.a.x < -366f, any(vec2<bool>(false, false)), select(false, true, true)));
    let var_2 = -36348i;
    var var_3 = abs(u_input.a.zx);
    let var_4 = arg_0;
    return (_wgslsmith_dot_vec2_i32(arg_0.c.ww, -arg_0.c.yx) | 0i) | (i32(-1i) * -5261i);
}

fn func_2(arg_0: vec4<i32>, arg_1: vec3<i32>, arg_2: vec2<bool>) -> Struct_1 {
    let var_0 = _wgslsmith_div_i32((min(-11726i, arg_0.x) ^ -arg_0.x) | firstLeadingBit(func_3(Struct_1(vec4<f32>(-793f, -1114f, -1546f, -416f), arg_0.x, arg_0, vec2<i32>(43820i, u_input.c), 26359u))), _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_1.x, u_input.a.x, -2147483647i, arg_1.x), arg_0), u_input.e)) | u_input.a.x;
    var var_1 = vec3<i32>(reverseBits(~select(arg_0.x, u_input.e, all(arg_2))), abs(-2147483647i), _wgslsmith_div_i32(-1i, ~var_0));
    let var_2 = Struct_1(vec4<f32>(1f, 1f, 1f, 1f), ~abs(arg_0.x), ~(~(-arg_0)), select(vec2<i32>(u_input.c, -23872i), select(_wgslsmith_clamp_vec2_i32(u_input.a.zz, var_1.yx, u_input.a.zx) & vec2<i32>(arg_0.x, var_1.x), _wgslsmith_mod_vec2_i32(vec2<i32>(-2147483647i, 2147483647i), var_1.xx), select(vec2<bool>(arg_2.x, false), select(vec2<bool>(arg_2.x, true), vec2<bool>(true, true), false), true)), vec2<bool>(arg_2.x, !arg_2.x)), _wgslsmith_dot_vec2_u32(~(~vec2<u32>(u_input.d.x, u_input.d.x)) & countOneBits(~u_input.b), u_input.b));
    let var_3 = _wgslsmith_dot_vec3_u32(~vec3<u32>(38757u, u_input.d.x, 120750u), abs(vec3<u32>(firstTrailingBit(_wgslsmith_sub_u32(var_2.e, 0u)), firstLeadingBit(var_2.e), var_2.e)));
    let var_4 = select(false, true, true);
    return var_2;
}

fn func_1(arg_0: vec4<f32>) -> vec3<u32> {
    var var_0 = func_2(abs(_wgslsmith_clamp_vec4_i32(~(-vec4<i32>(13622i, u_input.e, u_input.a.x, u_input.a.x)), min(~vec4<i32>(u_input.e, u_input.c, u_input.e, u_input.a.x), vec4<i32>(-6487i, 1i, u_input.c, u_input.c) | vec4<i32>(u_input.a.x, u_input.a.x, u_input.c, -495i)), ~(~vec4<i32>(2147483647i, u_input.e, u_input.e, u_input.a.x)))), u_input.a, !(!select(vec2<bool>(false, false), vec2<bool>(true, true), true)));
    var var_1 = func_2(var_0.c, max(~(-_wgslsmith_sub_vec3_i32(var_0.c.xzw, var_0.c.xyy)), _wgslsmith_add_vec3_i32(_wgslsmith_div_vec3_i32(var_0.c.yzw, u_input.a), ~(vec3<i32>(var_0.b, var_0.d.x, 0i) >> (u_input.d.xxw % vec3<u32>(32u))))), vec2<bool>(_wgslsmith_mod_i32(select(var_0.c.x, var_0.b, true), 1i) != 48331i, true));
    let var_2 = !(!(!(!select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, false), false))));
    var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(var_1.a)))))), -(35741i << (var_0.e % 32u)) >> (firstTrailingBit(_wgslsmith_sub_u32(var_1.e, 216u) & firstLeadingBit(2533u)) % 32u), max(_wgslsmith_clamp_vec4_i32(_wgslsmith_mod_vec4_i32(select(var_1.c, vec4<i32>(1i, var_0.d.x, var_1.c.x, 2147483647i), var_2.x), vec4<i32>(var_1.c.x, u_input.e, var_0.c.x, -1861i)), vec4<i32>(-1i) * -var_0.c, vec4<i32>(-1i) * -vec4<i32>(70581i, var_0.c.x, var_1.c.x, -32190i)), vec4<i32>(_wgslsmith_clamp_i32(-37220i, -810i, var_0.c.x), func_3(Struct_1(vec4<f32>(arg_0.x, 436f, -967f, -583f), var_1.b, var_1.c, var_1.c.zz, u_input.d.x)), 51519i, reverseBits(0i)) & -var_1.c), vec2<i32>(var_1.c.x, var_0.d.x), ~reverseBits(_wgslsmith_add_u32(_wgslsmith_mult_u32(4487u, 32262u), 20398u)));
    let var_3 = func_2(firstTrailingBit(vec4<i32>(var_1.b, -2147483647i, -5912i, var_0.c.x ^ var_0.b) | vec4<i32>(func_2(vec4<i32>(-8936i, 2147483647i, var_0.d.x, var_0.d.x), vec3<i32>(u_input.c, u_input.a.x, -1i), vec2<bool>(false, false)).c.x, _wgslsmith_mod_i32(-111586i, -1i), var_1.b ^ -5466i, -2147483647i)), vec3<i32>(i32(-1i) * -u_input.a.x, firstTrailingBit(var_1.d.x), 17494i) | ((var_1.c.yzw & -var_1.c.xww) | vec3<i32>(0i, -var_1.c.x, min(-2147483647i, -24192i))), !vec2<bool>(select(34449i < var_0.b, true, true), var_0.a.x >= _wgslsmith_f_op_f32(-var_0.a.x)));
    return firstLeadingBit(vec3<u32>(4294967295u, var_1.e, firstLeadingBit(select(~0u, 8840u, true))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -min(u_input.a.x, 1i);
    var var_1 = u_input.d;
    var_1 = vec4<u32>(_wgslsmith_mod_u32(_wgslsmith_mod_u32(~1u, ~(~var_1.x)), 4294967295u), 0u, 1u, u_input.b.x ^ firstLeadingBit(_wgslsmith_add_u32(~u_input.d.x, ~var_1.x)));
    var_0 = -(abs(_wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.e, u_input.e, -5409i, u_input.e), vec4<i32>(u_input.c, u_input.c, u_input.a.x, 1i)), abs(-23157i))) | u_input.a.x);
    var var_2 = ~(~firstLeadingBit(u_input.b));
    let var_3 = select(_wgslsmith_dot_vec3_u32(~vec3<u32>(var_1.x, select(1u, 10888u, false), ~var_2.x), select(vec3<u32>(20141u, var_1.x, var_2.x) & func_1(vec4<f32>(1555f, 353f, 1676f, 1535f)), var_1.zxx, vec3<bool>(true, false, any(vec4<bool>(true, true, false, false))))), ~4294967295u, any(vec2<bool>(true, true & (u_input.a.x == u_input.a.x))));
    var var_4 = func_2(vec4<i32>(abs(0i), _wgslsmith_div_i32(u_input.a.x, firstLeadingBit(u_input.a.x)), -1i, -func_2(-vec4<i32>(u_input.e, u_input.c, u_input.a.x, u_input.e), vec3<i32>(2147483647i, -1i, 47754i), select(vec2<bool>(true, true), vec2<bool>(false, false), false)).c.x), u_input.a, vec2<bool>(any(vec3<bool>(true, true, true)), !(func_2(vec4<i32>(u_input.c, 49164i, 0i, u_input.c), u_input.a, vec2<bool>(true, false)).a.x <= _wgslsmith_f_op_f32(1000f - 225f))));
    let var_5 = _wgslsmith_f_op_vec3_f32(-var_4.a.zzy);
    let x = u_input.a;
    s_output = StorageBuffer(func_2(var_4.c, var_4.c.xxw, vec2<bool>(true, any(vec3<bool>(false, true, true)))).c.wzx, ~(~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, var_4.e, 4294967295u), _wgslsmith_sub_vec3_u32(u_input.d.yyy, vec3<u32>(1u, 108010u, 67303u)))));
}


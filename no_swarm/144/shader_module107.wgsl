struct Struct_1 {
    a: u32,
    b: vec4<u32>,
    c: vec3<bool>,
    d: vec3<i32>,
}

struct Struct_2 {
    a: bool,
    b: vec2<f32>,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> vec2<u32> {
    let var_0 = u_input.b.x | ~(-22090i);
    var var_1 = Struct_1(~_wgslsmith_div_u32(abs(u_input.a.x), u_input.a.x), vec4<u32>(abs(_wgslsmith_add_u32(~u_input.a.x, u_input.a.x)), 1u, 1u, _wgslsmith_sub_u32(u_input.a.x, ~u_input.a.x)), select(!vec3<bool>(any(vec2<bool>(false, true)), select(false, false, false), true), vec3<bool>(!all(vec2<bool>(false, false)), !any(vec2<bool>(false, true)), false), vec3<bool>(any(vec3<bool>(true, true, false)) | true, all(select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, false), true)), _wgslsmith_div_u32(17615u, u_input.a.x) < (u_input.a.x << (u_input.a.x % 32u)))), firstTrailingBit(u_input.b.wxz));
    let var_2 = u_input.a.x;
    var_1 = Struct_1(34617u, ~(~firstLeadingBit(vec4<u32>(1u, var_2, 27838u, var_1.b.x)) ^ ~(~vec4<u32>(u_input.a.x, var_1.b.x, 35949u, 1u))), var_1.c, vec3<i32>(-49288i, abs(~var_1.d.x), -1297i));
    var_1 = Struct_1(12663u, _wgslsmith_add_vec4_u32(~min(var_1.b, vec4<u32>(var_2, 4294967295u, u_input.a.x, 0u)), ~(var_1.b >> (_wgslsmith_mult_vec4_u32(var_1.b, var_1.b) % vec4<u32>(32u)))), !(!select(select(vec3<bool>(false, var_1.c.x, true), var_1.c, false), !var_1.c, vec3<bool>(var_1.c.x, false, var_1.c.x))), _wgslsmith_sub_vec3_i32(var_1.d >> (firstTrailingBit(vec3<u32>(1u, u_input.a.x, 1u)) % vec3<u32>(32u)), vec3<i32>(~(-6111i), 1i, 0i)));
    return ~abs(vec2<u32>(0u, ~1u));
}

fn func_2() -> vec3<f32> {
    var var_0 = ~(~u_input.a);
    var var_1 = ~countOneBits(~select(_wgslsmith_div_vec4_i32(u_input.b, vec4<i32>(44731i, 2780i, u_input.b.x, u_input.b.x)), -u_input.b, vec4<bool>(true, true, true, true)));
    var_0 = func_3();
    var_0 = ~u_input.a;
    var var_2 = Struct_2(true & !all(vec2<bool>(true, true)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(step(1f, -223f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1243f, 2018f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-964f, 1000f))) * vec2<f32>(1125f, -1161f))), any(vec3<bool>(false, true, false)))), Struct_1(~max(_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.x, var_0.x), u_input.a), ~u_input.a.x), vec4<u32>((var_0.x ^ var_0.x) | (41703u & var_0.x), 24358u, u_input.a.x, abs(max(4294967295u, 4294967295u))), !(!select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), false)), select(vec3<i32>(-36668i, 1i, -var_1.x), -vec3<i32>(var_1.x, -32256i, 39338i) << (vec3<u32>(u_input.a.x, 11027u, 0u) % vec3<u32>(32u)), (59464u == var_0.x) & any(vec2<bool>(true, true)))), Struct_1(29367u, vec4<u32>(~1u, 0u, reverseBits(u_input.a.x) & ~0u, _wgslsmith_add_u32(1u, ~u_input.a.x)), vec3<bool>(true, select(false, true, true), !(var_0.x > 19381u)), var_1.xwy));
    return _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(trunc(var_2.b.x)), _wgslsmith_f_op_f32(select(var_2.b.x, 932f, var_2.d.c.x)), _wgslsmith_f_op_f32(var_2.b.x * var_2.b.x))))));
}

fn func_1(arg_0: vec3<f32>) -> vec2<i32> {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_2()));
    var_0 = _wgslsmith_f_op_vec3_f32(-arg_0);
    var_0 = _wgslsmith_f_op_vec3_f32(arg_0 * vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_0.x * arg_0.x), _wgslsmith_f_op_f32(var_0.x - arg_0.x))) + 485f), arg_0.x, -702f));
    var var_1 = Struct_1(~abs(~u_input.a.x), ~_wgslsmith_mod_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 0u), vec4<u32>(u_input.a.x, 1u, 4294967295u, 87037u)) | ~vec4<u32>(90214u, u_input.a.x, u_input.a.x, u_input.a.x), vec4<u32>(firstTrailingBit(21112u), u_input.a.x, abs(u_input.a.x), u_input.a.x)), !select(vec3<bool>(true, true, true), !select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(false, false, true)), select(select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(false, false, true)), select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), true), vec3<bool>(true, true, true))), countOneBits(vec3<i32>(u_input.b.x, -2147483647i, -65188i)));
    var_0 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(func_2()), arg_0));
    return vec2<i32>(u_input.b.x, -2147483647i) >> ((u_input.a | vec2<u32>(~(~4294967295u), _wgslsmith_dot_vec3_u32(vec3<u32>(var_1.b.x, u_input.a.x, var_1.a), vec3<u32>(0u, 1u, u_input.a.x)))) % vec2<u32>(32u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<bool>(true, false, !(!all(vec3<bool>(true, true, false))) && true, true);
    var var_1 = -func_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(193f, -301f, -418f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, -1844f, -1051f)))));
    var var_2 = ~(vec2<u32>(u_input.a.x, 37507u) << (~u_input.a % vec2<u32>(32u)));
    let var_3 = !any(select(!var_0, var_0, vec4<bool>(var_0.x, all(vec4<bool>(var_0.x, var_0.x, var_0.x, false)), !var_0.x, true)));
    var_2 = u_input.a;
    let var_4 = Struct_1(func_3().x << (~max(~var_2.x, min(var_2.x, 46927u)) % 32u), ~_wgslsmith_div_vec4_u32(reverseBits(_wgslsmith_clamp_vec4_u32(vec4<u32>(var_2.x, u_input.a.x, var_2.x, 19209u), vec4<u32>(1u, 0u, 4294967295u, 0u), vec4<u32>(var_2.x, u_input.a.x, 1u, var_2.x))), vec4<u32>(~u_input.a.x, ~var_2.x, u_input.a.x, var_2.x)), vec3<bool>(!all(var_0.wy), !any(vec2<bool>(true, var_3)), select(true, !var_3, var_0.x) != false), _wgslsmith_add_vec3_i32(u_input.b.wzw, abs(_wgslsmith_mult_vec3_i32(vec3<i32>(5740i, 2147483647i, -2712i), u_input.b.ywy))) & -(~u_input.b.yxx));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-1233f * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(-2165f))))))));
}


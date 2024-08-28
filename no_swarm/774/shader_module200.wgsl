struct Struct_1 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: i32,
    d: vec3<f32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(55578i, 0i, 2147483647i, -43423i);

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: vec4<i32>, arg_1: vec3<i32>, arg_2: Struct_1) -> vec2<bool> {
    global0 = _wgslsmith_div_vec4_i32(_wgslsmith_sub_vec4_i32(-vec4<i32>(0i | arg_0.x, -5903i, arg_0.x, -global0.x), -vec4<i32>(max(arg_0.x, -1i), _wgslsmith_dot_vec2_i32(arg_1.zz, arg_1.xz), 2147483647i, -19160i)), abs(vec4<i32>(1i, ~(global0.x | 12352i), -56818i & global0.x, i32(-1i) * -21959i)));
    var var_0 = arg_2.a.x;
    let var_1 = vec3<u32>(1u, ~((~4509u << (_wgslsmith_div_u32(u_input.c, 0u) % 32u)) ^ u_input.b.x), (~u_input.b.x | 1u) >> (u_input.b.x % 32u));
    var var_2 = true;
    var var_3 = var_1.yx ^ (var_1.zz & vec2<u32>(firstTrailingBit(~u_input.a), 69433u));
    return !arg_2.a;
}

fn func_2(arg_0: vec4<i32>) -> Struct_1 {
    let var_0 = vec3<f32>(1f, 1f, 1f);
    let var_1 = ~max(u_input.a, u_input.c);
    let var_2 = Struct_1(!func_3(arg_0, vec3<i32>(global0.x, 0i, -6281i), Struct_1(select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false)))));
    let var_3 = vec4<bool>(!(!all(!vec4<bool>(true, true, var_2.a.x, var_2.a.x))), var_2.a.x, false | !(!var_2.a.x), true);
    global0 = vec4<i32>(arg_0.x, firstLeadingBit(global0.x), i32(-1i) * 0i, global0.x);
    return var_2;
}

fn func_1() -> vec2<bool> {
    var var_0 = func_2(~(max(vec4<i32>(2147483647i, 2147483647i, global0.x, 902i), ~vec4<i32>(global0.x, global0.x, global0.x, global0.x)) << ((_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.c, 0u, u_input.a, 1u), u_input.b) >> (~u_input.b % vec4<u32>(32u))) % vec4<u32>(32u))));
    let var_1 = reverseBits(u_input.b.x);
    let var_2 = func_2(~select(vec4<i32>(-45913i, global0.x, global0.x, global0.x) ^ vec4<i32>(global0.x, global0.x, global0.x, -5051i), firstTrailingBit(vec4<i32>(global0.x, global0.x, global0.x, global0.x)), !var_0.a.x) ^ ~_wgslsmith_mult_vec4_i32(vec4<i32>(global0.x, 2147483647i, 2147483647i, global0.x) >> (u_input.b % vec4<u32>(32u)), vec4<i32>(-15832i, global0.x, 0i, -4947i) << (vec4<u32>(0u, 0u, 4294967295u, 35352u) % vec4<u32>(32u))));
    var var_3 = Struct_1(vec2<bool>(true, true));
    global0 = _wgslsmith_mod_vec4_i32(-vec4<i32>(-global0.x, -15609i, -918i >> (~u_input.a % 32u), (global0.x << (2667u % 32u)) ^ 2147483647i), select(~vec4<i32>(global0.x, global0.x, 49086i, global0.x), vec4<i32>(30761i, abs(_wgslsmith_sub_i32(global0.x, -21637i)), -64884i, ~(global0.x << (0u % 32u))), select(!(!vec4<bool>(var_3.a.x, var_2.a.x, var_0.a.x, var_2.a.x)), vec4<bool>(var_2.a.x, !var_0.a.x, true, true), vec4<bool>(true, !var_2.a.x, true, any(vec3<bool>(false, true, false))))));
    return !func_2(~_wgslsmith_add_vec4_i32(-vec4<i32>(1i, -18480i, -1i, -35511i), ~vec4<i32>(-15741i, 77894i, -41870i, 0i))).a;
}

fn func_4(arg_0: Struct_1, arg_1: vec4<u32>) -> vec4<i32> {
    let var_0 = vec2<u32>(reverseBits(~(~arg_1.x)), ~_wgslsmith_div_u32(24180u, arg_1.x & u_input.c));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(528f)) * 409f);
    let var_2 = select(_wgslsmith_mod_vec4_i32(abs(~(-vec4<i32>(global0.x, -29297i, global0.x, -2147483647i))), _wgslsmith_mod_vec4_i32(vec4<i32>(reverseBits(1i), global0.x, 13427i, global0.x), select(~vec4<i32>(-1i, 2171i, global0.x, global0.x), ~vec4<i32>(global0.x, -17157i, global0.x, -2147483647i), false))), countOneBits(select(reverseBits(_wgslsmith_clamp_vec4_i32(vec4<i32>(global0.x, 30872i, global0.x, 16789i), vec4<i32>(global0.x, global0.x, global0.x, global0.x), vec4<i32>(global0.x, 29348i, -2147483647i, global0.x))), vec4<i32>(~(-10346i), global0.x, _wgslsmith_sub_i32(global0.x, global0.x), 32157i), false & arg_0.a.x)), arg_0.a.x);
    global0 = _wgslsmith_add_vec4_i32(select(vec4<i32>(var_2.x, _wgslsmith_clamp_i32(2308i, global0.x, 1i), global0.x, global0.x), _wgslsmith_add_vec4_i32(_wgslsmith_add_vec4_i32(~var_2, _wgslsmith_add_vec4_i32(var_2, var_2)), vec4<i32>(_wgslsmith_mod_i32(33257i, var_2.x), var_2.x, global0.x, -1i)), true), ~(~vec4<i32>(21845i | global0.x, reverseBits(global0.x), var_2.x >> (var_0.x % 32u), _wgslsmith_mod_i32(2612i, var_2.x))));
    var var_3 = -117f;
    return -_wgslsmith_clamp_vec4_i32(var_2, vec4<i32>(global0.x, _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(var_2, var_2), global0.x), 36388i, -_wgslsmith_sub_i32(-1i, var_2.x)), _wgslsmith_div_vec4_i32(vec4<i32>(16690i, global0.x, 12740i, var_2.x) | var_2, reverseBits(vec4<i32>(1i, -2147483647i, -4039i, -1i))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_div_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(global0.x, _wgslsmith_add_i32(_wgslsmith_clamp_i32(global0.x, 0i, global0.x), _wgslsmith_mult_i32(global0.x, -48662i)), global0.x, _wgslsmith_add_i32(-1i, -4252i)), vec4<i32>(-1i, -25012i, ~firstLeadingBit(global0.x), -abs(global0.x))), -select(reverseBits(_wgslsmith_clamp_vec4_i32(vec4<i32>(global0.x, global0.x, 2147483647i, 1i), vec4<i32>(2571i, 99833i, global0.x, 1i), vec4<i32>(-1810i, 51262i, -21023i, -1i))), vec4<i32>(_wgslsmith_sub_i32(global0.x, 2147483647i), global0.x, global0.x, -30166i), true));
    global0 = func_4(Struct_1(func_1()), select(_wgslsmith_sub_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(21060u, u_input.b.x, u_input.b.x, 43090u), max(u_input.b, vec4<u32>(u_input.b.x, u_input.b.x, 1u, u_input.c)), abs(u_input.b)), select(u_input.b, ~vec4<u32>(1u, u_input.a, u_input.c, u_input.c), true)), max(vec4<u32>(1u, u_input.a, u_input.c, u_input.b.x), _wgslsmith_mult_vec4_u32(u_input.b, min(vec4<u32>(75697u, u_input.b.x, u_input.a, u_input.b.x), vec4<u32>(19125u, 4294967295u, u_input.a, 0u)))), true));
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(309f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-544f + -2005f) * _wgslsmith_f_op_f32(sign(247f))))));
    let var_1 = _wgslsmith_dot_vec2_i32(vec2<i32>(~_wgslsmith_add_i32(~global0.x, -1i), global0.x), global0.zz);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec4_u32(u_input.b, firstLeadingBit(vec4<u32>(u_input.c, 93840u, u_input.b.x, 18719u) | ~u_input.b)), vec2<i32>(-global0.x, i32(-1i) * -_wgslsmith_dot_vec4_i32(vec4<i32>(var_1, 2801i, var_1, 0i), vec4<i32>(-33103i, var_1, var_1, var_1))), var_1, _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0, 794f, -780f) - vec3<f32>(-2661f, var_0, var_0)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-636f, var_0, 982f))) * vec3<f32>(608f, 2882f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_0 + var_0))))), vec2<u32>(min(u_input.c, u_input.a), ~countOneBits(_wgslsmith_sub_u32(u_input.b.x, 8780u))));
}


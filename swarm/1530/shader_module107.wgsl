struct Struct_1 {
    a: f32,
    b: vec3<i32>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: u32,
    b: vec4<bool>,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: vec4<i32>,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_3, arg_1: vec2<f32>, arg_2: Struct_2) -> bool {
    return (i32(-1i) * -arg_0.c.x) > ~_wgslsmith_add_i32(arg_0.c.x, _wgslsmith_dot_vec2_i32(abs(vec2<i32>(0i, 2147483647i)), -arg_0.c.yx));
}

fn func_2(arg_0: u32, arg_1: vec2<u32>) -> i32 {
    var var_0 = Struct_3(~u_input.a, vec4<bool>(func_3(Struct_3(~arg_0, select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, false)), ~vec3<i32>(-2147483647i, -44662i, 25965i)), vec2<f32>(1f, 1f), Struct_2(true)), !all(vec2<bool>(false, true)), all(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true))), true), firstTrailingBit(min(vec3<i32>(1i, 1i, 1i), _wgslsmith_mult_vec3_i32(vec3<i32>(1i, 19687i, -1i), vec3<i32>(1i, 1i, 1i)))));
    var_0 = Struct_3(arg_1.x >> (~_wgslsmith_dot_vec2_u32(select(vec2<u32>(var_0.a, 19888u), vec2<u32>(4294967295u, arg_1.x), vec2<bool>(false, var_0.b.x)), ~vec2<u32>(arg_0, u_input.a)) % 32u), vec4<bool>(any(vec2<bool>(true, true)), var_0.b.x & !(!var_0.b.x), true | var_0.b.x, false), var_0.c);
    var var_1 = vec4<i32>(var_0.c.x, 1i, _wgslsmith_div_i32(select(var_0.c.x, firstLeadingBit(-var_0.c.x), true), ~(~firstLeadingBit(var_0.c.x))), _wgslsmith_div_i32(2147483647i << (_wgslsmith_mod_u32(abs(0u), 10251u) % 32u), var_0.c.x));
    var_1 = ~(vec4<i32>(select(-2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(var_1.x, var_1.x, -1i, 0i), vec4<i32>(-2147483647i, 11088i, 22320i, var_1.x)), var_0.b.x), ~37471i, firstLeadingBit(0i), 0i) << ((_wgslsmith_add_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(1u, arg_1.x, 4294967295u, arg_0), vec4<u32>(45634u, 1u, u_input.b.x, 8194u)), vec4<u32>(19559u, 16318u, u_input.a, 1u) << (vec4<u32>(4294967295u, 47597u, arg_0, 0u) % vec4<u32>(32u))) & vec4<u32>(_wgslsmith_div_u32(var_0.a, 0u), arg_1.x, 3583u, ~10980u)) % vec4<u32>(32u)));
    let var_2 = true;
    return _wgslsmith_div_i32(11251i, 30771i);
}

fn func_1(arg_0: bool, arg_1: vec4<bool>, arg_2: f32, arg_3: u32) -> f32 {
    let var_0 = Struct_2(true);
    let var_1 = vec4<i32>(-1i) * -_wgslsmith_mult_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), vec4<i32>(func_2(arg_3, u_input.b), _wgslsmith_mult_i32(1i, 2147483647i), firstLeadingBit(1i), 1i));
    let var_2 = Struct_1(arg_2, var_1.ywy | _wgslsmith_mod_vec3_i32(select(vec3<i32>(-2147483647i, 12048i, var_1.x) << (vec3<u32>(4294967295u, 62318u, 1u) % vec3<u32>(32u)), var_1.wzz >> (vec3<u32>(4294967295u, 2265u, 26615u) % vec3<u32>(32u)), !var_0.a), -max(var_1.wwz, vec3<i32>(var_1.x, 29005i, 2147483647i))));
    var var_3 = Struct_2(!func_3(Struct_3(~u_input.a, arg_1, vec3<i32>(29656i, 1774i, -1i)), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-760f, -972f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.a, var_2.a)))), Struct_2(false | var_0.a)));
    var var_4 = !vec4<bool>(false | (_wgslsmith_add_i32(0i, 2147483647i) <= ~var_2.b.x), all(select(select(vec3<bool>(true, false, false), arg_1.wzx, arg_1.yxz), arg_1.yxy, arg_0)), !all(arg_1.zz), func_3(Struct_3(u_input.b.x, select(vec4<bool>(true, true, var_0.a, false), vec4<bool>(var_0.a, arg_1.x, true, var_3.a), arg_1), var_2.b), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.a, -900f) * vec2<f32>(579f, -1453f))), var_0));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.a));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_1(all(vec4<bool>(false, true, true, true)), vec4<bool>(true, true, true, true), -781f, u_input.b.x)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(117f * -1571f), _wgslsmith_f_op_f32(round(754f))))))), _wgslsmith_div_vec4_i32(-_wgslsmith_add_vec4_i32(abs(vec4<i32>(33166i, 57169i, 0i, 0i)), select(vec4<i32>(4137i, 0i, 2147483647i, 2147483647i), vec4<i32>(-1i, -8348i, 3428i, -41649i), vec4<bool>(false, true, true, true))), ~select(vec4<i32>(1i, 1i, 1i, 1i), vec4<i32>(-1i, 1i, 2147483647i, -68787i), u_input.b.x != 87851u)), max(~firstLeadingBit(max(vec4<i32>(0i, -3890i, -31316i, 27823i), vec4<i32>(-83224i, -2147483647i, -3769i, 0i))), -firstLeadingBit(vec4<i32>(1762i, 76207i, 29948i, -2147483647i))), -756f, -1i);
}


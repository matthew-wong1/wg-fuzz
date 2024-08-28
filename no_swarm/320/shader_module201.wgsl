struct Struct_1 {
    a: bool,
    b: u32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec4<f32>,
}

struct Struct_3 {
    a: f32,
    b: u32,
    c: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: i32,
    c: bool,
}

struct Struct_5 {
    a: vec4<u32>,
    b: vec3<bool>,
    c: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<f32>,
    c: f32,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(-1i, -11846i);

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_1(arg_0: vec4<bool>) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(578f)))));
    return _wgslsmith_dot_vec2_u32(u_input.b, u_input.b) | ~(~1u);
}

fn func_3(arg_0: bool) -> vec4<i32> {
    var var_0 = vec3<bool>(true, true, true);
    let var_1 = Struct_2(~select(~vec4<i32>(-28775i, 17160i, global0.x, 1i) ^ vec4<i32>(global0.x, global0.x, 4278i, -19177i), _wgslsmith_sub_vec4_i32(-vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, 88100i), vec4<i32>(global0.x, global0.x, -2147483647i, global0.x)), all(vec2<bool>(false, arg_0))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1086f, -1169f, 735f, 280f)))));
    return countOneBits(_wgslsmith_mod_vec4_i32(~(-var_1.a), var_1.a) ^ countOneBits(var_1.a));
}

fn func_2() -> vec3<f32> {
    global0 = u_input.a.yz ^ u_input.a.xx;
    let var_0 = -(~(abs(func_3(true)) << (_wgslsmith_clamp_vec4_u32(~vec4<u32>(31545u, 0u, u_input.b.x, u_input.b.x), vec4<u32>(u_input.b.x, 1u, u_input.b.x, 4294967295u) & vec4<u32>(u_input.b.x, u_input.b.x, 1u, u_input.b.x), ~vec4<u32>(1u, 53168u, 4294967295u, 41749u)) % vec4<u32>(32u))));
    let var_1 = all(vec2<bool>((u_input.a.x << (u_input.b.x % 32u)) <= reverseBits(0i | var_0.x), !all(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false)))));
    let var_2 = firstLeadingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i) * -var_0.zz, ~vec2<i32>(firstTrailingBit(-31628i), -2147483647i)));
    var var_3 = Struct_3(-1648f, countOneBits(~_wgslsmith_clamp_u32(~u_input.b.x, u_input.b.x << (22367u % 32u), ~u_input.b.x)), Struct_1(true, 4294967295u));
    return _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(292f, var_3.a, -1199f) + vec3<f32>(521f, -2051f, var_3.a)), vec3<f32>(var_3.a, var_3.a, 1000f))) - _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_3.a, var_3.a, var_3.a))))))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_3.a, 160f, var_3.a))))), vec3<f32>(_wgslsmith_f_op_f32(-var_3.a), _wgslsmith_f_op_f32(-var_3.a), _wgslsmith_f_op_f32(trunc(var_3.a))))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = u_input.a.yy;
    var var_0 = true;
    var var_1 = Struct_3(_wgslsmith_f_op_f32(f32(-1f) * -241f), ~(~func_1(vec4<bool>(true, false, true, true))), Struct_1(1u > u_input.b.x, u_input.b.x));
    let var_2 = -(~u_input.a.x);
    let var_3 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_2()) - _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(vec3<f32>(-863f, var_1.a, -824f), vec3<f32>(-680f, var_1.a, 260f))))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-652f, var_1.a, var_1.a))), vec3<f32>(var_1.a, 1878f, _wgslsmith_f_op_f32(step(-578f, var_1.a)))))));
    let var_4 = Struct_2(~_wgslsmith_mult_vec4_i32(reverseBits(_wgslsmith_add_vec4_i32(vec4<i32>(-26126i, 24056i, -52025i, var_2), vec4<i32>(global0.x, 2147483647i, var_2, global0.x))), countOneBits(-vec4<i32>(0i, var_2, global0.x, 6200i))), vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_1.a - -1216f))), 983f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_1.a * -1089f))))), _wgslsmith_f_op_f32(var_3.x - -876f)));
    global0 = reverseBits(abs(_wgslsmith_add_vec2_i32(max(select(vec2<i32>(var_2, global0.x), var_4.a.xz, false), vec2<i32>(-1i, var_2)), vec2<i32>(1i, 1i ^ u_input.a.x))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-var_3), var_3, vec3<bool>(!all(vec2<bool>(true, var_1.c.a)), select(true, all(vec2<bool>(false, true)), !var_1.c.a), false))), var_3.zx, var_3.x, abs(reverseBits(45875u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-940f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -142f))) - -1000f));
}


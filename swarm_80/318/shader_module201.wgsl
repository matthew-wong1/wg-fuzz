struct Struct_1 {
    a: vec3<bool>,
    b: vec3<i32>,
    c: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: i32,
    d: vec2<i32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: f32,
    d: vec4<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 28>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_1(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: Struct_1) -> bool {
    global0 = array<Struct_1, 28>();
    var var_0 = -52627i;
    let var_1 = arg_1;
    global0 = array<Struct_1, 28>();
    var var_2 = arg_1;
    return true;
}

fn func_3() -> vec3<bool> {
    var var_0 = _wgslsmith_f_op_f32(max(574f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(188f, -1038f)))) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(910f, -879f)) * 137f))))));
    var var_1 = ~(abs(_wgslsmith_mod_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(-449i, 2147483647i, u_input.d.x), vec3<i32>(0i, 1i, 45539i)), _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.d.x, -19894i, u_input.c), vec3<i32>(u_input.c, u_input.e.x, u_input.e.x)))) >> (vec3<u32>(select(u_input.a.x, select(51547u, 36241u, false), true), ~u_input.b.x, _wgslsmith_mod_u32(1u, ~0u)) % vec3<u32>(32u)));
    let var_2 = vec4<i32>(u_input.e.x, ~_wgslsmith_dot_vec4_i32(abs(vec4<i32>(u_input.e.x, -2147483647i, 1i, 2147483647i)), ~vec4<i32>(var_1.x, -1i, -19727i, u_input.c)) | ~(-(~(-15705i))), -14001i << (~(~(u_input.b.x & 14426u)) % 32u), -firstTrailingBit(var_1.x));
    var var_3 = global0[_wgslsmith_index_u32(u_input.a.x, 28u)];
    let var_4 = Struct_1(select(!select(!var_3.a, select(var_3.a, var_3.a, vec3<bool>(var_3.a.x, false, var_3.a.x)), true), var_3.a, var_3.a.x), -abs(~(var_2.yxw ^ vec3<i32>(0i, 2147483647i, var_2.x))), 6542i);
    return select(vec3<bool>(!select(select(var_4.a.x, var_3.a.x, true), var_3.a.x, all(vec2<bool>(var_3.a.x, var_4.a.x))), !all(!var_4.a.zz), var_4.a.x), var_4.a, !vec3<bool>(all(vec3<bool>(false, var_3.a.x, false)), var_4.a.x, true));
}

fn func_2(arg_0: vec2<f32>) -> vec2<bool> {
    global0 = array<Struct_1, 28>();
    let var_0 = Struct_1(select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), any(func_3())), func_3(), select(func_3(), select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), true), vec3<bool>(false, true, true)), select(select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), false), vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), true)))), ~vec3<i32>(u_input.d.x, _wgslsmith_add_i32(_wgslsmith_sub_i32(u_input.c, u_input.d.x), 0i), firstLeadingBit(u_input.e.x)), u_input.e.x);
    let var_1 = vec2<bool>(!func_1(vec3<bool>(true != var_0.a.x, !var_0.a.x, var_0.a.x | var_0.a.x), var_0, global0[_wgslsmith_index_u32(u_input.a.x, 28u)]), !(!(all(vec4<bool>(false, true, true, false)) || true)));
    var var_2 = var_0;
    var var_3 = 56137u;
    return vec2<bool>(all(vec3<bool>(!(138454u <= u_input.b.x), !any(vec2<bool>(var_2.a.x, true)), any(var_0.a.xy))), _wgslsmith_clamp_u32(u_input.b.x, ~(~u_input.b.x), abs(39634u)) == u_input.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -170i;
    var var_1 = Struct_1(select(!vec3<bool>(func_1(vec3<bool>(false, true, false), global0[_wgslsmith_index_u32(u_input.a.x, 28u)], Struct_1(vec3<bool>(false, false, false), vec3<i32>(38043i, u_input.c, 1i), u_input.c)), true, true), vec3<bool>(-1048f < _wgslsmith_f_op_f32(select(533f, 324f, true)), any(func_2(vec2<f32>(612f, -798f))), true), vec3<bool>(true, any(select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(true, false, false))), any(select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, true), false)))), _wgslsmith_mult_vec3_i32(max(min(vec3<i32>(u_input.e.x, u_input.c, -1i) ^ vec3<i32>(18949i, -37641i, 5124i), firstTrailingBit(vec3<i32>(83114i, u_input.c, -1i))), vec3<i32>(-1i, 8421i, i32(-1i) * -26181i)), ~countOneBits(~vec3<i32>(u_input.d.x, u_input.d.x, u_input.c))), u_input.c);
    let var_2 = _wgslsmith_sub_i32(abs(1i), var_1.b.x);
    var var_3 = Struct_1(vec3<bool>(true, var_1.a.x, any(vec3<bool>(true, false, var_1.a.x))), _wgslsmith_sub_vec3_i32(reverseBits(vec3<i32>(0i << (u_input.b.x % 32u), _wgslsmith_add_i32(-15984i, var_1.b.x), var_2)), vec3<i32>(_wgslsmith_mod_i32(~u_input.c, var_2), var_1.b.x, -29237i)), -var_1.c);
    let var_4 = global0[_wgslsmith_index_u32(u_input.b.x, 28u)];
    let x = u_input.a;
    s_output = StorageBuffer(84558u, vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -2109f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(993f, -276f)))))), -182f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -812f))), 1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + -1029f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-415f, 1133f, -353f, 676f))))) + vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-890f * -1309f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -870f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1543f) + _wgslsmith_f_op_f32(max(-1308f, 104f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1000f)) + _wgslsmith_f_op_f32(round(-1950f))))), 397f);
}


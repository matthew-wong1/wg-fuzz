struct Struct_1 {
    a: i32,
    b: vec3<i32>,
    c: vec3<bool>,
    d: vec4<bool>,
    e: vec2<u32>,
}

struct Struct_2 {
    a: bool,
    b: vec2<u32>,
    c: Struct_1,
    d: vec4<f32>,
}

struct Struct_3 {
    a: f32,
    b: vec2<bool>,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<u32>,
    d: vec3<i32>,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: i32,
    d: vec4<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(0i, i32(-2147483648), -1i);

var<private> global1: vec2<bool> = vec2<bool>(false, false);

var<private> global2: array<u32, 29> = array<u32, 29>(1u, 4294967295u, 26071u, 53024u, 1u, 1u, 21727u, 1u, 0u, 23204u, 1u, 4294967295u, 36414u, 44727u, 1u, 0u, 34812u, 1u, 1u, 39143u, 0u, 4294967295u, 39468u, 81608u, 1742u, 36560u, 76079u, 32954u, 41177u);

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3() -> vec2<bool> {
    global2 = array<u32, 29>();
    let var_0 = 4294967295u;
    global0 = (u_input.d ^ ~u_input.d) >> (u_input.c % vec3<u32>(32u));
    var var_1 = true;
    let var_2 = Struct_2(global1.x, u_input.c.zy, Struct_1(-70871i, vec3<i32>(-u_input.b, ~39465i, countOneBits(-2147483647i)), vec3<bool>(true, global1.x, (u_input.d.x >= u_input.d.x) | true), vec4<bool>(false, !global1.x, u_input.e != 44044i, true), u_input.c.zy), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -801f), _wgslsmith_f_op_f32(-1000f - 458f), 1636f, _wgslsmith_f_op_f32(f32(-1f) * -716f)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-395f, 232f, 966f, -376f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1879f, -842f, 463f, -243f))), !(global1.x && global1.x)))));
    return var_2.c.c.zy;
}

fn func_2(arg_0: u32, arg_1: vec3<f32>) -> bool {
    global1 = func_3();
    global2 = array<u32, 29>();
    global1 = vec2<bool>(true, false);
    global2 = array<u32, 29>();
    let var_0 = abs(31902i);
    return select(global1.x, any(!select(select(vec3<bool>(true, global1.x, true), vec3<bool>(true, global1.x, global1.x), vec3<bool>(false, global1.x, true)), select(vec3<bool>(false, true, global1.x), vec3<bool>(false, global1.x, true), false), !vec3<bool>(global1.x, global1.x, false))), false);
}

fn func_4(arg_0: bool, arg_1: i32) -> i32 {
    global0 = u_input.d;
    global0 = u_input.d;
    var var_0 = Struct_2(false, firstLeadingBit(vec2<u32>(u_input.c.x >> (u_input.c.x % 32u), ~global2[_wgslsmith_index_u32(52225u, 29u)])) >> (vec2<u32>(65988u, ~_wgslsmith_mod_u32(global2[_wgslsmith_index_u32(4294967295u, 29u)], 56445u)) % vec2<u32>(32u)), Struct_1(_wgslsmith_mod_i32(_wgslsmith_div_i32(27595i, ~arg_1), -global0.x), -u_input.d, select(select(vec3<bool>(global1.x, false, true), vec3<bool>(arg_0, false, false), !global1.x), vec3<bool>(any(vec3<bool>(false, arg_0, global1.x)), global2[_wgslsmith_index_u32(u_input.c.x, 29u)] != 1224u, true), global1.x), vec4<bool>(all(vec3<bool>(global1.x, false, global1.x)) == select(false, global1.x, arg_0), true, !any(vec2<bool>(true, arg_0)), all(!vec2<bool>(global1.x, arg_0))), u_input.c.yx), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1312f, 634f, 1370f, -1174f))))))))));
    global1 = vec2<bool>(true, global1.x);
    var var_1 = Struct_2(!var_0.a, vec2<u32>(~(~u_input.c.x), _wgslsmith_clamp_u32(~(~var_0.c.e.x), _wgslsmith_mod_u32(~4294967295u, 14929u), min(~71466u, 71330u))), Struct_1(-arg_1, ~(~(-var_0.c.b)), var_0.c.c, var_0.c.d, u_input.c.zz), vec4<f32>(_wgslsmith_f_op_f32(min(var_0.d.x, -1436f)), -1061f, var_0.d.x, -110f));
    return abs(0i);
}

fn func_1(arg_0: f32) -> f32 {
    global0 = -_wgslsmith_clamp_vec3_i32(_wgslsmith_clamp_vec3_i32(min(u_input.d, vec3<i32>(global0.x, u_input.d.x, global0.x)), -vec3<i32>(10642i, global0.x, u_input.e), _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.b, global0.x, u_input.b), vec3<i32>(u_input.b, -53817i, u_input.d.x), vec3<i32>(2147483647i, -2147483647i, -14148i))), ~_wgslsmith_add_vec3_i32(u_input.d, vec3<i32>(-63746i, global0.x, global0.x)), countOneBits(~vec3<i32>(-2147483647i, 0i, global0.x))) & u_input.d;
    global1 = !(!select(!select(vec2<bool>(global1.x, true), vec2<bool>(global1.x, false), vec2<bool>(global1.x, global1.x)), !select(vec2<bool>(true, false), vec2<bool>(false, false), global1.x), false));
    global2 = array<u32, 29>();
    let var_0 = vec3<bool>(true, global1.x, global1.x);
    global0 = vec3<i32>(global0.x, global0.x, -func_4(func_2(u_input.c.x, vec3<f32>(284f, arg_0, arg_0)), 8580i));
    return _wgslsmith_f_op_f32(arg_0 - -582f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(_wgslsmith_f_op_f32(func_1(960f)), vec2<bool>(!(true || !global1.x), any(!(!vec2<bool>(false, global1.x)))), Struct_1(71048i, u_input.d, vec3<bool>(!(!global1.x), global1.x, func_3().x), !(!vec4<bool>(global1.x, false, global1.x, global1.x)), u_input.c.zx));
    var var_1 = _wgslsmith_mult_u32(abs(u_input.c.x), _wgslsmith_add_u32(37061u, reverseBits(0u)));
    var var_2 = ~firstLeadingBit(_wgslsmith_mod_vec3_u32(~vec3<u32>(u_input.c.x, u_input.c.x, 39794u), vec3<u32>(0u, 37143u, 29522u)) | min(~u_input.c, vec3<u32>(1u, u_input.a, 53196u)));
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1000f)) * 645f) - 307f);
    var var_4 = var_0.c.e.x;
    let x = u_input.a;
    s_output = StorageBuffer(var_2.x, min(_wgslsmith_sub_vec4_i32(max(vec4<i32>(global0.x, 62880i, var_0.c.b.x, var_0.c.a), vec4<i32>(-1i, 59119i, global0.x, 43379i)), vec4<i32>(global0.x, 0i, -21901i, u_input.d.x)) | (max(vec4<i32>(0i, global0.x, global0.x, -13998i), vec4<i32>(-1i, global0.x, u_input.e, var_0.c.b.x)) ^ _wgslsmith_clamp_vec4_i32(vec4<i32>(-71851i, 4950i, 1i, 0i), vec4<i32>(var_0.c.b.x, var_0.c.a, var_0.c.a, u_input.d.x), vec4<i32>(-71771i, 17936i, global0.x, var_0.c.b.x))), max(-vec4<i32>(2147483647i, 2147483647i, -5462i, u_input.e), ~(~vec4<i32>(u_input.d.x, 1i, 35231i, 2147483647i)))), var_0.c.b.x >> (_wgslsmith_dot_vec2_u32(u_input.c.zz << (min(vec2<u32>(var_0.c.e.x, 790u), var_0.c.e) % vec2<u32>(32u)), ~vec2<u32>(u_input.c.x, 4294967295u)) % 32u), countOneBits(vec4<u32>(10112u, reverseBits(12357u), global2[_wgslsmith_index_u32(72055u, 29u)] >> (7917u % 32u), 1u) & vec4<u32>(0u, var_2.x, u_input.c.x, ~var_0.c.e.x)), abs(1i));
}


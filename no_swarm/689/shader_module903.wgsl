struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
    d: u32,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: i32,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 9> = array<vec4<i32>, 9>(vec4<i32>(-18456i, -1i, 29512i, 30901i), vec4<i32>(-55447i, 36623i, i32(-2147483648), -25461i), vec4<i32>(1i, 31327i, 18987i, -1i), vec4<i32>(31802i, 1i, -1i, 17222i), vec4<i32>(-45935i, 1i, 39140i, -1i), vec4<i32>(2147483647i, 0i, 1i, 18525i), vec4<i32>(2147483647i, 3529i, 0i, 2147483647i), vec4<i32>(2147483647i, 25591i, -36136i, 6539i), vec4<i32>(27561i, 68297i, 1i, -3917i));

var<private> global1: array<Struct_1, 6>;

var<private> global2: Struct_2 = Struct_2(Struct_1(293f), -1i, Struct_1(1348f), 51573u, vec2<u32>(0u, 51551u));

var<private> global3: array<Struct_2, 14>;

var<private> global4: array<vec3<i32>, 14> = array<vec3<i32>, 14>(vec3<i32>(-3637i, -22604i, 1i), vec3<i32>(2147483647i, -36493i, -1537i), vec3<i32>(13513i, 2147483647i, 2147483647i), vec3<i32>(1i, i32(-2147483648), -28875i), vec3<i32>(-18904i, -47092i, -31414i), vec3<i32>(-31473i, -1i, 1i), vec3<i32>(0i, 37694i, 27640i), vec3<i32>(0i, 2147483647i, 41284i), vec3<i32>(-28291i, 0i, 59943i), vec3<i32>(-18050i, -5710i, 510i), vec3<i32>(-44398i, i32(-2147483648), 2147483647i), vec3<i32>(2290i, 0i, 0i), vec3<i32>(-1i, i32(-2147483648), 2147483647i), vec3<i32>(-25425i, -1i, -56754i));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: f32) -> u32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(max(-347f, 1249f)), arg_0, _wgslsmith_f_op_f32(abs(-538f))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(global2.c.a, global2.c.a, 523f), vec3<f32>(-301f, arg_0, arg_0)) - _wgslsmith_div_vec3_f32(vec3<f32>(global2.a.a, global2.c.a, global2.c.a), vec3<f32>(global2.c.a, arg_0, arg_0)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(arg_0, global2.c.a, arg_0))))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, arg_0, -360f))))));
    global3 = array<Struct_2, 14>();
    let var_1 = Struct_2(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -736f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(350f + 686f)))), -global2.b, global2.a, firstTrailingBit(_wgslsmith_dot_vec2_u32(global2.e, vec2<u32>(global2.d, ~u_input.a.x))), u_input.a.yz);
    let var_2 = _wgslsmith_f_op_f32(global2.c.a * 1390f);
    let var_3 = ~(_wgslsmith_sub_i32(min(global2.b, global2.b), var_1.b) ^ abs(reverseBits(firstTrailingBit(var_1.b))));
    return ~0u;
}

fn func_2() -> Struct_1 {
    var var_0 = vec2<i32>(-1i) * -(~(vec2<i32>(global2.b, global2.b) & vec2<i32>(global2.b, global2.b)));
    global1 = array<Struct_1, 6>();
    let var_1 = ~func_3(_wgslsmith_div_f32(-238f, _wgslsmith_div_f32(-738f, _wgslsmith_f_op_f32(abs(686f)))));
    var var_2 = Struct_1(global2.a.a);
    global2 = global3[_wgslsmith_index_u32(global2.d, 14u)];
    return global2.a;
}

fn func_1() -> vec4<i32> {
    global1 = array<Struct_1, 6>();
    let var_0 = global3[_wgslsmith_index_u32(u_input.a.x, 14u)];
    global1 = array<Struct_1, 6>();
    global2 = Struct_2(func_2(), 44870i, Struct_1(var_0.c.a), global2.e.x, _wgslsmith_mod_vec2_u32(~(max(vec2<u32>(4294967295u, 4294967295u), u_input.a.xy) >> (var_0.e % vec2<u32>(32u))), u_input.a.zx));
    var var_1 = func_2();
    return global0[_wgslsmith_index_u32(47948u, 9u)];
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 6>();
    var var_0 = select(global0[_wgslsmith_index_u32(0u, 9u)], firstTrailingBit(~func_1() >> (~(~vec4<u32>(u_input.a.x, global2.e.x, 33140u, global2.d)) % vec4<u32>(32u))), true);
    var var_1 = -1043f;
    global3 = array<Struct_2, 14>();
    global1 = array<Struct_1, 6>();
    let var_2 = global3[_wgslsmith_index_u32(53884u, 14u)];
    var var_3 = select(vec4<bool>(all(select(vec2<bool>(true, true), vec2<bool>(false, true), true)) | false, false, true, all(select(select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), true), vec3<bool>(false, true, true), vec3<bool>(true, true, true)))), select(vec4<bool>(true, false, true, select(all(vec3<bool>(false, false, false)), true, all(vec2<bool>(true, false)))), select(!select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, true)), vec4<bool>(true, true, true, true), vec4<bool>(u_input.a.x != u_input.a.x, true, true, all(vec3<bool>(true, false, true)))), any(vec2<bool>(true, any(vec4<bool>(false, false, true, false))))), select(vec4<bool>(true, !all(vec2<bool>(true, false)), false, true), vec4<bool>(-730f > var_2.c.a, true, -2147483647i == var_2.b, true), vec4<bool>(false, true, true, true | all(vec2<bool>(true, false)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_i32(_wgslsmith_div_vec4_i32(_wgslsmith_div_vec4_i32(global0[_wgslsmith_index_u32(global2.e.x, 9u)], vec4<i32>(var_2.b, 1i, var_0.x, var_0.x)) << (abs(vec4<u32>(u_input.a.x, var_2.d, 1051u, global2.d)) % vec4<u32>(32u)), _wgslsmith_sub_vec4_i32(~global0[_wgslsmith_index_u32(0u, 9u)], _wgslsmith_add_vec4_i32(global0[_wgslsmith_index_u32(4294967295u, 9u)], vec4<i32>(var_2.b, 36109i, -2147483647i, -1i)))), global0[_wgslsmith_index_u32(~30166u, 9u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global2.a.a, global2.c.a))), var_2.b, global2.b, ~global2.b);
}


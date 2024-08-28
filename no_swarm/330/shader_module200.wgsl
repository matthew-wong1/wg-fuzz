struct Struct_1 {
    a: vec4<bool>,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec4<i32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: array<i32, 20>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> i32 {
    global0 = _wgslsmith_sub_vec2_i32(_wgslsmith_add_vec2_i32(~vec2<i32>(0i, global1[_wgslsmith_index_u32(1u, 20u)]) | countOneBits(select(vec2<i32>(global1[_wgslsmith_index_u32(4294967295u, 20u)], global1[_wgslsmith_index_u32(20951u, 20u)]), u_input.b.xx, vec2<bool>(false, true))), vec2<i32>(-91174i, -firstLeadingBit(43228i))), vec2<i32>(-(1i >> (u_input.e % 32u)) << (u_input.a % 32u), min(firstTrailingBit(0i) >> (~u_input.a % 32u), ~u_input.b.x)));
    global0 = reverseBits(reverseBits(_wgslsmith_mult_vec2_i32(_wgslsmith_add_vec2_i32(u_input.b.zx, vec2<i32>(-496i, global1[_wgslsmith_index_u32(0u, 20u)])), u_input.b.xy & u_input.b.xy))) << (_wgslsmith_add_vec2_u32(vec2<u32>(countOneBits(~82637u), _wgslsmith_clamp_u32(_wgslsmith_clamp_u32(1u, 1u, 21569u), firstTrailingBit(58016u), u_input.a)), select(_wgslsmith_div_vec2_u32(vec2<u32>(72924u, u_input.a) & vec2<u32>(u_input.a, u_input.e), select(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(u_input.a, 0u), true)), ~vec2<u32>(1u, 1u), ~u_input.d < _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d, u_input.b.x, global0.x, 4557i), u_input.c))) % vec2<u32>(32u));
    let var_0 = _wgslsmith_f_op_f32(trunc(140f));
    var var_1 = _wgslsmith_f_op_f32(var_0 + var_0);
    var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_0, 1f))) + -187f), var_0));
    return 39078i;
}

fn func_2() -> vec4<bool> {
    let var_0 = vec3<i32>(-(~(-1i)), func_3(), 28634i);
    global0 = -(vec2<i32>(~var_0.x, _wgslsmith_sub_i32(abs(-41659i), firstTrailingBit(-5488i))) << (min(vec2<u32>(55947u, _wgslsmith_mult_u32(0u, u_input.a)), _wgslsmith_add_vec2_u32(~vec2<u32>(u_input.a, 38956u), ~vec2<u32>(u_input.a, 4294967295u))) % vec2<u32>(32u)));
    global1 = array<i32, 20>();
    var var_1 = -var_0.x;
    let var_2 = ~vec4<u32>(~((u_input.e << (58166u % 32u)) >> (~4294967295u % 32u)), ~_wgslsmith_clamp_u32(reverseBits(13826u), 25247u >> (u_input.a % 32u), u_input.a << (4294967295u % 32u)), u_input.e, ~(1u >> (u_input.a % 32u)) << (14502u % 32u));
    return vec4<bool>(any(vec4<bool>(true, true, true, true)), true, !(4294967295u > var_2.x), any(!select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, false), true)));
}

fn func_1() -> vec4<bool> {
    var var_0 = vec2<bool>(false, all(select(vec3<bool>(true, true, true), !select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), true), (u_input.a << (1u % 32u)) > ~78909u)));
    let var_1 = -1314f;
    global1 = array<i32, 20>();
    let var_2 = select(!select(!func_2(), !(!vec4<bool>(true, var_0.x, false, false)), vec4<bool>(var_0.x, any(vec3<bool>(true, false, var_0.x)), var_0.x & var_0.x, true)), vec4<bool>(true, var_0.x, true, var_0.x), !(!(!vec4<bool>(false, true, var_0.x, var_0.x))));
    let var_3 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-273f))))), var_1) + _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(2162f, var_1))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_1, -116f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-573f, var_1) - vec2<f32>(1033f, 1186f))))))));
    return vec4<bool>(any(var_2.zyz), any(vec2<bool>(false, var_0.x)), !var_2.x, var_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<i32, 20>();
    let var_0 = Struct_1(!(!select(vec4<bool>(false, false, true, false), func_1(), true)), 0i);
    let var_1 = Struct_1(func_1(), 1i);
    var var_2 = 419f;
    var var_3 = vec3<u32>(~u_input.e, ~firstTrailingBit(_wgslsmith_mult_u32(abs(0u), u_input.a)), ~(~firstLeadingBit(38466u)));
    var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -702f)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>((i32(-1i) * -2147483647i) & -(0i & var_0.b), 771i, _wgslsmith_div_i32(-u_input.c.x, _wgslsmith_mult_i32(global1[_wgslsmith_index_u32(max(u_input.e, 0u), 20u)], _wgslsmith_mod_i32(-2147483647i, global1[_wgslsmith_index_u32(var_3.x, 20u)])))), -476f, select(select(u_input.c.zyz << (vec3<u32>(21175u, 8712u, 7901u) % vec3<u32>(32u)), vec3<i32>(global1[_wgslsmith_index_u32(75323u, 20u)], 13163i, var_0.b), true | var_1.a.x) | (vec3<i32>(global0.x, 1452i, global1[_wgslsmith_index_u32(0u, 20u)]) << (~vec3<u32>(4294967295u, 22843u, 52817u) % vec3<u32>(32u))), vec3<i32>(-1i) * -u_input.c.xzw, var_1.a.xxx));
}


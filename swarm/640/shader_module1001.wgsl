struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: f32,
    b: vec4<f32>,
    c: Struct_1,
    d: vec3<f32>,
}

struct Struct_3 {
    a: bool,
    b: vec4<bool>,
    c: i32,
    d: Struct_2,
    e: vec3<u32>,
}

struct Struct_4 {
    a: vec3<f32>,
    b: bool,
}

struct Struct_5 {
    a: vec2<f32>,
    b: vec3<i32>,
    c: Struct_1,
    d: i32,
    e: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: vec2<u32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 29>;

var<private> global1: vec2<u32> = vec2<u32>(4294967295u, 22720u);

var<private> global2: bool = true;

var<private> global3: Struct_1;

var<private> global4: vec2<i32>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: Struct_3, arg_1: bool) -> vec4<bool> {
    global1 = vec2<u32>(firstTrailingBit(global0[_wgslsmith_index_u32(reverseBits(0u), 29u)]), u_input.c.x);
    var var_0 = Struct_5(vec2<f32>(103f, -1535f), vec3<i32>(reverseBits(-max(arg_0.c, -1i)), global4.x, -23298i), arg_0.d.c, -48452i, 1i);
    global4 = _wgslsmith_add_vec2_i32(firstTrailingBit(_wgslsmith_mod_vec2_i32(vec2<i32>(global4.x, -2147483647i) << (vec2<u32>(u_input.b.x, 0u) % vec2<u32>(32u)), var_0.b.yz) >> (abs(vec2<u32>(44271u, 12059u)) % vec2<u32>(32u))), -var_0.b.zz);
    let var_1 = u_input.c | (u_input.c << (~u_input.c % vec4<u32>(32u)));
    global0 = array<u32, 29>();
    return arg_0.b;
}

fn func_2() -> Struct_1 {
    var var_0 = ~(~_wgslsmith_mod_u32(u_input.c.x, 0u));
    let var_1 = false;
    global4 = vec2<i32>(_wgslsmith_sub_i32(reverseBits(-global4.x), 1i), select(-8145i, global4.x & 6515i, !var_1));
    var_0 = u_input.b.x;
    let var_2 = select(vec4<bool>(var_1 && !all(vec3<bool>(false, var_1, false)), true, true, all(select(vec4<bool>(true, true, true, var_1), vec4<bool>(true, var_1, false, true), var_1))), !select(!vec4<bool>(true, false, var_1, var_1), select(func_3(Struct_3(var_1, vec4<bool>(true, var_1, false, var_1), -3523i, Struct_2(122f, vec4<f32>(-460f, 534f, -2517f, -610f), Struct_1(global0[_wgslsmith_index_u32(1u, 29u)]), vec3<f32>(720f, -186f, 860f)), vec3<u32>(u_input.b.x, 49653u, 0u)), false), !vec4<bool>(var_1, false, var_1, var_1), true), select(vec4<bool>(true, false, var_1, false), !vec4<bool>(var_1, false, true, false), var_1)), var_1);
    return Struct_1(global3.a);
}

fn func_1(arg_0: u32, arg_1: vec4<u32>, arg_2: f32) -> Struct_5 {
    global2 = true;
    var var_0 = arg_1;
    let var_1 = func_2();
    var_0 = abs((u_input.c & ~select(vec4<u32>(arg_0, 1u, 87709u, 68111u), vec4<u32>(53455u, 1u, 46118u, 4294967295u), vec4<bool>(false, false, true, false))) << (~_wgslsmith_mod_vec4_u32(vec4<u32>(arg_0, 0u, 0u, 1u), vec4<u32>(arg_0, 29970u, arg_0, 1u)) % vec4<u32>(32u)));
    var var_2 = true;
    return Struct_5(vec2<f32>(759f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_2)))), select(-select(vec3<i32>(global4.x, -2147483647i, global4.x) | vec3<i32>(19263i, -2147483647i, global4.x), -vec3<i32>(-50309i, global4.x, -2147483647i), vec3<bool>(true, true, true)), select(firstLeadingBit(vec3<i32>(-12265i, global4.x, 9957i)), vec3<i32>(2147483647i, global4.x, global4.x), true) << (_wgslsmith_div_vec3_u32(~arg_1.xyz, arg_1.xzy) % vec3<u32>(32u)), vec3<bool>(all(vec2<bool>(true, true)), !any(vec4<bool>(false, false, false, true)), all(vec4<bool>(true, true, true, true)))), Struct_1(~0u), _wgslsmith_dot_vec4_i32(firstLeadingBit(vec4<i32>(reverseBits(global4.x), 2147483647i, abs(global4.x), _wgslsmith_sub_i32(-1i, -13628i))), (vec4<i32>(-1i) * -vec4<i32>(global4.x, global4.x, global4.x, 2147483647i)) >> (vec4<u32>(global3.a, select(global3.a, 1u, false), global0[_wgslsmith_index_u32(_wgslsmith_div_u32(68297u, global3.a), 29u)], max(13067u, u_input.a)) % vec4<u32>(32u))), -global4.x);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = Struct_1(~(~40598u >> (global0[_wgslsmith_index_u32(~4294967295u, 29u)] % 32u)) << (~global3.a % 32u));
    global3 = Struct_1(~1u);
    var var_0 = func_1(firstLeadingBit(~(~(~u_input.c.x))), abs(u_input.c), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -464f), -206f)));
    global0 = array<u32, 29>();
    global1 = u_input.b | select(u_input.c.yz, vec2<u32>(33438u, ~(u_input.d | global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global1.x, 29u)], 29u)])), !(all(vec2<bool>(true, true)) && true));
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(772f))))), _wgslsmith_f_op_f32(-581f * -1713f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_0.a.x)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1590f, var_0.a.x))))), var_0.a.x);
    let var_2 = vec2<f32>(var_1.x, -1156f);
    var var_3 = var_0.c;
    let x = u_input.a;
    s_output = StorageBuffer(select(global0[_wgslsmith_index_u32(global3.a, 29u)], func_1(~_wgslsmith_add_u32(70942u, u_input.d), u_input.c, _wgslsmith_f_op_f32(sign(-942f))).c.a, _wgslsmith_dot_vec3_u32(u_input.c.wxy, u_input.c.wwy) >= abs(abs(4294967295u))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-774f, -116f, var_0.a.x))), var_1.xwx)), vec3<f32>(_wgslsmith_f_op_f32(round(-374f)), func_1(var_0.c.a & 78090u, vec4<u32>(global3.a, var_3.a, global1.x, 69471u), -360f).a.x, _wgslsmith_f_op_f32(-var_2.x)))), _wgslsmith_clamp_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(~117727u, var_0.c.a), u_input.b), vec2<u32>(~global3.a | _wgslsmith_div_u32(var_3.a, 1u), 28298u), vec2<u32>(15670u, ~global0[_wgslsmith_index_u32(firstTrailingBit(1u), 29u)])), abs(abs(~u_input.c.wxw)));
}


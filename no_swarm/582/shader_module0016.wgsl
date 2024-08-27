struct Struct_1 {
    a: i32,
    b: u32,
    c: vec4<bool>,
    d: bool,
    e: vec2<u32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: u32,
    c: i32,
}

struct Struct_3 {
    a: u32,
    b: vec4<u32>,
    c: Struct_1,
    d: u32,
}

struct Struct_4 {
    a: i32,
    b: vec4<i32>,
    c: bool,
    d: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 28>;

var<private> global1: Struct_3;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_2(arg_0: Struct_4, arg_1: Struct_2) -> vec4<u32> {
    global1 = Struct_3(~(~max(arg_0.d.b, global1.d)), ~global1.b, Struct_1(1i, _wgslsmith_sub_u32(1u, _wgslsmith_mult_u32(select(u_input.c, arg_0.d.b, false), reverseBits(50269u))), global1.c.c, arg_0.c, global1.c.e), ~_wgslsmith_mult_u32(arg_1.b, arg_0.d.b));
    global0 = array<i32, 28>();
    var var_0 = arg_1;
    var var_1 = u_input.a;
    let var_2 = var_0.c;
    return global1.b;
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_3) -> vec3<bool> {
    global0 = array<i32, 28>();
    global0 = array<i32, 28>();
    var var_0 = global1.c.a;
    var var_1 = Struct_4(global1.c.a, u_input.b, true, Struct_2(vec3<bool>(false, global1.c.c.x, true), ~(~max(arg_1.a, arg_1.c.b)), _wgslsmith_add_i32(1i, select(global0[_wgslsmith_index_u32(0u, 28u)], global1.c.a, false)) & min(2147483647i | arg_0.x, _wgslsmith_dot_vec4_i32(u_input.b, u_input.b))));
    let var_2 = Struct_4(_wgslsmith_mod_i32(-23132i, arg_1.c.a), reverseBits(var_1.b) & _wgslsmith_div_vec4_i32(~max(u_input.b, u_input.b), vec4<i32>(arg_0.x, var_1.d.c, -46997i, 0i)), true, var_1.d);
    return vec3<bool>(true, false, true);
}

fn func_1(arg_0: bool, arg_1: bool) -> Struct_3 {
    var var_0 = min(~firstLeadingBit(max(reverseBits(vec4<u32>(u_input.c, u_input.c, 0u, 4294967295u)), func_2(Struct_4(global1.c.a, u_input.b, false, Struct_2(vec3<bool>(arg_0, false, false), u_input.c, global0[_wgslsmith_index_u32(0u, 28u)])), Struct_2(global1.c.c.zxy, global1.c.e.x, 26461i)))), ~_wgslsmith_sub_vec4_u32(global1.b, ~(~global1.b)));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(276f)));
    var var_2 = _wgslsmith_sub_u32(var_0.x, firstLeadingBit(_wgslsmith_dot_vec2_u32(select(vec2<u32>(0u, 4294967295u), var_0.xx, !vec2<bool>(arg_0, false)), ~global1.c.e)));
    var var_3 = global1.c.a >= ((2147483647i >> (countOneBits(~1u) % 32u)) | global0[_wgslsmith_index_u32(~max(var_0.x, 21543u), 28u)]);
    var_3 = true;
    return Struct_3(func_2(Struct_4(global1.c.a, -vec4<i32>(global1.c.a, 1i, global1.c.a, global1.c.a), _wgslsmith_f_op_f32(1532f - 335f) >= _wgslsmith_div_f32(var_1, var_1), Struct_2(select(vec3<bool>(arg_1, arg_1, arg_0), vec3<bool>(false, arg_1, false), arg_0), 1u, 14201i)), Struct_2(select(select(vec3<bool>(arg_1, arg_1, true), global1.c.c.zwz, global1.c.c.zyz), func_3(vec2<i32>(global1.c.a, 25434i), Struct_3(8536u, global1.b, global1.c, global1.c.e.x)), !arg_0), global1.b.x, firstLeadingBit(0i << (0u % 32u)))).x, vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 1u, 4294967295u), var_0.zwy) << (22128u % 32u), 0u, min(firstTrailingBit(firstTrailingBit(28579u)), var_0.x), abs(u_input.c)), Struct_1(global1.c.a, ~(min(1u, u_input.c) & global1.d), select(!global1.c.c, vec4<bool>(!arg_0, false, any(global1.c.c.wzx), any(vec4<bool>(false, false, true, true))), select(!arg_0, true, true)), true, vec2<u32>(~(~global1.d), ~_wgslsmith_add_u32(u_input.c, var_0.x))), _wgslsmith_dot_vec3_u32(global1.b.xyw, var_0.yxz >> (_wgslsmith_clamp_vec3_u32(var_0.wyw & var_0.yww, ~vec3<u32>(var_0.x, 4294967295u, 4294967295u), ~vec3<u32>(global1.c.e.x, 4294967295u, var_0.x)) % vec3<u32>(32u))));
}

fn func_4(arg_0: Struct_3) -> StorageBuffer {
    var var_0 = _wgslsmith_mult_vec4_i32(~vec4<i32>(global0[_wgslsmith_index_u32(0u, 28u)], 1i, 25040i, arg_0.c.a), ~u_input.b);
    let var_1 = select(vec4<bool>(false, _wgslsmith_mult_i32(0i, firstTrailingBit(global0[_wgslsmith_index_u32(arg_0.b.x, 28u)])) >= 1i, all(vec3<bool>(true, !global1.c.c.x, global1.c.c.x)), arg_0.c.c.x), vec4<bool>(true, abs(firstLeadingBit(u_input.c)) <= ~u_input.c, false, _wgslsmith_mod_i32(global1.c.a, 2147483647i) <= global1.c.a), false);
    global0 = array<i32, 28>();
    let var_2 = vec4<i32>(arg_0.c.a, min(_wgslsmith_dot_vec4_i32(countOneBits(u_input.b), vec4<i32>(2147483647i, global0[_wgslsmith_index_u32(global1.a, 28u)], 17115i, 1i)), -1i) | _wgslsmith_dot_vec4_i32(abs(vec4<i32>(global0[_wgslsmith_index_u32(u_input.c, 28u)], -1i, var_0.x, 2147483647i)), u_input.b), global0[_wgslsmith_index_u32(103853u, 28u)], -2147483647i);
    let var_3 = _wgslsmith_f_op_f32(f32(-1f) * -1046f);
    return StorageBuffer(vec2<u32>(max(~34587u, u_input.c) >> ((global1.c.e.x | firstLeadingBit(55394u)) % 32u), _wgslsmith_mult_u32(abs(countOneBits(arg_0.b.x)), _wgslsmith_clamp_u32(~arg_0.c.e.x, max(0u, global1.a), func_2(Struct_4(arg_0.c.a, vec4<i32>(0i, -21141i, global0[_wgslsmith_index_u32(arg_0.d, 28u)], u_input.a), false, Struct_2(vec3<bool>(arg_0.c.d, global1.c.d, global1.c.d), 4294967295u, global1.c.a)), Struct_2(var_1.xwz, 28489u, u_input.b.x)).x))), select(func_1(var_1.x, !any(vec3<bool>(true, var_1.x, var_1.x))).d, _wgslsmith_mod_u32(89765u, _wgslsmith_clamp_u32(arg_0.a, 4294967295u, ~u_input.c)), true));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = min(global1.c.e, vec2<u32>(~_wgslsmith_sub_u32(_wgslsmith_add_u32(global1.d, u_input.c), _wgslsmith_clamp_u32(0u, 0u, u_input.c)), 1u));
    var_0 = vec2<u32>(0u, _wgslsmith_clamp_u32(~u_input.c, 4294967295u, 9795u));
    let x = u_input.a;
    s_output = func_4(func_1(!(!global1.c.d && global1.c.d), global1.c.c.x));
}


struct Struct_1 {
    a: vec4<bool>,
    b: i32,
    c: i32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec3<u32>,
    c: Struct_1,
    d: bool,
    e: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: Struct_1,
    d: vec4<i32>,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec3<i32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: i32,
    d: vec3<i32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<bool>(false, true, false, false), 21546i, 2147483647i);

var<private> global1: array<u32, 9> = array<u32, 9>(4294967295u, 1u, 1u, 91381u, 4294967295u, 118941u, 1u, 0u, 58668u);

var<private> global2: f32 = 1704f;

var<private> global3: array<Struct_3, 10>;

var<private> global4: Struct_3;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: Struct_3, arg_1: vec3<u32>) -> u32 {
    var var_0 = _wgslsmith_div_u32(~_wgslsmith_mod_u32(abs(countOneBits(1u)), 62887u), select(~global4.a.b.x, firstTrailingBit(~(17076u << (arg_1.x % 32u))), global0.a.x));
    let var_1 = _wgslsmith_clamp_vec3_u32(arg_0.a.b, ~max(select(arg_1, arg_1, vec3<bool>(true, false, global4.b.a.x)), vec3<u32>(7130u, u_input.d.x, 28536u)) & ~(~arg_0.a.b >> ((vec3<u32>(32364u, arg_0.a.b.x, 1u) & vec3<u32>(u_input.d.x, global4.a.b.x, u_input.d.x)) % vec3<u32>(32u))), select(~global4.a.b ^ arg_0.a.b, vec3<u32>(~u_input.a, u_input.a, global4.a.b.x), any(!arg_0.b.a.xzw)));
    var var_2 = Struct_1(select(select(global0.a, global0.a, true), arg_0.b.a, vec4<bool>(false, (var_1.x < 21506u) && !global4.b.a.x, arg_0.e.x != all(vec4<bool>(true, global0.a.x, false, global0.a.x)), arg_0.e.x)), ~_wgslsmith_dot_vec4_i32(-arg_0.d | vec4<i32>(1i, 0i, -19315i, -66071i), abs(arg_0.d)), 47176i);
    let var_3 = _wgslsmith_div_vec4_u32(select(firstTrailingBit(abs(vec4<u32>(22376u, arg_1.x, var_1.x, global1[_wgslsmith_index_u32(14682u, 9u)]))), reverseBits(select(~vec4<u32>(1420u, 112585u, global1[_wgslsmith_index_u32(var_1.x, 9u)], global1[_wgslsmith_index_u32(global4.a.b.x, 9u)]), reverseBits(vec4<u32>(global1[_wgslsmith_index_u32(arg_0.a.b.x, 9u)], 21357u, arg_0.a.b.x, global4.a.b.x)), select(vec4<bool>(false, var_2.a.x, true, global4.a.d), global0.a, var_2.a))), true), abs(~(~(vec4<u32>(77478u, var_1.x, var_1.x, var_1.x) & vec4<u32>(global4.a.b.x, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(arg_0.a.b.x, 9u)], 9u)], arg_1.x, arg_1.x)))));
    var_0 = _wgslsmith_dot_vec4_u32(var_3, ~_wgslsmith_sub_vec4_u32(vec4<u32>(_wgslsmith_div_u32(arg_1.x, 29212u), arg_0.a.b.x << (global1[_wgslsmith_index_u32(41452u, 9u)] % 32u), 29575u, arg_0.a.b.x), var_3));
    return ~(~_wgslsmith_div_u32(9271u, max(14342u, _wgslsmith_mult_u32(48888u, 34427u))));
}

fn func_4(arg_0: vec2<u32>, arg_1: i32) -> u32 {
    var var_0 = global4.c;
    let var_1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -275f))))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1578f))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(1000f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -888f)))), -1047f, true)), true));
    global1 = array<u32, 9>();
    var var_2 = -vec2<i32>(firstLeadingBit(global4.a.c.b), var_0.c);
    global2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(2475f + _wgslsmith_f_op_f32(-var_1)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1) * _wgslsmith_f_op_f32(var_1 * var_1)), ~79187u > (global1[_wgslsmith_index_u32(1u, 9u)] ^ 0u)))) * _wgslsmith_f_op_f32(var_1 - _wgslsmith_f_op_f32(var_1 + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(1621f)))))));
    return 63741u;
}

fn func_2(arg_0: vec2<bool>, arg_1: vec4<i32>, arg_2: bool) -> vec4<u32> {
    let var_0 = global4.a;
    var var_1 = true | arg_2;
    let var_2 = !var_0.d;
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -864f));
    let var_4 = !global4.c.a.xwy;
    return vec4<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(~(var_0.b >> (vec3<u32>(u_input.d.x, 0u, global1[_wgslsmith_index_u32(59723u, 9u)]) % vec3<u32>(32u))), vec3<u32>(global4.a.b.x, _wgslsmith_div_u32(var_0.b.x, global4.a.b.x), 0u), global4.a.b), ~global4.a.b), global4.a.b.x, 33316u, func_4(vec2<u32>(17124u << (select(38374u, global1[_wgslsmith_index_u32(0u, 9u)], global0.a.x) % 32u), 4294967295u << (func_3(Struct_3(global4.a, var_0.c, global4.c, arg_1, vec4<bool>(var_4.x, var_2, arg_0.x, false)), vec3<u32>(0u, 1u, u_input.d.x)) % 32u)), var_0.c.b));
}

fn func_5(arg_0: vec4<u32>, arg_1: vec2<bool>, arg_2: bool) -> vec3<u32> {
    global1 = array<u32, 9>();
    var var_0 = ~max(~_wgslsmith_clamp_vec4_u32(arg_0, vec4<u32>(global4.a.b.x, 1u, 4294967295u, 4294967295u), arg_0) | abs(arg_0), _wgslsmith_mod_vec4_u32(vec4<u32>(global4.a.b.x, u_input.d.x, 1u, global4.a.b.x), vec4<u32>(1372u, 0u, u_input.d.x, 1u)) >> (vec4<u32>(countOneBits(u_input.d.x), abs(global4.a.b.x), func_4(arg_0.xy, 29882i), ~92470u) % vec4<u32>(32u)));
    let var_1 = global4.a;
    let var_2 = global4.b;
    let var_3 = vec4<f32>(-947f, _wgslsmith_f_op_f32(min(-1315f, 1305f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-370f))), -898f)))), -1390f);
    return _wgslsmith_div_vec3_u32(vec3<u32>(0u, abs(_wgslsmith_dot_vec3_u32(vec3<u32>(29159u, 0u, arg_0.x), vec3<u32>(arg_0.x, 23603u, u_input.a))), global1[_wgslsmith_index_u32(~(~(~arg_0.x)), 9u)]), vec3<u32>(arg_0.x, firstTrailingBit(4294967295u), firstLeadingBit(40747u)));
}

fn func_1(arg_0: vec3<u32>) -> vec2<u32> {
    var var_0 = global3[_wgslsmith_index_u32(u_input.a & countOneBits(u_input.d.x), 10u)];
    let var_1 = var_0.a.d && false;
    let var_2 = 1f;
    global2 = var_2;
    let var_3 = Struct_2(vec4<bool>(!var_0.a.e, true, global4.c.a.x, _wgslsmith_f_op_f32(-var_2) >= -1029f), ~func_5(~func_2(global4.e.wy, global4.d, false), select(select(vec2<bool>(true, var_1), vec2<bool>(var_1, var_0.a.c.a.x), var_1), vec2<bool>(true, true), global4.b.a.zy), 1i != _wgslsmith_clamp_i32(9657i, var_0.b.c, u_input.b.x)), var_0.b, firstTrailingBit(-_wgslsmith_add_i32(0i, 0i)) <= ~abs(var_0.d.x), all(global4.a.c.a.zw));
    return min(reverseBits(u_input.d), var_0.a.b.zx) >> (~(~arg_0.zy & (arg_0.yx ^ u_input.d)) % vec2<u32>(32u));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(firstTrailingBit(max(max(global4.a.b.yx, vec2<u32>(11778u, 45039u)), func_1(global4.a.b)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-464f, 281f, global0.a.x)) + -256f) + -211f), 1f)), u_input.c.x, vec3<i32>(global0.b, max(_wgslsmith_clamp_i32(-5720i, global4.c.c, abs(global4.d.x)), _wgslsmith_mod_i32(firstTrailingBit(u_input.b.x), global0.b)), _wgslsmith_dot_vec4_i32(global4.d, vec4<i32>(_wgslsmith_dot_vec4_i32(global4.d, vec4<i32>(-26490i, 4651i, 0i, global4.a.c.b)), _wgslsmith_sub_i32(global0.c, global4.c.b), global4.c.b, firstLeadingBit(global4.d.x)))), vec2<f32>(1296f, -175f));
}


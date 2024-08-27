struct Struct_1 {
    a: vec2<bool>,
    b: vec2<i32>,
    c: vec4<u32>,
}

struct Struct_2 {
    a: i32,
    b: vec2<bool>,
    c: f32,
    d: i32,
}

struct Struct_3 {
    a: vec2<i32>,
    b: Struct_1,
    c: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: vec4<i32>,
    d: vec2<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 10>;

var<private> global1: array<vec3<i32>, 2>;

var<private> global2: vec4<i32>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_2, arg_1: bool) -> i32 {
    let var_0 = Struct_3(_wgslsmith_sub_vec2_i32(~u_input.d, (_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.d.x, 2147483647i), u_input.c.yx) ^ vec2<i32>(u_input.b.x, arg_0.a)) >> (_wgslsmith_sub_vec2_u32(~vec2<u32>(u_input.e.x, 4294967295u), ~vec2<u32>(u_input.e.x, u_input.e.x)) % vec2<u32>(32u))), Struct_1(select(select(select(arg_0.b, arg_0.b, arg_0.b), vec2<bool>(arg_1, false), !vec2<bool>(arg_1, arg_0.b.x)), !arg_0.b, arg_1), abs((global2.yw ^ vec2<i32>(arg_0.a, global2.x)) | reverseBits(global2.yw)), firstTrailingBit(firstTrailingBit(vec4<u32>(u_input.e.x, 7838u, 0u, 24045u)))), 0i);
    let var_1 = select(select(vec3<bool>(!all(arg_0.b), true, true), !select(select(vec3<bool>(true, true, false), vec3<bool>(arg_0.b.x, var_0.b.a.x, arg_0.b.x), vec3<bool>(true, false, arg_0.b.x)), vec3<bool>(false, arg_0.b.x, true), vec3<bool>(false, true, false)), vec3<bool>(_wgslsmith_add_u32(var_0.b.c.x, 14402u) != ~u_input.e.x, true, !(arg_0.c == 172f))), select(vec3<bool>(arg_0.b.x, (arg_1 || true) != true, any(global0[_wgslsmith_index_u32(~var_0.b.c.x, 10u)])), !select(vec3<bool>(arg_1, var_0.b.a.x, arg_0.b.x), select(vec3<bool>(arg_0.b.x, var_0.b.a.x, arg_1), vec3<bool>(arg_0.b.x, arg_1, true), false), select(vec3<bool>(false, arg_1, arg_0.b.x), vec3<bool>(arg_0.b.x, var_0.b.a.x, false), false)), !(!(!vec3<bool>(arg_0.b.x, var_0.b.a.x, false)))), vec3<bool>(var_0.b.a.x, arg_1, all(vec3<bool>(true, true, true))));
    let var_2 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.c) * 2197f)))));
    global1 = array<vec3<i32>, 2>();
    global2 = ~u_input.c;
    return ~u_input.d.x;
}

fn func_2(arg_0: u32) -> Struct_2 {
    var var_0 = 434i;
    return Struct_2(~(-func_3(Struct_2(u_input.c.x, vec2<bool>(true, false), -2040f, u_input.c.x), true)), !select(select(vec2<bool>(true, false), vec2<bool>(true, false), select(vec2<bool>(false, true), vec2<bool>(true, false), false)), vec2<bool>(true, true), true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(1490f)), -960f)) + _wgslsmith_f_op_f32(select(-213f, _wgslsmith_div_f32(-1000f, 1651f), true)))), ~_wgslsmith_mod_i32(~_wgslsmith_clamp_i32(-1i, u_input.b.x, global2.x), ~countOneBits(u_input.c.x)));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: i32) -> bool {
    let var_0 = global1[_wgslsmith_index_u32(abs(~arg_1.c.x), 2u)];
    let var_1 = Struct_3(firstLeadingBit(global2.wz), Struct_1(!arg_1.a, arg_1.b, arg_1.c), i32(-1i) * -var_0.x);
    let var_2 = _wgslsmith_mod_vec3_u32(vec3<u32>(11125u, ~u_input.e.x, var_1.b.c.x), firstTrailingBit(abs(~(~arg_1.c.zwy))));
    var var_3 = var_2.zy;
    let var_4 = Struct_3(-_wgslsmith_add_vec2_i32(select(~vec2<i32>(arg_1.b.x, arg_0.a), _wgslsmith_add_vec2_i32(vec2<i32>(u_input.a.x, -40196i), vec2<i32>(2147483647i, 4892i)), !arg_0.b.x), global2.zz), Struct_1(!arg_1.a, arg_1.b, firstTrailingBit(select(vec4<u32>(1u, 35547u, arg_1.c.x, u_input.e.x), arg_1.c, global0[_wgslsmith_index_u32(firstTrailingBit(17647u), 10u)]))), var_1.c);
    return !all(!select(select(vec3<bool>(true, false, false), vec3<bool>(var_1.b.a.x, false, var_4.b.a.x), var_4.b.a.x), select(vec3<bool>(false, true, false), vec3<bool>(arg_0.b.x, false, arg_0.b.x), vec3<bool>(true, arg_0.b.x, arg_0.b.x)), vec3<bool>(true, arg_0.b.x, arg_1.a.x)));
}

fn func_1(arg_0: vec4<u32>) -> bool {
    var var_0 = true;
    var var_1 = 1i;
    var_0 = func_4(func_2(~u_input.e.x), Struct_1(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, false), true), vec2<bool>(all(vec3<bool>(true, true, false)), any(vec3<bool>(true, false, true)))), abs(max(u_input.c.yz, vec2<i32>(2265i, -1i) ^ vec2<i32>(u_input.b.x, 2147483647i))), arg_0 >> (abs(firstTrailingBit(vec4<u32>(50998u, 0u, 14568u, u_input.e.x))) % vec4<u32>(32u))), _wgslsmith_mult_i32(func_2(arg_0.x).d, u_input.d.x & global2.x));
    global2 = max(firstLeadingBit((vec4<i32>(-1i) * -u_input.b) & (u_input.c & countOneBits(u_input.c))), u_input.b);
    let var_2 = arg_0.yx;
    return u_input.b.x <= (_wgslsmith_div_i32(_wgslsmith_mod_i32(_wgslsmith_mod_i32(27003i, 37052i), global2.x), u_input.a.x) & global2.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(u_input.d.x, select(vec2<bool>(!any(vec3<bool>(true, false, true)), all(vec2<bool>(false, true))), select(vec2<bool>(true, true), vec2<bool>(true, true), func_1(~vec4<u32>(u_input.e.x, 0u, 1u, 0u))), func_2(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 15391u, 1u, 27432u), abs(vec4<u32>(36544u, 96336u, 27582u, 2868u)))).b), -558f, 3881i);
    global1 = array<vec3<i32>, 2>();
    let var_1 = -vec3<i32>(1i, ~u_input.b.x, -abs(u_input.a.x));
    var var_2 = Struct_1(select(var_0.b, !var_0.b, func_2(5103u >> (_wgslsmith_div_u32(u_input.e.x, u_input.e.x) % 32u)).b), var_1.zx, countOneBits(select(~vec4<u32>(u_input.e.x, u_input.e.x, u_input.e.x, 31280u), select(vec4<u32>(u_input.e.x, u_input.e.x, 33624u, u_input.e.x), vec4<u32>(u_input.e.x, u_input.e.x, 0u, u_input.e.x), select(global0[_wgslsmith_index_u32(u_input.e.x, 10u)], vec4<bool>(var_0.b.x, true, var_0.b.x, false), vec4<bool>(true, var_0.b.x, var_0.b.x, true))), vec4<bool>(true, true, true, true))));
    let var_3 = Struct_1(var_2.a, firstLeadingBit(countOneBits(min(global2.yy & global2.xx, abs(vec2<i32>(-38028i, var_0.a))))), vec4<u32>(u_input.e.x, 4294967295u, abs(~4294967295u), _wgslsmith_sub_u32(~u_input.e.x, 4294967295u) >> (_wgslsmith_mod_u32(u_input.e.x, _wgslsmith_div_u32(4294967295u, 4294967295u)) % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(u_input.e.x), var_3.c.x, -74405i);
}


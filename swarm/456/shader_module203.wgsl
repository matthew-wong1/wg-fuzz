struct Struct_1 {
    a: u32,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: u32,
    d: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
    b: vec4<u32>,
    c: vec4<i32>,
    d: vec4<u32>,
    e: f32,
}

struct Struct_4 {
    a: vec3<i32>,
    b: Struct_1,
    c: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: u32,
    d: vec3<i32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: u32,
    d: vec3<u32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 22>;

var<private> global1: vec4<i32>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_4, arg_1: Struct_3, arg_2: bool, arg_3: vec4<bool>) -> u32 {
    let var_0 = arg_0.a.x;
    global1 = _wgslsmith_mod_vec4_i32(_wgslsmith_div_vec4_i32(-vec4<i32>(-1i, 1i, 48852i, global1.x), _wgslsmith_div_vec4_i32(vec4<i32>(arg_1.c.x, -2147483647i, arg_0.a.x, u_input.a), ~arg_1.c)), vec4<i32>((0i ^ arg_0.a.x) ^ -arg_0.a.x, _wgslsmith_div_i32(-2147483647i, arg_0.a.x | 1i), global1.x, _wgslsmith_sub_i32(_wgslsmith_sub_i32(arg_1.c.x, u_input.d.x), select(-5478i, 2147483647i, arg_3.x)))) & vec4<i32>(var_0, i32(-1i) * -_wgslsmith_sub_i32(-20480i, arg_1.c.x), abs(arg_0.a.x ^ u_input.a) << (u_input.b.x % 32u), -9892i);
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global0[_wgslsmith_index_u32(arg_0.b.a, 22u)], _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(1042f, arg_0.c)))), any(!arg_3)))), -527f, arg_1.e, arg_1.e);
    var var_2 = Struct_4(vec3<i32>(-41559i, _wgslsmith_add_i32(-4039i, abs(0i << (1u % 32u))), 1i), arg_0.b, -1280f);
    global0 = array<f32, 22>();
    return 0u;
}

fn func_2() -> f32 {
    global0 = array<f32, 22>();
    let var_0 = Struct_1(~func_3(Struct_4(global1.wyx ^ vec3<i32>(33213i, -1i, global1.x), Struct_1(u_input.b.x, 0u), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.b.x, 22u)])), Struct_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-402f, global0[_wgslsmith_index_u32(u_input.b.x, 22u)], global0[_wgslsmith_index_u32(16057u, 22u)], global0[_wgslsmith_index_u32(u_input.c, 22u)])), ~vec4<u32>(u_input.b.x, 68922u, u_input.b.x, u_input.b.x), vec4<i32>(u_input.e.x, -45033i, global1.x, -29622i), firstTrailingBit(vec4<u32>(0u, u_input.c, u_input.b.x, 56196u)), -278f), !(u_input.c <= u_input.c), vec4<bool>(all(vec2<bool>(false, true)), select(false, true, true), any(vec2<bool>(false, false)), true)), ~u_input.c);
    let var_1 = vec2<u32>(31425u, func_3(Struct_4(u_input.d << (~u_input.b % vec3<u32>(32u)), Struct_1(_wgslsmith_mod_u32(50423u, var_0.b), var_0.b), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1207f), _wgslsmith_f_op_f32(floor(-1166f)))), Struct_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1123f, global0[_wgslsmith_index_u32(0u, 22u)], global0[_wgslsmith_index_u32(u_input.b.x, 22u)], -685f)) + vec4<f32>(-888f, global0[_wgslsmith_index_u32(var_0.b, 22u)], global0[_wgslsmith_index_u32(u_input.c, 22u)], -269f)), ~(~vec4<u32>(9306u, 15812u, 0u, u_input.c)), vec4<i32>(firstLeadingBit(u_input.e.x), global1.x << (1u % 32u), 1i, _wgslsmith_clamp_i32(2147483647i, 0i, 30132i)), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.c, 0u, 0u, var_0.a), vec4<u32>(var_0.b, 8778u, 0u, u_input.b.x)) | vec4<u32>(0u, var_0.a, u_input.c, 1u), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(100f + 1000f)))), select(any(select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(true, false, true))), true, true), vec4<bool>(!select(true, true, false), all(select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true))), true, true)));
    let var_2 = var_0;
    var var_3 = 260f;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(157f)));
}

fn func_1(arg_0: Struct_1) -> vec2<i32> {
    global1 = abs(vec4<i32>(i32(-1i) * -19699i, global1.x, u_input.d.x, global1.x));
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2()));
    let var_1 = ~(_wgslsmith_div_vec4_i32(vec4<i32>(global1.x, global1.x, 34887i, global1.x), vec4<i32>(u_input.d.x, -24589i, 0i, 0i)) | _wgslsmith_mult_vec4_i32(vec4<i32>(10567i, -2147483647i, 2147483647i, u_input.e.x) ^ vec4<i32>(-1i, global1.x, -1i, 2147483647i), vec4<i32>(global1.x, global1.x, global1.x, -26030i))) << (_wgslsmith_div_vec4_u32(_wgslsmith_mult_vec4_u32(~vec4<u32>(103157u, u_input.b.x, 102767u, 1u), select(~vec4<u32>(0u, 0u, arg_0.a, u_input.c), ~vec4<u32>(1u, arg_0.a, 9775u, 1u), all(vec4<bool>(false, false, false, false)))), min(vec4<u32>(2905u, countOneBits(1u), u_input.b.x ^ u_input.b.x, ~1u), ~firstLeadingBit(vec4<u32>(u_input.b.x, 4294967295u, u_input.b.x, 1u)))) % vec4<u32>(32u));
    global0 = array<f32, 22>();
    let var_2 = select(true, true, all(select(vec2<bool>(true, true), vec2<bool>(true, true), any(vec2<bool>(true, true)))));
    return vec2<i32>(u_input.a, 0i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = (u_input.e.x == _wgslsmith_dot_vec2_i32(func_1(Struct_1(4294967295u, u_input.c)), ~global1.yx)) & true;
    var var_1 = Struct_1(~_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(u_input.b, vec3<u32>(15523u, 16095u, 4294967295u)), _wgslsmith_mult_vec3_u32(u_input.b, u_input.b)), ~(_wgslsmith_div_u32(~90870u, u_input.c) >> (_wgslsmith_add_u32(u_input.c, ~u_input.b.x) % 32u)));
    var var_2 = _wgslsmith_add_i32(firstLeadingBit(9367i | -global1.x), i32(-1i) * -(~(~u_input.a)));
    let var_3 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(abs(~(~u_input.b.x)), 22u)], _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.b.x, 22u)] + -606f)))), _wgslsmith_f_op_f32(floor(global0[_wgslsmith_index_u32(~(~70991u), 22u)])), -834f));
    let var_4 = Struct_4(-(_wgslsmith_clamp_vec3_i32(~vec3<i32>(u_input.e.x, -30233i, 8531i), -vec3<i32>(u_input.d.x, 1i, u_input.d.x), countOneBits(global1.yyy)) << (vec3<u32>(1u, ~4294967295u, ~var_1.a) % vec3<u32>(32u))), Struct_1(var_1.a, 41357u), _wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(u_input.b.x, 22u)])));
    var var_5 = reverseBits(29661u);
    global1 = ~vec4<i32>(var_4.a.x, _wgslsmith_mult_i32(1i, 1i), select(func_1(Struct_1(var_4.b.a, var_4.b.a)).x, ~1i, _wgslsmith_add_i32(var_4.a.x, global1.x) != global1.x), -1i);
    let x = u_input.a;
    s_output = StorageBuffer(~4294967295u, u_input.b.xy, min(37229u, _wgslsmith_add_u32(select(var_4.b.b << (4955u % 32u), firstTrailingBit(var_4.b.b), any(vec4<bool>(false, true, true, false))), var_4.b.b)), u_input.b, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(max(-1488f, _wgslsmith_f_op_f32(max(-1143f, -505f)))), _wgslsmith_f_op_f32(726f * global0[_wgslsmith_index_u32(_wgslsmith_div_u32(0u, u_input.b.x), 22u)]), _wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(122f)), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(var_4.b.a, 22u)]))))));
}


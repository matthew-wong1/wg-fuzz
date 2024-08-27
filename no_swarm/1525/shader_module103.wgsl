struct Struct_1 {
    a: vec2<bool>,
    b: vec3<u32>,
    c: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: i32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: f32,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 31>;

var<private> global1: i32 = 15550i;

var<private> global2: array<vec2<u32>, 2> = array<vec2<u32>, 2>(vec2<u32>(4294967295u, 1u), vec2<u32>(1u, 0u));

var<private> global3: Struct_2 = Struct_2(Struct_1(vec2<bool>(true, true), vec3<u32>(4294967295u, 0u, 11021u), vec2<u32>(0u, 28448u)));

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: vec2<f32>) -> i32 {
    let var_0 = arg_0;
    let var_1 = select(!(!(!vec3<bool>(global3.a.a.x, false, true))), !vec3<bool>(global3.a.a.x, !(767f > var_0.x), any(vec3<bool>(true, true, true))), true);
    var var_2 = global3.a.c.x;
    var var_3 = Struct_2(global3.a);
    global1 = -u_input.d;
    return max(reverseBits(u_input.d), ~u_input.e.x);
}

fn func_2(arg_0: vec3<u32>, arg_1: f32, arg_2: Struct_2) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_1 * -1115f))))))));
    var var_1 = _wgslsmith_sub_i32(_wgslsmith_add_i32(func_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_1, -1374f), vec2<f32>(414f, -977f), true)))), u_input.c | -16377i), -u_input.c);
    let var_2 = arg_2.a;
    var var_3 = vec3<bool>(any(vec2<bool>(false, arg_2.a.a.x)), !(false & var_2.a.x), true);
    var var_4 = Struct_1(vec2<bool>(var_2.a.x, any(select(vec3<bool>(true, false, global3.a.a.x), vec3<bool>(false, global3.a.a.x, var_3.x), vec3<bool>(true, true, false))) || true), ~vec3<u32>(6176u << (_wgslsmith_mod_u32(0u, 98724u) % 32u), (arg_0.x >> (0u % 32u)) << (~0u % 32u), ~var_2.c.x), ~min(vec2<u32>(arg_0.x << (43529u % 32u), abs(u_input.a)), vec2<u32>(~arg_2.a.b.x, min(0u, 35431u))));
    return -1i;
}

fn func_1(arg_0: i32) -> Struct_2 {
    let var_0 = global3.a.c | global3.a.b.yx;
    var var_1 = !vec2<bool>((_wgslsmith_mod_i32(arg_0, arg_0) >= func_2(vec3<u32>(13478u, 13861u, var_0.x), -349f, Struct_2(global3.a))) || false, true);
    let var_2 = vec2<i32>(firstTrailingBit(-2147483647i), ~u_input.d) ^ vec2<i32>(countOneBits(_wgslsmith_mod_i32(0i << (var_0.x % 32u), _wgslsmith_add_i32(-23731i, -609i))), -u_input.c);
    var var_3 = 31617i;
    let var_4 = global3.a;
    return Struct_2(global3.a);
}

fn func_4(arg_0: Struct_2, arg_1: vec3<f32>, arg_2: Struct_2) -> Struct_1 {
    global0 = array<vec4<u32>, 31>();
    var var_0 = vec4<f32>(-1260f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_1.x))), arg_1.x)), _wgslsmith_f_op_f32(arg_1.x * arg_1.x), -790f);
    var var_1 = arg_2;
    var var_2 = !(!select(select(select(vec4<bool>(arg_2.a.a.x, true, var_1.a.a.x, false), vec4<bool>(arg_2.a.a.x, arg_0.a.a.x, false, true), vec4<bool>(true, false, false, false)), vec4<bool>(global3.a.a.x, arg_0.a.a.x, arg_2.a.a.x, var_1.a.a.x), select(vec4<bool>(arg_2.a.a.x, arg_2.a.a.x, var_1.a.a.x, arg_0.a.a.x), vec4<bool>(arg_2.a.a.x, arg_2.a.a.x, false, arg_0.a.a.x), vec4<bool>(global3.a.a.x, var_1.a.a.x, global3.a.a.x, global3.a.a.x))), vec4<bool>(arg_2.a.a.x, true, !arg_0.a.a.x, arg_0.a.a.x), vec4<bool>(false, false, var_1.a.a.x, global3.a.a.x)));
    var var_3 = vec3<u32>(_wgslsmith_sub_u32(48558u, u_input.b ^ countOneBits(_wgslsmith_dot_vec3_u32(vec3<u32>(7750u, arg_2.a.c.x, 0u), vec3<u32>(u_input.b, 27007u, arg_2.a.c.x)))), firstLeadingBit(firstTrailingBit(_wgslsmith_mult_u32(1u, _wgslsmith_sub_u32(0u, arg_2.a.b.x)))), min(~u_input.b, 4294967295u));
    return func_1(-1196i >> (~var_3.x % 32u)).a;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = Struct_2(func_4(func_1(_wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(-1i, 2147483647i, u_input.c), u_input.e, u_input.e), _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.d, -2147483647i, u_input.e.x), u_input.e))), vec3<f32>(1f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1420f, 1000f) + _wgslsmith_f_op_f32(select(-976f, 574f, true))), 1215f), Struct_2(func_1(-u_input.d).a)));
    let var_0 = vec4<u32>(82490u, _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_dot_vec3_u32(global3.a.b, select(global3.a.b, global3.a.b, vec3<bool>(true, true, global3.a.a.x))), ~(~27015u)), ~(~max(vec2<u32>(1u, 1u), vec2<u32>(4374u, global3.a.b.x)))), ~abs(~max(global3.a.c.x, global3.a.c.x)), firstTrailingBit(_wgslsmith_sub_u32(_wgslsmith_sub_u32(func_1(0i).a.c.x, abs(global3.a.b.x)), global3.a.c.x & 4294967295u)));
    global1 = -_wgslsmith_clamp_i32(~u_input.c | u_input.c, _wgslsmith_dot_vec2_i32(u_input.e.zz, u_input.e.xx) << (1u % 32u), u_input.e.x);
    global0 = array<vec4<u32>, 31>();
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-246f)) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-144f + _wgslsmith_f_op_f32(f32(-1f) * -770f)))))));
    var var_2 = _wgslsmith_dot_vec2_i32(u_input.e.yy, -vec2<i32>(_wgslsmith_div_i32(i32(-1i) * -2147483647i, func_2(var_0.wzw, 1084f, Struct_2(Struct_1(vec2<bool>(global3.a.a.x, global3.a.a.x), global3.a.b, global3.a.c)))), max(~u_input.d, 1i)));
    var var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(488f, -907f))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(591f, var_1)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec4_i32(~select(vec4<i32>(u_input.d, u_input.d, u_input.d, u_input.c) >> (global0[_wgslsmith_index_u32(global3.a.c.x, 31u)] % vec4<u32>(32u)), _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.d, u_input.c, u_input.d, u_input.e.x), vec4<i32>(-75032i, -18200i, 2147483647i, 2147483647i), vec4<i32>(-1i, -42998i, u_input.e.x, -71566i)), var_0.x < u_input.a), firstTrailingBit(vec4<i32>(u_input.c, u_input.d, u_input.e.x, u_input.c) & vec4<i32>(u_input.d, u_input.c, -47081i, u_input.c))), _wgslsmith_div_vec4_i32(vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, u_input.d, 13082i, u_input.c) << (vec4<u32>(31395u, 45236u, 0u, 51792u) % vec4<u32>(32u)), abs(vec4<i32>(u_input.c, 2147483647i, -22737i, 46334i))), _wgslsmith_add_i32(-10573i, u_input.e.x), -8192i, func_2(~var_0.yyw, _wgslsmith_f_op_f32(min(var_1, var_1)), Struct_2(global3.a))), vec4<i32>(-_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.d, u_input.e.x, u_input.d), u_input.e), _wgslsmith_div_i32(-17055i, max(u_input.c, -2147483647i)), u_input.e.x, ~(-u_input.e.x))), 697f, 16131u, 0u);
}


struct Struct_1 {
    a: vec4<i32>,
    b: i32,
    c: u32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec4<u32>,
    d: vec4<i32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<u32>,
    c: u32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 19>;

var<private> global1: array<u32, 15> = array<u32, 15>(51776u, 4294967295u, 15305u, 91851u, 22942u, 65437u, 47056u, 1u, 4246u, 60824u, 1u, 47402u, 73200u, 3817u, 0u);

var<private> global2: vec4<i32> = vec4<i32>(80529i, -35700i, 0i, 1i);

var<private> global3: array<f32, 26>;

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: u32, arg_1: Struct_2, arg_2: u32) -> f32 {
    let var_0 = arg_1.b;
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3[_wgslsmith_index_u32(arg_1.b.c, 26u)], 1000f, global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(arg_0, 15u)], 26u)], global3[_wgslsmith_index_u32(arg_1.b.c, 26u)])))))))));
    var var_2 = global0[_wgslsmith_index_u32(0u, 19u)];
    var_2 = global0[_wgslsmith_index_u32(arg_0, 19u)];
    let var_3 = u_input.d;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.x, _wgslsmith_f_op_f32(f32(-1f) * -1434f)) + 204f)));
}

fn func_2(arg_0: vec3<u32>, arg_1: i32) -> Struct_1 {
    var var_0 = global0[_wgslsmith_index_u32(~1u, 19u)];
    let var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_3(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(1u, ~u_input.c.x), 15u)] ^ ~1u, global0[_wgslsmith_index_u32(min(0u, abs(_wgslsmith_dot_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 15u)], 15u)], var_0.b.c, var_0.b.c, arg_0.x), u_input.c))), 19u)], u_input.e.x))));
    var var_2 = abs(max(vec4<i32>(_wgslsmith_dot_vec2_i32(abs(global2.xz), _wgslsmith_mult_vec2_i32(u_input.d.xy, vec2<i32>(var_0.a, -11903i))), var_0.b.b, ~2147483647i, firstLeadingBit(54804i)), -(_wgslsmith_mod_vec4_i32(u_input.d, vec4<i32>(2501i, var_0.a, arg_1, -49865i)) & u_input.d)));
    let var_3 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(714f, -1750f, var_1, 284f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1, 1502f, -1219f, global3[_wgslsmith_index_u32(u_input.c.x, 26u)]))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(643f, var_1, global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(6380u, 15u)], 26u)], 1000f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-2133f, var_1, -1236f, global3[_wgslsmith_index_u32(4294967295u, 26u)]), vec4<f32>(global3[_wgslsmith_index_u32(39778u, 26u)], 1781f, global3[_wgslsmith_index_u32(u_input.b.x, 26u)], 229f)))))), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-254f, 1069f, 716f, _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(arg_0.x, 26u)]))))));
    var_2 = -select(_wgslsmith_clamp_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(var_0.b.a.x, arg_1, global2.x, -8428i), u_input.d) << (u_input.c % vec4<u32>(32u)), var_0.b.a ^ vec4<i32>(arg_1, var_2.x, u_input.d.x, 46825i), (u_input.d >> (u_input.c % vec4<u32>(32u))) << (_wgslsmith_sub_vec4_u32(u_input.c, u_input.c) % vec4<u32>(32u))), ~(-u_input.d), !select(vec4<bool>(true, false, false, false), select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, true), false), true));
    return var_0.b;
}

fn func_4(arg_0: i32, arg_1: u32, arg_2: Struct_1) -> vec2<bool> {
    global2 = u_input.d;
    global2 = _wgslsmith_sub_vec4_i32(-u_input.d, -vec4<i32>(global2.x, -global2.x, arg_0, firstTrailingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, u_input.d.x), arg_2.a.zy))));
    let var_0 = _wgslsmith_div_vec3_i32(max((~vec3<i32>(arg_0, -17624i, arg_0) & vec3<i32>(0i, global2.x, 28243i)) << (u_input.c.zwz % vec3<u32>(32u)), _wgslsmith_div_vec3_i32(vec3<i32>(countOneBits(u_input.d.x), -2147483647i, _wgslsmith_sub_i32(u_input.d.x, u_input.a)), u_input.d.zyy)), u_input.d.yyz);
    global0 = array<Struct_2, 19>();
    var var_1 = global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(~abs(u_input.c.x), reverseBits(abs(arg_2.c))), 19u)];
    return select(vec2<bool>(true, true), vec2<bool>(true, false), any(vec2<bool>(all(select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, true), true)), true)));
}

fn func_1(arg_0: u32) -> u32 {
    var var_0 = Struct_2(-2147483647i, Struct_1(u_input.d, ~(-8207i << (~arg_0 % 32u)), ~abs(9754u)));
    global3 = array<f32, 26>();
    let var_1 = select(abs(global1[_wgslsmith_index_u32(0u, 15u)] | global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.b.x, arg_0, 4294967295u), 15u)]) | _wgslsmith_clamp_u32(countOneBits(arg_0), _wgslsmith_add_u32(0u, 30968u) & ~arg_0, abs(max(arg_0, global1[_wgslsmith_index_u32(arg_0, 15u)]))), 49044u, true);
    var var_2 = true;
    var_2 = select(any(!func_4(global2.x, firstLeadingBit(var_0.b.c), func_2(vec3<u32>(arg_0, 1u, var_0.b.c), 1i))), firstLeadingBit(_wgslsmith_div_i32(-328i, 0i & var_0.a)) != -_wgslsmith_clamp_i32(_wgslsmith_add_i32(global2.x, -1i), -2147483647i, u_input.a), func_4(func_2(vec3<u32>(var_1 | 4294967295u, u_input.c.x, arg_0), -(u_input.d.x & 1i)).a.x, ~21015u, var_0.b).x);
    return 64096u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<u32>(~(~(~_wgslsmith_dot_vec4_u32(vec4<u32>(10375u, global1[_wgslsmith_index_u32(2554u, 15u)], 4294967295u, global1[_wgslsmith_index_u32(u_input.e.x, 15u)]), u_input.c))), 4294967295u);
    global2 = -(vec4<i32>(-1i) * -u_input.d);
    global0 = array<Struct_2, 19>();
    var var_1 = vec4<u32>(u_input.c.x, _wgslsmith_add_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(select(u_input.c, u_input.c, true), vec4<u32>(global1[_wgslsmith_index_u32(12445u, 15u)], 4294967295u, var_0.x, 4294967295u)), firstLeadingBit(_wgslsmith_mult_u32(1u, 1u))), ~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(select(4294967295u, 4294967295u, false), 15u)] & global1[_wgslsmith_index_u32(4294967295u, 15u)], 15u)]), _wgslsmith_mult_u32(1u, ~(30488u ^ _wgslsmith_div_u32(4294967295u, global1[_wgslsmith_index_u32(1u, 15u)]))), 0u);
    var var_2 = ~(~vec4<u32>(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(u_input.c.zyx, vec3<u32>(0u, var_0.x, 62987u)) << (func_1(global1[_wgslsmith_index_u32(4294967295u, 15u)]) % 32u), 15u)], countOneBits(var_1.x), 0u, ~57913u));
    var var_3 = Struct_2(select(_wgslsmith_dot_vec4_i32(max(u_input.d, vec4<i32>(-1i, 2147483647i, u_input.d.x, u_input.a)), -(~u_input.d)), 0i, !all(vec4<bool>(false, true, false, true)) & select(true, true, true)), func_2(~vec3<u32>(_wgslsmith_clamp_u32(4294967295u, 16360u, 33206u), 1u, _wgslsmith_add_u32(var_2.x, var_0.x)), u_input.a >> (var_1.x % 32u)));
    var var_4 = select(!(!select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true))), vec2<bool>(!func_4(17856i, 0u << (var_0.x % 32u), var_3.b).x, all(select(select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), false), vec3<bool>(false, true, false), vec3<bool>(true, false, false)))), !select(vec2<bool>(true, true), vec2<bool>(false, true), !func_4(global2.x, global1[_wgslsmith_index_u32(var_2.x, 15u)], var_3.b)));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(-1200f, global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(var_3.b.c, ~u_input.c.x ^ var_2.x), 26u)], 1f, 1402f), var_1.yy, global1[_wgslsmith_index_u32(~countOneBits(~u_input.b.x), 15u)] ^ u_input.c.x, vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(498f)))), global3[_wgslsmith_index_u32(26319u, 26u)], _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(global3[_wgslsmith_index_u32(0u, 26u)])), _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(var_1.x & 1u, 26u)] - global3[_wgslsmith_index_u32(abs(var_1.x), 26u)])), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-694f - _wgslsmith_div_f32(532f, global3[_wgslsmith_index_u32(var_0.x, 26u)])) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global3[_wgslsmith_index_u32(3460u, 26u)]))))));
}


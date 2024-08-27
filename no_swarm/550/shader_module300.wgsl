struct Struct_1 {
    a: f32,
    b: i32,
    c: vec3<f32>,
    d: bool,
    e: u32,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: Struct_1,
    d: Struct_2,
    e: vec4<bool>,
}

struct Struct_4 {
    a: Struct_3,
    b: vec3<bool>,
    c: Struct_2,
}

struct Struct_5 {
    a: Struct_3,
    b: Struct_4,
    c: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(4294967295u, Struct_2(59548u), Struct_1(382f, 0i, vec3<f32>(163f, 203f, -1000f), false, 7795u), Struct_2(1u), vec4<bool>(true, false, false, true));

var<private> global1: Struct_5;

var<private> global2: array<Struct_2, 21> = array<Struct_2, 21>(Struct_2(1u), Struct_2(92861u), Struct_2(40689u), Struct_2(7346u), Struct_2(88277u), Struct_2(0u), Struct_2(4294967295u), Struct_2(4294967295u), Struct_2(1u), Struct_2(1u), Struct_2(20656u), Struct_2(1u), Struct_2(4557u), Struct_2(4294967295u), Struct_2(56849u), Struct_2(4294967295u), Struct_2(4639u), Struct_2(54713u), Struct_2(0u), Struct_2(0u), Struct_2(76078u));

var<private> global3: array<i32, 23>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2(arg_0: u32) -> f32 {
    global0 = global1.b.a;
    global3 = array<i32, 23>();
    global0 = global1.b.a;
    let var_0 = _wgslsmith_sub_u32(select(7169u, arg_0, global0.e.x), _wgslsmith_mult_u32(4294967295u, _wgslsmith_mult_u32(abs(~73871u), global0.b.a)));
    var var_1 = Struct_3(global0.a, Struct_2(36673u), global0.c, Struct_2(global1.a.d.a), select(!global1.b.a.e, global1.a.e, global0.e.x));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(101f, 422f) * 1567f) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-796f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.a.c.c.x * var_1.c.c.x) + global1.a.c.a))) * -651f);
}

fn func_3(arg_0: Struct_4, arg_1: Struct_3, arg_2: Struct_3) -> i32 {
    global1 = Struct_5(Struct_3(firstLeadingBit(1u), global0.b, Struct_1(-372f, ~44521i, _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(arg_1.c.c * vec3<f32>(792f, global0.c.a, 2516f)))), any(vec2<bool>(true, true)), arg_1.b.a), Struct_2(global1.a.b.a), !vec4<bool>(arg_0.c.a < 8846u, true, true, true)), Struct_4(Struct_3(28034u, global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(1u, 55910u), 21u)], arg_1.c, Struct_2(global1.a.d.a), global0.e), global0.e.wzw, arg_0.a.b), arg_0.a.c.b);
    global1 = Struct_5(arg_0.a, Struct_4(Struct_3(_wgslsmith_mod_u32(global1.a.b.a, _wgslsmith_div_u32(arg_1.a, arg_0.a.c.e)), Struct_2(~global1.a.c.e), Struct_1(199f, arg_2.c.b, _wgslsmith_div_vec3_f32(global0.c.c, arg_0.a.c.c), arg_1.c.d, ~arg_2.a), Struct_2(1u), vec4<bool>(true, select(true, global1.a.e.x, false), 476f > global1.b.a.c.c.x, arg_2.c.d)), arg_2.e.zww, Struct_2(~global0.a)), 44127i);
    global0 = arg_2;
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -543f) * 675f);
    var var_1 = -abs(-(~(global1.c | arg_0.a.c.b)));
    return global0.c.b;
}

fn func_1(arg_0: vec3<f32>, arg_1: vec2<u32>, arg_2: bool) -> vec2<bool> {
    var var_0 = ~_wgslsmith_div_u32(arg_1.x, arg_1.x);
    var var_1 = global1.b.a.e.x;
    var var_2 = _wgslsmith_mult_vec3_u32(u_input.a, abs(_wgslsmith_add_vec3_u32(countOneBits(u_input.a), reverseBits(~vec3<u32>(34625u, global0.d.a, u_input.a.x)))));
    let var_3 = global0.d;
    var var_4 = Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(global0.c.c.x, -1000f)), _wgslsmith_f_op_f32(func_2(26723u)))), -(select(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, global1.a.c.b, -26319i, 0i), vec4<i32>(global1.b.a.c.b, 0i, -51148i, -1i)), firstTrailingBit(-1i), true) ^ func_3(global1.b, global1.b.a, global1.b.a)), vec3<f32>(_wgslsmith_f_op_f32(-global1.b.a.c.a), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_0.x)) + global0.c.c.x), 760f), _wgslsmith_f_op_f32(max(global0.c.a, -1552f))), !all(vec4<bool>(true, any(global0.e.ww), true, any(vec2<bool>(global0.e.x, global0.e.x)))), ~countOneBits(_wgslsmith_sub_u32(_wgslsmith_mult_u32(u_input.a.x, 10719u), 91826u)));
    return global1.b.a.e.zw;
}

fn func_4(arg_0: i32, arg_1: vec2<bool>) -> Struct_1 {
    let var_0 = 21486i;
    var var_1 = 40149i;
    global0 = global1.a;
    var_1 = _wgslsmith_mod_i32(reverseBits(_wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_mod_i32(global1.c, global3[_wgslsmith_index_u32(u_input.a.x, 23u)]), _wgslsmith_mod_i32(50538i, global0.c.b), -2147483647i), -(vec3<i32>(var_0, -5870i, -26946i) | vec3<i32>(18491i, 31777i, 7921i)))), 1i);
    global3 = array<i32, 23>();
    return global0.c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !select(select(select(vec3<bool>(true, global0.e.x, global0.e.x), global1.a.e.wyz, !vec3<bool>(global1.a.e.x, global1.b.a.e.x, false)), global1.b.b, !global1.a.e.xzz), select(global0.e.wxz, !global1.a.e.zyw, !vec3<bool>(global1.a.c.d, false, global1.b.a.c.d)), ~(~global0.b.a) >= 13423u);
    let var_1 = func_4(abs(global1.c), func_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.a.c.c.x, 1762f, 1000f) * _wgslsmith_f_op_vec3_f32(-global0.c.c))), vec2<u32>(~4294967295u, firstTrailingBit(abs(global0.d.a))), false & global1.b.a.c.d));
    var var_2 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(global0.c.c, vec3<f32>(_wgslsmith_f_op_f32(1853f * _wgslsmith_f_op_f32(-global0.c.a)), func_4(_wgslsmith_mult_i32(31032i, 26433i), !var_0.zz).c.x, 1000f)), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(509f, global1.b.a.c.a)), _wgslsmith_div_f32(global0.c.c.x, global0.c.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a.c.a))), var_1.c))));
    var var_3 = select(select(!vec4<bool>(global1.b.a.d.a <= 4294967295u, var_0.x, select(global1.a.c.d, false, true), var_0.x), vec4<bool>(true, var_1.d, global0.c.d, var_1.d), vec4<bool>(global0.c.d, true, !all(var_0.zz), (true && global1.a.c.d) != (global1.a.c.a < 962f))), global0.e, !select(vec4<bool>(true, var_0.x, global1.b.a.e.x, var_0.x == true), select(!vec4<bool>(global1.a.e.x, var_1.d, global0.c.d, true), global0.e, !vec4<bool>(global0.c.d, false, false, global0.e.x)), !var_0.x));
    var var_4 = -((0i >> (firstTrailingBit(~u_input.a.x) % 32u)) | (i32(-1i) * -3623i));
    var var_5 = ~(abs(select(vec3<i32>(global3[_wgslsmith_index_u32(4294967295u, 23u)], 36083i, global1.a.c.b), vec3<i32>(global3[_wgslsmith_index_u32(global1.b.a.d.a, 23u)], global0.c.b, global3[_wgslsmith_index_u32(global0.c.e, 23u)]), var_1.d)) & ~vec3<i32>(global1.a.c.b, global3[_wgslsmith_index_u32(49364u, 23u)], -2147483647i)) >> (u_input.a % vec3<u32>(32u));
    global0 = Struct_3(min(abs(_wgslsmith_dot_vec3_u32(vec3<u32>(31072u, global1.b.c.a, u_input.a.x), vec3<u32>(u_input.a.x, var_1.e, var_1.e))), select(_wgslsmith_mult_u32(var_1.e << (global1.a.d.a % 32u), var_1.e), _wgslsmith_clamp_u32(abs(0u), abs(global0.d.a), 1u), func_4(0i, select(vec2<bool>(var_3.x, false), global1.b.a.e.wy, global0.e.xw)).d)), Struct_2(var_1.e), func_4(47199i, var_0.yx), Struct_2(~max(~global1.a.b.a, ~28162u)), global1.a.e);
    var var_6 = global1.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-var_1.c));
}


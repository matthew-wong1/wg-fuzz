struct Struct_1 {
    a: vec4<bool>,
    b: bool,
    c: bool,
    d: vec4<f32>,
}

struct Struct_2 {
    a: vec4<u32>,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec3<i32>,
    c: Struct_1,
    d: Struct_2,
    e: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: array<vec4<u32>, 16>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: f32, arg_1: vec2<u32>, arg_2: u32) -> bool {
    global0 = !vec2<bool>(any(vec4<bool>(global0.x, true, global0.x, any(vec4<bool>(global0.x, global0.x, true, false)))), arg_0 <= _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(arg_0)))));
    let var_0 = Struct_2(global1[_wgslsmith_index_u32(6499u, 16u)]);
    global0 = !(!(!vec2<bool>(global0.x, false & global0.x)));
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(-1027f - _wgslsmith_f_op_f32(-1191f - _wgslsmith_f_op_f32(737f * _wgslsmith_f_op_f32(f32(-1f) * -290f)))), _wgslsmith_div_f32(arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1072f, -493f, -706f == arg_0)))), _wgslsmith_f_op_f32(arg_0 + -631f));
    let var_2 = Struct_4(Struct_3(u_input.d.zx, vec3<i32>(51674i, u_input.c, u_input.c), Struct_1(select(vec4<bool>(global0.x, true, false, false), select(vec4<bool>(global0.x, global0.x, global0.x, global0.x), vec4<bool>(true, false, false, global0.x), global0.x), select(vec4<bool>(global0.x, false, true, global0.x), vec4<bool>(false, true, global0.x, global0.x), true)), false, global0.x, _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, var_1.x, arg_0, -550f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, 1079f, -1291f, 2139f)))), var_0, var_0), _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(step(431f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-789f, -399f)))))));
    return true;
}

fn func_2(arg_0: vec2<u32>) -> vec3<bool> {
    let var_0 = _wgslsmith_mult_u32(4294967295u, u_input.a);
    let var_1 = Struct_4(Struct_3(~vec2<u32>(1u, 1u), _wgslsmith_add_vec3_i32(select(firstLeadingBit(vec3<i32>(u_input.c, -2147483647i, u_input.c)), -vec3<i32>(55629i, u_input.c, u_input.c), any(vec2<bool>(global0.x, global0.x))), -vec3<i32>(-32426i, -2147483647i, -2147483647i) | vec3<i32>(u_input.c, -1i, u_input.c)), Struct_1(vec4<bool>(func_3(-1000f, vec2<u32>(arg_0.x, var_0), var_0), any(vec2<bool>(false, false)), arg_0.x <= arg_0.x, true), global0.x, func_3(_wgslsmith_f_op_f32(776f * 963f), arg_0 | vec2<u32>(u_input.b, 54443u), 20608u << (arg_0.x % 32u)), vec4<f32>(1f, 1f, 1f, 1f)), Struct_2(~vec4<u32>(1u, 1u, 1u, u_input.b)), Struct_2(firstLeadingBit(global1[_wgslsmith_index_u32(0u, 16u)] & global1[_wgslsmith_index_u32(arg_0.x, 16u)]))), -794f);
    var var_2 = global0.x;
    global1 = array<vec4<u32>, 16>();
    var var_3 = Struct_4(Struct_3(_wgslsmith_div_vec2_u32(var_1.a.d.a.xy, ~(~vec2<u32>(arg_0.x, 4294967295u))), var_1.a.b, var_1.a.c, Struct_2(vec4<u32>(7959u, _wgslsmith_mod_u32(18328u, arg_0.x), 1u, _wgslsmith_sub_u32(4294967295u, var_0))), Struct_2(~(~vec4<u32>(0u, arg_0.x, arg_0.x, arg_0.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-329f + -116f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(269f))))));
    return select(var_1.a.c.a.xww, var_1.a.c.a.wxw, select(vec3<bool>(!select(false, true, false), global0.x, false), !(!select(var_3.a.c.a.xzx, var_3.a.c.a.zyz, vec3<bool>(global0.x, true, global0.x))), select(vec3<bool>(true, func_3(1000f, vec2<u32>(47916u, 57290u), 130594u), all(var_3.a.c.a)), select(select(var_3.a.c.a.zww, vec3<bool>(false, var_1.a.c.a.x, var_3.a.c.b), var_3.a.c.c), vec3<bool>(true, var_3.a.c.a.x, var_3.a.c.b), any(var_1.a.c.a.xwy)), false)));
}

fn func_1(arg_0: i32, arg_1: f32) -> Struct_2 {
    let var_0 = func_2(countOneBits(~u_input.d.yx << (~vec2<u32>(u_input.d.x, u_input.b) % vec2<u32>(32u))));
    var var_1 = 1535f;
    let var_2 = 13688u;
    global0 = select(var_0.xx, select(select(vec2<bool>(true, var_0.x), select(var_0.zx, var_0.zz, select(var_0.zx, vec2<bool>(global0.x, var_0.x), global0.x)), var_0.zy), select(!var_0.zx, var_0.xx, any(vec3<bool>(true, global0.x, true))), var_0.xy), any(vec2<bool>(var_0.x, false)));
    var var_3 = Struct_1(select(!select(select(vec4<bool>(var_0.x, false, var_0.x, global0.x), vec4<bool>(global0.x, var_0.x, var_0.x, true), false), select(vec4<bool>(global0.x, global0.x, true, false), vec4<bool>(true, global0.x, var_0.x, var_0.x), false), true), select(!vec4<bool>(false, var_0.x, false, global0.x), select(vec4<bool>(true, var_0.x, global0.x, false), vec4<bool>(global0.x, global0.x, true, false), func_3(663f, vec2<u32>(var_2, u_input.b), var_2)), true), false), global0.x, true, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1572f, arg_1, -952f, 932f))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1, arg_1, arg_1, arg_1) * vec4<f32>(arg_1, arg_1, -1571f, 691f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(414f, arg_1, arg_1, -636f) + vec4<f32>(1000f, arg_1, arg_1, arg_1)))))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -230f), arg_1, _wgslsmith_f_op_f32(arg_1 + arg_1), _wgslsmith_f_op_f32(-1424f * arg_1)))));
    return Struct_2(vec4<u32>(~(~(~4294967295u)), var_2, _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(var_2, 4294967295u, var_2, 1u), global1[_wgslsmith_index_u32(var_2, 16u)]), 0u), u_input.d.yz), _wgslsmith_add_u32(u_input.b, _wgslsmith_add_u32(24238u, ~33764u))));
}

fn func_4(arg_0: Struct_2) -> vec2<bool> {
    let var_0 = max(vec2<i32>(-12168i, 28867i), abs(~(vec2<i32>(u_input.c, 1i) >> (vec2<u32>(0u, u_input.a) % vec2<u32>(32u))))) >> ((vec2<u32>(abs(u_input.a), arg_0.a.x) >> ((max(_wgslsmith_mod_vec2_u32(vec2<u32>(arg_0.a.x, arg_0.a.x), u_input.d.yx), _wgslsmith_div_vec2_u32(vec2<u32>(40565u, 56150u), u_input.d.yz)) >> (reverseBits(select(u_input.d.xy, arg_0.a.wz, vec2<bool>(false, global0.x))) % vec2<u32>(32u))) % vec2<u32>(32u))) % vec2<u32>(32u));
    global1 = array<vec4<u32>, 16>();
    global1 = array<vec4<u32>, 16>();
    var var_1 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1962f, -712f, -544f), vec3<f32>(363f, -1248f, -462f))) - vec3<f32>(-433f, -1588f, -1000f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-2141f, 1000f, 385f))) + _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(745f, -2781f, 312f) - vec3<f32>(954f, -172f, -1000f))), vec3<f32>(1f, _wgslsmith_div_f32(615f, -947f), _wgslsmith_f_op_f32(490f * -987f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-234f, _wgslsmith_f_op_f32(f32(-1f) * -362f), _wgslsmith_f_op_f32(f32(-1f) * -494f)), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(831f, 1331f, 992f)))), !vec3<bool>(global0.x, true, global0.x)))), vec3<bool>(true, global0.x, global0.x)));
    let var_2 = 1u;
    return select(!vec2<bool>(func_2(arg_0.a.ww).x != (global0.x & global0.x), true), select(vec2<bool>(true, true), vec2<bool>(true, true), !func_2(arg_0.a.yz).x), false);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(u_input.c << (u_input.a % 32u));
    let var_1 = ~u_input.a ^ ~1u;
    global0 = select(!select(func_4(func_1(u_input.c, -859f)), vec2<bool>(false, any(vec2<bool>(false, global0.x))), !(!vec2<bool>(global0.x, true))), select(!vec2<bool>(global0.x || false, var_1 < var_1), select(vec2<bool>(false & global0.x, true), !select(vec2<bool>(false, global0.x), vec2<bool>(true, global0.x), false), vec2<bool>(!global0.x, func_3(454f, u_input.d.xy, 4294967295u))), !func_3(-1069f, u_input.d.yx & vec2<u32>(0u, 37603u), ~var_1)), true);
    var_0 = reverseBits(i32(-1i) * -1i);
    global0 = vec2<bool>(any(!vec4<bool>(false, global0.x, true, false && global0.x)), !global0.x);
    var var_2 = Struct_2(vec4<u32>(15339u, var_1, 9705u, ~var_1));
    let var_3 = vec4<u32>(0u << (~_wgslsmith_dot_vec3_u32(vec3<u32>(22532u, 3803u, 4294967295u), vec3<u32>(u_input.d.x, var_2.a.x, 50663u)) % 32u), reverseBits(~_wgslsmith_mult_u32(max(9735u, 24852u), u_input.d.x >> (67158u % 32u))), 4294967295u, 31705u);
    var var_4 = Struct_3(~vec2<u32>(~(~0u), 26520u), vec3<i32>(u_input.c, _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.c, u_input.c), vec2<i32>(2147483647i, u_input.c)) | _wgslsmith_add_vec2_i32(vec2<i32>(-2147483647i, u_input.c), vec2<i32>(-19573i, -21999i)), -(vec2<i32>(u_input.c, u_input.c) << (var_3.yz % vec2<u32>(32u)))), ~(~1i)), Struct_1(vec4<bool>(true, global0.x, 4294967295u != _wgslsmith_add_u32(1u, var_2.a.x), global0.x), true, select(global0.x, true, true), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(585f, 678f, 687f, 512f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-574f, -386f, -1000f, -156f)))) * vec4<f32>(_wgslsmith_f_op_f32(sign(578f)), _wgslsmith_f_op_f32(step(-316f, -1801f)), 1f, -596f))), func_1(u_input.c & (-2147483647i << (_wgslsmith_mult_u32(28655u, var_3.x) % 32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(961f - -156f))))), func_1(26931i, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1092f) - _wgslsmith_f_op_f32(f32(-1f) * -1522f)), -1001f)));
    let var_5 = Struct_4(Struct_3(_wgslsmith_mult_vec2_u32(select(var_3.wy, vec2<u32>(4294967295u, 33660u) ^ vec2<u32>(4294967295u, var_3.x), var_4.c.d.x == var_4.c.d.x), ~_wgslsmith_clamp_vec2_u32(vec2<u32>(1u, var_1), var_3.yy, u_input.d.zx)), vec3<i32>(min(var_4.b.x << (25561u % 32u), u_input.c), _wgslsmith_mod_i32(var_4.b.x, ~var_4.b.x), _wgslsmith_dot_vec4_i32(vec4<i32>(var_4.b.x, var_4.b.x, -1i, var_4.b.x), vec4<i32>(u_input.c, 35426i, var_4.b.x, 61224i))), var_4.c, var_4.d, func_1(var_4.b.x, var_4.c.d.x)), _wgslsmith_f_op_f32(f32(-1f) * -1048f));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(159f, 910f, var_4.c.b))), var_5.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1110f) - -121f), false)), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(1173f, _wgslsmith_f_op_f32(min(var_5.b, _wgslsmith_div_f32(var_4.c.d.x, var_4.c.d.x)))), _wgslsmith_f_op_vec2_f32(exp2(var_5.a.c.d.xy)))), vec2<f32>(_wgslsmith_f_op_f32(-801f + _wgslsmith_f_op_f32(ceil(-1734f))), _wgslsmith_f_op_f32(f32(-1f) * -527f)));
}


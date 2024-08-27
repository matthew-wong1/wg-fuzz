struct Struct_1 {
    a: bool,
    b: i32,
    c: vec2<f32>,
    d: vec3<bool>,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec4<u32>,
    c: bool,
    d: f32,
    e: Struct_2,
}

struct Struct_4 {
    a: f32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec4<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(false, -20111i, vec2<f32>(-1133f, 1200f), vec3<bool>(false, true, true), 18309u));

var<private> global1: Struct_4 = Struct_4(-1700f);

var<private> global2: vec4<f32>;

var<private> global3: array<Struct_2, 3>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
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

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_2, arg_1: vec4<f32>) -> f32 {
    global2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1218f, _wgslsmith_f_op_f32(arg_0.a.c.x * arg_1.x), arg_1.x, 909f)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-605f, 514f, global0.a.c.x, -303f)) + arg_1)));
    let var_0 = vec4<i32>(min(global0.a.b, _wgslsmith_sub_i32(2147483647i >> (u_input.a % 32u), arg_0.a.b)) ^ arg_0.a.b, (arg_0.a.b >> (_wgslsmith_sub_u32(_wgslsmith_mult_u32(arg_0.a.e, arg_0.a.e), 4294967295u) % 32u)) << (u_input.a % 32u), u_input.b, global0.a.b);
    var var_1 = Struct_4(_wgslsmith_f_op_f32(-arg_1.x));
    global1 = Struct_4(arg_1.x);
    global1 = Struct_4(1f);
    return global1.a;
}

fn func_4(arg_0: Struct_3, arg_1: u32) -> vec4<f32> {
    var var_0 = arg_0.e;
    var var_1 = Struct_3(var_0.a.e, ~(~vec4<u32>(firstTrailingBit(arg_1), ~0u, ~1u, arg_0.a & 14918u)), all(!select(vec4<bool>(false, global0.a.d.x, arg_0.c, true), !vec4<bool>(var_0.a.d.x, false, false, false), select(vec4<bool>(var_0.a.a, false, true, var_0.a.a), vec4<bool>(arg_0.c, false, global0.a.d.x, arg_0.e.a.a), vec4<bool>(arg_0.c, arg_0.c, global0.a.a, false)))), _wgslsmith_div_f32(110f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-665f)) * 1643f)), global3[_wgslsmith_index_u32(~global0.a.e, 3u)]);
    var var_2 = Struct_4(_wgslsmith_f_op_f32(f32(-1f) * -826f));
    let var_3 = _wgslsmith_f_op_vec3_f32(-global2.wzw);
    var_1 = Struct_3(~32970u, max(~(~vec4<u32>(21263u, 10916u, 1u, 15841u)) & vec4<u32>(~4294967295u, _wgslsmith_add_u32(global0.a.e, 1u), var_0.a.e, 4722u), arg_0.b), false, 474f, var_1.e);
    return vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(521f * arg_0.e.a.c.x)) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(831f * var_0.a.c.x), -292f, false))), _wgslsmith_f_op_f32(func_3(Struct_2(arg_0.e.a), vec4<f32>(1358f, -588f, _wgslsmith_f_op_f32(-global1.a), -511f))), select(!any(vec4<bool>(false, arg_0.e.a.a, false, true)), !global0.a.d.x, 1f != _wgslsmith_f_op_f32(var_0.a.c.x - global1.a)))), 310f, -218f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -319f)));
}

fn func_2(arg_0: Struct_3) -> u32 {
    var var_0 = true;
    global2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_4(Struct_3(arg_0.b.x, min(vec4<u32>(52107u, 4294967295u, 45018u, u_input.a), vec4<u32>(28907u, global0.a.e, 101083u, 0u)), arg_0.e.a.d.x, _wgslsmith_f_op_f32(func_3(arg_0.e, vec4<f32>(arg_0.d, global2.x, global2.x, global1.a))), Struct_2(global0.a)), 1u))));
    let var_1 = abs(max(~(-firstLeadingBit(vec3<i32>(-18907i, 23784i, arg_0.e.a.b))), vec3<i32>(2147483647i, _wgslsmith_mod_i32(2147483647i, arg_0.e.a.b), _wgslsmith_add_i32(-2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, arg_0.e.a.b), vec2<i32>(arg_0.e.a.b, -4109i))))));
    var_0 = false;
    var var_2 = _wgslsmith_add_vec2_i32(var_1.zz, _wgslsmith_sub_vec2_i32(vec2<i32>(max(0i, global0.a.b), min(arg_0.e.a.b, global0.a.b)), abs(var_1.xz)) << (~_wgslsmith_mod_vec2_u32(vec2<u32>(global0.a.e, 0u) & vec2<u32>(67384u, global0.a.e), vec2<u32>(34781u, 0u) | vec2<u32>(0u, global0.a.e)) % vec2<u32>(32u)));
    return 49239u;
}

fn func_1(arg_0: i32) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-288f + 683f) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global2.x))))) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -221f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1233f * 100f), _wgslsmith_f_op_f32(global1.a * global2.x)))))));
    let var_1 = abs(_wgslsmith_mult_u32(global0.a.e, global0.a.e));
    var var_2 = ~(~vec3<u32>(func_2(Struct_3(global0.a.e, vec4<u32>(var_1, var_1, u_input.a, u_input.a), global0.a.a, global2.x, global3[_wgslsmith_index_u32(59123u, 3u)])), 1u, ~var_1) >> (~(~(~vec3<u32>(global0.a.e, var_1, global0.a.e))) % vec3<u32>(32u)));
    var var_3 = Struct_3(~0u, vec4<u32>(_wgslsmith_mult_u32(1u, u_input.a), reverseBits(_wgslsmith_mult_u32(u_input.a, 19794u)), abs(_wgslsmith_dot_vec4_u32(vec4<u32>(607u, 33573u, 132782u, global0.a.e) << (vec4<u32>(25453u, global0.a.e, global0.a.e, var_2.x) % vec4<u32>(32u)), vec4<u32>(0u, 59812u, 4294967295u, 0u))), 4294967295u), true, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -517f)) + -415f), _wgslsmith_f_op_vec4_f32(func_4(Struct_3(func_2(Struct_3(global0.a.e, vec4<u32>(global0.a.e, 54842u, var_2.x, u_input.a), false, global1.a, global3[_wgslsmith_index_u32(var_2.x, 3u)])), firstTrailingBit(vec4<u32>(var_2.x, global0.a.e, 0u, 1u)), false || global0.a.a, -383f, Struct_2(global0.a)), 1u)).x)), Struct_2(global0.a));
    global2 = vec4<f32>(_wgslsmith_f_op_f32(-global1.a), -714f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1825f)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global2.x, var_3.e.a.c.x)) + -1000f), global0.a.c.x)), _wgslsmith_f_op_vec4_f32(func_4(Struct_3(101629u, _wgslsmith_sub_vec4_u32(_wgslsmith_div_vec4_u32(var_3.b, var_3.b), var_3.b), false, global1.a, Struct_2(Struct_1(var_3.c, u_input.b, var_3.e.a.c, vec3<bool>(var_3.e.a.a, global0.a.a, false), 0u))), 1u)).x);
    return global2.x;
}

fn func_5(arg_0: f32, arg_1: u32, arg_2: Struct_2, arg_3: Struct_4) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -321f)))), arg_0, _wgslsmith_f_op_f32(-arg_0))));
    var var_1 = any(select(vec4<bool>(_wgslsmith_f_op_f32(f32(-1f) * -1138f) <= _wgslsmith_div_f32(arg_2.a.c.x, arg_2.a.c.x), any(!global0.a.d.xy), true, global0.a.d.x), vec4<bool>(true, arg_2.a.a, false, arg_2.a.d.x), false));
    let var_2 = Struct_3(_wgslsmith_mod_u32(min(~global0.a.e, ~(~global0.a.e)), _wgslsmith_mult_u32(_wgslsmith_clamp_u32(~48085u, ~arg_2.a.e, ~4294967295u), _wgslsmith_div_u32(~arg_2.a.e, 9438u))), vec4<u32>(4294967295u, _wgslsmith_add_u32(1u, abs(global0.a.e)), _wgslsmith_sub_u32(u_input.a, _wgslsmith_sub_u32(min(global0.a.e, u_input.a), ~arg_1)), 11065u), any(!vec4<bool>(any(vec4<bool>(true, true, global0.a.a, false)), global0.a.d.x, global0.a.b >= -49471i, all(global0.a.d))), arg_3.a, global3[_wgslsmith_index_u32(u_input.a, 3u)]);
    global2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_3.a, _wgslsmith_f_op_f32(583f * arg_3.a), _wgslsmith_f_op_f32(step(-1000f, var_0.x)), _wgslsmith_f_op_f32(arg_3.a + global1.a)))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1307f, var_2.d, arg_0, var_2.e.a.c.x))));
    let var_3 = true;
    return global3[_wgslsmith_index_u32(~_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(~(~var_2.b.zxw), select(~vec3<u32>(global0.a.e, 7442u, 38262u), countOneBits(var_2.b.wzx), arg_2.a.d)), ~_wgslsmith_add_u32(global0.a.e << (63491u % 32u), 1u)), 3u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(~vec4<u32>(u_input.a, global0.a.e, ~(~u_input.a), u_input.a));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(2534f)) - _wgslsmith_f_op_f32(global1.a * global2.x)) + global1.a)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.a, 1103f)) * -578f)));
    var var_2 = func_5(_wgslsmith_f_op_f32(func_1(min(56402i, u_input.b))), u_input.a, global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(max(~vec4<u32>(10414u, 4294967295u, var_0.x, u_input.a), vec4<u32>(global0.a.e, ~u_input.a, firstTrailingBit(var_0.x), ~u_input.a)), _wgslsmith_sub_vec4_u32(_wgslsmith_div_vec4_u32(~vec4<u32>(global0.a.e, 142180u, var_0.x, u_input.a), _wgslsmith_add_vec4_u32(var_0, var_0)), var_0 << ((vec4<u32>(var_0.x, 1u, u_input.a, var_0.x) << (var_0 % vec4<u32>(32u))) % vec4<u32>(32u)))), 3u)], Struct_4(_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -689f) - 1000f))));
    global1 = Struct_4(global2.x);
    let var_3 = global3[_wgslsmith_index_u32(_wgslsmith_add_u32(global0.a.e, _wgslsmith_dot_vec3_u32(var_0.wyy, countOneBits(var_0.zwz))), 3u)];
    var_2 = func_5(_wgslsmith_f_op_f32(-func_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.a + global2.x) - _wgslsmith_div_f32(-946f, global0.a.c.x)), _wgslsmith_dot_vec4_u32(var_0 | var_0, vec4<u32>(4294967295u, global0.a.e, 4294967295u, 7844u)), func_5(_wgslsmith_f_op_f32(1124f * global2.x), ~0u, Struct_2(global0.a), Struct_4(var_3.a.c.x)), Struct_4(_wgslsmith_f_op_f32(f32(-1f) * -2263f))).a.c.x), _wgslsmith_div_u32(~0u, ~var_0.x), global3[_wgslsmith_index_u32(min(select(_wgslsmith_clamp_u32(1u, var_0.x, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 0u), vec2<u32>(var_2.a.e, 1382u))), ~(~u_input.a), any(!vec4<bool>(var_2.a.a, var_2.a.d.x, true, var_2.a.d.x))), max(_wgslsmith_div_u32(var_0.x, ~global0.a.e), _wgslsmith_div_u32(global0.a.e, 0u) >> (0u % 32u))), 3u)], Struct_4(_wgslsmith_f_op_f32(-var_3.a.c.x)));
    var var_4 = firstLeadingBit(_wgslsmith_sub_vec4_u32(abs(vec4<u32>(~4294967295u, abs(1u), ~1u, 27707u)), ~select(~var_0, var_0, vec4<bool>(false, false, var_2.a.d.x, false))));
    var_2 = global3[_wgslsmith_index_u32(~(~var_3.a.e), 3u)];
    let x = u_input.a;
    s_output = StorageBuffer(~max(~(~0u), var_2.a.e), firstLeadingBit(firstTrailingBit(~vec2<i32>(global0.a.b, var_3.a.b))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(830f, global2.x, var_3.a.c.x, -599f))))))), -4121i);
}


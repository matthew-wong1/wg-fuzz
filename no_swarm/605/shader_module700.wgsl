struct Struct_1 {
    a: vec3<f32>,
    b: vec3<bool>,
    c: i32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: u32,
    c: u32,
}

struct Struct_3 {
    a: vec4<u32>,
}

struct Struct_4 {
    a: Struct_3,
    b: i32,
    c: f32,
    d: bool,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(-421f, 954f, 1673f, 1672f);

var<private> global1: array<Struct_2, 13>;

var<private> global2: array<vec3<f32>, 20>;

var<private> global3: Struct_1;

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: f32, arg_3: f32) -> vec4<bool> {
    let var_0 = arg_1;
    var var_1 = Struct_4(Struct_3(vec4<u32>(~_wgslsmith_mod_u32(u_input.b, 11217u), min(~u_input.b, 39309u & u_input.b), _wgslsmith_sub_u32(min(u_input.b, u_input.b), 83398u), u_input.b)), 0i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(353f * _wgslsmith_f_op_f32(global3.a.x + 268f)))), true, arg_1.b);
    global1 = array<Struct_2, 13>();
    global3 = Struct_1(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-523f)) - global3.a.x), global0.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(753f, -733f))), vec3<f32>(-854f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-351f * -978f))), arg_1.a.x))), vec3<bool>(var_1.e.x, any(!(!arg_1.b)), !arg_1.b.x), _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(var_0.c, u_input.a, -1i, 30352i), ~arg_0), reverseBits(-vec4<i32>(var_1.b, 0i, 2147483647i, -19086i))), arg_0));
    let var_2 = global3.a.zz;
    return select(!(!vec4<bool>(true, false, true, any(vec4<bool>(true, var_0.b.x, false, global3.b.x)))), select(!vec4<bool>(-899f <= arg_3, any(vec2<bool>(global3.b.x, arg_1.b.x)), true, all(vec2<bool>(false, var_0.b.x))), vec4<bool>(all(vec3<bool>(true, global3.b.x, var_1.d)), var_1.b == _wgslsmith_dot_vec3_i32(arg_0.zyw, arg_0.xzz), _wgslsmith_f_op_f32(-var_1.c) >= _wgslsmith_f_op_f32(-arg_3), all(vec3<bool>(true, true, global3.b.x))), true), select(vec4<bool>(var_1.e.x | var_1.e.x, !all(var_1.e.yz), false, false), vec4<bool>(true, false, !select(var_0.b.x, arg_1.b.x, var_0.b.x), var_1.e.x || any(vec3<bool>(var_0.b.x, arg_1.b.x, arg_1.b.x))), true));
}

fn func_2(arg_0: vec2<f32>, arg_1: Struct_3, arg_2: vec3<i32>) -> Struct_3 {
    let var_0 = Struct_3(select(vec4<u32>(~u_input.b, arg_1.a.x, u_input.b, 0u), _wgslsmith_mod_vec4_u32(vec4<u32>(_wgslsmith_mod_u32(691u, arg_1.a.x), _wgslsmith_div_u32(17572u, u_input.b), 1u, 1u), ~arg_1.a), func_3(~(-vec4<i32>(-1i, arg_2.x, -1i, u_input.a)), Struct_1(_wgslsmith_div_vec3_f32(vec3<f32>(-1105f, -461f, global3.a.x), vec3<f32>(339f, global0.x, -437f)), select(vec3<bool>(false, true, false), global3.b, global3.b.x), ~2147483647i), arg_0.x, _wgslsmith_f_op_f32(-1084f + _wgslsmith_f_op_f32(-1040f - global0.x)))));
    let var_1 = 1u;
    return arg_1;
}

fn func_4(arg_0: Struct_4, arg_1: vec4<u32>, arg_2: Struct_1, arg_3: vec4<bool>) -> vec4<f32> {
    let var_0 = u_input.a;
    let var_1 = arg_2;
    let var_2 = Struct_2(select(arg_3, arg_3, true), min(_wgslsmith_dot_vec3_u32(select(arg_1.yxy, arg_1.zwy, true), arg_1.wxy), arg_0.a.a.x >> (u_input.b % 32u)) >> (37015u % 32u), _wgslsmith_mult_u32(~(~4294967295u) & arg_1.x, reverseBits(min(reverseBits(4294967295u), _wgslsmith_mod_u32(u_input.b, 73655u)))));
    return vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -376f), _wgslsmith_f_op_f32(round(global0.x)), _wgslsmith_f_op_f32(-global0.x), global3.a.x);
}

fn func_1(arg_0: Struct_2, arg_1: bool) -> vec4<f32> {
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_4(Struct_4(func_2(vec2<f32>(global3.a.x, -343f), Struct_3(vec4<u32>(125042u, 44793u, 49372u, 4294967295u)), vec3<i32>(global3.c, 38391i, 6993i)), _wgslsmith_div_i32(1i, -8911i), global0.x, 541f >= global3.a.x, !vec3<bool>(arg_0.a.x, true, arg_0.a.x)), reverseBits(_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, 28983u, 1977u, arg_0.b), vec4<u32>(arg_0.c, u_input.b, u_input.b, 1u))), Struct_1(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(global3.a.x, global0.x, global3.a.x))), arg_0.a.xyz, 2576i | u_input.a), !vec4<bool>(false, false, global3.b.x, arg_1))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-global3.a.x), 436f, global0.x, _wgslsmith_div_f32(-302f, global0.x)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global3.a.x, global3.a.x, global3.a.x, -1400f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_vec4_f32(func_1(Struct_2(!(!select(vec4<bool>(global3.b.x, global3.b.x, true, true), vec4<bool>(false, true, true, global3.b.x), vec4<bool>(global3.b.x, global3.b.x, global3.b.x, true))), firstTrailingBit(~(u_input.b << (u_input.b % 32u))), (_wgslsmith_sub_u32(0u, 0u) & ~u_input.b) | ~u_input.b), global3.b.x && global3.b.x));
    global3 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec4_f32(func_1(Struct_2(vec4<bool>(true, global3.b.x, global3.b.x, global3.b.x), u_input.b, u_input.b), false)).yxz), select(select(global3.b, select(select(global3.b, global3.b, global3.b), select(global3.b, vec3<bool>(global3.b.x, global3.b.x, global3.b.x), false), select(true, global3.b.x, true)), true), func_3(~(-vec4<i32>(global3.c, 1i, u_input.a, global3.c)), Struct_1(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global3.a.x, global0.x, global0.x))), func_3(vec4<i32>(-10296i, u_input.a, global3.c, u_input.a), Struct_1(global0.wyz, vec3<bool>(global3.b.x, global3.b.x, true), 5178i), -370f, global0.x).wwz, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, 0i), vec2<i32>(global3.c, 3366i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_1(Struct_2(vec4<bool>(true, false, true, true), 0u, u_input.b), global3.b.x)).x), 639f).wwy, true), 0i);
    let var_0 = func_2(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-global0.ww), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-global0.ww))), vec2<bool>(all(!global3.b.zy), all(global3.b.yz)))), func_2(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global0.x, global0.x))), Struct_3(vec4<u32>(4294967295u, 4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 78671u, u_input.b, u_input.b), vec4<u32>(u_input.b, u_input.b, 20871u, 0u)), 1u)), min(_wgslsmith_mult_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a, -5565i, 1i), vec3<i32>(global3.c, u_input.a, -13106i)), vec3<i32>(2147483647i, global3.c, 1i)), -min(vec3<i32>(28010i, global3.c, global3.c), vec3<i32>(u_input.a, global3.c, 1i)))), _wgslsmith_mod_vec3_i32(max(select(vec3<i32>(1i, 1i, u_input.a), -vec3<i32>(u_input.a, u_input.a, 14433i), true), reverseBits(_wgslsmith_add_vec3_i32(vec3<i32>(global3.c, -2147483647i, u_input.a), vec3<i32>(11402i, global3.c, global3.c)))), _wgslsmith_div_vec3_i32(abs(_wgslsmith_div_vec3_i32(vec3<i32>(2147483647i, 0i, global3.c), vec3<i32>(18322i, 1i, -2189i))), vec3<i32>(global3.c, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, 2147483647i, 2147483647i), vec3<i32>(u_input.a, global3.c, -37890i)), global3.c << (u_input.b % 32u)))));
    let var_1 = Struct_4(func_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(global0.x, -112f), _wgslsmith_f_op_f32(-global3.a.x))), func_2(global0.zy, var_0, _wgslsmith_sub_vec3_i32(abs(vec3<i32>(-1i, -1i, u_input.a)), ~vec3<i32>(u_input.a, 1i, -2147483647i))), abs(select(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.a, u_input.a, 54344i), vec3<i32>(u_input.a, -1i, u_input.a)), -vec3<i32>(-289i, -11693i, u_input.a), !global3.b))), -u_input.a, global3.a.x, !global3.b.x, global3.b);
    let var_2 = 0u ^ var_1.a.a.x;
    global0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(trunc(-1769f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.c + _wgslsmith_f_op_f32(f32(-1f) * -1556f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.c - -974f) * 1000f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(872f, 1112f)) + global3.a.x)))));
    let var_3 = true;
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.c, global3.a.x, -1782f, 469f)) + _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1438f, global3.a.x, global3.a.x, global3.a.x))))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, global3.a.x, global0.x, -181f) - vec4<f32>(-1268f, var_1.c, 1000f, -1030f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(~43004u, -1000f, (_wgslsmith_mod_vec2_u32(var_0.a.xz, ~vec2<u32>(1u, var_1.a.a.x)) ^ abs(~var_1.a.a.zw)) << (vec2<u32>(min(var_1.a.a.x, 5128u) & _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, var_1.a.a.x, 0u), vec3<u32>(var_1.a.a.x, 1u, var_1.a.a.x)), u_input.b) % vec2<u32>(32u)));
}


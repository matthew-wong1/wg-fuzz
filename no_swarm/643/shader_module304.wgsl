struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
    c: vec2<bool>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: vec3<f32>,
    d: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: Struct_2,
    c: f32,
    d: Struct_1,
    e: bool,
}

struct Struct_5 {
    a: bool,
    b: bool,
    c: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(-24324i, i32(-2147483648), 2147483647i);

var<private> global1: f32 = 735f;

var<private> global2: Struct_5 = Struct_5(true, false, 4294967295u);

var<private> global3: vec3<f32>;

var<private> global4: array<vec2<u32>, 8>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec4<bool>, arg_1: bool) -> u32 {
    global1 = _wgslsmith_f_op_f32(select(138f, _wgslsmith_f_op_f32(-global3.x), global3.x == _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global3.x))))));
    let var_0 = global0.zz;
    let var_1 = 817f;
    var var_2 = Struct_5(!global2.a, any(!select(select(arg_0, vec4<bool>(true, false, true, false), arg_0), arg_0, vec4<bool>(global2.b, arg_0.x, true, arg_0.x))), ~global2.c);
    var var_3 = vec4<bool>((_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(var_1)), 204f)) >= _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1806f, global3.x))) == (all(vec3<bool>(global2.a, false, var_2.a)) | true), all(arg_0.yzz), true, true);
    return ~(~(var_2.c << (~0u % 32u))) & 103177u;
}

fn func_2() -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(round(-1808f)), global3.x) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(global3.x, _wgslsmith_f_op_f32(-global3.x))));
    global2 = Struct_5(!global2.b, (_wgslsmith_mod_u32(54499u & global2.c, 4294967295u) & global2.c) <= ~(~(~global2.c)), global2.c & 2404u);
    global2 = Struct_5(false, u_input.a > abs(u_input.a), min(~86417u, 4294967295u));
    global1 = 1704f;
    let var_1 = vec4<u32>(global2.c, ~(~select(global2.c, 4294967295u, global2.b)), _wgslsmith_mod_u32(min(global2.c, 1u) << (global2.c % 32u), ~(~25068u)), 59962u) & vec4<u32>(43590u, ~(~4294967295u), max(~func_3(vec4<bool>(false, true, true, false), true), ~abs(global2.c)), reverseBits(29015u));
    return Struct_2(Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_0.x * 2020f)))), vec4<f32>(global3.x, -111f, _wgslsmith_f_op_f32(1286f - _wgslsmith_f_op_f32(global3.x + _wgslsmith_f_op_f32(round(-749f)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-322f, _wgslsmith_f_op_f32(step(var_0.x, -302f)))))), select(!vec2<bool>(all(vec3<bool>(true, global2.b, false)), any(vec3<bool>(global2.b, true, false))), select(!(!vec2<bool>(false, global2.a)), select(!vec2<bool>(global2.b, true), !vec2<bool>(global2.a, global2.b), vec2<bool>(global2.b, false)), true), vec2<bool>(global2.b, !global2.b)), Struct_1(196f), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(611f))))));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_3, arg_2: i32, arg_3: f32) -> f32 {
    var var_0 = Struct_2(arg_1.b.a, vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(742f - _wgslsmith_f_op_f32(f32(-1f) * -345f)))), _wgslsmith_div_f32(-926f, _wgslsmith_f_op_f32(min(-371f, -854f))), -930f, arg_0.d.a), arg_0.c, func_2().d, arg_0.d);
    var var_1 = !any(var_0.c);
    let var_2 = true;
    var var_3 = global2.a;
    global3 = arg_0.b.zyx;
    return 703f;
}

fn func_1() -> u32 {
    var var_0 = vec2<i32>(u_input.a, 0i);
    global1 = 1f;
    let var_1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_4(func_2(), Struct_3(Struct_2(Struct_1(291f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.x, -532f, 625f, 671f)), vec2<bool>(false, true), Struct_1(global3.x), func_2().d), Struct_2(func_2().d, vec4<f32>(2362f, -485f, 155f, 1000f), !vec2<bool>(global2.a, true), Struct_1(-771f), func_2().d), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global3.x, global3.x, -346f) + vec3<f32>(357f, global3.x, -519f))), func_2().d), reverseBits(-2147483647i), _wgslsmith_f_op_f32(-global3.x)))));
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1) * _wgslsmith_f_op_f32(var_1 * 1590f));
    var_0 = -abs(vec2<i32>(u_input.a, _wgslsmith_dot_vec3_i32(vec3<i32>(global0.x, var_0.x, 0i) ^ vec3<i32>(global0.x, 0i, 30486i), _wgslsmith_div_vec3_i32(vec3<i32>(global0.x, -2147483647i, 7269i), vec3<i32>(u_input.a, global0.x, var_0.x)))));
    return ~firstLeadingBit(~_wgslsmith_dot_vec4_u32(select(vec4<u32>(4294967295u, 6098u, 72756u, global2.c), vec4<u32>(4294967295u, global2.c, 1u, 18752u), vec4<bool>(true, global2.b, false, false)), ~vec4<u32>(56525u, global2.c, global2.c, global2.c)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~vec3<u32>(global2.c, _wgslsmith_add_u32(26638u, func_1() & _wgslsmith_div_u32(global2.c, global2.c)), 1u);
    global0 = vec3<i32>(-1i) * -(~_wgslsmith_clamp_vec3_i32(vec3<i32>(2327i, 0i, -70322i), -vec3<i32>(u_input.a, u_input.a, global0.x), vec3<i32>(0i, 1i, -65644i)));
    var var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(global3.x, global3.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.x + global3.x)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.x))), _wgslsmith_f_op_f32(round(-1000f))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(global3.x, global3.x), -637f, _wgslsmith_f_op_f32(166f * 1000f), _wgslsmith_f_op_f32(-global3.x)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.x, global3.x, -643f, -168f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global3.x, global3.x, global3.x, global3.x)))))));
    var var_2 = func_2().e;
    var var_3 = func_2();
    let var_4 = global0.x;
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mult_i32(global0.x, -46696i));
}


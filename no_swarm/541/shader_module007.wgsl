struct Struct_1 {
    a: vec4<u32>,
    b: vec4<i32>,
    c: vec4<f32>,
    d: vec3<bool>,
    e: vec3<u32>,
}

struct Struct_2 {
    a: i32,
    b: i32,
}

struct Struct_3 {
    a: i32,
    b: vec2<bool>,
    c: u32,
    d: u32,
    e: Struct_2,
}

struct Struct_4 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: u32,
    d: vec2<u32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(47050u, 4294967295u, 35706u);

var<private> global1: Struct_4;

var<private> global2: vec3<f32> = vec3<f32>(115f, -1133f, -274f);

var<private> global3: vec3<u32> = vec3<u32>(1u, 4294967295u, 4294967295u);

var<private> global4: Struct_4;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
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

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_1() -> f32 {
    var var_0 = Struct_4(global4.a);
    global2 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(631f, global2.x, -646f)), vec3<f32>(608f, -1000f, global2.x))))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(global2.x))))) + global2.x) + -235f);
}

fn func_3(arg_0: vec4<i32>) -> i32 {
    var var_0 = Struct_4(select(select(vec4<bool>(true, global4.a.x, true, global4.a.x), global4.a, 1i < ~arg_0.x), global1.a, global4.a.x));
    let var_1 = global4.a.x;
    var var_2 = Struct_3(-(i32(-1i) * -16954i), !(!select(var_0.a.xz, select(vec2<bool>(var_0.a.x, false), vec2<bool>(false, var_0.a.x), vec2<bool>(true, true)), global4.a.x)), global3.x, global0.x, Struct_2(1i, -26184i));
    let var_3 = 124001u;
    let var_4 = global1.a.x;
    return abs(var_2.a);
}

fn func_4(arg_0: i32, arg_1: Struct_3, arg_2: vec4<u32>) -> f32 {
    let var_0 = Struct_2(_wgslsmith_mod_i32(64103i, 2147483647i), -func_3(~select(vec4<i32>(arg_0, 2147483647i, arg_0, -24540i), vec4<i32>(-24357i, 20844i, -2147483647i, arg_0), vec4<bool>(false, global4.a.x, global1.a.x, false))));
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global2.x, 526f, global4.a.x & arg_1.b.x))), _wgslsmith_f_op_f32(select(285f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(263f, -107f), _wgslsmith_f_op_f32(f32(-1f) * -2626f))), _wgslsmith_f_op_f32(f32(-1f) * -412f))), false)), _wgslsmith_f_op_f32(round(433f)));
    var var_2 = 49639u << (arg_2.x % 32u);
    var var_3 = arg_1.e.a;
    var var_4 = Struct_4(select(vec4<bool>(var_1.x >= -937f, global1.a.x, arg_1.b.x, any(global4.a)), select(select(global1.a, select(vec4<bool>(arg_1.b.x, global1.a.x, global1.a.x, global1.a.x), vec4<bool>(true, false, true, global4.a.x), global1.a), vec4<bool>(global1.a.x, global4.a.x, false, false)), !global4.a, vec4<bool>(true, true, global1.a.x, any(global1.a))), vec4<bool>(global4.a.x, any(select(vec2<bool>(true, false), vec2<bool>(arg_1.b.x, global1.a.x), vec2<bool>(true, false))), u_input.b.x > _wgslsmith_div_u32(global3.x, u_input.b.x), true)));
    return 449f;
}

fn func_2() -> Struct_3 {
    let var_0 = global4.a.yyy;
    global1 = Struct_4(vec4<bool>(var_0.x || global4.a.x, true, global1.a.x, global4.a.x | true));
    let var_1 = 1316f;
    global2 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(global2.x, global2.x))) - _wgslsmith_f_op_f32(func_4(func_3(vec4<i32>(-1i, -2147483647i, -21437i, 1i)), Struct_3(0i, global1.a.wy, 1u, global3.x, Struct_2(-10576i, 5347i)), firstLeadingBit(vec4<u32>(4294967295u, 39559u, 0u, 94476u))))) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(-493f)), _wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(-global2.x) == var_1))), global2.x, 564f);
    let var_2 = u_input.b;
    return Struct_3(select(_wgslsmith_sub_i32(2390i, 0i), _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(-7886i, 2147483647i, 0i), vec3<i32>(2147483647i, 10803i, -20412i)), ~vec3<i32>(0i, 1i, -44823i)), _wgslsmith_mult_vec3_i32(-vec3<i32>(2147483647i, -1i, -25103i), vec3<i32>(-1i, 1i, -13700i))), !all(!global1.a)), vec2<bool>(false, all(select(select(vec4<bool>(var_0.x, false, true, global4.a.x), global1.a, global1.a.x), !vec4<bool>(global4.a.x, false, false, var_0.x), select(vec4<bool>(false, true, true, true), vec4<bool>(global1.a.x, true, global4.a.x, global1.a.x), true)))), (_wgslsmith_dot_vec2_u32(~global3.zx, _wgslsmith_div_vec2_u32(global3.yz, vec2<u32>(24955u, 1u))) >> (_wgslsmith_dot_vec4_u32(abs(vec4<u32>(global0.x, global0.x, var_2.x, global0.x)), min(vec4<u32>(26848u, 1u, global0.x, 101432u), vec4<u32>(global3.x, 1u, 35554u, global0.x))) % 32u)) | (global3.x >> (global3.x % 32u)), _wgslsmith_div_u32(12297u, abs(abs(1u))), Struct_2(1i, i32(-1i) * -2147483647i));
}

fn func_5(arg_0: Struct_3, arg_1: Struct_4, arg_2: f32, arg_3: i32) -> i32 {
    let var_0 = vec3<i32>(arg_0.e.b, (arg_3 & -46883i) ^ arg_3, _wgslsmith_mod_i32(-887i, ~arg_0.a));
    global0 = vec3<u32>(global3.x, u_input.a, _wgslsmith_div_u32(arg_0.c, ~(~_wgslsmith_clamp_u32(0u, 0u, global0.x))));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-global2.x), _wgslsmith_div_f32(arg_2, global2.x), _wgslsmith_div_f32(arg_2, global2.x), 1000f)))));
    global4 = Struct_4(vec4<bool>(arg_3 < arg_3, true, false, any(vec2<bool>(any(vec2<bool>(global1.a.x, arg_1.a.x)), global1.a.x))));
    global3 = u_input.b;
    return var_0.x;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_4(select(global1.a, global4.a, !(!global1.a)));
    global2 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(630f, global2.x)))), 1050f) - vec3<f32>(_wgslsmith_div_f32(713f, -1462f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global2.x, _wgslsmith_f_op_f32(func_1()))) * global2.x), 131f));
    var var_0 = !(global1.a.x & global4.a.x);
    var var_1 = _wgslsmith_clamp_vec2_i32(countOneBits(select(~vec2<i32>(-9115i, 1i), -vec2<i32>(1i, 1i), !(global1.a.x | global4.a.x))), reverseBits(reverseBits(-vec2<i32>(20385i, -1i))) >> (~max(vec2<u32>(1u, 3403u) & global3.zx, vec2<u32>(10935u, u_input.b.x)) % vec2<u32>(32u)), vec2<i32>(func_5(func_2(), Struct_4(!vec4<bool>(global1.a.x, false, false, global4.a.x)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(-global2.x))), -94359i), _wgslsmith_clamp_i32(~(~5347i), _wgslsmith_mod_i32(~35591i, ~(-42949i)), ~1i)));
    var var_2 = select(-var_1.x >= _wgslsmith_mult_i32(func_2().e.b, 1i), false, any(!select(vec3<bool>(true, global1.a.x, global4.a.x), global4.a.xzz, global1.a.wwy)) && global1.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -959f), vec4<u32>(abs(4294967295u), ~(0u >> (select(4294967295u, global3.x, true) % 32u)), max(global0.x, ~(global3.x >> (global0.x % 32u))), u_input.d.x), vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_1()))))), _wgslsmith_f_op_f32(-global2.x), 123f));
}


struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: i32,
}

struct Struct_5 {
    a: vec4<bool>,
    b: vec4<u32>,
    c: vec4<i32>,
    d: f32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 4>;

var<private> global1: array<bool, 21>;

var<private> global2: vec4<bool>;

var<private> global3: Struct_2 = Struct_2(Struct_1(vec4<u32>(4294967295u, 0u, 40006u, 27526u)), Struct_1(vec4<u32>(4294967295u, 0u, 7579u, 20714u)));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2() -> Struct_1 {
    let var_0 = ~vec2<u32>(u_input.a, 0u) << ((~vec2<u32>(u_input.a, _wgslsmith_clamp_u32(22593u, u_input.a, u_input.a)) >> (~(~(vec2<u32>(u_input.a, 1u) | global3.b.a.yx)) % vec2<u32>(32u))) % vec2<u32>(32u));
    var var_1 = 1965f;
    let var_2 = Struct_3(true);
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1435f, _wgslsmith_f_op_f32(abs(526f)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1346f) - -300f))));
    var var_3 = _wgslsmith_mult_vec4_u32(global3.a.a, reverseBits(_wgslsmith_mod_vec4_u32(~global3.a.a, countOneBits(_wgslsmith_div_vec4_u32(vec4<u32>(0u, var_0.x, var_0.x, u_input.a), vec4<u32>(global3.a.a.x, 17169u, u_input.a, global3.b.a.x))))));
    return global3.b;
}

fn func_1(arg_0: vec2<u32>, arg_1: u32, arg_2: bool, arg_3: Struct_5) -> f32 {
    var var_0 = Struct_2(global3.a, global3.b);
    var var_1 = _wgslsmith_mod_vec4_u32(vec4<u32>(41003u, ~(~4294967295u), ~u_input.a, ~(~(~u_input.a))), select(~reverseBits(~arg_3.b), vec4<u32>(~arg_0.x, _wgslsmith_div_u32(var_0.a.a.x, 8951u), 1u, select(17446u, 4294967295u, true)) << (_wgslsmith_div_vec4_u32(var_0.a.a, vec4<u32>(global3.b.a.x, 1u, var_0.a.a.x, arg_0.x)) % vec4<u32>(32u)), arg_3.c.x >= arg_3.c.x));
    let var_2 = -_wgslsmith_clamp_vec3_i32(select(arg_3.c.zxw | (arg_3.c.xww >> (arg_3.b.wwx % vec3<u32>(32u))), vec3<i32>(arg_3.c.x, abs(-2147483647i), ~(-2147483647i)), !vec3<bool>(arg_3.a.x, false, arg_2)), max(_wgslsmith_clamp_vec3_i32(vec3<i32>(5415i, arg_3.c.x, arg_3.c.x), _wgslsmith_mod_vec3_i32(vec3<i32>(-62437i, 22688i, arg_3.c.x), vec3<i32>(16088i, arg_3.c.x, arg_3.c.x)), abs(arg_3.c.www)), vec3<i32>(arg_3.c.x, -1i, arg_3.c.x)), ~_wgslsmith_sub_vec3_i32(vec3<i32>(3865i, -21977i, -1i), abs(arg_3.c.wxy)));
    var var_3 = Struct_2(func_2(), Struct_1(~_wgslsmith_mod_vec4_u32(~var_0.b.a, vec4<u32>(31553u, arg_0.x, var_1.x, 12362u))));
    var_1 = vec4<u32>(arg_3.b.x, arg_1, var_0.b.a.x, 31816u);
    return _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-310f * 488f))));
}

fn func_3(arg_0: i32, arg_1: f32, arg_2: u32) -> Struct_1 {
    global2 = !select(select(vec4<bool>(true, true, true, true), !vec4<bool>(true, global1[_wgslsmith_index_u32(12583u, 21u)], true, global2.x), any(vec2<bool>(global0[_wgslsmith_index_u32(arg_2, 4u)], global1[_wgslsmith_index_u32(0u, 21u)]))), !(!vec4<bool>(global2.x, global2.x, global2.x, global2.x)), vec4<bool>(false, !any(vec4<bool>(global1[_wgslsmith_index_u32(global3.b.a.x, 21u)], true, global2.x, true)), all(vec3<bool>(global0[_wgslsmith_index_u32(0u, 4u)], false, true)), true));
    let var_0 = arg_1;
    let var_1 = select(!(!select(vec4<bool>(true, true, global0[_wgslsmith_index_u32(arg_2, 4u)], false), select(vec4<bool>(global1[_wgslsmith_index_u32(0u, 21u)], true, global2.x, global1[_wgslsmith_index_u32(u_input.a, 21u)]), vec4<bool>(global2.x, false, true, global1[_wgslsmith_index_u32(global3.b.a.x, 21u)]), vec4<bool>(false, global0[_wgslsmith_index_u32(4294967295u, 4u)], false, global2.x)), all(vec4<bool>(global0[_wgslsmith_index_u32(arg_2, 4u)], global2.x, true, true)))), select(select(vec4<bool>(true, true, true, global2.x || global2.x), select(!vec4<bool>(true, global2.x, true, true), vec4<bool>(true, true, true, true), any(vec4<bool>(true, global1[_wgslsmith_index_u32(global3.a.a.x, 21u)], global1[_wgslsmith_index_u32(arg_2, 21u)], true))), global0[_wgslsmith_index_u32(u_input.a, 4u)]), !vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 4u)], all(vec3<bool>(false, global2.x, global1[_wgslsmith_index_u32(arg_2, 21u)])), all(vec4<bool>(global0[_wgslsmith_index_u32(u_input.a, 4u)], global2.x, global0[_wgslsmith_index_u32(global3.b.a.x, 4u)], true)), global2.x), global1[_wgslsmith_index_u32(global3.b.a.x, 21u)]), global0[_wgslsmith_index_u32(u_input.a, 4u)] | !(!global2.x));
    global3 = Struct_2(Struct_1(vec4<u32>(~global3.b.a.x, u_input.a, _wgslsmith_div_u32(global3.b.a.x, arg_2), _wgslsmith_sub_u32(u_input.a, _wgslsmith_div_u32(4294967295u, global3.a.a.x)))), global3.b);
    let var_2 = arg_1;
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_5(vec4<bool>(select(select(u_input.a, u_input.a, global1[_wgslsmith_index_u32(1u, 21u)]) >= _wgslsmith_dot_vec3_u32(global3.b.a.zzx, vec3<u32>(4294967295u, global3.b.a.x, global3.a.a.x)), !any(global2.ywz), !(global0[_wgslsmith_index_u32(4294967295u, 4u)] || false)), 59572u == global3.a.a.x, global1[_wgslsmith_index_u32(firstTrailingBit(1u), 21u)], _wgslsmith_dot_vec4_i32(-vec4<i32>(5990i, -52805i, -22360i, 2147483647i), vec4<i32>(-37039i, 9712i, 2147483647i, 1i) >> (vec4<u32>(u_input.a, 1u, global3.a.a.x, 47823u) % vec4<u32>(32u))) < ~(-7073i)), ~_wgslsmith_sub_vec4_u32(global3.b.a & ~global3.b.a, _wgslsmith_clamp_vec4_u32(vec4<u32>(global3.b.a.x, 0u, global3.b.a.x, u_input.a), global3.b.a, global3.a.a) | countOneBits(vec4<u32>(0u, global3.b.a.x, global3.a.a.x, 4294967295u))), -firstTrailingBit(-vec4<i32>(1i, 1i, 1i, 1i)), _wgslsmith_f_op_f32(1262f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1(global3.a.a.yz, _wgslsmith_add_u32(global3.b.a.x, 1u), global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(1u, u_input.a, 0u), 21u)], Struct_5(vec4<bool>(global0[_wgslsmith_index_u32(44862u, 4u)], global0[_wgslsmith_index_u32(5157u, 4u)], false, global1[_wgslsmith_index_u32(1u, 21u)]), global3.a.a, vec4<i32>(18139i, -1i, -2147483647i, 2147483647i), -108f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1051f * 1760f)))));
    global0 = array<bool, 4>();
    global3 = Struct_2(global3.a, func_3(_wgslsmith_mult_i32(var_0.c.x, var_0.c.x), var_0.d, ~_wgslsmith_sub_u32(~var_0.b.x, _wgslsmith_div_u32(var_0.b.x, 48907u))));
    var var_1 = vec2<f32>(-544f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.d, var_0.d)));
    global0 = array<bool, 4>();
    var var_2 = Struct_2(func_3(_wgslsmith_sub_i32(~(-19184i), -(~(-28011i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x - _wgslsmith_f_op_f32(-646f - -203f))), select(_wgslsmith_mult_u32(1u, 44461u), ~(0u & var_0.b.x), global2.x)), global3.a);
    let x = u_input.a;
    s_output = StorageBuffer(1u & var_0.b.x, var_0.b.www, func_2().a);
}


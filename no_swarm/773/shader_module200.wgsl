struct Struct_1 {
    a: vec4<bool>,
    b: bool,
    c: f32,
    d: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 27> = array<vec4<bool>, 27>(vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, false));

var<private> global1: bool;

var<private> global2: array<u32, 20>;

var<private> global3: Struct_3 = Struct_3(Struct_1(vec4<bool>(true, false, true, false), false, 719f, vec4<i32>(21345i, -1i, 0i, 2147483647i)), vec2<bool>(true, false));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_1) -> u32 {
    var var_0 = vec3<i32>(_wgslsmith_add_i32(u_input.a.x, _wgslsmith_dot_vec3_i32(u_input.a.zxw, max(-vec3<i32>(-60891i, -17191i, -32331i), _wgslsmith_sub_vec3_i32(global3.a.d.yzz, arg_1.d.yyy)))), arg_0.a.d.x, 0i ^ -u_input.b);
    let var_1 = Struct_1(!(!global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(min(reverseBits(0u), ~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 20u)], 20u)]), 20u)], 27u)]), select(arg_0.b.x, -1134f > _wgslsmith_f_op_f32(-arg_1.c), false), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a.c + _wgslsmith_f_op_f32(-arg_1.c))))), vec4<i32>(_wgslsmith_dot_vec2_i32(min(arg_1.d.zz, abs(vec2<i32>(2818i, -24673i))), abs(select(vec2<i32>(arg_0.a.d.x, arg_1.d.x), arg_1.d.xx, vec2<bool>(arg_0.b.x, global3.b.x)))), _wgslsmith_sub_i32(u_input.b, u_input.a.x), -u_input.a.x, -11416i << (~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(firstTrailingBit(19283u), 20u)], 20u)] % 32u)));
    let var_2 = vec2<bool>(global3.b.x, !(!(!all(vec2<bool>(var_1.a.x, arg_1.b)))));
    var var_3 = ~(~(~(~(~vec2<u32>(4294967295u, 23458u)))));
    var_3 = select(_wgslsmith_mod_vec2_u32(~vec2<u32>(countOneBits(global2[_wgslsmith_index_u32(var_3.x, 20u)]), global2[_wgslsmith_index_u32(1u, 20u)] << (var_3.x % 32u)), _wgslsmith_add_vec2_u32(vec2<u32>(~4294967295u, _wgslsmith_add_u32(97197u, var_3.x)), _wgslsmith_add_vec2_u32(reverseBits(vec2<u32>(var_3.x, 0u)), _wgslsmith_mult_vec2_u32(vec2<u32>(var_3.x, var_3.x), vec2<u32>(1u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 20u)], 20u)], 20u)]))))), _wgslsmith_mult_vec2_u32(~select(max(vec2<u32>(26053u, 0u), vec2<u32>(global2[_wgslsmith_index_u32(22603u, 20u)], global2[_wgslsmith_index_u32(var_3.x, 20u)])), vec2<u32>(18284u, 4294967295u), global3.a.a.x && var_2.x), abs(vec2<u32>(4294967295u, 60427u))), any(global3.a.a.xxy));
    return var_3.x;
}

fn func_2(arg_0: vec3<f32>, arg_1: vec2<u32>) -> u32 {
    var var_0 = ~_wgslsmith_mult_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(~27889u, func_3(Struct_3(global3.a, global3.a.a.ww), global3.a), 50742u), vec3<u32>(arg_1.x, ~4294967295u, 45490u | global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(40336u, 20u)], 20u)])), ~max(vec3<u32>(1u, 4294967295u, 4294967295u) << (vec3<u32>(55695u, 0u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(arg_1.x, 20u)], 20u)]) % vec3<u32>(32u)), ~vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(19221u, 20u)], 20u)], 99596u, arg_1.x)));
    var_0 = min(~vec3<u32>(35762u, ~48314u, 8510u), ~(~(~vec3<u32>(13114u, 75012u, 4294967295u))));
    let var_1 = vec3<bool>(!(!global3.b.x), _wgslsmith_f_op_f32(-global3.a.c) >= _wgslsmith_div_f32(_wgslsmith_f_op_f32(457f * arg_0.x), 1847f), ~(countOneBits(-1597i) | global3.a.d.x) == ~countOneBits(-1i));
    var var_2 = 4294967295u;
    var var_3 = ~global3.a.d.x;
    return 151505u;
}

fn func_1() -> Struct_1 {
    let var_0 = ~(vec3<u32>(firstLeadingBit(firstLeadingBit(41375u)), ~0u, firstTrailingBit(4294967295u)) << (vec3<u32>(_wgslsmith_sub_u32(func_2(vec3<f32>(-267f, global3.a.c, global3.a.c), vec2<u32>(35656u, 4294967295u)), _wgslsmith_dot_vec3_u32(vec3<u32>(50722u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 20u)], 20u)], 0u), vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 20u)], 20u)], global2[_wgslsmith_index_u32(1u, 20u)], global2[_wgslsmith_index_u32(14659u, 20u)]))), ~global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 24433u, global2[_wgslsmith_index_u32(1u, 20u)], 43914u), vec4<u32>(global2[_wgslsmith_index_u32(10088u, 20u)], global2[_wgslsmith_index_u32(1u, 20u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 20u)], 20u)], 20u)], global2[_wgslsmith_index_u32(0u, 20u)])), 20u)], global2[_wgslsmith_index_u32(reverseBits(func_3(Struct_3(global3.a, vec2<bool>(global3.b.x, global3.b.x)), Struct_1(global3.a.a, true, 1417f, vec4<i32>(-45196i, -1i, u_input.a.x, global3.a.d.x)))), 20u)]) % vec3<u32>(32u)));
    global0 = array<vec4<bool>, 27>();
    global2 = array<u32, 20>();
    return global3.a;
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    let var_0 = -237f;
    let var_1 = 0u;
    var var_2 = ~vec4<u32>(var_1, global2[_wgslsmith_index_u32(_wgslsmith_add_u32(~(~66204u), var_1), 20u)], var_1 << (var_1 % 32u), _wgslsmith_add_u32(1u, func_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(1024f, var_0, arg_0.c) * vec3<f32>(var_0, global3.a.c, -1803f)), firstTrailingBit(vec2<u32>(var_1, var_1)))));
    let var_3 = -(~(~firstLeadingBit(-global3.a.d.yx)));
    global3 = Struct_3(global3.a, global3.b);
    return Struct_1(!select(!arg_0.a, select(select(arg_0.a, global0[_wgslsmith_index_u32(0u, 27u)], global3.a.a.x), func_1().a, select(global3.a.a, arg_0.a, global3.b.x)), all(global3.a.a.yyy)), global3.b.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(882f + _wgslsmith_div_f32(-1977f, _wgslsmith_f_op_f32(f32(-1f) * -542f))))), abs(-vec4<i32>(~22235i, -1i, 39992i & var_3.x, var_3.x)));
}

fn func_5(arg_0: Struct_1, arg_1: i32, arg_2: Struct_2, arg_3: vec3<i32>) -> Struct_1 {
    global1 = arg_0.a.x;
    var var_0 = Struct_1(select(vec4<bool>(true, global3.a.a.x, !global3.a.b, func_1().b), !vec4<bool>(any(vec4<bool>(true, arg_2.a.a.x, global3.b.x, arg_0.b)), arg_2.a.b, global3.a.a.x, true), vec4<bool>(true, !arg_2.c.a.x, true, arg_2.c.a.x)), true, -1250f, -(func_4(func_1()).d ^ u_input.a));
    global3 = Struct_3(arg_0, !arg_0.a.yy);
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(369f * -1251f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.c) * arg_0.c), _wgslsmith_f_op_f32(ceil(132f)), var_0.c)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(var_0.c - arg_2.a.c), arg_0.c, _wgslsmith_div_f32(global3.a.c, 242f), _wgslsmith_f_op_f32(trunc(463f)))))));
    var_0 = Struct_1(arg_2.c.a, func_4(arg_0).a.x, func_1().c, firstTrailingBit(vec4<i32>(_wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(global3.a.d.x, var_0.d.x, 2147483647i, 0i), u_input.a), arg_1), _wgslsmith_sub_i32(0i, 1i), max(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, -12578i, 40511i), arg_0.d.zxz), firstLeadingBit(2147483647i)), -1i)));
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<bool>, 27>();
    var var_0 = func_5(func_4(func_1()), u_input.a.x, Struct_2(func_4(func_1()), vec2<i32>(~(-2147483647i), _wgslsmith_dot_vec4_i32(u_input.a & u_input.a, vec4<i32>(global3.a.d.x, 31433i, 0i, 25426i))), Struct_1(!(!global3.a.a), !(!global3.a.b), 1833f, vec4<i32>(global3.a.d.x, u_input.b, u_input.a.x, u_input.b) << (~vec4<u32>(42847u, global2[_wgslsmith_index_u32(4294967295u, 20u)], global2[_wgslsmith_index_u32(4294967295u, 20u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(11217u, 20u)], 20u)], 20u)]) % vec4<u32>(32u)))), u_input.a.xwy);
    let x = u_input.a;
    s_output = StorageBuffer(global2[_wgslsmith_index_u32(~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(min(func_3(Struct_3(global3.a, vec2<bool>(global3.b.x, true)), func_1()), 0u), 20u)], 20u)], 20u)], min(_wgslsmith_mult_vec4_u32(vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(62971u, 20u)], 20u)], 20u)], 20u)], 77658u, ~4294967295u, ~global2[_wgslsmith_index_u32(0u, 20u)]), vec4<u32>(1u, global2[_wgslsmith_index_u32(37350u, 20u)] & 38705u, ~global2[_wgslsmith_index_u32(28383u, 20u)], ~4294967295u)), ~select(~vec4<u32>(1u, 1u, global2[_wgslsmith_index_u32(53790u, 20u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(24145u, 20u)], 20u)]), vec4<u32>(4294967295u, 4294967295u, global2[_wgslsmith_index_u32(91556u, 20u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(5227u, 20u)], 20u)]), !var_0.a)), vec3<i32>(_wgslsmith_mod_i32(~countOneBits(u_input.a.x), firstLeadingBit(33307i)), -u_input.a.x, _wgslsmith_clamp_i32(global3.a.d.x, min(u_input.a.x, var_0.d.x) ^ _wgslsmith_clamp_i32(1i, global3.a.d.x, 1826i), -47849i)));
}


struct Struct_1 {
    a: vec2<bool>,
    b: bool,
    c: vec2<i32>,
    d: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: u32,
    d: u32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec3<f32>,
    d: vec3<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 21> = array<vec4<i32>, 21>(vec4<i32>(-1i, 0i, i32(-2147483648), 1i), vec4<i32>(i32(-2147483648), 33402i, 35389i, i32(-2147483648)), vec4<i32>(0i, 0i, i32(-2147483648), -27953i), vec4<i32>(0i, -39266i, i32(-2147483648), 0i), vec4<i32>(18314i, -1i, -1i, -46294i), vec4<i32>(0i, 17114i, 0i, i32(-2147483648)), vec4<i32>(1i, -74188i, 0i, -30011i), vec4<i32>(42852i, -32974i, i32(-2147483648), 2147483647i), vec4<i32>(18960i, i32(-2147483648), 0i, -1i), vec4<i32>(i32(-2147483648), 0i, 21232i, 3168i), vec4<i32>(0i, -31333i, 1i, i32(-2147483648)), vec4<i32>(58854i, i32(-2147483648), -1i, 2147483647i), vec4<i32>(-4448i, 1i, 2147483647i, 0i), vec4<i32>(2147483647i, i32(-2147483648), -13727i, 2147483647i), vec4<i32>(0i, i32(-2147483648), 2147483647i, 2147483647i), vec4<i32>(2147483647i, 17610i, -38005i, 22431i), vec4<i32>(-5770i, -1i, 1i, -29510i), vec4<i32>(-14924i, 53360i, 58809i, -25818i), vec4<i32>(2455i, 2794i, 10654i, 2147483647i), vec4<i32>(2147483647i, 0i, 16275i, 15795i), vec4<i32>(2147483647i, i32(-2147483648), -31690i, 0i));

var<private> global1: Struct_3 = Struct_3(true);

var<private> global2: array<vec4<bool>, 1>;

var<private> global3: array<i32, 26>;

var<private> global4: vec2<bool>;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: f32, arg_1: Struct_1, arg_2: Struct_1) -> f32 {
    global0 = array<vec4<i32>, 21>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_0 - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(arg_0))))))));
}

fn func_2(arg_0: vec2<i32>, arg_1: vec2<i32>, arg_2: i32) -> u32 {
    global4 = vec2<bool>(!global4.x, (!(true | global1.a) || global4.x) || false);
    var var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1372f, -1000f, -267f, 1005f))))) - _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-746f, -1109f, 686f, -362f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(1152f, 113f, 1556f, -1000f) * vec4<f32>(-600f, 1000f, -1977f, -418f))))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-1950f, _wgslsmith_f_op_f32(func_3(1142f, Struct_1(vec2<bool>(true, false), true, arg_1, vec2<i32>(974i, u_input.b.x)), Struct_1(vec2<bool>(true, true), global4.x, u_input.b.yy, arg_0))), _wgslsmith_f_op_f32(164f + 643f), _wgslsmith_f_op_f32(abs(120f))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(724f, -275f, -1000f, -373f)) + vec4<f32>(-1000f, 944f, 1006f, 105f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(419f, _wgslsmith_f_op_f32(-2044f * 2243f), -292f, _wgslsmith_f_op_f32(round(-1021f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(497f, 472f, -1256f, -568f))))));
    let var_1 = global0[_wgslsmith_index_u32(~(~select(u_input.a, countOneBits(_wgslsmith_mult_u32(u_input.c, 1u)), all(!vec3<bool>(false, global1.a, true)))), 21u)];
    let var_2 = vec4<bool>(any(!(!vec3<bool>(global1.a, global1.a, false))), false, !(_wgslsmith_f_op_f32(f32(-1f) * -1999f) < var_0.x), select(true, true, any(vec4<bool>(any(global2[_wgslsmith_index_u32(u_input.d, 1u)]), all(vec2<bool>(true, false)), global1.a, any(vec4<bool>(true, global4.x, false, global1.a))))));
    let var_3 = var_0.x;
    return _wgslsmith_div_u32(abs(1u), 45293u);
}

fn func_1() -> Struct_2 {
    let var_0 = ~_wgslsmith_sub_vec4_u32(vec4<u32>(~func_2(vec2<i32>(2147483647i, u_input.b.x), vec2<i32>(1i, -13438i), u_input.b.x), countOneBits(u_input.e.x), func_2(_wgslsmith_add_vec2_i32(u_input.b.zz, u_input.b.zz), vec2<i32>(u_input.b.x, u_input.b.x), 2147483647i >> (1u % 32u)), u_input.e.x), ~vec4<u32>(u_input.e.x ^ 89079u, u_input.d, countOneBits(u_input.e.x), ~u_input.a));
    let var_1 = select(!(!(!select(vec3<bool>(false, false, false), vec3<bool>(true, true, global4.x), vec3<bool>(global1.a, false, global4.x)))), vec3<bool>(!(!all(vec2<bool>(global1.a, false))), global4.x, true), true);
    global2 = array<vec4<bool>, 1>();
    var var_2 = Struct_2(Struct_1(!vec2<bool>(!global4.x, select(var_1.x, global1.a, global1.a)), true, u_input.b.xx, _wgslsmith_clamp_vec2_i32(max(u_input.b.zx, ~vec2<i32>(global3[_wgslsmith_index_u32(58703u, 26u)], 37059i)), firstTrailingBit(-vec2<i32>(u_input.b.x, global3[_wgslsmith_index_u32(36482u, 26u)])), u_input.b.zx)));
    global0 = array<vec4<i32>, 21>();
    return Struct_2(Struct_1(vec2<bool>(!var_2.a.a.x, true), !all(vec4<bool>(global1.a, true, var_1.x, false)), vec2<i32>(-34824i, var_2.a.c.x), _wgslsmith_clamp_vec2_i32(u_input.b.zz, firstTrailingBit(countOneBits(vec2<i32>(-60225i, -5302i))), -max(var_2.a.c, var_2.a.c))));
}

fn func_4(arg_0: u32, arg_1: vec4<bool>, arg_2: Struct_2) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2399f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f - 713f) + _wgslsmith_f_op_f32(func_3(-187f, arg_2.a, arg_2.a))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(1513f)), _wgslsmith_f_op_f32(-2559f - 540f)))));
    let var_1 = global2[_wgslsmith_index_u32(arg_0 >> (4294967295u % 32u), 1u)];
    var var_2 = i32(-1i) * -_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, 1i, arg_2.a.d.x), vec3<i32>(1i, u_input.b.x, u_input.b.x));
    var var_3 = Struct_3(!(any(!arg_1.yyw) | false));
    global0 = array<vec4<i32>, 21>();
    return Struct_3(true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(u_input.c | _wgslsmith_mod_u32(~(40050u & u_input.c), ~u_input.e.x), !global2[_wgslsmith_index_u32(abs(5469u), 1u)], func_1());
    var var_1 = Struct_3(!func_4(u_input.e.x ^ firstLeadingBit(u_input.d), vec4<bool>(true, global1.a | true, global1.a || true, u_input.e.x >= 6745u), Struct_2(func_1().a)).a);
    global4 = select(select(!vec2<bool>(-19224i >= global3[_wgslsmith_index_u32(20843u, 26u)], all(global2[_wgslsmith_index_u32(u_input.d, 1u)])), vec2<bool>(!(true || var_1.a), true), all(!vec3<bool>(true, var_0.a, global4.x))), !select(vec2<bool>(true, true), func_1().a.a, !func_1().a.a), global4.x);
    global2 = array<vec4<bool>, 1>();
    var var_2 = Struct_3(true);
    global2 = array<vec4<bool>, 1>();
    let var_3 = global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(24554u, ~u_input.c) ^ ~53157u, 26u)];
    let x = u_input.a;
    s_output = StorageBuffer(~abs(u_input.e), _wgslsmith_clamp_u32(_wgslsmith_div_u32(abs(~u_input.e.x), u_input.a), 0u, ~(abs(1u) | ~u_input.a)), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1322f, 555f)) - -1680f), -1082f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(430f, 926f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(267f, -595f, 1061f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(209f, -1374f, -2068f) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(466f, -256f, -1000f), vec3<f32>(1000f, -1714f, -238f), vec3<bool>(true, var_0.a, var_0.a)))))), ~(~vec3<u32>(~u_input.a, ~61233u, _wgslsmith_clamp_u32(u_input.c, 1u, 0u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(478f))))));
}


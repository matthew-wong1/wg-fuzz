struct Struct_1 {
    a: bool,
    b: vec4<f32>,
    c: vec2<i32>,
    d: i32,
}

struct Struct_2 {
    a: i32,
    b: f32,
    c: Struct_1,
    d: vec3<i32>,
    e: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<u32>,
    d: vec3<i32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 5> = array<vec3<i32>, 5>(vec3<i32>(49610i, -1i, 0i), vec3<i32>(-12601i, i32(-2147483648), 2147483647i), vec3<i32>(1i, -32337i, 60853i), vec3<i32>(-18578i, 1i, i32(-2147483648)), vec3<i32>(14898i, i32(-2147483648), 1i));

var<private> global1: Struct_2;

var<private> global2: u32 = 0u;

var<private> global3: vec2<i32>;

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3() -> vec2<i32> {
    global1 = Struct_2(-u_input.e.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(global1.b * global1.c.b.x)))), global1.c, -u_input.e, global1.c.a);
    let var_0 = global1.c;
    global2 = u_input.c.x;
    var var_1 = global1.c;
    global0 = array<vec3<i32>, 5>();
    return vec2<i32>(-global3.x, -29359i);
}

fn func_2() -> vec3<bool> {
    var var_0 = global1.c.b.x;
    var var_1 = global3.x;
    var var_2 = _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(-vec3<i32>(global1.a, u_input.e.x, ~u_input.e.x), -vec3<i32>(-3411i, _wgslsmith_mod_i32(2147483647i, 19677i), -1i)), vec3<i32>(-_wgslsmith_add_i32(global3.x, global3.x ^ global1.a), -global3.x & -(i32(-1i) * -2147483647i), -countOneBits(u_input.e.x)));
    let var_3 = Struct_2(12131i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.b)), Struct_1(any(!select(vec3<bool>(global1.e, true, global1.c.a), vec3<bool>(true, false, true), vec3<bool>(global1.c.a, false, true))), global1.c.b, func_3(), global3.x), vec3<i32>(_wgslsmith_div_i32(1i, global3.x), -global3.x << (~abs(u_input.c.x) % 32u), 1i), global1.c.a);
    var var_4 = _wgslsmith_f_op_f32(-1119f - 1f);
    return vec3<bool>(false, all(select(vec2<bool>(all(vec2<bool>(true, global1.e)), global1.c.a), vec2<bool>(true, true), select(select(vec2<bool>(var_3.c.a, global1.c.a), vec2<bool>(false, global1.e), var_3.c.a), vec2<bool>(true, true), false))), false);
}

fn func_1() -> f32 {
    let var_0 = select(func_2(), select(select(select(!vec3<bool>(global1.c.a, global1.e, global1.c.a), select(vec3<bool>(false, false, false), vec3<bool>(global1.c.a, global1.e, true), false), func_2().x), vec3<bool>(true, true, true), !(!vec3<bool>(global1.e, global1.c.a, false))), vec3<bool>(!global1.e || global1.e, any(!vec3<bool>(true, global1.c.a, true)), !func_2().x), any(vec4<bool>(!global1.e, global1.e, !global1.e, false))), vec3<bool>(all(vec4<bool>(true, false, true, global1.c.a)) && (_wgslsmith_f_op_f32(global1.b * global1.c.b.x) >= -2495f), !global1.c.a, all(select(!vec4<bool>(true, global1.c.a, global1.e, true), select(vec4<bool>(true, global1.c.a, false, global1.e), vec4<bool>(false, global1.e, global1.c.a, false), vec4<bool>(global1.e, global1.e, global1.c.a, true)), select(vec4<bool>(true, false, global1.c.a, true), vec4<bool>(false, false, global1.e, false), vec4<bool>(global1.e, global1.e, false, false))))));
    let var_1 = Struct_2(_wgslsmith_mod_i32(-(~(~1i)), _wgslsmith_mod_i32(-min(1i, global1.a), 0i)), 1603f, Struct_1(-14515i > ~global1.c.c.x, global1.c.b, vec2<i32>(abs(countOneBits(-7455i)), abs(min(global3.x, global1.d.x))), 41215i), ~(-global1.d), _wgslsmith_f_op_f32(global1.b - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1578f) * -725f)) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1018f * global1.b))));
    var var_2 = var_1.c;
    var var_3 = true;
    var_3 = var_1.e;
    return -263f;
}

fn func_4(arg_0: u32, arg_1: Struct_2, arg_2: bool, arg_3: Struct_2) -> Struct_2 {
    global2 = 24374u;
    var var_0 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_1.b), _wgslsmith_f_op_f32(max(-229f, 1000f)), true)), _wgslsmith_f_op_f32(exp2(arg_1.b)), _wgslsmith_f_op_f32(arg_1.b + _wgslsmith_f_op_f32(arg_3.b + global1.c.b.x))) * _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-arg_1.c.b.yyx))))));
    global0 = array<vec3<i32>, 5>();
    global0 = array<vec3<i32>, 5>();
    var var_1 = _wgslsmith_f_op_vec3_f32(arg_3.c.b.xzy + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_3.c.b.yyy))), _wgslsmith_f_op_vec3_f32(step(arg_3.c.b.xwy, _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(1193f, arg_1.c.b.x, 656f), arg_3.c.b.xwx)), arg_1.c.b.yww)))), !select(!vec3<bool>(arg_1.e, true, false), select(vec3<bool>(arg_1.c.a, global1.c.a, true), vec3<bool>(arg_1.e, false, arg_3.c.a), arg_1.c.a), func_2()))));
    return arg_3;
}

fn func_5(arg_0: Struct_2, arg_1: f32, arg_2: Struct_1, arg_3: Struct_1) -> Struct_2 {
    let var_0 = 1u;
    global0 = array<vec3<i32>, 5>();
    var var_1 = !any(!select(!vec4<bool>(arg_0.c.a, arg_2.a, arg_0.e, false), select(vec4<bool>(global1.c.a, arg_0.e, true, global1.e), vec4<bool>(arg_0.e, arg_2.a, true, false), vec4<bool>(false, arg_2.a, false, true)), select(vec4<bool>(false, false, true, global1.e), vec4<bool>(true, arg_2.a, false, arg_2.a), false)));
    global1 = func_4(var_0, arg_0, true, Struct_2(-arg_0.a, -365f, func_4(select(firstTrailingBit(227u), var_0 & u_input.b, func_2().x), func_4(4294967295u, Struct_2(arg_2.d, 2040f, arg_2, vec3<i32>(0i, global1.d.x, 1i), global1.e), !arg_0.c.a, func_4(43596u, arg_0, true, Struct_2(1i, global1.b, arg_3, vec3<i32>(-48150i, 3455i, u_input.d.x), true))), true, Struct_2(~global3.x, -792f, Struct_1(global1.e, vec4<f32>(arg_1, 218f, -557f, arg_3.b.x), vec2<i32>(-35143i, arg_2.c.x), 72262i), global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(94347u, 75644u), 5u)], arg_0.e && arg_3.a)).c, arg_0.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-519f))) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1078f * global1.c.b.x) * -1120f)));
    var var_2 = !arg_2.a;
    return Struct_2(u_input.e.x, arg_3.b.x, global1.c, _wgslsmith_sub_vec3_i32(vec3<i32>(_wgslsmith_dot_vec2_i32(global1.c.c, arg_2.c), func_4(countOneBits(u_input.a), func_4(41974u, Struct_2(-41751i, 1111f, global1.c, vec3<i32>(0i, arg_3.d, -2147483647i), arg_3.a), true, Struct_2(2147483647i, 633f, arg_3, global0[_wgslsmith_index_u32(0u, 5u)], global1.c.a)), arg_0.c.a, arg_0).a, -(0i | arg_2.c.x)), -reverseBits(vec3<i32>(3137i, arg_0.d.x, global1.c.c.x))), false);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<bool>(false, global1.c.a);
    var var_1 = global1.c.b.ywx;
    var_1 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_1.x))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x))), 128f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(var_1.x)))))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-global1.c.b.wxy), _wgslsmith_f_op_vec3_f32(select(global1.c.b.xzy, global1.c.b.yzy, vec3<bool>(var_0.x, global1.c.a, true)))))), vec3<f32>(var_1.x, -284f, var_1.x), !(!var_0.x))));
    var var_2 = func_5(func_4(27836u, Struct_2(global3.x, _wgslsmith_f_op_f32(func_1()), global1.c, vec3<i32>(1i, -6651i, firstTrailingBit(-2147483647i)), var_1.x <= _wgslsmith_f_op_f32(trunc(-847f))), !var_0.x, Struct_2(_wgslsmith_sub_i32(i32(-1i) * -1i, _wgslsmith_div_i32(u_input.d.x, -14699i)), var_1.x, global1.c, min(_wgslsmith_mod_vec3_i32(global1.d, vec3<i32>(global1.a, u_input.d.x, 2147483647i)), global1.d), true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-654f - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(var_1.x, global1.c.b.x))))) * _wgslsmith_f_op_f32(func_1())), Struct_1(global1.e, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global1.c.b) * _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.c.b.x, global1.b, global1.b, -626f) + vec4<f32>(155f, var_1.x, var_1.x, global1.b)))), (~vec2<i32>(global1.a, global3.x) >> (u_input.c.yy % vec2<u32>(32u))) & -_wgslsmith_div_vec2_i32(global1.c.c, global1.c.c), ~(~(~2147483647i))), Struct_1(true, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_1.x, 959f, -322f, 126f))))), -abs(reverseBits(vec2<i32>(-25538i, global1.a))), _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.e.x, u_input.d.x, u_input.d.x, u_input.e.x), _wgslsmith_sub_vec4_i32(vec4<i32>(global3.x, 2147483647i, u_input.d.x, global3.x), vec4<i32>(u_input.d.x, global3.x, u_input.d.x, global3.x))), vec4<i32>(2147483647i, global1.a, u_input.d.x, global1.a) >> (~vec4<u32>(1u, 19569u, 0u, u_input.a) % vec4<u32>(32u)))));
    global0 = array<vec3<i32>, 5>();
    let var_3 = abs(u_input.c.x);
    let var_4 = var_2.c.b;
    var_1 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1330f), var_4.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.c.b.x, _wgslsmith_f_op_f32(var_1.x + 457f)))), _wgslsmith_f_op_vec3_f32(-var_2.c.b.wwz));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_4.x), var_4.x), (_wgslsmith_div_u32(~u_input.b, u_input.a) | ~u_input.c.x) & 0u);
}


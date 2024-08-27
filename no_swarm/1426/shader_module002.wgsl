struct Struct_1 {
    a: f32,
    b: vec3<u32>,
    c: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: vec3<i32>,
    d: vec4<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(-1444f, vec3<u32>(1u, 1u, 1u), vec4<i32>(-1i, i32(-2147483648), 2147483647i, 41587i)), vec3<i32>(15825i, 14158i, 53884i));

var<private> global1: array<Struct_3, 14>;

var<private> global2: vec4<f32>;

var<private> global3: vec2<bool>;

var<private> global4: f32;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3(arg_0: vec3<bool>) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(global2.x * 1000f);
    global4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(589f * -626f)))))));
    let var_1 = _wgslsmith_f_op_vec3_f32(select(global2.zwx, vec3<f32>(global2.x, 1272f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(global2.x, global0.a.a), _wgslsmith_f_op_f32(2855f * global0.a.a))))), global0.a.c.x < global0.a.c.x));
    global3 = vec2<bool>(true, any(select(vec4<bool>(true && arg_0.x, false, !arg_0.x, global3.x && false), vec4<bool>(false, true, arg_0.x, any(arg_0)), true)));
    var var_2 = !select(select(vec4<bool>(all(vec2<bool>(false, false)), arg_0.x | arg_0.x, all(vec2<bool>(false, global3.x)), select(true, global3.x, arg_0.x)), !(!vec4<bool>(true, false, arg_0.x, arg_0.x)), select(!vec4<bool>(arg_0.x, global3.x, arg_0.x, global3.x), select(vec4<bool>(true, arg_0.x, global3.x, global3.x), vec4<bool>(global3.x, global3.x, true, false), true), select(vec4<bool>(global3.x, true, global3.x, false), vec4<bool>(true, false, true, arg_0.x), vec4<bool>(false, true, global3.x, global3.x)))), !select(vec4<bool>(true, arg_0.x, global3.x, false), vec4<bool>(true, global3.x, false, true), true), !(!(!vec4<bool>(arg_0.x, global3.x, false, global3.x))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global0.a.a - _wgslsmith_f_op_f32(232f * 629f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(389f * var_1.x)), false))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(736f))));
}

fn func_2() -> Struct_4 {
    let var_0 = 1u;
    global2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(global2.x, global0.a.a, _wgslsmith_f_op_f32(func_3(!(!vec3<bool>(global3.x, false, true)))), _wgslsmith_f_op_f32(func_3(select(!vec3<bool>(global3.x, global3.x, true), !vec3<bool>(global3.x, false, global3.x), false)))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(586f + -636f) - global0.a.a), global2.x, global0.a.a, _wgslsmith_f_op_f32(floor(234f))) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(913f, global0.a.a, global2.x, global0.a.a))), vec4<f32>(402f, _wgslsmith_f_op_f32(-1189f + global2.x), _wgslsmith_f_op_f32(f32(-1f) * -765f), -1000f), !vec4<bool>(global3.x, global3.x, global3.x, true)))));
    global2 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, 854f, 1522f, global0.a.a)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a.a, global2.x, -1201f, 2293f))))) - _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-341f, global0.a.a, -1274f, global0.a.a))))))));
    global4 = global0.a.a;
    let var_1 = select(!(!(!select(vec2<bool>(true, global3.x), vec2<bool>(true, false), vec2<bool>(global3.x, global3.x)))), select(!vec2<bool>(all(vec3<bool>(global3.x, true, global3.x)), global3.x), !select(select(vec2<bool>(false, global3.x), vec2<bool>(global3.x, global3.x), vec2<bool>(global3.x, false)), select(vec2<bool>(global3.x, true), vec2<bool>(global3.x, global3.x), vec2<bool>(global3.x, true)), select(vec2<bool>(false, global3.x), vec2<bool>(true, false), true)), vec2<bool>(global3.x, true)), !vec2<bool>(all(vec2<bool>(false, global3.x)), true));
    return Struct_4(Struct_2(global0.a, global0.a.c.zzy), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1130f - _wgslsmith_div_f32(global2.x, global0.a.a)) * -405f), firstLeadingBit(~_wgslsmith_add_vec3_u32(global0.a.b, u_input.a.wzz)), global0.a.c));
}

fn func_4(arg_0: Struct_4, arg_1: Struct_4) -> Struct_2 {
    global4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a.a.a) - _wgslsmith_f_op_f32(max(877f, global2.x))), 154f))));
    let var_0 = _wgslsmith_sub_vec2_i32(func_2().b.c.xz, (select(countOneBits(vec2<i32>(2147483647i, arg_1.b.c.x)), global0.b.yz, any(vec4<bool>(true, false, true, global3.x))) | -reverseBits(vec2<i32>(-35968i, -2147483647i))) ^ (_wgslsmith_clamp_vec2_i32(-arg_0.a.b.zy, select(arg_0.a.b.yz, vec2<i32>(global0.b.x, global0.a.c.x), vec2<bool>(true, global3.x)), global0.b.zy) & _wgslsmith_mult_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(-2147483647i, -10456i), global0.b.zz), -arg_0.b.c.zx)));
    var var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.a.a.a, arg_0.b.a) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -351f), _wgslsmith_f_op_f32(step(arg_1.a.a.a, _wgslsmith_f_op_f32(-global2.x))))));
    return func_2().a;
}

fn func_1(arg_0: i32, arg_1: i32, arg_2: Struct_3) -> Struct_1 {
    let var_0 = u_input.a.yzz;
    var var_1 = 41486u;
    var var_2 = Struct_4(func_4(func_2(), func_2()), Struct_1(_wgslsmith_f_op_f32(-global2.x), global0.a.b, func_4(Struct_4(arg_2.a, arg_2.a.a), func_2()).a.c));
    global2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_div_f32(-959f, 581f), _wgslsmith_f_op_f32(f32(-1f) * -897f), _wgslsmith_f_op_f32(trunc(var_2.b.a)), global0.a.a))) - vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -742f), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global2.x, var_2.b.a))), arg_2.a.a.a)), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_2.a.a.a * -1788f))), _wgslsmith_f_op_f32(min(global0.a.a, _wgslsmith_f_op_f32(round(146f))))), var_2.b.a, _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -811f), _wgslsmith_f_op_f32(var_2.b.a - 1000f)), var_2.a.a.a), global2.x));
    let var_3 = arg_2.a.a;
    return func_2().a.a;
}

fn func_5(arg_0: f32, arg_1: Struct_4, arg_2: u32, arg_3: vec3<bool>) -> Struct_1 {
    var var_0 = func_2();
    let var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(var_0.a.a.a - 1075f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(select(vec3<bool>(global3.x, false, true), arg_3, true))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.a.a.a + 214f), _wgslsmith_f_op_f32(trunc(global2.x))))) + global2.zw);
    global0 = Struct_2(var_0.a.a, firstLeadingBit(_wgslsmith_div_vec3_i32(~(-arg_1.b.c.xzz), vec3<i32>(-1i, func_2().a.b.x, arg_1.a.a.c.x))));
    var var_2 = arg_1.a;
    global4 = global0.a.a;
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec3<bool>(arg_3.x, !arg_3.x, true)))), reverseBits(func_2().a.a.b), vec4<i32>(-31247i >> (var_2.a.b.x % 32u), -var_0.a.a.c.x, func_2().b.c.x, _wgslsmith_dot_vec4_i32(var_2.a.c, ~vec4<i32>(-2241i, var_2.a.c.x, 2147483647i, var_0.a.b.x))));
}

fn func_6(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: Struct_4) -> vec4<bool> {
    var var_0 = vec2<bool>(false, any(vec2<bool>(!any(vec4<bool>(global3.x, global3.x, global3.x, global3.x)), !select(true, false, true))));
    global4 = -241f;
    var var_1 = Struct_2(Struct_1(-478f, reverseBits(vec3<u32>(global0.a.b.x, global0.a.b.x, 1u) | _wgslsmith_mult_vec3_u32(arg_2.b.b, vec3<u32>(42447u, u_input.b.x, 9616u))), select(arg_2.b.c, firstLeadingBit(vec4<i32>(arg_0.c.x, global0.b.x, arg_1.x, arg_0.c.x)), !select(vec4<bool>(var_0.x, false, global3.x, true), vec4<bool>(global3.x, true, false, true), false))), arg_2.a.a.c.wyx);
    global4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -143f))) - _wgslsmith_f_op_f32(-arg_2.a.a.a)));
    global1 = array<Struct_3, 14>();
    return select(!select(vec4<bool>(all(vec4<bool>(var_0.x, false, global3.x, true)), 4294967295u > arg_0.b.x, true, false != global3.x), vec4<bool>(true, all(vec3<bool>(true, false, true)), var_0.x, global3.x), vec4<bool>(global3.x, false, any(vec4<bool>(false, true, global3.x, global3.x)), var_0.x)), select(!vec4<bool>(true & global3.x, !global3.x, var_0.x, 100917u >= var_1.a.b.x), select(!select(vec4<bool>(var_0.x, false, var_0.x, global3.x), vec4<bool>(var_0.x, false, var_0.x, var_0.x), true), vec4<bool>(global3.x, true, global3.x, var_1.b.x < var_1.b.x), global3.x), true), func_1(-1860i & arg_2.a.a.c.x, var_1.a.c.x, Struct_3(func_4(arg_2, Struct_4(arg_2.a, arg_0)))).b.x >= ~abs(u_input.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_3, 14>();
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a.a) - _wgslsmith_f_op_f32(global0.a.a * 212f)), global0.a.a)), global0.a.a);
    var var_1 = !func_6(func_5(_wgslsmith_f_op_f32(ceil(-316f)), Struct_4(Struct_2(global0.a, vec3<i32>(global0.b.x, global0.a.c.x, 1i)), func_1(-21323i, global0.b.x, global1[_wgslsmith_index_u32(4294967295u, 14u)])), 36444u, select(select(vec3<bool>(false, false, global3.x), vec3<bool>(false, true, global3.x), global3.x), !vec3<bool>(global3.x, false, false), true)), ~func_5(var_0, Struct_4(Struct_2(Struct_1(global0.a.a, vec3<u32>(global0.a.b.x, 15829u, 0u), global0.a.c), global0.b), Struct_1(global0.a.a, global0.a.b, vec4<i32>(28887i, global0.a.c.x, global0.b.x, global0.a.c.x))), 88025u, select(vec3<bool>(global3.x, true, global3.x), vec3<bool>(false, false, true), vec3<bool>(false, false, global3.x))).c, Struct_4(Struct_2(func_1(global0.b.x, 0i, global1[_wgslsmith_index_u32(u_input.b.x, 14u)]), reverseBits(vec3<i32>(global0.a.c.x, -1487i, global0.b.x))), Struct_1(_wgslsmith_f_op_f32(-274f - 1100f), _wgslsmith_clamp_vec3_u32(vec3<u32>(1812u, global0.a.b.x, 1u), global0.a.b, vec3<u32>(global0.a.b.x, global0.a.b.x, 16418u)), ~global0.a.c)));
    let x = u_input.a;
    s_output = StorageBuffer(select(u_input.a, _wgslsmith_mod_vec4_u32(~countOneBits(vec4<u32>(1735u, u_input.a.x, 4292u, global0.a.b.x)), vec4<u32>(global0.a.b.x, max(global0.a.b.x, 0u), ~u_input.a.x, _wgslsmith_sub_u32(4294967295u, global0.a.b.x))), !select(!vec4<bool>(false, true, var_1.x, true), !vec4<bool>(var_1.x, var_1.x, true, global3.x), func_6(Struct_1(global2.x, u_input.a.zxz, vec4<i32>(0i, global0.b.x, -2147483647i, global0.a.c.x)), vec4<i32>(global0.b.x, global0.b.x, -2147483647i, global0.a.c.x), Struct_4(Struct_2(global0.a, vec3<i32>(-2147483647i, global0.b.x, global0.a.c.x)), Struct_1(-519f, vec3<u32>(1u, u_input.b.x, 0u), global0.a.c))))), global0.a.a, firstTrailingBit(_wgslsmith_div_vec3_i32(~(~vec3<i32>(45008i, global0.b.x, global0.b.x)), vec3<i32>(global0.b.x << (global0.a.b.x % 32u), func_4(Struct_4(Struct_2(global0.a, global0.a.c.zzw), Struct_1(-1000f, u_input.a.wxz, global0.a.c)), Struct_4(Struct_2(Struct_1(596f, vec3<u32>(74974u, global0.a.b.x, 4294967295u), vec4<i32>(27690i, -18760i, 1i, -1i)), vec3<i32>(2147483647i, -2147483647i, global0.b.x)), Struct_1(1167f, vec3<u32>(global0.a.b.x, 4294967295u, 38425u), vec4<i32>(global0.b.x, global0.a.c.x, global0.a.c.x, global0.b.x)))).b.x, -global0.b.x))), max(~u_input.a, _wgslsmith_mod_vec4_u32(u_input.a, vec4<u32>(0u, u_input.a.x, 48671u, 4294967295u) << (~u_input.a % vec4<u32>(32u)))), ~(~_wgslsmith_sub_u32(4294967295u, firstTrailingBit(global0.a.b.x))));
}


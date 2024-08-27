struct Struct_1 {
    a: vec3<i32>,
    b: bool,
    c: i32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
    b: vec2<i32>,
    c: f32,
    d: Struct_2,
    e: i32,
}

struct Struct_4 {
    a: vec3<i32>,
    b: u32,
    c: i32,
}

struct Struct_5 {
    a: vec2<u32>,
    b: bool,
    c: Struct_2,
    d: i32,
    e: Struct_3,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: vec4<i32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec4<i32>,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 6> = array<Struct_2, 6>(Struct_2(1188f, Struct_1(vec3<i32>(16069i, 49624i, 29541i), true, -32307i)), Struct_2(1705f, Struct_1(vec3<i32>(-1i, 2147483647i, -27214i), false, 55878i)), Struct_2(1474f, Struct_1(vec3<i32>(32616i, -50983i, 19734i), true, 1i)), Struct_2(-493f, Struct_1(vec3<i32>(0i, -1i, 0i), true, -24723i)), Struct_2(-982f, Struct_1(vec3<i32>(i32(-2147483648), 32603i, i32(-2147483648)), false, 2147483647i)), Struct_2(-110f, Struct_1(vec3<i32>(-8945i, 2147483647i, 2147483647i), false, -1i)));

var<private> global1: vec2<f32> = vec2<f32>(613f, -799f);

var<private> global2: array<Struct_2, 4>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1) -> bool {
    var var_0 = ~u_input.b;
    let var_1 = vec4<bool>(arg_0.b, !(!(!all(vec2<bool>(arg_0.b, true)))), false, !arg_0.b != arg_0.b);
    global0 = array<Struct_2, 6>();
    var var_2 = Struct_4(~vec3<i32>(u_input.c.x, arg_0.c, u_input.c.x), var_0.x, 16120i);
    var var_3 = u_input.b;
    return arg_0.b;
}

fn func_2(arg_0: Struct_1, arg_1: bool, arg_2: vec2<bool>) -> bool {
    var var_0 = true;
    let var_1 = -584f;
    let var_2 = select(vec3<bool>(func_3(Struct_1(arg_0.a, arg_0.b == arg_1, 0i)), !(!arg_1), all(arg_2)), select(select(vec3<bool>(func_3(arg_0), u_input.e == -42434i, !arg_0.b), vec3<bool>(true, !arg_2.x, u_input.b.x > 0u), vec3<bool>(true, true, true)), select(!vec3<bool>(false, false, arg_1), select(!vec3<bool>(false, arg_2.x, false), vec3<bool>(false, arg_2.x, arg_0.b), !vec3<bool>(arg_1, true, true)), vec3<bool>(true, arg_1, false)), arg_1), !(!select(!vec3<bool>(arg_1, false, arg_2.x), select(vec3<bool>(arg_2.x, arg_1, arg_0.b), vec3<bool>(arg_1, arg_1, arg_0.b), vec3<bool>(false, arg_0.b, arg_0.b)), arg_1)));
    let var_3 = global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.b.x, ~u_input.b.x << (_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, ~4294967295u, _wgslsmith_add_u32(78177u, u_input.b.x)), ~firstTrailingBit(vec3<u32>(u_input.a.x, u_input.b.x, u_input.a.x))) % 32u), abs(u_input.b.x | 1u)), 4u)];
    global1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, _wgslsmith_f_op_f32(var_1 * -1051f)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(-1274f, global1.x))))));
    return true;
}

fn func_1(arg_0: f32, arg_1: vec2<u32>, arg_2: vec2<f32>, arg_3: Struct_5) -> vec4<bool> {
    return select(!(!vec4<bool>(arg_3.e.d.b.b, true, func_2(Struct_1(arg_3.c.b.a, true, arg_3.d), true, vec2<bool>(arg_3.b, true)), func_3(Struct_1(u_input.c.zwx, arg_3.c.b.b, arg_3.c.b.a.x)))), vec4<bool>(arg_3.b, false, !(!arg_3.b), arg_3.c.b.b), !select(!(!vec4<bool>(true, arg_3.e.d.b.b, false, false)), vec4<bool>(arg_3.c.b.b, true || arg_3.b, arg_3.c.b.b, false), all(vec2<bool>(true, arg_3.b))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 6>();
    var var_0 = select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, u_input.a.x != 13839u, true, any(vec2<bool>(false, false))), true), vec4<bool>(true, false, true, true), !select(select(select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, false), true), select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, true), true), func_1(-1183f, vec2<u32>(u_input.b.x, 0u), vec2<f32>(global1.x, global1.x), Struct_5(vec2<u32>(u_input.b.x, 24493u), false, global2[_wgslsmith_index_u32(u_input.b.x, 4u)], u_input.d, Struct_3(u_input.c.yw, u_input.c.yz, 203f, global0[_wgslsmith_index_u32(0u, 6u)], 2147483647i)))), vec4<bool>(true, true, true, all(vec4<bool>(false, false, true, false))), func_2(Struct_1(u_input.c.wwx, false, 32836i), u_input.a.x <= u_input.a.x, func_1(-573f, u_input.b, vec2<f32>(-228f, global1.x), Struct_5(vec2<u32>(0u, u_input.b.x), false, Struct_2(global1.x, Struct_1(u_input.c.zyy, true, -2147483647i)), -1i, Struct_3(u_input.c.yx, u_input.c.yz, -1479f, Struct_2(global1.x, Struct_1(vec3<i32>(1i, 1i, u_input.d), true, u_input.e)), -45575i))).zz)));
    var_0 = select(!vec4<bool>(any(vec4<bool>(true, var_0.x, var_0.x, var_0.x)) != var_0.x, false, true, var_0.x), select(select(vec4<bool>(!var_0.x, false && var_0.x, false, var_0.x), select(!vec4<bool>(var_0.x, false, var_0.x, var_0.x), vec4<bool>(true, false, false, var_0.x), vec4<bool>(true, true, var_0.x, var_0.x)), select(var_0.x, var_0.x, var_0.x) & !var_0.x), func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1084f))), ~_wgslsmith_div_vec2_u32(u_input.a, vec2<u32>(u_input.b.x, u_input.a.x)), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1734f, global1.x), vec2<f32>(570f, global1.x))))), Struct_5(u_input.a, true, global2[_wgslsmith_index_u32(u_input.a.x, 4u)], u_input.e, Struct_3(vec2<i32>(-3112i, -61277i), vec2<i32>(u_input.d, -5376i), global1.x, global2[_wgslsmith_index_u32(1u, 4u)], u_input.c.x))), 1000f >= global1.x), func_2(Struct_1(vec3<i32>(_wgslsmith_div_i32(u_input.e, u_input.e), firstLeadingBit(u_input.e), 0i), func_3(Struct_1(u_input.c.xwz, true, 45347i)), -5603i), var_0.x, !select(select(vec2<bool>(var_0.x, false), vec2<bool>(var_0.x, var_0.x), true), vec2<bool>(var_0.x, var_0.x), func_1(global1.x, vec2<u32>(u_input.a.x, 1u), vec2<f32>(-1408f, global1.x), Struct_5(vec2<u32>(35981u, u_input.a.x), var_0.x, global0[_wgslsmith_index_u32(u_input.b.x, 6u)], -13320i, Struct_3(vec2<i32>(39078i, 23759i), u_input.c.xz, global1.x, global2[_wgslsmith_index_u32(54750u, 4u)], u_input.e))).wy)));
    let var_1 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(1561f, 825f, global1.x), _wgslsmith_div_vec3_f32(vec3<f32>(global1.x, global1.x, global1.x), vec3<f32>(1462f, global1.x, 1222f))))))));
    let var_2 = vec2<f32>(var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1067f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(var_1.x)), var_1.x), any(vec3<bool>(var_0.x, var_0.x, var_0.x)) && true))));
    var var_3 = u_input.c.zw;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec2_i32(u_input.c.ww, u_input.c.yw, u_input.c.wy) & countOneBits(_wgslsmith_div_vec2_i32(max(vec2<i32>(7553i, -1i), vec2<i32>(var_3.x, 2147483647i)), _wgslsmith_div_vec2_i32(vec2<i32>(-1i, 21836i), u_input.c.ww))), -u_input.c.x, -vec4<i32>(-_wgslsmith_mod_i32(-1i, -40774i), var_3.x, ~(u_input.d & 0i), _wgslsmith_mult_i32(_wgslsmith_mult_i32(var_3.x, 1i), -4355i << (u_input.a.x % 32u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-513f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -387f)))), 1u);
}


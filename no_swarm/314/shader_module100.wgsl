struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_2,
    c: bool,
    d: f32,
}

struct Struct_4 {
    a: vec4<u32>,
    b: f32,
    c: bool,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(18644u, Struct_1(true), Struct_1(false), Struct_1(true), Struct_1(false));

var<private> global1: bool;

var<private> global2: array<vec2<i32>, 21> = array<vec2<i32>, 21>(vec2<i32>(i32(-2147483648), -60744i), vec2<i32>(i32(-2147483648), 0i), vec2<i32>(-1i, -1i), vec2<i32>(-4662i, -25093i), vec2<i32>(-1i, -1i), vec2<i32>(27181i, 17505i), vec2<i32>(-1i, 0i), vec2<i32>(1i, 0i), vec2<i32>(1i, -1i), vec2<i32>(51046i, 0i), vec2<i32>(2147483647i, 1i), vec2<i32>(9407i, -22896i), vec2<i32>(2147483647i, -1i), vec2<i32>(-1594i, -23009i), vec2<i32>(2147483647i, -53674i), vec2<i32>(1i, 53234i), vec2<i32>(-17730i, -27401i), vec2<i32>(63728i, 1i), vec2<i32>(i32(-2147483648), 2147483647i), vec2<i32>(i32(-2147483648), 1i), vec2<i32>(i32(-2147483648), 19495i));

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: bool) -> bool {
    var var_0 = -firstLeadingBit(firstTrailingBit(vec3<i32>(-1i) * -u_input.b.xyz));
    let var_1 = vec4<bool>(all(!select(!vec4<bool>(false, arg_0, global0.d.a, arg_0), !vec4<bool>(false, global0.c.a, true, false), true)), arg_0, true, global0.e.a);
    let var_2 = _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a.x, (7596u | select(79552u, 4294967295u, var_1.x)) & _wgslsmith_div_u32(_wgslsmith_mod_u32(4732u, u_input.a.x), ~global0.a), global0.a), ~vec3<u32>(firstTrailingBit(global0.a), 108662u, 17574u) & ~min(~vec3<u32>(global0.a, 43068u, global0.a), vec3<u32>(global0.a, 0u, 1u)));
    var_0 = ~vec3<i32>(_wgslsmith_mult_i32(firstLeadingBit(~1i), -51123i), var_0.x, _wgslsmith_sub_i32(-(i32(-1i) * -7200i), 1i));
    global1 = select(all(select(var_1.zwy, select(select(vec3<bool>(var_1.x, false, global0.e.a), var_1.wyy, global0.d.a), select(var_1.zyx, var_1.wwy, vec3<bool>(var_1.x, false, var_1.x)), select(vec3<bool>(var_1.x, true, false), vec3<bool>(false, false, true), arg_0)), select(select(vec3<bool>(false, global0.e.a, true), vec3<bool>(false, arg_0, var_1.x), vec3<bool>(false, arg_0, arg_0)), select(vec3<bool>(false, arg_0, true), vec3<bool>(var_1.x, arg_0, false), vec3<bool>(global0.b.a, arg_0, false)), select(vec3<bool>(true, true, var_1.x), vec3<bool>(global0.c.a, arg_0, true), global0.c.a)))), false, all(!(!(!vec3<bool>(false, arg_0, arg_0)))));
    return all(var_1.zw);
}

fn func_2() -> i32 {
    global0 = Struct_2(reverseBits(~(~_wgslsmith_div_u32(u_input.a.x, global0.a))), global0.e, Struct_1(func_3(select(!global0.c.a, !global0.d.a, any(vec4<bool>(global0.b.a, global0.c.a, global0.e.a, global0.d.a))))), Struct_1(global0.d.a), Struct_1(true));
    global1 = global0.b.a | !((abs(global0.a) > 4294967295u) && global0.c.a);
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(-553f, _wgslsmith_f_op_f32(select(-623f, -1057f, global0.e.a)))))) - 712f) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(-1066f, 1058f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(382f + 482f) * 333f)) * 619f));
    global2 = array<vec2<i32>, 21>();
    global1 = !global0.b.a;
    return -1i;
}

fn func_1(arg_0: Struct_1, arg_1: vec4<u32>) -> Struct_1 {
    global1 = true;
    let var_0 = vec4<i32>(2147483647i, u_input.b.x, min(57204i, func_2()), u_input.b.x);
    let var_1 = firstLeadingBit(arg_1.wzx);
    global2 = array<vec2<i32>, 21>();
    let var_2 = _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-3547f, -1127f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1273f + -509f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1210f)))))));
    return global0.e;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(256f, -551f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(275f, 185f)))))), Struct_2(5726u, global0.d, global0.d, func_1(global0.c, _wgslsmith_div_vec4_u32(vec4<u32>(1u, 53942u, u_input.c, 1u), ~vec4<u32>(0u, 34087u, 0u, 85482u))), func_1(Struct_1(global0.c.a), ~vec4<u32>(16454u, u_input.c, 18648u, 0u))), global0.d.a, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_div_f32(-1783f, 733f), _wgslsmith_f_op_f32(ceil(307f))))), 597f)));
    var var_1 = true;
    let var_2 = Struct_2(9041u, func_1(func_1(Struct_1(func_3(var_0.c)), (vec4<u32>(global0.a, 4294967295u, var_0.b.a, 7316u) >> (vec4<u32>(63895u, 0u, 0u, u_input.c) % vec4<u32>(32u))) ^ abs(vec4<u32>(u_input.a.x, 14588u, u_input.c, 0u))), ~vec4<u32>(1u, global0.a, 1u, ~96773u)), Struct_1(true), func_1(Struct_1(_wgslsmith_f_op_f32(var_0.a.x + var_0.a.x) < _wgslsmith_f_op_f32(f32(-1f) * -1509f)), vec4<u32>(u_input.a.x, 15996u, firstLeadingBit(4147u), firstLeadingBit(1u))), global0.c);
    let var_3 = vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.x))))), _wgslsmith_f_op_f32(-var_0.d));
    let var_4 = u_input.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b, firstLeadingBit(~(~_wgslsmith_clamp_vec4_u32(vec4<u32>(var_0.b.a, 4294967295u, 4294967295u, 4294967295u), vec4<u32>(1652u, 87627u, 10382u, var_2.a), vec4<u32>(var_2.a, var_2.a, var_4, var_4)))));
}


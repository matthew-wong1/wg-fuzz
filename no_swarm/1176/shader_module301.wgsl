struct Struct_1 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<f32>,
    c: f32,
    d: i32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 1>;

var<private> global1: Struct_1 = Struct_1(vec2<bool>(true, true));

var<private> global2: Struct_1;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: Struct_1) -> vec2<bool> {
    let var_0 = select(!select(select(!global1.a, vec2<bool>(arg_2.a.x, global2.a.x), true), global1.a, !global1.a), !select(select(global1.a, select(arg_2.a, vec2<bool>(false, global2.a.x), arg_1.a.x), !global2.a.x), vec2<bool>(true, select(arg_1.a.x, global1.a.x, arg_1.a.x)), false), arg_1.a);
    let var_1 = -2147483647i;
    let var_2 = arg_1;
    global1 = Struct_1(select(select(global1.a, global1.a, any(vec3<bool>(true, true, true))), select(!(!vec2<bool>(false, arg_2.a.x)), vec2<bool>(all(vec3<bool>(arg_2.a.x, arg_2.a.x, var_2.a.x)), any(var_0)), select(vec2<bool>(false, arg_2.a.x), select(global1.a, vec2<bool>(arg_1.a.x, true), arg_1.a.x), arg_2.a)), select(global2.a, !(!global1.a), !select(global2.a, vec2<bool>(var_0.x, false), global1.a))));
    let var_3 = min((vec3<i32>(reverseBits(-1i), ~23591i, -2147483647i) << ((~u_input.c ^ _wgslsmith_sub_vec3_u32(vec3<u32>(1u, 0u, arg_0), vec3<u32>(40218u, 1u, 0u))) % vec3<u32>(32u))) >> (vec3<u32>(_wgslsmith_add_u32(arg_0, ~arg_0), ~(~u_input.c.x), 33384u) % vec3<u32>(32u)), -_wgslsmith_div_vec3_i32(u_input.a, u_input.a));
    return vec2<bool>(any(select(select(!vec3<bool>(var_2.a.x, false, var_0.x), vec3<bool>(true, global1.a.x, var_0.x), !vec3<bool>(var_2.a.x, arg_1.a.x, global2.a.x)), !select(vec3<bool>(false, false, global1.a.x), vec3<bool>(false, arg_2.a.x, false), vec3<bool>(var_2.a.x, true, var_2.a.x)), true)), var_0.x & arg_1.a.x);
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    var var_0 = Struct_1(func_3(8055u, arg_0, arg_0));
    global1 = arg_0;
    var var_1 = global1.a;
    var var_2 = u_input.c.x;
    var var_3 = all(select(vec2<bool>(true, true), !global2.a, !global2.a));
    return Struct_1(select(!vec2<bool>(global2.a.x, var_1.x), global1.a, arg_0.a));
}

fn func_1() -> u32 {
    var var_0 = func_2(global0[_wgslsmith_index_u32(34910u, 1u)]);
    global0 = array<Struct_1, 1>();
    let var_1 = vec2<f32>(1f, 1f);
    global2 = global0[_wgslsmith_index_u32(1u, 1u)];
    var_0 = Struct_1(var_0.a);
    return u_input.c.x | ~1u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~u_input.a;
    var var_1 = -(~vec2<i32>(~_wgslsmith_mult_i32(25380i, 1i), _wgslsmith_dot_vec3_i32(abs(vec3<i32>(var_0.x, -46692i, u_input.a.x)), -u_input.a)));
    var var_2 = select(u_input.c.yy, u_input.c.zz, !all(vec2<bool>(true, global2.a.x))) ^ _wgslsmith_sub_vec2_u32(~_wgslsmith_div_vec2_u32(_wgslsmith_div_vec2_u32(u_input.c.xy, u_input.c.yz), vec2<u32>(u_input.c.x, 8498u)), _wgslsmith_add_vec2_u32(~u_input.c.xy, u_input.c.zy));
    var var_3 = -(9812i | u_input.a.x);
    var var_4 = func_1();
    var var_5 = select(select(!(!(!global2.a)), !vec2<bool>(any(vec3<bool>(true, false, false)), global2.a.x & global1.a.x), select(_wgslsmith_clamp_i32(1i, 31576i, var_0.x) < (-22446i | var_0.x), !func_3(1u, Struct_1(vec2<bool>(global1.a.x, global1.a.x)), Struct_1(vec2<bool>(global1.a.x, true))).x, (global1.a.x == false) & false)), func_3(~46507u, global0[_wgslsmith_index_u32(~_wgslsmith_div_u32(reverseBits(u_input.c.x), 469u), 1u)], Struct_1(vec2<bool>(true, false))), global1.a.x);
    var var_6 = u_input.a.x & firstTrailingBit(firstLeadingBit(_wgslsmith_mod_i32(var_0.x, u_input.b)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-261f + 173f), _wgslsmith_f_op_f32(max(-1749f, 424f)))), _wgslsmith_f_op_f32(round(991f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(246f + -1299f)))))), vec3<f32>(_wgslsmith_f_op_f32(step(992f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1036f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-608f * -1000f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -648f) * _wgslsmith_f_op_f32(sign(1243f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-427f - -1199f) * _wgslsmith_div_f32(366f, 557f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-363f * 1468f) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(-1108f)), 224f, true))), 1i << (max(var_2.x, ~var_2.x) % 32u), ~min(~vec4<u32>(58340u, u_input.c.x, 4294967295u, 1u) >> (vec4<u32>(u_input.c.x, var_2.x, var_2.x, u_input.c.x) % vec4<u32>(32u)), vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, 32583u, u_input.c.x, u_input.c.x), vec4<u32>(u_input.c.x, 60999u, 1u, 1u)), 4294967295u, 3059u, firstLeadingBit(u_input.c.x))));
}


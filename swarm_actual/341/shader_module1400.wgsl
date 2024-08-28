struct Struct_1 {
    a: i32,
    b: vec2<i32>,
    c: vec4<bool>,
    d: vec3<f32>,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(4294967295u, 0u);

var<private> global1: vec3<i32> = vec3<i32>(2147483647i, 5419i, -4759i);

var<private> global2: Struct_1;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec3<i32>, arg_1: bool, arg_2: Struct_1) -> i32 {
    var var_0 = !(!(!global2.c));
    var var_1 = arg_2;
    global0 = vec2<u32>(u_input.a.x, firstLeadingBit(u_input.a.x));
    var_0 = select(select(global2.c, vec4<bool>(_wgslsmith_sub_u32(global0.x, u_input.a.x) < max(27973u, global0.x), !(!var_0.x), true, any(arg_2.c)), any(vec4<bool>(arg_1, select(arg_1, global2.c.x, true), arg_2.c.x || true, !arg_1))), vec4<bool>(!(u_input.a.x < global0.x), !(!(!var_1.c.x)), global2.c.x, global2.c.x), var_1.c);
    var_0 = select(vec4<bool>(false, !(!(arg_2.c.x & false)), !var_0.x, true | !var_0.x), select(select(vec4<bool>(false & arg_2.c.x, false & arg_1, arg_2.c.x, all(var_1.c.zz)), vec4<bool>(any(vec3<bool>(true, var_1.c.x, arg_2.c.x)), true, true, select(var_0.x, var_1.c.x, arg_1)), !select(vec4<bool>(var_1.c.x, true, arg_1, var_1.c.x), var_1.c, var_0.x)), !(!global2.c), vec4<bool>(true, false, any(select(vec3<bool>(true, var_0.x, var_1.c.x), vec3<bool>(var_0.x, arg_2.c.x, false), vec3<bool>(false, var_1.c.x, true))), true)), true);
    return -global2.b.x;
}

fn func_2() -> Struct_1 {
    global0 = ~u_input.a;
    var var_0 = global2.e.x;
    let var_1 = _wgslsmith_mod_vec4_u32(countOneBits(min(abs(vec4<u32>(21462u, 84898u, u_input.a.x, global0.x)), (vec4<u32>(0u, global0.x, 0u, u_input.a.x) >> (vec4<u32>(34051u, global0.x, u_input.a.x, u_input.a.x) % vec4<u32>(32u))) & _wgslsmith_mult_vec4_u32(vec4<u32>(1u, 11813u, global0.x, 0u), vec4<u32>(u_input.a.x, 4294967295u, global0.x, u_input.a.x)))), firstLeadingBit(~(~_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, u_input.a.x, 4294967295u, global0.x), vec4<u32>(8477u, u_input.a.x, 60603u, global0.x)))));
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global2.e.yz)) + _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.e.x) * _wgslsmith_f_op_f32(global2.e.x * global2.e.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1051f * global2.e.x) + _wgslsmith_f_op_f32(-790f + global2.e.x))))));
    let var_3 = -_wgslsmith_div_i32(global2.a, global1.x);
    return Struct_1(global1.x, vec2<i32>(u_input.b.x, func_3(_wgslsmith_mult_vec3_i32(u_input.b, u_input.b), all(global2.c.zw), Struct_1(global1.x, global1.zy, vec4<bool>(global2.c.x, global2.c.x, global2.c.x, false), global2.d, global2.e))) ^ vec2<i32>(global2.b.x, countOneBits(-35577i)), global2.c, _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.x - 1181f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2.e.x), _wgslsmith_f_op_f32(-var_2.x)), 838f), global2.d, !(!select(vec3<bool>(global2.c.x, global2.c.x, false), vec3<bool>(false, false, global2.c.x), global2.c.wwz)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global2.e)) - _wgslsmith_div_vec4_f32(vec4<f32>(-358f, _wgslsmith_f_op_f32(f32(-1f) * -1489f), _wgslsmith_div_f32(1173f, -487f), _wgslsmith_f_op_f32(var_2.x - var_2.x)), global2.e)));
}

fn func_1() -> Struct_1 {
    let var_0 = Struct_1(54434i, firstLeadingBit(vec2<i32>(select(-global2.a, -22229i, true), u_input.c.x)), vec4<bool>(false && all(!global2.c), !global2.c.x, -global2.b.x != _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(global1.yy, global2.b), global2.b), true), _wgslsmith_div_vec3_f32(global2.e.yxz, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(1991f, global2.d.x, -1000f) * vec3<f32>(-662f, global2.e.x, global2.e.x)), global2.e.xww)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(350f, 1000f, global2.d.x, global2.e.x) - global2.e))))));
    var var_1 = func_2();
    global1 = vec3<i32>(_wgslsmith_sub_i32(_wgslsmith_add_i32(global2.a, _wgslsmith_mod_i32(firstLeadingBit(2147483647i), 1i)), global2.b.x), 1i, 48321i);
    var var_2 = Struct_1(_wgslsmith_add_i32(min(global1.x, _wgslsmith_div_i32(-2147483647i, var_0.a)), 1i) >> (firstTrailingBit(abs(select(72997u, u_input.a.x, false))) % 32u), var_0.b ^ -(global1.zz & _wgslsmith_add_vec2_i32(vec2<i32>(-34165i, 0i), vec2<i32>(-12156i, -45456i))), vec4<bool>(!((global2.d.x <= global2.e.x) | true), global2.c.x, max(reverseBits(26767u), _wgslsmith_div_u32(42632u, u_input.a.x)) == global0.x, all(vec3<bool>(global2.c.x, true & var_0.c.x, var_0.c.x))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1405f * 372f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2.e.x), _wgslsmith_f_op_f32(-var_0.d.x)), 1717f), global2.e);
    global2 = func_2();
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1062f, global2.e.x)))) + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(-1102f))))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global2.e.x)) - _wgslsmith_f_op_f32(-global2.e.x)))), _wgslsmith_f_op_f32(-global2.e.x)));
    global2 = Struct_1(u_input.b.x, firstLeadingBit(global2.b), !(!vec4<bool>(false, global2.c.x, true, false)), global2.e.yyw, global2.e);
    let var_1 = func_1();
    var var_2 = ~min(firstTrailingBit(firstTrailingBit(vec4<i32>(global1.x, 10847i, var_1.b.x, global1.x))), _wgslsmith_mod_vec4_i32(firstLeadingBit(vec4<i32>(global2.b.x, var_1.a, global2.a, global2.b.x)), -vec4<i32>(10889i, -2147483647i, u_input.c.x, 8290i))) | abs(_wgslsmith_clamp_vec4_i32(vec4<i32>(1i, ~u_input.c.x, 2147483647i, 0i), ~(-vec4<i32>(28611i, global1.x, global1.x, 1i)), select(select(vec4<i32>(global1.x, -2147483647i, 0i, 0i), vec4<i32>(1i, 22176i, u_input.c.x, -2147483647i), var_1.c), ~vec4<i32>(global1.x, -32567i, -1i, var_1.b.x), global2.c)));
    let var_3 = Struct_1(var_2.x, -var_2.xx, !vec4<bool>(var_1.c.x, all(select(global2.c.yy, var_1.c.yy, vec2<bool>(var_1.c.x, var_1.c.x))), true, true | var_1.c.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1f, 1f, 1f))) + var_1.d)), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(global2.d.x)))) - _wgslsmith_f_op_f32(796f + _wgslsmith_f_op_f32(-284f - var_1.d.x))), 1033f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global2.e.x))), 572f));
    let var_4 = var_3.c.x;
    let x = u_input.a;
    s_output = StorageBuffer(-2389f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-358f * 748f) * _wgslsmith_f_op_f32(-var_0))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.d.x + _wgslsmith_f_op_f32(var_3.e.x + -100f))))), 879f, -1000f);
}


struct Struct_1 {
    a: vec4<i32>,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: vec2<u32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 30> = array<f32, 30>(-320f, -1111f, 1076f, -1114f, 818f, -846f, 214f, -778f, 486f, 1839f, -327f, 1357f, 666f, 1501f, -1017f, -1549f, 1766f, 1528f, -639f, 961f, 346f, -1365f, -836f, -278f, 101f, -613f, 587f, -1000f, 207f, -2137f);

var<private> global1: bool;

var<private> global2: Struct_1;

var<private> global3: array<u32, 31> = array<u32, 31>(72404u, 4294967295u, 10344u, 36272u, 1u, 0u, 4294967295u, 2166u, 0u, 1u, 4294967295u, 4294967295u, 4294967295u, 80586u, 4294967295u, 104379u, 4294967295u, 0u, 59919u, 17993u, 1088u, 1u, 12639u, 1u, 4294967295u, 1u, 1826u, 4294967295u, 4294967295u, 13692u, 0u);

var<private> global4: array<u32, 10>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> vec3<bool> {
    var var_0 = Struct_1(firstLeadingBit(~_wgslsmith_sub_vec4_i32(u_input.e, ~vec4<i32>(global2.a.x, 7789i, -1i, global2.a.x))), vec3<bool>(!(!(0u >= u_input.d.x)), all(vec4<bool>(!global2.b.x, global2.b.x & global2.b.x, true, false)), any(vec3<bool>(global2.b.x, !global2.b.x, global2.b.x || false))));
    var var_1 = vec2<bool>(global2.b.x, true);
    var var_2 = Struct_1(vec4<i32>(global2.a.x, -8884i, _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(select(var_0.a, var_0.a, vec4<bool>(false, var_0.b.x, var_0.b.x, global2.b.x)), -global2.a), vec4<i32>(1i, 23163i, 1i, 26218i)), global2.a.x << (_wgslsmith_add_u32(11433u, u_input.c) % 32u)), select(!select(global2.b, vec3<bool>(false, var_1.x, var_1.x), true), var_0.b, !(!(!vec3<bool>(true, var_1.x, var_0.b.x)))));
    let var_3 = Struct_1(global2.a, !(!select(select(var_2.b, vec3<bool>(false, false, true), var_2.b.x), select(global2.b, var_2.b, false), var_2.b)));
    return vec3<bool>(global2.b.x, true, var_2.b.x);
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_1(firstLeadingBit(global2.a), select(global2.b, !func_3(), global2.b.x));
    var var_1 = vec3<bool>(!func_3().x, select(abs(~u_input.e.x), 598i, var_0.b.x) >= 1636i, all(!(!vec4<bool>(global2.b.x, true, global2.b.x, var_0.b.x))));
    global2 = var_0;
    global3 = array<u32, 31>();
    var_1 = !global2.b;
    return Struct_1(global2.a, vec3<bool>(var_1.x, all(select(func_3(), !vec3<bool>(var_1.x, false, var_0.b.x), select(vec3<bool>(false, true, var_0.b.x), vec3<bool>(false, var_1.x, true), global2.b))), false));
}

fn func_1(arg_0: i32) -> vec4<f32> {
    var var_0 = max(~(~u_input.b), u_input.b);
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-241f + 110f)), 774f);
    global2 = func_2();
    var_0 = global4[_wgslsmith_index_u32(_wgslsmith_mult_u32(~global3[_wgslsmith_index_u32(~global3[_wgslsmith_index_u32(1u, 31u)], 31u)], countOneBits(96771u)), 10u)] << (36662u % 32u);
    global3 = array<u32, 31>();
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(~u_input.c, 30u)]), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(abs(2850u), 30u)] - -2108f), var_1.x, global0[_wgslsmith_index_u32(~1u, 30u)])));
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_1) -> StorageBuffer {
    var var_0 = _wgslsmith_div_vec3_f32(vec3<f32>(657f, -157f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-220f, global0[_wgslsmith_index_u32(abs(1u), 30u)]))), vec3<f32>(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(61906u, 30u)]), -834f));
    global3 = array<u32, 31>();
    global1 = !any(arg_1.b);
    let var_1 = Struct_1(countOneBits(_wgslsmith_mod_vec4_i32(~global2.a, vec4<i32>(abs(92124i), ~u_input.e.x, _wgslsmith_add_i32(1i, global2.a.x), firstLeadingBit(1i)))), select(global2.b, arg_1.b, select(vec3<bool>(!global2.b.x, false, !arg_1.b.x), !select(vec3<bool>(false, true, false), vec3<bool>(false, true, arg_1.b.x), vec3<bool>(false, true, arg_1.b.x)), vec3<bool>(arg_1.b.x | global2.b.x, !global2.b.x, arg_1.b.x | false))));
    var var_2 = func_2();
    return StorageBuffer(~2178u, ~(~_wgslsmith_mult_vec4_u32(~vec4<u32>(1u, global4[_wgslsmith_index_u32(47496u, 10u)], 17711u, 2605u), firstLeadingBit(vec4<u32>(3707u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.c, 31u)], 31u)], 31u)], 31u)], 4294967295u, 38181u)))), (countOneBits(abs(u_input.e.yw)) & max(var_1.a.wz, vec2<i32>(34033i, u_input.e.x) | var_1.a.zx)) >> (u_input.d % vec2<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_4(_wgslsmith_f_op_vec4_f32(func_1(_wgslsmith_sub_i32(-firstLeadingBit(u_input.e.x), -11732i))), Struct_1(-(-vec4<i32>(global2.a.x, -38123i, global2.a.x, global2.a.x) | (vec4<i32>(1i, 5308i, u_input.e.x, -18067i) >> (vec4<u32>(global4[_wgslsmith_index_u32(u_input.c, 10u)], 53546u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(0u, 10u)], 10u)], 66093u) % vec4<u32>(32u)))), global2.b));
}


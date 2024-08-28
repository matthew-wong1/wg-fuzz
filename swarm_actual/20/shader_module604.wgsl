struct Struct_1 {
    a: bool,
    b: i32,
    c: f32,
}

struct Struct_2 {
    a: bool,
    b: vec4<i32>,
    c: vec4<f32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 3>;

var<private> global1: array<Struct_1, 4> = array<Struct_1, 4>(Struct_1(true, -20114i, 616f), Struct_1(true, -1i, -473f), Struct_1(false, 16004i, 331f), Struct_1(false, 2147483647i, 507f));

var<private> global2: vec2<i32> = vec2<i32>(-15765i, -2432i);

var<private> global3: Struct_1;

var<private> global4: Struct_2;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: f32, arg_1: i32, arg_2: Struct_1) -> bool {
    var var_0 = Struct_1(!(false & (~u_input.a.x == countOneBits(u_input.a.x))), ~2147483647i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.c) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_0 + global3.c)))))));
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(global4.c - global4.c))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global4.c.x, 1625f, 145f, var_0.c))), select(select(vec4<bool>(true, arg_2.a, arg_2.a, false), vec4<bool>(var_0.a, false, false, global4.a), vec4<bool>(false, var_0.a, global4.d.a, false)), select(vec4<bool>(var_0.a, arg_2.a, var_0.a, true), vec4<bool>(false, true, var_0.a, true), true), select(vec4<bool>(global4.a, arg_2.a, true, arg_2.a), vec4<bool>(arg_2.a, arg_2.a, global3.a, true), global3.a))))));
    var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global4.c * _wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.c, 1130f, -1043f, arg_2.c))) + global4.c) + global4.c);
    global2 = global4.b.wx;
    var var_2 = _wgslsmith_dot_vec4_i32(~global4.b, global4.b);
    return !(_wgslsmith_add_u32(0u, ~_wgslsmith_sub_u32(u_input.a.x, u_input.b.x)) <= _wgslsmith_div_u32(u_input.b.x, 47956u));
}

fn func_2() -> Struct_2 {
    global0 = array<i32, 3>();
    let var_0 = Struct_2(true && !all(!vec2<bool>(true, global3.a)), global4.b, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(exp2(global4.c)), _wgslsmith_f_op_vec4_f32(floor(global4.c)), true))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(global3.c + 501f), global3.c, global3.c, global4.c.x) - global4.c), vec4<bool>(any(!vec3<bool>(global3.a, true, true)), global4.d.a, func_3(_wgslsmith_f_op_f32(-global3.c), 1i ^ global3.b, Struct_1(global3.a, global3.b, global4.d.c)), global4.d.a))), global1[_wgslsmith_index_u32(~(~u_input.a.x), 4u)]);
    var var_1 = ~vec2<u32>(_wgslsmith_mod_u32(~_wgslsmith_div_u32(4294967295u, 1u), _wgslsmith_add_u32(_wgslsmith_mod_u32(14587u, u_input.a.x), u_input.a.x)), _wgslsmith_sub_u32(~(26904u << (u_input.a.x % 32u)), _wgslsmith_mult_u32(83090u, ~u_input.b.x)));
    global2 = -(~max(vec2<i32>(-14829i, 8668i) ^ vec2<i32>(-41405i, global0[_wgslsmith_index_u32(u_input.a.x, 3u)]), var_0.b.wy)) | reverseBits(reverseBits(_wgslsmith_div_vec2_i32(vec2<i32>(global2.x, 22399i), select(vec2<i32>(global4.d.b, -3960i), vec2<i32>(30000i, -2147483647i), true))));
    let var_2 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(global4.d.c - var_0.d.c), -1038f)))));
    return var_0;
}

fn func_1(arg_0: u32, arg_1: bool) -> Struct_2 {
    var var_0 = !vec3<bool>(false, true, all(vec2<bool>(select(false, arg_1, global4.d.a), global4.d.a)));
    global4 = func_2();
    global3 = func_2().d;
    var var_1 = u_input.b;
    var var_2 = global4.d;
    return func_2();
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec2<i32>) -> Struct_1 {
    let var_0 = 1000f;
    global1 = array<Struct_1, 4>();
    var var_1 = _wgslsmith_add_i32(-2147483647i, 0i);
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 * 782f));
    let var_3 = Struct_1(global3.a, -(~0i ^ (-9910i >> (u_input.b.x % 32u))) ^ -_wgslsmith_dot_vec4_i32(vec4<i32>(global0[_wgslsmith_index_u32(50467u, 3u)], 2147483647i, -1i, global3.b) & global4.b, select(vec4<i32>(global4.d.b, global3.b, global4.d.b, 0i), global4.b, vec4<bool>(arg_1.a, true, true, arg_1.a))), _wgslsmith_f_op_f32(f32(-1f) * -1138f));
    return Struct_1(false, ~arg_0.b.x, var_0);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(func_1(58932u, false), Struct_2(true, abs(_wgslsmith_add_vec4_i32(firstLeadingBit(global4.b), global4.b)), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global3.c, _wgslsmith_f_op_f32(-global3.c), -1000f, _wgslsmith_f_op_f32(ceil(-501f))))), Struct_1(global4.a, firstTrailingBit(global2.x), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global4.d.c), global4.d.c, !global3.a)))), _wgslsmith_mult_vec2_i32(_wgslsmith_sub_vec2_i32(abs(abs(vec2<i32>(global4.b.x, global4.d.b))), vec2<i32>(i32(-1i) * -1i, -1i)), _wgslsmith_clamp_vec2_i32(global4.b.ww, vec2<i32>(-9127i, global4.d.b) & vec2<i32>(global2.x, -5223i), _wgslsmith_mult_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(global4.d.b, -2147483647i), global4.b.yz), _wgslsmith_mult_vec2_i32(vec2<i32>(global4.d.b, global0[_wgslsmith_index_u32(16072u, 3u)]), vec2<i32>(global3.b, global4.b.x))))));
    var var_1 = vec4<bool>(true, 2147483647i > (-1i >> (u_input.b.x % 32u)), true, var_0.a);
    global2 = countOneBits(_wgslsmith_clamp_vec2_i32(_wgslsmith_sub_vec2_i32(-max(vec2<i32>(global3.b, -1i), global4.b.yy), global4.b.ww), vec2<i32>(1i, 1i), _wgslsmith_sub_vec2_i32(~vec2<i32>(44046i, -2147483647i), abs(vec2<i32>(global4.b.x, global0[_wgslsmith_index_u32(1u, 3u)])))));
    var var_2 = func_2().d;
    let var_3 = global1[_wgslsmith_index_u32(6719u, 4u)];
    global2 = func_2().b.zy;
    let var_4 = func_4(func_1(u_input.b.x, true), func_1(abs(40658u), all(!(!vec4<bool>(var_2.a, global4.a, global3.a, var_2.a)))), global4.b.xy);
    var var_5 = vec2<f32>(569f, _wgslsmith_f_op_f32(-var_0.c));
    let var_6 = _wgslsmith_dot_vec2_i32(vec2<i32>(reverseBits(-2147483647i) << (u_input.a.x % 32u), ~global2.x), _wgslsmith_mult_vec2_i32(vec2<i32>(abs(~global0[_wgslsmith_index_u32(u_input.a.x, 3u)]), _wgslsmith_mult_i32(global2.x, global0[_wgslsmith_index_u32(52045u, 3u)] >> (9590u % 32u))), _wgslsmith_div_vec2_i32(vec2<i32>(var_2.b, -1i), vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(var_3.b, global2.x, global2.x), vec3<i32>(var_0.b, 1i, global2.x)), var_3.b))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(u_input.a.x, u_input.a.x, ~(1u & countOneBits(u_input.a.x))), -(max(func_2().b.x, _wgslsmith_dot_vec4_i32(global4.b, global4.b)) & var_4.b), var_3.b);
}


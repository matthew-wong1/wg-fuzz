struct Struct_1 {
    a: vec2<f32>,
    b: vec3<f32>,
    c: i32,
    d: vec3<f32>,
    e: vec4<u32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec2<u32>,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: Struct_1,
    d: f32,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: f32 = -654f;

var<private> global2: array<vec3<i32>, 23>;

var<private> global3: vec3<u32> = vec3<u32>(4294967295u, 1u, 38370u);

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3() -> vec4<bool> {
    global3 = ~_wgslsmith_mult_vec3_u32(global0.e.wzy ^ vec3<u32>(global3.x, 1u, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, global0.e.x, 4294967295u, 1u), vec4<u32>(global3.x, 0u, global3.x, 1u))), vec3<u32>(0u, 0u, 16378u & max(global0.e.x, 0u)));
    var var_0 = Struct_3(all(vec3<bool>(false, true, any(vec3<bool>(true, true, true)))), Struct_2(_wgslsmith_clamp_vec4_i32(-vec4<i32>(global0.c, 1i, global0.c, u_input.a) & vec4<i32>(0i, -33113i, 48970i, -2147483647i), abs(_wgslsmith_add_vec4_i32(vec4<i32>(1i, global0.c, u_input.a, 40727i), vec4<i32>(u_input.a, 40414i, global0.c, 1i))), ~vec4<i32>(u_input.a, 1i, 0i, 22597i)), global3.xz), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(global0.b.zx, _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.a.x, 1336f) * vec2<f32>(1097f, global0.b.x))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global0.d + global0.b))), firstTrailingBit(i32(-1i) * -global0.c), global0.b, vec4<u32>(8438u, _wgslsmith_clamp_u32(abs(0u), ~global3.x, 1u), ~global3.x, ~global0.e.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global0.b.x, -222f)) * global0.b.x), _wgslsmith_f_op_f32(abs(global0.b.x))), Struct_1(global0.b.zy, global0.b, u_input.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.b.x, -1250f, 1183f)) - vec3<f32>(global0.d.x, 1400f, 868f)) - _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(max(global0.b, global0.d))))), max(global0.e, _wgslsmith_mult_vec4_u32(abs(vec4<u32>(global3.x, global3.x, global0.e.x, 0u)), vec4<u32>(4294967295u, 16405u, global0.e.x, global0.e.x)))));
    let var_1 = global3.x;
    let var_2 = 0u;
    var var_3 = var_0.c;
    return vec4<bool>(!(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_3.a.x), _wgslsmith_f_op_f32(f32(-1f) * -393f), true)) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.b.x))), true, all(vec3<bool>(var_0.a, all(!vec4<bool>(var_0.a, true, false, true)), all(vec4<bool>(false, var_0.a, var_0.a, false)))), any(!(!(!vec3<bool>(var_0.a, var_0.a, var_0.a)))));
}

fn func_2() -> Struct_3 {
    let var_0 = vec4<bool>(false, all(!select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true), true)), any(vec3<bool>(all(vec4<bool>(false, true, true, true)), false, false)), select(all(select(vec4<bool>(true, true, false, false), func_3(), any(vec4<bool>(false, true, true, false)))), any(vec3<bool>(all(vec4<bool>(true, true, false, false)), 297f > global0.a.x, u_input.a != u_input.a)), func_3().x));
    let var_1 = Struct_3(true, Struct_2(-vec4<i32>(-39420i, u_input.a ^ -39970i, _wgslsmith_dot_vec3_i32(global2[_wgslsmith_index_u32(0u, 23u)], vec3<i32>(-1i, -32386i, 0i)), u_input.a), ~vec2<u32>(~global0.e.x, _wgslsmith_mult_u32(global3.x, global3.x))), Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global0.d.x, -943f), vec2<f32>(global0.d.x, 219f), var_0.zx)), vec2<f32>(global0.b.x, global0.d.x)), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(global0.a.x, global0.b.x), vec2<f32>(global0.a.x, -263f)))))), global0.b, _wgslsmith_dot_vec3_i32(max(_wgslsmith_mult_vec3_i32(vec3<i32>(1i, -1i, 21956i), vec3<i32>(u_input.a, u_input.a, -15628i)), global2[_wgslsmith_index_u32(abs(global0.e.x), 23u)]), vec3<i32>(-36024i, 1i, global0.c) & reverseBits(vec3<i32>(global0.c, 2147483647i, -15850i))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global0.d.x, 308f, 2061f)))), min(_wgslsmith_clamp_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(4276u, global3.x, 6431u, 66416u), vec4<u32>(global3.x, 4294967295u, global0.e.x, 40448u), global0.e), _wgslsmith_mult_vec4_u32(vec4<u32>(global0.e.x, global3.x, 14727u, global0.e.x), global0.e), _wgslsmith_mult_vec4_u32(vec4<u32>(global3.x, 58865u, 24420u, 29480u), vec4<u32>(global0.e.x, global3.x, 973u, global0.e.x))), _wgslsmith_div_vec4_u32(abs(vec4<u32>(0u, global0.e.x, global3.x, 1u)), _wgslsmith_sub_vec4_u32(global0.e, global0.e)))), global0.b.x, Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(526f, 1448f) * vec2<f32>(global0.a.x, -517f)) * _wgslsmith_f_op_vec2_f32(ceil(global0.b.yy))), vec2<f32>(global0.b.x, _wgslsmith_f_op_f32(sign(global0.b.x)))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.d.x, global0.a.x, global0.a.x))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-global0.b))))), abs(global0.c << (4294967295u % 32u)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-global0.d))), vec3<f32>(_wgslsmith_f_op_f32(min(global0.a.x, global0.b.x)), _wgslsmith_f_op_f32(global0.a.x - global0.d.x), _wgslsmith_f_op_f32(global0.b.x + global0.a.x)), !var_0.zxz)), vec4<u32>(49471u, 92817u, 15997u, global0.e.x)));
    let var_2 = var_1;
    global2 = array<vec3<i32>, 23>();
    let var_3 = global0.c;
    return Struct_3(var_2.a, Struct_2(_wgslsmith_mod_vec4_i32(_wgslsmith_sub_vec4_i32(select(vec4<i32>(-13054i, -1i, 1i, var_2.e.c), var_2.b.a, false), _wgslsmith_mod_vec4_i32(var_2.b.a, var_1.b.a)), _wgslsmith_div_vec4_i32(~var_2.b.a, vec4<i32>(2147483647i, 58929i, var_2.e.c, 49209i))), ~vec2<u32>(_wgslsmith_dot_vec2_u32(var_2.c.e.wx, vec2<u32>(var_2.c.e.x, global0.e.x)), ~4294967295u)), var_2.e, global0.a.x, var_1.c);
}

fn func_4(arg_0: Struct_3, arg_1: Struct_1, arg_2: Struct_1, arg_3: f32) -> u32 {
    var var_0 = vec2<f32>(arg_1.b.x, _wgslsmith_f_op_f32(min(810f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-287f)) * _wgslsmith_f_op_f32(-arg_3)))))));
    let var_1 = vec4<i32>(1i, _wgslsmith_sub_i32(~_wgslsmith_dot_vec2_i32(select(vec2<i32>(arg_0.b.a.x, arg_1.c), arg_0.b.a.yx, vec2<bool>(false, arg_0.a)), vec2<i32>(global0.c, arg_2.c)), firstTrailingBit(-2147483647i)), arg_0.b.a.x, arg_2.c);
    return global0.e.x;
}

fn func_5(arg_0: u32) -> Struct_2 {
    var var_0 = global0.e.xzw;
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a.x, global0.d.x, -2348f, 456f)))) + _wgslsmith_f_op_vec4_f32(min(vec4<f32>(global0.b.x, global0.b.x, _wgslsmith_f_op_f32(global0.b.x + -1596f), _wgslsmith_f_op_f32(-global0.d.x)), vec4<f32>(_wgslsmith_f_op_f32(global0.a.x * global0.b.x), _wgslsmith_f_op_f32(-1000f + 361f), global0.d.x, _wgslsmith_div_f32(-757f, -1000f))))));
    var var_2 = func_2().b;
    var var_3 = global0.d;
    let var_4 = func_2().c;
    return func_2().b;
}

fn func_1(arg_0: vec2<i32>, arg_1: Struct_2) -> vec2<u32> {
    let var_0 = !(!(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)) > global0.b.x));
    let var_1 = arg_1;
    var var_2 = func_5(func_4(func_2(), func_2().c, func_2().e, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1238f - -213f)))) ^ _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_mult_u32(1u, 4294967295u), 1u, 0u, select(19223u, 18520u, false)), global0.e));
    var_2 = func_2().b;
    global2 = array<vec3<i32>, 23>();
    return vec2<u32>(16938u, _wgslsmith_sub_u32(var_2.b.x, global3.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(vec4<i32>(~(-1i), u_input.a, 2147483647i, -14238i), ~_wgslsmith_add_vec2_u32(~(~global0.e.yw), _wgslsmith_sub_vec2_u32(func_1(vec2<i32>(global0.c, -2147483647i), Struct_2(vec4<i32>(u_input.a, global0.c, -19138i, -1i), vec2<u32>(26381u, 4294967295u))), global0.e.zz)));
    var_0 = Struct_2(vec4<i32>(_wgslsmith_clamp_i32(-24486i, ~(u_input.a << (var_0.b.x % 32u)), u_input.a), -countOneBits(_wgslsmith_sub_i32(2378i, u_input.a)), 1i, -func_2().e.c), global0.e.yz);
    let var_1 = firstLeadingBit(global0.e.x);
    global2 = array<vec3<i32>, 23>();
    let var_2 = reverseBits(~(~global0.e.wzx));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-208f, global0.a.x, -1000f, global0.a.x))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.d.x, global0.d.x, global0.b.x, global0.d.x) * vec4<f32>(global0.d.x, -612f, -635f, global0.d.x))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(1632f, global0.d.x, global0.a.x, global0.b.x), vec4<f32>(global0.d.x, 586f, global0.a.x, global0.d.x)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-692f, 1289f, global0.d.x, global0.b.x) - vec4<f32>(global0.a.x, global0.b.x, global0.b.x, 189f)))) + vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(global0.b.x)), _wgslsmith_f_op_f32(-global0.b.x))), _wgslsmith_f_op_f32(-global0.d.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1000f)) * -1054f), 179f)));
}


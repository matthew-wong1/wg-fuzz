struct Struct_1 {
    a: f32,
    b: bool,
    c: vec3<bool>,
    d: vec4<bool>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: i32,
    d: vec4<i32>,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_2,
    c: Struct_1,
    d: bool,
}

struct Struct_4 {
    a: vec2<f32>,
    b: vec2<i32>,
    c: vec3<bool>,
    d: vec4<i32>,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: Struct_2 = Struct_2(false, Struct_1(-1000f, true, vec3<bool>(false, true, true), vec4<bool>(true, true, false, false)), 2147483647i, vec4<i32>(0i, 2147483647i, -30565i, 31847i));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: f32) -> f32 {
    let var_0 = global1.b;
    return _wgslsmith_f_op_f32(-global1.b.a);
}

fn func_2(arg_0: vec3<i32>, arg_1: u32, arg_2: Struct_1) -> Struct_4 {
    let var_0 = Struct_4(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(global1.b.a)) - _wgslsmith_f_op_f32(-arg_2.a)) * _wgslsmith_f_op_f32(f32(-1f) * -1181f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global1.b.a)))))), global1.d.zw, vec3<bool>(any(select(select(global1.b.c, vec3<bool>(global1.a, arg_2.d.x, global1.a), false), !arg_2.d.xzy, select(arg_2.d.yyz, arg_2.d.yxw, vec3<bool>(global1.a, true, global1.a)))), true, all(vec2<bool>(true, arg_2.d.x))), ~(~vec4<i32>(arg_0.x, -arg_0.x, global1.c ^ global1.c, _wgslsmith_dot_vec4_i32(global1.d, global1.d))), Struct_2(any(arg_2.d), Struct_1(_wgslsmith_f_op_f32(-arg_2.a), arg_2.b, global1.b.c, !vec4<bool>(arg_2.d.x, arg_2.b, global1.b.d.x, global1.a)), abs(_wgslsmith_div_i32(global1.d.x, max(global1.d.x, arg_0.x))), vec4<i32>(-6491i, -(~1i), reverseBits(arg_0.x), _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(global1.d, global1.d), -vec4<i32>(18515i, global1.c, 44979i, 11604i)))));
    var var_1 = !arg_2.d;
    var var_2 = var_0.e.b.a;
    var_2 = _wgslsmith_f_op_f32(var_0.a.x - 923f);
    var_1 = global1.b.d;
    return Struct_4(vec2<f32>(var_0.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -670f) - _wgslsmith_f_op_f32(floor(global1.b.a))) - 166f)), vec2<i32>(_wgslsmith_mod_i32(var_0.d.x, ~max(1i, var_0.d.x)), -(global1.d.x >> (u_input.b % 32u)) << (5478u % 32u)), !vec3<bool>(false, arg_2.d.x & true, _wgslsmith_f_op_f32(-global1.b.a) <= 560f), max(abs(select(_wgslsmith_mult_vec4_i32(global1.d, var_0.e.d), vec4<i32>(4903i, -1i, var_0.e.d.x, -45357i), !vec4<bool>(arg_2.c.x, false, true, false))), firstTrailingBit(_wgslsmith_div_vec4_i32(global1.d, ~vec4<i32>(2147483647i, 28518i, var_0.b.x, -68980i)))), Struct_2(global1.a, var_0.e.b, reverseBits(-1i), -vec4<i32>(min(global1.c, 68482i), 1i, max(-1i, global1.c), firstTrailingBit(var_0.e.c))));
}

fn func_1(arg_0: u32) -> vec2<bool> {
    var var_0 = func_2(global1.d.wxw, u_input.b, Struct_1(779f, true, vec3<bool>(global1.a, any(vec2<bool>(global1.b.d.x, global1.b.b)), any(!vec2<bool>(global1.b.d.x, false))), global1.b.d));
    var var_1 = reverseBits(min(_wgslsmith_sub_vec4_i32(var_0.e.d, vec4<i32>(var_0.d.x, global1.c, 0i, 6290i) & ~global1.d), global1.d));
    let var_2 = Struct_3(_wgslsmith_mod_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.a.x, arg_0), (vec2<u32>(u_input.c, u_input.d) << (u_input.a.zw % vec2<u32>(32u))) ^ vec2<u32>(1u, u_input.b)), abs((u_input.a.xx << (u_input.a.xw % vec2<u32>(32u))) << (_wgslsmith_mult_vec2_u32(u_input.a.wy, vec2<u32>(4294967295u, u_input.d)) % vec2<u32>(32u)))), Struct_2(!any(vec4<bool>(global1.a, false, global1.b.c.x, false)) || !global1.b.d.x, Struct_1(1559f, global1.a, !var_0.c, vec4<bool>(!global1.a, any(vec4<bool>(var_0.e.a, var_0.e.b.b, true, true)), var_0.c.x, true)), -28248i, countOneBits(-vec4<i32>(global1.c, var_1.x, global1.c, 2147483647i))), func_2(_wgslsmith_mod_vec3_i32(~global1.d.zww | ~global1.d.wyy, abs(vec3<i32>(var_0.e.c, -1i, -8287i) >> (vec3<u32>(1u, 6625u, u_input.c) % vec3<u32>(32u)))), ~arg_0, func_2(-func_2(vec3<i32>(global1.d.x, -38027i, var_0.e.d.x), arg_0, var_0.e.b).d.xzw, 4294967295u, func_2(vec3<i32>(var_1.x, -1i, var_0.b.x), 53971u, func_2(var_1.zyx, u_input.a.x, Struct_1(global1.b.a, var_0.e.b.d.x, var_0.c, var_0.e.b.d)).e.b).e.b).e.b).e.b, arg_0 >= _wgslsmith_clamp_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(5168u, 36683u, arg_0), u_input.a.ywy), arg_0, ~11207u));
    let var_3 = func_2(var_0.e.d.wwz, arg_0, Struct_1(_wgslsmith_div_f32(_wgslsmith_div_f32(1000f, 499f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.c.a))), false, global1.b.c, select(vec4<bool>(all(vec4<bool>(var_2.c.b, true, var_0.c.x, true)), all(vec3<bool>(global1.a, false, true)), var_2.b.b.c.x && global1.a, true), select(global1.b.d, vec4<bool>(false, true, true, global1.b.d.x), var_2.b.b.d), select(vec4<bool>(global1.b.b, global1.b.d.x, false, global1.a), !vec4<bool>(false, true, var_0.e.a, true), !vec4<bool>(var_0.e.b.b, false, var_0.c.x, true))))).e.b;
    var var_4 = ~u_input.a;
    return var_3.c.xz;
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_2, arg_2: vec4<i32>) -> bool {
    let var_0 = arg_0.x || select(arg_0.x, arg_1.b.b, arg_0.x);
    var var_1 = -459f;
    return 1i < ((-global1.c << (4294967295u % 32u)) | 2147483647i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~4294967295u;
    let var_1 = global1.a;
    var var_2 = vec3<bool>(any(vec3<bool>(!global1.a, !(global1.a && global1.a), u_input.b >= _wgslsmith_mult_u32(u_input.a.x, u_input.a.x))), global1.a, select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.b.a), _wgslsmith_f_op_f32(global1.b.a + -179f)) < _wgslsmith_div_f32(209f, global1.b.a), global1.a, ((u_input.c < var_0) & global1.a) & select(global1.a, any(global1.b.d.yyx), global1.b.d.x)));
    global1 = Struct_2(!func_4(func_1(var_0), Struct_2(global1.b.b, global1.b, global1.d.x, global1.d), vec4<i32>(global1.c, global1.d.x, global1.d.x, 2147483647i)) || func_2(_wgslsmith_mod_vec3_i32(global1.d.wwy, _wgslsmith_mult_vec3_i32(vec3<i32>(89320i, global1.d.x, global1.d.x), vec3<i32>(global1.c, global1.d.x, global1.c))), abs(31383u), Struct_1(_wgslsmith_f_op_f32(ceil(889f)), select(false, false, true), vec3<bool>(false, var_2.x, false), func_2(global1.d.wyy, var_0, global1.b).e.b.d)).c.x, Struct_1(-475f, !any(var_2.xy), select(global1.b.d.zzy, !select(global1.b.c, vec3<bool>(false, global1.a, false), vec3<bool>(false, true, true)), global1.b.c.x), select(vec4<bool>(var_2.x, global1.a, func_1(7244u).x, false), vec4<bool>(true, var_2.x, true, func_4(vec2<bool>(true, false), Struct_2(false, global1.b, -41978i, global1.d), global1.d)), var_2.x)), global1.d.x, vec4<i32>(global1.d.x, max(global1.d.x, -(global1.d.x | global1.d.x)), _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(~global1.d.zzx, global1.d.ywy), global1.d.zxz), _wgslsmith_div_i32(1i, _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(2147483647i, 87833i), global1.d.wy), global1.d.zy))));
    var_2 = global1.b.c;
    let var_3 = 2609i;
    var var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global1.b.a, 2761f, global1.b.a)))) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1450f, 1663f, global1.b.a) - vec3<f32>(313f, 380f, global1.b.a)), _wgslsmith_f_op_vec3_f32(vec3<f32>(global1.b.a, -688f, global1.b.a) * vec3<f32>(global1.b.a, -777f, -1061f))))));
    global0 = true;
    let x = u_input.a;
    s_output = StorageBuffer(1i);
}


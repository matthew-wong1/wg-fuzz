struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: vec3<u32>,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: bool = false;

var<private> global2: vec4<bool>;

var<private> global3: i32 = -38681i;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: bool, arg_1: Struct_3, arg_2: vec2<i32>, arg_3: Struct_3) -> u32 {
    global2 = select(!(!select(!vec4<bool>(arg_0, global2.x, global2.x, true), !vec4<bool>(false, true, global2.x, true), select(vec4<bool>(global2.x, true, true, false), vec4<bool>(true, false, global2.x, false), vec4<bool>(arg_0, false, arg_0, global2.x)))), vec4<bool>(global2.x, false, all(!global2.xz), false), select(!vec4<bool>(any(vec4<bool>(true, false, false, true)), arg_2.x > -33760i, true, all(global2.wzy)), !(!(!vec4<bool>(arg_0, false, true, false))), vec4<bool>(any(!vec3<bool>(global2.x, true, true)), any(global2.wzy) && global2.x, true, false)));
    var var_0 = arg_1.d;
    var var_1 = 64482u != ~(~_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(2111u, var_0.a, arg_3.d.a, 4294967295u), u_input.a), select(arg_1.d.a, 4294967295u, global2.x)));
    global3 = 9944i;
    var var_2 = select(!vec4<bool>(arg_3.b != _wgslsmith_f_op_f32(max(-439f, -349f)), arg_0, !arg_0, arg_0), vec4<bool>(false, !(true == any(vec3<bool>(false, arg_0, false))), arg_1.b > _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global0.x - global0.x))), arg_0), global2.x);
    return firstTrailingBit(firstTrailingBit(_wgslsmith_div_u32(~arg_3.d.a >> (0u % 32u), firstTrailingBit(~25455u))));
}

fn func_2(arg_0: f32) -> Struct_1 {
    global1 = any(!select(select(!vec4<bool>(false, global2.x, global2.x, false), select(vec4<bool>(false, true, false, true), vec4<bool>(false, global2.x, true, true), false), vec4<bool>(global2.x, false, false, global2.x)), select(vec4<bool>(global2.x, global2.x, global2.x, true), !vec4<bool>(true, global2.x, global2.x, global2.x), true), vec4<bool>(true, any(global2.xz), select(false, global2.x, true), true)));
    global3 = -15572i;
    let var_0 = _wgslsmith_dot_vec4_i32(~select(~vec4<i32>(-40846i, 1i, 1i, 0i), vec4<i32>(10420i, 1i, 2147483647i, 10287i), !vec4<bool>(false, false, global2.x, false)), ~(-(~vec4<i32>(0i, 35158i, 2147483647i, 0i)))) ^ (-(~(~2147483647i)) >> (func_3(!any(vec4<bool>(global2.x, false, global2.x, global2.x)), Struct_3(Struct_1(1i), _wgslsmith_f_op_f32(step(734f, global0.x)), vec3<u32>(0u, u_input.a.x, u_input.a.x), Struct_2(u_input.a.x)), vec2<i32>(reverseBits(-34646i), reverseBits(-1i)), Struct_3(Struct_1(1i), global0.x, u_input.a.yxw, Struct_2(u_input.a.x))) % 32u));
    var var_1 = Struct_2(~u_input.a.x);
    var_1 = Struct_2(var_1.a);
    return Struct_1(var_0);
}

fn func_4(arg_0: Struct_1) -> Struct_3 {
    var var_0 = _wgslsmith_dot_vec4_u32(~vec4<u32>(49109u, ~28791u, 4294967295u, u_input.a.x), u_input.a);
    let var_1 = arg_0;
    var_0 = 61433u;
    var var_2 = u_input.a.x;
    var_0 = abs(_wgslsmith_clamp_u32(u_input.a.x >> (~firstLeadingBit(u_input.a.x) % 32u), firstLeadingBit(62132u), ~(12007u << (u_input.a.x % 32u)) << (_wgslsmith_mult_u32(36766u, _wgslsmith_div_u32(u_input.a.x, u_input.a.x)) % 32u)));
    return Struct_3(func_2(_wgslsmith_f_op_f32(-1177f + global0.x)), _wgslsmith_f_op_f32(-global0.x), vec3<u32>(_wgslsmith_dot_vec4_u32(~abs(vec4<u32>(4294967295u, u_input.a.x, 19118u, u_input.a.x)), _wgslsmith_div_vec4_u32(vec4<u32>(28090u, 1u, u_input.a.x, u_input.a.x) & u_input.a, u_input.a & u_input.a)), _wgslsmith_dot_vec2_u32(~u_input.a.yx, u_input.a.ww >> (u_input.a.xx % vec2<u32>(32u))), ~(1u << (abs(u_input.a.x) % 32u))), Struct_2(_wgslsmith_dot_vec2_u32(u_input.a.zy, reverseBits(u_input.a.wz) | u_input.a.zw)));
}

fn func_1(arg_0: u32) -> Struct_3 {
    var var_0 = abs(abs(-firstTrailingBit(countOneBits(vec2<i32>(1i, -19386i)))));
    let var_1 = Struct_1(1i);
    let var_2 = func_4(func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - global0.x)));
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(-591f, _wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(-var_2.b)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(286f, global0.x, var_2.b) - vec3<f32>(global0.x, global0.x, global0.x)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.b, -565f, -440f) + vec3<f32>(var_2.b, 1123f, -416f)))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_2.b, 1676f, var_2.b))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(859f, -638f, var_2.b) - _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-446f, var_2.b, 1142f), vec3<f32>(var_2.b, global0.x, 1004f)))))))));
    let var_4 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(global0.x)), _wgslsmith_div_f32(global0.x, var_2.b));
    return Struct_3(Struct_1(_wgslsmith_sub_i32(_wgslsmith_mult_i32(-var_2.a.a, 1i), _wgslsmith_add_i32(_wgslsmith_sub_i32(var_0.x, var_1.a), var_0.x))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -344f))), reverseBits(var_2.c ^ select(countOneBits(u_input.a.xyz), vec3<u32>(38278u, 4294967295u, u_input.a.x), !global2.x)), var_2.d);
}

fn func_5(arg_0: Struct_3) -> vec4<i32> {
    let var_0 = -arg_0.a.a;
    var var_1 = func_1(arg_0.d.a);
    var_1 = arg_0;
    global1 = global0.x == -858f;
    global3 = _wgslsmith_dot_vec2_i32(select(_wgslsmith_sub_vec2_i32((vec2<i32>(1i, var_0) << (vec2<u32>(var_1.c.x, 4294967295u) % vec2<u32>(32u))) >> (vec2<u32>(9314u, u_input.a.x) % vec2<u32>(32u)), abs(vec2<i32>(19729i, var_1.a.a))), vec2<i32>(var_0, var_0) >> (countOneBits(vec2<u32>(var_1.d.a, var_1.d.a)) % vec2<u32>(32u)), !select(vec2<bool>(true, global2.x), !vec2<bool>(global2.x, false), true)), firstLeadingBit(firstTrailingBit(-vec2<i32>(arg_0.a.a, var_1.a.a)) ^ countOneBits(-vec2<i32>(arg_0.a.a, -9191i))));
    return ~vec4<i32>(~_wgslsmith_dot_vec4_i32(vec4<i32>(46389i, var_0, 0i, 1i), countOneBits(vec4<i32>(var_1.a.a, -2147483647i, var_1.a.a, 0i))), firstTrailingBit(var_0), _wgslsmith_div_i32(var_0, select(func_4(Struct_1(var_1.a.a)).a.a, ~(-30335i), !global2.x)), -_wgslsmith_dot_vec3_i32(max(vec3<i32>(arg_0.a.a, 14268i, 2147483647i), vec3<i32>(var_0, var_0, -2147483647i)), -vec3<i32>(var_1.a.a, -87949i, var_0)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(func_1(_wgslsmith_mod_u32(7613u, ~_wgslsmith_dot_vec4_u32(u_input.a, u_input.a))));
    var var_1 = Struct_1(-44571i);
    let var_2 = global0.x;
    var_0 = -firstTrailingBit(vec4<i32>(var_1.a, -116091i, var_1.a, var_0.x));
    let var_3 = Struct_2(~_wgslsmith_mult_u32(~(~u_input.a.x), u_input.a.x));
    let var_4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(275f, global0.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(244f, 1000f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global0.x - -303f)))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(470f, global0.x, -203f, -840f)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0.x, -1000f, global0.x, global0.x), vec4<f32>(677f, -266f, -337f, global0.x), global2.x)))))));
    var_1 = Struct_1(var_1.a);
    let x = u_input.a;
    s_output = StorageBuffer(var_1.a ^ (-12186i ^ (var_0.x | ~7884i)), vec2<i32>(-2147483647i, ~(-76099i)));
}


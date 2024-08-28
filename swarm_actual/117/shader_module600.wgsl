struct Struct_1 {
    a: vec3<f32>,
    b: vec2<f32>,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
    b: vec4<i32>,
    c: Struct_2,
    d: Struct_1,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec4<u32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 1i;

var<private> global1: Struct_2;

var<private> global2: array<f32, 8>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_2() -> u32 {
    return abs(~15216u);
}

fn func_3(arg_0: Struct_1) -> vec2<i32> {
    let var_0 = Struct_3(select(vec4<bool>(true, all(vec3<bool>(false, false, true)), any(!vec3<bool>(true, arg_0.c, global1.a.c)), arg_0.c), vec4<bool>(true, !all(vec3<bool>(global1.a.c, arg_0.c, true)), false, false), !select(select(vec4<bool>(arg_0.c, arg_0.c, true, global1.a.c), vec4<bool>(false, false, arg_0.c, true), global1.a.c), vec4<bool>(global1.a.c, arg_0.c, false, global1.a.c), arg_0.c)), u_input.b | u_input.b, Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.a.b.x, -1192f, -262f) - global1.a.a)), arg_0.b, true)), arg_0, !select(!(!vec4<bool>(false, false, global1.a.c, true)), !select(vec4<bool>(false, global1.a.c, global1.a.c, true), vec4<bool>(false, true, false, arg_0.c), global1.a.c), !global1.a.c && !global1.a.c));
    var var_1 = all(!select(select(select(var_0.a.wy, vec2<bool>(false, false), var_0.e.xz), vec2<bool>(arg_0.c, global1.a.c), all(var_0.a.zwz)), select(vec2<bool>(arg_0.c, var_0.d.c), vec2<bool>(true, var_0.a.x), false), global1.a.c));
    let var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(950f, _wgslsmith_f_op_f32(-arg_0.b.x))), _wgslsmith_div_f32(198f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(arg_0.b.x, 394f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.a.a.x * 780f)))));
    var_1 = !all(var_0.e.zzw);
    global2 = array<f32, 8>();
    return u_input.b.yz;
}

fn func_4(arg_0: vec3<u32>, arg_1: vec2<i32>) -> Struct_3 {
    global2 = array<f32, 8>();
    var var_0 = Struct_3(vec4<bool>(any(!(!vec2<bool>(global1.a.c, true))), true, global1.a.c, global1.a.c), max(_wgslsmith_mod_vec4_i32(u_input.d, u_input.b), vec4<i32>(abs(_wgslsmith_mod_i32(u_input.b.x, arg_1.x)), 18638i, _wgslsmith_mod_i32(min(u_input.d.x, u_input.d.x), ~arg_1.x), 10772i)), Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(step(global1.a.a, _wgslsmith_f_op_vec3_f32(-global1.a.a))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-global1.a.b), _wgslsmith_f_op_vec2_f32(-global1.a.a.yy), !vec2<bool>(global1.a.c, true))), max(u_input.c.x, 75735u) >= ~21481u)), Struct_1(_wgslsmith_f_op_vec3_f32(global1.a.a - vec3<f32>(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(5108u, 8u)]), global2[_wgslsmith_index_u32(1u, 8u)], -251f)), vec2<f32>(_wgslsmith_div_f32(global2[_wgslsmith_index_u32(countOneBits(17076u), 8u)], global2[_wgslsmith_index_u32(reverseBits(11393u), 8u)]), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-269f, 565f)) - _wgslsmith_f_op_f32(1297f - global2[_wgslsmith_index_u32(4294967295u, 8u)]))), true), !(!select(!vec4<bool>(global1.a.c, global1.a.c, global1.a.c, global1.a.c), !vec4<bool>(global1.a.c, global1.a.c, global1.a.c, global1.a.c), true)));
    let var_1 = _wgslsmith_f_op_vec2_f32(min(var_0.c.a.a.zx, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(0u, 8u)] - -935f), _wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(exp2(global1.a.a.x)))) + global1.a.a.zz)));
    var var_2 = var_0.c.a;
    let var_3 = ~var_0.b.x;
    return Struct_3(var_0.e, -vec4<i32>(2449i, -2147483647i, 552i, 29229i), Struct_2(var_0.c.a), Struct_1(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(451f * global1.a.b.x), 630f, 911f), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(var_0.c.a.a * var_0.c.a.a))))), _wgslsmith_f_op_vec2_f32(-var_1), true), select(select(!select(vec4<bool>(var_0.d.c, var_2.c, true, var_2.c), var_0.e, var_0.a.x), vec4<bool>(var_2.c, !var_2.c, var_2.c, true), (arg_0.x & arg_0.x) >= 90299u), select(!select(vec4<bool>(var_0.e.x, global1.a.c, true, global1.a.c), vec4<bool>(true, var_0.c.a.c, false, var_0.c.a.c), var_0.d.c), !select(vec4<bool>(true, true, true, var_0.c.a.c), vec4<bool>(var_0.a.x, global1.a.c, var_0.e.x, var_2.c), global1.a.c), vec4<bool>(true, 49593i > arg_1.x, var_2.c & false, false)), select(!select(vec4<bool>(var_0.e.x, global1.a.c, global1.a.c, false), vec4<bool>(true, global1.a.c, var_0.e.x, global1.a.c), vec4<bool>(true, true, false, false)), vec4<bool>(false, var_2.c, all(vec2<bool>(var_2.c, false)), var_0.a.x), false)));
}

fn func_1(arg_0: vec3<bool>) -> vec2<bool> {
    var var_0 = func_4(vec3<u32>(u_input.c.x, ~(~abs(157u)), func_2()), _wgslsmith_div_vec2_i32(~func_3(global1.a), _wgslsmith_div_vec2_i32(reverseBits(max(vec2<i32>(2147483647i, u_input.d.x), u_input.b.zz)), ~vec2<i32>(12640i, 0i))));
    var_0 = Struct_3(var_0.e, ~(-(~var_0.b)), Struct_2(func_4(vec3<u32>(~u_input.c.x, 31114u, u_input.c.x | 27182u), vec2<i32>(0i, u_input.a | 15385i)).c.a), var_0.d, !(!vec4<bool>(true, !arg_0.x, all(vec3<bool>(global1.a.c, arg_0.x, false)), arg_0.x)));
    global1 = func_4(~vec3<u32>(u_input.c.x, u_input.c.x, _wgslsmith_dot_vec4_u32(u_input.c, vec4<u32>(38231u, 29617u, 81415u, 4294967295u))), _wgslsmith_clamp_vec2_i32(~(vec2<i32>(-1i) * -u_input.d.wz), _wgslsmith_clamp_vec2_i32(var_0.b.zz, _wgslsmith_mod_vec2_i32(vec2<i32>(-66630i, 41768i), -vec2<i32>(var_0.b.x, 80862i)), vec2<i32>(-42455i >> (u_input.c.x % 32u), firstTrailingBit(u_input.b.x))), vec2<i32>(2147483647i, 5553i))).c;
    var_0 = Struct_3(func_4(_wgslsmith_mult_vec3_u32(u_input.c.yxw, u_input.c.zwz), abs(var_0.b.yw)).a, vec4<i32>(51846i, -u_input.a, min(var_0.b.x, ~_wgslsmith_add_i32(0i, var_0.b.x)), min(u_input.d.x, countOneBits(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, var_0.b.x, u_input.a, u_input.a), vec4<i32>(var_0.b.x, 1728i, u_input.b.x, var_0.b.x))))), func_4(u_input.c.www, max(u_input.d.wz, _wgslsmith_div_vec2_i32(var_0.b.zx, var_0.b.wy) >> (vec2<u32>(u_input.c.x, 4294967295u) % vec2<u32>(32u)))).c, global1.a, vec4<bool>(!arg_0.x, any(var_0.a.wyy), true, false));
    var_0 = func_4(max(~u_input.c.wyx, vec3<u32>(u_input.c.x, u_input.c.x, u_input.c.x)), var_0.b.yz);
    return !vec2<bool>(any(var_0.a), global1.a.c);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(vec3<bool>(true, true, global1.a.c));
    global1 = Struct_2(global1.a);
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(sign(global1.a.a)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1062f, global2[_wgslsmith_index_u32(0u, 8u)], -309f)) + vec3<f32>(1497f, -328f, -209f)), global1.a.c)) + global1.a.a), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global1.a.a.zz + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(global1.a.a.yx * vec2<f32>(1096f, global1.a.b.x)), _wgslsmith_f_op_vec2_f32(vec2<f32>(127f, global1.a.a.x) + global1.a.a.zy)))), var_0.x);
    var_1 = global1.a;
    global1 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(-var_1.a), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-887f, -138f)), true));
    var var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global1.a.a * var_1.a)))) - vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.a.b.x - var_1.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -580f) + _wgslsmith_f_op_f32(372f + global2[_wgslsmith_index_u32(u_input.c.x, 8u)])), var_1.b.x)), var_1.a.xx, global1.a.c);
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.c.x, max(_wgslsmith_add_i32(-u_input.d.x, i32(-1i) * -2147483647i) >> (abs(_wgslsmith_add_u32(u_input.c.x, 30171u)) % 32u), _wgslsmith_sub_i32(~u_input.d.x, ~u_input.b.x)), u_input.b);
}


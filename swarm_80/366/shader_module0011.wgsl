struct Struct_1 {
    a: vec3<f32>,
    b: vec4<bool>,
    c: vec4<u32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: bool,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec3<f32>(1841f, -150f, 1003f), vec4<bool>(false, true, false, true), vec4<u32>(4294967295u, 5278u, 19670u, 84562u));

var<private> global1: vec3<u32>;

var<private> global2: vec2<i32>;

var<private> global3: array<i32, 9> = array<i32, 9>(1i, 12887i, -39029i, 16382i, -49604i, -63398i, 1i, i32(-2147483648), -49148i);

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_2(arg_0: vec4<i32>) -> vec3<bool> {
    var var_0 = ~abs(_wgslsmith_mult_i32(2147483647i, arg_0.x));
    global3 = array<i32, 9>();
    global2 = -(vec2<i32>(-1i) * -arg_0.yz);
    var var_1 = global0.c.x;
    var var_2 = vec3<bool>(!(!(global0.c.x >= 0u)) || (u_input.a.x > select(select(global3[_wgslsmith_index_u32(global0.c.x, 9u)], arg_0.x, global0.b.x), global3[_wgslsmith_index_u32(1u, 9u)], global0.b.x)), global0.b.x, global0.b.x | false);
    return !vec3<bool>(true, false, !var_2.x);
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: i32) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(-255f + _wgslsmith_f_op_f32(ceil(1f)));
    let var_1 = Struct_2(global0.b.x, Struct_1(global0.a, vec4<bool>(all(arg_1.b.wy) | all(vec4<bool>(arg_1.b.x, true, true, arg_1.b.x)), false, (i32(-1i) * -16731i) != u_input.a.x, true), select(abs(vec4<u32>(53447u, 70050u, global0.c.x, 0u)), global0.c, true)), arg_1, Struct_1(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-arg_1.a))), vec3<f32>(-458f, -1032f, _wgslsmith_f_op_f32(arg_1.a.x + global0.a.x)))), !(!vec4<bool>(global0.b.x, arg_1.b.x, arg_1.b.x, true)), vec4<u32>(1u & global0.c.x, abs(_wgslsmith_div_u32(global0.c.x, 16243u)), ~_wgslsmith_dot_vec2_u32(vec2<u32>(global0.c.x, arg_1.c.x), vec2<u32>(global0.c.x, global1.x)), ~firstLeadingBit(57127u))), !all(arg_1.b.zww));
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a.x, 2286f, -1996f, var_1.b.a.x))), vec4<f32>(var_1.d.a.x, 121f, global0.a.x, _wgslsmith_f_op_f32(ceil(global0.a.x)))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.a.x, -1000f, var_1.d.a.x, arg_1.a.x) + vec4<f32>(-1217f, -1000f, -478f, arg_1.a.x))) - _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(1389f, -1472f, -409f, global0.a.x), vec4<f32>(global0.a.x, arg_1.a.x, 1000f, global0.a.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(106f, arg_1.a.x, -455f, arg_1.a.x))))));
    global2 = firstLeadingBit(select(vec2<i32>(i32(-1i) * -8105i, _wgslsmith_div_i32(-2147483647i, 2147483647i)), ~_wgslsmith_sub_vec2_i32(vec2<i32>(global3[_wgslsmith_index_u32(42065u, 9u)], u_input.a.x) ^ u_input.a.yz, abs(vec2<i32>(0i, -2147483647i))), func_2(select(-u_input.a, -u_input.a, !vec4<bool>(true, false, arg_1.b.x, false))).xy));
    var var_3 = _wgslsmith_div_vec2_f32(global0.a.xy, arg_1.a.yx);
    return Struct_1(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-var_2.xyx), vec3<f32>(1416f, global0.a.x, _wgslsmith_f_op_f32(-299f + arg_1.a.x)))), select(!(!select(vec4<bool>(var_1.e, arg_0.x, true, arg_0.x), global0.b, var_1.b.b.x)), arg_1.b, vec4<bool>(true, all(vec3<bool>(true, true, true)), var_1.b.b.x, true)), _wgslsmith_div_vec4_u32(arg_1.c, arg_1.c));
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    var var_0 = vec3<u32>(1u, global0.c.x, _wgslsmith_mult_u32(~arg_0.c.x, 4294967295u));
    var var_1 = arg_0.b.wy;
    return arg_0;
}

fn func_1(arg_0: i32, arg_1: i32) -> vec3<f32> {
    let var_0 = func_4(func_3(func_2(u_input.a), Struct_1(global0.a, global0.b, vec4<u32>(~global0.c.x, global1.x, ~global1.x, ~4294967295u)), 1i));
    var var_1 = u_input.a.x;
    let var_2 = _wgslsmith_dot_vec4_u32(var_0.c, vec4<u32>(0u, global1.x, 19758u, _wgslsmith_dot_vec3_u32(select(var_0.c.xzw, vec3<u32>(1u, 0u, 43441u), var_0.b.xwy) ^ select(vec3<u32>(4294967295u, global1.x, 36755u), vec3<u32>(var_0.c.x, 40376u, var_0.c.x), global0.b.x), vec3<u32>(global1.x, 1u, 1u) ^ var_0.c.zxz)));
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a.x) - _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.a.x + -671f) + _wgslsmith_f_op_f32(-233f * global0.a.x)), _wgslsmith_f_op_f32(f32(-1f) * -204f)))));
    global3 = array<i32, 9>();
    return global0.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0.b.wz;
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global0.a.x, global0.a.x, false))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global0.a.x))), -757f) + vec3<f32>(_wgslsmith_f_op_f32(-225f + 1000f), _wgslsmith_f_op_f32(207f * global0.a.x), -1358f)), global0.b, global0.c);
    let var_2 = _wgslsmith_f_op_vec3_f32(func_1(-43948i, global2.x));
    let var_3 = select(!(!vec4<bool>(true, any(global0.b.ww), !var_1.b.x, var_0.x || global0.b.x)), !vec4<bool>(any(select(var_1.b.yxw, var_1.b.xwx, false)), true, var_0.x, false != (var_1.b.x && false)), select(global0.b, global0.b, var_1.b));
    var var_4 = min(min(~_wgslsmith_mult_vec2_u32(global0.c.zw, global1.xz >> (var_1.c.yw % vec2<u32>(32u))), vec2<u32>(~(~global0.c.x), ~5700u)), vec2<u32>(_wgslsmith_div_u32(var_1.c.x, global1.x), abs(1u)));
    global0 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global0.a))) * _wgslsmith_f_op_vec3_f32(func_1(u_input.a.x, global2.x))), var_3, ~(vec4<u32>(~4294967295u, _wgslsmith_clamp_u32(4294967295u, global1.x, global1.x), ~4294967295u, var_1.c.x) | var_1.c));
    global0 = Struct_1(vec3<f32>(var_1.a.x, var_1.a.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.a.x), _wgslsmith_f_op_f32(184f - global0.a.x))), func_3(func_2(u_input.a), func_3(vec3<bool>(true, true, global0.b.x || global0.b.x), Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(1337f, var_2.x, global0.a.x) + vec3<f32>(1000f, 302f, var_1.a.x)), var_1.b, ~var_1.c), reverseBits(global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(1u, global0.c.x), 9u)])), ~(~abs(u_input.a.x))).b, abs(~(~global0.c)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_u32(var_1.c.x, _wgslsmith_clamp_u32(5197u, _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(25638u, 80639u), vec2<u32>(1u, var_4.x)), ~global1.yx), ~func_3(var_3.wyz, Struct_1(vec3<f32>(-681f, -613f, var_1.a.x), var_1.b, var_1.c), 2147483647i).c.x)), -abs(u_input.a.x), func_3(global0.b.yzw, func_4(func_3(select(vec3<bool>(var_3.x, var_3.x, var_0.x), var_3.xzx, global0.b.yxw), Struct_1(var_1.a, global0.b, global0.c), u_input.a.x)), max(countOneBits(_wgslsmith_mod_i32(0i, u_input.a.x)), -33038i)).c.x);
}


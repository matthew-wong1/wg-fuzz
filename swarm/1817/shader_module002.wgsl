struct Struct_1 {
    a: f32,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(2147483647i, 5779i);

var<private> global1: array<Struct_1, 28>;

var<private> global2: Struct_1;

var<private> global3: array<bool, 24> = array<bool, 24>(false, true, false, true, false, false, true, false, false, true, true, true, true, true, true, false, false, false, false, true, false, true, false, false);

var<private> global4: array<bool, 22> = array<bool, 22>(false, true, false, true, true, true, true, true, true, true, false, true, true, true, false, true, false, true, true, false, true, false);

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2(arg_0: vec2<bool>, arg_1: vec4<i32>, arg_2: u32, arg_3: vec4<f32>) -> f32 {
    let var_0 = arg_1.xw;
    let var_1 = Struct_1(arg_3.x, arg_3);
    let var_2 = arg_0;
    var var_3 = var_1;
    var var_4 = var_1;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global2.b.x, _wgslsmith_f_op_f32(round(var_4.a)))) + var_1.a);
}

fn func_3(arg_0: u32, arg_1: vec4<u32>, arg_2: Struct_1, arg_3: Struct_1) -> u32 {
    var var_0 = true || any(select(!vec3<bool>(global3[_wgslsmith_index_u32(arg_1.x, 24u)], false, global3[_wgslsmith_index_u32(arg_0, 24u)]), select(select(vec3<bool>(global4[_wgslsmith_index_u32(0u, 22u)], true, global3[_wgslsmith_index_u32(u_input.a.x, 24u)]), vec3<bool>(global3[_wgslsmith_index_u32(101881u, 24u)], global4[_wgslsmith_index_u32(u_input.a.x, 22u)], true), vec3<bool>(global3[_wgslsmith_index_u32(u_input.a.x, 24u)], true, global4[_wgslsmith_index_u32(1u, 22u)])), vec3<bool>(true, false, global4[_wgslsmith_index_u32(arg_1.x, 22u)]), select(vec3<bool>(global4[_wgslsmith_index_u32(35100u, 22u)], true, global4[_wgslsmith_index_u32(u_input.a.x, 22u)]), vec3<bool>(global4[_wgslsmith_index_u32(4294967295u, 22u)], global4[_wgslsmith_index_u32(arg_0, 22u)], true), vec3<bool>(global3[_wgslsmith_index_u32(5100u, 24u)], false, true))), !vec3<bool>(global3[_wgslsmith_index_u32(4294967295u, 24u)], global3[_wgslsmith_index_u32(50219u, 24u)], global3[_wgslsmith_index_u32(u_input.a.x, 24u)])));
    var var_1 = 12170i;
    let var_2 = _wgslsmith_div_vec4_f32(arg_3.b, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, global2.b.x, global2.b.x, arg_2.a)));
    var var_3 = global1[_wgslsmith_index_u32(~(~4294967295u), 28u)];
    var var_4 = false;
    return ~(~0u);
}

fn func_1(arg_0: vec2<f32>, arg_1: vec3<bool>, arg_2: vec3<f32>, arg_3: vec4<f32>) -> f32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-212f, -2542f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1823f)) * _wgslsmith_div_f32(arg_3.x, arg_2.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -177f) - arg_2.x))) * vec4<f32>(arg_2.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_2.x))), -2108f, _wgslsmith_f_op_f32(func_2(arg_1.xz, _wgslsmith_div_vec4_i32(vec4<i32>(66833i, 2147483647i, global0.x, global0.x), vec4<i32>(-1i, 39847i, 2147483647i, global0.x)) >> (u_input.a % vec4<u32>(32u)), 39363u, arg_3))));
    global4 = array<bool, 22>();
    let var_1 = global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(28291u, u_input.b), 28u)];
    var var_2 = vec4<bool>(global4[_wgslsmith_index_u32(func_3(~u_input.b, _wgslsmith_add_vec4_u32(u_input.a, u_input.a), Struct_1(-1426f, vec4<f32>(_wgslsmith_f_op_f32(172f + -1729f), _wgslsmith_f_op_f32(-1188f + -1371f), 482f, -1000f)), global1[_wgslsmith_index_u32(41036u, 28u)]), 22u)], any(vec4<bool>(arg_1.x, arg_1.x != true, global3[_wgslsmith_index_u32(1u, 24u)], true)), all(select(select(arg_1.yy, select(vec2<bool>(true, arg_1.x), vec2<bool>(global4[_wgslsmith_index_u32(u_input.a.x, 22u)], true), false), global4[_wgslsmith_index_u32(9443u, 22u)]), arg_1.yz, arg_1.xz)), _wgslsmith_f_op_f32(abs(var_1.a)) <= _wgslsmith_f_op_f32(-1181f - _wgslsmith_f_op_f32(ceil(-578f))));
    global1 = array<Struct_1, 28>();
    return arg_3.x;
}

fn func_4(arg_0: vec3<u32>, arg_1: vec4<f32>, arg_2: vec3<bool>) -> Struct_1 {
    var var_0 = vec3<u32>(56868u, arg_0.x, arg_0.x);
    var var_1 = firstTrailingBit(~reverseBits(vec2<i32>(global0.x, -2147483647i))) >> (select(reverseBits(u_input.a.xx), abs(arg_0.zx), vec2<bool>(true, true)) % vec2<u32>(32u));
    var var_2 = _wgslsmith_sub_vec2_i32(vec2<i32>(i32(-1i) * -(~var_1.x), _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(var_1.x, -67352i, -1i, -16959i), vec4<i32>(-2147483647i, global0.x, -23208i, global0.x), vec4<i32>(1i, -86281i, var_1.x, 2147483647i)) >> (u_input.a % vec4<u32>(32u)), max(_wgslsmith_div_vec4_i32(vec4<i32>(global0.x, -1i, 50082i, 52875i), vec4<i32>(global0.x, var_1.x, 4767i, global0.x)), ~vec4<i32>(global0.x, 0i, var_1.x, global0.x)))), (vec2<i32>(-1i) * -(~vec2<i32>(-78457i, 0i))) ^ max(firstTrailingBit(vec2<i32>(-16240i, -1i)), _wgslsmith_mult_vec2_i32(vec2<i32>(global0.x, 63236i), vec2<i32>(var_1.x, var_1.x))));
    let var_3 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global2.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.a))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1268f), arg_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global2.b.x)) + -528f)), arg_1.x));
    let var_4 = ~_wgslsmith_dot_vec2_u32(arg_0.zx | (vec2<u32>(u_input.b, 4294967295u) & var_0.xx), vec2<u32>(abs(_wgslsmith_clamp_u32(u_input.a.x, u_input.b, u_input.a.x)), var_0.x));
    return var_3;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(global2.b.x, vec4<f32>(-1313f, global2.b.x, _wgslsmith_f_op_f32(-global2.a), global2.a));
    var var_1 = global2.a;
    let var_2 = Struct_1(_wgslsmith_div_f32(_wgslsmith_div_f32(343f, _wgslsmith_f_op_f32(-global2.b.x)), -1186f), global2.b);
    global2 = global1[_wgslsmith_index_u32(reverseBits(_wgslsmith_clamp_u32(~(_wgslsmith_clamp_u32(1u, u_input.a.x, u_input.b) | _wgslsmith_add_u32(u_input.b, u_input.b)), abs(min(u_input.b >> (1u % 32u), 0u)), u_input.a.x | 0u)), 28u)];
    var_0 = func_4(vec3<u32>(0u, _wgslsmith_add_u32(_wgslsmith_mult_u32(_wgslsmith_clamp_u32(0u, u_input.b, 1u), u_input.b), ~u_input.b), abs(_wgslsmith_add_u32(_wgslsmith_add_u32(1u, 44864u), 27109u))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-var_2.b.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(821f)) + _wgslsmith_f_op_f32(var_2.a + global2.b.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(global2.b.yy, vec3<bool>(global4[_wgslsmith_index_u32(4294967295u, 22u)], global4[_wgslsmith_index_u32(u_input.a.x, 22u)], true), var_0.b.wxw, vec4<f32>(563f, -197f, global2.b.x, global2.a))) - _wgslsmith_f_op_f32(step(-212f, -783f))), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-788f, -504f))))), select(select(vec3<bool>(all(vec2<bool>(global4[_wgslsmith_index_u32(u_input.b, 22u)], false)), global4[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.a.x, 0u), 22u)], !global3[_wgslsmith_index_u32(u_input.a.x, 24u)]), !select(vec3<bool>(false, global4[_wgslsmith_index_u32(1u, 22u)], true), vec3<bool>(false, true, global4[_wgslsmith_index_u32(u_input.a.x, 22u)]), vec3<bool>(true, true, global4[_wgslsmith_index_u32(u_input.a.x, 22u)])), vec3<bool>(!global4[_wgslsmith_index_u32(u_input.b, 22u)], false, true)), select(!vec3<bool>(global4[_wgslsmith_index_u32(1u, 22u)], false, true), vec3<bool>(false, global4[_wgslsmith_index_u32(~0u, 22u)], true), true), any(select(vec3<bool>(false, global4[_wgslsmith_index_u32(u_input.a.x, 22u)], global4[_wgslsmith_index_u32(1u, 22u)]), vec3<bool>(false, true, true), global4[_wgslsmith_index_u32(10868u, 22u)]))));
    var var_3 = func_4(vec3<u32>(_wgslsmith_mult_u32(~reverseBits(u_input.b), countOneBits(_wgslsmith_dot_vec3_u32(vec3<u32>(28267u, 0u, 4294967295u), u_input.a.yxy))), _wgslsmith_add_u32(reverseBits(u_input.b & u_input.b), _wgslsmith_dot_vec2_u32(u_input.a.zz, firstTrailingBit(vec2<u32>(u_input.a.x, u_input.b)))), u_input.b), vec4<f32>(_wgslsmith_f_op_f32(step(1039f, var_2.b.x)), 1205f, var_0.b.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.b.x - 141f) - _wgslsmith_f_op_f32(var_2.b.x + -1000f))))), !(!select(!vec3<bool>(global4[_wgslsmith_index_u32(1u, 22u)], true, global4[_wgslsmith_index_u32(1u, 22u)]), vec3<bool>(true, true, global4[_wgslsmith_index_u32(1u, 22u)]), u_input.a.x > u_input.b)));
    global4 = array<bool, 22>();
    var_3 = func_4(_wgslsmith_mod_vec3_u32(u_input.a.yxw, vec3<u32>(u_input.b | ~u_input.a.x, abs(u_input.a.x >> (u_input.a.x % 32u)), ~_wgslsmith_clamp_u32(u_input.b, 1u, u_input.a.x))), var_0.b, !select(!(!vec3<bool>(global3[_wgslsmith_index_u32(38033u, 24u)], global4[_wgslsmith_index_u32(u_input.a.x, 22u)], false)), !select(vec3<bool>(global4[_wgslsmith_index_u32(u_input.b, 22u)], false, global4[_wgslsmith_index_u32(u_input.b, 22u)]), vec3<bool>(global4[_wgslsmith_index_u32(0u, 22u)], global4[_wgslsmith_index_u32(38864u, 22u)], true), global3[_wgslsmith_index_u32(u_input.b, 24u)]), any(vec2<bool>(global3[_wgslsmith_index_u32(43434u, 24u)], true))));
    let var_4 = -2469f;
    let x = u_input.a;
    s_output = StorageBuffer(0i, vec2<i32>(global0.x, ~(~1i)), -888f, _wgslsmith_f_op_f32(func_1(vec2<f32>(-1033f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(vec2<f32>(593f, global2.b.x), vec3<bool>(true, false, global4[_wgslsmith_index_u32(u_input.b, 22u)]), var_2.b.xzz, var_2.b)))), select(select(select(vec3<bool>(global3[_wgslsmith_index_u32(u_input.b, 24u)], global4[_wgslsmith_index_u32(0u, 22u)], false), vec3<bool>(global3[_wgslsmith_index_u32(u_input.a.x, 24u)], true, global4[_wgslsmith_index_u32(0u, 22u)]), vec3<bool>(false, global4[_wgslsmith_index_u32(u_input.b, 22u)], global4[_wgslsmith_index_u32(u_input.b, 22u)])), select(vec3<bool>(true, global3[_wgslsmith_index_u32(u_input.a.x, 24u)], false), vec3<bool>(false, global3[_wgslsmith_index_u32(u_input.b, 24u)], true), global3[_wgslsmith_index_u32(47111u, 24u)]), all(vec2<bool>(true, global3[_wgslsmith_index_u32(4294967295u, 24u)]))), vec3<bool>(any(vec3<bool>(false, global3[_wgslsmith_index_u32(10432u, 24u)], global3[_wgslsmith_index_u32(u_input.b, 24u)])), all(vec4<bool>(global3[_wgslsmith_index_u32(22986u, 24u)], global4[_wgslsmith_index_u32(u_input.b, 22u)], true, false)), false || global4[_wgslsmith_index_u32(16498u, 22u)]), !select(vec3<bool>(false, false, false), vec3<bool>(false, global3[_wgslsmith_index_u32(u_input.a.x, 24u)], true), global4[_wgslsmith_index_u32(u_input.a.x, 22u)])), vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1596f), 892f, false)), var_3.b.x, _wgslsmith_f_op_f32(var_3.a - 271f)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_3.b.x, -979f, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -800f)), -700f, -597f))));
}


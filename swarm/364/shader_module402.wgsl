struct Struct_1 {
    a: vec2<bool>,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec4<i32>,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 9>;

var<private> global1: vec4<f32> = vec4<f32>(-1000f, -231f, -694f, 162f);

var<private> global2: array<Struct_1, 18>;

var<private> global3: vec3<bool>;

var<private> global4: Struct_1;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: Struct_1, arg_1: f32, arg_2: Struct_1) -> u32 {
    global1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_1, _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(round(1716f))), 1f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -820f), arg_1))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-global1.x), global1.x, arg_1, global1.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, global1.x, 461f, -1000f)), select(select(vec4<bool>(global3.x, false, global4.a.x, global3.x), vec4<bool>(true, global3.x, arg_0.a.x, arg_2.a.x), arg_2.a.x), !vec4<bool>(arg_2.a.x, false, arg_2.a.x, true), true))))));
    let var_0 = Struct_1(vec2<bool>(false, true), select(_wgslsmith_clamp_vec3_i32(arg_0.b | -vec3<i32>(global4.b.x, arg_2.b.x, global4.b.x), arg_0.b, reverseBits(max(vec3<i32>(u_input.b, 257i, -54516i), arg_0.b))), vec3<i32>(~(-1i), 22400i, _wgslsmith_div_i32(_wgslsmith_mod_i32(u_input.b, arg_2.b.x), ~global4.b.x)), !vec3<bool>(!arg_2.a.x, !arg_2.a.x, true)));
    var var_1 = !vec4<bool>(all(vec4<bool>(true, true, true, true)), all(!(!vec3<bool>(global3.x, true, arg_2.a.x))), true != all(arg_2.a), true);
    global4 = Struct_1(vec2<bool>(true, false), vec3<i32>(~_wgslsmith_mod_i32(0i, arg_2.b.x), abs(32688i), 1i | max(-2147483647i, reverseBits(var_0.b.x))));
    let var_2 = u_input.b;
    return _wgslsmith_dot_vec2_u32(vec2<u32>(firstTrailingBit(1u), 25984u), reverseBits(vec2<u32>(1u, 1u))) >> (_wgslsmith_dot_vec2_u32(vec2<u32>(14144u ^ _wgslsmith_dot_vec2_u32(vec2<u32>(47728u, 71122u), vec2<u32>(0u, 31250u)), ~60400u), ~select(vec2<u32>(1u, 1u), vec2<u32>(1u, 1u), all(vec4<bool>(true, false, false, true)))) % 32u);
}

fn func_2(arg_0: f32) -> Struct_1 {
    global3 = !select(select(vec3<bool>(all(vec4<bool>(true, false, global4.a.x, global4.a.x)), global3.x, true), vec3<bool>(global4.a.x, !global3.x, global3.x), true), select(vec3<bool>(false, false, global4.a.x), vec3<bool>(!global3.x, false, global3.x), false), vec3<bool>(true, true & (global1.x > global1.x), global3.x));
    var var_0 = global2[_wgslsmith_index_u32(abs(select(~(~48515u), min(4294967295u, 6551u), true && (true & global3.x)) ^ ~func_3(Struct_1(global4.a, global4.b), 650f, global2[_wgslsmith_index_u32(countOneBits(70463u), 18u)])), 18u)];
    global1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-736f, arg_0, 1047f, arg_0) - vec4<f32>(global1.x, global1.x, global1.x, arg_0))), vec4<f32>(global1.x, _wgslsmith_f_op_f32(select(1000f, global1.x, false)), -421f, _wgslsmith_f_op_f32(f32(-1f) * -2008f))) - vec4<f32>(_wgslsmith_f_op_f32(abs(global1.x)), -656f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(184f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1164f)))));
    var var_1 = select(vec2<u32>(~(~abs(4294967295u)), 1u), vec2<u32>(1u, 1u), true);
    let var_2 = !(any(vec3<bool>(any(vec3<bool>(true, var_0.a.x, false)), false, true)) | any(!vec2<bool>(true, global3.x)));
    return Struct_1(!(!vec2<bool>(any(vec4<bool>(true, var_0.a.x, true, var_0.a.x)), false)), global4.b);
}

fn func_1(arg_0: vec3<f32>, arg_1: vec3<bool>, arg_2: Struct_1) -> Struct_1 {
    var var_0 = false;
    var var_1 = Struct_1(global3.yx, ~vec3<i32>((u_input.b ^ -2147483647i) | max(-2499i, 1i), u_input.b, -16779i));
    var_0 = var_1.a.x;
    let var_2 = func_2(-465f);
    var var_3 = _wgslsmith_add_i32(countOneBits(7541i), global4.b.x >> (1u % 32u));
    return arg_2;
}

fn func_4(arg_0: Struct_1) -> StorageBuffer {
    let var_0 = global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(firstTrailingBit(_wgslsmith_clamp_vec2_u32(vec2<u32>(1u, 1u), ~vec2<u32>(12065u, 29723u), vec2<u32>(1u, ~22691u))), firstLeadingBit(vec2<u32>(abs(3545u), ~1u))), 18u)];
    var var_1 = min(-func_1(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(round(global1.wxx)))), select(vec3<bool>(false, false, true), vec3<bool>(var_0.a.x, arg_0.a.x, true), select(vec3<bool>(var_0.a.x, false, arg_0.a.x), vec3<bool>(arg_0.a.x, false, false), vec3<bool>(arg_0.a.x, true, true))), func_2(_wgslsmith_f_op_f32(ceil(686f)))).b.zy, vec2<i32>(i32(-1i) * -2147483647i, global4.b.x));
    var var_2 = vec4<i32>(u_input.b, firstTrailingBit(var_1.x), 20557i, _wgslsmith_div_i32(abs(global4.b.x), func_1(_wgslsmith_f_op_vec3_f32(select(global1.xyw, vec3<f32>(-324f, -534f, global1.x), u_input.b >= u_input.b)), vec3<bool>(global4.a.x, global4.a.x, true), global2[_wgslsmith_index_u32(abs(4294967295u), 18u)]).b.x));
    let var_3 = Struct_1(global3.zy, vec3<i32>(func_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global1.x + -106f), _wgslsmith_div_f32(global1.x, 364f))).b.x, -2147483647i, -27986i));
    global2 = array<Struct_1, 18>();
    return StorageBuffer(31475u, _wgslsmith_sub_vec2_i32(arg_0.b.yz, _wgslsmith_sub_vec2_i32(global4.b.zx, reverseBits(abs(var_3.b.zz)))), abs(min(vec4<i32>(1i, var_1.x, _wgslsmith_mult_i32(global4.b.x, var_3.b.x), ~var_0.b.x), vec4<i32>(_wgslsmith_sub_i32(51386i, var_2.x), -arg_0.b.x, _wgslsmith_dot_vec3_i32(var_2.zzx, vec3<i32>(0i, var_0.b.x, 7574i)), min(u_input.a, var_1.x)))), global1.x, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(22352u, func_3(global2[_wgslsmith_index_u32(1u, 18u)], global1.x, Struct_1(vec2<bool>(true, false), vec3<i32>(var_3.b.x, 30278i, global4.b.x))) << (1u % 32u), 1u, func_3(var_3, 594f, var_3))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = abs(~vec4<u32>(max(0u, 4294967295u), 1u, ~8244u, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(48700u, 3404u))) | ~(~vec4<u32>(64128u, 52081u, 0u, 2536u)));
    var var_1 = global3.x || !global4.a.x;
    let x = u_input.a;
    s_output = func_4(func_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, global1.x, -1874f)), _wgslsmith_f_op_vec3_f32(-global1.xwx), all(vec3<bool>(global3.x, global3.x, false))))), select(!select(vec3<bool>(global4.a.x, true, true), vec3<bool>(global3.x, true, true), vec3<bool>(false, false, false)), !select(vec3<bool>(global3.x, false, global4.a.x), vec3<bool>(global4.a.x, global4.a.x, false), false), !vec3<bool>(true, false, global4.a.x)), Struct_1(select(select(vec2<bool>(global3.x, true), vec2<bool>(global4.a.x, global3.x), vec2<bool>(true, true)), !global4.a, !global3.zx), global4.b)));
}


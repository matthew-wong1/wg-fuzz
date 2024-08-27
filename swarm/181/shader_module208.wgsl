struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: bool,
    b: vec4<u32>,
    c: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: i32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec3<i32>,
    d: f32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<Struct_2, 25>;

var<private> global2: array<f32, 21>;

var<private> global3: array<Struct_2, 22>;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: vec2<bool>) -> vec2<bool> {
    global1 = array<Struct_2, 25>();
    var var_0 = select(arg_0, select(arg_0, vec2<bool>(any(vec4<bool>(arg_0.x, global0.a, arg_0.x, global0.a)), true), select(global0.a, true, !arg_0.x & global0.a)), vec2<bool>(any(!select(vec4<bool>(global0.a, arg_0.x, global0.a, true), vec4<bool>(global0.a, global0.a, arg_0.x, global0.a), arg_0.x)), arg_0.x));
    let var_1 = abs(~vec4<u32>(_wgslsmith_dot_vec4_u32(global0.b << (vec4<u32>(u_input.a, global0.b.x, global0.b.x, 26679u) % vec4<u32>(32u)), _wgslsmith_mod_vec4_u32(vec4<u32>(1u, 3006u, u_input.d.x, global0.b.x), global0.b)), ~(~global0.b.x), 46259u, _wgslsmith_add_u32(u_input.d.x, 26176u) >> (~global0.b.x % 32u)));
    var_0 = arg_0;
    global1 = array<Struct_2, 25>();
    return select(select(vec2<bool>(any(!vec3<bool>(true, true, var_0.x)), arg_0.x), vec2<bool>(global0.a, false), arg_0), arg_0, arg_0.x);
}

fn func_2(arg_0: u32) -> u32 {
    global1 = array<Struct_2, 25>();
    var var_0 = u_input.b;
    let var_1 = Struct_1(-1236f);
    var var_2 = select(select(vec2<bool>(~var_0.x >= _wgslsmith_div_i32(global0.c, -60077i), any(!vec3<bool>(global0.a, false, global0.a))), !(!(!vec2<bool>(true, global0.a))), all(select(select(vec4<bool>(global0.a, true, true, global0.a), vec4<bool>(true, global0.a, false, true), global0.a), vec4<bool>(global0.a, global0.a, true, false), vec4<bool>(global0.a, false, true, true)))), select(!select(vec2<bool>(true, true), select(vec2<bool>(false, global0.a), vec2<bool>(global0.a, true), true), func_3(vec2<bool>(true, false))), vec2<bool>(func_3(vec2<bool>(global0.a, false)).x, var_0.x < _wgslsmith_sub_i32(10893i, 2147483647i)), vec2<bool>(true, any(!vec2<bool>(global0.a, global0.a)))), func_3(!vec2<bool>(true, any(vec2<bool>(global0.a, global0.a)))));
    let var_3 = var_1;
    return _wgslsmith_mult_u32(40248u, 1593u);
}

fn func_1(arg_0: f32, arg_1: u32) -> bool {
    let var_0 = Struct_1(-221f);
    let var_1 = ~_wgslsmith_clamp_vec2_u32(vec2<u32>(func_2(~4117u), _wgslsmith_mod_u32(61264u, u_input.a)), firstTrailingBit(global0.b.wz | ~u_input.d.zz), _wgslsmith_sub_vec2_u32(_wgslsmith_mod_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(arg_1, 0u), vec2<u32>(u_input.a, u_input.d.x)), vec2<u32>(0u, global0.b.x) >> (u_input.d.xy % vec2<u32>(32u))), ~(~vec2<u32>(1u, arg_1))));
    var var_2 = ~_wgslsmith_mult_vec4_i32(abs(-vec4<i32>(39654i, -2147483647i, global0.c, u_input.b.x)), vec4<i32>(i32(-1i) * -2147483647i, -global0.c, i32(-1i) * -16822i, firstLeadingBit(u_input.b.x) >> (1u % 32u)));
    var var_3 = -960f;
    let var_4 = select(vec2<bool>(!((false || global0.a) | !global0.a), all(select(!vec4<bool>(global0.a, false, global0.a, global0.a), vec4<bool>(true, true, global0.a, false), select(vec4<bool>(global0.a, global0.a, global0.a, true), vec4<bool>(global0.a, global0.a, global0.a, true), global0.a)))), select(func_3(select(!vec2<bool>(global0.a, global0.a), vec2<bool>(true, false), vec2<bool>(true, true))), !vec2<bool>(global0.a, false | global0.a), all(!(!vec2<bool>(global0.a, global0.a)))), false);
    return true;
}

fn func_4(arg_0: Struct_2, arg_1: vec3<u32>, arg_2: u32) -> Struct_2 {
    var var_0 = vec4<u32>(26299u, global0.b.x, arg_2, firstTrailingBit(_wgslsmith_dot_vec3_u32(global0.b.yxw, _wgslsmith_mult_vec3_u32(u_input.d, vec3<u32>(52618u, u_input.a, 1u)))));
    global1 = array<Struct_2, 25>();
    let var_1 = global2[_wgslsmith_index_u32(~(~_wgslsmith_dot_vec2_u32(~(~var_0.ww), _wgslsmith_add_vec2_u32(vec2<u32>(global0.b.x, 46835u) ^ vec2<u32>(12440u, arg_1.x), min(vec2<u32>(global0.b.x, 1u), global0.b.yy)))), 21u)];
    let var_2 = global3[_wgslsmith_index_u32(~1u, 22u)];
    global3 = array<Struct_2, 22>();
    return Struct_2(arg_0.a, select(_wgslsmith_mod_vec4_u32(select(vec4<u32>(var_0.x, 11872u, 4294967295u, var_2.b.x) & vec4<u32>(u_input.a, arg_0.b.x, arg_1.x, 4294967295u), abs(var_2.b), global0.a), arg_0.b), abs(var_2.b), select(select(vec4<bool>(false, true, false, global0.a), select(vec4<bool>(false, true, true, false), vec4<bool>(false, arg_0.a, false, false), true), true), !select(vec4<bool>(var_2.a, true, global0.a, true), vec4<bool>(arg_0.a, var_2.a, true, arg_0.a), arg_0.a), vec4<bool>(false, all(vec4<bool>(global0.a, arg_0.a, false, false)), arg_0.a, var_0.x != global0.b.x))), arg_0.c);
}

fn func_5(arg_0: Struct_2, arg_1: vec4<f32>, arg_2: i32, arg_3: vec4<i32>) -> u32 {
    var var_0 = arg_1.yyw;
    global3 = array<Struct_2, 22>();
    var_0 = _wgslsmith_f_op_vec3_f32(arg_1.wxx * arg_1.zxz);
    let var_1 = vec3<bool>(all(select(vec3<bool>(any(vec2<bool>(arg_0.a, global0.a)), !arg_0.a, arg_0.a), select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), global0.a), global0.a), !select(vec3<bool>(global0.a, arg_0.a, global0.a), vec3<bool>(global0.a, false, global0.a), vec3<bool>(arg_0.a, false, true)))), true, func_3(!vec2<bool>(all(vec3<bool>(arg_0.a, global0.a, true)), true)).x);
    var_0 = _wgslsmith_f_op_vec3_f32(arg_1.yxw + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(858f, 361f, -1374f) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-120f, 857f, arg_1.x) * vec3<f32>(global2[_wgslsmith_index_u32(29424u, 21u)], -1606f, var_0.x))) - arg_1.xwy)));
    return _wgslsmith_mult_u32(countOneBits(firstTrailingBit(8381u)), arg_0.b.x);
}

fn func_6(arg_0: f32, arg_1: Struct_2, arg_2: i32, arg_3: vec3<u32>) -> Struct_2 {
    global1 = array<Struct_2, 25>();
    global2 = array<f32, 21>();
    let var_0 = Struct_1(arg_0);
    global1 = array<Struct_2, 25>();
    let var_1 = Struct_1(global2[_wgslsmith_index_u32(~(global0.b.x << (func_2(4799u) % 32u)) | _wgslsmith_sub_u32(_wgslsmith_div_u32(4294967295u, u_input.d.x) << (_wgslsmith_clamp_u32(u_input.d.x, 0u, u_input.a) % 32u), u_input.d.x), 21u)]);
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.b.xx;
    global0 = func_6(115f, global3[_wgslsmith_index_u32(func_5(func_4(Struct_2(func_1(-896f, 0u), ~global0.b, -2147483647i | u_input.c), _wgslsmith_mult_vec3_u32(vec3<u32>(1u, u_input.d.x, u_input.d.x), vec3<u32>(global0.b.x, 97284u, 0u)), 0u), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2[_wgslsmith_index_u32(global0.b.x, 21u)], global2[_wgslsmith_index_u32(42076u, 21u)], global2[_wgslsmith_index_u32(global0.b.x, 21u)], global2[_wgslsmith_index_u32(global0.b.x, 21u)])) + vec4<f32>(global2[_wgslsmith_index_u32(u_input.a, 21u)], -1367f, global2[_wgslsmith_index_u32(0u, 21u)], -834f))), 2147483647i, vec4<i32>(~(-1i ^ global0.c), 45735i | global0.c, -22567i, global0.c)), 22u)], ~((global0.c << (~global0.b.x % 32u)) | 2147483647i), ~global0.b.xxx);
    var_0 = u_input.b.xz;
    global0 = Struct_2(any(vec3<bool>(false, func_6(_wgslsmith_f_op_f32(376f + global2[_wgslsmith_index_u32(u_input.d.x, 21u)]), Struct_2(global0.a, global0.b, var_0.x), _wgslsmith_dot_vec4_i32(vec4<i32>(-49258i, u_input.b.x, u_input.b.x, global0.c), vec4<i32>(global0.c, -2147483647i, u_input.c, 2147483647i)), vec3<u32>(u_input.d.x, 4294967295u, u_input.d.x)).a, !global0.a)), countOneBits(func_6(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(1461f * global2[_wgslsmith_index_u32(global0.b.x, 21u)]))), Struct_2(func_6(411f, global1[_wgslsmith_index_u32(global0.b.x, 25u)], var_0.x, u_input.d).a, vec4<u32>(1u, 1u, 4294967295u, 38216u) ^ global0.b, ~var_0.x), min(abs(1i), 1i), global0.b.xzx).b), -75694i);
    var var_1 = u_input.b.x;
    var var_2 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -968f)));
    var var_3 = Struct_1(121f);
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(select(u_input.b.zz, u_input.b.zy, func_6(_wgslsmith_f_op_f32(max(global2[_wgslsmith_index_u32(27014u, 21u)], global2[_wgslsmith_index_u32(0u, 21u)])), Struct_2(true, global0.b, u_input.b.x), global0.c, global0.b.zyx).a)), vec4<u32>(~countOneBits(~global0.b.x), u_input.d.x, 79472u, ~_wgslsmith_mod_u32(_wgslsmith_sub_u32(global0.b.x, 6406u), 15764u)), firstTrailingBit(vec3<i32>(-global0.c ^ var_0.x, 0i, ~_wgslsmith_dot_vec2_i32(u_input.b.zz, vec2<i32>(global0.c, -2147483647i)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(global0.b.x, 21u)])), ~u_input.d.zx << (~vec2<u32>(9598u, ~u_input.d.x) % vec2<u32>(32u)));
}


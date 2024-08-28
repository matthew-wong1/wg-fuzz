struct Struct_1 {
    a: u32,
    b: i32,
    c: bool,
    d: vec3<i32>,
    e: f32,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: bool,
    b: vec4<f32>,
}

struct Struct_4 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: array<bool, 15>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_2() -> vec3<f32> {
    let var_0 = u_input.b.xy;
    global1 = array<bool, 15>();
    global1 = array<bool, 15>();
    let var_1 = Struct_4((vec2<i32>(-1i) * -select(vec2<i32>(15363i, u_input.c.x), u_input.c, false)) & vec2<i32>(_wgslsmith_mod_i32(u_input.a, 0i), (31523i ^ u_input.a) >> (~4294967295u % 32u)));
    global1 = array<bool, 15>();
    return _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(select(global0.b.xxw, vec3<f32>(global0.b.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1235f - -200f))), global0.b.x), !(any(vec2<bool>(global1[_wgslsmith_index_u32(27392u, 15u)], global1[_wgslsmith_index_u32(u_input.b.x, 15u)])) && false)))));
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: Struct_2, arg_3: vec3<bool>) -> vec4<u32> {
    var var_0 = Struct_4(vec2<i32>(firstLeadingBit(arg_1), arg_1));
    global0 = Struct_3(true, global0.b);
    let var_1 = !(!global1[_wgslsmith_index_u32(24188u, 15u)]);
    var_0 = Struct_4(vec2<i32>(~_wgslsmith_dot_vec3_i32(~vec3<i32>(u_input.a, 1i, 1i), vec3<i32>(arg_1, -2147483647i, var_0.a.x)), _wgslsmith_mod_i32(var_0.a.x, arg_1)));
    let var_2 = arg_0.c;
    return _wgslsmith_mult_vec4_u32(firstLeadingBit(min(vec4<u32>(4294967295u, 1u, 46427u, u_input.b.x), vec4<u32>(arg_0.a, 1u, u_input.b.x, u_input.b.x)) >> ((vec4<u32>(18175u, 21730u, 1u, 51139u) >> (vec4<u32>(u_input.b.x, arg_0.a, u_input.b.x, arg_0.a) % vec4<u32>(32u))) % vec4<u32>(32u))) ^ min(vec4<u32>(arg_0.a & u_input.b.x, 33155u, countOneBits(4294967295u), 91979u ^ u_input.b.x), vec4<u32>(arg_0.a, abs(arg_0.a), ~u_input.b.x, 40538u)), select(vec4<u32>(min(arg_0.a, u_input.b.x), 1u >> (~arg_0.a % 32u), ~arg_0.a, u_input.b.x), abs(_wgslsmith_add_vec4_u32(vec4<u32>(arg_0.a, u_input.b.x, arg_0.a, u_input.b.x), vec4<u32>(u_input.b.x, 27386u, 4708u, u_input.b.x)) ^ vec4<u32>(u_input.b.x, 1u, 1u, arg_0.a)), any(arg_3)));
}

fn func_1() -> Struct_1 {
    global1 = array<bool, 15>();
    var var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global0.b.x)) * global0.b.x))));
    var var_1 = u_input.b.x;
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2337f), global0.b.x, global0.b.x) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_2())) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global0.b.zxx + vec3<f32>(-235f, global0.b.x, global0.b.x))))));
    let var_3 = Struct_4(u_input.c >> (~u_input.b.xx % vec2<u32>(32u)));
    return Struct_1(reverseBits(_wgslsmith_dot_vec4_u32(reverseBits(func_3(Struct_1(u_input.b.x, var_3.a.x, global1[_wgslsmith_index_u32(1u, 15u)], vec3<i32>(0i, 48960i, u_input.a), global0.b.x), var_3.a.x, Struct_2(u_input.a), vec3<bool>(global1[_wgslsmith_index_u32(50337u, 15u)], global1[_wgslsmith_index_u32(u_input.b.x, 15u)], global1[_wgslsmith_index_u32(u_input.b.x, 15u)]))), ~vec4<u32>(u_input.b.x, 0u, u_input.b.x, u_input.b.x))), 0i, true, ~((abs(vec3<i32>(u_input.c.x, u_input.a, var_3.a.x)) ^ countOneBits(vec3<i32>(24082i, -33560i, var_3.a.x))) >> ((u_input.b ^ vec3<u32>(47313u, u_input.b.x, 55249u)) % vec3<u32>(32u))), _wgslsmith_f_op_f32(136f * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(1101f, -1000f)), global0.b.x))));
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: bool) -> Struct_4 {
    global0 = Struct_3(_wgslsmith_dot_vec3_i32(func_1().d, ~_wgslsmith_clamp_vec3_i32(arg_1.d, vec3<i32>(-1i, 300i, 278i), vec3<i32>(1i, -41i, u_input.c.x))) > u_input.c.x, _wgslsmith_f_op_vec4_f32(max(global0.b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(round(global0.b))))))));
    var var_0 = global0.b;
    var var_1 = !select(!select(!vec4<bool>(false, global1[_wgslsmith_index_u32(45445u, 15u)], global0.a, false), select(arg_0, vec4<bool>(global1[_wgslsmith_index_u32(arg_1.a, 15u)], true, global1[_wgslsmith_index_u32(u_input.b.x, 15u)], arg_2), global0.a), true), arg_0, vec4<bool>(!arg_1.c, true, all(!arg_0.zy), any(arg_0.ywx)));
    var var_2 = Struct_2(-3866i);
    var var_3 = Struct_3(false, _wgslsmith_f_op_vec4_f32(-global0.b));
    return Struct_4(u_input.c);
}

fn func_5(arg_0: Struct_4, arg_1: vec4<u32>, arg_2: vec2<bool>) -> Struct_2 {
    var var_0 = Struct_1(~arg_1.x, countOneBits(u_input.c.x), true, vec3<i32>(_wgslsmith_dot_vec3_i32(-min(vec3<i32>(-46086i, 2147483647i, u_input.a), vec3<i32>(15722i, u_input.c.x, u_input.a)), firstTrailingBit(-vec3<i32>(u_input.c.x, 0i, u_input.a))), -arg_0.a.x, 11470i << (max(abs(arg_1.x), arg_1.x) % 32u)), 1143f);
    var var_1 = func_1();
    var var_2 = _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.e * _wgslsmith_f_op_f32(var_0.e * var_1.e)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec3_f32(func_2()).x)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(282f, -135f)))));
    var_1 = func_1();
    var_2 = global0.b.zx;
    return Struct_2(_wgslsmith_dot_vec4_i32(vec4<i32>(-30412i, _wgslsmith_add_i32(u_input.c.x, var_1.d.x << (4294967295u % 32u)), -2147483647i, var_1.b), ~vec4<i32>(arg_0.a.x, -var_1.b, abs(1i), -var_0.b)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = all(select(select(vec4<bool>(true, global0.a, true, false), vec4<bool>(true, true, true, true), !vec4<bool>(true, global0.a, global0.a, false)), !(!vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 15u)], global0.a, false, true)), all(vec4<bool>(global0.a, global0.a, true, global1[_wgslsmith_index_u32(u_input.b.x, 15u)])))) == false;
    let var_1 = false;
    var var_2 = firstLeadingBit(74801u) ^ u_input.b.x;
    var var_3 = func_5(func_4(vec4<bool>(true, true, (global0.a || false) & (global1[_wgslsmith_index_u32(7346u, 15u)] && global0.a), 56844u > u_input.b.x), func_1(), -(~33169i) < -u_input.a), abs(~select(vec4<u32>(1u, u_input.b.x, u_input.b.x, 32217u), vec4<u32>(3024u, u_input.b.x, 75420u, u_input.b.x), !vec4<bool>(global0.a, var_1, true, var_1))), select(!vec2<bool>(true, all(vec4<bool>(global0.a, false, true, global0.a))), select(vec2<bool>(global0.a, func_1().c), vec2<bool>(true, false && global1[_wgslsmith_index_u32(67689u, 15u)]), false), !(!(!vec2<bool>(global1[_wgslsmith_index_u32(u_input.b.x, 15u)], global0.a)))));
    var_3 = Struct_2(u_input.a);
    var var_4 = ~((0u ^ u_input.b.x) | u_input.b.x);
    global0 = Struct_3(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.b.x, _wgslsmith_clamp_u32(4294967295u, ~u_input.b.x, 1u)), 15u)], _wgslsmith_f_op_vec4_f32(-global0.b));
    let var_5 = vec4<u32>(~0u, _wgslsmith_mod_u32(u_input.b.x, 1u), 54574u, ~(~u_input.b.x));
    let var_6 = all(select(select(vec3<bool>(any(vec2<bool>(global1[_wgslsmith_index_u32(u_input.b.x, 15u)], global0.a)), var_1, any(vec3<bool>(global0.a, global0.a, var_1))), select(!vec3<bool>(true, var_1, false), select(vec3<bool>(false, false, var_1), vec3<bool>(false, global1[_wgslsmith_index_u32(4276u, 15u)], false), global0.a), vec3<bool>(false, false, global0.a)), select(!vec3<bool>(var_1, true, false), vec3<bool>(false, global1[_wgslsmith_index_u32(23078u, 15u)], global0.a), var_1)), !vec3<bool>(var_1, global1[_wgslsmith_index_u32(var_5.x, 15u)] | true, false), global0.a));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1().e * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b.x) * -2014f)) + 312f), 29105u | func_3(Struct_1(~u_input.b.x, _wgslsmith_add_i32(1i, -1i), !var_1, _wgslsmith_div_vec3_i32(vec3<i32>(var_3.a, -1i, var_3.a), vec3<i32>(-1i, var_3.a, u_input.a)), _wgslsmith_f_op_f32(max(global0.b.x, global0.b.x))), 2147483647i, Struct_2(~0i), vec3<bool>(false, false, global0.a)).x);
}


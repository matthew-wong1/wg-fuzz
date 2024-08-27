struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: i32,
    b: u32,
    c: vec4<f32>,
}

struct Struct_3 {
    a: vec3<bool>,
    b: Struct_1,
    c: Struct_2,
    d: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 10>;

var<private> global1: Struct_3;

var<private> global2: Struct_2;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_2, arg_2: Struct_3) -> f32 {
    let var_0 = all(select(!arg_2.a.yx, arg_2.a.xz, !(global2.c.x == 674f))) && global1.a.x;
    global2 = Struct_2(arg_2.d, _wgslsmith_add_u32(50924u, min(_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 12687u, global0[_wgslsmith_index_u32(20148u, 10u)], global0[_wgslsmith_index_u32(2476u, 10u)]), vec4<u32>(global0[_wgslsmith_index_u32(67167u, 10u)], 72771u, global0[_wgslsmith_index_u32(58133u, 10u)], global0[_wgslsmith_index_u32(1u, 10u)])), ~8907u), _wgslsmith_add_u32(~4294967295u, _wgslsmith_mod_u32(28300u, arg_1.b)))), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -204f) + arg_1.c.x), _wgslsmith_f_op_f32(abs(global1.c.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-246f, global1.c.c.x, true))), arg_1.c.x), _wgslsmith_f_op_vec4_f32(exp2(arg_2.c.c))));
    let var_1 = Struct_2(-(~arg_1.a), 31871u, vec4<f32>(_wgslsmith_div_f32(arg_2.b.a.x, arg_1.c.x), global1.b.a.x, _wgslsmith_f_op_f32(-arg_2.b.a.x), arg_2.c.c.x));
    var var_2 = Struct_3(!(!vec3<bool>(global1.a.x, arg_2.a.x & false, true)), arg_2.b, Struct_2((~(-14244i) << (arg_2.c.b % 32u)) | ~(-17839i), 4294967295u, _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(arg_1.c.x * arg_1.c.x), -538f, _wgslsmith_f_op_f32(global1.c.c.x * -983f), global1.b.a.x)))), reverseBits(~(~(arg_1.a | 7277i))));
    var var_3 = vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.b.a.x)) + _wgslsmith_div_f32(_wgslsmith_div_f32(342f, 1434f), _wgslsmith_f_op_f32(trunc(arg_2.c.c.x)))), -803f), global1.b.a.x, global2.c.x);
    return _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global2.c.x)))));
}

fn func_2() -> Struct_3 {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.c.x, _wgslsmith_f_op_f32(sign(global1.b.a.x)), _wgslsmith_f_op_f32(func_3(vec3<bool>(false, global1.a.x, global1.a.x), Struct_2(global1.d, 0u, vec4<f32>(749f, global2.c.x, global2.c.x, global1.c.c.x)), Struct_3(vec3<bool>(global1.a.x, global1.a.x, global1.a.x), global1.b, global1.c, 2147483647i))), _wgslsmith_f_op_f32(-global1.b.a.x)))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(137f, global1.c.c.x) * -1000f), global2.c.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(global2.c.x)), _wgslsmith_f_op_f32(func_3(global1.a, global1.c, Struct_3(global1.a, Struct_1(global2.c.ywy), global1.c, u_input.c))), global1.a.x)), _wgslsmith_f_op_f32(global1.c.c.x - _wgslsmith_f_op_f32(-1008f + global1.b.a.x))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(global1.c.c)), _wgslsmith_div_vec4_f32(global2.c, vec4<f32>(global1.c.c.x, global2.c.x, global2.c.x, global1.b.a.x))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(global2.c.x, -103f, 1332f, 2595f), global2.c)))));
    return Struct_3(select(global1.a, !vec3<bool>(any(global1.a), true, global1.a.x | false), global1.a), Struct_1(_wgslsmith_f_op_vec3_f32(exp2(var_0.yxy))), Struct_2(_wgslsmith_mod_i32(-7171i, 2147483647i), ~_wgslsmith_mod_u32(1u, global2.b << (global2.b % 32u)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(774f, global1.c.c.x, -955f, global2.c.x), _wgslsmith_div_vec4_f32(global2.c, global2.c))), vec4<f32>(-1616f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), global2.c.x, _wgslsmith_f_op_f32(global2.c.x - -280f)), !select(vec4<bool>(global1.a.x, true, global1.a.x, global1.a.x), vec4<bool>(global1.a.x, true, global1.a.x, global1.a.x), true)))), -global1.d);
}

fn func_1() -> u32 {
    global0 = array<u32, 10>();
    var var_0 = ~(~(countOneBits(vec2<u32>(global1.c.b, 37041u)) >> (reverseBits(_wgslsmith_sub_vec2_u32(vec2<u32>(0u, u_input.a), vec2<u32>(global1.c.b, 103620u))) % vec2<u32>(32u))));
    global1 = func_2();
    var var_1 = vec2<f32>(global2.c.x, _wgslsmith_f_op_f32(ceil(global2.c.x)));
    var_0 = vec2<u32>(reverseBits(~_wgslsmith_dot_vec4_u32(select(vec4<u32>(global2.b, global0[_wgslsmith_index_u32(var_0.x, 10u)], global2.b, 30574u), vec4<u32>(u_input.a, 4294967295u, var_0.x, var_0.x), vec4<bool>(true, true, false, true)), ~vec4<u32>(6984u, global1.c.b, var_0.x, global0[_wgslsmith_index_u32(1u, 10u)]))), abs(var_0.x | u_input.a));
    return _wgslsmith_div_u32(_wgslsmith_mod_u32(global1.c.b, ~_wgslsmith_mult_u32(u_input.a, global1.c.b)), _wgslsmith_mod_u32(global1.c.b, _wgslsmith_dot_vec3_u32(vec3<u32>(global1.c.b, ~1u, ~var_0.x), vec3<u32>(79114u, 15704u, abs(var_0.x)))));
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: vec2<i32>, arg_3: Struct_3) -> Struct_1 {
    global1 = func_2();
    let var_0 = Struct_2(global1.d, global2.b, global1.c.c);
    global1 = arg_3;
    global2 = arg_3.c;
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1.b;
    var_0 = func_4(select(~(~(~vec4<u32>(28358u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(63634u, 10u)], 10u)], global2.b, global1.c.b))), vec4<u32>(_wgslsmith_sub_u32(~u_input.a, func_1()), u_input.a >> (34180u % 32u), 0u, ~46216u), !(!(!vec4<bool>(global1.a.x, global1.a.x, false, global1.a.x)))), global1.b, vec2<i32>(_wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(u_input.b.xxw, u_input.b.xyx), 0i), select(1i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, u_input.b.x, global2.a), u_input.b.yyw), global1.a.x)) & firstTrailingBit(_wgslsmith_clamp_vec2_i32(vec2<i32>(20070i, -2147483647i), vec2<i32>(-20315i, u_input.c), u_input.b.xx) | firstTrailingBit(vec2<i32>(30915i, 17477i))), func_2());
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(global1.b.a.x * _wgslsmith_f_op_f32(-930f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -305f) * _wgslsmith_div_f32(-269f, global1.b.a.x)))), 1i, max(firstTrailingBit(~(~1u)), global0[_wgslsmith_index_u32(global2.b, 10u)]));
}


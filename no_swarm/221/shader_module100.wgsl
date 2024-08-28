struct Struct_1 {
    a: i32,
    b: vec2<bool>,
    c: i32,
    d: vec3<bool>,
    e: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<i32>,
}

struct Struct_4 {
    a: u32,
    b: Struct_3,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(1i, vec2<bool>(false, false), -1413i, vec3<bool>(false, true, true), vec3<i32>(-5674i, 1i, 7637i)));

var<private> global1: array<vec4<u32>, 14>;

var<private> global2: vec3<bool>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> u32 {
    global0 = Struct_2(Struct_1((i32(-1i) * -3345i) & max(~2147483647i, _wgslsmith_mult_i32(global0.a.e.x, global0.a.e.x)), vec2<bool>(any(!global2.xx), true), i32(-1i) * -global0.a.c, global0.a.d, -abs(countOneBits(global0.a.e))));
    var var_0 = global0.a;
    global1 = array<vec4<u32>, 14>();
    var var_1 = Struct_4(~u_input.a.x, Struct_3(Struct_2(Struct_1(-24091i, vec2<bool>(var_0.b.x, true), -var_0.a, !var_0.d, -vec3<i32>(var_0.e.x, global0.a.c, 1i))), vec4<i32>(max(0i, 1i), _wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(1i, var_0.c, -39837i, global0.a.a)), ~vec4<i32>(-20100i, global0.a.c, global0.a.a, var_0.c)), _wgslsmith_sub_i32(-17926i, ~var_0.e.x), -select(global0.a.c, global0.a.e.x, true))));
    var var_2 = var_1.b;
    return reverseBits(abs(25153u));
}

fn func_2(arg_0: f32, arg_1: i32) -> vec4<bool> {
    let var_0 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1129f, 397f)))))))));
    let var_1 = _wgslsmith_f_op_f32(-var_0.x);
    global0 = Struct_2(global0.a);
    let var_2 = vec3<u32>(~u_input.a.x, ~func_3() << (_wgslsmith_dot_vec4_u32(select(global1[_wgslsmith_index_u32(~u_input.a.x, 14u)], global1[_wgslsmith_index_u32(9900u, 14u)], true), vec4<u32>(1u, u_input.a.x, 9021u, ~48827u)) % 32u), 11756u);
    let var_3 = _wgslsmith_f_op_f32(-var_0.x);
    return !select(vec4<bool>(!(var_2.x < u_input.a.x), true, any(global0.a.b), global2.x), vec4<bool>(global2.x, all(select(global0.a.d, global0.a.d, false)), any(global0.a.b), true == all(global0.a.b)), all(!(!vec2<bool>(global0.a.b.x, global0.a.d.x))));
}

fn func_4(arg_0: Struct_4, arg_1: bool, arg_2: i32, arg_3: vec4<i32>) -> Struct_4 {
    global0 = arg_0.b.a;
    let var_0 = !select(select(!vec3<bool>(arg_1, true, global0.a.b.x), arg_0.b.a.a.d, false), vec3<bool>(arg_0.b.a.a.b.x, !any(vec3<bool>(global2.x, false, arg_0.b.a.a.d.x)), any(vec2<bool>(arg_0.b.a.a.d.x, arg_0.b.a.a.b.x)) != global2.x), global0.a.d);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(712f - 500f) + _wgslsmith_f_op_f32(-1f)) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1060f))), 1000f))));
    var var_2 = Struct_4(arg_0.a, Struct_3(Struct_2(global0.a), vec4<i32>(i32(-1i) * -global0.a.a, 2147483647i, -1397i, _wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.b.b.x, -1i, -24704i) ^ arg_3.yww, _wgslsmith_add_vec3_i32(arg_3.yzz, arg_0.b.a.a.e)))));
    let var_3 = global1[_wgslsmith_index_u32(1u, 14u)];
    return arg_0;
}

fn func_1(arg_0: Struct_4, arg_1: vec2<i32>, arg_2: vec4<bool>, arg_3: f32) -> Struct_3 {
    let var_0 = func_4(arg_0, !any(func_2(arg_3, arg_1.x)), global0.a.e.x, min(arg_0.b.b, ~_wgslsmith_mod_vec4_i32(_wgslsmith_sub_vec4_i32(arg_0.b.b, arg_0.b.b), _wgslsmith_add_vec4_i32(vec4<i32>(global0.a.a, -81731i, arg_1.x, arg_1.x), arg_0.b.b))));
    let var_1 = global2.xz;
    global2 = arg_0.b.a.a.d;
    let var_2 = ~(~(~(~vec3<u32>(arg_0.a, arg_0.a, 1u)) ^ (vec3<u32>(u_input.a.x, var_0.a, u_input.a.x) ^ _wgslsmith_mult_vec3_u32(vec3<u32>(var_0.a, u_input.a.x, arg_0.a), vec3<u32>(var_0.a, 0u, arg_0.a)))));
    let var_3 = global0.a.b.x && arg_2.x;
    return Struct_3(Struct_2(global0.a), var_0.b.b);
}

fn func_5(arg_0: Struct_3, arg_1: vec2<f32>) -> f32 {
    global0 = func_1(func_4(Struct_4(u_input.a.x, Struct_3(func_1(Struct_4(1227u, Struct_3(Struct_2(Struct_1(global0.a.c, vec2<bool>(global2.x, global0.a.d.x), -1i, vec3<bool>(global2.x, global0.a.d.x, true), vec3<i32>(global0.a.a, global0.a.c, global0.a.e.x))), arg_0.b)), arg_0.b.xx, vec4<bool>(false, global0.a.b.x, false, false), 1152f).a, vec4<i32>(-1i, 40831i, -2147483647i, 52517i))), !(_wgslsmith_mult_i32(28224i, 0i) > _wgslsmith_mult_i32(arg_0.b.x, -1i)), _wgslsmith_mult_i32(firstTrailingBit(0i), ~(i32(-1i) * -19921i)), ~arg_0.b), arg_0.b.yw, !(!select(vec4<bool>(global2.x, global2.x, arg_0.a.a.b.x, arg_0.a.a.d.x), select(vec4<bool>(true, arg_0.a.a.b.x, arg_0.a.a.d.x, false), vec4<bool>(true, true, false, global0.a.d.x), vec4<bool>(arg_0.a.a.d.x, true, global2.x, arg_0.a.a.b.x)), global2.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_1.x, _wgslsmith_f_op_f32(-372f - _wgslsmith_div_f32(2509f, arg_1.x)), !arg_0.a.a.b.x)) * _wgslsmith_div_f32(arg_1.x, -825f))).a;
    let var_0 = min(~global1[_wgslsmith_index_u32(~func_4(Struct_4(u_input.a.x, Struct_3(arg_0.a, arg_0.b)), arg_0.a.a.d.x, arg_0.b.x, select(arg_0.b, vec4<i32>(-1i, global0.a.e.x, arg_0.b.x, arg_0.a.a.e.x), true)).a, 14u)], ~(~vec4<u32>(87124u, u_input.a.x, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, 27395u), vec3<u32>(u_input.a.x, 4294967295u, 0u)), 1u)));
    let var_1 = vec2<bool>(global2.x, false);
    let var_2 = ~var_0.x;
    var var_3 = _wgslsmith_div_i32(~(~abs(-1i)), -_wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.b.x, ~global0.a.a), vec2<i32>(-1i) * -arg_0.a.a.e.yz));
    return arg_1.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(Struct_2(Struct_1(-23409i, global2.zz, global0.a.e.x, vec3<bool>(false, true, global0.a.b.x), -_wgslsmith_sub_vec3_i32(vec3<i32>(global0.a.e.x, 37559i, global0.a.a), global0.a.e))), ~(~max(max(vec4<i32>(global0.a.c, global0.a.a, global0.a.a, global0.a.e.x), vec4<i32>(global0.a.e.x, 1i, global0.a.c, -16901i)), vec4<i32>(0i, -2147483647i, 24814i, global0.a.c) | vec4<i32>(global0.a.c, 2147483647i, global0.a.c, -12019i))));
    var var_1 = ~(u_input.a.x >> (~_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.a.x, u_input.a.x), vec3<u32>(u_input.a.x, u_input.a.x, 1u)), 80905u) % 32u));
    let var_2 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(1021f)))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(func_5(func_1(Struct_4(u_input.a.x, Struct_3(Struct_2(global0.a), vec4<i32>(var_0.a.a.a, var_0.a.a.c, -44270i, -21703i))), global0.a.e.zy, vec4<bool>(true, false, global2.x, global0.a.b.x), -582f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-322f, 817f))))), _wgslsmith_div_f32(868f, _wgslsmith_f_op_f32(select(-1617f, _wgslsmith_f_op_f32(114f * -1580f), all(global0.a.d.zy))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-923f, _wgslsmith_f_op_f32(round(-2051f)), _wgslsmith_f_op_f32(max(1000f, -306f))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 475f, 1604f)))));
    var var_3 = abs(global0.a.e) >> (select(abs(~(~vec3<u32>(29392u, u_input.a.x, 35760u))), ~_wgslsmith_clamp_vec3_u32(~vec3<u32>(0u, 0u, 1u), vec3<u32>(33489u, u_input.a.x, 4294967295u), ~vec3<u32>(4294967295u, u_input.a.x, u_input.a.x)), vec3<bool>(false, global0.a.d.x, func_1(func_4(Struct_4(1u, Struct_3(var_0.a, vec4<i32>(14105i, global0.a.a, var_0.b.x, var_0.b.x))), false, global0.a.c, vec4<i32>(global0.a.c, var_0.a.a.c, var_0.a.a.a, var_0.a.a.e.x)), abs(vec2<i32>(27025i, 35865i)), vec4<bool>(var_0.a.a.b.x, global0.a.d.x, false, false), -377f).a.a.d.x)) % vec3<u32>(32u));
    global2 = !vec3<bool>((global2.x && func_4(Struct_4(5370u, Struct_3(var_0.a, var_0.b)), var_0.a.a.b.x, var_0.a.a.e.x, vec4<i32>(-1i, var_0.a.a.c, global0.a.c, global0.a.c)).b.a.a.d.x) || global2.x, false, any(vec4<bool>(var_0.b.x == var_3.x, var_0.a.a.d.x, true, !global0.a.d.x)));
    let x = u_input.a;
    s_output = StorageBuffer(-744f, _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(var_2, vec3<f32>(var_2.x, var_2.x, var_2.x))) - vec3<f32>(var_2.x, 932f, -578f))), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-874f, _wgslsmith_f_op_f32(var_2.x * var_2.x), var_2.x))))));
}


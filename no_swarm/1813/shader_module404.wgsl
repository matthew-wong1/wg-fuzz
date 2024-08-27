struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<Struct_1, 25>;

var<private> global2: array<Struct_2, 10> = array<Struct_2, 10>(Struct_2(false), Struct_2(true), Struct_2(false), Struct_2(false), Struct_2(false), Struct_2(false), Struct_2(true), Struct_2(false), Struct_2(false), Struct_2(true));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: vec4<u32>, arg_1: vec4<f32>, arg_2: Struct_2) -> vec2<f32> {
    var var_0 = _wgslsmith_div_vec4_f32(vec4<f32>(arg_1.x, arg_1.x, _wgslsmith_f_op_f32(sign(arg_1.x)), arg_1.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(arg_1)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(arg_1, vec4<f32>(arg_1.x, arg_1.x, -490f, -1120f), global0.a)))));
    var_0 = vec4<f32>(arg_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(arg_1.x, var_0.x)))) - 2555f), arg_1.x, -173f);
    global1 = array<Struct_1, 25>();
    global0 = arg_2;
    var_0 = vec4<f32>(arg_1.x, _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(var_0.x - arg_1.x), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1000f - -1068f))));
    return _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.x, -315f) + arg_1.zx)))), _wgslsmith_div_vec2_f32(vec2<f32>(951f, arg_1.x), vec2<f32>(1241f, arg_1.x)), true));
}

fn func_2(arg_0: Struct_2, arg_1: i32) -> i32 {
    global0 = arg_0;
    let var_0 = vec2<i32>(arg_1, firstTrailingBit(firstLeadingBit(-_wgslsmith_dot_vec3_i32(vec3<i32>(arg_1, -28118i, arg_1), vec3<i32>(2147483647i, -28050i, arg_1)))));
    let var_1 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-361f, -1061f))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(455f, -510f))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-641f, 851f), vec2<f32>(1f, 1f), vec2<bool>(arg_0.a, arg_0.a))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3(~vec4<u32>(61265u, 70762u, 9622u, 1u) ^ firstTrailingBit(vec4<u32>(u_input.a, 47016u, 71507u, 4294967295u)), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-740f, 295f, -420f, -966f))))), arg_0)) - vec2<f32>(555f, _wgslsmith_f_op_f32(min(-220f, 1122f)))), vec2<bool>(arg_0.a, !((var_0.x < var_0.x) != true))));
    let var_2 = countOneBits(select(~countOneBits(abs(vec3<u32>(1u, 1u, u_input.a))), _wgslsmith_div_vec3_u32(vec3<u32>(firstLeadingBit(u_input.a), u_input.a, 954u), firstTrailingBit(vec3<u32>(u_input.b, u_input.a, u_input.b))), true));
    let var_3 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-1093f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x - 417f))), var_1.x, _wgslsmith_f_op_vec2_f32(func_3(firstTrailingBit(vec4<u32>(0u, 1u, 9922u, 45960u)), _wgslsmith_div_vec4_f32(vec4<f32>(-1143f, 968f, var_1.x, var_1.x), vec4<f32>(var_1.x, var_1.x, var_1.x, var_1.x)), arg_0)).x), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(439f, 242f, var_1.x))) - vec3<f32>(var_1.x, var_1.x, -841f)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(var_1.x, var_1.x, -1720f), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_1.x, var_1.x, var_1.x), vec3<f32>(var_1.x, 1175f, var_1.x)))))));
    return ~(~(-arg_1 & -var_0.x)) | -42941i;
}

fn func_1(arg_0: vec4<f32>, arg_1: Struct_2) -> vec3<u32> {
    var var_0 = vec2<i32>(select(-56018i, ~(~(-2147483647i)), all(vec3<bool>(true, true, true))), _wgslsmith_mult_i32(_wgslsmith_add_i32(-1i, func_2(Struct_2(global0.a), 2147483647i)), -29484i)) << ((reverseBits(vec2<u32>(firstTrailingBit(u_input.b), 1u)) & ~max(abs(vec2<u32>(u_input.a, u_input.b)), ~vec2<u32>(u_input.b, u_input.b))) % vec2<u32>(32u));
    let var_1 = arg_1;
    var_0 = vec2<i32>(_wgslsmith_clamp_i32(~max(1261i, reverseBits(-1i)), ~func_2(var_1, var_0.x), -max(5725i, var_0.x)), var_0.x);
    global1 = array<Struct_1, 25>();
    var var_2 = Struct_1(_wgslsmith_mod_vec3_u32(abs(max(vec3<u32>(1u, 91224u, u_input.b), vec3<u32>(1u, u_input.a, u_input.b) ^ vec3<u32>(u_input.a, 0u, u_input.b))), ~_wgslsmith_mult_vec3_u32(~vec3<u32>(103589u, u_input.a, u_input.a), ~vec3<u32>(u_input.a, u_input.b, u_input.b))));
    return vec3<u32>(firstLeadingBit(~var_2.a.x), 70955u, _wgslsmith_sub_u32(var_2.a.x, var_2.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1009f))), _wgslsmith_f_op_f32(f32(-1f) * -1831f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1231f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(813f))))));
    var var_1 = ~(-vec4<i32>(reverseBits(min(-2147483647i, 1i)), -(~18287i), ~23135i, 0i | _wgslsmith_dot_vec3_i32(vec3<i32>(-27907i, 2147483647i, -17651i), vec3<i32>(-68392i, -5908i, -1i))));
    var var_2 = ~min(4427u, 1u << (_wgslsmith_add_u32(u_input.b, ~4294967295u) % 32u));
    let var_3 = Struct_1(~func_1(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_0.x, var_0.x, -395f, var_0.x))), global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.a, u_input.a), 10u)]) << (vec3<u32>(~(~u_input.a), u_input.a, 21362u | countOneBits(u_input.a)) % vec3<u32>(32u)));
    let var_4 = select(_wgslsmith_add_vec2_u32(~(~var_3.a.yy), var_3.a.zx), ~vec2<u32>(~(~var_3.a.x), 1u), select(true == ((-1i & var_1.x) > _wgslsmith_mult_i32(-25020i, -5385i)), global0.a, !(global0.a || global0.a) != true));
    let var_5 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-739f, _wgslsmith_f_op_f32(exp2(var_0.x)), -908f), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1660f, var_0.x, 352f)) * _wgslsmith_div_vec3_f32(vec3<f32>(var_0.x, 724f, 1132f), vec3<f32>(-2947f, -653f, var_0.x))))), ~(i32(-1i) * -2147483647i) <= _wgslsmith_mod_i32(_wgslsmith_div_i32(var_1.x, -1i), 2147483647i))));
    let var_6 = global2[_wgslsmith_index_u32(~4294967295u, 10u)];
    global2 = array<Struct_2, 10>();
    let var_7 = var_1.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(trunc(-351f))));
}


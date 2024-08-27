struct Struct_1 {
    a: bool,
    b: bool,
    c: u32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 4> = array<Struct_1, 4>(Struct_1(true, false, 19125u), Struct_1(true, true, 45723u), Struct_1(false, false, 4294967295u), Struct_1(true, false, 26228u));

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_1) -> f32 {
    let var_0 = global0[_wgslsmith_index_u32(~_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_dot_vec4_u32(arg_0, vec4<u32>(69u, arg_1.c, arg_1.c, 4294967295u)), 13151u, abs(0u)), vec3<u32>(_wgslsmith_clamp_u32(arg_1.c, arg_0.x, 0u), 4294967295u, ~1u)), _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(arg_0 & arg_0, countOneBits(vec4<u32>(arg_0.x, arg_1.c, 0u, 1u))), vec4<u32>(abs(61323u), arg_1.c, abs(arg_1.c), 31948u))), 4u)];
    global0 = array<Struct_1, 4>();
    let var_1 = ~arg_0;
    let var_2 = global0[_wgslsmith_index_u32(select(var_0.c, 4294967295u, !any(select(!vec2<bool>(var_0.b, arg_1.a), vec2<bool>(true, true), var_0.b))), 4u)];
    var var_3 = Struct_1(!all(vec2<bool>(true, var_0.b && true)), var_2.a, min(~4294967295u, var_1.x));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-1786f, -1143f), _wgslsmith_f_op_f32(trunc(-674f)))) + _wgslsmith_div_f32(-279f, _wgslsmith_f_op_f32(floor(450f))))) - 878f);
}

fn func_2(arg_0: Struct_1, arg_1: f32) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(arg_1, arg_1, arg_1), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(max(-172f, -255f)), arg_1, arg_1)))) - _wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(func_3(min(vec4<u32>(30780u, 0u, arg_0.c, 30550u), vec4<u32>(arg_0.c, arg_0.c, 21754u, 1u)), Struct_1(false, true, 1u))), 2006f, _wgslsmith_f_op_f32(min(arg_1, arg_1))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(1087f, 148f, arg_1), vec3<f32>(628f, arg_1, arg_1))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-687f, 1540f, arg_1))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1015f, arg_1, arg_1)))))));
    var var_1 = vec4<f32>(662f, 566f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-551f + _wgslsmith_f_op_f32(f32(-1f) * -853f)))), var_0.x);
    var_1 = _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec4<u32>(0u, arg_0.c, arg_0.c, 1u), Struct_1(arg_0.b, arg_0.b, arg_0.c)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-761f - 854f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-418f + _wgslsmith_f_op_f32(-arg_1))), _wgslsmith_f_op_f32(arg_1 - _wgslsmith_f_op_f32(-var_1.x)), var_1.x)));
    var var_2 = vec3<i32>(_wgslsmith_sub_i32(min(1i, _wgslsmith_dot_vec2_i32(min(vec2<i32>(10265i, u_input.a), vec2<i32>(u_input.a, -10194i)), -vec2<i32>(0i, u_input.a))), abs(_wgslsmith_add_i32(-1i, -72021i) & -u_input.b)), u_input.a, -u_input.b);
    var_2 = vec3<i32>(-1i, abs(~(-25432i)), abs(u_input.a));
    return Struct_1(true, true, ~arg_0.c ^ ~11419u);
}

fn func_4(arg_0: bool, arg_1: vec3<bool>, arg_2: Struct_1, arg_3: Struct_1) -> f32 {
    let var_0 = ~vec4<u32>(countOneBits(_wgslsmith_div_u32(~1u, 4294967295u)), arg_3.c, arg_2.c, ~reverseBits(abs(arg_3.c)));
    global0 = array<Struct_1, 4>();
    global0 = array<Struct_1, 4>();
    var var_1 = Struct_1(arg_1.x, false, ~arg_3.c);
    var var_2 = arg_3;
    return -124f;
}

fn func_1(arg_0: vec4<i32>, arg_1: bool, arg_2: vec3<i32>, arg_3: i32) -> u32 {
    let var_0 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -203f))), _wgslsmith_f_op_f32(func_4(any(vec2<bool>(true, true)), !vec3<bool>(true, arg_1, false), func_2(Struct_1(arg_1, arg_1, 1u), _wgslsmith_f_op_f32(trunc(-192f))), func_2(Struct_1(arg_1, arg_1, 0u), _wgslsmith_f_op_f32(f32(-1f) * -608f))))), -154f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(462f + _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, 1334f) * _wgslsmith_f_op_f32(trunc(-1000f))))), -445f);
    let var_1 = _wgslsmith_f_op_f32(select(1000f, var_0.x, !(!all(vec2<bool>(arg_1, arg_1)))));
    var var_2 = global0[_wgslsmith_index_u32(~50559u, 4u)];
    var var_3 = select(vec2<bool>(!(var_1 >= _wgslsmith_f_op_f32(-1174f - var_0.x)), arg_1), select(select(!(!vec2<bool>(var_2.b, false)), select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(var_2.a, false), vec2<bool>(true, arg_1)), vec2<bool>(false, var_2.b)), arg_1), !(!select(vec2<bool>(arg_1, false), vec2<bool>(false, arg_1), true)), !select(select(vec2<bool>(var_2.a, arg_1), vec2<bool>(true, false), true), select(vec2<bool>(var_2.b, false), vec2<bool>(var_2.b, var_2.b), var_2.b), arg_1)), !var_2.a);
    let var_4 = select(func_2(global0[_wgslsmith_index_u32(max(~var_2.c, firstTrailingBit(var_2.c)) ^ abs(64991u), 4u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)) + var_0.x)).a, all(select(vec2<bool>(true, arg_3 != 1546i), vec2<bool>(var_2.b, all(vec3<bool>(true, false, true))), !select(vec2<bool>(arg_1, true), vec2<bool>(arg_1, var_2.a), var_3.x))), !var_2.b);
    return var_2.c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = max(82444u, ~(reverseBits(~18828u) ^ func_1(max(vec4<i32>(45235i, u_input.b, 1i, u_input.a), vec4<i32>(1i, u_input.b, u_input.a, u_input.a)), true, -vec3<i32>(u_input.b, 2147483647i, u_input.b), select(u_input.b, u_input.b, false))));
    global0 = array<Struct_1, 4>();
    let var_1 = func_2(func_2(func_2(func_2(func_2(global0[_wgslsmith_index_u32(var_0, 4u)], -1069f), _wgslsmith_f_op_f32(func_3(vec4<u32>(var_0, var_0, 0u, var_0), global0[_wgslsmith_index_u32(4294967295u, 4u)]))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -967f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-465f - 973f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-760f, -200f) + _wgslsmith_f_op_f32(534f + 1366f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -554f)));
    let var_2 = var_1;
    let var_3 = -14017i;
    let x = u_input.a;
    s_output = StorageBuffer(min(vec3<i32>(u_input.b, var_3 >> (~var_2.c % 32u), var_3), ~(-vec3<i32>(-2147483647i, 27161i, 6780i) & (vec3<i32>(u_input.b, u_input.b, var_3) << (vec3<u32>(var_0, var_0, var_0) % vec3<u32>(32u))))), i32(-1i) * -_wgslsmith_mult_i32(-3182i, 1i), vec3<u32>(~23632u, var_0, func_2(var_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2282f))).c));
}


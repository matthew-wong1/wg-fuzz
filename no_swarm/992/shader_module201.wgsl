struct Struct_1 {
    a: vec2<u32>,
    b: vec2<bool>,
    c: i32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: i32,
    b: i32,
}

struct Struct_5 {
    a: Struct_1,
    b: vec3<f32>,
    c: i32,
    d: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 8> = array<vec2<u32>, 8>(vec2<u32>(1u, 25839u), vec2<u32>(26166u, 4294967295u), vec2<u32>(4294967295u, 0u), vec2<u32>(0u, 4294967295u), vec2<u32>(17030u, 26954u), vec2<u32>(4294967295u, 33232u), vec2<u32>(92112u, 16025u), vec2<u32>(106386u, 1u));

var<private> global1: Struct_5;

var<private> global2: i32;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: bool, arg_1: vec4<bool>) -> u32 {
    global1 = Struct_5(Struct_1(~(~u_input.a.xz), select(!vec2<bool>(false, arg_1.x), select(!vec2<bool>(global1.a.b.x, false), select(global1.a.b, vec2<bool>(true, false), vec2<bool>(arg_1.x, arg_1.x)), true), false), global1.a.c), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.b.x) - -1725f), global1.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(416f * 567f))) * _wgslsmith_f_op_f32(-global1.b.x))), global1.a.c, 2147483647i & abs(abs(global1.a.c) ^ -global1.d));
    let var_0 = u_input.a;
    global2 = ~global1.d;
    let var_1 = _wgslsmith_mod_i32(global1.c, global1.c);
    global2 = global1.d;
    return ~(_wgslsmith_mult_u32(u_input.a.x, var_0.x >> (u_input.a.x % 32u)) ^ 1u) >> (~global1.a.a.x % 32u);
}

fn func_2(arg_0: vec4<bool>) -> vec2<u32> {
    global2 = _wgslsmith_add_i32(max(-2147483647i, -global1.d), 214i);
    global1 = Struct_5(Struct_1(vec2<u32>(~0u, global1.a.a.x) ^ vec2<u32>(func_3(false, vec4<bool>(arg_0.x, global1.a.b.x, global1.a.b.x, false)), 86033u), vec2<bool>(_wgslsmith_f_op_f32(sign(global1.b.x)) < _wgslsmith_f_op_f32(step(2199f, -102f)), !any(vec2<bool>(arg_0.x, false))), global1.c | _wgslsmith_mod_i32(max(global1.d, global1.d), -1i)), vec3<f32>(global1.b.x, _wgslsmith_f_op_f32(round(global1.b.x)), _wgslsmith_f_op_f32(596f * 662f)), _wgslsmith_dot_vec4_i32(-vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(global1.c, -2147483647i, global1.d, global1.c), vec4<i32>(global1.d, -1i, 2147483647i, global1.a.c)), global1.d, global1.a.c, 8716i), vec4<i32>(~(-global1.d), abs(max(19546i, global1.c)), _wgslsmith_mod_i32(-50746i, global1.c) << (u_input.a.x % 32u), (global1.c ^ -16960i) << (_wgslsmith_dot_vec3_u32(vec3<u32>(global1.a.a.x, global1.a.a.x, 1u), vec3<u32>(global1.a.a.x, 1u, 1u)) % 32u))), global1.a.c);
    var var_0 = select(global1.a.b.x, all(vec2<bool>(global1.a.b.x, false)), _wgslsmith_f_op_f32(-global1.b.x) <= _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1517f - -1487f) + _wgslsmith_f_op_f32(global1.b.x - -738f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-855f, global1.b.x)))));
    var var_1 = Struct_4(global1.d, i32(-1i) * -_wgslsmith_mod_i32(-2147483647i, 1i));
    let var_2 = global1.a;
    return min(~(global1.a.a | vec2<u32>(89725u, global1.a.a.x)), ~(~select(global1.a.a, vec2<u32>(global1.a.a.x, 1u), true)));
}

fn func_4(arg_0: vec2<u32>, arg_1: f32, arg_2: Struct_1, arg_3: Struct_1) -> Struct_5 {
    let var_0 = !arg_3.b.x;
    global2 = global1.c;
    var var_1 = Struct_3(_wgslsmith_div_i32(-21496i, ~(~arg_3.c)));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global1.b.x + _wgslsmith_f_op_f32(select(global1.b.x, 1709f, true))))));
    let var_3 = vec4<bool>(arg_3.b.x, global1.a.b.x, global1.a.b.x, global1.a.b.x);
    return Struct_5(arg_3, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(global1.b, global1.b)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-192f, -705f, arg_1) + vec3<f32>(global1.b.x, 1000f, -1000f))))), global1.c, 8194i);
}

fn func_1(arg_0: vec3<f32>) -> vec2<bool> {
    var var_0 = func_4(select(func_2(select(select(vec4<bool>(false, false, false, global1.a.b.x), vec4<bool>(true, global1.a.b.x, global1.a.b.x, true), global1.a.b.x), vec4<bool>(false, global1.a.b.x, true, global1.a.b.x), true)), vec2<u32>(u_input.a.x, select(global1.a.a.x << (global1.a.a.x % 32u), u_input.a.x, any(vec3<bool>(true, false, global1.a.b.x)))), global1.a.b.x), arg_0.x, global1.a, global1.a);
    let var_1 = ~(~(~min(_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, u_input.a.x, 4294967295u, 73864u), vec4<u32>(global1.a.a.x, 4294967295u, global1.a.a.x, u_input.a.x)), min(vec4<u32>(global1.a.a.x, global1.a.a.x, var_0.a.a.x, 22970u), vec4<u32>(global1.a.a.x, 17830u, 49679u, 4294967295u)))));
    global0 = array<vec2<u32>, 8>();
    var var_2 = Struct_3(~global1.a.c);
    let var_3 = Struct_3(-1i);
    return select(vec2<bool>(false, var_0.a.b.x), vec2<bool>(true, true), !var_0.a.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_5(Struct_1(global0[_wgslsmith_index_u32(1u, 8u)], select(!global1.a.b, !select(global1.a.b, vec2<bool>(true, true), global1.a.b.x), all(select(global1.a.b, vec2<bool>(false, true), false))), -_wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(0i, 1i), vec2<i32>(global1.d, 2147483647i)), vec2<i32>(global1.d, global1.d))), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(global1.b.x, -518f, -529f), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.b.x), global1.b.x), 756f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(423f, -719f)))))), 1i, ~(global1.a.c ^ _wgslsmith_mod_i32(-12171i, _wgslsmith_dot_vec4_i32(vec4<i32>(-51435i, 82070i, 2147483647i, 2147483647i), vec4<i32>(64i, -8571i, global1.a.c, 0i)))));
    let var_1 = var_0;
    let var_2 = vec3<bool>(any(select(select(!vec4<bool>(false, var_1.a.b.x, var_0.a.b.x, var_1.a.b.x), !vec4<bool>(var_1.a.b.x, var_1.a.b.x, true, var_1.a.b.x), var_1.a.b.x == var_1.a.b.x), select(select(vec4<bool>(true, var_1.a.b.x, false, true), vec4<bool>(var_0.a.b.x, false, var_1.a.b.x, false), true), vec4<bool>(false, false, global1.a.b.x, var_0.a.b.x), vec4<bool>(false, true, global1.a.b.x, var_0.a.b.x)), global1.a.b.x || true)), any(select(select(global1.a.b, select(vec2<bool>(global1.a.b.x, true), vec2<bool>(false, true), var_1.a.b), true), vec2<bool>(true, true), func_1(global1.b))), _wgslsmith_clamp_u32(func_3(!var_1.a.b.x, !vec4<bool>(global1.a.b.x, false, false, false)), ~1u, 104016u) <= ~(~0u));
    global1 = func_4(min(var_1.a.a, reverseBits(_wgslsmith_mult_vec2_u32(global1.a.a, _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a.x, global1.a.a.x), var_0.a.a)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_0.b.x)))), Struct_1(func_4(u_input.a.zx >> (min(vec2<u32>(0u, 4294967295u), global0[_wgslsmith_index_u32(116863u, 8u)]) % vec2<u32>(32u)), _wgslsmith_f_op_f32(abs(global1.b.x)), Struct_1(vec2<u32>(global1.a.a.x, 47019u) << (vec2<u32>(50112u, 0u) % vec2<u32>(32u)), vec2<bool>(global1.a.b.x, global1.a.b.x), func_4(u_input.a.xz, var_1.b.x, global1.a, global1.a).a.c), func_4(vec2<u32>(44189u, global1.a.a.x) >> (vec2<u32>(1u, 54013u) % vec2<u32>(32u)), -618f, var_1.a, Struct_1(global0[_wgslsmith_index_u32(u_input.a.x, 8u)], global1.a.b, global1.c)).a).a.a, vec2<bool>(true, !any(var_2)), min(2147483647i, -var_0.c)), Struct_1(global0[_wgslsmith_index_u32(countOneBits(10447u), 8u)], select(!func_1(var_1.b), !vec2<bool>(var_2.x, false), true), 2147483647i));
    var var_3 = u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1009f, -561f, -1334f, -396f), vec4<f32>(var_1.b.x, var_1.b.x, global1.b.x, 1879f), vec4<bool>(false, false, false, false)))))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-386f, -1000f, _wgslsmith_f_op_f32(f32(-1f) * -1593f), var_0.b.x))))));
}


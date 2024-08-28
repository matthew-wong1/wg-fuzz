struct Struct_1 {
    a: u32,
    b: bool,
    c: bool,
    d: i32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
    c: Struct_1,
    d: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 15> = array<bool, 15>(true, false, true, false, false, true, false, false, false, false, true, false, true, false, true);

var<private> global1: array<Struct_2, 20>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1() -> f32 {
    global0 = array<bool, 15>();
    var var_0 = Struct_1(u_input.c.x, !global0[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.c.x, ~u_input.c.x), 15u)], false, _wgslsmith_sub_i32(~(~u_input.a.x), 1i));
    let var_1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(637f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1260f + 689f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(122f - 1000f) + 1f)))), _wgslsmith_f_op_f32(ceil(538f))));
    let var_2 = vec4<i32>(-1i) * -vec4<i32>(~u_input.a.x, _wgslsmith_dot_vec2_i32(select(vec2<i32>(-46708i, u_input.b.x), u_input.b.xx, false), max(u_input.a.yz, u_input.b.xz)), -2147483647i, var_0.d);
    var var_3 = false;
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1)), 342f);
}

fn func_3(arg_0: vec4<i32>, arg_1: bool, arg_2: f32) -> i32 {
    let var_0 = vec3<bool>(all(vec3<bool>(false, false, false)) | !global0[_wgslsmith_index_u32(2763u << ((u_input.c.x | u_input.c.x) % 32u), 15u)], all(vec2<bool>(1000f != arg_2, !all(vec3<bool>(true, false, global0[_wgslsmith_index_u32(69084u, 15u)])))), arg_1);
    var var_1 = Struct_1(firstLeadingBit(u_input.c.x) | u_input.c.x, global0[_wgslsmith_index_u32(~(~24896u), 15u)], !global0[_wgslsmith_index_u32(reverseBits(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.c.x, u_input.c.x, u_input.c.x), vec4<u32>(118510u, 1u, 0u, u_input.c.x))) << (55139u % 32u), 15u)], 1i);
    var_1 = Struct_1(_wgslsmith_sub_u32(4294967295u, _wgslsmith_dot_vec4_u32(~vec4<u32>(9647u, var_1.a, 47020u, var_1.a) & ~vec4<u32>(var_1.a, u_input.c.x, 1u, var_1.a), (vec4<u32>(4294967295u, 4294967295u, 1u, 0u) << (vec4<u32>(var_1.a, 0u, 9568u, 101127u) % vec4<u32>(32u))) ^ _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.c.x, 47780u, 40121u, 138755u), vec4<u32>(9963u, 0u, 0u, 1u)))), false, true, 1102i);
    let var_2 = arg_0;
    global1 = array<Struct_2, 20>();
    return _wgslsmith_clamp_i32(6078i, ~551i, var_1.d);
}

fn func_2(arg_0: vec4<bool>, arg_1: Struct_1) -> f32 {
    var var_0 = Struct_1(~21983u, global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(58285u, _wgslsmith_add_u32(reverseBits(arg_1.a), ~select(u_input.c.x, 4294967295u, true)), arg_1.a), 15u)], !global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(u_input.c, u_input.c << (vec3<u32>(4294967295u, u_input.c.x, 53109u) % vec3<u32>(32u))), u_input.c), 15u)], u_input.b.x);
    let var_1 = 1u;
    var var_2 = 1i;
    var var_3 = Struct_1(4294967295u, arg_1.b || global0[_wgslsmith_index_u32(16871u, 15u)], true | any(vec2<bool>(arg_1.b != true, arg_0.x)), _wgslsmith_add_i32(func_3(-vec4<i32>(arg_1.d, 19494i, 35095i, 2147483647i), any(vec3<bool>(false, false, true)), -273f), _wgslsmith_mult_i32(u_input.b.x, var_0.d) | ~arg_1.d) & (_wgslsmith_dot_vec4_i32(abs(vec4<i32>(u_input.a.x, -1i, arg_1.d, 41620i)), ~vec4<i32>(-24307i, u_input.a.x, -60467i, -39449i)) | -1i));
    var_2 = 37185i;
    return _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(999f, -587f))))), 530f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1()) * 1000f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-784f - _wgslsmith_div_f32(-644f, 2017f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.c.x, 15u)], true, true), Struct_1(u_input.c.x, global0[_wgslsmith_index_u32(u_input.c.x, 15u)], true, -73i))))))));
    let var_1 = abs(_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.c.x, reverseBits(53749u << (u_input.c.x % 32u))), ~vec2<u32>(u_input.c.x, 0u) ^ ~(~vec2<u32>(u_input.c.x, 65941u))));
    var_0 = 1011f;
    var var_2 = Struct_1(_wgslsmith_sub_u32(u_input.c.x, _wgslsmith_dot_vec2_u32(~(~var_1), ~(~u_input.c.yy))), true, global0[_wgslsmith_index_u32(4294967295u, 15u)], u_input.b.x);
    var_0 = 579f;
    let var_3 = select(!vec2<bool>(any(vec4<bool>(global0[_wgslsmith_index_u32(57322u, 15u)], true, var_2.b, var_2.b)) || all(vec4<bool>(false, global0[_wgslsmith_index_u32(var_2.a, 15u)], false, var_2.c)), u_input.a.x < -var_2.d), vec2<bool>(var_2.c, false), true);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(abs(-1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(min(-473f, 628f)))), 1194f), reverseBits(-reverseBits(-9150i)));
}


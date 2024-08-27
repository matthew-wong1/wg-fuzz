struct Struct_1 {
    a: vec3<i32>,
    b: vec4<f32>,
    c: f32,
    d: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 15>;

var<private> global1: Struct_2 = Struct_2(Struct_1(vec3<i32>(1i, -1i, -53683i), vec4<f32>(1366f, -1758f, -2680f, 731f), 1085f, vec4<u32>(1u, 26667u, 775u, 53490u)));

var<private> global2: vec3<bool>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_2(arg_0: bool, arg_1: Struct_1, arg_2: Struct_1) -> Struct_2 {
    let var_0 = min(global1.a.a.x, _wgslsmith_mod_i32(arg_2.a.x, arg_2.a.x));
    global0 = array<Struct_2, 15>();
    var var_1 = !(18463u > _wgslsmith_div_u32(1u, arg_2.d.x));
    let var_2 = vec4<bool>(arg_0, arg_0, false && all(vec2<bool>(all(vec2<bool>(arg_0, arg_0)), false)), global2.x | arg_0);
    global1 = Struct_2(Struct_1(abs(arg_1.a) | ~vec3<i32>(-1i, 2147483647i, 2147483647i), global1.a.b, arg_2.c, countOneBits(vec4<u32>(arg_1.d.x & 2018u, u_input.c, u_input.c, 0u))));
    return Struct_2(Struct_1(arg_2.a << (vec3<u32>(arg_2.d.x, arg_1.d.x, _wgslsmith_dot_vec2_u32(vec2<u32>(arg_2.d.x, 4294967295u), arg_1.d.ww)) % vec3<u32>(32u)), _wgslsmith_f_op_vec4_f32(-global1.a.b), _wgslsmith_f_op_f32(max(arg_2.c, -1144f)), select(global1.a.d | arg_2.d, _wgslsmith_sub_vec4_u32(_wgslsmith_add_vec4_u32(global1.a.d, vec4<u32>(1u, 0u, arg_2.d.x, 21386u)), vec4<u32>(4294967295u, 0u, 14274u, global1.a.d.x)), true)));
}

fn func_3(arg_0: vec2<bool>, arg_1: i32) -> vec2<bool> {
    return select(vec2<bool>(true, arg_0.x), select(global2.xy, !select(select(vec2<bool>(global2.x, global2.x), vec2<bool>(true, global2.x), vec2<bool>(true, global2.x)), global2.yy, arg_0.x && false), all(global2.xz)), select(any(global2.xz), (!arg_0.x != !global2.x) | (true || !arg_0.x), all(global2.zy)));
}

fn func_1() -> u32 {
    let var_0 = vec2<bool>(global2.x & !(!global2.x || any(vec4<bool>(false, global2.x, global2.x, global2.x))), !(_wgslsmith_sub_i32(global1.a.a.x, global1.a.a.x & global1.a.a.x) == _wgslsmith_dot_vec3_i32(-global1.a.a, vec3<i32>(global1.a.a.x, global1.a.a.x, global1.a.a.x))));
    global1 = func_2(_wgslsmith_dot_vec3_u32(~_wgslsmith_div_vec3_u32(vec3<u32>(global1.a.d.x, 10676u, u_input.b.x), global1.a.d.zyx), global1.a.d.zzx) == max(39873u, abs(~0u)), Struct_1(vec3<i32>(global1.a.a.x, reverseBits(2562i), -_wgslsmith_dot_vec4_i32(vec4<i32>(global1.a.a.x, global1.a.a.x, 1i, global1.a.a.x), vec4<i32>(global1.a.a.x, 2147483647i, global1.a.a.x, global1.a.a.x))), _wgslsmith_f_op_vec4_f32(select(global1.a.b, vec4<f32>(global1.a.b.x, -471f, _wgslsmith_f_op_f32(select(global1.a.c, global1.a.b.x, global2.x)), global1.a.c), !var_0.x)), global1.a.b.x, (vec4<u32>(0u, global1.a.d.x, 1u, 1u) << (global1.a.d % vec4<u32>(32u))) >> (((vec4<u32>(42569u, u_input.b.x, global1.a.d.x, u_input.c) & global1.a.d) ^ _wgslsmith_clamp_vec4_u32(vec4<u32>(global1.a.d.x, u_input.c, 27107u, u_input.c), vec4<u32>(57904u, 4294967295u, u_input.c, 37168u), vec4<u32>(1u, global1.a.d.x, u_input.a, global1.a.d.x))) % vec4<u32>(32u))), global1.a);
    global1 = func_2(all(func_3(vec2<bool>(true, true), -global1.a.a.x)), func_2(true, Struct_1(~vec3<i32>(global1.a.a.x, global1.a.a.x, 0i), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(global1.a.c, 1579f, global1.a.b.x, global1.a.b.x), global1.a.b)))), _wgslsmith_f_op_f32(global1.a.c + _wgslsmith_f_op_f32(1943f + 873f)), vec4<u32>(33651u, _wgslsmith_mod_u32(u_input.a, u_input.a), 24162u, 77509u)), global1.a).a, Struct_1(-select(~vec3<i32>(global1.a.a.x, 1i, -1i), global1.a.a, select(vec3<bool>(false, true, true), vec3<bool>(global2.x, global2.x, false), vec3<bool>(global2.x, true, var_0.x))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global1.a.b - global1.a.b)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-329f, global1.a.c, 363f, global1.a.c)))))), -469f, vec4<u32>(~14502u, _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(global1.a.d.ww, u_input.b), ~0u), min(u_input.b.x, ~global1.a.d.x), 5756u)));
    global2 = select(!select(!vec3<bool>(global2.x, false, global2.x), vec3<bool>(global2.x, false, global2.x), !(global1.a.a.x <= -1i)), !(!vec3<bool>(!global2.x, all(vec3<bool>(global2.x, true, global2.x)), !var_0.x)), vec3<bool>(any(vec4<bool>(true, var_0.x, true, global1.a.a.x != 1i)), select(true, true, all(select(vec3<bool>(false, false, var_0.x), vec3<bool>(var_0.x, var_0.x, global2.x), vec3<bool>(var_0.x, true, var_0.x)))), !(!(global1.a.a.x >= -2147483647i))));
    var var_1 = global1.a.b;
    return ~1u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0[_wgslsmith_index_u32(~func_1(), 15u)];
    var var_1 = global2.x;
    let var_2 = global1.a;
    var var_3 = func_2(true, Struct_1(reverseBits(countOneBits(var_2.a)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(740f, 508f, var_2.c, global1.a.c), vec4<f32>(-1000f, var_2.b.x, var_2.b.x, 305f)))) + _wgslsmith_f_op_vec4_f32(-global1.a.b)), 1f, var_2.d), global1.a);
    let var_4 = Struct_3(global2.x, _wgslsmith_div_vec4_u32(var_0.a.d, vec4<u32>((var_0.a.d.x | u_input.c) | 99090u, global1.a.d.x, 4899u, ~abs(global1.a.d.x))));
    var_3 = global0[_wgslsmith_index_u32(~(~select(_wgslsmith_mult_u32(31846u, var_0.a.d.x), global1.a.d.x, var_4.a && global2.x)) >> (var_3.a.d.x % 32u), 15u)];
    global2 = vec3<bool>(all(func_3(vec2<bool>(func_3(global2.yy, var_2.a.x).x, select(false, true, true)), _wgslsmith_dot_vec2_i32(~vec2<i32>(var_0.a.a.x, global1.a.a.x), vec2<i32>(global1.a.a.x, -1i)))), select(var_4.a, all(vec4<bool>(true, true, false, !global2.x)), global2.x), any(vec4<bool>(global2.x, var_4.b.x > 36562u, any(vec2<bool>(true, true)), true)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-global1.a.b.ww), _wgslsmith_f_op_f32(ceil(769f)), var_0.a.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.b.x) - _wgslsmith_f_op_f32(sign(var_2.c))))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(1786f, _wgslsmith_div_f32(var_3.a.b.x, var_3.a.b.x), global2.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.b.x - var_2.c) * global1.a.b.x))));
}


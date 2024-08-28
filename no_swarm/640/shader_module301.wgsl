struct Struct_1 {
    a: f32,
    b: u32,
    c: bool,
    d: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(1369f, 0u, false, vec4<bool>(true, true, true, true));

var<private> global1: vec3<bool>;

var<private> global2: Struct_1;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3() -> bool {
    global0 = Struct_1(global2.a, 92562u, !global1.x, !(!select(!global2.d, select(global0.d, vec4<bool>(global0.c, false, true, true), global2.d), true)));
    let var_0 = 954f;
    let var_1 = Struct_2(Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(global0.a, -869f, select(false, true, global0.c))))), ~(global0.b | _wgslsmith_mod_u32(0u, u_input.a)), false, global0.d), all(select(!vec4<bool>(global2.d.x, true, global1.x, global1.x), global2.d, !vec4<bool>(false, false, global2.d.x, global1.x))) || global1.x);
    var var_2 = vec4<u32>(u_input.b.x, global2.b | u_input.a, ~_wgslsmith_clamp_u32(1u, 34884u << (~global0.b % 32u), firstLeadingBit(~u_input.a)), u_input.b.x);
    global1 = !vec3<bool>(!global0.c, !global1.x, any(vec3<bool>(true, true, true)));
    return false;
}

fn func_2() -> vec3<bool> {
    let var_0 = vec4<bool>(true && global0.d.x, !(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.a)) <= -951f), func_3() || all(!global0.d.ww), !global1.x);
    global2 = Struct_1(630f, _wgslsmith_dot_vec2_u32(u_input.b.xy, vec2<u32>(~(17758u & global2.b), abs(u_input.a))), global0.d.x, select(select(select(vec4<bool>(global0.d.x, global2.d.x, true, false), !vec4<bool>(false, global2.c, var_0.x, global0.c), !global0.d), vec4<bool>(true, 306f >= global2.a, global2.c, -2321f <= global2.a), global0.d.x), global2.d, any(select(select(global2.d.yw, global2.d.wy, global1.zx), vec2<bool>(global0.c, true), all(var_0.xzz)))));
    let var_1 = abs(_wgslsmith_div_vec4_i32(-vec4<i32>(1i, 48757i, 5304i, -1i) ^ (abs(vec4<i32>(-19580i, 1i, 21497i, 22920i)) >> (abs(vec4<u32>(0u, 65626u, global0.b, 51634u)) % vec4<u32>(32u))), _wgslsmith_clamp_vec4_i32(~vec4<i32>(62692i, -31250i, -2147483647i, 0i), ~vec4<i32>(-1i, 24449i, -2147483647i, 9820i), ~abs(vec4<i32>(27474i, 11412i, 0i, 2278i)))));
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(global2.a))))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.a, global2.a) - global2.a), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(1170f)))))), global0.a)));
    let var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-var_2.zz), var_2.zz, vec2<bool>(global1.x, false))))) - var_2.zz);
    return select(var_0.wwy, vec3<bool>(~select(global2.b, 1u, true) < ~(~13945u), !all(!vec3<bool>(false, global0.d.x, false)), true), var_0.x);
}

fn func_1(arg_0: i32) -> vec3<u32> {
    global1 = select(select(!select(select(vec3<bool>(true, global0.c, true), vec3<bool>(global0.c, true, false), global0.d.zyx), !vec3<bool>(global2.c, false, false), global0.d.x), select(global0.d.xyz, global2.d.yzw, true), !global2.d.xzz), vec3<bool>(any(vec2<bool>(global2.c, !global1.x)), false && all(select(vec4<bool>(false, global1.x, true, false), vec4<bool>(global1.x, false, false, false), global0.c)), all(vec2<bool>(false, global1.x)) & global1.x), func_2());
    let var_0 = abs(select(vec4<i32>(15501i, arg_0, 1i, arg_0), vec4<i32>(arg_0, arg_0, _wgslsmith_mult_i32(-1i, ~(-2147483647i)), arg_0), vec4<bool>(false || any(global2.d.yzy), any(!vec2<bool>(global1.x, false)), true, true)));
    let var_1 = Struct_2(Struct_1(global2.a, 35348u, true, select(global0.d, vec4<bool>(global2.c, false, true == global1.x, false), true)), true);
    let var_2 = var_1.a;
    global2 = var_2;
    return ~vec3<u32>(_wgslsmith_mod_u32(global2.b, ~firstLeadingBit(0u)), 1u, ~(~_wgslsmith_div_u32(25998u, 4294967295u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<bool>(any(vec2<bool>(!(!global2.c), global2.d.x & true)), global2.c, global0.c | global2.c);
    var var_1 = vec4<i32>(min(~(-2147483647i), 1i), _wgslsmith_dot_vec3_i32(firstLeadingBit(-vec3<i32>(-1i, -2147483647i, 21588i) << (func_1(-32196i) % vec3<u32>(32u))), ~vec3<i32>(1i, 1i, 1i)), (_wgslsmith_clamp_i32(_wgslsmith_mult_i32(-32248i, -38753i), abs(50675i), 1i) ^ _wgslsmith_clamp_i32(~32591i, _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, -5360i), vec2<i32>(-1i, 78032i)), -1i)) | abs(~_wgslsmith_div_i32(-6632i, 25773i)), -countOneBits(0i));
    let var_2 = vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2.a), 851f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global2.a)) + global0.a));
    var var_3 = Struct_1(global0.a, 4294967295u, (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(806f, -1687f))) > _wgslsmith_f_op_f32(abs(var_2.x))) != false, vec4<bool>(global2.c, select(all(!vec4<bool>(true, var_0.x, false, global0.d.x)), global2.d.x, global1.x == true), (func_3() || true) || true, true));
    var_0 = select(!func_2(), var_3.d.wyz, var_0.x);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(-10755i, var_1.x), _wgslsmith_dot_vec3_i32(var_1.wyy >> (vec3<u32>(global2.b, ~u_input.b.x, abs(12342u)) % vec3<u32>(32u)), _wgslsmith_div_vec3_i32(var_1.wxw, -_wgslsmith_sub_vec3_i32(vec3<i32>(var_1.x, -2147483647i, 6857i), vec3<i32>(var_1.x, var_1.x, var_1.x)))));
}


struct Struct_1 {
    a: bool,
    b: i32,
    c: vec4<f32>,
    d: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: u32,
    d: vec4<u32>,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: vec3<u32> = vec3<u32>(39157u, 79534u, 1u);

var<private> global2: array<Struct_1, 10>;

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32) -> u32 {
    var var_0 = Struct_1(any(select(vec4<bool>(true, global0.d <= u_input.e, !global0.a, any(vec3<bool>(false, global0.a, true))), vec4<bool>(true, global0.a, true, false), !(!vec4<bool>(false, true, global0.a, true)))), 26232i, vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-818f, 1939f) - global0.c.x), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(global0.c.x, global0.c.x)))), global0.c.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global0.c.x + _wgslsmith_f_op_f32(abs(global0.c.x))), _wgslsmith_f_op_f32(step(1626f, 568f)), any(select(vec2<bool>(true, global0.a), vec2<bool>(global0.a, true), vec2<bool>(false, global0.a))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.c.x + global0.c.x)), _wgslsmith_f_op_f32(select(global0.c.x, _wgslsmith_f_op_f32(-global0.c.x), global0.a)))), ~global0.d & (global1.x | select(global0.d >> (29236u % 32u), max(global0.d, 1u), global0.a)));
    global1 = u_input.b;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -872f))) - var_0.c.x) + 389f));
    let var_2 = u_input.d;
    let var_3 = global2[_wgslsmith_index_u32(global0.d, 10u)];
    return ~(6640u << (var_2.x % 32u));
}

fn func_2() -> vec4<u32> {
    global1 = reverseBits(reverseBits(~(~u_input.d.yzw)));
    var var_0 = func_3(~global0.b << ((global0.d << (_wgslsmith_dot_vec4_u32(~vec4<u32>(2539u, global0.d, 37158u, 1u), ~vec4<u32>(4294967295u, 50747u, 1u, 21859u)) % 32u)) % 32u));
    var var_1 = global2[_wgslsmith_index_u32(u_input.a, 10u)];
    let var_2 = global2[_wgslsmith_index_u32(1u, 10u)];
    global0 = global2[_wgslsmith_index_u32(~58542u, 10u)];
    return abs(select(~select(vec4<u32>(u_input.b.x, 0u, var_1.d, 90207u) ^ vec4<u32>(u_input.e, 0u, var_2.d, 0u), ~u_input.d, !vec4<bool>(true, global0.a, true, false)), u_input.d, select(!select(vec4<bool>(var_1.a, var_2.a, false, global0.a), vec4<bool>(global0.a, global0.a, var_2.a, var_1.a), true), select(vec4<bool>(true, false, global0.a, true), select(vec4<bool>(false, global0.a, global0.a, var_1.a), vec4<bool>(false, global0.a, true, false), vec4<bool>(global0.a, true, true, false)), vec4<bool>(false, var_1.a, false, global0.a)), !(!vec4<bool>(false, global0.a, false, false)))));
}

fn func_1(arg_0: i32, arg_1: vec2<bool>, arg_2: bool) -> u32 {
    global0 = Struct_1(true, -15914i, global0.c, u_input.a);
    var var_0 = ~_wgslsmith_div_vec2_i32(~vec2<i32>(global0.b, 1i) | abs(~vec2<i32>(36811i, 0i)), _wgslsmith_clamp_vec2_i32(vec2<i32>(-1i) * -vec2<i32>(2147483647i, -21752i), vec2<i32>(_wgslsmith_clamp_i32(2147483647i, arg_0, global0.b), global0.b ^ -23214i), -firstLeadingBit(vec2<i32>(global0.b, -7379i))));
    global2 = array<Struct_1, 10>();
    var var_1 = global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(global0.d, u_input.a), 10u)];
    let var_2 = var_1.a;
    return _wgslsmith_dot_vec4_u32(firstTrailingBit(func_2()), vec4<u32>(39172u, firstTrailingBit(4294967295u), var_1.d, _wgslsmith_add_u32(var_1.d, var_1.d)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global2[_wgslsmith_index_u32(~_wgslsmith_mod_u32(~reverseBits(~u_input.a), func_1(firstLeadingBit(global0.b << (1u % 32u)), select(!vec2<bool>(global0.a, true), select(vec2<bool>(false, false), vec2<bool>(false, global0.a), vec2<bool>(false, true)), vec2<bool>(global0.a, global0.a)), u_input.e >= abs(1u))), 10u)];
    var var_1 = ~func_1(_wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(global0.b, -5425i, -1i), vec3<i32>(global0.b, var_0.b, var_0.b)), -vec3<i32>(global0.b, global0.b, var_0.b)), vec2<bool>(true, 624f > global0.c.x), true) >> (func_1(-34283i, vec2<bool>(var_0.a, select(true, true, var_0.a)), !any(select(vec4<bool>(global0.a, false, global0.a, global0.a), vec4<bool>(true, true, var_0.a, var_0.a), vec4<bool>(true, global0.a, global0.a, global0.a)))) % 32u);
    global0 = global2[_wgslsmith_index_u32(max(abs(~func_2().x), ~global0.d), 10u)];
    var var_2 = reverseBits(_wgslsmith_mod_u32(13917u, ~3204u & global0.d));
    var var_3 = Struct_1(all(!vec2<bool>(!global0.a, !var_0.a)), _wgslsmith_clamp_i32(-1i, countOneBits(select(firstTrailingBit(global0.b), 0i, true)), select(0i, _wgslsmith_div_i32(-2147483647i, _wgslsmith_div_i32(-2147483647i, -9388i)), var_0.a)), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -153f), 574f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.c.x, global0.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c.x))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.c.x, -1939f, 242f, 556f) * global0.c) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.c.x, var_0.c.x, global0.c.x, 939f))) - _wgslsmith_f_op_vec4_f32(global0.c + _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, global0.c.x, var_0.c.x, var_0.c.x))))), ~(~_wgslsmith_dot_vec4_u32(max(u_input.d, vec4<u32>(4294967295u, 41951u, global0.d, 48219u)), vec4<u32>(2215u, var_0.d, 1u, 0u))));
    let x = u_input.a;
    s_output = StorageBuffer(~firstLeadingBit(_wgslsmith_sub_u32(global1.x, var_0.d)), vec3<i32>(-abs(-56923i), -2147483647i, _wgslsmith_div_i32(-var_0.b, _wgslsmith_dot_vec3_i32(vec3<i32>(29036i, var_3.b, var_3.b) ^ vec3<i32>(-1i, 29474i, -1i), vec3<i32>(var_3.b, global0.b, -2147483647i) | vec3<i32>(var_3.b, 0i, global0.b)))), _wgslsmith_f_op_f32(var_3.c.x * -751f), var_3.d);
}


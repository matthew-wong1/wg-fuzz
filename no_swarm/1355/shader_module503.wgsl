struct Struct_1 {
    a: vec3<bool>,
    b: f32,
    c: f32,
    d: vec2<f32>,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec2<f32>,
    c: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -27641i;

var<private> global1: Struct_1 = Struct_1(vec3<bool>(true, false, false), 317f, 921f, vec2<f32>(1548f, -1819f), -25004i);

var<private> global2: Struct_2 = Struct_2(Struct_1(vec3<bool>(false, true, false), 723f, -955f, vec2<f32>(-186f, -671f), 2147483647i), Struct_1(vec3<bool>(false, true, false), 1157f, -472f, vec2<f32>(-682f, 827f), i32(-2147483648)));

var<private> global3: array<Struct_1, 22>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: vec2<bool>) -> f32 {
    var var_0 = global2.b;
    global3 = array<Struct_1, 22>();
    let var_1 = Struct_1(!global1.a, -1403f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b + _wgslsmith_div_f32(-633f, global1.c))) * -288f), vec2<f32>(1674f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_0.c)) + _wgslsmith_f_op_f32(-global1.b)))), 2147483647i);
    var var_2 = firstTrailingBit(~_wgslsmith_clamp_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(14057u, 4294967295u, 7327u), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(0u, u_input.a, u_input.a)), max(vec3<u32>(u_input.a, 0u, u_input.a), vec3<u32>(0u, 0u, u_input.a))), countOneBits(select(vec3<u32>(u_input.a, 4294967295u, u_input.a), vec3<u32>(0u, 4294967295u, 4806u), var_1.a.x)), ~vec3<u32>(u_input.a, 8880u, u_input.a) ^ ~vec3<u32>(u_input.a, u_input.a, 1u)));
    let var_3 = Struct_3(vec4<i32>(-1i) * -(select(vec4<i32>(0i, 2147483647i, global1.e, global1.e), vec4<i32>(var_1.e, var_0.e, var_0.e, var_0.e), true) << (~vec4<u32>(68359u, 43551u, 2002u, 26579u) % vec4<u32>(32u))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global1.d * vec2<f32>(global2.a.b, global2.a.d.x)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(1217f, -700f))) + _wgslsmith_f_op_vec2_f32(global1.d * _wgslsmith_f_op_vec2_f32(floor(var_1.d))))), abs(1i));
    return 844f;
}

fn func_2(arg_0: f32) -> i32 {
    global1 = Struct_1(vec3<bool>(abs(_wgslsmith_dot_vec3_i32(vec3<i32>(-10594i, global2.b.e, 50665i), vec3<i32>(1i, -1i, global2.a.e))) > -1i, !all(vec3<bool>(global2.b.a.x, global2.a.a.x, false)), global2.a.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(!select(vec2<bool>(global1.a.x, true), vec2<bool>(global2.a.a.x, true), global2.a.a.x)))), _wgslsmith_div_f32(562f, _wgslsmith_f_op_f32(func_3(select(vec2<bool>(false, global2.a.a.x), !global2.b.a.xy, global2.a.a.x)))), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.c)), -1146f), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-1362f, arg_0)), _wgslsmith_f_op_f32(f32(-1f) * -879f)), _wgslsmith_f_op_f32(-global1.d.x))), _wgslsmith_dot_vec3_i32(select(-vec3<i32>(-1i, 46725i, 0i), vec3<i32>(8043i, 0i, global2.b.e), any(vec4<bool>(global1.a.x, global1.a.x, global1.a.x, global2.b.a.x))), reverseBits(_wgslsmith_sub_vec3_i32(vec3<i32>(global2.a.e, global1.e, global2.b.e), vec3<i32>(0i, 2154i, global2.b.e)))) ^ ~(global2.b.e >> (u_input.a % 32u)));
    let var_0 = !select(!(!select(global2.b.a, global1.a, global2.b.a.x)), global2.a.a, any(select(global1.a.zz, global2.b.a.zy, global2.b.a.zy)));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.d.x, global2.a.c)) + global1.c);
    let var_2 = Struct_1(vec3<bool>(!global1.a.x, global2.b.a.x, true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.b.b)), global1.c, _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1095f, arg_0), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global1.d) + _wgslsmith_f_op_vec2_f32(abs(global2.b.d))), all(!select(vec4<bool>(global1.a.x, global2.a.a.x, global2.a.a.x, global2.a.a.x), vec4<bool>(var_0.x, global1.a.x, true, false), vec4<bool>(global2.b.a.x, global2.a.a.x, true, true))))), ~global1.e);
    let var_3 = 17807u;
    return _wgslsmith_clamp_i32(_wgslsmith_mult_i32(~(~min(26746i, -28668i)), -54186i), global1.e, abs(firstLeadingBit(~1i)));
}

fn func_4(arg_0: f32, arg_1: bool) -> Struct_1 {
    var var_0 = arg_0;
    let var_1 = Struct_3(vec4<i32>(-(0i >> (_wgslsmith_sub_u32(u_input.a, u_input.a) % 32u)), -480i, ~global2.b.e, -(~_wgslsmith_dot_vec3_i32(vec3<i32>(global1.e, global1.e, global2.b.e), vec3<i32>(0i, 2147483647i, global2.a.e)))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1233f + _wgslsmith_f_op_f32(-global2.a.b))), _wgslsmith_f_op_f32(global1.d.x - _wgslsmith_f_op_f32(-157f - _wgslsmith_f_op_f32(global2.b.d.x - -188f)))), ~(-global1.e));
    var var_2 = select(any(select(vec2<bool>(global2.a.a.x, any(vec2<bool>(global2.a.a.x, false))), !(!global1.a.xy), !(var_1.b.x >= -958f))), global2.a.a.x && (countOneBits(u_input.a) == 0u), select(any(select(select(vec4<bool>(global1.a.x, arg_1, false, arg_1), vec4<bool>(false, arg_1, global1.a.x, arg_1), vec4<bool>(true, arg_1, true, global2.a.a.x)), select(vec4<bool>(global2.b.a.x, global1.a.x, global2.a.a.x, false), vec4<bool>(global2.b.a.x, global1.a.x, global2.b.a.x, arg_1), arg_1), !vec4<bool>(false, global1.a.x, global1.a.x, global1.a.x))), true || any(global2.b.a.yy), arg_1));
    var var_3 = ~select(~select(vec3<u32>(u_input.a, u_input.a, u_input.a) >> (vec3<u32>(u_input.a, u_input.a, u_input.a) % vec3<u32>(32u)), _wgslsmith_div_vec3_u32(vec3<u32>(5503u, 49974u, 4294967295u), vec3<u32>(34780u, 4294967295u, 4294967295u)), vec3<bool>(arg_1, false, global1.a.x)), ~vec3<u32>(abs(51814u), ~0u, ~u_input.a), !select(global2.b.a, !vec3<bool>(global2.b.a.x, true, global2.a.a.x), any(global2.b.a)));
    let var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)), 1070f)) + var_1.b.x);
    return global2.a;
}

fn func_1(arg_0: bool) -> i32 {
    let var_0 = vec4<u32>(u_input.a, 4294967295u, u_input.a, 29056u);
    global3 = array<Struct_1, 22>();
    global3 = array<Struct_1, 22>();
    let var_1 = func_4(_wgslsmith_f_op_f32(f32(-1f) * -813f), reverseBits(func_2(global2.b.b) | -global2.a.e) > ~_wgslsmith_sub_i32(global2.b.e << (67180u % 32u), 45586i));
    let var_2 = global2.b.a.x;
    return 0i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = any(vec4<bool>(global1.a.x, (9542u << (u_input.a % 32u)) == u_input.a, any(!(!vec4<bool>(global1.a.x, true, global1.a.x, true))), global2.b.a.x));
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global2.b.d - vec2<f32>(-1501f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-395f * global1.b) * _wgslsmith_f_op_f32(select(-896f, -705f, var_0))))));
    global1 = Struct_1(global1.a, var_1.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1062f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.x, global2.b.c) - vec2<f32>(global2.a.b, var_1.x))) * _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(trunc(global2.a.d))))) * _wgslsmith_f_op_vec2_f32(global2.b.d * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-655f, 538f), vec2<f32>(514f, 110f)))))), _wgslsmith_sub_i32(~(~(-10964i)), func_1(true)) & -2147483647i);
    let var_2 = Struct_2(func_4(_wgslsmith_f_op_f32(func_3(global1.a.xy)), u_input.a > _wgslsmith_add_u32(u_input.a, 24822u)), global3[_wgslsmith_index_u32(~u_input.a, 22u)]);
    global1 = Struct_1(!(!global2.b.a), 1f, var_2.b.d.x, vec2<f32>(_wgslsmith_f_op_f32(-617f - _wgslsmith_f_op_f32(f32(-1f) * -1732f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-233f)) - _wgslsmith_div_f32(1105f, -644f)))), _wgslsmith_mult_i32(global2.b.e, _wgslsmith_sub_i32(~(~global1.e), func_4(_wgslsmith_f_op_f32(-var_1.x), global2.b.c < global1.b).e)));
    let x = u_input.a;
    s_output = StorageBuffer(1000f, _wgslsmith_f_op_f32(trunc(global1.b)), global1.d);
}


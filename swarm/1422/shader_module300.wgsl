struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<u32>,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(-1000f);

var<private> global1: array<vec3<u32>, 32>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: u32, arg_1: i32) -> u32 {
    let var_0 = false;
    global1 = array<vec3<u32>, 32>();
    var var_1 = Struct_1(global0.a);
    global1 = array<vec3<u32>, 32>();
    let var_2 = Struct_3(Struct_2(Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -416f))), vec2<u32>(0u, arg_0), vec3<bool>(!any(vec3<bool>(var_0, false, var_0)), false | all(!vec2<bool>(true, var_0)), any(vec3<bool>(false, true, var_0))));
    return select(~1u, min(_wgslsmith_mult_u32(_wgslsmith_sub_u32(~0u, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_0, var_2.b.x, arg_0), vec3<u32>(var_2.b.x, 5729u, arg_0))), arg_0), abs(_wgslsmith_dot_vec2_u32(~var_2.b, var_2.b))), var_0);
}

fn func_2() -> u32 {
    global1 = array<vec3<u32>, 32>();
    global1 = array<vec3<u32>, 32>();
    let var_0 = u_input.a.x;
    var var_1 = _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(u_input.a.xwx | vec3<i32>(1i, -11737i, u_input.a.x), (vec3<i32>(-2147483647i, 24962i, u_input.b) >> (global1[_wgslsmith_index_u32(14818u, 32u)] % vec3<u32>(32u))) >> (countOneBits(global1[_wgslsmith_index_u32(1346u, 32u)]) % vec3<u32>(32u))), abs(~(~vec3<i32>(var_0, var_0, u_input.a.x)))), 1i);
    global1 = array<vec3<u32>, 32>();
    return ~firstLeadingBit(_wgslsmith_sub_u32(31604u, func_3(1u, select(1i, u_input.b, true))));
}

fn func_1(arg_0: bool, arg_1: Struct_3, arg_2: Struct_2) -> u32 {
    global1 = array<vec3<u32>, 32>();
    global1 = array<vec3<u32>, 32>();
    global1 = array<vec3<u32>, 32>();
    let var_0 = ~global1[_wgslsmith_index_u32(func_2(), 32u)];
    var var_1 = select(vec2<bool>(arg_1.c.x, !(_wgslsmith_f_op_f32(trunc(arg_1.a.a.a)) <= 705f)), select(vec2<bool>(arg_0, false), select(!vec2<bool>(arg_1.c.x, false), select(vec2<bool>(arg_0, arg_1.c.x), select(vec2<bool>(false, false), arg_1.c.xx, vec2<bool>(arg_1.c.x, false)), arg_1.c.x | arg_0), !all(vec4<bool>(true, arg_0, arg_1.c.x, false))), arg_1.c.x), !vec2<bool>(arg_0, !all(vec2<bool>(arg_1.c.x, arg_0))));
    return 62781u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~min(62555u, _wgslsmith_div_u32(firstTrailingBit(~30902u), _wgslsmith_sub_u32(~1u, func_1(true, Struct_3(Struct_2(Struct_1(756f)), vec2<u32>(6627u, 1u), vec3<bool>(false, true, true)), Struct_2(Struct_1(765f))))));
    var_0 = firstTrailingBit(1u) ^ _wgslsmith_dot_vec3_u32(vec3<u32>(min(select(19664u, 9982u, false), func_1(false, Struct_3(Struct_2(Struct_1(global0.a)), vec2<u32>(69013u, 4294967295u), vec3<bool>(true, true, false)), Struct_2(Struct_1(-1240f)))), min(min(31346u, 0u), 0u), ~1u), vec3<u32>(~_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 1u), vec2<u32>(1u, 64632u)), ~(~5092u), ~1u));
    let var_1 = Struct_3(Struct_2(Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global0.a))))), vec2<u32>(_wgslsmith_dot_vec3_u32(abs(vec3<u32>(75482u, 0u, 115324u)), vec3<u32>(0u, 4294967295u, 0u) << (global1[_wgslsmith_index_u32(~36844u, 32u)] % vec3<u32>(32u))), ~func_1(true, Struct_3(Struct_2(Struct_1(-1701f)), vec2<u32>(18583u, 1u), vec3<bool>(false, false, true)), Struct_2(Struct_1(-1158f)))), select(vec3<bool>(true, true, true), select(!select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), !select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(false, false, true))), select(select(vec3<bool>(true, false, true), select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(false, true, true)), true), select(select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), true), vec3<bool>(true, true, true), true), true == all(vec3<bool>(true, true, true)))));
    let var_2 = 36196i;
    var var_3 = ~u_input.a.x << (~1u % 32u);
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1000f, -1151f)));
    global0 = Struct_1(var_1.a.a.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1856f))))), _wgslsmith_div_vec3_u32(countOneBits(global1[_wgslsmith_index_u32(~var_1.b.x, 32u)]), vec3<u32>(~var_1.b.x, _wgslsmith_clamp_u32(var_1.b.x, ~1u, _wgslsmith_clamp_u32(var_1.b.x, var_1.b.x, var_1.b.x)), var_1.b.x >> (firstLeadingBit(var_1.b.x) % 32u))));
}


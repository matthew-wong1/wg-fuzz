struct Struct_1 {
    a: vec3<u32>,
    b: f32,
    c: vec3<u32>,
    d: vec2<f32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: bool,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: f32,
    c: f32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

var<private> global1: vec3<bool>;

var<private> global2: Struct_2;

var<private> global3: Struct_3 = Struct_3(vec2<f32>(-1748f, 1000f), 1040f, 1094f);

var<private> global4: Struct_3 = Struct_3(vec2<f32>(-191f, -1284f), 984f, -1070f);

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: u32) -> vec2<f32> {
    global0 = ~countOneBits(~_wgslsmith_clamp_vec4_u32(~vec4<u32>(60504u, 1u, global2.c.c.x, arg_0), vec4<u32>(5558u, arg_0, 4294967295u, 82743u), countOneBits(vec4<u32>(2269u, global0.x, 69723u, 0u))));
    global2 = Struct_2(_wgslsmith_div_vec3_i32(vec3<i32>(global2.a.x, global2.a.x, u_input.a), _wgslsmith_clamp_vec3_i32(global2.a, reverseBits(countOneBits(global2.a)), -global2.a >> (~vec3<u32>(global0.x, global2.c.c.x, 4294967295u) % vec3<u32>(32u)))), global2.b, Struct_1(~vec3<u32>(1u, ~global2.c.a.x, _wgslsmith_dot_vec3_u32(vec3<u32>(global2.c.c.x, 0u, 36643u), vec3<u32>(global2.c.c.x, arg_0, 0u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1512f) * global2.d.b), ~max(vec3<u32>(44693u, arg_0, 9256u), _wgslsmith_add_vec3_u32(global0.zzz, vec3<u32>(18047u, global0.x, 1u))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1000f, 1000f), _wgslsmith_f_op_vec2_f32(select(global4.a, vec2<f32>(global3.b, global2.c.d.x), global1.yy)), global2.b))))), global2.c);
    let var_0 = global2.a.zz;
    global4 = Struct_3(_wgslsmith_f_op_vec2_f32(-global3.a), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(global2.d.b)))))), global4.c);
    global0 = ~select(~vec4<u32>(13569u, _wgslsmith_add_u32(7820u, global0.x), ~14417u, 9247u | arg_0), vec4<u32>(firstLeadingBit(global0.x), _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(global2.c.c, global2.d.c), select(global0.ywz, vec3<u32>(arg_0, 5234u, global0.x), vec3<bool>(false, global1.x, true))), ~_wgslsmith_mult_u32(global2.d.c.x, global2.d.c.x), _wgslsmith_add_u32(_wgslsmith_sub_u32(global0.x, arg_0), ~global2.c.c.x)), vec4<bool>(false, false, _wgslsmith_f_op_f32(global4.c * 1785f) < _wgslsmith_f_op_f32(sign(global3.a.x)), !(global1.x & global2.b)));
    return _wgslsmith_f_op_vec2_f32(-global2.c.d);
}

fn func_4(arg_0: Struct_3, arg_1: bool) -> vec4<bool> {
    var var_0 = Struct_2((global2.a | global2.a) | vec3<i32>(u_input.a, ~_wgslsmith_sub_i32(u_input.a, 692i), u_input.a), false, Struct_1(vec3<u32>(global2.d.c.x >> (1u % 32u), 30658u, global0.x) & _wgslsmith_add_vec3_u32(_wgslsmith_sub_vec3_u32(global0.yxx, vec3<u32>(global2.d.c.x, 50137u, 30853u)), global2.d.c & vec3<u32>(1u, global0.x, 0u)), 563f, global0.xyy, _wgslsmith_f_op_vec2_f32(round(global3.a))), Struct_1(vec3<u32>(1u, global0.x, ~global0.x) >> (global2.d.c % vec3<u32>(32u)), _wgslsmith_f_op_f32(select(global3.a.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_vec2_f32(func_3(4294967295u)).x, _wgslsmith_f_op_f32(437f - 506f))), any(select(vec3<bool>(global1.x, true, false), vec3<bool>(arg_1, global2.b, global1.x), arg_1)))), global2.d.a, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-arg_0.c), _wgslsmith_f_op_f32(max(-609f, -1000f))))));
    global2 = Struct_2(~countOneBits(-var_0.a) | abs(firstTrailingBit(var_0.a)), any(vec3<bool>(global1.x, global1.x, 1f != global2.d.d.x)), Struct_1(global2.c.a, -1423f, firstTrailingBit(select(~vec3<u32>(0u, var_0.c.c.x, global0.x), ~vec3<u32>(var_0.c.c.x, global0.x, var_0.c.a.x), select(vec3<bool>(var_0.b, true, arg_1), vec3<bool>(true, true, false), true))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(251f, -1530f), vec2<f32>(-144f, global3.c)))), global2.c.d, vec2<bool>(!global1.x, !global2.b)))), var_0.c);
    let var_1 = min(~(-vec3<i32>(var_0.a.x, _wgslsmith_mod_i32(928i, -2147483647i), var_0.a.x)), _wgslsmith_div_vec3_i32(abs(vec3<i32>(_wgslsmith_clamp_i32(var_0.a.x, -20294i, global2.a.x), 0i, var_0.a.x)), ~(~(vec3<i32>(3756i, u_input.a, var_0.a.x) & vec3<i32>(global2.a.x, global2.a.x, 7836i)))));
    let var_2 = _wgslsmith_div_u32(1u | select(var_0.c.c.x, var_0.c.a.x, false), firstLeadingBit(~(~25615u)));
    var var_3 = vec2<f32>(global2.d.b, -458f);
    return select(!select(vec4<bool>(var_0.b, !var_0.b, false, true), select(select(vec4<bool>(true, false, var_0.b, arg_1), vec4<bool>(true, false, true, true), false), !vec4<bool>(false, var_0.b, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(global1.x, false, true, true), true)), any(vec2<bool>(arg_1, var_0.b))), select(vec4<bool>(true, global1.x, all(select(vec3<bool>(true, arg_1, true), vec3<bool>(true, false, false), vec3<bool>(false, var_0.b, var_0.b))), arg_1), select(!vec4<bool>(true, var_0.b, false, global2.b), vec4<bool>(var_0.d.a.x > global0.x, select(false, false, true), true, global2.b && false), !vec4<bool>(arg_1, global2.b, false, arg_1)), !(firstTrailingBit(0u) >= ~var_2)), all(select(!select(vec3<bool>(arg_1, var_0.b, global1.x), vec3<bool>(global2.b, var_0.b, true), vec3<bool>(global1.x, arg_1, global1.x)), select(!vec3<bool>(global2.b, true, arg_1), select(vec3<bool>(var_0.b, arg_1, global2.b), vec3<bool>(true, true, false), global1.x), 0i == global2.a.x), global1.x)));
}

fn func_2(arg_0: i32) -> vec2<f32> {
    let var_0 = -1000f;
    var var_1 = firstLeadingBit(global2.a.zx & global2.a.zy);
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.c)))) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(1478f)))));
    var var_3 = global2.d;
    let var_4 = func_4(Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_3.d.x, 2525f) + _wgslsmith_f_op_vec2_f32(func_3(var_3.c.x))) * vec2<f32>(_wgslsmith_f_op_f32(-global4.b), -1277f)), -1540f, _wgslsmith_f_op_vec2_f32(func_3(78614u)).x), ((~54854i & _wgslsmith_mult_i32(-2147483647i, arg_0)) & countOneBits(countOneBits(global2.a.x))) <= max(-11145i, -_wgslsmith_mult_i32(global2.a.x, u_input.a)));
    return vec2<f32>(global2.d.b, global2.d.b);
}

fn func_1(arg_0: vec2<f32>, arg_1: i32) -> bool {
    global4 = Struct_3(global3.a, -549f, arg_0.x);
    global3 = Struct_3(_wgslsmith_f_op_vec2_f32(func_2(-1i)), _wgslsmith_f_op_f32(-arg_0.x), global3.a.x);
    let var_0 = _wgslsmith_f_op_vec2_f32(func_2(~(-10515i)));
    let var_1 = global2.d;
    let var_2 = global2.a.x;
    return !select(global2.b, !global2.b, u_input.a != 28888i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = any(!select(vec3<bool>(func_1(vec2<f32>(-1702f, global3.c), u_input.a), any(vec4<bool>(global1.x, global1.x, false, false)), !global2.b), vec3<bool>(true, true, true), vec3<bool>(all(vec2<bool>(false, true)), any(global1.xz), global2.b)));
    var var_1 = Struct_2(global2.a, true, Struct_1(vec3<u32>(4294967295u, min(global0.x, global0.x ^ 0u), countOneBits(74010u)), 678f, vec3<u32>(~abs(global0.x), countOneBits(~global0.x), ~(global0.x | 4294967295u)), vec2<f32>(2120f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_2(u_input.a)).x))), global2.d);
    var var_2 = global2.a.x;
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(677f, global4.b, global3.a.x) * _wgslsmith_f_op_vec3_f32(round(vec3<f32>(230f, 1304f, global4.b))))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(max(global4.c, global4.a.x)), _wgslsmith_f_op_vec2_f32(func_2(u_input.a)).x, global4.c) - _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(474f, global2.c.b, -907f)))))));
    var_1 = Struct_2(-_wgslsmith_add_vec3_i32(firstLeadingBit(max(global2.a, vec3<i32>(2147483647i, 2147483647i, u_input.a))), -(~global2.a)), false, global2.d, global2.d);
    let x = u_input.a;
    s_output = StorageBuffer(min(_wgslsmith_mult_u32(var_1.d.a.x, 0u) >> (_wgslsmith_dot_vec4_u32(~vec4<u32>(var_1.c.a.x, global2.c.a.x, 76707u, global2.d.c.x), vec4<u32>(global2.c.a.x, var_1.c.c.x, global2.c.a.x, 1u)) % 32u), global2.d.c.x), vec4<f32>(_wgslsmith_f_op_f32(-var_1.d.d.x), var_1.d.d.x, global3.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.d.b) - 701f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(-102f, -252f), _wgslsmith_f_op_f32(-global2.d.d.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1667f))), _wgslsmith_f_op_f32(f32(-1f) * -192f))));
}


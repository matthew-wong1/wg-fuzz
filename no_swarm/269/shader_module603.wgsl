struct Struct_1 {
    a: bool,
    b: vec2<u32>,
    c: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
    b: i32,
    c: Struct_1,
    d: vec2<u32>,
    e: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec4<u32>,
    d: i32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<u32>,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(vec2<bool>(true, true), 2147483647i, Struct_1(false, vec2<u32>(63107u, 28985u), vec3<f32>(344f, 659f, -187f)), vec2<u32>(1u, 0u), Struct_2(Struct_1(false, vec2<u32>(4294967295u, 0u), vec3<f32>(1204f, -1111f, 250f))));

var<private> global1: bool;

var<private> global2: array<bool, 18>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: u32, arg_1: Struct_2) -> Struct_1 {
    let var_0 = vec4<bool>(all(select(!(!vec4<bool>(true, arg_1.a.a, global0.c.a, true)), vec4<bool>(global2[_wgslsmith_index_u32(0u, 18u)], global0.a.x | global0.c.a, false, any(vec2<bool>(true, true))), false)), 1u >= ~u_input.a.x, !arg_1.a.a, true);
    global2 = array<bool, 18>();
    var var_1 = _wgslsmith_f_op_f32(step(267f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -110f) + global0.c.c.x)));
    var_1 = arg_1.a.c.x;
    var var_2 = Struct_2(arg_1.a);
    return global0.c;
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_2) -> bool {
    let var_0 = countOneBits(firstLeadingBit(~(42189u >> ((arg_1.a.b.x | arg_1.a.b.x) % 32u))));
    global2 = array<bool, 18>();
    global1 = true;
    let var_1 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.a.c.x, 1309f, global0.e.a.c.x, arg_1.a.c.x) * vec4<f32>(-1513f, -575f, -144f, -1559f)))))) * vec4<f32>(_wgslsmith_div_f32(global0.e.a.c.x, global0.c.c.x), func_2(abs(4294967295u), arg_1).c.x, global0.c.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.c.c.x)))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(799f, 995f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -317f))), -436f)), global0.e.a.c.x, global0.c.c.x), select(select(vec4<bool>(global0.c.a | true, true, u_input.d <= 2147483647i, true), !select(vec4<bool>(false, true, arg_1.a.a, global0.a.x), vec4<bool>(arg_1.a.a, false, true, false), vec4<bool>(false, true, arg_1.a.a, false)), vec4<bool>(true, false, any(vec2<bool>(global2[_wgslsmith_index_u32(var_0, 18u)], false)), any(vec4<bool>(arg_0.x, false, false, arg_1.a.a)))), !select(!vec4<bool>(global0.e.a.a, global0.c.a, false, arg_0.x), !vec4<bool>(false, global2[_wgslsmith_index_u32(var_0, 18u)], arg_0.x, true), vec4<bool>(true, arg_0.x, false, arg_0.x)), vec4<bool>(arg_0.x, arg_1.a.a || global2[_wgslsmith_index_u32(10717u, 18u)], true, func_2(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 4294967295u, arg_1.a.b.x), vec3<u32>(arg_1.a.b.x, 31735u, 34521u)), Struct_2(Struct_1(arg_1.a.a, global0.d, global0.e.a.c))).a))));
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global0.e.a.c.x))), _wgslsmith_f_op_f32(var_1.x * arg_1.a.c.x), _wgslsmith_f_op_f32(var_1.x - _wgslsmith_f_op_f32(-632f + var_1.x)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(-813f)), -780f))), var_1, false)));
    return func_2(_wgslsmith_mult_u32(min(~arg_1.a.b.x, u_input.c.x), firstTrailingBit(var_0)), arg_1).a;
}

fn func_1(arg_0: i32, arg_1: i32) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(global0.e.a.c.x * global0.e.a.c.x);
    let var_1 = vec3<bool>(_wgslsmith_sub_i32(-_wgslsmith_mod_i32(global0.b, arg_0), 23519i) > arg_1, func_3(global0.a, Struct_2(func_2(~0u, Struct_2(global0.e.a)))), global0.c.a && true);
    var var_2 = func_2(_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_add_u32(global0.d.x, 34513u), 4294967295u, firstLeadingBit(45425u)), ~vec3<u32>(global0.c.b.x, 0u, 28520u)) ^ 37309u, Struct_2(Struct_1(global2[_wgslsmith_index_u32(~u_input.a.x, 18u)], vec2<u32>(u_input.a.x, 15747u & u_input.b), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-263f, -996f, var_0), global0.e.a.c, !vec3<bool>(var_1.x, global2[_wgslsmith_index_u32(u_input.a.x, 18u)], global2[_wgslsmith_index_u32(0u, 18u)])))))).a;
    var var_3 = firstLeadingBit(~(~(u_input.c.x | u_input.b)));
    global2 = array<bool, 18>();
    return global0.c;
}

fn func_4(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: i32, arg_3: i32) -> Struct_1 {
    let var_0 = Struct_2(arg_0);
    var var_1 = Struct_3(vec2<bool>(!var_0.a.a, !(!global0.c.a)), 1i, func_2(func_2(5233u, global0.e).b.x, Struct_2(global0.c)), var_0.a.b, var_0);
    var var_2 = _wgslsmith_dot_vec4_i32(firstTrailingBit(u_input.e), vec4<i32>(_wgslsmith_mult_i32(2147483647i, -1i), 2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(var_1.b, ~25345i, arg_3), firstLeadingBit(vec3<i32>(-1i, u_input.d, 2147483647i))), -1i));
    var var_3 = false;
    var var_4 = Struct_3(!(!var_1.a), max(max(-59170i, arg_2), global0.b), Struct_1(false, ~var_1.c.b, _wgslsmith_f_op_vec3_f32(-var_1.c.c)), var_1.c.b, var_0);
    return Struct_1(func_2(~(~global0.e.a.b.x), Struct_2(Struct_1(global2[_wgslsmith_index_u32(4294967295u, 18u)], vec2<u32>(120287u, 1u), vec3<f32>(var_1.e.a.c.x, -701f, -291f)))).b.x <= (_wgslsmith_div_u32(reverseBits(global0.d.x), ~arg_0.b.x) << ((_wgslsmith_clamp_u32(global0.c.b.x, 1u, var_0.a.b.x) & _wgslsmith_mult_u32(var_4.c.b.x, arg_0.b.x)) % 32u)), firstTrailingBit(abs(~func_1(var_1.b, -3915i).b)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-464f, _wgslsmith_f_op_f32(exp2(var_0.a.c.x)), _wgslsmith_f_op_f32(arg_0.c.x - 279f))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-518f, -1217f, -135f)), _wgslsmith_f_op_vec3_f32(var_4.e.a.c * vec3<f32>(global0.e.a.c.x, -1213f, var_1.c.c.x)), !var_4.c.a)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<i32>(_wgslsmith_add_i32(-_wgslsmith_mult_i32(-1i, -2147483647i), reverseBits(-global0.b)), -u_input.e.x, -(~0i >> (u_input.b % 32u)), 2147483647i);
    let var_1 = Struct_2(func_4(func_1(global0.b, 1i), vec2<f32>(global0.e.a.c.x, _wgslsmith_div_f32(-130f, -810f)), _wgslsmith_add_i32(~_wgslsmith_dot_vec2_i32(vec2<i32>(var_0.x, 2211i), vec2<i32>(0i, -1i)), 1i), var_0.x));
    global1 = global2[_wgslsmith_index_u32(4294967295u & firstTrailingBit(0u & ~(1u ^ var_1.a.b.x)), 18u)];
    let var_2 = vec3<bool>(var_1.a.a, true, false);
    var var_3 = u_input.c;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(583f, -281f, -416f, 783f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a.c.x, -1096f, 1925f, 1000f))))), abs(vec4<u32>(~var_3.x, (u_input.a.x ^ 1u) ^ 1u, 0u, ~0u)), _wgslsmith_add_i32(~var_0.x, -8552i), 4294967295u);
}


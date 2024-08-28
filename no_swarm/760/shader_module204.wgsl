struct Struct_1 {
    a: vec3<u32>,
    b: u32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
    c: u32,
    d: i32,
}

struct Struct_3 {
    a: bool,
    b: i32,
    c: u32,
    d: vec3<bool>,
}

struct Struct_4 {
    a: u32,
    b: vec3<bool>,
    c: vec3<f32>,
    d: u32,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 1u;

var<private> global1: array<Struct_4, 16>;

var<private> global2: vec2<bool> = vec2<bool>(true, false);

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2, arg_1: Struct_3, arg_2: Struct_4, arg_3: Struct_2) -> vec2<bool> {
    global1 = array<Struct_4, 16>();
    var var_0 = ~(~arg_3.b.a.x);
    var var_1 = -(~arg_0.d);
    var var_2 = 652f;
    var var_3 = arg_2.e;
    return vec2<bool>(true, true);
}

fn func_2(arg_0: Struct_2, arg_1: Struct_1) -> bool {
    global2 = vec2<bool>(true, true);
    global2 = select(func_3(Struct_2(_wgslsmith_f_op_vec3_f32(-arg_0.a), Struct_1(vec3<u32>(u_input.b.x, 1173u, 48491u), _wgslsmith_sub_u32(68538u, u_input.b.x)), 1936u, arg_0.d), Struct_3(false, -2147483647i, 4294967295u, !vec3<bool>(true, global2.x, true)), Struct_4(4294967295u, select(!vec3<bool>(global2.x, true, global2.x), select(vec3<bool>(false, true, global2.x), vec3<bool>(global2.x, true, global2.x), global2.x), vec3<bool>(false, true, true)), vec3<f32>(_wgslsmith_f_op_f32(arg_0.a.x + 2832f), _wgslsmith_f_op_f32(arg_0.a.x * arg_0.a.x), arg_0.a.x), ~43069u, arg_1), arg_0), select(!vec2<bool>(false, global2.x && global2.x), !select(select(vec2<bool>(global2.x, false), vec2<bool>(true, true), vec2<bool>(global2.x, global2.x)), vec2<bool>(true, global2.x), func_3(arg_0, Struct_3(false, arg_0.d, u_input.b.x, vec3<bool>(global2.x, false, global2.x)), global1[_wgslsmith_index_u32(1u, 16u)], arg_0)), vec2<bool>(!all(vec4<bool>(false, false, global2.x, true)), global2.x & false)), vec2<bool>(true, true));
    global2 = !(!func_3(arg_0, Struct_3(any(vec3<bool>(true, global2.x, false)), 39344i & arg_0.d, _wgslsmith_clamp_u32(arg_0.b.b, arg_1.a.x, 42640u), !vec3<bool>(global2.x, global2.x, true)), Struct_4(~42250u, vec3<bool>(false, true, false), _wgslsmith_f_op_vec3_f32(-arg_0.a), max(u_input.b.x, 38228u), arg_1), Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-697f, arg_0.a.x, arg_0.a.x)), Struct_1(vec3<u32>(4294967295u, arg_1.b, 0u), 4294967295u), arg_0.c, 0i)));
    let var_0 = reverseBits(arg_1.b);
    global2 = !(!select(vec2<bool>(true && global2.x, arg_0.a.x != 1152f), vec2<bool>(!global2.x, global2.x), func_3(Struct_2(vec3<f32>(-1000f, -1042f, arg_0.a.x), arg_0.b, arg_0.c, arg_0.d), Struct_3(global2.x, 2147483647i, 69221u, vec3<bool>(true, global2.x, global2.x)), global1[_wgslsmith_index_u32(~u_input.a, 16u)], Struct_2(arg_0.a, Struct_1(vec3<u32>(26643u, 105734u, u_input.b.x), arg_0.b.a.x), 0u, -2147483647i))));
    return true;
}

fn func_1(arg_0: i32) -> Struct_3 {
    global2 = vec2<bool>(!global2.x, !(select(func_2(Struct_2(vec3<f32>(-1254f, -1000f, -807f), Struct_1(vec3<u32>(u_input.b.x, u_input.a, u_input.a), 17592u), 62828u, -17427i), Struct_1(vec3<u32>(4294967295u, 27852u, 0u), 33115u)), any(vec3<bool>(true, global2.x, true)), false) | (all(vec2<bool>(global2.x, global2.x)) && global2.x)));
    global0 = 62344u;
    global1 = array<Struct_4, 16>();
    var var_0 = select(~_wgslsmith_mult_u32(~_wgslsmith_mult_u32(345u, 5889u), firstLeadingBit(_wgslsmith_dot_vec2_u32(u_input.b.xy, vec2<u32>(u_input.b.x, u_input.a)))), ~u_input.b.x, !(all(vec2<bool>(global2.x, global2.x)) & true));
    let var_1 = Struct_3(min(arg_0, -329i) < 0i, ~(firstLeadingBit(-11006i) | -arg_0) ^ -2147483647i, ~_wgslsmith_dot_vec3_u32(u_input.b, firstLeadingBit(u_input.b) ^ u_input.b), !(!select(!vec3<bool>(global2.x, global2.x, global2.x), vec3<bool>(false, global2.x, false), true)));
    return Struct_3(true, reverseBits(1i), ~min(u_input.a, _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, u_input.a, var_1.c, 86138u), vec4<u32>(36025u, var_1.c, var_1.c, 8710u)), ~vec4<u32>(u_input.b.x, 14021u, 47837u, 22494u))), var_1.d);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(!vec2<bool>(true, global2.x));
    let var_1 = func_1(1i);
    var var_2 = ~vec2<i32>(_wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(var_1.b, -24723i), ~vec2<i32>(var_1.b, var_1.b)), _wgslsmith_mod_i32(var_1.b, var_1.b >> (u_input.a % 32u))), select(_wgslsmith_mod_i32(25150i, 80331i & var_1.b), _wgslsmith_clamp_i32(0i, var_1.b, var_1.b), true));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec4_i32(~(vec4<i32>(var_2.x, var_2.x, 1i, 0i) << ((vec4<u32>(u_input.a, u_input.b.x, 10958u, 62636u) | vec4<u32>(1u, 26793u, var_1.c, 14386u)) % vec4<u32>(32u))), vec4<i32>(_wgslsmith_mult_i32(var_1.b, var_2.x), ~var_2.x, select(var_1.b, 45796i, var_0.x), ~var_2.x) & vec4<i32>(var_1.b, var_1.b, _wgslsmith_clamp_i32(25105i, -1i, var_2.x), -var_2.x)), ~(_wgslsmith_clamp_i32(0i, _wgslsmith_clamp_i32(var_1.b, 32240i, var_2.x), var_1.b) & ~var_1.b));
}


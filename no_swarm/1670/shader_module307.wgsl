struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: vec2<u32>,
    d: u32,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: i32,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(912f), vec3<i32>(0i, 45117i, 1i), vec2<u32>(3763u, 15286u), 1u);

var<private> global1: vec3<f32>;

var<private> global2: bool = false;

var<private> global3: array<vec3<f32>, 3> = array<vec3<f32>, 3>(vec3<f32>(-260f, 329f, -389f), vec3<f32>(-131f, -471f, -1423f), vec3<f32>(357f, 641f, 1106f));

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec4<f32>, arg_1: vec4<i32>, arg_2: Struct_1) -> u32 {
    let var_0 = Struct_1(-1111f);
    var var_1 = Struct_3(~1u);
    var var_2 = Struct_3(firstTrailingBit(4294967295u) ^ ~countOneBits(_wgslsmith_dot_vec3_u32(vec3<u32>(var_1.a, 8437u, global0.d), vec3<u32>(1u, 4294967295u, var_1.a))));
    var var_3 = countOneBits(var_1.a);
    let var_4 = all(vec3<bool>(true && (arg_1.x < arg_1.x), all(vec3<bool>(all(vec4<bool>(false, false, true, true)), true, true)), true));
    return 40393u;
}

fn func_4(arg_0: Struct_4, arg_1: u32, arg_2: Struct_2) -> bool {
    var var_0 = true;
    var var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-409f)) + _wgslsmith_f_op_f32(-947f + arg_2.a.a)))) * _wgslsmith_f_op_f32(global0.a.a * arg_2.a.a)));
    let var_2 = -(~(vec2<i32>(-1i) * -vec2<i32>(arg_2.b.x, global0.b.x)));
    var var_3 = select(~min(u_input.c.x, reverseBits(firstTrailingBit(-5145i))), global0.b.x, false);
    global0 = arg_2;
    return all(!(!(!select(vec2<bool>(true, false), vec2<bool>(true, false), false))));
}

fn func_2(arg_0: vec2<i32>) -> vec4<u32> {
    var var_0 = Struct_4(reverseBits(u_input.c.x), vec3<u32>(u_input.a, global0.d, ~(~(~13440u))));
    global2 = func_4(Struct_4((arg_0.x | (7668i >> (global0.d % 32u))) & countOneBits(~arg_0.x), firstTrailingBit(var_0.b)), ~(~abs(30001u)), Struct_2(global0.a, global0.b, vec2<u32>(~func_3(vec4<f32>(-1000f, -226f, -517f, -416f), vec4<i32>(20934i, global0.b.x, -2147483647i, global0.b.x), global0.a), 28065u), var_0.b.x));
    var var_1 = global1.yy;
    global3 = array<vec3<f32>, 3>();
    global0 = Struct_2(Struct_1(-1134f), vec3<i32>(min(~_wgslsmith_div_i32(u_input.c.x, 1069i), ~_wgslsmith_sub_i32(-2147483647i, -50184i)), countOneBits(26653i), reverseBits(20321i)), _wgslsmith_mod_vec2_u32(global0.c, global0.c), 59472u);
    return ~vec4<u32>(18669u, u_input.a, 0u, _wgslsmith_add_u32(global0.d, _wgslsmith_dot_vec4_u32(vec4<u32>(58717u, 1u, global0.d, 0u), countOneBits(vec4<u32>(var_0.b.x, 99282u, 0u, global0.d)))));
}

fn func_1(arg_0: f32) -> StorageBuffer {
    global3 = array<vec3<f32>, 3>();
    global1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global3[_wgslsmith_index_u32(global0.c.x, 3u)] * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-996f, global0.a.a, arg_0)))) * global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~(~func_2(global0.b.zz)), vec4<u32>(_wgslsmith_div_u32(u_input.a & 48707u, 1u), 7709u, countOneBits(0u) >> (u_input.b % 32u), ~(~1u))), 3u)]);
    let var_0 = Struct_2(global0.a, global0.b, firstTrailingBit(select(vec2<u32>(20356u, global0.d), ~vec2<u32>(global0.c.x, global0.d), vec2<bool>(true, true))), ~(~36871u));
    let var_1 = select(select(vec2<bool>(any(vec4<bool>(false, true, true, false)), any(vec4<bool>(false, true, true, true))), vec2<bool>(true, true), _wgslsmith_dot_vec2_u32(vec2<u32>(global0.c.x, 4294967295u), _wgslsmith_clamp_vec2_u32(global0.c, vec2<u32>(global0.d, 18065u), vec2<u32>(u_input.b, u_input.b))) != u_input.b), select(vec2<bool>((arg_0 <= global0.a.a) & true, all(vec3<bool>(true, false, false))), select(!select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false)), vec2<bool>(false, func_4(Struct_4(-51145i, vec3<u32>(var_0.d, u_input.a, 4294967295u)), 32148u, Struct_2(global0.a, global0.b, var_0.c, 1u))), true), select(select(vec2<bool>(true, false), vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, true), false)), vec2<bool>(true, true), !select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false)))), select(vec2<bool>(true, true), vec2<bool>(true, !all(vec4<bool>(true, false, true, true))), vec2<bool>(abs(-11436i) != ~global0.b.x, any(vec2<bool>(true, true)))));
    let var_2 = var_0;
    return StorageBuffer(global0.c);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = true;
    var var_0 = Struct_4(i32(-1i) * -47812i, ~_wgslsmith_div_vec3_u32(abs(vec3<u32>(4294967295u, u_input.a, global0.c.x)), _wgslsmith_div_vec3_u32(~vec3<u32>(0u, global0.c.x, u_input.a), ~vec3<u32>(1u, u_input.a, 12708u))));
    var var_1 = ~_wgslsmith_clamp_vec3_i32(u_input.c, vec3<i32>(_wgslsmith_sub_i32(var_0.a, global0.b.x), global0.b.x, _wgslsmith_mod_i32(0i, -6202i)) ^ _wgslsmith_div_vec3_i32(select(u_input.c, vec3<i32>(u_input.c.x, u_input.c.x, u_input.c.x), false), vec3<i32>(global0.b.x, global0.b.x, -18534i)), -vec3<i32>(2147483647i, -1i, ~u_input.c.x));
    global3 = array<vec3<f32>, 3>();
    var var_2 = global0.a.a;
    let x = u_input.a;
    s_output = func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global0.a.a, _wgslsmith_f_op_f32(global0.a.a * 1519f))) * global1.x));
}


struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: u32,
    b: vec3<u32>,
    c: f32,
    d: bool,
    e: u32,
}

struct Struct_3 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec2<i32>,
    d: u32,
    e: vec2<i32>,
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

var<private> global0: array<Struct_2, 12> = array<Struct_2, 12>(Struct_2(1u, vec3<u32>(1u, 46075u, 1u), -555f, true, 1u), Struct_2(4294967295u, vec3<u32>(4294967295u, 10452u, 27330u), 353f, false, 25849u), Struct_2(41101u, vec3<u32>(4294967295u, 36572u, 95733u), 1946f, false, 28556u), Struct_2(256u, vec3<u32>(3478u, 8786u, 1u), 563f, true, 45896u), Struct_2(30148u, vec3<u32>(0u, 4294967295u, 38437u), 1054f, true, 52692u), Struct_2(1u, vec3<u32>(4294967295u, 55222u, 0u), 854f, true, 17058u), Struct_2(67818u, vec3<u32>(0u, 0u, 58415u), -985f, false, 12173u), Struct_2(90604u, vec3<u32>(0u, 44375u, 8947u), 286f, false, 0u), Struct_2(1u, vec3<u32>(0u, 89753u, 48531u), -314f, true, 4294967295u), Struct_2(20637u, vec3<u32>(34997u, 60035u, 11855u), 415f, true, 15454u), Struct_2(1291u, vec3<u32>(8541u, 4294967295u, 0u), 1000f, true, 0u), Struct_2(13164u, vec3<u32>(15458u, 1u, 31003u), -590f, true, 1u));

var<private> global1: Struct_1;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2(arg_0: vec2<u32>, arg_1: vec3<bool>) -> f32 {
    var var_0 = 227u;
    var var_1 = 4294967295u;
    let var_2 = _wgslsmith_f_op_f32(-2313f * _wgslsmith_f_op_f32(global1.a.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(1960f, global1.a.x)))))));
    var_0 = _wgslsmith_dot_vec3_u32((select(vec3<u32>(11204u, 26081u, 0u), vec3<u32>(38121u, 65123u, 0u), arg_1.x) << ((min(vec3<u32>(892u, arg_0.x, arg_0.x), vec3<u32>(arg_0.x, 30486u, 29829u)) ^ ~vec3<u32>(arg_0.x, u_input.d, arg_0.x)) % vec3<u32>(32u))) | reverseBits(countOneBits(vec3<u32>(31662u, 0u, 20161u)) & ~vec3<u32>(0u, u_input.d, 32586u)), ~(~(vec3<u32>(4294967295u, u_input.a, 1u) << (~vec3<u32>(0u, 17494u, 20538u) % vec3<u32>(32u)))));
    let var_3 = 0u;
    return _wgslsmith_div_f32(global1.a.x, global1.a.x);
}

fn func_1(arg_0: Struct_2, arg_1: vec3<u32>, arg_2: f32) -> bool {
    var var_0 = ~vec2<i32>(9280i, -21610i);
    global0 = array<Struct_2, 12>();
    global1 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(trunc(arg_0.c)), _wgslsmith_f_op_f32(ceil(1172f)), arg_0.c, _wgslsmith_f_op_f32(func_2(arg_0.b.zx, vec3<bool>(false, false, true))))))));
    var var_1 = global0[_wgslsmith_index_u32(u_input.a >> (_wgslsmith_div_u32(_wgslsmith_mult_u32(~countOneBits(arg_1.x), 30113u), ~(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_1.x, 0u), arg_1.xy) & ~arg_1.x)) % 32u), 12u)];
    var var_2 = !(!(!select(vec3<bool>(arg_0.d, var_1.d, var_1.d), vec3<bool>(arg_0.d, arg_0.d, false), true)));
    return var_2.x;
}

fn func_3() -> vec3<bool> {
    let var_0 = _wgslsmith_f_op_f32(global1.a.x * _wgslsmith_f_op_f32(-1f)) < 1f;
    let var_1 = vec4<i32>(u_input.c.x, firstLeadingBit(2147483647i), ~_wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.e.x, u_input.e.x, 0i), ~vec3<i32>(42795i, -2147483647i, u_input.c.x)), vec3<i32>(2147483647i, -2147483647i, ~(-1i))), ~u_input.b.x);
    var var_2 = !vec4<bool>(!(var_0 & !var_0), true, countOneBits(countOneBits(var_1.x)) > -2147483647i, !(true || all(vec4<bool>(false, false, true, false))));
    return !select(var_2.wwy, var_2.xyw, !any(!vec3<bool>(var_2.x, var_0, false)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = (-vec2<i32>(_wgslsmith_dot_vec2_i32(u_input.b.zy, u_input.c), 2147483647i) | u_input.c) << (vec2<u32>(u_input.a, _wgslsmith_sub_u32(_wgslsmith_mult_u32(u_input.a << (u_input.a % 32u), u_input.a), u_input.a)) % vec2<u32>(32u));
    let var_1 = vec3<bool>(any(select(vec3<bool>(true, select(false, false, true), func_1(Struct_2(935u, vec3<u32>(4294967295u, u_input.a, 1u), 1318f, true, 139012u), vec3<u32>(0u, 41525u, u_input.a), global1.a.x)), func_3(), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), any(vec4<bool>(false, true, false, true))))), !(!any(vec2<bool>(false, true))), any(vec3<bool>(func_1(global0[_wgslsmith_index_u32(4294967295u, 12u)], vec3<u32>(4294967295u, 1u, u_input.d), -1000f), func_3().x, all(vec4<bool>(true, true, true, true)))));
    global1 = Struct_1(_wgslsmith_f_op_vec4_f32(max(global1.a, _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(global1.a.x * global1.a.x), -720f, _wgslsmith_f_op_f32(-980f - global1.a.x), _wgslsmith_f_op_f32(select(-614f, global1.a.x, var_1.x))))))));
    var_0 = countOneBits(u_input.c);
    var var_2 = global0[_wgslsmith_index_u32(24484u, 12u)];
    var var_3 = vec3<f32>(_wgslsmith_f_op_f32(floor(2164f)), _wgslsmith_f_op_f32(func_2(vec2<u32>(u_input.d, u_input.d), vec3<bool>(true, firstTrailingBit(var_2.e) > 16u, var_1.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(1f)))), global1.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(-1i, _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.x, u_input.c.x, var_0.x, -62042i), vec4<i32>(2147483647i, 2147483647i, -2147483647i, 0i & var_0.x)), _wgslsmith_mod_i32(-2147483647i, (var_0.x ^ -4918i) | abs(0i)), _wgslsmith_dot_vec3_i32(min(u_input.b, vec3<i32>(2147483647i, 28767i, 2147483647i)), u_input.b)), _wgslsmith_mult_i32(u_input.e.x & -abs(17614i), -26956i));
}


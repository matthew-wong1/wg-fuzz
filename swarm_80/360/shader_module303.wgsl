struct Struct_1 {
    a: vec2<bool>,
    b: vec2<f32>,
    c: u32,
    d: vec3<u32>,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: vec4<u32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec4<u32>,
    d: vec2<u32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 11>;

var<private> global1: array<vec4<u32>, 31>;

var<private> global2: array<u32, 5> = array<u32, 5>(41553u, 1u, 34453u, 39454u, 4294967295u);

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_2(arg_0: vec4<i32>) -> i32 {
    global0 = array<f32, 11>();
    global0 = array<f32, 11>();
    var var_0 = arg_0;
    var var_1 = var_0.xx;
    var_0 = vec4<i32>(_wgslsmith_mod_i32(~countOneBits(var_1.x) >> (reverseBits(24414u) % 32u), -24485i), -1i, _wgslsmith_mult_i32(firstLeadingBit(select(_wgslsmith_mod_i32(861i, arg_0.x), var_0.x, all(vec4<bool>(true, true, false, false)))), 1i), min(_wgslsmith_sub_i32(~67535i, ~_wgslsmith_sub_i32(34222i, arg_0.x)), arg_0.x));
    return var_1.x;
}

fn func_3(arg_0: u32, arg_1: vec3<f32>) -> bool {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1.x * arg_1.x), global0[_wgslsmith_index_u32(1u, 11u)]);
    global0 = array<f32, 11>();
    var var_1 = u_input.d;
    let var_2 = vec3<bool>(true, true, all(select(!select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false)), select(vec2<bool>(true, true), vec2<bool>(true, true), true), !select(vec2<bool>(true, false), vec2<bool>(true, true), true))));
    var var_3 = arg_1.x;
    return var_2.x;
}

fn func_1() -> Struct_1 {
    let var_0 = func_2(_wgslsmith_div_vec4_i32(min(~countOneBits(vec4<i32>(14243i, 70367i, 1i, -1i)), vec4<i32>(~27650i, ~(-26776i), -24205i, reverseBits(0i))), select(~vec4<i32>(1i, 1i, 1i, 1i), vec4<i32>(max(1938i, -13766i), -1i, 1i, select(2147483647i, -2147483647i, true)), true)));
    var var_1 = _wgslsmith_sub_u32(0u, ~countOneBits(u_input.d) | 32538u) >> (~4294967295u % 32u);
    global2 = array<u32, 5>();
    global1 = array<vec4<u32>, 31>();
    var var_2 = select(vec2<bool>(true, any(select(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true)), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false)), false))), select(!select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, true), true), vec2<bool>(true, true)), select(select(vec2<bool>(true, true), vec2<bool>(true, true), false), !select(vec2<bool>(false, false), vec2<bool>(true, false), true), select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true))), !vec2<bool>(all(vec3<bool>(true, true, false)), func_3(0u, vec3<f32>(global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 5u)], 11u)], -1263f, global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 5u)], 11u)])))), vec2<bool>(!(!(1i == var_0)), all(select(select(vec2<bool>(false, true), vec2<bool>(false, true), true), select(vec2<bool>(false, false), vec2<bool>(false, true), false), select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false))))));
    return Struct_1(vec2<bool>(true, true), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(u_input.b.x, 11u)], -1290f) - vec2<f32>(214f, -1407f))))), ~1u, min(_wgslsmith_div_vec3_u32(u_input.a.xyy, ~u_input.b), _wgslsmith_mod_vec3_u32(vec3<u32>(26387u, 23711u, u_input.c.x), vec3<u32>(2562u, u_input.a.x, 8131u))) ^ ~(u_input.c.xwy & u_input.a.yxx), vec3<bool>(any(select(vec2<bool>(true, var_2.x), !vec2<bool>(false, var_2.x), var_2.x)), global0[_wgslsmith_index_u32(0u, 11u)] != -1000f, var_2.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let var_1 = any(var_0.e.xz);
    var var_2 = reverseBits(_wgslsmith_mult_vec3_u32(vec3<u32>(8762u << (global2[_wgslsmith_index_u32(abs(1u), 5u)] % 32u), 23475u, abs(select(1u, 0u, true))), var_0.d));
    var var_3 = select(!(!vec2<bool>(!var_1, var_1)), func_1().e.xx, false);
    var var_4 = countOneBits(abs(vec2<i32>(_wgslsmith_dot_vec2_i32(firstTrailingBit(vec2<i32>(15053i, 2147483647i)), countOneBits(vec2<i32>(0i, -47747i))), ~(-50106i))));
    let var_5 = var_0.e.xz;
    let x = u_input.a;
    s_output = StorageBuffer(abs(69619u) ^ _wgslsmith_dot_vec3_u32(~(~u_input.a.zxz), _wgslsmith_div_vec3_u32(_wgslsmith_mod_vec3_u32(u_input.c.xzy, u_input.a.zzx), ~vec3<u32>(64906u, global2[_wgslsmith_index_u32(0u, 5u)], 23955u))), 432f, ~(~(_wgslsmith_sub_vec4_u32(global1[_wgslsmith_index_u32(var_0.c, 31u)], u_input.c) << (global1[_wgslsmith_index_u32(46668u, 31u)] % vec4<u32>(32u)))), u_input.c.xz ^ _wgslsmith_sub_vec2_u32(var_0.d.xx, ~vec2<u32>(0u, 48491u)), firstLeadingBit(min(~vec3<u32>(var_2.x, var_2.x, var_0.d.x), ~u_input.a.zzy)) >> (vec3<u32>(1u | global2[_wgslsmith_index_u32(func_1().d.x, 5u)], 25008u, max(59742u, var_2.x) << (_wgslsmith_mult_u32(var_2.x, var_2.x) % 32u)) % vec3<u32>(32u)));
}


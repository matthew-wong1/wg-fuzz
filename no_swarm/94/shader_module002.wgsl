struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec2<u32>,
    c: vec3<bool>,
    d: vec3<i32>,
    e: vec4<bool>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_1,
    c: Struct_2,
    d: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: vec4<bool>;

var<private> global2: array<f32, 12>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<i32>, arg_1: i32, arg_2: vec2<bool>) -> u32 {
    var var_0 = vec2<f32>(1503f, global2[_wgslsmith_index_u32(abs(~(~(~u_input.a.x))), 12u)]);
    var var_1 = vec2<bool>(any(select(select(global0.c, global1.wxy, global0.a), global1.zzz, global1.xwz)), true);
    let var_2 = all(arg_2) & var_1.x;
    var var_3 = Struct_3(vec2<bool>(true, any(global0.e)), Struct_1(select(~(~vec4<u32>(95398u, u_input.a.x, u_input.a.x, u_input.a.x)), ~vec4<u32>(4294967295u, 76608u, global0.b.x, 116733u), _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(u_input.a.x, 12u)] * 1567f) <= _wgslsmith_f_op_f32(var_0.x + 195f))));
    let var_4 = Struct_3(vec2<bool>(true, false), Struct_1(~(~vec4<u32>(1u, global0.b.x, var_3.b.a.x, 4294967295u)) & var_3.b.a));
    return 0u;
}

fn func_2(arg_0: f32) -> u32 {
    let var_0 = _wgslsmith_add_i32(_wgslsmith_sub_i32(0i, ~(-(~(-2147483647i)))), global0.d.x);
    global2 = array<f32, 12>();
    global2 = array<f32, 12>();
    global0 = Struct_2(global0.a, vec2<u32>(~(func_3(vec4<i32>(var_0, -54911i, global0.d.x, global0.d.x), var_0, global0.a.yx) << (24506u % 32u)), 35037u << (_wgslsmith_mod_u32(8894u, global0.b.x) % 32u)), vec3<bool>(~var_0 == (select(var_0, global0.d.x, global1.x) | (-1i >> (global0.b.x % 32u))), true, !(global1.x || global1.x) | true), vec3<i32>(0i, ~global0.d.x, global0.d.x >> (abs(reverseBits(4294967295u)) % 32u)), global0.e);
    var var_1 = vec3<u32>(38386u, 0u >> (select(_wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(18129u, 46982u, 36390u), vec3<u32>(global0.b.x, global0.b.x, 0u), vec3<u32>(u_input.a.x, u_input.a.x, 4294967295u)), vec3<u32>(u_input.a.x, 1u, 39504u) | vec3<u32>(27407u, 35110u, u_input.a.x)), u_input.a.x, true) % 32u), global0.b.x);
    return _wgslsmith_mod_u32(firstLeadingBit(~(~_wgslsmith_sub_u32(global0.b.x, global0.b.x))), 1u);
}

fn func_1() -> i32 {
    var var_0 = reverseBits(686u) ^ firstLeadingBit(~func_2(1435f));
    var_0 = countOneBits(1u);
    var var_1 = 1i;
    return 1i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<i32>(-global0.d.x, 44744i, ~_wgslsmith_clamp_i32(_wgslsmith_sub_i32(global0.d.x | -1i, global0.d.x), func_1(), 0i << (func_2(global2[_wgslsmith_index_u32(4294967295u, 12u)]) % 32u)), _wgslsmith_dot_vec2_i32(vec2<i32>(15903i, ~(-70316i)), vec2<i32>(-(global0.d.x | global0.d.x), -global0.d.x & global0.d.x)));
    global1 = !(!select(global0.e, global0.e, global1.x));
    let var_1 = select(global0.e, !(!global0.e), !global1.x);
    var var_2 = Struct_4(Struct_3(global1.xy, Struct_1(vec4<u32>(_wgslsmith_mult_u32(20481u, 2364u), global0.b.x, global0.b.x, u_input.a.x))), Struct_1(min(vec4<u32>(global0.b.x ^ global0.b.x, _wgslsmith_div_u32(global0.b.x, global0.b.x), u_input.a.x, 28066u), vec4<u32>(~u_input.a.x, 115852u, _wgslsmith_dot_vec3_u32(vec3<u32>(42274u, u_input.a.x, 42022u), vec3<u32>(global0.b.x, 0u, global0.b.x)), 4294967295u))), Struct_2(select(select(global1.zzx, vec3<bool>(true, false, true), global0.e.x), var_1.xxw, !(!global1.x)), ~global0.b, vec3<bool>(global1.x, all(var_1.wy), var_1.x), firstLeadingBit(vec3<i32>(-1i) * -vec3<i32>(global0.d.x, var_0.x, 4501i)), !select(!vec4<bool>(true, var_1.x, true, global1.x), !vec4<bool>(global0.a.x, global1.x, global1.x, global0.c.x), !var_1)), ~_wgslsmith_mult_u32(0u, ~(36110u >> (global0.b.x % 32u))));
    var var_3 = ~_wgslsmith_sub_u32(~u_input.a.x, _wgslsmith_mod_u32(4294967295u, var_2.c.b.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1690f, global2[_wgslsmith_index_u32(5908u, 12u)], global2[_wgslsmith_index_u32(20985u, 12u)], -297f))), vec4<f32>(global2[_wgslsmith_index_u32(var_2.c.b.x, 12u)], global2[_wgslsmith_index_u32(37217u, 12u)], global2[_wgslsmith_index_u32(103723u, 12u)], -307f), global1.x)), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2[_wgslsmith_index_u32(global0.b.x, 12u)], global2[_wgslsmith_index_u32(u_input.a.x, 12u)], global2[_wgslsmith_index_u32(1995u, 12u)], 485f) - vec4<f32>(global2[_wgslsmith_index_u32(113757u, 12u)], 245f, 136f, global2[_wgslsmith_index_u32(global0.b.x, 12u)])))), vec4<bool>(global1.x | var_2.a.a.x, true, global1.x & global0.e.x, true))))));
}


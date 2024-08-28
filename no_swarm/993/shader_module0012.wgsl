struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: bool;

var<private> global2: vec2<i32> = vec2<i32>(i32(-2147483648), 1i);

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: Struct_2) -> u32 {
    return min(1655u, 0u);
}

fn func_1(arg_0: f32) -> vec2<i32> {
    return ~(vec2<i32>(~(-1i), global2.x) >> (vec2<u32>(_wgslsmith_clamp_u32(0u, func_2(Struct_2(global0.x)), 17199u), _wgslsmith_dot_vec2_u32(vec2<u32>(21857u, u_input.a), vec2<u32>(u_input.a, 4294967295u)) & 1u) % vec2<u32>(32u)));
}

fn func_3() -> vec3<bool> {
    let var_0 = 1294f;
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(f32(-1f) * -1243f)) + _wgslsmith_f_op_f32(round(var_0))))), -698f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1618f - -1839f))))))));
    global2 = vec2<i32>(-1i, 1i << (abs(1u) % 32u));
    global2 = ~vec2<i32>(-2147483647i, 15391i) << (select(vec2<u32>(u_input.a, 4728u), ~(~countOneBits(vec2<u32>(u_input.a, u_input.a))), false) % vec2<u32>(32u));
    global1 = !(!all(!(!vec4<bool>(true, global0.x, false, global0.x))));
    return select(select(select(select(vec3<bool>(global0.x, global0.x, global0.x), select(vec3<bool>(true, global0.x, true), vec3<bool>(true, true, global0.x), true), var_1.x == var_1.x), !vec3<bool>(global0.x, false, global0.x), global0.x), !select(vec3<bool>(true, false, false), select(vec3<bool>(global0.x, true, false), vec3<bool>(global0.x, true, false), false), select(vec3<bool>(global0.x, global0.x, global0.x), vec3<bool>(global0.x, true, false), vec3<bool>(global0.x, global0.x, true))), all(vec3<bool>(global0.x, global2.x >= 0i, false || global0.x))), select(select(!(!vec3<bool>(true, global0.x, true)), select(vec3<bool>(global0.x, global0.x, false), select(vec3<bool>(true, global0.x, true), vec3<bool>(false, global0.x, true), global0.x), false), !any(vec3<bool>(true, global0.x, false))), vec3<bool>(!any(global0.yy), select(true, global0.x, any(vec4<bool>(false, true, global0.x, true))), true), global0.x), !(!(!(!vec3<bool>(global0.x, false, global0.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-517f)) * -332f));
    global0 = !select(func_3(), func_3(), global0.x);
    var var_0 = _wgslsmith_clamp_vec3_u32(firstLeadingBit(max(max(vec3<u32>(67986u, 8955u, u_input.a), vec3<u32>(u_input.a, u_input.a, u_input.a)), vec3<u32>(38448u, 0u, u_input.a) & vec3<u32>(1u, u_input.a, u_input.a))) & vec3<u32>(4294967295u, u_input.a, ~4294967295u ^ (u_input.a >> (4294967295u % 32u))), ~_wgslsmith_add_vec3_u32(~_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a, 0u, 12086u), vec3<u32>(u_input.a, 16255u, 29242u), vec3<u32>(u_input.a, u_input.a, u_input.a)), vec3<u32>(0u, firstLeadingBit(18220u), u_input.a)), firstTrailingBit(select(_wgslsmith_sub_vec3_u32(~vec3<u32>(47163u, 17731u, u_input.a), ~vec3<u32>(4294967295u, 53515u, u_input.a)), vec3<u32>(4294967295u, func_2(Struct_2(false)), countOneBits(4294967295u)), vec3<bool>(!global0.x, global0.x != global0.x, u_input.a == 4294967295u))));
    var var_1 = vec2<bool>(false, any(func_3()));
    var_1 = global0.yy;
    let var_2 = 0u;
    var var_3 = _wgslsmith_f_op_f32(abs(1f));
    global0 = !(!(!select(!vec3<bool>(false, true, global0.x), vec3<bool>(true, false, false), select(vec3<bool>(global0.x, global0.x, global0.x), vec3<bool>(global0.x, false, var_1.x), vec3<bool>(var_1.x, global0.x, true)))));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_sub_vec4_i32(select(~vec4<i32>(global2.x, global2.x, global2.x, -2147483647i), vec4<i32>(global2.x, 33640i, global2.x, 1i), any(vec4<bool>(global0.x, false, true, var_1.x))), vec4<i32>(-13378i, countOneBits(2147483647i), i32(-1i) * -1i, _wgslsmith_sub_i32(global2.x, global2.x))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -834f), _wgslsmith_f_op_f32(abs(-1708f)), _wgslsmith_f_op_f32(ceil(487f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1098f, 444f, -609f, -1097f))))))));
}


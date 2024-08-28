struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: vec2<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 9>;

var<private> global1: bool;

var<private> global2: array<Struct_1, 3> = array<Struct_1, 3>(Struct_1(false), Struct_1(true), Struct_1(true));

var<private> global3: vec2<i32> = vec2<i32>(-13567i, -13336i);

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: vec3<u32>) -> Struct_1 {
    var var_0 = true;
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -854f)) + 1f) + -1670f);
    let var_2 = firstTrailingBit(~(~vec2<u32>(~8359u, 4294967295u)));
    let var_3 = ~arg_0.xx | (vec2<u32>(~min(arg_0.x, 59625u), ~(arg_0.x & var_2.x)) | vec2<u32>((55129u << (u_input.c % 32u)) ^ arg_0.x, ~var_2.x));
    let var_4 = vec2<bool>(true, true);
    return Struct_1(var_4.x);
}

fn func_1(arg_0: u32) -> f32 {
    var var_0 = firstTrailingBit(~(~0u));
    var var_1 = ~_wgslsmith_add_i32(global3.x, -(min(-30305i, 39890i) >> (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, arg_0, 1u, 9834u), vec4<u32>(16077u, 28621u, 2251u, u_input.c)) % 32u)));
    let var_2 = Struct_1(global0[_wgslsmith_index_u32(~1u, 9u)]);
    var var_3 = func_2(vec3<u32>(48775u, 4294967295u, 612u));
    let var_4 = u_input.a.x;
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1353f), -392f));
}

fn func_3(arg_0: vec3<bool>, arg_1: vec4<f32>, arg_2: vec2<f32>, arg_3: vec3<f32>) -> vec4<f32> {
    var var_0 = global2[_wgslsmith_index_u32(1u, 3u)];
    let var_1 = global2[_wgslsmith_index_u32(92367u, 3u)];
    var var_2 = select(vec4<bool>(false, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3.x) - arg_2.x) >= arg_1.x, false, global0[_wgslsmith_index_u32(1u, 9u)]), !(!select(select(vec4<bool>(false, var_0.a, arg_0.x, global0[_wgslsmith_index_u32(4294967295u, 9u)]), vec4<bool>(global0[_wgslsmith_index_u32(0u, 9u)], var_0.a, false, var_1.a), vec4<bool>(arg_0.x, var_1.a, global0[_wgslsmith_index_u32(27880u, 9u)], true)), vec4<bool>(true, var_1.a, true, true), vec4<bool>(arg_0.x, var_1.a, arg_0.x, arg_0.x))), ~(-u_input.b & ~2147483647i) <= u_input.a.x);
    global3 = u_input.a.yy;
    var var_3 = _wgslsmith_dot_vec4_u32(reverseBits(_wgslsmith_clamp_vec4_u32(~(~vec4<u32>(u_input.c, u_input.c, u_input.c, u_input.c)), _wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, 4294967295u, u_input.c, u_input.c), vec4<u32>(62560u, 37983u, u_input.c, 0u)) >> (vec4<u32>(u_input.c, 1u, 84839u, 44468u) % vec4<u32>(32u)), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.c, 66258u, u_input.c, u_input.c) & vec4<u32>(686u, 83115u, 4794u, 0u), vec4<u32>(u_input.c, u_input.c, 24302u, 108867u)))), ~_wgslsmith_div_vec4_u32(~_wgslsmith_sub_vec4_u32(vec4<u32>(0u, 22994u, u_input.c, u_input.c), vec4<u32>(0u, 4294967295u, 28432u, u_input.c)), select(vec4<u32>(1u, 1u, 0u, 5919u), vec4<u32>(u_input.c, u_input.c, 39134u, u_input.c), vec4<bool>(var_1.a, false, global0[_wgslsmith_index_u32(u_input.c, 9u)], false)) << (_wgslsmith_add_vec4_u32(vec4<u32>(u_input.c, u_input.c, u_input.c, 65465u), vec4<u32>(29162u, 35060u, u_input.c, 26727u)) % vec4<u32>(32u))));
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(arg_1, _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1109f, arg_2.x, arg_1.x, arg_1.x)))))))) * arg_1);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a.xy;
    let var_1 = !(!select(select(select(vec3<bool>(true, global0[_wgslsmith_index_u32(u_input.c, 9u)], true), vec3<bool>(global0[_wgslsmith_index_u32(26746u, 9u)], true, true), vec3<bool>(global0[_wgslsmith_index_u32(u_input.c, 9u)], true, false)), vec3<bool>(true, true, global0[_wgslsmith_index_u32(u_input.c, 9u)]), false), select(select(vec3<bool>(false, global0[_wgslsmith_index_u32(13205u, 9u)], global0[_wgslsmith_index_u32(6539u, 9u)]), vec3<bool>(global0[_wgslsmith_index_u32(u_input.c, 9u)], true, global0[_wgslsmith_index_u32(4294967295u, 9u)]), vec3<bool>(true, false, false)), select(vec3<bool>(global0[_wgslsmith_index_u32(u_input.c, 9u)], global0[_wgslsmith_index_u32(1u, 9u)], false), vec3<bool>(false, false, true), vec3<bool>(global0[_wgslsmith_index_u32(19848u, 9u)], false, true)), select(vec3<bool>(true, false, true), vec3<bool>(global0[_wgslsmith_index_u32(46854u, 9u)], global0[_wgslsmith_index_u32(16627u, 9u)], global0[_wgslsmith_index_u32(u_input.c, 9u)]), vec3<bool>(false, false, global0[_wgslsmith_index_u32(4294967295u, 9u)]))), vec3<bool>(true, false, global0[_wgslsmith_index_u32(35944u, 9u)] | false)));
    let var_2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(464f, _wgslsmith_f_op_f32(-1000f - 1326f), -2495f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-568f * 355f) + _wgslsmith_f_op_f32(-162f - -413f)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -1000f, 1570f, 703f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1638f, -920f, 554f, 917f) + vec4<f32>(2516f, 986f, 1440f, 908f)) * _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(537f, 658f, 1311f, 1145f)))), vec4<bool>(global0[_wgslsmith_index_u32(min(7522u, u_input.c), 9u)], any(var_1), any(vec3<bool>(global0[_wgslsmith_index_u32(1u, 9u)], true, global0[_wgslsmith_index_u32(u_input.c, 9u)])), all(vec2<bool>(global0[_wgslsmith_index_u32(0u, 9u)], var_1.x))))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(func_1(0u)), 1426f, -773f, _wgslsmith_f_op_f32(floor(612f))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(var_1, vec4<f32>(656f, 383f, 496f, -839f), vec2<f32>(-303f, 895f), vec3<f32>(-369f, 947f, 685f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(1236f, 1172f, -447f, -114f))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(max(1001f, -465f)), var_2.zx, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.x, _wgslsmith_f_op_f32(var_2.x + var_2.x)) * vec2<f32>(1f, var_2.x))), countOneBits(u_input.a.x));
}


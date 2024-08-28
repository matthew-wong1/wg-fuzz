struct Struct_1 {
    a: vec2<u32>,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 7> = array<vec4<u32>, 7>(vec4<u32>(4294967295u, 0u, 25731u, 0u), vec4<u32>(27877u, 6841u, 1u, 0u), vec4<u32>(1u, 46484u, 10u, 1u), vec4<u32>(1u, 21720u, 42404u, 12548u), vec4<u32>(92962u, 1u, 1u, 4294967295u), vec4<u32>(26740u, 1u, 24455u, 1u), vec4<u32>(0u, 5653u, 98918u, 33737u));

var<private> global1: array<Struct_1, 25>;

var<private> global2: array<u32, 5>;

var<private> global3: vec4<f32>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec3<bool>, arg_1: bool) -> vec3<f32> {
    let var_0 = global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(~0u, 5u)], 25u)];
    global2 = array<u32, 5>();
    let var_1 = select(!select(select(vec4<bool>(true, arg_1, arg_1, true), select(vec4<bool>(arg_1, arg_1, true, arg_1), vec4<bool>(arg_1, arg_0.x, false, false), vec4<bool>(arg_1, true, arg_0.x, arg_0.x)), vec4<bool>(true, false, false, arg_0.x)), !select(vec4<bool>(false, arg_0.x, false, arg_1), vec4<bool>(arg_1, arg_0.x, arg_1, true), vec4<bool>(arg_1, arg_0.x, false, arg_1)), select(select(vec4<bool>(arg_1, false, false, true), vec4<bool>(arg_1, arg_1, false, true), true), vec4<bool>(false, false, false, arg_1), vec4<bool>(false, false, arg_0.x, arg_1))), vec4<bool>(select(all(arg_0) || all(arg_0), !(1114f != global3.x), arg_0.x), true, any(!(!vec4<bool>(arg_1, true, true, arg_1))), arg_1), !(!vec4<bool>(u_input.a.x >= -39015i, false || arg_0.x, true, true)));
    var var_2 = Struct_1(select(var_0.a, ~(~_wgslsmith_mod_vec2_u32(vec2<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 5u)], 5u)], 0u), vec2<u32>(u_input.b, 0u))), true), _wgslsmith_f_op_vec3_f32(vec3<f32>(444f, _wgslsmith_f_op_f32(-var_0.b.x), 1f) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-var_0.b))))));
    global3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.x, -495f, -1183f, -605f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(2508f, global3.x, -1000f, 1155f)), arg_0.x)))));
    return vec3<f32>(var_2.b.x, 402f, var_0.b.x);
}

fn func_2(arg_0: vec3<i32>, arg_1: vec2<i32>, arg_2: vec4<u32>) -> Struct_1 {
    let var_0 = Struct_1(~arg_2.zy, _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(func_3(select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(false, false, false)), arg_1.x == 11147i)))))));
    let var_1 = global1[_wgslsmith_index_u32(~arg_2.x ^ _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, arg_2.x, var_0.a.x, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 5u)], 5u)], 5u)]) & vec4<u32>(50885u, u_input.b, 14860u, u_input.b), max(vec4<u32>(1u, 4294967295u, 4294967295u, u_input.b), arg_2) | arg_2), arg_2.x), 25u)];
    global2 = array<u32, 5>();
    let var_2 = -(~arg_0.x);
    global2 = array<u32, 5>();
    return global1[_wgslsmith_index_u32(1u, 25u)];
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: vec4<i32>) -> vec3<f32> {
    let var_0 = vec3<bool>(true, true, true);
    var var_1 = _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1137f, 128f, arg_1.b.x), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1879f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-264f))) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global3.x)))), _wgslsmith_f_op_f32(-arg_1.b.x))));
    global3 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(416f, var_1.x, -847f, 1272f), vec4<f32>(arg_1.b.x, 208f, 869f, arg_1.b.x), var_0.x)))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(func_2(arg_2.yxz, arg_2.yx, global0[_wgslsmith_index_u32(324u, 7u)]).b.x, _wgslsmith_f_op_f32(-global3.x), 1028f, _wgslsmith_f_op_f32(var_1.x - -846f)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_1.x, global3.x, 678f, var_1.x), vec4<f32>(-1420f, 174f, arg_1.b.x, 480f)) + _wgslsmith_div_vec4_f32(vec4<f32>(-1744f, arg_1.b.x, global3.x, 1301f), vec4<f32>(global3.x, global3.x, 2849f, global3.x)))))));
    let var_2 = global1[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(abs(1u), func_2(vec3<i32>(arg_0, -4925i, arg_2.x), vec2<i32>(1i, 52856i), max(global0[_wgslsmith_index_u32(35485u, 7u)], vec4<u32>(11723u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 5u)], 5u)], 23331u, arg_1.a.x))).a.x >> (select(countOneBits(global2[_wgslsmith_index_u32(4294967295u, 5u)]), ~u_input.b, false || var_0.x) % 32u), _wgslsmith_mult_u32(1u, abs(1u))), 25u)];
    var var_3 = reverseBits(~arg_1.a);
    return arg_1.b;
}

fn func_1() -> f32 {
    let var_0 = vec4<f32>(977f, _wgslsmith_f_op_f32(-global3.x), global3.x, _wgslsmith_f_op_f32(abs(global3.x)));
    global0 = array<vec4<u32>, 7>();
    var var_1 = Struct_1(vec2<u32>(reverseBits(~_wgslsmith_add_u32(44766u, global2[_wgslsmith_index_u32(18372u, 5u)])), u_input.b), vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_0.x, 606f)) - -407f))), _wgslsmith_div_f32(-442f, _wgslsmith_f_op_f32(ceil(global3.x))), global3.x));
    var var_2 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_0.wyy * _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.x, -154f, var_0.x)), var_1.b)))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(func_4(~(-2147483647i), func_2(vec3<i32>(u_input.a.x, u_input.a.x, -5864i), vec2<i32>(u_input.a.x, -2147483647i), vec4<u32>(0u, 64752u, 1u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 5u)], 5u)], 5u)], 5u)])), vec4<i32>(u_input.a.x, 13911i, u_input.a.x, u_input.a.x) << (global0[_wgslsmith_index_u32(1u, 7u)] % vec4<u32>(32u)))))), _wgslsmith_f_op_vec3_f32(var_1.b * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-982f, 694f, var_0.x), func_2(vec3<i32>(u_input.a.x, 69597i, u_input.a.x), vec2<i32>(-45078i, u_input.a.x), global0[_wgslsmith_index_u32(var_1.a.x, 7u)]).b, select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(false, true, false))))))));
    let var_3 = -_wgslsmith_dot_vec3_i32(u_input.a, u_input.a);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec3_f32(func_4(u_input.a.x, global1[_wgslsmith_index_u32(u_input.b, 25u)], vec4<i32>(-_wgslsmith_sub_i32(var_3, 1i), ~1i, u_input.a.x, ~u_input.a.x))).x);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 25>();
    global3 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.x - 420f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1569f))), -121f, 892f), vec4<f32>(global3.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1010f))), global3.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global3.x), global3.x))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(select(global3.x, global3.x, false)), _wgslsmith_f_op_f32(step(-647f, 129f)), _wgslsmith_f_op_f32(sign(global3.x)), _wgslsmith_f_op_f32(global3.x * 2243f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-175f, 1029f, 893f, 567f))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-415f, 1371f, -184f, global3.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -337f, 554f, global3.x)))))), !(_wgslsmith_f_op_f32(select(global3.x, _wgslsmith_f_op_f32(ceil(global3.x)), any(vec4<bool>(false, false, true, false)))) != _wgslsmith_div_f32(-839f, _wgslsmith_f_op_f32(f32(-1f) * -1018f)))));
    global3 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.x) + _wgslsmith_f_op_f32(select(global3.x, 1959f, false))), global3.x), global3.x, _wgslsmith_f_op_f32(func_1()), -111f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1483f, global3.x, 1000f, -536f)) * vec4<f32>(global3.x, 1249f, global3.x, global3.x)) * vec4<f32>(-1130f, _wgslsmith_f_op_f32(ceil(global3.x)), global3.x, global3.x))));
    var var_0 = global1[_wgslsmith_index_u32(~(~((1u >> (global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 5u)], 5u)] % 32u)) >> ((global2[_wgslsmith_index_u32(u_input.b, 5u)] | 38476u) % 32u))) ^ global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(~112297u, ~_wgslsmith_mult_u32(~45199u, 384u << (global2[_wgslsmith_index_u32(20083u, 5u)] % 32u))), 5u)], 25u)];
    global1 = array<Struct_1, 25>();
    let x = u_input.a;
    s_output = StorageBuffer(~global2[_wgslsmith_index_u32(abs(firstLeadingBit(firstLeadingBit(0u))), 5u)]);
}


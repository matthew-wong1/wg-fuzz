struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
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

var<private> global0: f32;

var<private> global1: i32 = -54841i;

var<private> global2: array<vec4<u32>, 18> = array<vec4<u32>, 18>(vec4<u32>(27575u, 42252u, 4294967295u, 0u), vec4<u32>(20655u, 0u, 53554u, 4294967295u), vec4<u32>(70522u, 1u, 95728u, 4294967295u), vec4<u32>(130772u, 4294967295u, 4294967295u, 6785u), vec4<u32>(4294967295u, 4294967295u, 1u, 55287u), vec4<u32>(1u, 96505u, 82568u, 356u), vec4<u32>(13897u, 7726u, 1u, 61224u), vec4<u32>(64445u, 19400u, 103827u, 4294967295u), vec4<u32>(12962u, 1u, 98402u, 4294967295u), vec4<u32>(1u, 1u, 18812u, 67088u), vec4<u32>(0u, 41345u, 83434u, 0u), vec4<u32>(21316u, 0u, 1u, 68670u), vec4<u32>(4294967295u, 74830u, 21981u, 4294967295u), vec4<u32>(45421u, 22541u, 58285u, 0u), vec4<u32>(0u, 1u, 52772u, 0u), vec4<u32>(31663u, 1u, 1u, 9274u), vec4<u32>(24302u, 7164u, 9183u, 0u), vec4<u32>(581u, 27556u, 4294967295u, 23786u));

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1(arg_0: vec3<f32>) -> Struct_1 {
    return Struct_1(!((_wgslsmith_dot_vec3_i32(vec3<i32>(-37195i, -2147483647i, u_input.b.x), vec3<i32>(u_input.a, 0i, -54602i)) >= (u_input.b.x ^ u_input.b.x)) || true));
}

fn func_3(arg_0: i32, arg_1: i32, arg_2: vec4<bool>, arg_3: f32) -> vec2<bool> {
    global1 = arg_1;
    let var_0 = Struct_1(any(!vec3<bool>(arg_2.x, true, !arg_2.x)));
    var var_1 = firstLeadingBit(-countOneBits(min(vec4<i32>(10471i, 1i, -1i, 37738i), vec4<i32>(arg_0, u_input.b.x, u_input.a, u_input.a)))) << (~(~_wgslsmith_mod_vec4_u32(~vec4<u32>(3513u, 4294967295u, 4294967295u, 64434u), ~global2[_wgslsmith_index_u32(45825u, 18u)])) % vec4<u32>(32u));
    let var_2 = arg_2.zzz;
    let var_3 = select(select(!(!(!arg_2.xxw)), vec3<bool>((arg_3 == arg_3) & all(vec2<bool>(false, false)), true, any(arg_2.zw)), false), arg_2.xxz, !var_0.a);
    return vec2<bool>(var_2.x | ((false == (var_3.x && arg_2.x)) || all(arg_2)), any(vec3<bool>(any(arg_2), all(vec2<bool>(true, false)), !var_2.x)) && var_0.a);
}

fn func_2(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: Struct_1, arg_3: Struct_1) -> vec2<bool> {
    var var_0 = select(func_3(select(_wgslsmith_clamp_i32(u_input.a, -u_input.a, max(u_input.a, 11831i)), ~_wgslsmith_sub_i32(u_input.a, 24254i), true && any(vec2<bool>(false, false))), 2147483647i, vec4<bool>(select(true, arg_2.a, arg_3.a), !arg_3.a, false, arg_3.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(738f - 335f) - _wgslsmith_f_op_f32(864f - -179f)) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(109f - 764f))))), select(!select(!vec2<bool>(arg_3.a, arg_2.a), select(vec2<bool>(arg_3.a, false), vec2<bool>(arg_3.a, true), false), !vec2<bool>(true, arg_3.a)), select(vec2<bool>(true, arg_0.a), vec2<bool>(true, arg_3.a), select(!vec2<bool>(arg_0.a, false), !vec2<bool>(arg_2.a, arg_2.a), vec2<bool>(false, false))), arg_0.a), vec2<bool>(all(select(!vec3<bool>(arg_0.a, true, arg_0.a), !vec3<bool>(arg_3.a, arg_0.a, arg_2.a), !vec3<bool>(arg_3.a, false, false))), !any(select(vec4<bool>(arg_0.a, arg_0.a, true, arg_3.a), vec4<bool>(false, arg_0.a, false, arg_3.a), arg_3.a))));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1324f, _wgslsmith_f_op_f32(floor(-100f)))) * 212f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2303f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -893f) + _wgslsmith_f_op_f32(sign(-1621f)))) - -1093f));
    var var_2 = arg_1.x;
    let var_3 = func_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_1, 468f, -354f), vec3<f32>(-1000f, var_1, var_1), vec3<bool>(arg_3.a, arg_2.a, var_0.x)))))), vec3<f32>(-755f, var_1, var_1)));
    var_0 = vec2<bool>(func_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-887f, var_1, -639f))) - _wgslsmith_div_vec3_f32(vec3<f32>(var_1, var_1, 214f), vec3<f32>(var_1, 790f, var_1))))).a, !(true != arg_0.a) || var_0.x);
    return vec2<bool>(true, true);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec4<u32>, 18>();
    global0 = 1000f;
    var var_0 = func_1(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(272f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1327f, 131f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-593f - 1797f))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(644f, -1000f, -887f), vec3<f32>(-1430f, -441f, -445f), false)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-898f, -926f, 863f) - vec3<f32>(316f, 3202f, 653f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1202f, 1125f, -1229f) + vec3<f32>(302f, 880f, 1585f))), !all(vec2<bool>(true, false)))))));
    global1 = 1i;
    let var_1 = select(!vec2<bool>(var_0.a && (0i < u_input.b.x), true), !select(!func_2(Struct_1(false), vec4<u32>(0u, 4294967295u, 3558u, 23730u), Struct_1(var_0.a), Struct_1(true)), select(vec2<bool>(var_0.a, true), select(vec2<bool>(true, true), vec2<bool>(var_0.a, var_0.a), var_0.a), !var_0.a), !func_2(Struct_1(var_0.a), global2[_wgslsmith_index_u32(21466u, 18u)], Struct_1(var_0.a), Struct_1(true))), func_3(0i, ~select(-u_input.a, ~u_input.a, -35271i != u_input.b.x), select(vec4<bool>(true, true, var_0.a, var_0.a), !(!vec4<bool>(var_0.a, var_0.a, true, true)), !(!vec4<bool>(false, var_0.a, false, true))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1619f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -179f)))))));
    let var_2 = -470f;
    var_0 = Struct_1(var_0.a);
    var_0 = func_1(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_2, var_2, var_2))))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_u32(1u, ~(~(~0u))));
}


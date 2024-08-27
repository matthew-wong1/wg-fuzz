struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 17>;

var<private> global1: i32 = 1i;

var<private> global2: array<bool, 28> = array<bool, 28>(true, true, true, false, false, false, true, false, true, true, true, true, false, true, false, true, true, false, false, false, false, true, true, true, true, true, false, true);

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: i32, arg_1: i32) -> bool {
    let var_0 = countOneBits(~reverseBits((vec3<u32>(u_input.c.x, u_input.c.x, u_input.c.x) >> (vec3<u32>(u_input.a, u_input.c.x, u_input.c.x) % vec3<u32>(32u))) ^ vec3<u32>(u_input.c.x, 46841u, u_input.a)));
    let var_1 = Struct_1(any(vec4<bool>(!all(vec4<bool>(false, global2[_wgslsmith_index_u32(var_0.x, 28u)], global2[_wgslsmith_index_u32(u_input.c.x, 28u)], false)), false, global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.c.x, 1u, 0u, 74501u), vec4<u32>(0u, 1u, var_0.x, u_input.c.x)), ~vec4<u32>(var_0.x, u_input.a, 6817u, 4294967295u)), 28u)], any(vec2<bool>(true, false)))));
    var var_2 = global0[_wgslsmith_index_u32(var_0.x, 17u)];
    var_2 = Struct_1(true);
    let var_3 = _wgslsmith_f_op_f32(step(2014f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(578f)))))))) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(944f + 653f));
    return var_1.a;
}

fn func_2(arg_0: vec4<bool>, arg_1: vec3<f32>) -> f32 {
    let var_0 = Struct_1(!(u_input.b.x > (_wgslsmith_mod_i32(u_input.b.x, -1i) & -1i)));
    let var_1 = !func_3(_wgslsmith_clamp_i32(_wgslsmith_mult_i32(8350i, u_input.b.x), reverseBits(u_input.b.x), u_input.b.x | 5141i), 1i) || select(all(vec2<bool>(!arg_0.x, false)), true, false);
    let var_2 = var_0;
    var var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.x, arg_1.x, arg_1.x, arg_1.x))))), vec4<f32>(arg_1.x, _wgslsmith_f_op_f32(ceil(-966f)), 1575f, _wgslsmith_div_f32(arg_1.x, _wgslsmith_div_f32(207f, arg_1.x))), vec4<bool>(any(arg_0.wyw), true || (4294967295u != u_input.a), true, arg_0.x))) - _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-203f, arg_1.x, arg_1.x, 142f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-4518f, -650f, arg_1.x, -776f))), vec4<f32>(_wgslsmith_f_op_f32(abs(-693f)), 627f, _wgslsmith_f_op_f32(1000f - 489f), _wgslsmith_f_op_f32(-arg_1.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.x, arg_1.x, 1000f, -1080f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(1629f, arg_1.x, -2277f, 2036f)))));
    let var_4 = Struct_1(any(select(vec3<bool>(true, true, true), !select(vec3<bool>(true, var_1, var_1), vec3<bool>(var_0.a, var_2.a, true), false), global2[_wgslsmith_index_u32(25924u, 28u)])));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-127f, -1486f, true)), 1684f);
}

fn func_1() -> i32 {
    global1 = 0i;
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(288f + -1165f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-337f + 457f)) - -660f) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -2284f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1000f, 672f) + -1131f)))));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(select(select(vec4<bool>(global2[_wgslsmith_index_u32(u_input.a, 28u)], true, global2[_wgslsmith_index_u32(u_input.a, 28u)], global2[_wgslsmith_index_u32(1u, 28u)]), vec4<bool>(true, false, global2[_wgslsmith_index_u32(u_input.c.x, 28u)], global2[_wgslsmith_index_u32(11594u, 28u)]), global2[_wgslsmith_index_u32(u_input.a, 28u)]), vec4<bool>(true, global2[_wgslsmith_index_u32(0u, 28u)], global2[_wgslsmith_index_u32(u_input.a, 28u)], global2[_wgslsmith_index_u32(u_input.a, 28u)]), vec4<bool>(false, false, false, global2[_wgslsmith_index_u32(u_input.a, 28u)])), vec3<f32>(-755f, -728f, _wgslsmith_f_op_f32(f32(-1f) * -792f))))) * -449f);
    let var_1 = !select(!select(!vec3<bool>(true, global2[_wgslsmith_index_u32(u_input.a, 28u)], true), vec3<bool>(true, global2[_wgslsmith_index_u32(42264u, 28u)], true), select(vec3<bool>(false, false, true), vec3<bool>(true, global2[_wgslsmith_index_u32(29919u, 28u)], false), false)), select(vec3<bool>(any(vec4<bool>(global2[_wgslsmith_index_u32(u_input.c.x, 28u)], global2[_wgslsmith_index_u32(u_input.a, 28u)], global2[_wgslsmith_index_u32(u_input.c.x, 28u)], true)), global2[_wgslsmith_index_u32(~35508u, 28u)], false), !(!vec3<bool>(global2[_wgslsmith_index_u32(0u, 28u)], false, global2[_wgslsmith_index_u32(4294967295u, 28u)])), (true || global2[_wgslsmith_index_u32(u_input.c.x, 28u)]) && all(vec4<bool>(global2[_wgslsmith_index_u32(u_input.a, 28u)], global2[_wgslsmith_index_u32(3462u, 28u)], global2[_wgslsmith_index_u32(u_input.a, 28u)], false))), 1028f > _wgslsmith_f_op_f32(trunc(497f)));
    var var_2 = _wgslsmith_f_op_f32(1244f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1157f))));
    return u_input.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_1();
    var var_0 = Struct_1(!(!all(!vec4<bool>(global2[_wgslsmith_index_u32(u_input.a, 28u)], global2[_wgslsmith_index_u32(4294967295u, 28u)], global2[_wgslsmith_index_u32(2935u, 28u)], false))));
    let var_1 = !select(vec4<bool>(var_0.a, !global2[_wgslsmith_index_u32(4294967295u, 28u)], true, u_input.b.x != u_input.b.x), vec4<bool>(true, false, -1i <= _wgslsmith_mult_i32(u_input.b.x, 1i), true), !select(!vec4<bool>(true, var_0.a, var_0.a, false), vec4<bool>(true, true, false, false), vec4<bool>(var_0.a, true, global2[_wgslsmith_index_u32(0u, 28u)], var_0.a)));
    var var_2 = global0[_wgslsmith_index_u32(1u, 17u)];
    let var_3 = global0[_wgslsmith_index_u32(4294967295u, 17u)];
    var var_4 = Struct_1(true);
    var_2 = global0[_wgslsmith_index_u32(0u, 17u)];
    let var_5 = Struct_1(var_4.a);
    var var_6 = _wgslsmith_dot_vec3_i32(u_input.b.zyw | (vec3<i32>(u_input.b.x, u_input.b.x, -22398i) >> ((vec3<u32>(36950u, u_input.a, u_input.a) >> (vec3<u32>(1u, u_input.c.x, 1u) % vec3<u32>(32u))) % vec3<u32>(32u))), vec3<i32>(-10071i >> (~u_input.c.x % 32u), -5761i, abs(u_input.b.x))) & ~_wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(countOneBits(vec2<i32>(2147483647i, -2147483647i)), u_input.b.zz), firstTrailingBit(20443i), -(u_input.b.x | -44590i));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b, _wgslsmith_clamp_vec2_i32(vec2<i32>(-1i) * -u_input.b.wx, u_input.b.zy, _wgslsmith_clamp_vec2_i32(min(u_input.b.xx, u_input.b.yw), u_input.b.xz, vec2<i32>(-1i, 2147483647i))) | u_input.b.zz);
}


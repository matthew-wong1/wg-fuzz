struct Struct_1 {
    a: i32,
    b: vec2<f32>,
    c: vec3<bool>,
    d: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: i32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<bool, 11> = array<bool, 11>(false, true, false, true, true, false, true, true, true, false, false);

var<private> global2: vec4<i32>;

var<private> global3: array<Struct_1, 16> = array<Struct_1, 16>(Struct_1(2147483647i, vec2<f32>(-783f, -128f), vec3<bool>(false, false, false), false), Struct_1(2147483647i, vec2<f32>(-1000f, 411f), vec3<bool>(true, false, false), true), Struct_1(-37324i, vec2<f32>(117f, -1044f), vec3<bool>(true, true, false), false), Struct_1(-1i, vec2<f32>(-200f, 1000f), vec3<bool>(true, false, true), true), Struct_1(42947i, vec2<f32>(2349f, 1000f), vec3<bool>(true, false, true), true), Struct_1(-23056i, vec2<f32>(-457f, 1037f), vec3<bool>(false, false, true), false), Struct_1(-1i, vec2<f32>(2312f, 555f), vec3<bool>(false, true, false), false), Struct_1(-55906i, vec2<f32>(-1045f, 2057f), vec3<bool>(false, true, true), false), Struct_1(11995i, vec2<f32>(-1000f, 1636f), vec3<bool>(false, false, true), false), Struct_1(i32(-2147483648), vec2<f32>(-119f, 368f), vec3<bool>(true, false, true), true), Struct_1(-1i, vec2<f32>(395f, 554f), vec3<bool>(false, false, true), true), Struct_1(-91592i, vec2<f32>(966f, -359f), vec3<bool>(false, false, false), true), Struct_1(28389i, vec2<f32>(-1745f, -1069f), vec3<bool>(true, false, false), false), Struct_1(1i, vec2<f32>(-438f, 2074f), vec3<bool>(false, true, true), true), Struct_1(i32(-2147483648), vec2<f32>(1122f, 2422f), vec3<bool>(true, false, false), false), Struct_1(i32(-2147483648), vec2<f32>(-1049f, 452f), vec3<bool>(true, false, false), false));

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_2(arg_0: Struct_1) -> i32 {
    var var_0 = firstLeadingBit(firstLeadingBit(vec2<i32>(arg_0.a, 0i | u_input.c)));
    return ~(~_wgslsmith_div_i32(-29943i >> (0u % 32u), 1i) ^ _wgslsmith_mod_i32(u_input.c ^ var_0.x, ~_wgslsmith_dot_vec2_i32(global2.yw, vec2<i32>(global2.x, var_0.x))));
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> bool {
    let var_0 = Struct_1(u_input.c, arg_2.b, arg_2.c, !arg_2.d);
    global3 = array<Struct_1, 16>();
    global0 = ~_wgslsmith_sub_u32(1u, firstLeadingBit(_wgslsmith_dot_vec3_u32(reverseBits(u_input.d), _wgslsmith_add_vec3_u32(u_input.a, u_input.a))));
    let var_1 = !(!select(vec4<bool>(u_input.b.x > 38022u, any(vec4<bool>(false, true, true, arg_1.c.x)), true, any(vec2<bool>(true, arg_2.c.x))), select(select(vec4<bool>(false, false, global1[_wgslsmith_index_u32(1u, 11u)], var_0.d), vec4<bool>(true, false, true, global1[_wgslsmith_index_u32(4294967295u, 11u)]), arg_3.c.x), vec4<bool>(false, false, false, true), arg_2.d), !vec4<bool>(arg_3.c.x, false, var_0.c.x, arg_2.c.x)));
    var var_2 = true;
    return arg_1.c.x;
}

fn func_1(arg_0: Struct_1, arg_1: u32) -> StorageBuffer {
    var var_0 = Struct_1(-1i, _wgslsmith_f_op_vec2_f32(-arg_0.b), vec3<bool>(true, all(!(!arg_0.c)), global1[_wgslsmith_index_u32(46898u, 11u)] || true), all(select(select(vec4<bool>(true, arg_0.d, global1[_wgslsmith_index_u32(u_input.d.x, 11u)], arg_0.d), vec4<bool>(arg_0.c.x, true, global1[_wgslsmith_index_u32(28457u, 11u)], true), global1[_wgslsmith_index_u32(1u, 11u)]), select(vec4<bool>(arg_0.c.x, arg_0.d, true, false), vec4<bool>(global1[_wgslsmith_index_u32(u_input.b.x, 11u)], arg_0.c.x, arg_0.c.x, arg_0.d), global1[_wgslsmith_index_u32(u_input.b.x, 11u)]), global1[_wgslsmith_index_u32(arg_1 << (arg_1 % 32u), 11u)])) | !(global2.x == global2.x));
    let var_1 = 1675f;
    global3 = array<Struct_1, 16>();
    var var_2 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(ceil(arg_0.b.x)), _wgslsmith_f_op_f32(f32(-1f) * -603f), 416f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(549f, var_1, arg_0.b.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.b.x, var_1, 1000f) - vec3<f32>(var_0.b.x, var_1, -366f)), var_0.c)))));
    global2 = -select(abs(_wgslsmith_sub_vec4_i32(vec4<i32>(2528i, var_0.a, arg_0.a, var_0.a), vec4<i32>(arg_0.a, var_0.a, 12016i, var_0.a)) << (~vec4<u32>(arg_1, 68116u, arg_1, 12350u) % vec4<u32>(32u))), vec4<i32>(2147483647i, 2147483647i, func_2(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.b, vec2<u32>(arg_1, arg_1)), 16u)]), arg_0.a), vec4<bool>(func_3(vec4<i32>(u_input.c, global2.x, arg_0.a, global2.x), global3[_wgslsmith_index_u32(countOneBits(u_input.b.x), 16u)], Struct_1(1i, arg_0.b, vec3<bool>(var_0.c.x, arg_0.c.x, false), var_0.c.x), Struct_1(arg_0.a, vec2<f32>(354f, 2714f), vec3<bool>(false, true, global1[_wgslsmith_index_u32(arg_1, 11u)]), global1[_wgslsmith_index_u32(u_input.d.x, 11u)])), true, (i32(-1i) * -2147483647i) < func_2(Struct_1(-17481i, vec2<f32>(var_2.x, 1000f), vec3<bool>(false, false, true), var_0.d)), true));
    return StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_0.b.x * 393f))) - _wgslsmith_f_op_f32(max(var_0.b.x, _wgslsmith_f_op_f32(f32(-1f) * -180f)))), var_0.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a.x;
    let var_1 = global3[_wgslsmith_index_u32(~(~_wgslsmith_sub_u32(16125u, 0u)), 16u)];
    var var_2 = u_input.a.zx;
    var_2 = _wgslsmith_mult_vec2_u32(vec2<u32>(65063u, var_2.x), (select(_wgslsmith_sub_vec2_u32(u_input.b, vec2<u32>(4294967295u, var_2.x)), ~u_input.b, var_1.c.xz) & _wgslsmith_mult_vec2_u32(vec2<u32>(var_2.x, u_input.b.x), ~u_input.d.zz)) << (abs(~vec2<u32>(var_2.x, var_2.x) >> (u_input.a.zy % vec2<u32>(32u))) % vec2<u32>(32u)));
    var var_3 = global2.yxx;
    let var_4 = 1f;
    let x = u_input.a;
    s_output = func_1(global3[_wgslsmith_index_u32(abs(_wgslsmith_add_u32(~(~var_2.x), u_input.a.x)), 16u)], firstLeadingBit(~(1u & var_2.x) ^ ~u_input.d.x));
}


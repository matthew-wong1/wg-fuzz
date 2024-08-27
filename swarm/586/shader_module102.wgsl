struct Struct_1 {
    a: vec2<i32>,
    b: f32,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 16> = array<vec3<bool>, 16>(vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(false, false, true));

var<private> global1: array<i32, 7> = array<i32, 7>(-6571i, 13556i, 1i, -43334i, 1i, -37076i, 2147483647i);

var<private> global2: array<Struct_1, 26> = array<Struct_1, 26>(Struct_1(vec2<i32>(1i, 613i), -333f, vec3<u32>(54896u, 1u, 0u)), Struct_1(vec2<i32>(0i, 2147483647i), -1423f, vec3<u32>(0u, 42021u, 1u)), Struct_1(vec2<i32>(50759i, 2147483647i), -735f, vec3<u32>(16434u, 0u, 0u)), Struct_1(vec2<i32>(0i, 0i), -2358f, vec3<u32>(1u, 0u, 4294967295u)), Struct_1(vec2<i32>(11386i, i32(-2147483648)), -1000f, vec3<u32>(20609u, 0u, 4294967295u)), Struct_1(vec2<i32>(-10662i, 17337i), -839f, vec3<u32>(23040u, 40222u, 60767u)), Struct_1(vec2<i32>(-8626i, 4751i), 1385f, vec3<u32>(81074u, 4294967295u, 4294967295u)), Struct_1(vec2<i32>(2147483647i, -1i), 832f, vec3<u32>(1u, 56366u, 0u)), Struct_1(vec2<i32>(7410i, 2997i), -427f, vec3<u32>(0u, 1u, 0u)), Struct_1(vec2<i32>(0i, -64386i), 1000f, vec3<u32>(70175u, 124387u, 1u)), Struct_1(vec2<i32>(-1i, 21282i), 697f, vec3<u32>(18258u, 0u, 4294967295u)), Struct_1(vec2<i32>(-1i, -1i), -223f, vec3<u32>(29421u, 0u, 17046u)), Struct_1(vec2<i32>(-11212i, 1i), 184f, vec3<u32>(135717u, 0u, 14876u)), Struct_1(vec2<i32>(-70703i, 0i), 706f, vec3<u32>(24825u, 1u, 0u)), Struct_1(vec2<i32>(22874i, -27363i), 668f, vec3<u32>(0u, 1u, 4294967295u)), Struct_1(vec2<i32>(0i, 1i), 452f, vec3<u32>(34634u, 0u, 61346u)), Struct_1(vec2<i32>(i32(-2147483648), 2147483647i), -1002f, vec3<u32>(38461u, 18651u, 1u)), Struct_1(vec2<i32>(-3790i, 13810i), 1357f, vec3<u32>(0u, 1u, 0u)), Struct_1(vec2<i32>(32782i, 0i), 807f, vec3<u32>(0u, 44027u, 4294967295u)), Struct_1(vec2<i32>(-81040i, -1i), -643f, vec3<u32>(19155u, 0u, 0u)), Struct_1(vec2<i32>(20870i, i32(-2147483648)), -111f, vec3<u32>(5470u, 10988u, 12132u)), Struct_1(vec2<i32>(24168i, 10861i), 1597f, vec3<u32>(42840u, 0u, 88324u)), Struct_1(vec2<i32>(-47140i, -50698i), 163f, vec3<u32>(59180u, 36657u, 0u)), Struct_1(vec2<i32>(0i, -79067i), 233f, vec3<u32>(66262u, 1u, 4294967295u)), Struct_1(vec2<i32>(2184i, 43506i), -1461f, vec3<u32>(4294967295u, 0u, 65699u)), Struct_1(vec2<i32>(-1i, -1i), -545f, vec3<u32>(12768u, 0u, 1u)));

var<private> global3: vec4<u32> = vec4<u32>(38650u, 1u, 4294967295u, 91474u);

var<private> global4: Struct_1;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_1() -> Struct_1 {
    var var_0 = Struct_1(firstTrailingBit(~_wgslsmith_add_vec2_i32(vec2<i32>(-46791i, 54723i), global4.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-256f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(447f, 1337f, false))))), firstTrailingBit(u_input.c.zww));
    return global2[_wgslsmith_index_u32(~(~1u) >> (_wgslsmith_div_u32(~abs(countOneBits(7047u)), ~0u) % 32u), 26u)];
}

fn func_3(arg_0: vec2<i32>, arg_1: i32) -> Struct_1 {
    global2 = array<Struct_1, 26>();
    let var_0 = true;
    global4 = global2[_wgslsmith_index_u32(global4.c.x, 26u)];
    return global2[_wgslsmith_index_u32(u_input.a.x, 26u)];
}

fn func_2(arg_0: f32, arg_1: Struct_1, arg_2: Struct_1, arg_3: bool) -> vec2<i32> {
    let var_0 = -vec4<i32>(_wgslsmith_add_i32(arg_1.a.x, global1[_wgslsmith_index_u32(min(arg_1.c.x, arg_1.c.x), 7u)]), 0i, 1i, abs(arg_2.a.x) ^ (global4.a.x | 1i)) ^ vec4<i32>(~min(reverseBits(2147483647i), arg_1.a.x), abs(firstLeadingBit(-arg_1.a.x)), _wgslsmith_add_i32(_wgslsmith_div_i32(1i, global1[_wgslsmith_index_u32(arg_2.c.x, 7u)]), arg_2.a.x) >> ((~56917u >> (arg_1.c.x % 32u)) % 32u), arg_2.a.x);
    global2 = array<Struct_1, 26>();
    var var_1 = func_3(-_wgslsmith_mod_vec2_i32(arg_2.a, vec2<i32>(~2147483647i, ~var_0.x)), select(_wgslsmith_mult_i32(-2147483647i, max(2147483647i, global4.a.x)), global4.a.x, true));
    let var_2 = !select(select(select(!global0[_wgslsmith_index_u32(arg_2.c.x, 16u)], !global0[_wgslsmith_index_u32(33795u, 16u)], vec3<bool>(true, arg_3, false)), select(vec3<bool>(true, true, arg_3), !vec3<bool>(false, arg_3, true), vec3<bool>(arg_3, arg_3, false)), all(select(vec4<bool>(true, arg_3, arg_3, true), vec4<bool>(arg_3, arg_3, false, false), vec4<bool>(arg_3, arg_3, arg_3, true)))), select(global0[_wgslsmith_index_u32(arg_2.c.x, 16u)], select(!vec3<bool>(true, arg_3, true), select(global0[_wgslsmith_index_u32(1u, 16u)], vec3<bool>(arg_3, arg_3, false), global0[_wgslsmith_index_u32(83223u, 16u)]), vec3<bool>(false, arg_3, arg_3)), arg_3), !(!arg_3));
    var var_3 = Struct_1(u_input.b.xx, arg_0, abs(abs(global4.c)));
    return var_0.zz;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_div_vec2_i32(_wgslsmith_mod_vec2_i32(global4.a & vec2<i32>(3167i, global4.a.x), func_2(_wgslsmith_f_op_f32(-global4.b), func_1(), global2[_wgslsmith_index_u32(~0u, 26u)], true)), firstLeadingBit(max(-vec2<i32>(-4389i, 2147483647i), global4.a))), _wgslsmith_div_f32(-161f, _wgslsmith_div_f32(global4.b, _wgslsmith_f_op_f32(global4.b * _wgslsmith_f_op_f32(abs(global4.b))))), global3.xzw);
    var_0 = global2[_wgslsmith_index_u32(96597u, 26u)];
    let var_1 = Struct_1(-u_input.b.wy, global4.b, ~abs(var_0.c));
    let var_2 = func_3(var_0.a, select(6664i, -3171i, all(vec2<bool>(select(false, false, true), true))));
    let var_3 = Struct_1(vec2<i32>(_wgslsmith_sub_i32(1i, select(-2147483647i, _wgslsmith_sub_i32(var_2.a.x, -1i), false)), _wgslsmith_div_i32(_wgslsmith_sub_i32(func_3(global4.a, var_1.a.x).a.x, func_1().a.x), -1i)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(338f)))), 561f)), ~var_1.c);
    var_0 = func_1();
    let var_4 = (~(~var_1.c) >> (vec3<u32>(var_3.c.x, var_1.c.x, min(~var_2.c.x, global4.c.x)) % vec3<u32>(32u))) >> (vec3<u32>(var_3.c.x, ~30459u, _wgslsmith_sub_u32(~_wgslsmith_div_u32(global4.c.x, global4.c.x), 66733u)) % vec3<u32>(32u));
    global4 = func_3(var_3.a, u_input.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3.b, -757f)) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_2.b, var_0.b), vec2<f32>(-207f, 208f), vec2<bool>(true, true)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(657f * _wgslsmith_f_op_f32(func_3(vec2<i32>(1i, 1i), var_0.a.x).b - 228f))));
}


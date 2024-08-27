struct Struct_1 {
    a: bool,
    b: vec4<bool>,
    c: bool,
    d: i32,
    e: i32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
    b: Struct_2,
    c: vec3<bool>,
    d: Struct_2,
    e: Struct_2,
}

struct Struct_4 {
    a: vec4<bool>,
    b: vec4<u32>,
    c: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 9>;

var<private> global1: array<f32, 6>;

var<private> global2: vec4<u32>;

var<private> global3: array<vec4<bool>, 29> = array<vec4<bool>, 29>(vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, true));

var<private> global4: f32 = -587f;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: vec2<i32>) -> i32 {
    global0 = array<i32, 9>();
    var var_0 = select(!(!vec2<bool>(all(global3[_wgslsmith_index_u32(u_input.a, 29u)]), arg_0.x >= arg_0.x)), select(select(select(vec2<bool>(true, true), vec2<bool>(false, true), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false))), vec2<bool>(all(vec3<bool>(true, true, true)), any(global3[_wgslsmith_index_u32(18568u, 29u)])), select(true, true, true)), vec2<bool>((global0[_wgslsmith_index_u32(0u, 9u)] & 29216i) <= (arg_0.x << (42643u % 32u)), !(global1[_wgslsmith_index_u32(global2.x, 6u)] == global1[_wgslsmith_index_u32(u_input.a, 6u)])), select(vec2<bool>(true, true), !select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false)), true)), false);
    let var_1 = Struct_4(!vec4<bool>(any(vec2<bool>(var_0.x, var_0.x)), true, !var_0.x & (global2.x < 4294967295u), true), ~_wgslsmith_div_vec4_u32(~vec4<u32>(1u, global2.x, 0u, u_input.a), ~min(vec4<u32>(4294967295u, u_input.a, u_input.a, 0u), vec4<u32>(u_input.a, global2.x, 4294967295u, 1u))), Struct_3(select(global3[_wgslsmith_index_u32(~(~global2.x), 29u)], global3[_wgslsmith_index_u32(u_input.a, 29u)], !(!vec4<bool>(var_0.x, var_0.x, false, true))), Struct_2(arg_0, Struct_1(var_0.x, vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), all(vec3<bool>(var_0.x, true, var_0.x)), abs(arg_0.x), firstTrailingBit(global0[_wgslsmith_index_u32(global2.x, 9u)]))), select(vec3<bool>(var_0.x, true, var_0.x), select(vec3<bool>(true, true, var_0.x), vec3<bool>(false, true, true), true), true), Struct_2(vec2<i32>(u_input.b, _wgslsmith_dot_vec4_i32(vec4<i32>(-45005i, -2147483647i, 2147483647i, global0[_wgslsmith_index_u32(u_input.a, 9u)]), vec4<i32>(-25099i, global0[_wgslsmith_index_u32(23674u, 9u)], 46270i, 73653i))), Struct_1(all(vec2<bool>(var_0.x, false)), !global3[_wgslsmith_index_u32(1u, 29u)], false, 1i, u_input.b << (1u % 32u))), Struct_2(_wgslsmith_clamp_vec2_i32(arg_0, vec2<i32>(u_input.b, global0[_wgslsmith_index_u32(u_input.a, 9u)]), vec2<i32>(39042i, 19070i)) | (arg_0 >> (global2.yx % vec2<u32>(32u))), Struct_1(var_0.x, vec4<bool>(true, var_0.x, true, var_0.x), all(vec2<bool>(true, var_0.x)), 0i, global0[_wgslsmith_index_u32(u_input.a, 9u)]))));
    var var_2 = _wgslsmith_sub_u32(1u, firstTrailingBit(global2.x)) >> (~countOneBits(8022u) % 32u);
    let var_3 = arg_0.x;
    return var_1.c.b.b.e;
}

fn func_2(arg_0: Struct_3) -> u32 {
    global4 = -719f;
    var var_0 = vec2<i32>(u_input.b, -1618i);
    var_0 = arg_0.d.a;
    let var_1 = arg_0;
    let var_2 = vec3<i32>(_wgslsmith_sub_i32(-global0[_wgslsmith_index_u32(35851u, 9u)], func_3(abs(vec2<i32>(var_0.x, arg_0.b.a.x)) ^ arg_0.e.a)), 34177i, countOneBits(select(countOneBits(20072i), 0i & (arg_0.d.a.x | -26502i), arg_0.d.b.a)));
    return ~41187u;
}

fn func_1(arg_0: i32) -> vec4<bool> {
    var var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, global1[_wgslsmith_index_u32(2046u | (u_input.a ^ func_2(Struct_3(vec4<bool>(true, true, true, false), Struct_2(vec2<i32>(55551i, arg_0), Struct_1(true, global3[_wgslsmith_index_u32(u_input.a, 29u)], true, u_input.b, global0[_wgslsmith_index_u32(47148u, 9u)])), vec3<bool>(false, true, true), Struct_2(vec2<i32>(-1i, arg_0), Struct_1(true, global3[_wgslsmith_index_u32(global2.x, 29u)], true, u_input.b, -1835i)), Struct_2(vec2<i32>(-1i, -12068i), Struct_1(false, vec4<bool>(false, true, false, false), false, 23822i, global0[_wgslsmith_index_u32(1u, 9u)]))))), 6u)]) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(504f, 1713f)));
    let var_1 = Struct_3(vec4<bool>(!(!all(vec2<bool>(false, true))), select(true, any(select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, false), global3[_wgslsmith_index_u32(global2.x, 29u)])), true), false, any(vec4<bool>(all(vec3<bool>(true, true, false)), 1i <= global0[_wgslsmith_index_u32(global2.x, 9u)], false, select(false, false, true)))), Struct_2(vec2<i32>(_wgslsmith_sub_i32(i32(-1i) * -1i, max(arg_0, -110829i)), -4013i), Struct_1(false, vec4<bool>(true, true, true, true), false, u_input.b, _wgslsmith_dot_vec4_i32(reverseBits(vec4<i32>(-4523i, -17886i, 29458i, 0i)), vec4<i32>(global0[_wgslsmith_index_u32(global2.x, 9u)], arg_0, 2147483647i, 0i) & vec4<i32>(39734i, arg_0, u_input.b, global0[_wgslsmith_index_u32(u_input.a, 9u)])))), !select(vec3<bool>(any(vec3<bool>(false, false, false)), false, all(vec2<bool>(false, true))), !select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), true), !select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(false, false, false))), Struct_2(_wgslsmith_add_vec2_i32(-vec2<i32>(global0[_wgslsmith_index_u32(u_input.a, 9u)], 42337i), -vec2<i32>(u_input.b, arg_0)), Struct_1(true, vec4<bool>(true, true, true, true), true & (global0[_wgslsmith_index_u32(1u, 9u)] >= global0[_wgslsmith_index_u32(52949u, 9u)]), u_input.b, _wgslsmith_div_i32(0i & global0[_wgslsmith_index_u32(u_input.a, 9u)], u_input.b))), Struct_2(vec2<i32>(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(~global2.x, global2.x | 26317u), 9u)], -25919i), Struct_1(true, select(vec4<bool>(true, true, true, true), global3[_wgslsmith_index_u32(~4294967295u, 29u)], true), true, 6696i, u_input.b)));
    let var_2 = Struct_3(vec4<bool>(!(global2.x >= 44654u), false, var_1.b.b.c, all(var_1.d.b.b)), Struct_2(abs(vec2<i32>(25732i, 1i)) << (abs(global2.yy) % vec2<u32>(32u)), var_1.d.b), vec3<bool>(any(var_1.d.b.b.yx), select(true, all(var_1.a.xzy), var_1.d.b.a), var_1.d.b.c), Struct_2(-(firstLeadingBit(vec2<i32>(var_1.e.b.e, var_1.b.b.d)) >> (global2.xz % vec2<u32>(32u))), Struct_1(-15373i != abs(global0[_wgslsmith_index_u32(global2.x, 9u)]), vec4<bool>(var_1.a.x, var_1.d.b.d == arg_0, var_1.a.x, !var_1.c.x), true, 1i, func_3(-vec2<i32>(var_1.d.a.x, u_input.b)))), var_1.d);
    global4 = -504f;
    var_0 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-220f, 1969f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, 1112f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1[_wgslsmith_index_u32(u_input.a, 6u)], 950f) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1[_wgslsmith_index_u32(0u, 6u)], 339f))), vec2<f32>(-361f, -647f), vec2<bool>(u_input.b != var_2.d.a.x, all(var_1.c.zy)))) - _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, global1[_wgslsmith_index_u32(u_input.a, 6u)]))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(global1[_wgslsmith_index_u32(15782u, 6u)], global1[_wgslsmith_index_u32(global2.x, 6u)]))) - _wgslsmith_f_op_vec2_f32(max(vec2<f32>(242f, 1000f), vec2<f32>(global1[_wgslsmith_index_u32(global2.x, 6u)], -632f))))))), any(var_2.e.b.b.wz)));
    return vec4<bool>(false | var_2.a.x, false || var_1.e.b.c, var_2.c.x, var_2.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(select(vec4<bool>(true, true, true, true), !select(func_1(-51744i), vec4<bool>(true, true, true, true), true), !(!global3[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.a, u_input.a), 29u)])), func_1(func_3(~(~vec2<i32>(global0[_wgslsmith_index_u32(u_input.a, 9u)], u_input.b)))), true);
    var var_1 = !(!(!any(vec4<bool>(true, var_0.x, false, var_0.x))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(global0[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_div_u32(34096u, global2.x)) & 4294967295u, 9u)], 31363i));
}


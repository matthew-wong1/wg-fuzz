struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(-2245f, -250f, 2245f);

var<private> global1: array<i32, 5> = array<i32, 5>(1i, -1i, 1i, 0i, i32(-2147483648));

var<private> global2: Struct_2 = Struct_2(Struct_1(-1178f));

var<private> global3: array<Struct_1, 31> = array<Struct_1, 31>(Struct_1(-985f), Struct_1(-750f), Struct_1(-1720f), Struct_1(1774f), Struct_1(1000f), Struct_1(1122f), Struct_1(1000f), Struct_1(1825f), Struct_1(-956f), Struct_1(-922f), Struct_1(1000f), Struct_1(-1343f), Struct_1(-535f), Struct_1(-133f), Struct_1(-185f), Struct_1(-503f), Struct_1(883f), Struct_1(-2140f), Struct_1(-1037f), Struct_1(-625f), Struct_1(1363f), Struct_1(-942f), Struct_1(437f), Struct_1(-160f), Struct_1(1494f), Struct_1(843f), Struct_1(1606f), Struct_1(558f), Struct_1(-1000f), Struct_1(852f), Struct_1(105f));

var<private> global4: array<vec3<i32>, 30> = array<vec3<i32>, 30>(vec3<i32>(0i, -1i, -12857i), vec3<i32>(2848i, -1i, -1i), vec3<i32>(13826i, 1i, i32(-2147483648)), vec3<i32>(18440i, 10558i, 1i), vec3<i32>(i32(-2147483648), 1i, -13659i), vec3<i32>(i32(-2147483648), -81706i, 0i), vec3<i32>(0i, -48618i, -26189i), vec3<i32>(2147483647i, i32(-2147483648), 26607i), vec3<i32>(6670i, 0i, 47164i), vec3<i32>(2147483647i, 2147483647i, i32(-2147483648)), vec3<i32>(-35221i, 0i, 2147483647i), vec3<i32>(-1i, -10345i, -69502i), vec3<i32>(-1i, -23175i, -17987i), vec3<i32>(-1i, i32(-2147483648), -1i), vec3<i32>(42947i, 1371i, 0i), vec3<i32>(1i, -15571i, 1i), vec3<i32>(-42984i, -1i, -1i), vec3<i32>(-1i, -61287i, -28010i), vec3<i32>(-25486i, -1i, 1i), vec3<i32>(-1i, -42372i, i32(-2147483648)), vec3<i32>(14417i, 2147483647i, -1i), vec3<i32>(-1i, 19220i, -18030i), vec3<i32>(-1i, 1i, 33275i), vec3<i32>(13969i, 43220i, 0i), vec3<i32>(-21716i, -30119i, -36255i), vec3<i32>(14822i, -16303i, 46936i), vec3<i32>(25352i, 30862i, -1i), vec3<i32>(1i, 1i, 1i), vec3<i32>(-1i, -33767i, -28819i), vec3<i32>(5133i, -59039i, i32(-2147483648)));

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_2(arg_0: Struct_2, arg_1: Struct_1, arg_2: i32, arg_3: vec3<i32>) -> bool {
    var var_0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)))));
    global1 = array<i32, 5>();
    var var_1 = true;
    var var_2 = arg_0;
    return false;
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: bool) -> Struct_1 {
    let var_0 = Struct_2(global2.a);
    let var_1 = ~35791u;
    var var_2 = !vec4<bool>(arg_2, true, select(any(!vec4<bool>(arg_2, true, true, arg_2)), arg_2, func_2(Struct_2(arg_1), global2.a, global1[_wgslsmith_index_u32(u_input.a, 5u)] ^ -20008i, vec3<i32>(global1[_wgslsmith_index_u32(u_input.a, 5u)], arg_0.x, u_input.b.x))), true);
    global4 = array<vec3<i32>, 30>();
    var var_3 = _wgslsmith_f_op_vec2_f32(global0.yy - global0.yy);
    return Struct_1(_wgslsmith_f_op_f32(max(-670f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(1001f)), _wgslsmith_f_op_f32(sign(global0.x)))))))));
}

fn func_1(arg_0: f32) -> Struct_2 {
    global4 = array<vec3<i32>, 30>();
    let var_0 = func_3(abs(_wgslsmith_mod_vec4_i32(-u_input.b & -vec4<i32>(0i, global1[_wgslsmith_index_u32(u_input.a, 5u)], u_input.b.x, u_input.b.x), -u_input.b << (min(vec4<u32>(u_input.a, 1u, u_input.a, u_input.a), vec4<u32>(4294967295u, u_input.a, u_input.a, u_input.a)) % vec4<u32>(32u)))), global3[_wgslsmith_index_u32(u_input.a & ~countOneBits(u_input.a), 31u)], any(vec3<bool>(!select(true, true, false), all(vec3<bool>(true, false, true)), select(func_2(Struct_2(global3[_wgslsmith_index_u32(u_input.a, 31u)]), global3[_wgslsmith_index_u32(u_input.a, 31u)], u_input.b.x, vec3<i32>(1i, global1[_wgslsmith_index_u32(72556u, 5u)], u_input.b.x)), any(vec2<bool>(true, false)), true))));
    global4 = array<vec3<i32>, 30>();
    global1 = array<i32, 5>();
    global0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(global2.a.a + _wgslsmith_f_op_f32(max(var_0.a, global2.a.a))), var_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-680f, 1128f)))) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(vec3<f32>(arg_0, -1032f, global0.x), vec3<f32>(-1471f, -941f, global2.a.a)))), vec3<f32>(-1000f, -2008f, 1864f))), vec3<f32>(_wgslsmith_f_op_f32(round(global0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1162f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a)) * _wgslsmith_div_f32(arg_0, global2.a.a))));
    return Struct_2(Struct_1(_wgslsmith_f_op_f32(-global0.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(step(global2.a.a, global2.a.a)));
    global2 = func_1(286f);
    let var_1 = global3[_wgslsmith_index_u32(~4294967295u, 31u)];
    var var_2 = func_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1034f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(global0.x)), _wgslsmith_f_op_f32(max(-1396f, var_0.a)))))));
    let var_3 = global2.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global2.a.a, var_3.a, var_3.a, -282f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(155f, global0.x, 134f, global2.a.a)), true)) * vec4<f32>(1290f, _wgslsmith_f_op_f32(2366f - var_0.a), global2.a.a, _wgslsmith_f_op_f32(exp2(var_1.a)))) * vec4<f32>(1f, _wgslsmith_f_op_f32(-1f), -316f, var_1.a)), _wgslsmith_f_op_f32(-var_1.a), _wgslsmith_clamp_vec3_u32(vec3<u32>(~11594u, ~6092u, select(1u, max(0u, u_input.a), true)), reverseBits(min(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a, u_input.a, 4294967295u), vec3<u32>(4294967295u, u_input.a, 0u)), vec3<u32>(1u, 13679u, u_input.a) | vec3<u32>(u_input.a, 42352u, u_input.a))), _wgslsmith_sub_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a, 17515u, 1u), reverseBits(vec3<u32>(u_input.a, 14819u, 54533u))), reverseBits(vec3<u32>(60326u, u_input.a, 13245u)))));
}


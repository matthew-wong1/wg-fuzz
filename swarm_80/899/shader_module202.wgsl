struct Struct_1 {
    a: vec3<bool>,
    b: i32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: vec3<bool>,
    d: vec2<bool>,
    e: bool,
}

struct UniformBuffer {
    a: i32,
    b: u32,
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

var<private> global0: array<vec4<bool>, 19>;

var<private> global1: array<Struct_2, 18> = array<Struct_2, 18>(Struct_2(true, Struct_1(vec3<bool>(false, true, false), 0i), vec3<bool>(true, false, true), vec2<bool>(false, true), true), Struct_2(true, Struct_1(vec3<bool>(true, false, true), -21038i), vec3<bool>(true, true, true), vec2<bool>(true, true), true), Struct_2(true, Struct_1(vec3<bool>(true, true, false), i32(-2147483648)), vec3<bool>(false, true, true), vec2<bool>(false, true), true), Struct_2(false, Struct_1(vec3<bool>(false, true, false), 2147483647i), vec3<bool>(true, true, false), vec2<bool>(true, true), true), Struct_2(true, Struct_1(vec3<bool>(false, false, false), 2147483647i), vec3<bool>(true, true, false), vec2<bool>(true, true), true), Struct_2(true, Struct_1(vec3<bool>(false, true, false), -18312i), vec3<bool>(false, true, false), vec2<bool>(false, true), false), Struct_2(false, Struct_1(vec3<bool>(true, false, false), 2147483647i), vec3<bool>(false, true, false), vec2<bool>(false, true), true), Struct_2(true, Struct_1(vec3<bool>(false, false, false), -68524i), vec3<bool>(false, false, true), vec2<bool>(true, true), false), Struct_2(false, Struct_1(vec3<bool>(true, true, true), 1i), vec3<bool>(true, false, true), vec2<bool>(false, true), false), Struct_2(true, Struct_1(vec3<bool>(true, false, false), 14847i), vec3<bool>(true, false, true), vec2<bool>(false, true), true), Struct_2(false, Struct_1(vec3<bool>(true, false, false), 2147483647i), vec3<bool>(false, true, false), vec2<bool>(false, false), false), Struct_2(false, Struct_1(vec3<bool>(false, false, true), 34137i), vec3<bool>(true, true, false), vec2<bool>(false, true), false), Struct_2(false, Struct_1(vec3<bool>(true, false, false), 8548i), vec3<bool>(false, false, true), vec2<bool>(false, false), false), Struct_2(true, Struct_1(vec3<bool>(true, true, true), 2147483647i), vec3<bool>(true, false, false), vec2<bool>(true, false), false), Struct_2(false, Struct_1(vec3<bool>(false, false, true), -1i), vec3<bool>(false, false, false), vec2<bool>(false, true), true), Struct_2(false, Struct_1(vec3<bool>(true, true, false), 2147483647i), vec3<bool>(true, false, true), vec2<bool>(true, false), false), Struct_2(false, Struct_1(vec3<bool>(true, true, true), -1i), vec3<bool>(false, true, true), vec2<bool>(false, true), true), Struct_2(false, Struct_1(vec3<bool>(false, false, false), i32(-2147483648)), vec3<bool>(false, true, false), vec2<bool>(false, false), true));

var<private> global2: vec3<f32>;

var<private> global3: array<u32, 11>;

var<private> global4: vec3<i32>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> f32 {
    global3 = array<u32, 11>();
    var var_0 = any(vec3<bool>(true, true, true));
    var var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -305f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(261f)), _wgslsmith_f_op_f32(-609f * global2.x)))));
    let var_2 = -2147483647i;
    let var_3 = global1[_wgslsmith_index_u32(~_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(45555u, u_input.b, 29605u, 1u)), abs(vec4<u32>(global3[_wgslsmith_index_u32(1u, 11u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.b, 11u)], 11u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 11u)], 11u)], 11u)], global3[_wgslsmith_index_u32(3882u, 11u)]) & vec4<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(54355u, 11u)], 11u)], 11u)], u_input.b, global3[_wgslsmith_index_u32(6033u, 11u)], global3[_wgslsmith_index_u32(56657u, 11u)]))), _wgslsmith_mod_u32(global3[_wgslsmith_index_u32(4294967295u, 11u)], min(global3[_wgslsmith_index_u32(1u, 11u)], global3[_wgslsmith_index_u32(4294967295u, 11u)]) | _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.b, 34785u, 1u), vec4<u32>(global3[_wgslsmith_index_u32(48764u, 11u)], global3[_wgslsmith_index_u32(70396u, 11u)], 1u, 1u)))), 18u)];
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(239f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -618f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(global2.x, global2.x), _wgslsmith_div_f32(-436f, global2.x)) * 1f)));
}

fn func_2() -> vec3<f32> {
    var var_0 = Struct_1(select(vec3<bool>(true | all(vec4<bool>(false, true, true, true)), true, -34103i <= ~u_input.a), vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), ~4294967295u > u_input.b)), u_input.a);
    global1 = array<Struct_2, 18>();
    global1 = array<Struct_2, 18>();
    let var_1 = ~var_0.b;
    let var_2 = select(0u, (~(~59485u) ^ global3[_wgslsmith_index_u32(~(~global3[_wgslsmith_index_u32(1u, 11u)]), 11u)]) & 0u, false);
    return vec3<f32>(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(abs(-885f)));
}

fn func_1(arg_0: f32, arg_1: vec3<u32>, arg_2: u32, arg_3: Struct_1) -> vec3<bool> {
    global2 = _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(arg_0, -782f, 246f))) * _wgslsmith_div_vec3_f32(vec3<f32>(1952f, -760f, -471f), vec3<f32>(277f, global2.x, -1409f))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-1989f, -658f, -1709f), vec3<f32>(global2.x, -457f, 1000f)) - vec3<f32>(547f, arg_0, global2.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, 1000f, global2.x)) + _wgslsmith_f_op_vec3_f32(func_2())) + _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(268f, -1243f, 1026f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(745f, arg_0, 1292f)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1487f, arg_0, -334f))))))));
    global4 = max(vec3<i32>(-firstTrailingBit(0i), -34986i, -(~(-19645i))) << (arg_1 % vec3<u32>(32u)), min(vec3<i32>(global4.x, 8264i, ~abs(u_input.a)), vec3<i32>(global4.x, -1i, firstLeadingBit(global4.x | 1i))));
    let var_0 = arg_1.yz;
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -460f);
    var var_2 = global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(39704u, u_input.b), 18u)];
    return select(vec3<bool>(all(!global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(4294967295u, global3[_wgslsmith_index_u32(arg_2, 11u)], 99652u), 19u)]), var_2.a, true), vec3<bool>(true, any(vec4<bool>(select(true, arg_3.a.x, var_2.b.a.x), var_2.b.a.x, false, all(vec3<bool>(arg_3.a.x, false, var_2.c.x)))), true), !var_2.b.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(select(vec3<bool>(true, any(vec2<bool>(true, true)), all(vec2<bool>(true, true))), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), func_1(-1177f, vec3<u32>(897u, u_input.b, global3[_wgslsmith_index_u32(0u, 11u)]), 0u, Struct_1(vec3<bool>(false, false, false), u_input.a))), !(!select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(true, true, true)))), select(vec3<bool>(all(vec2<bool>(true, true)), true, any(select(vec4<bool>(false, true, true, false), global0[_wgslsmith_index_u32(u_input.b, 19u)], vec4<bool>(false, false, true, false)))), vec3<bool>(func_1(global2.x, max(vec3<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 11u)], 11u)], 12087u, 45287u), vec3<u32>(global3[_wgslsmith_index_u32(58301u, 11u)], 49653u, 1u)), 25838u, Struct_1(vec3<bool>(true, false, true), global4.x)).x, false, true), !select(vec3<bool>(false, false, true), select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(false, false, false)), vec3<bool>(false, true, false))), all(vec4<bool>(any(vec3<bool>(true, true, true)), any(vec4<bool>(false, true, true, false)), any(vec2<bool>(true, false)), -u_input.a >= ~(-2147483647i))));
    let var_1 = Struct_1(select(vec3<bool>(select(func_1(240f, vec3<u32>(u_input.b, 15014u, 13306u), u_input.b, Struct_1(var_0, 2147483647i)).x, true, var_0.x), var_0.x, var_0.x), var_0, var_0), 2147483647i);
    var var_2 = global1[_wgslsmith_index_u32(~global3[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_clamp_u32(u_input.b, 44222u, 0u), ~abs(abs(4294967295u))), 11u)], 18u)];
    var var_3 = global1[_wgslsmith_index_u32(51718u, 18u)];
    var var_4 = vec3<bool>(false, true, !(!(!(var_1.a.x || var_1.a.x))));
    let var_5 = 12789u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(global2.xz * vec2<f32>(1345f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + 1195f))), 976f);
}


struct Struct_1 {
    a: f32,
    b: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: i32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(265f, 79483u);

var<private> global1: array<vec4<i32>, 19> = array<vec4<i32>, 19>(vec4<i32>(39635i, i32(-2147483648), -14446i, -1i), vec4<i32>(5498i, 26738i, -26262i, 1i), vec4<i32>(-2888i, 1i, 0i, 2147483647i), vec4<i32>(-1i, 5680i, -1i, 2147483647i), vec4<i32>(11289i, 1i, 23443i, -1i), vec4<i32>(21388i, 44104i, 1i, 1i), vec4<i32>(19907i, 1i, -40901i, 1i), vec4<i32>(1i, 65901i, 0i, -20313i), vec4<i32>(-20546i, -76301i, i32(-2147483648), 12973i), vec4<i32>(-9349i, -53633i, -3574i, -11800i), vec4<i32>(1i, i32(-2147483648), -14740i, 16174i), vec4<i32>(-23434i, -20366i, -85941i, 0i), vec4<i32>(15336i, 2147483647i, 40641i, 1i), vec4<i32>(35592i, -1i, i32(-2147483648), -25882i), vec4<i32>(35448i, 2147483647i, 58724i, 0i), vec4<i32>(-18417i, -52500i, 1i, i32(-2147483648)), vec4<i32>(i32(-2147483648), 2147483647i, -1i, -1i), vec4<i32>(72007i, 6352i, -22330i, 0i), vec4<i32>(i32(-2147483648), i32(-2147483648), 42650i, 1i));

var<private> global2: array<vec3<u32>, 20>;

var<private> global3: Struct_1 = Struct_1(1000f, 8596u);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: f32) -> Struct_1 {
    global1 = array<vec4<i32>, 19>();
    let var_0 = global0.b;
    var var_1 = Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_0))), _wgslsmith_f_op_f32(f32(-1f) * -483f))), global3.b);
    global2 = array<vec3<u32>, 20>();
    var_1 = Struct_1(arg_0, min(global3.b, 0u));
    return Struct_1(_wgslsmith_f_op_f32(abs(arg_0)), var_1.b);
}

fn func_1(arg_0: vec2<f32>, arg_1: u32) -> u32 {
    let var_0 = func_2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -174f)))))));
    var var_1 = u_input.b >> (_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, global0.b, 36546u, 4294967295u), ~vec4<u32>(global0.b, 35981u, var_0.b, global3.b)) & 0u, arg_1) % 32u);
    global1 = array<vec4<i32>, 19>();
    var var_2 = ~_wgslsmith_sub_vec2_u32(abs((vec2<u32>(14652u, u_input.a) | vec2<u32>(38135u, 30568u)) & ~vec2<u32>(1u, 1726u)), vec2<u32>(arg_1, 39375u));
    var var_3 = global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(~abs(_wgslsmith_mod_u32(4924u, 26000u)), 20405u), 19u)];
    return var_2.x;
}

fn func_3(arg_0: vec4<u32>) -> Struct_1 {
    var var_0 = global0.a;
    global3 = func_2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-235f * global3.a))))));
    let var_1 = global2[_wgslsmith_index_u32(global3.b, 20u)] & vec3<u32>(5504u, 1u, ~_wgslsmith_mod_u32(firstLeadingBit(global3.b), global0.b));
    global3 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -313f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-436f)))), 4294967295u);
    global3 = func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(func_2(global3.a).a, _wgslsmith_f_op_f32(ceil(1243f))))) - 1417f));
    return Struct_1(func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global0.a)))).a, _wgslsmith_sub_u32(1u, var_1.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_3(vec4<u32>(_wgslsmith_mod_u32(global0.b, global3.b), 10686u, func_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-597f, -185f), vec2<f32>(371f, global0.a), false))), ~global3.b), ~(~u_input.a)));
    var var_1 = all(vec3<bool>(true, select(true, _wgslsmith_div_f32(global3.a, var_0.a) != -283f, true && all(vec2<bool>(false, true))), !any(select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true)))));
    global2 = array<vec3<u32>, 20>();
    var var_2 = func_2(func_3(~(~vec4<u32>(global0.b, 1u, global0.b, 23304u) << (~vec4<u32>(global3.b, global0.b, var_0.b, u_input.a) % vec4<u32>(32u)))).a);
    var_1 = true;
    var var_3 = _wgslsmith_f_op_f32(global3.a * _wgslsmith_f_op_f32(-116f - var_0.a));
    global3 = func_3(~select(vec4<u32>(reverseBits(var_2.b), abs(u_input.a), 0u, global3.b), _wgslsmith_add_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(global0.b, 0u, 1u, global0.b), vec4<u32>(global0.b, global0.b, 19091u, var_2.b), vec4<u32>(0u, 1u, 78517u, 4294967295u)), vec4<u32>(global3.b, 4294967295u, 33964u, u_input.a)), !select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, true))));
    let x = u_input.a;
    s_output = StorageBuffer(929f, vec4<i32>(u_input.b, 2147483647i, _wgslsmith_dot_vec3_i32(max(_wgslsmith_add_vec3_i32(vec3<i32>(5993i, u_input.b, u_input.b), vec3<i32>(30611i, -33413i, u_input.b)), vec3<i32>(-55314i, 717i, u_input.b)), ~vec3<i32>(-4371i, 54340i, 22355i) >> ((global2[_wgslsmith_index_u32(7424u, 20u)] >> (vec3<u32>(4294967295u, var_0.b, global0.b) % vec3<u32>(32u))) % vec3<u32>(32u))), _wgslsmith_sub_i32(u_input.b, -2147483647i)), _wgslsmith_div_i32(-(~u_input.b), -1i), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.a, -995f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(global3.a, global3.a) - vec2<f32>(var_0.a, -562f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.a, 1599f) + vec2<f32>(-195f, var_2.a))))));
}


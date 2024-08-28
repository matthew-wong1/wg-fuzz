struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec3<u32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 29> = array<vec2<f32>, 29>(vec2<f32>(2210f, -795f), vec2<f32>(522f, -1689f), vec2<f32>(-412f, -158f), vec2<f32>(-829f, -1000f), vec2<f32>(-1000f, -787f), vec2<f32>(-429f, -359f), vec2<f32>(-1000f, 978f), vec2<f32>(666f, 545f), vec2<f32>(1564f, -174f), vec2<f32>(489f, -888f), vec2<f32>(353f, -216f), vec2<f32>(-706f, 728f), vec2<f32>(-220f, -1401f), vec2<f32>(2329f, 589f), vec2<f32>(-984f, 508f), vec2<f32>(1000f, -191f), vec2<f32>(-2168f, -176f), vec2<f32>(-713f, -1037f), vec2<f32>(-274f, -1946f), vec2<f32>(-389f, -2085f), vec2<f32>(100f, -1000f), vec2<f32>(-404f, 597f), vec2<f32>(-771f, 380f), vec2<f32>(300f, -840f), vec2<f32>(-457f, 2093f), vec2<f32>(1000f, -1221f), vec2<f32>(-1000f, 428f), vec2<f32>(-1091f, 674f), vec2<f32>(1849f, -266f));

var<private> global1: f32;

var<private> global2: Struct_1 = Struct_1(true);

var<private> global3: array<u32, 1>;

var<private> global4: Struct_1;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_2() -> Struct_1 {
    global2 = Struct_1(true);
    let var_0 = global0[_wgslsmith_index_u32(~select(~u_input.d.x, ~u_input.d.x, all(vec3<bool>(!global4.a, global2.a, global2.a))), 29u)];
    global3 = array<u32, 1>();
    let var_1 = firstTrailingBit(_wgslsmith_clamp_u32(4294967295u, 41786u, 1731u));
    let var_2 = Struct_1(!(!global2.a & !any(vec3<bool>(global4.a, true, global4.a))));
    return var_2;
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_1) -> Struct_1 {
    var var_0 = Struct_1(global4.a);
    var var_1 = -countOneBits(~(~u_input.a));
    let var_2 = func_2();
    let var_3 = _wgslsmith_f_op_vec2_f32(global0[_wgslsmith_index_u32(~(~u_input.d.x << (min(min(26080u, 4294967295u), global3[_wgslsmith_index_u32(u_input.c.x, 1u)] >> (4294967295u % 32u)) % 32u)), 29u)] - _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(343f - -1283f), _wgslsmith_f_op_f32(-364f - -529f)), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-global0[_wgslsmith_index_u32(u_input.c.x, 29u)]), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-908f, 1288f))))))));
    let var_4 = ~(vec4<u32>((global3[_wgslsmith_index_u32(1u, 1u)] & u_input.c.x) << (~12193u % 32u), _wgslsmith_add_u32(17172u, global3[_wgslsmith_index_u32(u_input.c.x << (u_input.c.x % 32u), 1u)]), _wgslsmith_mod_u32(u_input.c.x, 68912u) | 1u, countOneBits(global3[_wgslsmith_index_u32(4294967295u, 1u)])) | ~vec4<u32>(41678u, 4294967295u, 53674u, ~u_input.d.x));
    return func_2();
}

fn func_1(arg_0: u32) -> Struct_1 {
    var var_0 = Struct_1(false);
    var var_1 = 1i;
    global1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-330f)))))));
    global2 = func_3(-u_input.b, func_2());
    var var_2 = Struct_1(true);
    return func_3(firstLeadingBit(u_input.b), Struct_1(!var_0.a));
}

fn func_4(arg_0: bool, arg_1: vec3<u32>, arg_2: Struct_1, arg_3: vec2<bool>) -> vec2<bool> {
    let var_0 = -_wgslsmith_sub_vec4_i32(u_input.b & select(u_input.b, u_input.b, arg_3.x), firstTrailingBit(-u_input.b) | u_input.b);
    var var_1 = func_1(global3[_wgslsmith_index_u32(max(~(~92655u), ~(global3[_wgslsmith_index_u32(arg_1.x, 1u)] << (0u % 32u))), 1u)]);
    var var_2 = select(!vec2<bool>(true, arg_2.a), arg_3, select(arg_2.a, true, true));
    global0 = array<vec2<f32>, 29>();
    var var_3 = vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(-600f))))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(-2603f, 296f)), _wgslsmith_f_op_f32(f32(-1f) * -166f), false)) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(308f * -476f), _wgslsmith_f_op_f32(f32(-1f) * -1067f)))))));
    return arg_3;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.c.x;
    let var_1 = global2.a;
    global3 = array<u32, 1>();
    var var_2 = Struct_1(false);
    var var_3 = select(func_4(select(true, global2.a, all(vec4<bool>(var_2.a, var_2.a, true, var_2.a))), ~(u_input.c >> (u_input.c % vec3<u32>(32u))), func_1(_wgslsmith_add_u32(u_input.d.x, 13061u)), vec2<bool>(var_2.a, 36796i != u_input.a)), func_4(var_2.a, vec3<u32>(0u, 0u | u_input.c.x, ~(~71890u)), func_2(), !select(!vec2<bool>(var_2.a, var_2.a), vec2<bool>(global4.a, true), !vec2<bool>(global4.a, false))), func_4(global4.a, _wgslsmith_sub_vec3_u32(vec3<u32>(~u_input.d.x, ~100380u, ~71804u), u_input.c), Struct_1(global4.a), !select(func_4(true, u_input.c, Struct_1(false), vec2<bool>(true, true)), !vec2<bool>(global2.a, global2.a), all(vec4<bool>(false, false, global4.a, true)))));
    let var_4 = func_1(~_wgslsmith_mod_u32(_wgslsmith_clamp_u32(17464u, 1u, global3[_wgslsmith_index_u32(u_input.d.x, 1u)]) & firstLeadingBit(global3[_wgslsmith_index_u32(1u, 1u)]), u_input.c.x));
    global3 = array<u32, 1>();
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(global3[_wgslsmith_index_u32(firstLeadingBit(u_input.d.x), 1u)], ~_wgslsmith_mult_u32(global3[_wgslsmith_index_u32(38139u >> (global3[_wgslsmith_index_u32(u_input.d.x, 1u)] % 32u), 1u)], reverseBits(4294967295u)), ~58142u, _wgslsmith_mult_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(17594u, 1u)], 1u)], global3[_wgslsmith_index_u32(u_input.d.x, 1u)], u_input.c.x), reverseBits(vec3<u32>(u_input.d.x, 19712u, global3[_wgslsmith_index_u32(45250u, 1u)]))), 1u)], 1u)], ~1u)), -54843i, 336f, u_input.d.x);
}


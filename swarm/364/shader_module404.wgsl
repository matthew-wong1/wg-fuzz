struct Struct_1 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 24>;

var<private> global1: array<u32, 29>;

var<private> global2: u32 = 0u;

var<private> global3: vec2<i32> = vec2<i32>(i32(-2147483648), 2147483647i);

var<private> global4: array<i32, 5> = array<i32, 5>(i32(-2147483648), -1i, 19904i, -1i, i32(-2147483648));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_2() -> Struct_1 {
    global1 = array<u32, 29>();
    global3 = reverseBits(~abs(vec2<i32>(global4[_wgslsmith_index_u32(min(38721u, 4294967295u), 5u)], 28361i)));
    global4 = array<i32, 5>();
    let var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(501f, -1014f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1717f * -1383f) + _wgslsmith_f_op_f32(-109f - 797f)) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -218f))))));
    return Struct_1(u_input.b.zy);
}

fn func_3(arg_0: Struct_1, arg_1: vec3<u32>) -> u32 {
    global2 = 122111u;
    var var_0 = 228f;
    var var_1 = all(vec2<bool>(true, true));
    var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -181f), _wgslsmith_f_op_f32(select(986f, -2211f, false))))))), _wgslsmith_f_op_f32(-1f)));
    global2 = 1834u << (reverseBits(global1[_wgslsmith_index_u32(max(firstTrailingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(arg_1.x, 29u)], u_input.c, arg_1.x, 0u), vec4<u32>(arg_1.x, global1[_wgslsmith_index_u32(0u, 29u)], global1[_wgslsmith_index_u32(0u, 29u)], 70501u))), ~_wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.x, 40019u, global1[_wgslsmith_index_u32(1u, 29u)], arg_0.a.x), vec4<u32>(91192u, 0u, arg_0.a.x, u_input.c))), 29u)]) % 32u);
    return 70372u;
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: u32, arg_3: i32) -> Struct_1 {
    global0 = array<Struct_1, 24>();
    let var_0 = Struct_1(~vec2<u32>(abs(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 25514u, arg_2), vec3<u32>(global1[_wgslsmith_index_u32(20668u, 29u)], 0u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(75275u, 29u)], 29u)], 29u)])), 29u)]), ~(~arg_0.a.x)));
    let var_1 = func_2();
    global0 = array<Struct_1, 24>();
    global2 = _wgslsmith_sub_u32(var_1.a.x, _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(90262u, 1u, 14962u, 9503u), ~firstTrailingBit(vec4<u32>(var_1.a.x, 4294967295u, 1u, 73668u))), ~vec4<u32>(~0u, ~1u, firstTrailingBit(72823u), min(44944u, global1[_wgslsmith_index_u32(u_input.b.x, 29u)]))));
    return Struct_1(abs(_wgslsmith_add_vec2_u32(~vec2<u32>(1u, var_1.a.x), _wgslsmith_sub_vec2_u32(vec2<u32>(3397u, arg_0.a.x), u_input.b.yy))));
}

fn func_1(arg_0: i32, arg_1: Struct_1, arg_2: vec4<f32>, arg_3: vec4<i32>) -> Struct_1 {
    let var_0 = arg_3.x;
    var var_1 = -11600i;
    var var_2 = global4[_wgslsmith_index_u32(1u, 5u)] | ~reverseBits(u_input.a.x);
    global0 = array<Struct_1, 24>();
    return func_4(global0[_wgslsmith_index_u32(func_3(func_2(), vec3<u32>(~arg_1.a.x, u_input.b.x, _wgslsmith_mod_u32(0u, _wgslsmith_clamp_u32(94833u, 4294967295u, 0u)))), 24u)], _wgslsmith_dot_vec2_i32(min(vec2<i32>(firstLeadingBit(-2147483647i), _wgslsmith_mod_i32(global3.x, -16376i)), vec2<i32>(i32(-1i) * -1i, u_input.a.x)), -(~vec2<i32>(global3.x, arg_3.x))), ~(~_wgslsmith_mod_u32(u_input.c, _wgslsmith_div_u32(global1[_wgslsmith_index_u32(1u, 29u)], 4294967295u))), select(var_0, _wgslsmith_mod_i32(_wgslsmith_div_i32(2147483647i, global3.x), select(min(global4[_wgslsmith_index_u32(arg_1.a.x, 5u)], global4[_wgslsmith_index_u32(89747u, 5u)]), arg_3.x << (u_input.c % 32u), true)), (arg_2.x != arg_2.x) && (~(-10538i) < _wgslsmith_div_i32(global3.x, global4[_wgslsmith_index_u32(24190u, 5u)]))));
}

fn func_5(arg_0: bool, arg_1: Struct_1, arg_2: i32, arg_3: Struct_1) -> bool {
    var var_0 = Struct_1(~_wgslsmith_add_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(1u, 36268u), vec2<u32>(arg_1.a.x, global1[_wgslsmith_index_u32(arg_1.a.x, 29u)])), _wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, arg_1.a.x), u_input.b.zy) | (vec2<u32>(3433u, global1[_wgslsmith_index_u32(0u, 29u)]) >> (u_input.b.yy % vec2<u32>(32u)))));
    let var_1 = arg_0;
    let var_2 = Struct_1(_wgslsmith_add_vec2_u32(~_wgslsmith_div_vec2_u32(~vec2<u32>(u_input.b.x, global1[_wgslsmith_index_u32(var_0.a.x, 29u)]), arg_1.a), vec2<u32>(~_wgslsmith_mod_u32(u_input.b.x, arg_1.a.x), max(4294967295u, 11468u) ^ var_0.a.x)));
    var var_3 = arg_3;
    var var_4 = u_input.a;
    return true || arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(firstTrailingBit(u_input.b | _wgslsmith_sub_vec3_u32(u_input.b, u_input.b)) & ~_wgslsmith_sub_vec3_u32(u_input.b, u_input.b));
    let var_1 = global0[_wgslsmith_index_u32(~u_input.b.x, 24u)];
    global1 = array<u32, 29>();
    let var_2 = vec4<bool>(true, any(vec4<bool>(func_5(true, global0[_wgslsmith_index_u32(abs(34686u), 24u)], _wgslsmith_add_i32(13218i, u_input.a.x), func_1(global3.x, global0[_wgslsmith_index_u32(u_input.c, 24u)], vec4<f32>(-912f, 562f, 1000f, -324f), vec4<i32>(global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 29u)], 5u)], 2935i, 35768i, global4[_wgslsmith_index_u32(8639u, 5u)]))), any(vec3<bool>(true, true, true)), any(vec4<bool>(true, true, true, true)), true)), true && all(select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), true)), false);
    let var_3 = var_2.x;
    var var_4 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-718f, 1191f, 919f, -1207f))), vec4<f32>(1000f, 1000f, -139f, 555f), vec4<bool>(var_2.x, var_3, false, var_2.x))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-2695f, 1341f, 1085f, 1275f) * _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-631f, 845f, -706f, 379f))))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-352f, -148f, _wgslsmith_f_op_f32(trunc(-2635f)), 233f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1684f, -122f, 436f, 1545f)) - vec4<f32>(3167f, -217f, -1278f, 609f)), var_2)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, 1130f, 1000f, 2045f) + vec4<f32>(1030f, -623f, -315f, -1341f)))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(1183f, -1054f, 122f, 799f) - vec4<f32>(-538f, 489f, -111f, -364f)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_i32(global4[_wgslsmith_index_u32(u_input.b.x, 5u)], _wgslsmith_sub_i32(1i, ~global4[_wgslsmith_index_u32(1616u, 5u)] << (51080u % 32u))), var_4.wwy);
}


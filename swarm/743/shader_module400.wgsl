struct Struct_1 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: vec3<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 28>;

var<private> global1: array<Struct_1, 31>;

var<private> global2: array<vec2<i32>, 26>;

var<private> global3: array<f32, 22> = array<f32, 22>(1025f, -701f, 229f, 711f, -1000f, 2185f, 564f, 1000f, -859f, -1343f, -1421f, -149f, -1000f, 674f, 216f, 1640f, 601f, -755f, -1587f, 675f, 544f, 1188f);

var<private> global4: array<i32, 12>;

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<bool>) -> u32 {
    var var_0 = false;
    var var_1 = max(36376u, u_input.a.x);
    let var_2 = arg_2;
    let var_3 = Struct_1(arg_0.a & ~(-abs(arg_1.a)));
    let var_4 = arg_2.x;
    return 1u;
}

fn func_2(arg_0: i32, arg_1: u32, arg_2: Struct_1) -> i32 {
    var var_0 = ~u_input.a;
    var var_1 = ~(~(~u_input.a));
    var var_2 = abs(global2[_wgslsmith_index_u32(func_3(arg_2, arg_2, !(!select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false)))), 26u)]);
    let var_3 = Struct_1(arg_2.a);
    let var_4 = Struct_1(_wgslsmith_sub_vec4_i32(vec4<i32>(-1i) * -_wgslsmith_sub_vec4_i32(vec4<i32>(var_3.a.x, -1i, global4[_wgslsmith_index_u32(54678u, 12u)], arg_0), vec4<i32>(-31589i, 1i, var_3.a.x, 0i)), vec4<i32>(_wgslsmith_mod_i32(arg_2.a.x, 0i), countOneBits(reverseBits(global4[_wgslsmith_index_u32(var_0.x, 12u)])), 31444i, arg_0)));
    return var_2.x;
}

fn func_4(arg_0: vec3<i32>) -> vec4<bool> {
    let var_0 = abs(0u);
    let var_1 = global1[_wgslsmith_index_u32(firstTrailingBit(u_input.a.x >> (_wgslsmith_mult_u32(select(1553u, u_input.a.x, true), firstLeadingBit(25463u)) % 32u)) | 4294967295u, 31u)];
    var var_2 = u_input.a.x;
    var var_3 = vec4<f32>(-2986f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -230f) + -1882f) - global0[_wgslsmith_index_u32(~(~3376u), 28u)]))), -1113f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(323f + -1000f), 317f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(var_0, 28u)]), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(49868u, 28u)] * 611f)))))));
    let var_4 = _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_add_u32(_wgslsmith_add_u32(~var_0, ~1u), var_0)), 28u)] + 119f);
    return select(vec4<bool>(true, !(!(7858u > var_0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.x - -2420f)) >= global3[_wgslsmith_index_u32(_wgslsmith_div_u32(1u, 90173u), 22u)], func_2(select(3276i, -1i, false), u_input.a.x, Struct_1(vec4<i32>(-1i, global4[_wgslsmith_index_u32(17932u, 12u)], var_1.a.x, -26920i))) <= _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(1944i, global4[_wgslsmith_index_u32(var_0, 12u)], var_1.a.x, var_1.a.x), var_1.a), _wgslsmith_dot_vec4_i32(var_1.a, var_1.a))), vec4<bool>(true, true, true, true), false);
}

fn func_1(arg_0: bool, arg_1: Struct_1, arg_2: vec3<f32>, arg_3: Struct_1) -> i32 {
    let var_0 = arg_3;
    var var_1 = vec3<bool>(arg_0, !select(any(select(vec3<bool>(arg_0, true, arg_0), vec3<bool>(arg_0, arg_0, arg_0), vec3<bool>(arg_0, false, arg_0))), all(!vec3<bool>(arg_0, false, arg_0)), !(arg_0 && false)), (((u_input.a.x >> (4294967295u % 32u)) ^ 0u) >= ~(~u_input.a.x)) && true);
    var var_2 = !func_4(select(min(arg_3.a.yzy, arg_1.a.wyw), vec3<i32>(-1i, abs(var_0.a.x), func_2(global4[_wgslsmith_index_u32(1u, 12u)], 4388u, var_0)), var_1.x));
    var var_3 = ~_wgslsmith_dot_vec3_u32(firstLeadingBit(max(~u_input.a, ~vec3<u32>(1u, u_input.a.x, u_input.a.x))), vec3<u32>(u_input.a.x, abs(30436u >> (u_input.a.x % 32u)), _wgslsmith_div_u32(~47867u, abs(4294967295u))));
    var var_4 = !var_1.x;
    return 2147483647i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<i32>(_wgslsmith_add_i32(global4[_wgslsmith_index_u32(61156u, 12u)], -func_1(all(vec3<bool>(false, false, false)), global1[_wgslsmith_index_u32(1u | u_input.a.x, 31u)], _wgslsmith_f_op_vec3_f32(vec3<f32>(269f, 2391f, global0[_wgslsmith_index_u32(29727u, 28u)]) - vec3<f32>(-984f, global0[_wgslsmith_index_u32(u_input.a.x, 28u)], global0[_wgslsmith_index_u32(17232u, 28u)])), Struct_1(vec4<i32>(-1i, 0i, global4[_wgslsmith_index_u32(1u, 12u)], 14584i)))), 26796i);
    let var_1 = vec4<bool>(true, true, true, true);
    var var_2 = firstTrailingBit(vec4<i32>(-_wgslsmith_clamp_i32(-1i, 2147483647i, 57557i << (1u % 32u)), _wgslsmith_add_i32(_wgslsmith_mult_i32(~1i, global4[_wgslsmith_index_u32(~12385u, 12u)]), func_2(countOneBits(global4[_wgslsmith_index_u32(10007u, 12u)]), 1u, Struct_1(vec4<i32>(-3848i, -2147483647i, 19270i, 60962i)))), var_0.x, -2147483647i));
    global2 = array<vec2<i32>, 26>();
    var var_3 = u_input.a.x;
    var var_4 = !(!select(vec2<bool>(any(var_1), !var_1.x), vec2<bool>(false, true), !any(var_1.yzy)));
    let var_5 = var_1.zy;
    var var_6 = any(!vec3<bool>(any(var_1), all(var_1.zxw), _wgslsmith_f_op_f32(min(-394f, global3[_wgslsmith_index_u32(u_input.a.x, 22u)])) == global3[_wgslsmith_index_u32(31657u, 22u)]));
    let var_7 = Struct_1(vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_mod_i32(global4[_wgslsmith_index_u32(95423u, 12u)], global4[_wgslsmith_index_u32(u_input.a.x, 12u)]), var_0.x, var_2.x), vec3<i32>(0i, -1109i, 54545i)), var_0.x, -1i, -47893i));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(1602f, -628f), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(59819u, 28u)]))))), var_7.a << (vec4<u32>(9220u, reverseBits(countOneBits(u_input.a.x)), _wgslsmith_div_u32(max(u_input.a.x, 22543u), u_input.a.x), ~u_input.a.x) % vec4<u32>(32u)), vec3<f32>(_wgslsmith_f_op_f32(abs(global3[_wgslsmith_index_u32(56801u, 22u)])), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(113f, _wgslsmith_f_op_f32(1000f * global0[_wgslsmith_index_u32(4294967295u, 28u)])))), -453f), var_2.x);
}


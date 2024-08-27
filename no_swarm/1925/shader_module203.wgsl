struct Struct_1 {
    a: u32,
    b: vec2<bool>,
    c: vec2<bool>,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<i32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<u32, 7> = array<u32, 7>(51844u, 0u, 6247u, 7944u, 4294967295u, 4294967295u, 45492u);

var<private> global2: Struct_3;

var<private> global3: array<i32, 5> = array<i32, 5>(i32(-2147483648), 5488i, 22072i, -30918i, 14915i);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_1(arg_0: Struct_3, arg_1: vec4<f32>) -> u32 {
    var var_0 = arg_1.xy;
    var var_1 = _wgslsmith_sub_vec3_i32(_wgslsmith_mult_vec3_i32(u_input.c.yzy & u_input.c.wwy, countOneBits(u_input.c.wxw)), u_input.c.yww);
    let var_2 = true;
    let var_3 = _wgslsmith_f_op_vec2_f32(arg_1.xz + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1000f, 1416f), vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -508f))), _wgslsmith_f_op_f32(1303f - -224f)), false)));
    let var_4 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.x)) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -638f)))) - 1026f), -404f, var_3.x, arg_1.x);
    return 4294967295u;
}

fn func_2(arg_0: vec3<u32>) -> f32 {
    var var_0 = select(select(!select(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false)), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, true), -27842i < (i32(-1i) * -global3[_wgslsmith_index_u32(u_input.d.x, 5u)])), !select(!select(vec2<bool>(true, true), vec2<bool>(false, true), true), vec2<bool>(true, true), 4294967295u < _wgslsmith_sub_u32(arg_0.x, u_input.a)), (!any(vec3<bool>(true, false, false)) != false) & (!any(vec4<bool>(false, true, true, false)) & (global3[_wgslsmith_index_u32(arg_0.x, 5u)] >= -2147483647i)));
    var var_1 = ~(arg_0.x | min(~1u, _wgslsmith_sub_u32(~u_input.d.x, 4294967295u)));
    global0 = -1i;
    var_0 = !(!(!select(select(vec2<bool>(var_0.x, var_0.x), vec2<bool>(var_0.x, var_0.x), vec2<bool>(var_0.x, var_0.x)), !vec2<bool>(false, var_0.x), var_0.x)));
    var var_2 = u_input.c.x;
    return _wgslsmith_f_op_f32(-446f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + -936f)));
}

fn func_3(arg_0: f32, arg_1: vec2<i32>, arg_2: vec3<f32>) -> Struct_3 {
    var var_0 = select(!vec3<bool>(true, any(vec4<bool>(true, true, false, true)), any(vec4<bool>(true, true, true, false))), vec3<bool>(all(vec2<bool>(true, true)), true, true), vec3<bool>(true, true, true));
    global3 = array<i32, 5>();
    global1 = array<u32, 7>();
    let var_1 = ~firstTrailingBit(_wgslsmith_mult_i32(abs(_wgslsmith_add_i32(-42076i, arg_1.x)), firstLeadingBit(1i) | (-50013i ^ global2.a)));
    var var_2 = Struct_1(u_input.d.x, var_0.yx, vec2<bool>(any(select(select(vec4<bool>(true, true, var_0.x, true), vec4<bool>(var_0.x, true, var_0.x, var_0.x), var_0.x), vec4<bool>(false, false, true, var_0.x), false)), global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u << (max(4294967295u, u_input.a) % 32u), 7u)], 5u)] != (1i | ~var_1)), 25435u);
    return Struct_3(u_input.c.x);
}

fn func_4(arg_0: vec4<bool>, arg_1: vec2<i32>, arg_2: vec4<bool>, arg_3: Struct_3) -> vec3<i32> {
    global1 = array<u32, 7>();
    let var_0 = !(!arg_0);
    global3 = array<i32, 5>();
    let var_1 = Struct_2(Struct_1(~_wgslsmith_sub_u32(abs(u_input.a), global1[_wgslsmith_index_u32(~0u, 7u)]), !(!(!vec2<bool>(true, var_0.x))), var_0.xy, 1u));
    let var_2 = Struct_2(Struct_1(min(select(1u, ~var_1.a.d, !var_0.x), u_input.d.x), arg_0.zy, arg_2.yy, 64468u));
    return -u_input.c.xwz;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(!select(vec4<bool>(true, u_input.d.x >= global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(19848u, 7u)], 7u)], all(vec4<bool>(false, false, true, true)), all(vec4<bool>(true, true, false, false))), vec4<bool>(true, select(false, true, true), true, true), any(vec2<bool>(true, true))), select(_wgslsmith_sub_vec2_i32(vec2<i32>(11174i, -2147483647i), abs(u_input.c.ww)), _wgslsmith_mod_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(-20259i, global3[_wgslsmith_index_u32(2383u, 5u)]), vec2<i32>(-1i, 17285i)), -u_input.c.zw), false) >> (vec2<u32>(~(~107151u), _wgslsmith_add_u32(66425u, func_1(Struct_3(u_input.c.x), vec4<f32>(-366f, -600f, -279f, -151f)))) % vec2<u32>(32u)), !select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, true), select(select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, false), true), select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, false)), vec4<bool>(true, true, false, true))), func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(u_input.d.xzz))), ~vec2<i32>(global2.a, -49822i), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 137f, _wgslsmith_f_op_f32(f32(-1f) * -367f)))));
    let x = u_input.a;
    s_output = StorageBuffer(~(~(-2147483647i)) | ~_wgslsmith_add_i32(_wgslsmith_sub_i32(-18750i, 24325i), var_0.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(673f, 185f, 794f, 770f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(1096f, -1000f, -378f, 495f))))), _wgslsmith_sub_i32(5660i, 0i));
}


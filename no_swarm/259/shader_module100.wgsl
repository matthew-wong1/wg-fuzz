struct Struct_1 {
    a: vec2<i32>,
    b: bool,
    c: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 18>;

var<private> global1: array<vec2<f32>, 14>;

var<private> global2: vec2<bool>;

var<private> global3: array<Struct_1, 3> = array<Struct_1, 3>(Struct_1(vec2<i32>(0i, 1i), true, true), Struct_1(vec2<i32>(2147483647i, 2147483647i), false, true), Struct_1(vec2<i32>(i32(-2147483648), 1i), false, false));

var<private> global4: Struct_1 = Struct_1(vec2<i32>(i32(-2147483648), 2147483647i), true, false);

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: i32) -> bool {
    global2 = vec2<bool>(true, true);
    return false;
}

fn func_2() -> Struct_1 {
    let var_0 = global4.a.x;
    global1 = array<vec2<f32>, 14>();
    return Struct_1(-_wgslsmith_div_vec2_i32(max(-global4.a, ~vec2<i32>(global4.a.x, global4.a.x)), vec2<i32>(global4.a.x, _wgslsmith_dot_vec3_i32(vec3<i32>(global4.a.x, -47282i, 2547i), vec3<i32>(-15205i, -1i, -1i)))), all(vec4<bool>(!any(vec4<bool>(global2.x, global2.x, false, true)), func_3(global4.a.x), (global4.a.x > 23880i) | false, !all(vec2<bool>(global4.b, false)))), global2.x);
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: Struct_1, arg_3: f32) -> i32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-global1[_wgslsmith_index_u32(u_input.c.x, 14u)]), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(global1[_wgslsmith_index_u32(~0u, 14u)] + global1[_wgslsmith_index_u32(69964u, 14u)]))))));
    let var_1 = var_0.x;
    var var_2 = vec2<bool>(!(reverseBits(u_input.b.x | u_input.c.x) == ~1u), false);
    return 1i;
}

fn func_1(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: Struct_1) -> Struct_1 {
    var var_0 = Struct_1(arg_0.a, !global4.c, true);
    var var_1 = _wgslsmith_div_i32(~_wgslsmith_div_i32(47517i, func_4(func_2(), !arg_0.c, func_2(), -513f)), _wgslsmith_mod_i32(21763i, global4.a.x));
    let var_2 = ~firstLeadingBit(countOneBits(u_input.a));
    global2 = vec2<bool>(!(!var_0.c) & false, !(!(any(vec3<bool>(arg_2.b, true, arg_2.c)) || (global4.c != global2.x))));
    global2 = !vec2<bool>(func_3(-(i32(-1i) * -2147483647i)), true);
    return Struct_1(vec2<i32>(arg_2.a.x, arg_2.a.x) ^ vec2<i32>(-arg_2.a.x, ~abs(14201i)), arg_0.b, !(!(!(arg_1.x > -13391i))));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = Struct_1(select(_wgslsmith_div_vec2_i32(vec2<i32>(-global4.a.x, global4.a.x), abs(reverseBits(vec2<i32>(global4.a.x, 2147483647i)))), vec2<i32>(_wgslsmith_mult_i32(global4.a.x, global4.a.x) << (1u % 32u), global4.a.x), true), false, true);
    let var_0 = func_1(global0[_wgslsmith_index_u32(u_input.a.x, 18u)], select(~vec2<i32>(18269i, -37165i), vec2<i32>(global4.a.x, -40126i | firstTrailingBit(57375i)), any(!vec4<bool>(global2.x, false, global2.x, global2.x))), global3[_wgslsmith_index_u32(~reverseBits(max(max(u_input.c.x, u_input.a.x), u_input.b.x)), 3u)]);
    global2 = select(!(!vec2<bool>(any(vec3<bool>(global2.x, global4.b, var_0.c)), true)), !vec2<bool>(false, (var_0.a.x == -56617i) | func_1(global3[_wgslsmith_index_u32(u_input.a.x, 3u)], var_0.a, var_0).b), var_0.c);
    var var_1 = u_input.c;
    global0 = array<Struct_1, 18>();
    let var_2 = ~_wgslsmith_sub_u32(82945u, u_input.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(~46890i, _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(global1[_wgslsmith_index_u32(0u, 14u)] * _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1422f, 472f)))))));
}


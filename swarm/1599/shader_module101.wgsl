struct Struct_1 {
    a: vec2<f32>,
    b: vec2<bool>,
    c: u32,
    d: i32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 3> = array<vec2<bool>, 3>(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true));

var<private> global1: Struct_1 = Struct_1(vec2<f32>(-765f, -319f), vec2<bool>(false, false), 48938u, -15200i);

var<private> global2: array<vec4<bool>, 24>;

var<private> global3: array<f32, 20>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_1) -> vec3<bool> {
    global3 = array<f32, 20>();
    global0 = array<vec2<bool>, 3>();
    var var_0 = 2147483647i;
    let var_1 = u_input.a.zzy;
    return select(!select(!(!vec3<bool>(false, arg_1.b.x, global1.b.x)), !vec3<bool>(global1.b.x, false, global1.b.x), !select(vec3<bool>(false, true, false), vec3<bool>(arg_1.b.x, global1.b.x, true), vec3<bool>(true, true, global1.b.x))), !(!(!vec3<bool>(false, global1.b.x, global1.b.x))), select(!vec3<bool>(arg_1.b.x, false, !arg_1.b.x), select(vec3<bool>(false, true, true), vec3<bool>(global1.b.x || arg_1.b.x, arg_1.c != 53219u, !arg_1.b.x), vec3<bool>(all(vec3<bool>(global1.b.x, global1.b.x, arg_1.b.x)), global1.b.x, !global1.b.x)), select(!select(vec3<bool>(arg_1.b.x, global1.b.x, global1.b.x), vec3<bool>(global1.b.x, false, global1.b.x), vec3<bool>(true, true, true)), !select(vec3<bool>(arg_1.b.x, global1.b.x, arg_1.b.x), vec3<bool>(arg_1.b.x, global1.b.x, true), vec3<bool>(true, true, true)), true)));
}

fn func_4(arg_0: vec2<i32>, arg_1: vec2<i32>, arg_2: vec3<bool>) -> i32 {
    var var_0 = !global1.b.x;
    let var_1 = -vec2<i32>(_wgslsmith_sub_i32(min(-27197i, -23251i & arg_1.x), _wgslsmith_add_i32(abs(arg_1.x), select(-2147483647i, -11603i, global1.b.x))), ~_wgslsmith_dot_vec2_i32(u_input.a.zz, _wgslsmith_sub_vec2_i32(u_input.a.wz, vec2<i32>(13564i, u_input.b))));
    var var_2 = arg_1.x >= 1i;
    var_2 = any(global0[_wgslsmith_index_u32(~u_input.c, 3u)]);
    var_2 = arg_2.x;
    return firstTrailingBit(-arg_0.x) & u_input.b;
}

fn func_2(arg_0: i32, arg_1: Struct_1) -> vec2<f32> {
    let var_0 = Struct_1(arg_1.a, global0[_wgslsmith_index_u32(u_input.c, 3u)], 27204u, -func_4(_wgslsmith_div_vec2_i32(abs(vec2<i32>(arg_0, 0i)), -vec2<i32>(-2147483647i, -6039i)), vec2<i32>(0i << (arg_1.c % 32u), min(1i, global1.d)), select(func_3(vec2<f32>(global3[_wgslsmith_index_u32(2594u, 20u)], 2094f), arg_1), vec3<bool>(false, false, false), true)));
    var var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(global1.a * vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(-1453f)))), _wgslsmith_f_op_f32(trunc(1000f)))), vec2<bool>(!var_0.b.x, all(vec2<bool>(var_0.b.x, false)) | !all(vec3<bool>(false, global1.b.x, false))), ~_wgslsmith_div_u32(4294967295u, _wgslsmith_sub_u32(var_0.c | u_input.c, reverseBits(47600u))), 59090i);
    global3 = array<f32, 20>();
    let var_2 = Struct_2(!select(true && any(vec3<bool>(false, var_1.b.x, false)), any(var_1.b), !(true || var_0.b.x)), var_0, arg_1);
    global2 = array<vec4<bool>, 24>();
    return vec2<f32>(arg_1.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(var_0.a.x)))) * 989f)));
}

fn func_5(arg_0: f32, arg_1: Struct_1) -> Struct_1 {
    global0 = array<vec2<bool>, 3>();
    let var_0 = !(!(arg_1.c == ~4294967295u));
    global0 = array<vec2<bool>, 3>();
    global3 = array<f32, 20>();
    global0 = array<vec2<bool>, 3>();
    return Struct_1(_wgslsmith_f_op_vec2_f32(func_2(-_wgslsmith_dot_vec3_i32(u_input.a.yzx | vec3<i32>(u_input.a.x, arg_1.d, arg_1.d), vec3<i32>(global1.d, arg_1.d, -2147483647i) | u_input.a.zww), arg_1)), !select(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(abs(arg_1.c), u_input.c ^ 21970u), 3u)], vec2<bool>(any(global2[_wgslsmith_index_u32(1u, 24u)]), arg_1.b.x), func_3(arg_1.a, Struct_1(global1.a, vec2<bool>(false, arg_1.b.x), u_input.c, arg_1.d)).zx), 10542u, max(abs(i32(-1i) * -9453i), ~_wgslsmith_mult_i32(arg_1.d, 11056i) << (global1.c % 32u)));
}

fn func_1(arg_0: i32, arg_1: vec3<i32>, arg_2: u32) -> f32 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(global1.a - _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-global1.a)))), select(vec2<bool>(true, global1.b.x), !select(select(global1.b, vec2<bool>(global1.b.x, global1.b.x), global1.b.x), global0[_wgslsmith_index_u32(0u, 3u)], global1.b.x), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(global1.a.x, -1143f, global1.b.x)), -916f)) <= 902f), 0u, -57403i);
    var_0 = func_5(global1.a.x, Struct_1(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_2(global1.d, Struct_1(var_0.a, vec2<bool>(false, false), var_0.c, arg_0)))))), !select(global0[_wgslsmith_index_u32(global1.c, 3u)], vec2<bool>(false, false), global1.b), firstTrailingBit(4294967295u), _wgslsmith_dot_vec4_i32(vec4<i32>(i32(-1i) * -2147483647i, global1.d, -2147483647i >> (u_input.c % 32u), -2147483647i), u_input.a)));
    global3 = array<f32, 20>();
    var var_1 = global1.b.x | true;
    let var_2 = global1.b.x;
    return _wgslsmith_f_op_f32(var_0.a.x - _wgslsmith_f_op_f32(select(166f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), global1.b.x & true)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(-u_input.b, countOneBits(u_input.a.yxx), 0u))), -681f), select(global1.b, vec2<bool>(any(!vec3<bool>(global1.b.x, false, true)), global1.b.x), global0[_wgslsmith_index_u32(~0u, 3u)]), min(abs(~(~1u)), u_input.c & ~func_5(956f, Struct_1(global1.a, vec2<bool>(global1.b.x, global1.b.x), 0u, 6547i)).c), -15459i | (abs(global1.d) ^ global1.d));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(vec3<i32>(-734i, func_4(u_input.a.yw, vec2<i32>(31795i, 16557i), vec3<bool>(true, false, global1.b.x)), global1.d >> (global1.c % 32u))) >> (_wgslsmith_add_vec3_u32(min(~vec3<u32>(89576u, u_input.c, 29085u), abs(vec3<u32>(1u, u_input.c, global1.c))), abs(~vec3<u32>(global1.c, u_input.c, u_input.c))) % vec3<u32>(32u)));
}


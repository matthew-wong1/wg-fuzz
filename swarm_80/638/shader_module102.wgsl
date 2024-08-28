struct Struct_1 {
    a: vec3<f32>,
    b: u32,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec4<i32>,
    d: vec4<f32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 3>;

var<private> global1: Struct_1 = Struct_1(vec3<f32>(-1294f, 232f, -305f), 48746u, -2001f);

var<private> global2: Struct_3 = Struct_3(0i);

var<private> global3: vec4<i32>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_2(arg_0: bool, arg_1: Struct_1, arg_2: Struct_2) -> i32 {
    let var_0 = _wgslsmith_add_vec2_i32(firstLeadingBit(abs(-vec2<i32>(-1i, -40931i))), global3.zy) ^ global3.xx;
    global2 = Struct_3(63943i);
    let var_1 = arg_2;
    var var_2 = Struct_3(2147483647i);
    var var_3 = global1.a;
    return u_input.a;
}

fn func_1(arg_0: Struct_2, arg_1: Struct_2) -> vec4<bool> {
    var var_0 = vec3<i32>(global2.a, -2147483647i, ~1i ^ _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-4150i, 0i), global3.xy), ~(~global2.a)));
    global2 = Struct_3(_wgslsmith_sub_i32(_wgslsmith_mod_i32(global3.x, func_2(all(vec3<bool>(false, false, true)), Struct_1(vec3<f32>(global1.a.x, arg_1.a.c, 474f), arg_1.a.b, arg_1.b.a.x), Struct_2(arg_0.b, global0[_wgslsmith_index_u32(0u, 3u)]))), -global3.x));
    global0 = array<Struct_1, 3>();
    var_0 = vec3<i32>(-select(var_0.x, global2.a, true), global3.x, 75327i);
    global2 = Struct_3(var_0.x);
    return !(!vec4<bool>(true, all(select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, true), false)), false, false));
}

fn func_3() -> u32 {
    var var_0 = Struct_2(global0[_wgslsmith_index_u32(global1.b, 3u)], global0[_wgslsmith_index_u32(~(~(global1.b ^ 0u)) | _wgslsmith_div_u32(~(~4294967295u), abs(_wgslsmith_mod_u32(global1.b, global1.b))), 3u)]);
    global2 = Struct_3(~u_input.a);
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(sign(-2332f)), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-443f * -838f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1266f), global1.a.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1196f), _wgslsmith_f_op_f32(round(541f)))) * var_0.a.a.x));
    var var_2 = vec4<i32>(~global3.x, 1i, firstTrailingBit(_wgslsmith_div_i32(u_input.a, reverseBits(global2.a))) & ~(-15309i), global2.a);
    var var_3 = Struct_3(-21464i);
    return var_0.b.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, false)), true), !select(func_1(Struct_2(Struct_1(vec3<f32>(-1102f, -1271f, global1.c), 1u, global1.a.x), Struct_1(vec3<f32>(-292f, -1333f, global1.c), 0u, global1.c)), Struct_2(Struct_1(global1.a, global1.b, -1784f), Struct_1(global1.a, 1u, 1428f))), vec4<bool>(false, true, false, false), func_1(Struct_2(Struct_1(vec3<f32>(-1000f, global1.c, global1.c), 13304u, 1000f), Struct_1(global1.a, global1.b, global1.c)), Struct_2(global0[_wgslsmith_index_u32(89u, 3u)], Struct_1(vec3<f32>(global1.c, global1.a.x, global1.a.x), global1.b, -1579f)))), true);
    let var_1 = vec2<bool>(!((func_1(Struct_2(Struct_1(global1.a, global1.b, global1.c), global0[_wgslsmith_index_u32(4294u, 3u)]), Struct_2(global0[_wgslsmith_index_u32(global1.b, 3u)], global0[_wgslsmith_index_u32(21171u, 3u)])).x | false) | false), all(!(!select(vec2<bool>(false, true), var_0.yz, vec2<bool>(false, false)))));
    global3 = vec4<i32>(_wgslsmith_sub_i32(func_2(31463u <= (global1.b & global1.b), global0[_wgslsmith_index_u32(min(~global1.b, abs(75057u)), 3u)], Struct_2(global0[_wgslsmith_index_u32(16852u, 3u)], Struct_1(global1.a, global1.b, global1.a.x))), -57166i), global2.a, -12875i, u_input.a);
    let var_2 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-213f, -285f, global1.a.x, global1.c) + vec4<f32>(-998f, _wgslsmith_f_op_f32(min(921f, global1.c)), _wgslsmith_f_op_f32(step(101f, -130f)), global1.c)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-global1.a.x), _wgslsmith_f_op_f32(trunc(global1.c)), _wgslsmith_div_f32(-315f, global1.c), global1.c) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(488f, global1.a.x, global1.c, global1.a.x))))))));
    var var_3 = 1i;
    let x = u_input.a;
    s_output = StorageBuffer(global3.x, min(func_3(), global1.b), -reverseBits(vec4<i32>(0i, reverseBits(u_input.a), -u_input.a, global2.a)), var_2, countOneBits(~_wgslsmith_mod_vec2_u32(vec2<u32>(0u, global1.b), vec2<u32>(0u, global1.b))));
}


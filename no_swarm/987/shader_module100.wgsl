struct Struct_1 {
    a: i32,
    b: vec3<i32>,
    c: u32,
    d: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 15> = array<vec4<f32>, 15>(vec4<f32>(865f, 1056f, -444f, 1146f), vec4<f32>(882f, 1009f, -1000f, 542f), vec4<f32>(1205f, -1000f, -797f, -3113f), vec4<f32>(1575f, 1296f, 331f, 194f), vec4<f32>(468f, 882f, 1307f, -472f), vec4<f32>(-241f, 527f, -1937f, -387f), vec4<f32>(855f, -822f, 1000f, 451f), vec4<f32>(-1409f, -520f, -1476f, -949f), vec4<f32>(-109f, -1829f, 221f, 591f), vec4<f32>(515f, 620f, 1000f, -170f), vec4<f32>(-1000f, -1102f, -901f, -740f), vec4<f32>(137f, 245f, -1000f, 476f), vec4<f32>(302f, -730f, 574f, 1284f), vec4<f32>(1611f, 504f, 573f, -1277f), vec4<f32>(1000f, 253f, -127f, -438f));

var<private> global1: Struct_1 = Struct_1(i32(-2147483648), vec3<i32>(i32(-2147483648), -19813i, 34926i), 4294967295u, 862f);

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> f32 {
    let var_0 = _wgslsmith_clamp_vec3_i32(vec3<i32>(-2147483647i, 4403i, -3539i), global1.b, vec3<i32>(24012i, -_wgslsmith_mult_i32(global1.a, global1.b.x) ^ _wgslsmith_mult_i32(-global1.a, global1.b.x), -41094i));
    let var_1 = u_input.a.xwx;
    let var_2 = _wgslsmith_div_vec3_u32(abs(_wgslsmith_add_vec3_u32(~(~vec3<u32>(56643u, 37995u, 44488u)), ~var_1 >> (var_1 % vec3<u32>(32u)))), _wgslsmith_clamp_vec3_u32(vec3<u32>(max(var_1.x, ~41915u), max(u_input.a.x << (1u % 32u), var_1.x), abs(var_1.x)), ~(~(~var_1)), ~countOneBits(~vec3<u32>(0u, u_input.a.x, var_1.x))));
    var var_3 = Struct_1(global1.b.x, -(~reverseBits(vec3<i32>(43844i, 13551i, var_0.x))), countOneBits(var_2.x), global1.d);
    global0 = array<vec4<f32>, 15>();
    return -943f;
}

fn func_2(arg_0: i32, arg_1: u32) -> Struct_1 {
    global1 = Struct_1(-global1.a, vec3<i32>(11842i, arg_0, ~0i), ~u_input.a.x, _wgslsmith_f_op_f32(func_3()));
    var var_0 = !select(!vec4<bool>(true, true, any(vec3<bool>(false, true, true)), true), !select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, false))), vec4<bool>(true & (global1.c >= 0u), false, true, select(true, true, true)));
    var var_1 = Struct_1(firstTrailingBit(-11638i), global1.b ^ min(-(~vec3<i32>(2147483647i, arg_0, global1.a)), select(_wgslsmith_div_vec3_i32(global1.b, vec3<i32>(global1.a, 0i, arg_0)), _wgslsmith_div_vec3_i32(global1.b, vec3<i32>(-40696i, arg_0, global1.b.x)), var_0.yyz)), _wgslsmith_mod_u32(arg_1, _wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(global1.c, 3622u, arg_1, arg_1)), max(u_input.a, u_input.a)) | 36015u), global1.d);
    let var_2 = Struct_1(countOneBits(1i), ~(((var_1.b & vec3<i32>(21994i, -2147483647i, 35059i)) | global1.b) & firstTrailingBit(-vec3<i32>(43411i, 7833i, 20361i))), ~(4294967295u >> (1u % 32u)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.d + _wgslsmith_f_op_f32(select(var_1.d, 165f, var_0.x))) + _wgslsmith_f_op_f32(f32(-1f) * -662f)), 2086f)));
    global1 = Struct_1(0i, var_2.b, _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(countOneBits(~vec2<u32>(36185u, 46388u)), vec2<u32>(arg_1, max(1u, 13012u))), ~_wgslsmith_sub_vec2_u32(u_input.a.wx, vec2<u32>(0u, global1.c) ^ u_input.a.ww)), _wgslsmith_f_op_f32(min(564f, _wgslsmith_f_op_f32(-1177f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.d) - -986f)))));
    return Struct_1(global1.b.x, -var_1.b, ~_wgslsmith_div_u32(var_2.c, _wgslsmith_add_u32(23902u, select(757u, global1.c, var_0.x))), global1.d);
}

fn func_1() -> StorageBuffer {
    var var_0 = func_2(firstTrailingBit(-(i32(-1i) * -2147483647i)), global1.c);
    let var_1 = select(vec2<bool>(all(vec3<bool>(true, true, true)), false), vec2<bool>(true, true), !select(vec2<bool>(false, true), !select(vec2<bool>(false, true), vec2<bool>(false, false), false), vec2<bool>(any(vec3<bool>(true, true, true)), true)));
    return StorageBuffer(~1u, (vec4<i32>(-80046i, 0i, min(0i, 23059i), 2147483647i) << ((~vec4<u32>(1u, u_input.a.x, global1.c, 1u) ^ _wgslsmith_clamp_vec4_u32(u_input.a, vec4<u32>(4294967295u, 116694u, u_input.a.x, u_input.a.x), vec4<u32>(global1.c, 24905u, global1.c, var_0.c))) % vec4<u32>(32u))) & ~vec4<i32>(countOneBits(global1.a), ~global1.a, select(-30489i, global1.b.x, var_1.x), var_0.a), 742f, _wgslsmith_mult_i32(-var_0.b.x & _wgslsmith_clamp_i32(_wgslsmith_div_i32(global1.a, 0i), global1.a, global1.b.x >> (var_0.c % 32u)), global1.a));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1.a;
    let x = u_input.a;
    s_output = func_1();
}


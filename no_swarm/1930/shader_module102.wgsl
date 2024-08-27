struct Struct_1 {
    a: vec3<u32>,
    b: f32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec4<i32>,
    c: f32,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: f32,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 15> = array<Struct_1, 15>(Struct_1(vec3<u32>(4294967295u, 63040u, 287u), 296f), Struct_1(vec3<u32>(1u, 4294967295u, 1u), -809f), Struct_1(vec3<u32>(4294967295u, 109406u, 0u), 533f), Struct_1(vec3<u32>(60065u, 51639u, 28866u), 507f), Struct_1(vec3<u32>(51132u, 22689u, 6205u), 1000f), Struct_1(vec3<u32>(549u, 13719u, 77295u), 1641f), Struct_1(vec3<u32>(1u, 5745u, 34424u), -812f), Struct_1(vec3<u32>(36343u, 0u, 0u), 481f), Struct_1(vec3<u32>(0u, 22401u, 61826u), -175f), Struct_1(vec3<u32>(1u, 0u, 15004u), 2065f), Struct_1(vec3<u32>(12245u, 1u, 14906u), 464f), Struct_1(vec3<u32>(60295u, 55807u, 0u), 1000f), Struct_1(vec3<u32>(24728u, 0u, 21720u), 1077f), Struct_1(vec3<u32>(24415u, 4294967295u, 30562u), 250f), Struct_1(vec3<u32>(1u, 4294967295u, 15230u), -1182f));

var<private> global1: Struct_1 = Struct_1(vec3<u32>(34970u, 4294967295u, 31910u), -1886f);

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_1) -> vec3<u32> {
    let var_0 = (~_wgslsmith_add_vec3_u32(~arg_1.a, reverseBits(vec3<u32>(8891u, 61021u, 0u))) << ((arg_0.zww << (firstTrailingBit(global1.a) % vec3<u32>(32u))) % vec3<u32>(32u))) << (~(~vec3<u32>(global1.a.x, global1.a.x, u_input.a.x)) % vec3<u32>(32u));
    global0 = array<Struct_1, 15>();
    let var_1 = ~(_wgslsmith_mult_vec3_u32(vec3<u32>(39287u, global1.a.x, 1u) >> (select(global1.a, global1.a, vec3<bool>(true, true, false)) % vec3<u32>(32u)), ~(~global1.a)) & _wgslsmith_mod_vec3_u32(~vec3<u32>(global1.a.x, arg_1.a.x, 67845u), var_0));
    var var_2 = 1576f;
    var var_3 = Struct_1(arg_0.ywz, _wgslsmith_f_op_f32(min(-745f, _wgslsmith_f_op_f32(-274f * 1f))));
    return vec3<u32>(0u, var_0.x, var_3.a.x);
}

fn func_2() -> Struct_1 {
    let var_0 = global0[_wgslsmith_index_u32(~(~(~(~_wgslsmith_mult_u32(1350u, u_input.a.x)))), 15u)];
    global1 = Struct_1(_wgslsmith_mult_vec3_u32(func_3(u_input.a, Struct_1(~var_0.a, global1.b)), global1.a), _wgslsmith_div_f32(-1128f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global1.b, 965f)) + _wgslsmith_f_op_f32(select(var_0.b, global1.b, false))), -208f)));
    global1 = Struct_1(~firstTrailingBit(_wgslsmith_add_vec3_u32(select(vec3<u32>(global1.a.x, 30010u, 34151u), vec3<u32>(u_input.a.x, u_input.c, var_0.a.x), vec3<bool>(false, false, true)), _wgslsmith_mult_vec3_u32(vec3<u32>(18518u, 1u, 4294967295u), u_input.a.wyw))), -1209f);
    var var_1 = Struct_1(max(u_input.a.yyy, countOneBits(vec3<u32>(2425u, var_0.a.x, var_0.a.x) | vec3<u32>(var_0.a.x, global1.a.x, var_0.a.x)) & ~(vec3<u32>(u_input.c, var_0.a.x, var_0.a.x) | u_input.a.xyw)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(var_0.b, 300f, true)))))))));
    let var_2 = global0[_wgslsmith_index_u32(~global1.a.x, 15u)];
    return global0[_wgslsmith_index_u32(reverseBits(var_0.a.x), 15u)];
}

fn func_1() -> u32 {
    var var_0 = Struct_1(_wgslsmith_mod_vec3_u32(global1.a, vec3<u32>(select(~4294967295u, min(global1.a.x, global1.a.x), true), u_input.c, u_input.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.b - 332f)));
    var var_1 = Struct_2(vec4<bool>(false, all(vec2<bool>(true, true)), all(!select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), false)), true), vec4<i32>(i32(-1i) * -16086i, -14564i, u_input.b, max(_wgslsmith_div_i32(2147483647i, ~u_input.b), _wgslsmith_mod_i32(u_input.b, u_input.b) & select(u_input.b, -1i, false))), -1000f, ~(~(~(-vec2<i32>(u_input.b, u_input.b)))));
    var var_2 = func_2();
    var var_3 = ~vec3<u32>(_wgslsmith_dot_vec2_u32(firstTrailingBit(~global1.a.xz), vec2<u32>(56298u, u_input.a.x << (1u % 32u))), ~var_0.a.x << ((4294967295u ^ max(var_2.a.x, 1u)) % 32u), ~(~(~80112u)));
    let var_4 = 767f;
    return var_3.x;
}

fn func_4(arg_0: f32, arg_1: Struct_1) -> Struct_2 {
    var var_0 = vec2<bool>(!(!any(vec3<bool>(false, false, false))), false);
    var var_1 = firstLeadingBit(u_input.a);
    var var_2 = _wgslsmith_sub_vec4_i32(vec4<i32>(-2147483647i << (~firstTrailingBit(4294967295u) % 32u), ~u_input.b, ~11337i, u_input.b), -((~vec4<i32>(51130i, 28327i, 2147483647i, u_input.b) << ((u_input.a & u_input.a) % vec4<u32>(32u))) >> (reverseBits(vec4<u32>(u_input.a.x, 13526u, var_1.x, u_input.c)) % vec4<u32>(32u))));
    var var_3 = vec2<i32>(max(0i, abs(_wgslsmith_mod_i32(var_2.x, _wgslsmith_dot_vec2_i32(var_2.zz, var_2.zw)))), -17146i);
    let var_4 = min(vec3<u32>(var_1.x, ~arg_1.a.x, 4294967295u << (abs(var_1.x) % 32u)), arg_1.a);
    return Struct_2(select(vec4<bool>(true, var_0.x, false, false), !vec4<bool>(any(vec4<bool>(var_0.x, var_0.x, true, var_0.x)), all(vec3<bool>(true, var_0.x, var_0.x)), false == var_0.x, false), _wgslsmith_div_f32(global1.b, 1046f) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(836f)))), firstTrailingBit(-vec4<i32>(var_2.x, _wgslsmith_mod_i32(6802i, u_input.b), u_input.b, u_input.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(455f)) * _wgslsmith_f_op_f32(floor(138f))))), var_2.ww);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 15>();
    let var_0 = Struct_1(~vec3<u32>(global1.a.x, firstTrailingBit(global1.a.x), _wgslsmith_mult_u32(4294967295u, u_input.c)) | global1.a, -541f);
    global0 = array<Struct_1, 15>();
    let var_1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b + var_0.b)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1301f + global1.b))))), -241f));
    var var_2 = func_4(841f, Struct_1(vec3<u32>(func_1(), abs(~u_input.a.x), _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a.x, 19476u, 0u, global1.a.x), vec4<u32>(1u, var_0.a.x, 0u, 1u)), abs(vec4<u32>(1u, 1535u, 0u, 0u)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-930f))))));
    global1 = var_0;
    global1 = var_0;
    var_2 = Struct_2(!(!(!vec4<bool>(false, var_2.a.x, true, true))), func_4(-1266f, func_2()).b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1 * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2361f * var_1))) * _wgslsmith_f_op_f32(global1.b - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b - var_1)))), var_2.b.yw);
    let x = u_input.a;
    s_output = StorageBuffer(global1.b, global1.b, -664f, abs(~(global1.a.x << (~23012u % 32u))), -840f);
}


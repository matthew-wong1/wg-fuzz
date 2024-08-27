struct Struct_1 {
    a: vec2<i32>,
    b: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_2,
    c: vec3<f32>,
    d: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: u32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 26>;

var<private> global1: array<Struct_3, 23>;

var<private> global2: Struct_1;

var<private> global3: array<bool, 25> = array<bool, 25>(false, true, false, true, false, false, false, false, true, false, false, true, false, true, true, true, false, false, false, true, false, false, true, true, true);

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3() -> vec2<i32> {
    var var_0 = vec2<i32>(-1i) * -max(_wgslsmith_clamp_vec2_i32(~vec2<i32>(global2.a.x, global0[_wgslsmith_index_u32(u_input.a.x, 26u)]), vec2<i32>(1i, global0[_wgslsmith_index_u32(u_input.b, 26u)]), vec2<i32>(-16404i, 0i)), countOneBits(reverseBits(vec2<i32>(global2.a.x, -21525i))));
    let var_1 = Struct_2(Struct_1(_wgslsmith_div_vec2_i32(max(global2.a, vec2<i32>(global2.a.x, -2147483647i)), ~vec2<i32>(19662i, -1309i)) | ~(-vec2<i32>(-2147483647i, -13773i)), vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global2.b.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -110f) + _wgslsmith_f_op_f32(429f * 870f)), global2.b.x, 565f)), Struct_1(-vec2<i32>(1i, ~global2.a.x), vec4<f32>(925f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global2.b.x), -1056f)), global2.b.x, 1f)));
    var var_2 = _wgslsmith_sub_vec3_u32(firstTrailingBit(abs(vec3<u32>(u_input.b, 0u, 0u))), _wgslsmith_mult_vec3_u32(~max(vec3<u32>(u_input.b, u_input.a.x, 1u), vec3<u32>(0u, u_input.a.x, u_input.a.x)), ~(~vec3<u32>(u_input.b, u_input.a.x, u_input.a.x)))) & ((min(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a.x, u_input.b, 21615u), vec3<u32>(u_input.a.x, u_input.b, u_input.a.x)), firstTrailingBit(vec3<u32>(u_input.b, 53645u, 84428u))) | (~vec3<u32>(73403u, u_input.b, 3647u) | ~vec3<u32>(u_input.a.x, u_input.b, 330u))) >> (~vec3<u32>(0u, 85971u, ~u_input.a.x) % vec3<u32>(32u)));
    return _wgslsmith_mult_vec2_i32(_wgslsmith_clamp_vec2_i32(firstLeadingBit(var_1.b.a), select(vec2<i32>(0i, 30925i), vec2<i32>(2147483647i, -1i), true), vec2<i32>(var_0.x, global0[_wgslsmith_index_u32(0u, 26u)])) & _wgslsmith_div_vec2_i32(~global2.a, _wgslsmith_mult_vec2_i32(vec2<i32>(48903i, 28267i), vec2<i32>(global0[_wgslsmith_index_u32(var_2.x, 26u)], global0[_wgslsmith_index_u32(var_2.x, 26u)]))), global2.a) & _wgslsmith_sub_vec2_i32(vec2<i32>(_wgslsmith_clamp_i32(~global0[_wgslsmith_index_u32(0u, 26u)], var_0.x, 44687i), global2.a.x), ~(~var_1.b.a));
}

fn func_2(arg_0: vec2<bool>, arg_1: bool) -> vec2<bool> {
    let var_0 = Struct_2(Struct_1(func_3(), _wgslsmith_f_op_vec4_f32(select(global2.b, global2.b, vec4<bool>(arg_1, arg_1, arg_0.x, true)))), Struct_1(-abs(vec2<i32>(1i, global2.a.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(2328f, global2.b.x, 1519f, global2.b.x) + global2.b))));
    global3 = array<bool, 25>();
    global0 = array<i32, 26>();
    var var_1 = Struct_3(vec2<bool>(arg_1 & all(vec4<bool>(global3[_wgslsmith_index_u32(u_input.b, 25u)], arg_0.x, global3[_wgslsmith_index_u32(u_input.b, 25u)], false)), true), var_0, var_0.a.b.zyw, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(1850f, global2.b.x, global3[_wgslsmith_index_u32(5138u, 25u)])))))));
    global1 = array<Struct_3, 23>();
    return arg_0;
}

fn func_4(arg_0: Struct_3, arg_1: Struct_2, arg_2: Struct_3, arg_3: i32) -> Struct_1 {
    global3 = array<bool, 25>();
    global2 = arg_2.b.a;
    let var_0 = arg_0;
    return Struct_1(_wgslsmith_sub_vec2_i32(-(vec2<i32>(2147483647i, 27907i) ^ firstLeadingBit(vec2<i32>(global0[_wgslsmith_index_u32(0u, 26u)], 10204i))), vec2<i32>(countOneBits(arg_1.b.a.x), _wgslsmith_mod_i32(func_3().x, _wgslsmith_mult_i32(arg_3, 0i)))), vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(495f)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.b.b.x * arg_0.b.a.b.x) * 509f), _wgslsmith_f_op_f32(f32(-1f) * -1000f), !arg_2.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c.x))), -512f));
}

fn func_1() -> Struct_1 {
    var var_0 = ~u_input.b;
    var var_1 = _wgslsmith_f_op_f32(1982f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(global2.b.x - 356f), global2.b.x));
    var var_2 = func_4(Struct_3(!func_2(vec2<bool>(true, true), !global3[_wgslsmith_index_u32(u_input.a.x, 25u)]), Struct_2(Struct_1(firstTrailingBit(global2.a), _wgslsmith_f_op_vec4_f32(-global2.b)), Struct_1(-vec2<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 26u)], 40473i), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1230f, 953f, global2.b.x, global2.b.x)))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-global2.b.yyx))))), 1f), Struct_2(Struct_1(select(-global2.a, abs(vec2<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 26u)], 20773i)), select(vec2<bool>(true, false), vec2<bool>(global3[_wgslsmith_index_u32(u_input.a.x, 25u)], global3[_wgslsmith_index_u32(u_input.a.x, 25u)]), global3[_wgslsmith_index_u32(59970u, 25u)])), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-global2.b), _wgslsmith_f_op_vec4_f32(min(global2.b, global2.b)), func_2(vec2<bool>(false, false), global3[_wgslsmith_index_u32(4294967295u, 25u)]).x))), Struct_1(global2.a, _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(-464f, 484f, global2.b.x, global2.b.x) * global2.b))))), global1[_wgslsmith_index_u32(53525u, 23u)], abs(~(-reverseBits(1i))));
    var var_3 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global2.b.x - _wgslsmith_f_op_f32(min(var_2.b.x, _wgslsmith_div_f32(-581f, _wgslsmith_f_op_f32(248f + 756f)))))));
    var_1 = var_2.b.x;
    return func_4(Struct_3(vec2<bool>(global3[_wgslsmith_index_u32(~_wgslsmith_mod_u32(u_input.b, 27007u), 25u)], global3[_wgslsmith_index_u32(firstLeadingBit(u_input.b) | u_input.b, 25u)]), Struct_2(Struct_1(_wgslsmith_sub_vec2_i32(vec2<i32>(var_2.a.x, 0i), global2.a), var_2.b), Struct_1(_wgslsmith_mult_vec2_i32(var_2.a, global2.a), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-985f, -722f, global2.b.x, var_2.b.x))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_2.b.yyz - vec3<f32>(-715f, var_2.b.x, var_2.b.x)) * var_2.b.wwy), _wgslsmith_f_op_f32(round(global2.b.x))), Struct_2(func_4(global1[_wgslsmith_index_u32(~(~1u), 23u)], Struct_2(func_4(global1[_wgslsmith_index_u32(50738u, 23u)], Struct_2(Struct_1(var_2.a, global2.b), Struct_1(vec2<i32>(-12707i, global2.a.x), var_2.b)), global1[_wgslsmith_index_u32(u_input.b, 23u)], global2.a.x), Struct_1(var_2.a, vec4<f32>(var_2.b.x, 1360f, -1132f, global2.b.x))), Struct_3(vec2<bool>(global3[_wgslsmith_index_u32(11282u, 25u)], false), Struct_2(Struct_1(var_2.a, vec4<f32>(1407f, 1000f, -1000f, global2.b.x)), Struct_1(vec2<i32>(global2.a.x, -2147483647i), var_2.b)), vec3<f32>(-1634f, global2.b.x, global2.b.x), global2.b.x), global2.a.x), func_4(global1[_wgslsmith_index_u32(0u | u_input.a.x, 23u)], Struct_2(Struct_1(vec2<i32>(var_2.a.x, global2.a.x), vec4<f32>(2200f, 1450f, 332f, -809f)), Struct_1(vec2<i32>(global0[_wgslsmith_index_u32(0u, 26u)], 1i), vec4<f32>(-169f, global2.b.x, 328f, -833f))), Struct_3(vec2<bool>(false, false), Struct_2(Struct_1(vec2<i32>(-48748i, global0[_wgslsmith_index_u32(17275u, 26u)]), vec4<f32>(-1000f, global2.b.x, global2.b.x, -398f)), Struct_1(var_2.a, vec4<f32>(-545f, var_2.b.x, -902f, global2.b.x))), _wgslsmith_f_op_vec3_f32(-var_2.b.yxw), var_2.b.x), global0[_wgslsmith_index_u32(~38900u, 26u)])), global1[_wgslsmith_index_u32(_wgslsmith_add_u32(43825u, ~min(u_input.a.x, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, u_input.b, 4294967295u), vec3<u32>(44557u, 13644u, u_input.b)))), 23u)], firstLeadingBit(-select(select(var_2.a.x, 43311i, global3[_wgslsmith_index_u32(0u, 25u)]), 2434i, global3[_wgslsmith_index_u32(~1u, 25u)])));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let var_1 = select(func_2(vec2<bool>(true, global3[_wgslsmith_index_u32(u_input.a.x, 25u)] & true), global3[_wgslsmith_index_u32(40282u, 25u)]), vec2<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0.b.x))) < -717f, true | all(select(vec3<bool>(global3[_wgslsmith_index_u32(4294967295u, 25u)], global3[_wgslsmith_index_u32(35384u, 25u)], true), vec3<bool>(true, global3[_wgslsmith_index_u32(u_input.b, 25u)], false), true))), global3[_wgslsmith_index_u32(~(~min(1669u, u_input.a.x)) ^ u_input.a.x, 25u)]);
    var var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1794f)) * _wgslsmith_f_op_f32(min(var_0.b.x, var_0.b.x))))), global2.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_0.b.x))) - _wgslsmith_f_op_f32(ceil(2558f)))));
    global2 = var_0;
    var var_3 = !(!(!select(select(vec4<bool>(var_1.x, true, var_1.x, false), vec4<bool>(global3[_wgslsmith_index_u32(u_input.b, 25u)], true, false, var_1.x), true), select(vec4<bool>(false, false, false, global3[_wgslsmith_index_u32(u_input.b, 25u)]), vec4<bool>(var_1.x, true, global3[_wgslsmith_index_u32(u_input.b, 25u)], var_1.x), true), true)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -820f), ~(~(~vec3<i32>(22003i, -2147483647i, global0[_wgslsmith_index_u32(u_input.b, 26u)]))), _wgslsmith_clamp_u32(firstTrailingBit(abs(~67626u)), firstTrailingBit(_wgslsmith_mod_u32(35950u, abs(4294967295u))), 64239u), vec3<i32>(1i, -_wgslsmith_sub_i32(var_0.a.x, _wgslsmith_mult_i32(global0[_wgslsmith_index_u32(u_input.a.x, 26u)], global0[_wgslsmith_index_u32(38336u, 26u)])), var_0.a.x));
}


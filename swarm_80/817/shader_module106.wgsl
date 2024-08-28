struct Struct_1 {
    a: vec2<bool>,
    b: i32,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 31> = array<Struct_2, 31>(Struct_2(-2441f), Struct_2(-1969f), Struct_2(1227f), Struct_2(-611f), Struct_2(1417f), Struct_2(722f), Struct_2(-342f), Struct_2(-846f), Struct_2(-1000f), Struct_2(-136f), Struct_2(895f), Struct_2(1000f), Struct_2(-1008f), Struct_2(-191f), Struct_2(-1068f), Struct_2(-766f), Struct_2(295f), Struct_2(309f), Struct_2(2293f), Struct_2(-489f), Struct_2(1133f), Struct_2(-701f), Struct_2(-184f), Struct_2(-1817f), Struct_2(-1182f), Struct_2(858f), Struct_2(618f), Struct_2(479f), Struct_2(1935f), Struct_2(908f), Struct_2(127f));

var<private> global1: vec2<i32> = vec2<i32>(-26550i, 2147483647i);

var<private> global2: array<Struct_2, 7>;

var<private> global3: array<bool, 30>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec3<bool>) -> u32 {
    var var_0 = arg_0;
    global0 = array<Struct_2, 31>();
    global1 = vec2<i32>(_wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(-min(vec2<i32>(global1.x, global1.x), vec2<i32>(-16991i, global1.x)), vec2<i32>(-2147483647i, global1.x >> (u_input.a % 32u))), 34826i), 0i);
    global2 = array<Struct_2, 7>();
    var var_1 = -4699i ^ -(global1.x | _wgslsmith_dot_vec2_i32(vec2<i32>(-46839i, global1.x) | vec2<i32>(global1.x, 35884i), vec2<i32>(-15709i, global1.x)));
    return ~u_input.a;
}

fn func_2() -> vec4<i32> {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -1147f, -1486f, -996f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-357f, 720f, 1000f, 555f), vec4<f32>(-970f, 1000f, -1435f, -219f))) - vec4<f32>(-449f, _wgslsmith_div_f32(1409f, 1682f), -1206f, _wgslsmith_f_op_f32(f32(-1f) * -845f))))));
    let var_1 = Struct_3(vec2<f32>(-2070f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1132f))))));
    global2 = array<Struct_2, 7>();
    let var_2 = Struct_1(select(vec2<bool>(true & all(vec3<bool>(global3[_wgslsmith_index_u32(1u, 30u)], false, global3[_wgslsmith_index_u32(4294967295u, 30u)])), global3[_wgslsmith_index_u32(_wgslsmith_add_u32(func_3(vec3<bool>(false, global3[_wgslsmith_index_u32(u_input.a, 30u)], global3[_wgslsmith_index_u32(u_input.a, 30u)])), u_input.a), 30u)]), !select(vec2<bool>(global3[_wgslsmith_index_u32(u_input.a, 30u)], global3[_wgslsmith_index_u32(0u, 30u)]), !vec2<bool>(global3[_wgslsmith_index_u32(989u, 30u)], global3[_wgslsmith_index_u32(62804u, 30u)]), global3[_wgslsmith_index_u32(u_input.a, 30u)]), select(vec2<bool>(any(vec2<bool>(true, true)), select(true, global3[_wgslsmith_index_u32(u_input.a, 30u)], global3[_wgslsmith_index_u32(u_input.a, 30u)])), !vec2<bool>(global3[_wgslsmith_index_u32(u_input.a, 30u)], true), select(false, false, false) != false)), select(abs(global1.x), -99027i, _wgslsmith_sub_u32(u_input.a, 4293u) >= _wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(u_input.a, u_input.a)), abs(vec2<u32>(21959u, u_input.a)))));
    let var_3 = var_0.x;
    return reverseBits(vec4<i32>(-_wgslsmith_add_i32(var_2.b, -var_2.b), -13648i, 1i, ~_wgslsmith_add_i32(var_2.b, _wgslsmith_sub_i32(2147483647i, global1.x))));
}

fn func_1(arg_0: i32, arg_1: Struct_3, arg_2: f32) -> u32 {
    var var_0 = -(_wgslsmith_mod_vec4_i32(~func_2(), vec4<i32>(-arg_0, 1i, global1.x, global1.x)) & vec4<i32>(arg_0 ^ firstTrailingBit(arg_0), arg_0, 4645i << (u_input.a % 32u), -80022i));
    global2 = array<Struct_2, 7>();
    var var_1 = _wgslsmith_mod_u32(u_input.a, ~reverseBits(reverseBits(35429u)));
    var var_2 = global3[_wgslsmith_index_u32(countOneBits(_wgslsmith_add_u32(1u, abs(u_input.a))), 30u)] || true;
    let var_3 = global1.x;
    return 89774u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global2[_wgslsmith_index_u32(~(~u_input.a), 7u)];
    global0 = array<Struct_2, 31>();
    let var_1 = (select(~vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a) >> (vec4<u32>(15766u, u_input.a, 4294967295u, u_input.a) % vec4<u32>(32u)), select(vec4<u32>(1u, 4294967295u, u_input.a, u_input.a), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, 13873u, 33325u, 24700u), vec4<u32>(u_input.a, 0u, u_input.a, 4983u)), vec4<bool>(true, global3[_wgslsmith_index_u32(1u, 30u)], global3[_wgslsmith_index_u32(u_input.a, 30u)], false)), true) & vec4<u32>(0u, u_input.a, ~(~u_input.a), max(_wgslsmith_div_u32(1u, u_input.a), 1u))) >> (_wgslsmith_div_vec4_u32(vec4<u32>(func_1(global1.x, Struct_3(vec2<f32>(108f, var_0.a)), 318f), 15253u, ~4294967295u, u_input.a | 49152u) & min(~vec4<u32>(u_input.a, 99989u, u_input.a, 7033u), vec4<u32>(u_input.a, 1u, 29643u, u_input.a)), vec4<u32>(~0u, ~u_input.a, u_input.a, _wgslsmith_sub_u32(abs(u_input.a), 4294967295u))) % vec4<u32>(32u));
    let var_2 = -max(~2147483647i, -(~global1.x) & -(~global1.x));
    var var_3 = reverseBits(_wgslsmith_sub_i32(var_2, var_2));
    let var_4 = func_2();
    let var_5 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(720f, var_0.a, var_0.a));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.yy);
}


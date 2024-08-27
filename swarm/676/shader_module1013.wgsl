struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: bool,
    c: vec2<u32>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: Struct_2,
    c: vec4<u32>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_4 {
    a: vec4<i32>,
    b: vec2<u32>,
    c: Struct_2,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<bool, 23> = array<bool, 23>(false, false, false, true, true, false, true, true, true, false, false, true, true, true, true, true, false, true, false, true, true, true, true);

var<private> global2: vec3<bool> = vec3<bool>(false, false, true);

var<private> global3: array<vec3<f32>, 22> = array<vec3<f32>, 22>(vec3<f32>(645f, -1637f, -508f), vec3<f32>(218f, -993f, -501f), vec3<f32>(-1232f, -173f, 1000f), vec3<f32>(-1000f, -390f, -345f), vec3<f32>(-256f, 1567f, 402f), vec3<f32>(2015f, 417f, 775f), vec3<f32>(-210f, -1000f, 276f), vec3<f32>(386f, -489f, 785f), vec3<f32>(-339f, -1342f, -227f), vec3<f32>(489f, -2034f, 1513f), vec3<f32>(-420f, 599f, 757f), vec3<f32>(-2312f, -147f, -159f), vec3<f32>(722f, -1000f, -1188f), vec3<f32>(-353f, -607f, 650f), vec3<f32>(-131f, -393f, 1616f), vec3<f32>(905f, -574f, -564f), vec3<f32>(-1578f, 159f, 798f), vec3<f32>(-450f, 1191f, 521f), vec3<f32>(1627f, -1636f, 790f), vec3<f32>(1623f, -654f, -344f), vec3<f32>(1517f, -836f, -384f), vec3<f32>(512f, -1062f, 397f));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec2<bool>, arg_1: f32) -> bool {
    let var_0 = (0i & _wgslsmith_mod_i32(min(max(-269i, 1i), _wgslsmith_dot_vec4_i32(vec4<i32>(-37161i, -23517i, 60579i, -31533i), vec4<i32>(-1i, -32784i, -1i, -2147483647i))), _wgslsmith_add_i32(1i, _wgslsmith_add_i32(44070i, 914i)))) != -min(_wgslsmith_dot_vec3_i32(vec3<i32>(-2412i, 1i, 0i), vec3<i32>(28407i, -34989i, -1i)), 34294i);
    return !arg_0.x;
}

fn func_2() -> f32 {
    var var_0 = any(vec4<bool>(!func_3(vec2<bool>(false, false), -153f) || !all(vec4<bool>(global2.x, false, false, global2.x)), false && !any(vec4<bool>(false, true, global1[_wgslsmith_index_u32(u_input.a, 23u)], false)), any(vec2<bool>(global1[_wgslsmith_index_u32(select(57645u, u_input.a, global2.x), 23u)], true && global1[_wgslsmith_index_u32(u_input.a, 23u)])), all(select(global2.xy, !vec2<bool>(global1[_wgslsmith_index_u32(u_input.a, 23u)], global1[_wgslsmith_index_u32(35207u, 23u)]), select(vec2<bool>(false, global1[_wgslsmith_index_u32(4294967295u, 23u)]), global2.zz, global2.zy)))));
    var var_1 = select(~(~_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, -5869i, -11191i), vec3<i32>(-1i, -2147483647i, 0i))), 1i >> (_wgslsmith_div_u32(abs(57879u | u_input.b), countOneBits(u_input.a)) % 32u), !(_wgslsmith_add_i32(_wgslsmith_mod_i32(2147483647i, 1i), 1i) >= _wgslsmith_mult_i32(i32(-1i) * -2147483647i, -1636i << (u_input.b % 32u))));
    let var_2 = -(~reverseBits(max(~vec4<i32>(1i, 2291i, 2147483647i, 1142i), vec4<i32>(1i, 1i, 1i, 1i))));
    var var_3 = _wgslsmith_mult_vec2_u32(vec2<u32>(~_wgslsmith_sub_u32(u_input.b, 25603u), 3487u), ~firstLeadingBit(~vec2<u32>(1u, 1u))) & vec2<u32>(~(~u_input.b) >> (u_input.b % 32u), 0u);
    var var_4 = var_2 ^ -vec4<i32>(_wgslsmith_sub_i32(0i, max(var_2.x, var_2.x)), var_2.x | var_2.x, 1i & var_2.x, -31412i);
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -116f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-158f, _wgslsmith_f_op_f32(1879f + -1328f)))))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -198f))));
}

fn func_1(arg_0: Struct_1) -> vec2<f32> {
    global1 = array<bool, 23>();
    global3 = array<vec3<f32>, 22>();
    var var_0 = arg_0.a.wxy;
    let var_1 = Struct_1(~_wgslsmith_mod_vec4_i32(arg_0.a, vec4<i32>(var_0.x & var_0.x, var_0.x, arg_0.a.x, -var_0.x)));
    global1 = array<bool, 23>();
    return vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-743f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_2()), -563f))) - 2017f), 1509f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<u32>(firstTrailingBit(~u_input.b), select(61346u | u_input.a, ~19562u, !all(vec3<bool>(false, global1[_wgslsmith_index_u32(u_input.a, 23u)], true))), ~(~(~(u_input.b ^ 0u))));
    let var_1 = ~vec4<u32>(_wgslsmith_sub_u32(u_input.a, ~max(u_input.b, 64977u)), reverseBits(var_0.x), var_0.x, u_input.a);
    let var_2 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(707f, 504f) + _wgslsmith_f_op_vec2_f32(vec2<f32>(412f, -1479f) - vec2<f32>(663f, -458f))))) + _wgslsmith_f_op_vec2_f32(func_1(Struct_1(vec4<i32>(2147483647i, -2147483647i, -34116i, -23231i)))))));
    let var_3 = select(var_0.x, 0u, true);
    let var_4 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1000f + -606f)));
    let x = u_input.a;
    s_output = StorageBuffer(~(~firstLeadingBit(i32(-1i) * -32102i)), ~vec3<u32>(~(~14860u), 1u, var_1.x));
}


struct Struct_1 {
    a: bool,
    b: vec3<f32>,
    c: vec4<u32>,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 21> = array<Struct_1, 21>(Struct_1(true, vec3<f32>(-111f, 446f, 564f), vec4<u32>(1u, 0u, 28588u, 0u), vec3<bool>(false, true, true)), Struct_1(true, vec3<f32>(1038f, -970f, 963f), vec4<u32>(93270u, 37718u, 1u, 23230u), vec3<bool>(false, false, false)), Struct_1(true, vec3<f32>(-598f, -118f, -492f), vec4<u32>(4294967295u, 4294967295u, 4294967295u, 68065u), vec3<bool>(false, false, true)), Struct_1(true, vec3<f32>(734f, 771f, 810f), vec4<u32>(74233u, 0u, 4294967295u, 1u), vec3<bool>(false, true, true)), Struct_1(true, vec3<f32>(-303f, -2632f, -234f), vec4<u32>(4294967295u, 1u, 15891u, 1u), vec3<bool>(false, true, false)), Struct_1(true, vec3<f32>(103f, 253f, 112f), vec4<u32>(80980u, 71772u, 12043u, 1u), vec3<bool>(false, false, true)), Struct_1(true, vec3<f32>(-462f, 362f, -187f), vec4<u32>(0u, 24059u, 4294967295u, 0u), vec3<bool>(true, false, false)), Struct_1(false, vec3<f32>(-1000f, 176f, -274f), vec4<u32>(101398u, 4294967295u, 25616u, 0u), vec3<bool>(true, false, false)), Struct_1(false, vec3<f32>(-813f, -738f, -1000f), vec4<u32>(1u, 1u, 1703u, 1u), vec3<bool>(true, true, false)), Struct_1(false, vec3<f32>(104f, 203f, -2207f), vec4<u32>(1u, 1u, 38495u, 70918u), vec3<bool>(true, true, false)), Struct_1(false, vec3<f32>(-413f, -415f, -939f), vec4<u32>(0u, 52356u, 0u, 4294967295u), vec3<bool>(false, true, false)), Struct_1(false, vec3<f32>(1000f, 819f, -1289f), vec4<u32>(0u, 18061u, 75623u, 9883u), vec3<bool>(false, true, true)), Struct_1(false, vec3<f32>(948f, 1152f, 303f), vec4<u32>(1u, 48487u, 20951u, 27952u), vec3<bool>(true, true, true)), Struct_1(false, vec3<f32>(356f, 860f, -1946f), vec4<u32>(0u, 19743u, 5091u, 17367u), vec3<bool>(true, true, true)), Struct_1(true, vec3<f32>(-1000f, -1504f, -813f), vec4<u32>(0u, 40677u, 4294967295u, 1u), vec3<bool>(true, false, false)), Struct_1(true, vec3<f32>(834f, 826f, -408f), vec4<u32>(1u, 123196u, 0u, 4294967295u), vec3<bool>(false, true, false)), Struct_1(true, vec3<f32>(2103f, -680f, 128f), vec4<u32>(8041u, 50283u, 28583u, 4294967295u), vec3<bool>(false, false, false)), Struct_1(false, vec3<f32>(-569f, 706f, -1476f), vec4<u32>(53106u, 547u, 4294967295u, 4294967295u), vec3<bool>(false, false, true)), Struct_1(true, vec3<f32>(-151f, -787f, 2248f), vec4<u32>(3471u, 8926u, 0u, 34925u), vec3<bool>(false, false, false)), Struct_1(true, vec3<f32>(1000f, -682f, -206f), vec4<u32>(47360u, 1u, 4294967295u, 1u), vec3<bool>(false, false, false)), Struct_1(true, vec3<f32>(-434f, -1298f, -520f), vec4<u32>(0u, 18356u, 5205u, 15657u), vec3<bool>(false, false, false)));

var<private> global1: vec2<u32>;

var<private> global2: array<f32, 18>;

var<private> global3: u32;

var<private> global4: array<bool, 4>;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_1() -> Struct_1 {
    let var_0 = 4294967295u;
    global2 = array<f32, 18>();
    var var_1 = global0[_wgslsmith_index_u32(~firstLeadingBit(36874u), 21u)];
    var var_2 = 46075u;
    global1 = _wgslsmith_sub_vec2_u32(var_1.c.zw, _wgslsmith_add_vec2_u32(var_1.c.zy, ~vec2<u32>(reverseBits(45173u), var_1.c.x)));
    return global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(var_1.c.zyy, vec3<u32>(countOneBits(~46630u), _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(var_1.c.yzx, var_1.c.yyz), var_1.c.zyy) >> (global1.x % 32u), var_0)), 21u)];
}

fn func_3(arg_0: Struct_1, arg_1: f32, arg_2: i32) -> i32 {
    var var_0 = select(19931i, -(countOneBits(-arg_2) >> (43196u % 32u)), true);
    var var_1 = global4[_wgslsmith_index_u32(u_input.a, 4u)];
    global2 = array<f32, 18>();
    var var_2 = Struct_1(abs(arg_2) == 2147483647i, _wgslsmith_f_op_vec3_f32(step(arg_0.b, vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(5632u, 18u)]), arg_0.b.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1), arg_0.b.x), _wgslsmith_f_op_f32(arg_0.b.x * _wgslsmith_f_op_f32(max(256f, arg_1)))))), vec4<u32>(u_input.a, ~1u, _wgslsmith_mult_u32(select(u_input.a, 33058u, global4[_wgslsmith_index_u32(arg_0.c.x, 4u)]), ~4294967295u) ^ arg_0.c.x, _wgslsmith_dot_vec2_u32(~arg_0.c.zw | _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a, global1.x), vec2<u32>(arg_0.c.x, u_input.a)), ~select(vec2<u32>(arg_0.c.x, 191u), arg_0.c.ww, vec2<bool>(arg_0.d.x, global4[_wgslsmith_index_u32(u_input.a, 4u)])))), !(!arg_0.d));
    var_1 = false | ((all(select(vec3<bool>(false, arg_0.d.x, false), var_2.d, vec3<bool>(global4[_wgslsmith_index_u32(4240u, 4u)], false, false))) | true) || func_1().d.x);
    return ~max(i32(-1i) * -2147483647i, ~arg_2);
}

fn func_2(arg_0: bool, arg_1: Struct_1, arg_2: bool, arg_3: i32) -> vec3<i32> {
    let var_0 = countOneBits(~vec2<u32>(~(~4294967295u), ~4294967295u));
    global0 = array<Struct_1, 21>();
    var var_1 = 0u;
    var var_2 = abs(34523i);
    var var_3 = 495f;
    return vec3<i32>(func_3(global0[_wgslsmith_index_u32(~4294967295u, 21u)], _wgslsmith_div_f32(arg_1.b.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(global2[_wgslsmith_index_u32(arg_1.c.x, 18u)], global2[_wgslsmith_index_u32(arg_1.c.x, 18u)])))), -countOneBits(arg_3 >> (32462u % 32u))), max(~(~1i), arg_3), -_wgslsmith_mult_i32(arg_3, ~(-arg_3)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global2[_wgslsmith_index_u32(u_input.a, 18u)], 222f) + -1460f))), global2[_wgslsmith_index_u32(global1.x, 18u)]), _wgslsmith_mod_u32(firstLeadingBit(_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, 4294967295u, u_input.a), vec3<u32>(global1.x, u_input.a, 4294967295u)), vec3<u32>(u_input.a, global1.x, global1.x) ^ vec3<u32>(global1.x, 56070u, 0u))), u_input.a), _wgslsmith_dot_vec3_i32(countOneBits(_wgslsmith_add_vec3_i32(abs(vec3<i32>(-1i, 2147483647i, 7999i)), select(vec3<i32>(-1i, 2147483647i, 0i), vec3<i32>(0i, 34320i, -2147483647i), true))), ~func_2(true || global4[_wgslsmith_index_u32(1u, 4u)], func_1(), true, ~64991i)));
}


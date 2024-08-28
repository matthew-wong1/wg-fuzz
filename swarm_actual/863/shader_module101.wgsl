struct Struct_1 {
    a: bool,
    b: vec3<u32>,
    c: vec3<f32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: vec4<bool>,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(false, vec3<u32>(1u, 4294967295u, 61009u), vec3<f32>(442f, 1000f, 2449f));

var<private> global1: array<Struct_1, 25> = array<Struct_1, 25>(Struct_1(false, vec3<u32>(23560u, 1u, 0u), vec3<f32>(709f, -1000f, -592f)), Struct_1(true, vec3<u32>(21338u, 1u, 1u), vec3<f32>(336f, 737f, -123f)), Struct_1(false, vec3<u32>(4294967295u, 0u, 4294967295u), vec3<f32>(1099f, -1850f, 352f)), Struct_1(true, vec3<u32>(128841u, 0u, 42489u), vec3<f32>(-408f, -2343f, 1563f)), Struct_1(false, vec3<u32>(0u, 1u, 4294967295u), vec3<f32>(-1000f, 1000f, -1000f)), Struct_1(true, vec3<u32>(114740u, 4294967295u, 42467u), vec3<f32>(708f, -1253f, -303f)), Struct_1(false, vec3<u32>(47698u, 25572u, 121262u), vec3<f32>(909f, 2740f, -308f)), Struct_1(false, vec3<u32>(51716u, 1u, 0u), vec3<f32>(-769f, 738f, 1288f)), Struct_1(false, vec3<u32>(4294967295u, 21194u, 62754u), vec3<f32>(1942f, -1000f, -984f)), Struct_1(true, vec3<u32>(4294967295u, 45550u, 17362u), vec3<f32>(1000f, 1040f, -336f)), Struct_1(true, vec3<u32>(15396u, 1u, 4461u), vec3<f32>(-926f, 508f, -962f)), Struct_1(true, vec3<u32>(1u, 25936u, 5873u), vec3<f32>(605f, -1672f, -500f)), Struct_1(false, vec3<u32>(0u, 4294967295u, 4294967295u), vec3<f32>(-1597f, 1000f, -1095f)), Struct_1(true, vec3<u32>(1u, 0u, 4294967295u), vec3<f32>(-282f, -1051f, 1135f)), Struct_1(true, vec3<u32>(4294967295u, 4294967295u, 28355u), vec3<f32>(220f, 637f, -367f)), Struct_1(true, vec3<u32>(18330u, 72878u, 1u), vec3<f32>(655f, -647f, -1000f)), Struct_1(false, vec3<u32>(84120u, 1u, 10138u), vec3<f32>(-1216f, -1000f, -603f)), Struct_1(false, vec3<u32>(46444u, 0u, 12064u), vec3<f32>(-789f, 1179f, -516f)), Struct_1(false, vec3<u32>(0u, 17947u, 1u), vec3<f32>(339f, -912f, -1569f)), Struct_1(false, vec3<u32>(25382u, 52287u, 26361u), vec3<f32>(-348f, -2065f, -101f)), Struct_1(true, vec3<u32>(1u, 4294967295u, 20761u), vec3<f32>(795f, -1332f, -1146f)), Struct_1(false, vec3<u32>(367u, 1u, 1u), vec3<f32>(-990f, -776f, -344f)), Struct_1(false, vec3<u32>(0u, 0u, 31256u), vec3<f32>(-458f, -2261f, -478f)), Struct_1(true, vec3<u32>(4294967295u, 41947u, 1u), vec3<f32>(544f, 192f, 928f)), Struct_1(false, vec3<u32>(39983u, 144202u, 4294967295u), vec3<f32>(314f, -342f, -861f)));

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec4<f32>, arg_1: vec3<i32>, arg_2: Struct_1) -> f32 {
    global0 = arg_2;
    var var_0 = true;
    var var_1 = arg_2;
    let var_2 = Struct_1(true, global0.b, _wgslsmith_f_op_vec3_f32(-arg_2.c));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_2.c.x, 1099f))) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global0.c.x), _wgslsmith_f_op_f32(var_2.c.x + 210f)))))));
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_3)) + _wgslsmith_f_op_f32(-global0.c.x))))))));
}

fn func_2(arg_0: vec3<i32>, arg_1: vec4<u32>) -> bool {
    let var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1418f, 820f, global0.c.x, -784f))))), vec3<i32>(abs(0i), abs(arg_0.x), arg_0.x), global1[_wgslsmith_index_u32(firstTrailingBit(4294967295u), 25u)])), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(223f * global0.c.x)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(-272f, global0.c.x))))))));
    var var_1 = countOneBits(_wgslsmith_div_u32(countOneBits(global0.b.x) & (u_input.a.x & 0u), _wgslsmith_dot_vec3_u32(firstLeadingBit(vec3<u32>(12774u, u_input.a.x, 4294967295u)), arg_1.xzx) ^ 14361u));
    let var_2 = 2147483647i;
    let var_3 = _wgslsmith_mod_vec2_i32(countOneBits(arg_0.zz), select(arg_0.zz, arg_0.zy, !(_wgslsmith_f_op_f32(-var_0.x) <= _wgslsmith_f_op_f32(global0.c.x - global0.c.x))));
    var_1 = global0.b.x;
    return false;
}

fn func_1() -> StorageBuffer {
    let var_0 = global0.c.x;
    let var_1 = Struct_2(vec2<bool>(!(!(global0.a == false)), !global0.a), Struct_1(all(select(select(vec3<bool>(global0.a, true, false), vec3<bool>(true, false, global0.a), vec3<bool>(global0.a, false, global0.a)), !vec3<bool>(global0.a, global0.a, true), func_2(vec3<i32>(-1i, -45291i, 9523i), vec4<u32>(u_input.a.x, 1u, 81895u, u_input.a.x)))), ~(~vec3<u32>(u_input.a.x, 9200u, 11385u)), global0.c), vec4<bool>(false, true, all(!(!vec4<bool>(true, global0.a, global0.a, global0.a))), all(vec2<bool>(global0.b.x > u_input.a.x, true))), Struct_1(true, _wgslsmith_add_vec3_u32(~vec3<u32>(global0.b.x, global0.b.x, u_input.a.x), ~vec3<u32>(u_input.a.x, 4294967295u, global0.b.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(global0.c, vec3<f32>(global0.c.x, -1561f, -439f), any(vec2<bool>(global0.a, global0.a)))) + vec3<f32>(-216f, _wgslsmith_f_op_f32(floor(global0.c.x)), _wgslsmith_f_op_f32(-207f - 930f)))));
    let var_2 = Struct_2(var_1.a, var_1.d, var_1.c, var_1.b);
    let var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_1.d.c.x), _wgslsmith_f_op_f32(-global0.c.x))), -1853f) < 318f;
    global1 = array<Struct_1, 25>();
    return StorageBuffer(_wgslsmith_mod_i32(max(firstTrailingBit(1i), -1i & _wgslsmith_clamp_i32(3582i, -2147483647i, 3779i)), -1i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 1u;
    let var_1 = global0.c;
    var var_2 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(global0.c.x, 2125f, -1948f), vec3<f32>(481f, global0.c.x, 101f))) - _wgslsmith_div_vec3_f32(vec3<f32>(var_1.x, _wgslsmith_f_op_f32(global0.c.x + var_1.x), _wgslsmith_f_op_f32(ceil(625f))), vec3<f32>(_wgslsmith_div_f32(var_1.x, -1576f), -320f, _wgslsmith_f_op_f32(-var_1.x))))));
    var var_3 = !vec2<bool>(select(false, select(0i, 0i, global0.a) == -19048i, all(vec2<bool>(global0.a, global0.a))), global0.a);
    let var_4 = var_3.x;
    global0 = global1[_wgslsmith_index_u32(u_input.a.x, 25u)];
    let x = u_input.a;
    s_output = func_1();
}


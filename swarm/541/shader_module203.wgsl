struct Struct_1 {
    a: vec2<f32>,
    b: vec4<i32>,
}

struct Struct_2 {
    a: i32,
    b: vec2<bool>,
    c: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<i32>,
    c: Struct_1,
}

struct Struct_4 {
    a: vec3<u32>,
    b: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: f32,
    d: vec3<i32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 1>;

var<private> global1: array<u32, 7> = array<u32, 7>(1u, 0u, 0u, 4294967295u, 40443u, 51123u, 0u);

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: u32) -> bool {
    let var_0 = vec4<bool>(true, true, !all(!select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(false, false, false))), any(vec4<bool>(false, true, true, true)) && any(select(select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(true, false, false)), vec3<bool>(false, false, true), all(vec3<bool>(false, false, true)))));
    var var_1 = Struct_3(Struct_2(-19686i, vec2<bool>(var_0.x, true), ~0i), -vec4<i32>(-2147483647i, 1i, _wgslsmith_dot_vec4_i32(vec4<i32>(0i, -2147483647i, -18681i, -56027i) << (vec4<u32>(u_input.c.x, u_input.a.x, 53202u, 4294967295u) % vec4<u32>(32u)), countOneBits(vec4<i32>(24318i, -2147483647i, 29458i, 1i))), firstLeadingBit(-13614i)), Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-938f, 575f)), reverseBits(vec4<i32>(17940i, -1i, -25309i, -2147483647i)) | _wgslsmith_clamp_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), vec4<i32>(1i, 2147483647i, 0i, -26666i), -vec4<i32>(-16655i, -2147483647i, -18884i, 20016i))));
    global1 = array<u32, 7>();
    var var_2 = var_1.c;
    var_1 = Struct_3(var_1.a, vec4<i32>(abs(abs(_wgslsmith_dot_vec2_i32(vec2<i32>(28197i, var_2.b.x), vec2<i32>(-11314i, 0i)))), _wgslsmith_dot_vec3_i32(var_1.b.zzz, _wgslsmith_mod_vec3_i32(var_1.c.b.wwx, vec3<i32>(var_1.b.x, -1i, -2147483647i)) ^ reverseBits(var_1.c.b.xyy)), -26619i, -_wgslsmith_sub_i32(var_1.b.x, var_1.c.b.x) << (34281u % 32u)), var_1.c);
    return abs(arg_0) >= abs(~global1[_wgslsmith_index_u32(43958u, 7u)]);
}

fn func_2(arg_0: Struct_4, arg_1: i32) -> Struct_2 {
    let var_0 = Struct_2(i32(-1i) * -5135i, select(select(select(select(vec2<bool>(false, true), vec2<bool>(true, false), true), vec2<bool>(false, true), select(vec2<bool>(false, true), vec2<bool>(true, true), false)), vec2<bool>(true, true), all(vec4<bool>(true, false, true, true))), vec2<bool>(true, true), vec2<bool>(func_3(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.a.x, 0u, 196u), vec3<u32>(1u, 21419u, 25255u))), func_3(u_input.a.x) | (53539u != u_input.b))), abs(~firstLeadingBit(~arg_1)));
    let var_1 = -countOneBits(-countOneBits(-arg_1));
    var var_2 = false;
    return var_0;
}

fn func_1() -> Struct_2 {
    let var_0 = func_2(Struct_4(~select(vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(18562u, 7u)], 7u)], 2124u, u_input.c.x), ~vec3<u32>(u_input.b, u_input.c.x, 0u), true), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(377f, -154f, true)))))), _wgslsmith_mod_i32(~_wgslsmith_dot_vec2_i32(vec2<i32>(1996i, 0i), vec2<i32>(2147483647i, -28468i)), firstTrailingBit(23967i) << (_wgslsmith_mult_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a.x, 7u)], 7u)], u_input.c.x) % 32u)) | 2147483647i);
    global1 = array<u32, 7>();
    let var_1 = func_2(Struct_4(firstTrailingBit(abs(~vec3<u32>(0u, global1[_wgslsmith_index_u32(u_input.c.x, 7u)], 52682u))), _wgslsmith_f_op_f32(select(1399f, 1624f, !var_0.b.x))), var_0.c);
    global1 = array<u32, 7>();
    let var_2 = Struct_4(abs(countOneBits(vec3<u32>(u_input.a.x, 23772u, 4294967295u))), _wgslsmith_f_op_f32(f32(-1f) * -1348f));
    return Struct_2(firstTrailingBit(var_1.a), vec2<bool>(var_0.b.x, true), -(~13617i));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<u32, 7>();
    global0 = array<vec3<f32>, 1>();
    global0 = array<vec3<f32>, 1>();
    var var_0 = func_1();
    global0 = array<vec3<f32>, 1>();
    let x = u_input.a;
    s_output = StorageBuffer(~1u, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_add_u32(u_input.c.x, 1u) | 60748u, 4294967295u), 7u)], 1u)], _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-130f * _wgslsmith_f_op_f32(ceil(-570f))))), -1155f), vec3<i32>(abs(var_0.a), ~(-13347i), 2147483647i), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(301f - 219f))), -866f, 671f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(-1460f, -1310f))))))));
}


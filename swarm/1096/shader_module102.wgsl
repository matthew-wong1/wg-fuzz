struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: u32,
}

struct Struct_3 {
    a: vec3<f32>,
    b: i32,
    c: i32,
    d: u32,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: i32,
    d: vec2<i32>,
    e: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 25>;

var<private> global1: Struct_1;

var<private> global2: vec4<f32> = vec4<f32>(-838f, -1391f, -1883f, -1247f);

var<private> global3: array<Struct_1, 25> = array<Struct_1, 25>(Struct_1(vec3<u32>(49992u, 1u, 1u)), Struct_1(vec3<u32>(62140u, 6547u, 3823u)), Struct_1(vec3<u32>(1330u, 1u, 845u)), Struct_1(vec3<u32>(86626u, 17344u, 1u)), Struct_1(vec3<u32>(4294967295u, 47956u, 1u)), Struct_1(vec3<u32>(50716u, 4294967295u, 4374u)), Struct_1(vec3<u32>(28202u, 1u, 59959u)), Struct_1(vec3<u32>(98505u, 54063u, 33422u)), Struct_1(vec3<u32>(1u, 22352u, 1u)), Struct_1(vec3<u32>(1u, 4294967295u, 4294967295u)), Struct_1(vec3<u32>(4294967295u, 44163u, 0u)), Struct_1(vec3<u32>(1u, 4294967295u, 51160u)), Struct_1(vec3<u32>(0u, 0u, 98123u)), Struct_1(vec3<u32>(4294967295u, 16078u, 0u)), Struct_1(vec3<u32>(44530u, 0u, 4761u)), Struct_1(vec3<u32>(1u, 54410u, 0u)), Struct_1(vec3<u32>(4294967295u, 4294967295u, 0u)), Struct_1(vec3<u32>(7369u, 13045u, 33895u)), Struct_1(vec3<u32>(35421u, 4136u, 414u)), Struct_1(vec3<u32>(4294967295u, 1u, 34200u)), Struct_1(vec3<u32>(53124u, 4294967295u, 71335u)), Struct_1(vec3<u32>(100364u, 1u, 0u)), Struct_1(vec3<u32>(1u, 0u, 1u)), Struct_1(vec3<u32>(1u, 0u, 4294967295u)), Struct_1(vec3<u32>(0u, 70052u, 107190u)));

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: bool, arg_1: u32, arg_2: Struct_2, arg_3: bool) -> u32 {
    global2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, -549f, -1563f, 653f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.x, 1608f, global2.x, global2.x) * vec4<f32>(2411f, global2.x, global2.x, -678f))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(373f, global2.x, -519f, global2.x)) - _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-685f, 386f, 2760f, global2.x)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1016f, global2.x, -1409f, global2.x)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(global2.x, -1000f, global2.x, global2.x) + vec4<f32>(-317f, -317f, -1224f, global2.x))))));
    let var_0 = global2.x;
    global0 = array<i32, 25>();
    global1 = global3[_wgslsmith_index_u32(~(~(_wgslsmith_dot_vec2_u32(max(vec2<u32>(arg_2.a.a.x, 0u), vec2<u32>(1u, 100968u)), _wgslsmith_mult_vec2_u32(global1.a.yz, arg_2.a.a.xx)) >> (428u % 32u))), 25u)];
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global2.x)));
    return _wgslsmith_mod_u32(abs((arg_2.a.a.x & 1u) & arg_1), countOneBits(min(~global1.a.x, countOneBits(0u)))) ^ abs(1u ^ global1.a.x);
}

fn func_2(arg_0: i32) -> Struct_1 {
    var var_0 = Struct_2(Struct_1(vec3<u32>(reverseBits(select(global1.a.x, 1u, false)), func_3(false, global1.a.x, Struct_2(global3[_wgslsmith_index_u32(56909u, 25u)], u_input.b.xwz, global1.a.x), -2147483647i >= arg_0), 71001u)), vec3<i32>(u_input.a, global0[_wgslsmith_index_u32(global1.a.x, 25u)], 41611i), max(~(~select(global1.a.x, 44637u, false)), global1.a.x));
    global3 = array<Struct_1, 25>();
    var var_1 = select(!(true & all(vec4<bool>(true, true, true, true))), select(_wgslsmith_f_op_f32(-global2.x) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x)), true, 0u != ((global1.a.x >> (0u % 32u)) ^ 28545u)), !all(!select(vec2<bool>(false, false), vec2<bool>(false, false), true)));
    global0 = array<i32, 25>();
    let var_2 = _wgslsmith_f_op_vec3_f32(-global2.zxy);
    return Struct_1(~global1.a);
}

fn func_1(arg_0: Struct_3, arg_1: bool) -> f32 {
    let var_0 = _wgslsmith_sub_vec4_i32(u_input.b, _wgslsmith_div_vec4_i32(~u_input.b, vec4<i32>(0i, arg_0.c, 45363i, firstTrailingBit(_wgslsmith_mult_i32(u_input.e, 1i)))));
    global1 = func_2(_wgslsmith_sub_i32(var_0.x | -1i, -1i >> (~(global1.a.x & 0u) % 32u)));
    var var_1 = func_2(_wgslsmith_div_i32(~global0[_wgslsmith_index_u32(global1.a.x ^ ~52619u, 25u)], ~(~u_input.d.x)));
    let var_2 = _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_0.a.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_0.a.x))), -539f, _wgslsmith_f_op_f32(ceil(-1000f)))));
    let var_3 = global2.yz;
    return _wgslsmith_div_f32(-333f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1946f, -267f, true)))))));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<Struct_1, 25>();
    var var_0 = global2.zwz;
    var var_1 = true;
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global2.x), 1491f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global2.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_1(Struct_3(vec3<f32>(-1280f, var_0.x, 121f), -3493i, -61347i, 1326u, vec4<u32>(0u, 1u, global1.a.x, global1.a.x)), true)))) - var_0.x));
    let var_3 = ~vec4<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(32999u, 0u, global1.a.x, global1.a.x), vec4<u32>(1u, global1.a.x, 0u, 51347u)), vec4<u32>(161u, global1.a.x, global1.a.x, 4294967295u), _wgslsmith_sub_vec4_u32(vec4<u32>(global1.a.x, 37755u, 0u, 1u), vec4<u32>(1u, global1.a.x, global1.a.x, 1u))), vec4<u32>(4294967295u, global1.a.x, global1.a.x, global1.a.x) & _wgslsmith_clamp_vec4_u32(vec4<u32>(global1.a.x, global1.a.x, 1u, global1.a.x), vec4<u32>(4294967295u, global1.a.x, 40677u, 1u), vec4<u32>(0u, 71780u, global1.a.x, 86197u))), abs(global1.a.x), ~func_3(all(vec4<bool>(true, true, true, false)), 0u, Struct_2(Struct_1(global1.a), u_input.b.xyx, 31168u), true), global1.a.x ^ ~abs(0u));
    let var_4 = Struct_2(func_2(u_input.e), select(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.b.x, global0[_wgslsmith_index_u32(var_3.x, 25u)], 1i), vec3<i32>(global0[_wgslsmith_index_u32(var_3.x, 25u)], global0[_wgslsmith_index_u32(4294967295u, 25u)], global0[_wgslsmith_index_u32(global1.a.x, 25u)])), u_input.b.zxz, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, global1.a.x), vec2<u32>(global1.a.x, global1.a.x)), 25u)] == (i32(-1i) * -36302i)) | reverseBits(u_input.b.wwy), ~(~(global1.a.x >> (~var_3.x % 32u))));
    let var_5 = vec3<bool>(false, true, true);
    let var_6 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-652f, var_0.x, 244f, global2.x), vec4<f32>(-1626f, -592f, var_0.x, var_2.x)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 979f, var_2.x, var_2.x))))));
    var var_7 = func_2(u_input.e);
    let x = u_input.a;
    s_output = StorageBuffer(885f);
}


struct Struct_1 {
    a: vec3<f32>,
    b: vec3<f32>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: vec2<u32>,
    b: u32,
}

struct Struct_4 {
    a: vec4<f32>,
    b: Struct_1,
}

struct Struct_5 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 1013f;

var<private> global1: array<Struct_3, 24> = array<Struct_3, 24>(Struct_3(vec2<u32>(61376u, 1u), 48508u), Struct_3(vec2<u32>(2855u, 17843u), 41009u), Struct_3(vec2<u32>(1u, 73097u), 0u), Struct_3(vec2<u32>(1u, 1u), 0u), Struct_3(vec2<u32>(57913u, 1u), 68966u), Struct_3(vec2<u32>(74424u, 0u), 31431u), Struct_3(vec2<u32>(2877u, 10229u), 0u), Struct_3(vec2<u32>(4294967295u, 0u), 4294967295u), Struct_3(vec2<u32>(36755u, 4294967295u), 4294967295u), Struct_3(vec2<u32>(0u, 4294967295u), 23277u), Struct_3(vec2<u32>(57228u, 27149u), 4294967295u), Struct_3(vec2<u32>(4294967295u, 1u), 4379u), Struct_3(vec2<u32>(20592u, 24711u), 48931u), Struct_3(vec2<u32>(1u, 32831u), 1u), Struct_3(vec2<u32>(4294967295u, 38249u), 4294967295u), Struct_3(vec2<u32>(31732u, 1u), 1u), Struct_3(vec2<u32>(77046u, 58207u), 4294967295u), Struct_3(vec2<u32>(68617u, 4644u), 0u), Struct_3(vec2<u32>(1398u, 5648u), 0u), Struct_3(vec2<u32>(4294967295u, 4174u), 36213u), Struct_3(vec2<u32>(1u, 49117u), 26520u), Struct_3(vec2<u32>(12148u, 6299u), 63783u), Struct_3(vec2<u32>(3493u, 56865u), 17666u), Struct_3(vec2<u32>(42149u, 71332u), 1u));

var<private> global2: array<vec4<i32>, 5> = array<vec4<i32>, 5>(vec4<i32>(-1i, -19620i, -48572i, i32(-2147483648)), vec4<i32>(8382i, -1i, 1i, 9582i), vec4<i32>(1i, -1i, -7907i, 2147483647i), vec4<i32>(53548i, 9493i, 1i, i32(-2147483648)), vec4<i32>(-6628i, 2147483647i, 2882i, 2147483647i));

var<private> global3: vec3<f32> = vec3<f32>(1608f, 1316f, 991f);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_3, arg_2: bool) -> i32 {
    global0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.x, _wgslsmith_div_f32(336f, 920f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) - _wgslsmith_f_op_f32(arg_0.x * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-385f * arg_0.x), arg_0.x))));
    let var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global3.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-179f)))), select(all(!select(vec4<bool>(true, true, arg_2, true), vec4<bool>(false, arg_2, arg_2, arg_2), vec4<bool>(true, arg_2, false, false))), !(!any(vec2<bool>(false, arg_2))), any(!vec2<bool>(arg_2, arg_2)) || any(select(vec4<bool>(false, true, false, arg_2), vec4<bool>(false, true, arg_2, true), true)))));
    var var_1 = -31351i;
    var_1 = 0i;
    let var_2 = false;
    return -50848i;
}

fn func_2(arg_0: vec4<u32>, arg_1: f32, arg_2: bool, arg_3: bool) -> Struct_2 {
    var var_0 = vec3<i32>(~(func_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, global3.x, global3.x, arg_1)), Struct_3(u_input.b.zy, 0u), all(vec4<bool>(arg_3, true, true, arg_3))) << (541u % 32u)), _wgslsmith_add_i32(i32(-1i) * -(~0i), 1i), _wgslsmith_dot_vec2_i32(abs(countOneBits(_wgslsmith_add_vec2_i32(vec2<i32>(-15841i, 27725i), vec2<i32>(2147483647i, -1i)))), firstTrailingBit(_wgslsmith_mod_vec2_i32(vec2<i32>(1i, 1i), vec2<i32>(1i, 1i)))));
    var var_1 = -var_0.x;
    var var_2 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global3.x, 1008f))), _wgslsmith_f_op_f32(min(arg_1, _wgslsmith_f_op_f32(exp2(global3.x))))))));
    var_0 = -_wgslsmith_div_vec3_i32(vec3<i32>(37342i, firstTrailingBit(-44113i), _wgslsmith_dot_vec3_i32(abs(vec3<i32>(-1i, 30953i, var_0.x)), min(vec3<i32>(var_0.x, -68181i, var_0.x), vec3<i32>(var_0.x, -1i, 2147483647i)))), vec3<i32>(var_0.x, reverseBits(abs(var_0.x)), (var_0.x >> (arg_0.x % 32u)) << (_wgslsmith_add_u32(arg_0.x, u_input.b.x) % 32u)));
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(global3.x, 380f))) - -1581f) - _wgslsmith_f_op_f32(floor(arg_1)));
    return Struct_2(arg_2);
}

fn func_1(arg_0: Struct_3, arg_1: Struct_4, arg_2: vec2<u32>, arg_3: vec2<u32>) -> i32 {
    let var_0 = 157u;
    global3 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -991f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global3.x))) + global3.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.a.x - _wgslsmith_f_op_f32(-global3.x)) + global3.x)));
    let var_1 = global2[_wgslsmith_index_u32(arg_2.x, 5u)];
    let var_2 = ~var_1.x;
    let var_3 = func_2(vec4<u32>(_wgslsmith_add_u32(~arg_0.a.x, _wgslsmith_mod_u32(8375u, 25452u)), ~arg_0.b, ~var_0, 4294967295u), _wgslsmith_f_op_f32(f32(-1f) * -867f), all(vec2<bool>(true, true)), true);
    return abs(~0i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -563f;
    var var_1 = vec3<i32>(min(2147483647i, ~(i32(-1i) * -41636i)), i32(-1i) * -1i, func_1(global1[_wgslsmith_index_u32(u_input.a & 4294967295u, 24u)], Struct_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1637f, global3.x, -1484f, 1183f) * vec4<f32>(global3.x, 529f, -1608f, global3.x)) - _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(287f, global3.x, -163f, global3.x)))), Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(552f, 967f, global3.x) * vec3<f32>(global3.x, -299f, global3.x)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(global3.x, global3.x, global3.x), vec3<f32>(1000f, global3.x, global3.x), false)))), _wgslsmith_mod_vec2_u32(u_input.b.yx, select(u_input.b.zz, abs(vec2<u32>(u_input.b.x, u_input.a)), vec2<bool>(true, true))), vec2<u32>(4294967295u, _wgslsmith_div_u32(~u_input.a, max(u_input.b.x, u_input.b.x)))));
    global1 = array<Struct_3, 24>();
    var var_2 = ~vec2<i32>(var_1.x, _wgslsmith_mod_i32(abs(i32(-1i) * -26394i), -21021i));
    var var_3 = global3.zz;
    var var_4 = Struct_2(all(select(select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), any(vec4<bool>(true, true, false, false))), select(select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(false, false, true)), vec3<bool>(true, true, false), u_input.a == 672u), false)));
    let x = u_input.a;
    s_output = StorageBuffer(2147483647i, u_input.b.x | u_input.b.x, select(-54280i, 1i, true));
}


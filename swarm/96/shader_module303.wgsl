struct Struct_1 {
    a: u32,
    b: vec4<bool>,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: vec3<u32> = vec3<u32>(1u, 4294967295u, 4294967295u);

var<private> global2: array<vec3<f32>, 26> = array<vec3<f32>, 26>(vec3<f32>(-311f, 1429f, 1302f), vec3<f32>(-1251f, -113f, -806f), vec3<f32>(492f, -1493f, 1310f), vec3<f32>(125f, -807f, -475f), vec3<f32>(-1553f, -1770f, 1063f), vec3<f32>(-752f, 1246f, -545f), vec3<f32>(1000f, 795f, 1560f), vec3<f32>(-468f, -646f, -222f), vec3<f32>(-256f, -1671f, 524f), vec3<f32>(-1382f, 1002f, -825f), vec3<f32>(2124f, 1320f, -1407f), vec3<f32>(-392f, 1212f, 697f), vec3<f32>(-719f, -953f, 1771f), vec3<f32>(-1259f, -102f, -1000f), vec3<f32>(1562f, -214f, -2101f), vec3<f32>(481f, -1000f, -278f), vec3<f32>(-501f, 180f, 253f), vec3<f32>(-508f, -790f, 1133f), vec3<f32>(-120f, -149f, 252f), vec3<f32>(1020f, 838f, 420f), vec3<f32>(-2896f, 1000f, 1748f), vec3<f32>(1762f, 609f, -186f), vec3<f32>(-1000f, -1029f, -223f), vec3<f32>(872f, -944f, 1000f), vec3<f32>(-285f, -622f, -925f), vec3<f32>(-1000f, -1280f, -625f));

var<private> global3: array<vec4<i32>, 25> = array<vec4<i32>, 25>(vec4<i32>(0i, 2147483647i, 0i, 1i), vec4<i32>(-19727i, 1i, 55839i, -8123i), vec4<i32>(-1i, 1i, -30444i, 1i), vec4<i32>(-1i, -44377i, -12110i, -41267i), vec4<i32>(2147483647i, -3084i, 2212i, 1i), vec4<i32>(-23610i, 20191i, 6483i, 10981i), vec4<i32>(-48042i, 0i, -61188i, -1i), vec4<i32>(-16223i, 36638i, i32(-2147483648), -1i), vec4<i32>(36925i, -1i, -86858i, 2147483647i), vec4<i32>(-1i, 43602i, 0i, i32(-2147483648)), vec4<i32>(14555i, -1i, i32(-2147483648), 4728i), vec4<i32>(2147483647i, -8726i, -19755i, 1i), vec4<i32>(-57449i, i32(-2147483648), -6255i, 34125i), vec4<i32>(-1i, 2147483647i, 34222i, i32(-2147483648)), vec4<i32>(-72014i, 0i, 75675i, 0i), vec4<i32>(i32(-2147483648), -28072i, 2147483647i, 2147483647i), vec4<i32>(3702i, -19682i, 3780i, 48430i), vec4<i32>(66848i, -8297i, 21266i, i32(-2147483648)), vec4<i32>(-45650i, -33313i, -7287i, -8888i), vec4<i32>(-1i, 2147483647i, -213i, i32(-2147483648)), vec4<i32>(2147483647i, i32(-2147483648), 1i, 2147483647i), vec4<i32>(i32(-2147483648), 1i, i32(-2147483648), i32(-2147483648)), vec4<i32>(29335i, 0i, -44313i, -18837i), vec4<i32>(27037i, 44993i, 0i, -4634i), vec4<i32>(0i, -1i, 1i, -1i));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: bool) -> vec2<bool> {
    return vec2<bool>(false, false);
}

fn func_2(arg_0: vec4<bool>) -> i32 {
    let var_0 = global1.xx;
    let var_1 = -398f;
    global2 = array<vec3<f32>, 26>();
    let var_2 = Struct_1(_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, global1.x, var_0.x, 4294967295u) >> (vec4<u32>(u_input.a.x, var_0.x, global0.x, 1u) % vec4<u32>(32u)), firstLeadingBit(vec4<u32>(0u, global1.x, global1.x, 110603u))), ~u_input.a), reverseBits(~vec4<u32>(22222u, global1.x, 0u, u_input.a.x)) | ~_wgslsmith_sub_vec4_u32(vec4<u32>(12652u, 5393u, global1.x, u_input.a.x), vec4<u32>(1u, global0.x, var_0.x, var_0.x))), select(arg_0, !arg_0, vec4<bool>(!(!arg_0.x), select(any(arg_0.yw), true, arg_0.x), !select(arg_0.x, arg_0.x, true), all(func_3(false)))), vec4<bool>(any(vec2<bool>(arg_0.x, all(vec3<bool>(arg_0.x, false, true)))), true, any(arg_0.wz), any(!func_3(true))));
    var var_3 = ~abs(u_input.a.x);
    return -1i;
}

fn func_1(arg_0: u32, arg_1: f32) -> Struct_1 {
    global1 = max(vec3<u32>(46124u, 0u, 17654u), countOneBits(u_input.a.wyx));
    let var_0 = ~((-_wgslsmith_dot_vec3_i32(vec3<i32>(13582i, -19994i, 0i), vec3<i32>(32799i, 8970i, 1i)) >> (u_input.a.x % 32u)) & ~select(func_2(vec4<bool>(true, false, false, false)), 2147483647i, true));
    global3 = array<vec4<i32>, 25>();
    var var_1 = Struct_1(~47795u | (_wgslsmith_div_u32(11007u, ~0u) | u_input.a.x), select(select(vec4<bool>(true, any(vec2<bool>(false, false)), select(false, false, true), all(vec2<bool>(true, true))), vec4<bool>(true, all(vec2<bool>(false, false)), false, true), vec4<bool>(any(vec3<bool>(true, true, true)), var_0 < -1i, true, any(vec2<bool>(true, true)))), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, false), false), select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, false))), true & all(vec4<bool>(true, true, false, true))), vec4<bool>(true, true, true, true)), vec4<bool>(false, true, select(all(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true))), true, true), true));
    var var_2 = Struct_1(_wgslsmith_dot_vec3_u32(u_input.a.wyw, vec3<u32>(16351u, ~select(101235u, var_1.a, false), var_1.a)), select(vec4<bool>(true, any(vec2<bool>(var_1.c.x, false)), var_1.c.x, true), vec4<bool>(all(!var_1.c.ww), true, any(func_3(var_1.b.x)), true), var_1.c.x), !var_1.c);
    return Struct_1(global0.x, var_1.b, select(vec4<bool>(!(!var_2.c.x), var_2.b.x, var_2.c.x, !(!var_1.c.x)), !vec4<bool>(arg_1 >= -737f, !var_1.c.x, any(var_2.c.yyx), any(vec3<bool>(true, true, var_2.b.x))), var_2.c));
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: Struct_1) -> u32 {
    let var_0 = vec4<bool>(all(select(arg_2.b, arg_1.c, arg_1.c.x)), all(select(arg_1.b, select(vec4<bool>(true, true, true, true), vec4<bool>(arg_2.c.x, arg_2.c.x, arg_1.b.x, true), select(arg_1.b, vec4<bool>(false, arg_1.c.x, false, arg_1.c.x), arg_1.c)), select(select(arg_1.c, vec4<bool>(arg_1.b.x, false, arg_1.b.x, arg_2.b.x), vec4<bool>(arg_2.c.x, arg_1.b.x, false, arg_1.c.x)), func_1(12042u, -1590f).c, arg_2.b))), false, !(!arg_2.c.x));
    let var_1 = global3[_wgslsmith_index_u32(~53885u, 25u)];
    var var_2 = arg_2;
    var var_3 = var_0.x;
    global0 = u_input.a.yzx;
    return ~arg_2.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -741f), _wgslsmith_f_op_f32(-643f + 395f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(-195f))))), 971f));
    var var_1 = 20778u;
    var var_2 = global3[_wgslsmith_index_u32(global0.x ^ u_input.a.x, 25u)];
    let var_3 = func_4(_wgslsmith_add_u32(u_input.a.x, ~reverseBits(abs(global1.x))), func_1(1383u, var_0), Struct_1(_wgslsmith_dot_vec2_u32(~vec2<u32>(1u, 0u) >> (max(u_input.a.zx, vec2<u32>(30809u, 21358u)) % vec2<u32>(32u)), ~global1.zy), select(vec4<bool>(true, true, true, true), vec4<bool>(false, global0.x > u_input.a.x, false, any(vec4<bool>(false, false, true, true))), true), vec4<bool>(true, true, true, true)));
    global2 = array<vec3<f32>, 26>();
    var var_4 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(var_0 + var_0), _wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(var_0 - var_0), -356f)), vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(-2151f, 875f, true)))), _wgslsmith_f_op_f32(-616f * _wgslsmith_f_op_f32(var_0 - 275f)), _wgslsmith_f_op_f32(var_0 + var_0), _wgslsmith_f_op_f32(round(var_0))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(3316f, 1819f, 643f, var_0) - vec4<f32>(var_0, var_0, -791f, var_0)))))));
    var var_5 = _wgslsmith_mult_u32(global0.x, 4294967295u);
    var var_6 = func_1(~(~global0.x), var_4.x);
    let x = u_input.a;
    s_output = StorageBuffer(480f, var_0, var_2.ww);
}


struct Struct_1 {
    a: vec4<bool>,
    b: u32,
    c: i32,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: bool,
    d: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: bool,
    d: Struct_2,
}

struct Struct_4 {
    a: bool,
    b: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: array<Struct_3, 22> = array<Struct_3, 22>(Struct_3(false, Struct_1(vec4<bool>(false, true, false, true), 0u, 12211i, 4294967295u), true, Struct_2(Struct_1(vec4<bool>(true, false, true, false), 4294967295u, 0i, 20369u), i32(-2147483648), false, Struct_1(vec4<bool>(false, true, true, true), 22197u, -7253i, 0u))), Struct_3(true, Struct_1(vec4<bool>(true, false, false, true), 12571u, 24522i, 0u), true, Struct_2(Struct_1(vec4<bool>(true, true, false, false), 4294967295u, 0i, 14608u), 1i, true, Struct_1(vec4<bool>(false, true, false, false), 3263u, 34366i, 1u))), Struct_3(false, Struct_1(vec4<bool>(true, false, false, false), 0u, 1i, 4294967295u), false, Struct_2(Struct_1(vec4<bool>(true, false, false, true), 14188u, i32(-2147483648), 0u), 2147483647i, false, Struct_1(vec4<bool>(false, false, true, true), 72633u, -1051i, 79392u))), Struct_3(false, Struct_1(vec4<bool>(false, true, true, true), 7734u, 37244i, 12883u), true, Struct_2(Struct_1(vec4<bool>(false, true, true, true), 57184u, i32(-2147483648), 95931u), 61433i, true, Struct_1(vec4<bool>(true, true, true, true), 18035u, 22707i, 0u))), Struct_3(false, Struct_1(vec4<bool>(false, false, true, false), 4294967295u, 0i, 61189u), true, Struct_2(Struct_1(vec4<bool>(true, false, false, true), 1u, 2147483647i, 56400u), 1i, false, Struct_1(vec4<bool>(false, true, true, false), 25153u, 32688i, 1u))), Struct_3(false, Struct_1(vec4<bool>(false, false, false, true), 37203u, 2147483647i, 46388u), true, Struct_2(Struct_1(vec4<bool>(true, true, false, false), 105997u, -35465i, 29421u), -35962i, false, Struct_1(vec4<bool>(true, true, true, true), 29793u, 0i, 128004u))), Struct_3(true, Struct_1(vec4<bool>(false, false, true, false), 43967u, 10721i, 6852u), false, Struct_2(Struct_1(vec4<bool>(false, true, false, false), 1u, 0i, 4294967295u), 2147483647i, true, Struct_1(vec4<bool>(true, true, false, false), 1u, -40204i, 73870u))), Struct_3(false, Struct_1(vec4<bool>(true, false, false, true), 0u, i32(-2147483648), 4294967295u), true, Struct_2(Struct_1(vec4<bool>(true, true, true, false), 4294967295u, 1i, 43464u), 2147483647i, true, Struct_1(vec4<bool>(true, true, false, true), 1u, -1561i, 1719u))), Struct_3(true, Struct_1(vec4<bool>(true, false, false, false), 0u, 0i, 1u), false, Struct_2(Struct_1(vec4<bool>(false, false, false, false), 4294967295u, 19808i, 83658u), 2147483647i, false, Struct_1(vec4<bool>(true, false, false, true), 63072u, 2147483647i, 9080u))), Struct_3(false, Struct_1(vec4<bool>(false, true, true, true), 61037u, 990i, 68826u), true, Struct_2(Struct_1(vec4<bool>(false, false, false, true), 0u, 2147483647i, 1u), 4956i, true, Struct_1(vec4<bool>(true, false, false, true), 51346u, 43477i, 0u))), Struct_3(false, Struct_1(vec4<bool>(false, true, false, true), 68745u, -24293i, 42130u), true, Struct_2(Struct_1(vec4<bool>(true, false, false, true), 104587u, 21229i, 27785u), 0i, true, Struct_1(vec4<bool>(false, false, true, false), 4294967295u, 43261i, 6497u))), Struct_3(false, Struct_1(vec4<bool>(true, true, false, true), 4294967295u, 35195i, 0u), true, Struct_2(Struct_1(vec4<bool>(false, true, false, true), 30130u, -4613i, 1u), 1i, true, Struct_1(vec4<bool>(false, false, false, true), 1u, -8890i, 997u))), Struct_3(false, Struct_1(vec4<bool>(true, true, false, false), 187u, -11588i, 0u), true, Struct_2(Struct_1(vec4<bool>(false, true, true, true), 0u, i32(-2147483648), 18499u), 2147483647i, true, Struct_1(vec4<bool>(true, true, true, true), 21208u, 2147483647i, 4294967295u))), Struct_3(false, Struct_1(vec4<bool>(false, true, false, false), 1u, 44450i, 21391u), true, Struct_2(Struct_1(vec4<bool>(true, false, false, false), 32059u, -31146i, 0u), 2147483647i, false, Struct_1(vec4<bool>(true, false, false, false), 0u, -34484i, 1u))), Struct_3(true, Struct_1(vec4<bool>(false, false, false, false), 1u, -1i, 1u), false, Struct_2(Struct_1(vec4<bool>(false, false, false, true), 11944u, -32755i, 1u), -43899i, false, Struct_1(vec4<bool>(false, false, false, true), 4294967295u, -5917i, 4273u))), Struct_3(true, Struct_1(vec4<bool>(true, false, true, true), 6699u, 0i, 1u), true, Struct_2(Struct_1(vec4<bool>(true, false, true, false), 0u, -10985i, 4294967295u), 1i, true, Struct_1(vec4<bool>(true, true, false, false), 10151u, -4506i, 53949u))), Struct_3(false, Struct_1(vec4<bool>(true, false, false, true), 59144u, -1i, 4294967295u), false, Struct_2(Struct_1(vec4<bool>(false, true, false, false), 1u, 80251i, 12979u), 12180i, false, Struct_1(vec4<bool>(false, false, false, true), 38560u, -1i, 0u))), Struct_3(true, Struct_1(vec4<bool>(false, false, true, false), 11322u, 788i, 1u), true, Struct_2(Struct_1(vec4<bool>(true, false, false, true), 2164u, i32(-2147483648), 28283u), -12309i, false, Struct_1(vec4<bool>(false, false, true, true), 14219u, -21517i, 4294967295u))), Struct_3(true, Struct_1(vec4<bool>(true, false, false, true), 20293u, 1i, 104124u), false, Struct_2(Struct_1(vec4<bool>(false, true, true, true), 2577u, 1i, 8720u), -6232i, true, Struct_1(vec4<bool>(true, true, false, false), 75840u, 16481i, 1u))), Struct_3(true, Struct_1(vec4<bool>(true, true, false, false), 46900u, i32(-2147483648), 4294967295u), false, Struct_2(Struct_1(vec4<bool>(true, false, false, false), 1u, -10763i, 1u), 0i, false, Struct_1(vec4<bool>(true, true, true, true), 1814u, i32(-2147483648), 98498u))), Struct_3(false, Struct_1(vec4<bool>(true, true, false, false), 14357u, 26164i, 26414u), true, Struct_2(Struct_1(vec4<bool>(true, true, true, true), 0u, i32(-2147483648), 4294967295u), 2147483647i, true, Struct_1(vec4<bool>(true, true, false, false), 38383u, 0i, 83925u))), Struct_3(true, Struct_1(vec4<bool>(true, false, false, false), 63334u, i32(-2147483648), 22350u), false, Struct_2(Struct_1(vec4<bool>(false, false, true, true), 4294967295u, i32(-2147483648), 75651u), 17980i, false, Struct_1(vec4<bool>(true, false, false, true), 13785u, -25357i, 4294967295u))));

var<private> global2: u32;

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_3, arg_2: Struct_1, arg_3: vec4<u32>) -> bool {
    let var_0 = _wgslsmith_sub_u32(4294967295u, ~_wgslsmith_clamp_u32(~arg_2.d | (arg_3.x << (54458u % 32u)), 1u, ~arg_1.d.d.d));
    let var_1 = arg_0;
    let var_2 = u_input.b.wz;
    global0 = (countOneBits(vec2<i32>(var_1.x, firstLeadingBit(32587i))) >> (_wgslsmith_add_vec2_u32(arg_3.zw, vec2<u32>(_wgslsmith_div_u32(1u, 4294967295u), ~56270u)) % vec2<u32>(32u))) << ((firstTrailingBit(_wgslsmith_add_vec2_u32(~arg_3.zz, arg_3.wy)) >> ((_wgslsmith_mod_vec2_u32(arg_3.yw, arg_3.wz) << (arg_3.zx % vec2<u32>(32u))) % vec2<u32>(32u))) % vec2<u32>(32u));
    var var_3 = _wgslsmith_sub_i32(var_1.x, countOneBits(min(-arg_2.c >> (_wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.d.a.d, 46226u, 1u), vec3<u32>(arg_3.x, 4987u, 42035u)) % 32u), -41673i)));
    return arg_1.d.a.a.x;
}

fn func_2(arg_0: bool) -> Struct_4 {
    global0 = vec2<i32>(-59736i, u_input.b.x);
    let var_0 = global1[_wgslsmith_index_u32(u_input.c, 22u)];
    global1 = array<Struct_3, 22>();
    return Struct_4(!arg_0 || (((u_input.b.x & global0.x) != ~var_0.b.c) & func_3(vec4<i32>(global0.x, global0.x, u_input.a, u_input.a), Struct_3(var_0.d.c, var_0.b, arg_0, Struct_2(Struct_1(var_0.b.a, 4294967295u, 0i, 55105u), global0.x, var_0.b.a.x, Struct_1(var_0.d.a.a, var_0.d.a.b, var_0.d.d.c, 4294967295u))), var_0.d.d, vec4<u32>(var_0.d.a.d, u_input.c, 1u, 1u))), -835f);
}

fn func_1() -> Struct_1 {
    global1 = array<Struct_3, 22>();
    global1 = array<Struct_3, 22>();
    global1 = array<Struct_3, 22>();
    global1 = array<Struct_3, 22>();
    let var_0 = func_2(true);
    return Struct_1(vec4<bool>(!(!var_0.a), true, false, false), 1847u, ~u_input.a, 14949u);
}

fn func_4(arg_0: Struct_1, arg_1: i32) -> StorageBuffer {
    return StorageBuffer(_wgslsmith_mult_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(-1i, 1i, firstTrailingBit(u_input.b.x)), vec3<i32>(-52975i, ~global0.x, ~u_input.a)), vec3<i32>(arg_1, firstTrailingBit(u_input.b.x), 10400i)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1095f, 899f, 694f)) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-2120f, 841f, 447f), vec3<f32>(-1495f, -860f, 188f), arg_0.a.x)))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(-277f, 598f), _wgslsmith_div_f32(-685f, -364f), -1000f))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_vec2_i32(-u_input.b.yz, vec2<i32>(~countOneBits(-2147483647i), ~((global0.x | 14947i) << (~59106u % 32u))));
    global2 = ~0u;
    let var_1 = u_input.b.xz;
    let var_2 = u_input.b;
    var var_3 = Struct_4(true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1535f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-215f, -213f, false)) * -1182f))));
    let x = u_input.a;
    s_output = func_4(func_1(), firstLeadingBit(abs(_wgslsmith_dot_vec4_i32(vec4<i32>(81268i, global0.x, -22730i, -54015i), vec4<i32>(-7887i, -2147483647i, -65158i, var_1.x)))));
}


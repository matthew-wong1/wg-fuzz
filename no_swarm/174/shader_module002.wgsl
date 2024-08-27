struct Struct_1 {
    a: i32,
    b: i32,
    c: vec4<bool>,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: vec2<bool>,
    d: vec4<u32>,
    e: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: vec4<u32>,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(26491i, 34060i);

var<private> global1: array<f32, 22> = array<f32, 22>(-1063f, 1044f, -453f, -477f, -336f, -1141f, -201f, 1164f, 156f, -533f, 291f, -549f, 887f, -1080f, -1000f, -2241f, 1000f, 1597f, 1000f, -916f, 139f, -644f);

var<private> global2: array<vec2<u32>, 8>;

var<private> global3: u32;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: f32) -> vec3<i32> {
    global2 = array<vec2<u32>, 8>();
    let var_0 = Struct_2(Struct_1(abs(_wgslsmith_sub_i32(1530i, -1i & global0.x)), 2147483647i, vec4<bool>(true, false, true, true), -23099i), min(-(min(-1i, u_input.a) >> (u_input.d.x % 32u)), (i32(-1i) * -13126i) ^ global0.x), select(select(vec2<bool>(true, true), vec2<bool>(true, false), true), select(vec2<bool>(true, true), vec2<bool>(true, true), true), any(vec3<bool>(false, true, false)) | false), ~u_input.d, 1597f);
    var var_1 = global0.x;
    var var_2 = var_0;
    var var_3 = vec3<i32>(-2147483647i >> (var_2.d.x % 32u), ~2147483647i, countOneBits(var_0.a.d));
    return -vec3<i32>((48764i | global0.x) << (1u % 32u), firstLeadingBit(var_2.b) | -34966i, _wgslsmith_dot_vec3_i32(countOneBits(vec3<i32>(-1i, 1i, -1i)), _wgslsmith_clamp_vec3_i32(vec3<i32>(var_0.a.b, global0.x, -43722i), vec3<i32>(-16121i, global0.x, var_3.x), vec3<i32>(-36786i, 1i, -1i)))) ^ ~(~vec3<i32>(-21380i, global0.x, var_3.x) >> (_wgslsmith_div_vec3_u32(firstLeadingBit(var_0.d.yxz), ~vec3<u32>(var_0.d.x, var_2.d.x, u_input.d.x)) % vec3<u32>(32u)));
}

fn func_2() -> Struct_2 {
    let var_0 = Struct_2(Struct_1(~_wgslsmith_sub_i32(-2147483647i | global0.x, ~global0.x), _wgslsmith_div_i32(reverseBits(-global0.x), _wgslsmith_div_i32(-2147483647i, ~(-11056i))), vec4<bool>(false, true, true, false), -11639i), _wgslsmith_dot_vec3_i32(~(~func_3(global1[_wgslsmith_index_u32(52534u, 22u)])), vec3<i32>(0i, -1i, global0.x) & ~_wgslsmith_sub_vec3_i32(vec3<i32>(49824i, -27116i, u_input.b), vec3<i32>(-6440i, 0i, 2147483647i))), vec2<bool>(true, true), u_input.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-528f, _wgslsmith_div_f32(-371f, -884f)))));
    var var_1 = Struct_2(Struct_1(_wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(select(vec3<i32>(global0.x, 1i, 1678i), vec3<i32>(1i, var_0.a.d, global0.x), var_0.a.c.x), _wgslsmith_mult_vec3_i32(vec3<i32>(global0.x, global0.x, var_0.a.b), vec3<i32>(u_input.a, -2147483647i, u_input.a))), func_3(var_0.e)), u_input.c, select(select(select(vec4<bool>(var_0.c.x, var_0.a.c.x, true, true), vec4<bool>(var_0.c.x, true, false, true), true), !var_0.a.c, vec4<bool>(var_0.c.x, true, var_0.a.c.x, var_0.c.x)), !(!var_0.a.c), var_0.a.c), _wgslsmith_add_i32(_wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(var_0.a.b, u_input.b, global0.x), vec3<i32>(global0.x, var_0.b, 0i)), ~15308i), -1i)), -global0.x, vec2<bool>(any(vec3<bool>(false, var_0.c.x, var_0.a.c.x)), any(select(var_0.c, select(vec2<bool>(var_0.a.c.x, true), var_0.c, var_0.c.x), var_0.c))), ~var_0.d, _wgslsmith_f_op_f32(abs(var_0.e)));
    global0 = ~vec2<i32>(var_0.a.a, 2147483647i);
    var var_2 = ~firstLeadingBit(~select(~vec2<i32>(u_input.b, global0.x), vec2<i32>(var_0.a.a, global0.x) >> (vec2<u32>(u_input.d.x, 16734u) % vec2<u32>(32u)), !var_1.c.x));
    global3 = _wgslsmith_mult_u32(var_0.d.x, 29404u) & ~var_1.d.x;
    return Struct_2(var_0.a, max(_wgslsmith_mod_i32(~min(global0.x, 2147483647i), var_0.b), ~_wgslsmith_mult_i32(1i, abs(28525i))), !var_0.c, vec4<u32>(~min(_wgslsmith_mod_u32(1u, var_1.d.x), 4294967295u ^ var_1.d.x), _wgslsmith_dot_vec3_u32(var_0.d.zxz << (~vec3<u32>(8811u, 1u, 9131u) % vec3<u32>(32u)), vec3<u32>(u_input.d.x, u_input.d.x << (var_1.d.x % 32u), u_input.d.x)), ~52459u & ~firstTrailingBit(var_0.d.x), _wgslsmith_sub_u32(u_input.d.x, 4294967295u)), global1[_wgslsmith_index_u32(var_1.d.x, 22u)]);
}

fn func_1(arg_0: vec3<bool>, arg_1: i32) -> Struct_1 {
    let var_0 = true;
    var var_1 = func_2();
    var var_2 = var_1.a;
    let var_3 = func_2();
    let var_4 = countOneBits(var_3.d.x | u_input.d.x);
    return func_2().a;
}

fn func_4(arg_0: Struct_1, arg_1: vec2<f32>) -> vec3<bool> {
    var var_0 = func_1(vec3<bool>(false, all(!arg_0.c.zzz), !arg_0.c.x), -9961i);
    var_0 = arg_0;
    global3 = firstTrailingBit(u_input.d.x);
    var var_1 = any(func_2().a.c);
    let var_2 = func_2();
    return var_2.a.c.xzz;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = all(vec4<bool>(any(func_4(func_1(vec3<bool>(false, false, false), u_input.e), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1[_wgslsmith_index_u32(4970u, 22u)], global1[_wgslsmith_index_u32(27046u, 22u)])))), 1814i >= firstLeadingBit(-global0.x), false, _wgslsmith_sub_i32(-u_input.a, ~(-27447i)) >= -31612i));
    let var_1 = func_2().a.c.zzw;
    global3 = 1u | u_input.d.x;
    global3 = _wgslsmith_mult_u32(~firstLeadingBit(1u), ~(firstTrailingBit(4294967295u) << (u_input.d.x % 32u))) ^ u_input.d.x;
    global3 = u_input.d.x;
    let var_2 = u_input.d.zzw;
    global2 = array<vec2<u32>, 8>();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c, -23357i, ~vec2<i32>(-6908i, global0.x));
}


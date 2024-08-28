struct Struct_1 {
    a: vec4<u32>,
    b: f32,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
    d: i32,
    e: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec2<i32>,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 6>;

var<private> global1: array<Struct_1, 19>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec3<u32>) -> vec4<u32> {
    global0 = array<Struct_2, 6>();
    let var_0 = false;
    let var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1221f)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-249f))), -1017f))));
    let var_2 = false;
    let var_3 = all(vec3<bool>(select(all(vec3<bool>(var_0, var_2, var_0)), (u_input.b.x <= u_input.b.x) && var_2, var_2), true, !var_2));
    return _wgslsmith_clamp_vec4_u32(~(~vec4<u32>(arg_0.x, 51128u, arg_0.x, 27290u)) | vec4<u32>(arg_0.x >> (arg_0.x % 32u), arg_0.x, arg_0.x, _wgslsmith_add_u32(arg_0.x, 4294967295u)), ~vec4<u32>(arg_0.x, 27991u, 58918u, 63691u) << (vec4<u32>(_wgslsmith_div_u32(arg_0.x, 39099u), ~4294967295u, arg_0.x, 1u) % vec4<u32>(32u)), reverseBits(countOneBits(_wgslsmith_sub_vec4_u32(vec4<u32>(arg_0.x, 4294967295u, arg_0.x, 0u), vec4<u32>(arg_0.x, arg_0.x, arg_0.x, 1u))))) >> (~vec4<u32>(reverseBits(select(arg_0.x, 34643u, false)), ~(~28816u), _wgslsmith_dot_vec2_u32(abs(vec2<u32>(4294967295u, arg_0.x)), arg_0.yx), abs(0u)) % vec4<u32>(32u));
}

fn func_2() -> Struct_2 {
    let var_0 = Struct_1((vec4<u32>(44839u, _wgslsmith_dot_vec4_u32(vec4<u32>(36577u, 2109u, 90606u, 43062u), vec4<u32>(1u, 23147u, 0u, 0u)), 1u, ~1u) >> (_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 4294967295u, 1u, 0u), vec4<u32>(427u, 45426u, 1u, 50480u), vec4<u32>(28851u, 4294967295u, 4587u, 103793u)) % vec4<u32>(32u))) >> (func_3(vec3<u32>(1u, 1u, 1u)) % vec4<u32>(32u)), _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(170f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-987f, -313f))))), ~1u);
    let var_1 = Struct_4(Struct_3(var_0.c, u_input.b));
    global1 = array<Struct_1, 19>();
    var var_2 = Struct_4(Struct_3(~_wgslsmith_sub_u32(1u, var_0.c & 10083u), firstTrailingBit(~u_input.b)));
    var var_3 = Struct_2(Struct_1(var_0.a, _wgslsmith_f_op_f32(var_0.b * _wgslsmith_f_op_f32(-446f * var_0.b)), var_0.a.x), var_0, ~(0u << (var_1.a.a % 32u)), firstTrailingBit(~(-1i)), Struct_1(firstLeadingBit(var_0.a), _wgslsmith_f_op_f32(-1686f - 440f), 23519u));
    return global0[_wgslsmith_index_u32(0u, 6u)];
}

fn func_1(arg_0: Struct_4) -> f32 {
    var var_0 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.a.a, max(_wgslsmith_div_u32(arg_0.a.a, 36381u) << (~4294967295u % 32u), _wgslsmith_dot_vec2_u32(firstLeadingBit(vec2<u32>(arg_0.a.a, 1u)), vec2<u32>(0u, arg_0.a.a))), abs(arg_0.a.a)), vec3<u32>(arg_0.a.a, arg_0.a.a, arg_0.a.a)), 19u)];
    let var_1 = Struct_1(var_0.a, var_0.b, _wgslsmith_mult_u32(4294967295u, ~4294967295u));
    let var_2 = func_2();
    global1 = array<Struct_1, 19>();
    var var_3 = arg_0;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1459f * _wgslsmith_f_op_f32(-var_2.a.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1160f, -268f))), all(vec2<bool>(true, true)))) - _wgslsmith_f_op_f32(f32(-1f) * -1287f)) + 426f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1657f, -406f, -1143f)), vec3<f32>(_wgslsmith_f_op_f32(func_1(Struct_4(Struct_3(0u, u_input.b)))), 2523f, _wgslsmith_f_op_f32(floor(534f))), !select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(true, true, true)))) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -409f), _wgslsmith_f_op_f32(-225f - -319f), -971f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(1000f, -198f, -1564f), vec3<f32>(138f, -1374f, 256f))) + _wgslsmith_div_vec3_f32(vec3<f32>(-977f, 1400f, -820f), vec3<f32>(-118f, 1000f, -999f))), vec3<bool>(true, true, true)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(970f, -1649f, 708f) + vec3<f32>(-1000f, -2007f, 461f))))));
    let var_1 = Struct_2(func_2().b, global1[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), firstLeadingBit(vec4<u32>(1u, 4294967295u, 46434u, 8331u)))) >> (50557u % 32u), 19u)], 11676u, _wgslsmith_dot_vec3_i32(vec3<i32>(~_wgslsmith_clamp_i32(u_input.b.x, u_input.b.x, -1i), u_input.a, _wgslsmith_dot_vec4_i32(~vec4<i32>(13802i, -24434i, 1i, u_input.a), _wgslsmith_mult_vec4_i32(vec4<i32>(10651i, u_input.a, u_input.a, -2147483647i), vec4<i32>(u_input.a, u_input.a, u_input.b.x, 37480i)))), ~_wgslsmith_div_vec3_i32(vec3<i32>(-5654i, 13636i, u_input.a), firstTrailingBit(vec3<i32>(-1i, 12340i, u_input.a)))), func_2().b);
    let var_2 = vec3<i32>(0i, (abs(u_input.a) >> (var_1.e.a.x % 32u)) & min(countOneBits(func_2().d), firstLeadingBit(-u_input.a)), abs(_wgslsmith_div_i32(var_1.d, -1i)));
    global0 = array<Struct_2, 6>();
    var var_3 = vec2<bool>(false, var_1.b.b <= _wgslsmith_f_op_f32(2519f * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(-1391f, -559f)), func_2().e.b))));
    let var_4 = Struct_3(~min(var_1.c, _wgslsmith_clamp_u32(4294967295u, 10672u, var_1.a.c)) & 14313u, _wgslsmith_mod_vec2_i32(~countOneBits(u_input.b), var_2.zx) << (var_1.a.a.yz % vec2<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(Struct_4(var_4)))), func_2().e.b, _wgslsmith_f_op_f32(func_1(Struct_4(var_4))), 1223f), _wgslsmith_mod_i32(func_2().d, ~var_1.d));
}


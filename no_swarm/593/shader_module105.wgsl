struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: i32,
    d: u32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: f32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 24>;

var<private> global1: array<Struct_2, 27> = array<Struct_2, 27>(Struct_2(Struct_1(2147483647i), Struct_1(19270i)), Struct_2(Struct_1(-3713i), Struct_1(59004i)), Struct_2(Struct_1(1i), Struct_1(-59105i)), Struct_2(Struct_1(39666i), Struct_1(i32(-2147483648))), Struct_2(Struct_1(2147483647i), Struct_1(31781i)), Struct_2(Struct_1(i32(-2147483648)), Struct_1(i32(-2147483648))), Struct_2(Struct_1(1i), Struct_1(-22474i)), Struct_2(Struct_1(15544i), Struct_1(30824i)), Struct_2(Struct_1(-68404i), Struct_1(21465i)), Struct_2(Struct_1(i32(-2147483648)), Struct_1(-13622i)), Struct_2(Struct_1(-2093i), Struct_1(0i)), Struct_2(Struct_1(0i), Struct_1(-1i)), Struct_2(Struct_1(-41849i), Struct_1(48214i)), Struct_2(Struct_1(-1i), Struct_1(1i)), Struct_2(Struct_1(20651i), Struct_1(10880i)), Struct_2(Struct_1(-11346i), Struct_1(-2247i)), Struct_2(Struct_1(34293i), Struct_1(-9278i)), Struct_2(Struct_1(i32(-2147483648)), Struct_1(i32(-2147483648))), Struct_2(Struct_1(-25843i), Struct_1(9073i)), Struct_2(Struct_1(0i), Struct_1(21011i)), Struct_2(Struct_1(2147483647i), Struct_1(-28482i)), Struct_2(Struct_1(1i), Struct_1(8075i)), Struct_2(Struct_1(-1i), Struct_1(-53134i)), Struct_2(Struct_1(-33592i), Struct_1(0i)), Struct_2(Struct_1(2147483647i), Struct_1(-50387i)), Struct_2(Struct_1(-57844i), Struct_1(-4413i)), Struct_2(Struct_1(0i), Struct_1(1i)));

var<private> global2: Struct_2 = Struct_2(Struct_1(0i), Struct_1(i32(-2147483648)));

var<private> global3: array<vec3<i32>, 3> = array<vec3<i32>, 3>(vec3<i32>(2147483647i, 1i, i32(-2147483648)), vec3<i32>(256i, i32(-2147483648), -8741i), vec3<i32>(i32(-2147483648), -8254i, -1i));

var<private> global4: Struct_1 = Struct_1(5030i);

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_2(arg_0: bool) -> Struct_2 {
    return global1[_wgslsmith_index_u32(~u_input.b.x, 27u)];
}

fn func_1(arg_0: i32, arg_1: vec2<u32>, arg_2: bool) -> Struct_2 {
    global3 = array<vec3<i32>, 3>();
    let var_0 = global2.b;
    var var_1 = func_2(!all(vec4<bool>(false, arg_2, arg_2, arg_2)) & !(_wgslsmith_div_i32(u_input.c, global4.a) >= global4.a));
    let var_2 = u_input.a.xy;
    global3 = array<vec3<i32>, 3>();
    return global1[_wgslsmith_index_u32(20957u, 27u)];
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_2) -> Struct_2 {
    var var_0 = vec4<i32>(countOneBits(_wgslsmith_mod_i32(_wgslsmith_div_i32(arg_1.a.a, 2147483647i), _wgslsmith_dot_vec4_i32(vec4<i32>(-45967i, 2147483647i, arg_0.x, -1i), vec4<i32>(global2.a.a, 582i, 1i, u_input.a.x)))) | (_wgslsmith_sub_i32(i32(-1i) * -2147483647i, firstTrailingBit(u_input.a.x)) >> (u_input.e.x % 32u)), u_input.c, _wgslsmith_dot_vec3_i32(global3[_wgslsmith_index_u32(~4294967295u, 3u)], _wgslsmith_sub_vec3_i32(_wgslsmith_mod_vec3_i32(~global3[_wgslsmith_index_u32(u_input.d, 3u)], countOneBits(u_input.a)), firstLeadingBit(abs(vec3<i32>(u_input.a.x, 1i, 2147483647i))))), -abs(0i << (~u_input.b.x % 32u)));
    var var_1 = vec4<u32>(_wgslsmith_add_u32(u_input.b.x, ~abs(4294967295u)) << (_wgslsmith_mod_u32(~(u_input.d & 108888u), u_input.d) % 32u), u_input.e.x, ~4294967295u, _wgslsmith_mod_u32(_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.e.x, 4294967295u) | u_input.b.wx, vec2<u32>(10646u, 22473u)), u_input.b.x & 0u), u_input.e.x));
    var var_2 = vec2<bool>(true, any(vec3<bool>(true, true, any(select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, false))))));
    var var_3 = arg_1;
    var var_4 = global0[_wgslsmith_index_u32(_wgslsmith_div_u32(8369u, select(40253u, 92307u, true)), 24u)];
    return global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(var_1.x, 12722u), 27u)];
}

fn func_4(arg_0: vec3<f32>, arg_1: i32, arg_2: Struct_2) -> i32 {
    var var_0 = vec3<f32>(-1000f, _wgslsmith_f_op_f32(1264f * _wgslsmith_f_op_f32(arg_0.x - arg_0.x)), _wgslsmith_f_op_f32(f32(-1f) * -758f));
    return _wgslsmith_dot_vec3_i32(reverseBits(_wgslsmith_add_vec3_i32(global3[_wgslsmith_index_u32(~(~4294967295u), 3u)], vec3<i32>(firstTrailingBit(2147483647i), _wgslsmith_clamp_i32(u_input.c, 0i, u_input.c), arg_2.a.a))), u_input.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~vec4<i32>(2147483647i, -global4.a >> (~(~u_input.e.x) % 32u), func_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-320f, -743f, -284f)))), -2147483647i, func_3(u_input.a.yy, func_1(global2.b.a, vec2<u32>(u_input.e.x, u_input.e.x), true))), firstTrailingBit(_wgslsmith_mult_i32(-2147483647i, global2.b.a >> (u_input.b.x % 32u))));
    let var_1 = vec2<bool>(true, !all(select(select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false)), vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false)))));
    let var_2 = func_3(u_input.a.yx, func_2(true));
    let var_3 = 0i;
    let var_4 = _wgslsmith_div_vec2_u32(min(_wgslsmith_sub_vec2_u32(u_input.b.zy, ~vec2<u32>(u_input.e.x, u_input.e.x)) | (u_input.b.xx ^ vec2<u32>(12238u, u_input.e.x)), ~vec2<u32>(40236u & u_input.b.x, ~132550u)), ~u_input.b.wz);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(~var_4.x, 4294967295u, ~u_input.b.x), ~36695i, _wgslsmith_f_op_f32(142f + _wgslsmith_f_op_f32(f32(-1f) * -2391f)), max(u_input.a.zx, _wgslsmith_mult_vec2_i32(vec2<i32>(-20511i, var_3), ~max(vec2<i32>(u_input.c, global4.a), u_input.a.zz))));
}


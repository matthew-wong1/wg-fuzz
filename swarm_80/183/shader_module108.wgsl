struct Struct_1 {
    a: vec3<i32>,
    b: bool,
    c: vec3<i32>,
    d: vec3<i32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: Struct_1,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 86640u;

var<private> global1: array<Struct_1, 28>;

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2(arg_0: vec3<bool>, arg_1: Struct_2, arg_2: vec4<i32>) -> vec2<bool> {
    var var_0 = arg_0.yx;
    var var_1 = arg_1;
    let var_2 = global1[_wgslsmith_index_u32(u_input.b, 28u)];
    let var_3 = Struct_1(vec3<i32>(-1i) * -(~(vec3<i32>(16142i, arg_2.x, var_2.a.x) ^ var_1.a)), arg_1.c.b, arg_1.b.c, vec3<i32>(-firstTrailingBit(var_1.b.d.x), 2147483647i, 1i));
    let var_4 = vec3<f32>(_wgslsmith_f_op_f32(abs(490f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_1.d.x * -564f))), -1425f);
    return !arg_0.xx;
}

fn func_3(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: f32, arg_3: Struct_2) -> vec2<u32> {
    global1 = array<Struct_1, 28>();
    var var_0 = arg_3.b;
    return reverseBits(vec2<u32>(u_input.b, _wgslsmith_sub_u32(u_input.b, _wgslsmith_add_u32(u_input.b, 43761u))) << ((vec2<u32>(firstTrailingBit(u_input.b), 0u) << (firstLeadingBit(~vec2<u32>(u_input.b, 52191u)) % vec2<u32>(32u))) % vec2<u32>(32u)));
}

fn func_1() -> Struct_2 {
    let var_0 = !any(vec2<bool>(true, true));
    global0 = u_input.b;
    let var_1 = _wgslsmith_clamp_vec3_u32(vec3<u32>(~(~u_input.b) ^ _wgslsmith_mult_u32(u_input.b, ~u_input.b), _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(max(vec3<u32>(u_input.b, 0u, u_input.b), vec3<u32>(u_input.b, u_input.b, u_input.b)), vec3<u32>(0u, 1547u, u_input.b)), (vec3<u32>(u_input.b, 1u, u_input.b) & vec3<u32>(38071u, 1u, u_input.b)) << (~vec3<u32>(31811u, 0u, u_input.b) % vec3<u32>(32u))), _wgslsmith_dot_vec2_u32(select(vec2<u32>(u_input.b, u_input.b), ~vec2<u32>(u_input.b, u_input.b), func_2(vec3<bool>(false, true, true), Struct_2(vec3<i32>(0i, u_input.d.x, u_input.a), Struct_1(u_input.d, true, vec3<i32>(u_input.c, u_input.d.x, u_input.c), u_input.d), Struct_1(vec3<i32>(u_input.d.x, u_input.c, -23102i), true, vec3<i32>(u_input.a, 2147483647i, 37474i), vec3<i32>(27873i, -1i, u_input.c)), vec3<f32>(-1000f, 452f, 1598f)), vec4<i32>(u_input.a, u_input.c, 269i, 39704i))), func_3(global1[_wgslsmith_index_u32(0u, 28u)], _wgslsmith_f_op_vec3_f32(-vec3<f32>(-556f, -283f, -814f)), _wgslsmith_f_op_f32(abs(1438f)), Struct_2(vec3<i32>(u_input.d.x, u_input.c, u_input.d.x), Struct_1(vec3<i32>(u_input.d.x, 23423i, u_input.c), true, vec3<i32>(u_input.a, 1i, -1i), vec3<i32>(0i, u_input.d.x, -1i)), Struct_1(u_input.d, false, vec3<i32>(-1i, u_input.d.x, 5040i), vec3<i32>(u_input.d.x, u_input.c, u_input.c)), vec3<f32>(678f, -895f, -2109f))))), vec3<u32>(select(~4294967295u & _wgslsmith_mult_u32(18360u, u_input.b), _wgslsmith_clamp_u32(u_input.b, 1u, u_input.b) << (firstLeadingBit(u_input.b) % 32u), var_0), firstTrailingBit(~(~1u)), abs(~0u)), _wgslsmith_mod_vec3_u32(~max(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.b, 0u, 4294967295u), vec3<u32>(u_input.b, 95345u, u_input.b), vec3<u32>(16877u, 907u, 1u)), abs(vec3<u32>(u_input.b, 0u, 36062u))), reverseBits(~firstTrailingBit(vec3<u32>(u_input.b, u_input.b, 0u)))));
    global0 = 4294967295u;
    let var_2 = true;
    return Struct_2(_wgslsmith_add_vec3_i32(~(firstTrailingBit(vec3<i32>(-35507i, 0i, 1i)) & select(u_input.d, u_input.d, var_0)), vec3<i32>(u_input.c, -u_input.d.x, firstTrailingBit(1i))), Struct_1(vec3<i32>(_wgslsmith_mod_i32(abs(u_input.c), ~1i), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, -6785i, u_input.d.x), vec3<i32>(u_input.a, u_input.a, 1i)) << (55109u % 32u), ~_wgslsmith_mult_i32(u_input.c, -11585i)), true, ~(u_input.d << ((var_1 << (vec3<u32>(u_input.b, var_1.x, 4294967295u) % vec3<u32>(32u))) % vec3<u32>(32u))), vec3<i32>(_wgslsmith_dot_vec3_i32(select(vec3<i32>(u_input.a, u_input.d.x, -5704i), vec3<i32>(-22530i, -71804i, u_input.c), vec3<bool>(false, var_0, false)), u_input.d ^ u_input.d), -1i, -13552i)), Struct_1(u_input.d, all(vec2<bool>(var_2, u_input.d.x <= -533i)), ~vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, u_input.c, u_input.a, -9166i), vec4<i32>(2147483647i, 21569i, -71472i, 27163i)), ~u_input.c, 14169i), vec3<i32>(u_input.c, 11413i, u_input.d.x)), vec3<f32>(-227f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1790f * _wgslsmith_f_op_f32(f32(-1f) * -1006f)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1191f, -1335f)) + _wgslsmith_f_op_f32(f32(-1f) * -113f))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = u_input.b;
    let var_0 = vec4<u32>(2331u, u_input.b, _wgslsmith_mult_u32(~u_input.b, firstTrailingBit(37564u)), _wgslsmith_clamp_u32(_wgslsmith_sub_u32(u_input.b, u_input.b) & 1u, 0u, abs(abs(~u_input.b))));
    let var_1 = min(1u | var_0.x, 4294967295u);
    let var_2 = func_1();
    global1 = array<Struct_1, 28>();
    var var_3 = Struct_2(vec3<i32>(_wgslsmith_sub_i32(select(-24716i, 44740i, false), _wgslsmith_mult_i32(u_input.a, u_input.c)), ~_wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(var_2.a.x, 0i, 0i), vec3<i32>(1i, var_2.a.x, -1i)), abs(u_input.d)), u_input.c), func_1().b, global1[_wgslsmith_index_u32(~func_3(Struct_1(vec3<i32>(u_input.a, u_input.c, u_input.d.x), func_1().b.b, var_2.b.c, select(vec3<i32>(-108357i, var_2.b.d.x, var_2.b.a.x), u_input.d, vec3<bool>(var_2.b.b, true, false))), _wgslsmith_f_op_vec3_f32(-var_2.d), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_2.d.x, var_2.d.x))), var_2).x, 28u)], vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, -577f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.d.x + -297f) - _wgslsmith_f_op_f32(step(1754f, -155f)))), _wgslsmith_f_op_f32(max(func_1().d.x, _wgslsmith_f_op_f32(select(-506f, _wgslsmith_f_op_f32(ceil(1035f)), false)))), _wgslsmith_f_op_f32(f32(-1f) * -1461f)));
    global0 = 46254u;
    let x = u_input.a;
    s_output = StorageBuffer(var_1);
}


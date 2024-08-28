struct Struct_1 {
    a: f32,
    b: vec4<f32>,
    c: i32,
    d: bool,
    e: vec4<f32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec4<i32>,
    c: u32,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: array<Struct_4, 20>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec4<f32>, arg_1: f32) -> vec3<i32> {
    let var_0 = firstTrailingBit(4294967295u);
    return ~vec3<i32>(max(~(-1i), -34193i), _wgslsmith_sub_i32(max(u_input.a, 2147483647i), abs(-32517i)), select(2147483647i, -u_input.a, !global0.x)) ^ -reverseBits(_wgslsmith_div_vec3_i32(abs(vec3<i32>(100755i, 2658i, 7970i)), vec3<i32>(u_input.a, u_input.a, 0i)));
}

fn func_2(arg_0: vec2<f32>) -> u32 {
    let var_0 = (abs(select(vec3<i32>(2147483647i, 0i, u_input.a), vec3<i32>(u_input.a, 1i, u_input.a), global0.x) ^ vec3<i32>(1i, 2147483647i, -2147483647i)) | max(select(vec3<i32>(u_input.a, 1i, 1i), -vec3<i32>(16464i, -2328i, 10465i), global0.x), func_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, arg_0.x, 1239f, -1820f)), _wgslsmith_f_op_f32(-arg_0.x)))) << (~u_input.b.zyw % vec3<u32>(32u));
    let var_1 = ~(~(~(-7447i >> (u_input.b.x % 32u)) & u_input.a));
    let var_2 = 2147483647i;
    global1 = array<Struct_4, 20>();
    let var_3 = arg_0.x;
    return u_input.b.x;
}

fn func_1(arg_0: vec2<i32>, arg_1: vec4<f32>, arg_2: Struct_4) -> vec2<u32> {
    global0 = select(vec4<bool>(select(false | global0.x, all(global0.wxz), select(true, false, false)), _wgslsmith_mod_u32(u_input.b.x ^ u_input.b.x, ~u_input.b.x) > func_2(arg_1.wz), false, false), !select(vec4<bool>(arg_2.b.d & global0.x, global0.x, all(vec3<bool>(false, global0.x, false)), !arg_2.b.d), !select(vec4<bool>(arg_2.b.d, false, false, true), vec4<bool>(true, global0.x, global0.x, global0.x), false), any(global0.xw)), all(select(global0.yxx, global0.ywz, vec3<bool>(false, true, !arg_2.a.d))));
    var var_0 = arg_2;
    let var_1 = Struct_3(Struct_2(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-arg_1.xxx))), vec4<i32>(arg_2.a.c, arg_0.x, firstTrailingBit(arg_0.x), min(0i, firstTrailingBit(-16469i))), 1u >> (_wgslsmith_dot_vec2_u32(vec2<u32>(1u, u_input.b.x), u_input.b.zx) % 32u)));
    global1 = array<Struct_4, 20>();
    global1 = array<Struct_4, 20>();
    return ~vec2<u32>(~(firstTrailingBit(56585u) | u_input.b.x), ~(~u_input.b.x) & 4294967295u);
}

fn func_4(arg_0: u32) -> Struct_4 {
    let var_0 = _wgslsmith_div_u32(~_wgslsmith_dot_vec4_u32(~vec4<u32>(29775u, 0u, 18421u, u_input.b.x), vec4<u32>(~arg_0, firstTrailingBit(8039u), 0u, _wgslsmith_add_u32(u_input.b.x, 0u))), max(arg_0, ~(u_input.b.x | _wgslsmith_dot_vec4_u32(u_input.b, vec4<u32>(1u, 15624u, arg_0, 54118u)))));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(2097f, _wgslsmith_f_op_f32(trunc(-1095f))))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1454f, -2480f, -104f, -946f)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(536f, 305f, -466f, 1367f), _wgslsmith_f_op_vec4_f32(vec4<f32>(-415f, 1000f, -1000f, 320f) + vec4<f32>(835f, 1522f, -1286f, 238f)), !vec4<bool>(true, global0.x, global0.x, global0.x))))), 1i, false, vec4<f32>(_wgslsmith_f_op_f32(537f + -755f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) + _wgslsmith_f_op_f32(f32(-1f) * -133f)), -189f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-467f * 1497f), _wgslsmith_f_op_f32(f32(-1f) * -226f)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-218f + 516f), _wgslsmith_f_op_f32(max(1000f, -720f))))));
    let var_2 = vec3<u32>(firstTrailingBit(u_input.b.x), _wgslsmith_dot_vec3_u32(u_input.b.xwz, ~u_input.b.xwz), u_input.b.x);
    let var_3 = abs(var_2.x << (11585u % 32u)) | arg_0;
    var_1 = Struct_1(_wgslsmith_div_f32(var_1.b.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(100f)))))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -131f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_1.e.x, var_1.e.x)) - _wgslsmith_f_op_f32(-var_1.b.x)) - 1072f), -1499f, var_1.a), u_input.a, true, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-824f, _wgslsmith_f_op_f32(f32(-1f) * -160f), _wgslsmith_f_op_f32(trunc(1737f)), var_1.a) + var_1.b) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(var_1.e, var_1.b))))));
    return global1[_wgslsmith_index_u32(~_wgslsmith_sub_u32(~firstTrailingBit(_wgslsmith_dot_vec2_u32(u_input.b.yz, u_input.b.yw)), _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(var_2.x, arg_0, var_3, 40444u), u_input.b) & ~vec4<u32>(4294967295u, var_3, var_3, var_0), vec4<u32>(22240u, select(58248u, var_0, true), 0u, var_3))), 20u)];
}

fn func_5(arg_0: Struct_4) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(trunc(arg_0.b.b.wzx))));
    return arg_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(func_4(_wgslsmith_dot_vec2_u32(func_1(_wgslsmith_add_vec2_i32(vec2<i32>(-1i, u_input.a), vec2<i32>(u_input.a, 1i)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-2401f, 1379f, 1141f, 2119f)), global1[_wgslsmith_index_u32(1u, 20u)]), vec2<u32>(u_input.b.x, 1u))));
    var var_1 = min(1i, 2147483647i);
    let var_2 = !vec4<bool>(func_4(u_input.b.x).b.d, true, global0.x, !(-564f != var_0.a));
    var var_3 = func_4(4294967295u).a;
    var var_4 = true;
    let var_5 = ~(~u_input.b << (vec4<u32>(~1u, u_input.b.x, 9870u, 0u) % vec4<u32>(32u)));
    var_1 = _wgslsmith_mod_i32(countOneBits(-35161i), _wgslsmith_mult_i32(abs(countOneBits(u_input.a) ^ -38623i), _wgslsmith_mod_i32(-_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, 34286i, var_0.c), vec3<i32>(-1i, -1i, var_3.c)), i32(-1i) * -2147483647i)));
    var_1 = var_0.c;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec4_i32(~(-_wgslsmith_clamp_vec4_i32(vec4<i32>(-2147483647i, var_0.c, 58196i, 44605i), vec4<i32>(var_3.c, -1i, var_0.c, var_3.c), vec4<i32>(u_input.a, -2147483647i, u_input.a, -12862i))), ~(select(vec4<i32>(var_0.c, 10657i, u_input.a, -1i), vec4<i32>(var_0.c, 19137i, -15410i, u_input.a), vec4<bool>(false, var_2.x, var_0.d, false)) >> (max(vec4<u32>(var_5.x, var_5.x, var_5.x, 1u), var_5) % vec4<u32>(32u)))));
}


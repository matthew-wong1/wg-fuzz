struct Struct_1 {
    a: u32,
    b: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: f32,
    d: vec2<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: vec4<i32>,
    d: vec2<f32>,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 22> = array<u32, 22>(4294967295u, 0u, 4294967295u, 48520u, 1u, 0u, 43663u, 36568u, 31785u, 79853u, 4294967295u, 5249u, 1u, 7584u, 28593u, 4294967295u, 1u, 0u, 91379u, 0u, 91111u, 81775u);

var<private> global1: Struct_2;

var<private> global2: bool;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: Struct_1) -> f32 {
    var var_0 = arg_2;
    var var_1 = var_0.b.x;
    var var_2 = _wgslsmith_f_op_vec4_f32(select(global1.a.b, _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(arg_0.x * -841f), arg_2.b.x, _wgslsmith_f_op_f32(-arg_2.b.x), -291f), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_1.b.x, -892f, 294f, -570f), global1.a.b)))))), arg_1.b)), any(vec2<bool>(false, true))));
    let var_3 = Struct_3(Struct_1(~abs(0u), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-arg_1.b), vec4<f32>(-2131f, _wgslsmith_f_op_f32(f32(-1f) * -354f), _wgslsmith_div_f32(arg_0.x, 2535f), var_0.b.x)))), true, select(firstLeadingBit(~_wgslsmith_clamp_vec4_i32(vec4<i32>(0i, 0i, -2147483647i, 1i), vec4<i32>(-2147483647i, -1i, 2147483647i, -20759i), vec4<i32>(2147483647i, 14939i, 1i, 0i))), min(countOneBits(firstLeadingBit(vec4<i32>(22581i, 6414i, 0i, -38356i))), -vec4<i32>(-1i, 1i, 74774i, -8678i) | (vec4<i32>(0i, 2147483647i, 10304i, -19670i) >> (vec4<u32>(arg_2.a, arg_1.a, arg_2.a, u_input.a) % vec4<u32>(32u)))), vec4<bool>(!all(vec2<bool>(false, true)), false, select(-2147483647i, 9746i, false) >= -1i, true)), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(arg_0.x, arg_2.b.x), vec2<f32>(arg_2.b.x, 876f))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(arg_0.x, -183f), vec2<f32>(-594f, var_2.x))), arg_2.b.xz))), global1.d)), vec2<i32>(1i, 1i));
    var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-176f, 1368f, 1383f, 776f))))));
    return 1312f;
}

fn func_2(arg_0: Struct_3, arg_1: vec2<f32>) -> Struct_2 {
    global1 = Struct_2(global1.a, arg_1.x, arg_0.a.b.x, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec3<f32>(global1.d.x, -972f, global1.a.b.x), global1.a, Struct_1(arg_0.a.a, arg_0.a.b)))), _wgslsmith_f_op_f32(floor(-332f))));
    var var_0 = arg_0;
    let var_1 = global1.a;
    let var_2 = arg_0.e.x;
    global0 = array<u32, 22>();
    return Struct_2(Struct_1(_wgslsmith_dot_vec3_u32(vec3<u32>(firstTrailingBit(u_input.a), ~1u, _wgslsmith_add_u32(var_1.a, 4294967295u)), vec3<u32>(~global1.a.a, 9566u, 4294967295u)), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -783f), var_0.d.x, 1113f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_0.d.x * arg_1.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(669f - -846f))), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(global1.c, -297f)))), vec2<f32>(global1.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -186f) * _wgslsmith_f_op_f32(-global1.c))))));
}

fn func_1() -> Struct_2 {
    var var_0 = Struct_1(min(abs(~(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global1.a.a, 22u)], 22u)])), _wgslsmith_dot_vec2_u32(u_input.b, ~_wgslsmith_sub_vec2_u32(u_input.b, vec2<u32>(72375u, global1.a.a)))), global1.a.b);
    let var_1 = global1.a;
    global2 = any(!(!select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), false), true)));
    global1 = func_2(Struct_3(Struct_1(_wgslsmith_add_u32(~u_input.b.x, 14182u), _wgslsmith_f_op_vec4_f32(min(global1.a.b, _wgslsmith_f_op_vec4_f32(var_1.b + global1.a.b)))), false, vec4<i32>(_wgslsmith_sub_i32(-2147483647i, -2147483647i), firstLeadingBit(~0i), _wgslsmith_mult_i32(i32(-1i) * -1435i, -26078i), 0i), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(647f, -266f) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(876f, var_1.b.x))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.b.x, 1000f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b.x, var_0.b.x))), select(true, true, true))), vec2<i32>(~68314i, -1i)), global1.d);
    let var_2 = global1.a;
    return func_2(Struct_3(func_2(Struct_3(func_2(Struct_3(global1.a, false, vec4<i32>(2543i, -13665i, -1i, 19099i), vec2<f32>(1595f, global1.d.x), vec2<i32>(17919i, 44168i)), vec2<f32>(-1191f, var_2.b.x)).a, false, vec4<i32>(1i, 1i, 1i, 1i), _wgslsmith_f_op_vec2_f32(round(var_0.b.yw)), abs(vec2<i32>(-1i, -40030i))), var_0.b.xy).a, !(var_2.b.x <= -642f), vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(71165i, -1i, -2147483647i), vec3<i32>(1i, 32421i, -1i)), -16403i, 1i, _wgslsmith_sub_i32(-17722i, 52747i)) >> (abs(countOneBits(vec4<u32>(global1.a.a, global0[_wgslsmith_index_u32(1u, 22u)], 1u, 14547u))) % vec4<u32>(32u)), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_2.b.x, 620f))), _wgslsmith_sub_vec2_i32(max(_wgslsmith_sub_vec2_i32(vec2<i32>(1i, -68599i), vec2<i32>(1i, -28830i)), vec2<i32>(-42509i, 72408i) << (u_input.b % vec2<u32>(32u))), _wgslsmith_add_vec2_i32(vec2<i32>(0i, -26719i), -vec2<i32>(0i, -3431i)))), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(global1.c)), _wgslsmith_f_op_f32(step(var_1.b.x, var_0.b.x)))), _wgslsmith_div_f32(1f, global1.b)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 22>();
    let var_0 = 907f;
    var var_1 = var_0;
    global1 = func_1();
    var var_2 = vec2<i32>(_wgslsmith_sub_i32(abs(abs(_wgslsmith_sub_i32(1203i, -28780i))), ~_wgslsmith_dot_vec4_i32(select(vec4<i32>(62104i, 17447i, 2147483647i, 7078i), vec4<i32>(-22194i, -2147483647i, 20210i, 2147483647i), false), vec4<i32>(2147483647i, -1i, 1i, 1i))), _wgslsmith_div_i32(-53478i, _wgslsmith_sub_i32(1i, max(abs(2147483647i), _wgslsmith_clamp_i32(42889i, -52042i, -31338i)))));
    var var_3 = _wgslsmith_add_vec3_u32(~(~(_wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, u_input.a, u_input.b.x), vec3<u32>(1u, global1.a.a, global0[_wgslsmith_index_u32(1u, 22u)])) << ((vec3<u32>(1u, 28861u, 41953u) >> (vec3<u32>(4294967295u, global1.a.a, 1u) % vec3<u32>(32u))) % vec3<u32>(32u)))), vec3<u32>(4294967295u, select(select(58891u, _wgslsmith_sub_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b.x, 22u)], 22u)], 3881u), select(false, true, true)), ~(~66555u), false), 35924u));
    var var_4 = !(!(!(any(vec4<bool>(true, false, false, false)) || true)));
    var var_5 = Struct_1(reverseBits(_wgslsmith_dot_vec3_u32(~(vec3<u32>(5344u, 4294967295u, global1.a.a) ^ vec3<u32>(global1.a.a, 1u, 4294967295u)), vec3<u32>(global0[_wgslsmith_index_u32(~0u, 22u)], 8683u, _wgslsmith_dot_vec2_u32(u_input.b, var_3.zx)))), vec4<f32>(_wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0 - _wgslsmith_f_op_f32(-229f * var_0)) + _wgslsmith_f_op_f32(f32(-1f) * -1052f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.d.x - -1384f) - 183f) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global1.a.b.x), -841f))), _wgslsmith_f_op_f32(1150f * -362f)));
    let x = u_input.a;
    s_output = StorageBuffer(var_0, vec4<u32>(17324u, global1.a.a, _wgslsmith_clamp_u32(func_1().a.a, u_input.b.x, _wgslsmith_sub_u32(114019u, 17402u)), var_5.a) >> (firstLeadingBit(abs(~vec4<u32>(1u, 1u, 61896u, 2091u))) % vec4<u32>(32u)), -(i32(-1i) * -(~var_2.x)));
}


struct Struct_1 {
    a: i32,
    b: vec3<u32>,
    c: vec2<i32>,
    d: i32,
}

struct Struct_2 {
    a: bool,
    b: vec4<i32>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: Struct_1,
    c: vec3<f32>,
    d: u32,
    e: bool,
}

struct Struct_4 {
    a: vec2<u32>,
    b: vec4<f32>,
    c: vec2<i32>,
    d: vec4<f32>,
    e: Struct_1,
}

struct Struct_5 {
    a: vec3<u32>,
    b: bool,
    c: Struct_4,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
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

var<private> global0: vec3<bool> = vec3<bool>(true, false, true);

var<private> global1: array<Struct_2, 26>;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: f32, arg_1: Struct_2) -> vec3<i32> {
    let var_0 = 4294967295u;
    var var_1 = Struct_2(true, select(reverseBits(_wgslsmith_add_vec4_i32(vec4<i32>(arg_1.b.x, arg_1.b.x, 0i, -36830i) & arg_1.b, ~arg_1.b)), -arg_1.b, true));
    global0 = select(!(!vec3<bool>(any(vec4<bool>(true, true, true, var_1.a)), var_1.a, select(global0.x, arg_1.a, global0.x))), select(select(vec3<bool>(global0.x, true, false), select(vec3<bool>(global0.x, global0.x, arg_1.a), vec3<bool>(global0.x, false, true), !vec3<bool>(var_1.a, var_1.a, true)), !(!vec3<bool>(arg_1.a, arg_1.a, global0.x))), !vec3<bool>(all(global0.yx), true, var_1.a), !select(!vec3<bool>(false, global0.x, false), !vec3<bool>(false, var_1.a, global0.x), arg_1.a)), all(global0.zx));
    let var_2 = global0.yy;
    var_1 = global1[_wgslsmith_index_u32(u_input.b, 26u)];
    return -(~var_1.b.zyw) ^ max(-arg_1.b.wyw, vec3<i32>(-1i) * -(~var_1.b.yxw));
}

fn func_2(arg_0: i32) -> Struct_4 {
    let var_0 = -(firstLeadingBit(func_3(930f, global1[_wgslsmith_index_u32(40339u, 26u)])) | firstLeadingBit(~vec3<i32>(-1i, 1i, arg_0))) << (~_wgslsmith_sub_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.b, 7874u, 49576u) & vec3<u32>(u_input.b, u_input.b, 1u), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b, 34941u, 0u), vec3<u32>(1u, 1u, u_input.b))), select(abs(vec3<u32>(u_input.b, u_input.b, u_input.b)), countOneBits(vec3<u32>(u_input.b, u_input.b, u_input.b)), !global0.x)) % vec3<u32>(32u));
    let var_1 = Struct_5(~vec3<u32>(_wgslsmith_mod_u32(_wgslsmith_sub_u32(u_input.b, 52660u), ~12612u), u_input.b, select(u_input.b, u_input.b, global0.x)), global0.x, Struct_4(vec2<u32>(reverseBits(1851u), 53811u), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(min(574f, 120f)), _wgslsmith_div_f32(-617f, -438f), _wgslsmith_div_f32(1267f, -3706f), _wgslsmith_f_op_f32(-840f * 417f)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2212f, -542f, -338f, 302f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-590f, -707f, -217f, 318f) + vec4<f32>(935f, 942f, -263f, -118f))), true)), vec2<i32>(firstTrailingBit(countOneBits(arg_0)), arg_0), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-574f, -341f, -1037f, 1492f))), Struct_1(_wgslsmith_div_i32(-3981i, 1i), vec3<u32>(u_input.b, min(1012u, u_input.b), 1u), ~_wgslsmith_add_vec2_i32(var_0.zy, var_0.zy), u_input.a)));
    return var_1.c;
}

fn func_1(arg_0: vec3<i32>, arg_1: Struct_3) -> vec3<bool> {
    let var_0 = false;
    var var_1 = func_2(arg_0.x);
    let var_2 = Struct_2(any(select(select(vec3<bool>(arg_1.e, true, false), !vec3<bool>(true, global0.x, true), false), select(!vec3<bool>(false, var_0, var_0), select(vec3<bool>(false, false, false), vec3<bool>(global0.x, var_0, true), vec3<bool>(arg_1.e, global0.x, true)), false == arg_1.e), !select(vec3<bool>(global0.x, true, true), vec3<bool>(false, var_0, var_0), var_0))), _wgslsmith_clamp_vec4_i32(min(vec4<i32>(-arg_0.x, arg_1.b.d, abs(2147483647i), i32(-1i) * -16251i), reverseBits(vec4<i32>(arg_1.b.c.x, var_1.c.x, arg_0.x, var_1.c.x))), -firstTrailingBit(vec4<i32>(arg_1.b.a, -2147483647i, 21274i, arg_0.x)) >> (_wgslsmith_clamp_vec4_u32(vec4<u32>(var_1.e.b.x, 34203u, 56209u, 39630u), reverseBits(vec4<u32>(u_input.b, u_input.b, 34020u, u_input.b)), ~vec4<u32>(arg_1.d, var_1.a.x, u_input.b, arg_1.d)) % vec4<u32>(32u)), max(vec4<i32>(u_input.c, 28073i, u_input.c, arg_1.b.d), vec4<i32>(func_3(-1000f, global1[_wgslsmith_index_u32(var_1.e.b.x, 26u)]).x, min(arg_0.x, u_input.c), _wgslsmith_add_i32(u_input.c, -2147483647i), 4250i ^ arg_0.x))));
    var var_3 = arg_1;
    let var_4 = global1[_wgslsmith_index_u32(u_input.b, 26u)];
    return vec3<bool>(true, true, var_0);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = !select(vec3<bool>(false, u_input.a < _wgslsmith_clamp_i32(47901i, u_input.c, u_input.c), !(!global0.x)), vec3<bool>(true, u_input.c > -u_input.a, false), select(vec3<bool>(global0.x, global0.x, !global0.x), func_1(vec3<i32>(-56130i, u_input.c, u_input.c), Struct_3(vec3<f32>(2584f, 1138f, 260f), Struct_1(u_input.c, vec3<u32>(73329u, u_input.b, u_input.b), vec2<i32>(u_input.c, u_input.c), 0i), vec3<f32>(663f, -347f, 1232f), 24776u, true)), select(vec3<bool>(true, true, true), !vec3<bool>(true, global0.x, global0.x), !global0.x)));
    global1 = array<Struct_2, 26>();
    global1 = array<Struct_2, 26>();
    let var_0 = func_2(_wgslsmith_mult_i32(u_input.c, ~(~u_input.c)));
    let var_1 = true & !global0.x;
    global1 = array<Struct_2, 26>();
    let var_2 = func_2(_wgslsmith_mult_i32(min(_wgslsmith_dot_vec4_i32(vec4<i32>(-13568i, var_0.c.x, var_0.e.d, 21006i), vec4<i32>(-32554i, var_0.e.a, -14661i, u_input.c)), _wgslsmith_sub_i32(var_0.e.c.x ^ 28872i, _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, u_input.a, -44386i), vec3<i32>(var_0.c.x, u_input.c, var_0.e.c.x)))), _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(0i, 2147483647i), var_0.e.c >> (var_0.e.b.yz % vec2<u32>(32u))), firstTrailingBit(-2147483647i))));
    var var_3 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(1000f);
}


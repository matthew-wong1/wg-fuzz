struct Struct_1 {
    a: bool,
    b: vec4<f32>,
    c: vec2<i32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec2<i32>,
    c: i32,
    d: vec3<bool>,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: vec3<u32> = vec3<u32>(4294967295u, 108966u, 29894u);

var<private> global2: array<u32, 23>;

var<private> global3: array<vec3<u32>, 27>;

var<private> global4: vec3<u32>;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: vec2<bool>, arg_1: i32) -> vec3<i32> {
    let var_0 = global1.x;
    global0 = true;
    global2 = array<u32, 23>();
    var var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)))), select(vec2<i32>(0i, max(-6600i, 19302i & u_input.a)), abs(firstTrailingBit(vec2<i32>(-12708i, -1i)) << (~vec2<u32>(1u, 20172u) % vec2<u32>(32u))), arg_0), 27804i, vec3<bool>(any(select(select(vec3<bool>(arg_0.x, false, arg_0.x), vec3<bool>(true, false, false), vec3<bool>(arg_0.x, arg_0.x, false)), !vec3<bool>(arg_0.x, arg_0.x, arg_0.x), any(vec4<bool>(arg_0.x, true, arg_0.x, false)))), true, false), _wgslsmith_mod_vec3_i32(abs(reverseBits(vec3<i32>(u_input.a, 2147483647i, u_input.a))) & vec3<i32>(u_input.a, ~arg_1, u_input.a), max(abs(-vec3<i32>(24057i, 78671i, -6816i)), ~vec3<i32>(1i, arg_1, u_input.a))));
    var var_2 = Struct_1(!arg_0.x, var_1.a, -(~var_1.e.yy));
    return ~var_1.e;
}

fn func_4(arg_0: Struct_2, arg_1: vec4<i32>, arg_2: i32) -> vec3<bool> {
    global0 = true;
    let var_0 = ~(~(~0u));
    global0 = arg_0.d.x;
    var var_1 = Struct_1(true, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-2944f, arg_0.a.x, 1000f, arg_0.a.x), vec4<f32>(arg_0.a.x, -826f, -764f, arg_0.a.x)) * arg_0.a)), arg_0.b);
    let var_2 = arg_0;
    return var_2.d;
}

fn func_2(arg_0: Struct_1) -> vec2<i32> {
    var var_0 = any(func_4(Struct_2(_wgslsmith_f_op_vec4_f32(-arg_0.b), ~_wgslsmith_add_vec2_i32(arg_0.c, vec2<i32>(arg_0.c.x, arg_0.c.x)), u_input.a, !(!vec3<bool>(arg_0.a, arg_0.a, false)), ~func_3(vec2<bool>(true, arg_0.a), arg_0.c.x)), _wgslsmith_sub_vec4_i32(countOneBits(~vec4<i32>(-2147483647i, -2217i, arg_0.c.x, u_input.a)), ~abs(vec4<i32>(u_input.a, arg_0.c.x, -1i, -38914i))), i32(-1i) * -50281i));
    let var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(arg_0.b + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-arg_0.b.x), _wgslsmith_f_op_f32(arg_0.b.x * 623f), -730f, _wgslsmith_f_op_f32(-arg_0.b.x)))), ~_wgslsmith_clamp_vec2_i32(arg_0.c, arg_0.c, arg_0.c), -countOneBits(1i), !(!vec3<bool>(global4.x == global4.x, arg_0.a, any(vec2<bool>(arg_0.a, true)))), _wgslsmith_add_vec3_i32(_wgslsmith_mod_vec3_i32(select(vec3<i32>(arg_0.c.x, 27404i, -132i), vec3<i32>(arg_0.c.x, arg_0.c.x, arg_0.c.x), vec3<bool>(arg_0.a, arg_0.a, arg_0.a)), -vec3<i32>(u_input.a, -2147483647i, 2147483647i)) ^ -vec3<i32>(1i, 2147483647i, 41423i), vec3<i32>(_wgslsmith_div_i32(arg_0.c.x ^ arg_0.c.x, 49253i), u_input.a, countOneBits(0i))));
    var var_2 = arg_0;
    let var_3 = (~(~1u) ^ firstTrailingBit(8495u)) | 4294967295u;
    let var_4 = global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(max(var_3, global2[_wgslsmith_index_u32(24180u, 23u)]) >> (global2[_wgslsmith_index_u32(~global1.x, 23u)] % 32u), 110967u), u_input.b), global1.yz ^ ~(vec2<u32>(1u, 0u) & vec2<u32>(u_input.b.x, u_input.b.x))), 23u)], 27u)];
    return ~var_1.b;
}

fn func_1() -> Struct_2 {
    global3 = array<vec3<u32>, 27>();
    var var_0 = Struct_1(!(!any(vec4<bool>(true, true, true, true))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(172f, 761f)))), _wgslsmith_f_op_f32(f32(-1f) * -292f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -489f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-218f)) + -1007f), true)), 384f), func_2(Struct_1(false, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(881f, 536f, -472f, 1000f))), -abs(vec2<i32>(39672i, u_input.a)))));
    global4 = global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(14860u, 23u)], 27u)];
    global3 = array<vec3<u32>, 27>();
    var var_1 = !var_0.a;
    return Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-953f, 159f, var_0.b.x, 305f))))), func_3(!select(vec2<bool>(true, true), vec2<bool>(var_0.a, true), var_0.a), _wgslsmith_add_i32(~0i, var_0.c.x)).zx ^ max(~_wgslsmith_add_vec2_i32(vec2<i32>(u_input.a, var_0.c.x), var_0.c), ~vec2<i32>(var_0.c.x, 5654i)), ~_wgslsmith_sub_i32(-1i, var_0.c.x), vec3<bool>(var_0.a && !any(vec4<bool>(false, false, var_0.a, true)), !(-2147483647i != var_0.c.x), true == var_0.a), firstLeadingBit(-(~vec3<i32>(u_input.a, 1i, var_0.c.x) ^ ~vec3<i32>(var_0.c.x, u_input.a, u_input.a))));
}

fn func_5(arg_0: vec3<f32>, arg_1: Struct_2, arg_2: f32) -> StorageBuffer {
    var var_0 = func_4(func_1(), _wgslsmith_mod_vec4_i32(-_wgslsmith_sub_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.a, arg_1.e.x, 22170i, -7035i), vec4<i32>(2147483647i, -27822i, 1i, u_input.a)), vec4<i32>(-48694i, 57001i, arg_1.b.x, u_input.a)), ~vec4<i32>(_wgslsmith_clamp_i32(-13676i, u_input.a, u_input.a), -1i, 2147483647i & u_input.a, 2147483647i)), ~1i).yy;
    var var_1 = func_1();
    let var_2 = Struct_1(false, arg_1.a, abs(~(arg_1.e.yz | min(arg_1.b, var_1.b))));
    let var_3 = var_2;
    let var_4 = 1i;
    return StorageBuffer(_wgslsmith_mult_vec4_i32(select(vec4<i32>(func_3(vec2<bool>(var_1.d.x, false), arg_1.c).x, -59219i | arg_1.b.x, var_4, _wgslsmith_dot_vec4_i32(vec4<i32>(-25750i, var_2.c.x, arg_1.b.x, var_4), vec4<i32>(1i, 64751i, -25211i, var_4))), abs(reverseBits(vec4<i32>(48623i, var_4, -44975i, var_4))), !var_2.a), -_wgslsmith_add_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(20093i, 19637i, -2147483647i, 7097i), vec4<i32>(-1i, arg_1.b.x, var_1.e.x, var_1.e.x)), min(vec4<i32>(var_4, 2147483647i, 0i, 2129i), vec4<i32>(arg_1.e.x, var_3.c.x, 1i, -2147483647i)))), global4.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 792f;
    global2 = array<u32, 23>();
    let var_1 = 52939u << (global4.x % 32u);
    let x = u_input.a;
    s_output = func_5(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, var_0, var_0)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, 2043f, 1297f))))), func_1(), -1000f);
}


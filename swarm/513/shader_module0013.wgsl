struct Struct_1 {
    a: u32,
    b: vec3<u32>,
    c: vec2<i32>,
    d: vec3<i32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: bool,
    d: u32,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: Struct_1,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec2<u32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: array<vec4<bool>, 23> = array<vec4<bool>, 23>(vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, true));

var<private> global2: Struct_3 = Struct_3(false, Struct_2(vec4<bool>(true, true, false, true), Struct_1(4294967295u, vec3<u32>(1u, 16082u, 1u), vec2<i32>(0i, 1i), vec3<i32>(27892i, 2147483647i, -51546i)), true, 4294967295u), Struct_1(10351u, vec3<u32>(1u, 4294967295u, 1u), vec2<i32>(i32(-2147483648), -36677i), vec3<i32>(1i, 0i, 1i)), vec2<u32>(136280u, 7514u));

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2(arg_0: Struct_1, arg_1: bool, arg_2: Struct_2) -> Struct_1 {
    var var_0 = vec3<i32>(-(-35912i | _wgslsmith_clamp_i32(arg_2.b.d.x, _wgslsmith_mod_i32(-14694i, global2.c.c.x), 10752i)), _wgslsmith_add_i32(~(i32(-1i) * -4189i), 1i ^ abs(-36011i ^ global0.c.d.x)), min(_wgslsmith_mult_i32(~(-global0.b.b.c.x), u_input.a), reverseBits(u_input.a)));
    let var_1 = global0.b.b.c.x;
    var var_2 = arg_2.b;
    var_2 = global0.c;
    let var_3 = global2.b.a.xw;
    return Struct_1(~4294967295u, global2.b.b.b & (global2.c.b >> (~(~vec3<u32>(arg_0.b.x, 0u, var_2.b.x)) % vec3<u32>(32u))), firstLeadingBit(var_2.d.zx & arg_2.b.d.yy), vec3<i32>(-2147483647i, _wgslsmith_mult_i32(~global2.c.c.x, var_2.d.x), select(arg_0.c.x, _wgslsmith_dot_vec3_i32(vec3<i32>(global2.b.b.d.x, global2.b.b.d.x, global2.b.b.d.x), abs(var_2.d)), true)));
}

fn func_3(arg_0: vec3<u32>, arg_1: vec4<u32>, arg_2: vec3<f32>) -> bool {
    global0 = Struct_3(global2.a | global2.a, Struct_2(vec4<bool>(global0.b.c, !global2.a, select(global2.c.a == global0.b.d, false, all(vec4<bool>(global2.b.c, false, global2.a, global2.b.a.x))), global0.a | false), Struct_1(~min(global0.b.b.b.x, global0.b.d), arg_1.zzy, ~firstTrailingBit(global0.c.c), max(-vec3<i32>(global0.b.b.c.x, global2.b.b.c.x, global0.c.d.x), global0.c.d)), false, arg_1.x), global2.c, vec2<u32>(max(25431u, _wgslsmith_mod_u32(arg_1.x, 45788u)), 0u));
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(arg_2.x * _wgslsmith_f_op_f32(min(536f, arg_2.x))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_2.x), -223f)));
    var var_1 = global0.b.a.wy;
    var var_2 = global2.c.a <= ~51436u;
    var_0 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(arg_2.yy))), vec2<f32>(1353f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_0.x)) - 949f))))));
    return false;
}

fn func_1() -> Struct_1 {
    let var_0 = Struct_3(global0.a || false, Struct_2(global1[_wgslsmith_index_u32(~13495u, 23u)], func_2(Struct_1(global2.b.d, global0.c.b, vec2<i32>(global0.b.b.d.x, -6228i) ^ vec2<i32>(1i, 1705i), firstLeadingBit(vec3<i32>(global2.b.b.c.x, u_input.a, 0i))), true, Struct_2(vec4<bool>(global2.b.a.x, global2.a, global0.a, global0.a), Struct_1(global2.c.b.x, global2.c.b, vec2<i32>(global0.b.b.c.x, global0.c.c.x), global2.b.b.d), true, u_input.c.x)), func_3(global0.c.b, ~abs(vec4<u32>(global0.d.x, global0.c.a, global0.d.x, 36476u)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-116f, 924f, 1198f))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(902f, 229f, 961f) + vec3<f32>(-624f, 952f, 120f)))), global2.c.b.x), func_2(Struct_1(_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.d.x, 20104u), global2.c.b.xy), _wgslsmith_mult_vec2_u32(vec2<u32>(25862u, global0.b.b.a), vec2<u32>(1u, 0u))), ~min(u_input.d.xww, global2.b.b.b), vec2<i32>(global2.c.d.x, 1i) & _wgslsmith_add_vec2_i32(vec2<i32>(9288i, 0i), global2.c.c), vec3<i32>(_wgslsmith_mod_i32(-57297i, 1i), global2.b.b.d.x, global2.c.c.x ^ -15127i)), false, global2.b), ~(max(vec2<u32>(u_input.c.x, u_input.d.x), select(vec2<u32>(global0.d.x, global2.d.x), u_input.c, global0.b.a.xx)) << (global2.c.b.xx % vec2<u32>(32u))));
    var var_1 = var_0;
    let var_2 = all(vec3<bool>(select(true, var_1.a, true), true, global0.b.a.x));
    return func_2(var_1.c, func_3(~select(~u_input.d.xwz, vec3<u32>(global0.c.b.x, u_input.b.x, 28430u), var_2), _wgslsmith_add_vec4_u32((u_input.d >> (u_input.d % vec4<u32>(32u))) ^ max(u_input.d, vec4<u32>(0u, global2.b.b.a, global2.d.x, u_input.c.x)), u_input.d), _wgslsmith_div_vec3_f32(vec3<f32>(-1124f, -1744f, -312f), vec3<f32>(-1637f, _wgslsmith_div_f32(-1474f, -196f), 148f))), var_1.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(global0.b.a, func_1(), !select(false, !(!global0.a), global2.a), _wgslsmith_sub_u32(global2.b.d, ~(~global0.b.b.b.x)) << (global0.c.b.x % 32u));
    let var_1 = var_0.a.x;
    var var_2 = func_2(Struct_1(global0.c.a, _wgslsmith_mod_vec3_u32(u_input.d.yxz, global0.b.b.b), vec2<i32>(~(~global0.c.c.x), u_input.a), min(abs(firstTrailingBit(global2.c.d)), firstTrailingBit(_wgslsmith_mod_vec3_i32(vec3<i32>(-2147483647i, u_input.a, global2.b.b.c.x), global2.b.b.d)))), false, Struct_2(global0.b.a, Struct_1(_wgslsmith_dot_vec2_u32(abs(var_0.b.b.yx), u_input.b.xz), var_0.b.b, reverseBits(global0.b.b.d.xz), abs(var_0.b.d)), false, 0u));
    var var_3 = -var_2.d;
    let var_4 = Struct_3(!(~var_0.b.d.x < firstTrailingBit(-1i)), global2.b, func_1(), vec2<u32>(reverseBits(43926u), ~global2.d.x));
    let var_5 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-664f * 1000f)) - 1f))));
    var var_6 = _wgslsmith_div_u32(var_0.b.b.x, 78334u);
    let var_7 = vec4<i32>(select(-var_2.c.x, _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(-vec3<i32>(global0.c.c.x, -12418i, -38553i), _wgslsmith_mult_vec3_i32(var_0.b.d, vec3<i32>(var_4.c.d.x, 1i, var_0.b.c.x))), var_0.b.d), !(global0.c.a <= abs(var_4.d.x))), _wgslsmith_mod_i32((0i << (select(var_2.b.x, 0u, true) % 32u)) << (global0.b.b.b.x % 32u), max(-12089i, ~min(var_4.b.b.d.x, var_3.x))), -1i, var_3.x);
    let var_8 = var_4.b.c;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(629f, 1000f, var_5)) + _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-3479f, -1153f, var_5), vec3<f32>(323f, -1303f, var_5)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-167f, 730f, var_5))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_5, var_5, 247f))), !var_4.b.a.wzy)))), _wgslsmith_f_op_f32(-2273f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_5)))), -vec3<i32>(select(-31597i, -var_0.b.d.x, true), ~(-1i), firstTrailingBit(max(u_input.a, var_2.d.x))));
}


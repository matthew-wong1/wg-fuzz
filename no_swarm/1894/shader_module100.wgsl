struct Struct_1 {
    a: vec4<bool>,
    b: vec2<i32>,
    c: bool,
    d: vec2<u32>,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
    b: vec3<i32>,
    c: vec3<bool>,
    d: vec2<u32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: array<vec4<u32>, 8>;

var<private> global2: array<vec2<bool>, 10>;

var<private> global3: array<Struct_2, 19>;

var<private> global4: Struct_1 = Struct_1(vec4<bool>(true, false, false, false), vec2<i32>(-24408i, 24563i), false, vec2<u32>(0u, 51687u), 36134i);

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: f32, arg_1: Struct_2) -> u32 {
    var var_0 = !arg_1.a.c || global4.c;
    var var_1 = Struct_1(!select(select(vec4<bool>(true, global4.c, global4.a.x, arg_1.a.c), select(vec4<bool>(true, global0.c.x, false, false), global4.a, false), vec4<bool>(true, true, true, true)), vec4<bool>(global4.a.x, true, arg_1.a.d.x <= global0.e.d.x, false), !select(vec4<bool>(false, arg_1.a.c, true, arg_1.a.a.x), global0.e.a, vec4<bool>(false, global4.a.x, global0.e.c, global4.c))), ~(~_wgslsmith_div_vec2_i32(vec2<i32>(global0.b.x, 1i), -vec2<i32>(5537i, global4.b.x))), all(arg_1.a.a), max(_wgslsmith_sub_vec2_u32(_wgslsmith_sub_vec2_u32(abs(vec2<u32>(1u, 0u)), _wgslsmith_sub_vec2_u32(vec2<u32>(arg_1.a.d.x, arg_1.a.d.x), vec2<u32>(0u, u_input.b))), arg_1.a.d), ~vec2<u32>(31199u, global0.e.d.x)), arg_1.a.b.x);
    var_1 = arg_1.a;
    global4 = global0.e;
    let var_2 = vec4<bool>(any(global0.e.a), true, false, global0.c.x);
    return global4.d.x;
}

fn func_2() -> Struct_1 {
    var var_0 = _wgslsmith_mod_i32(_wgslsmith_add_i32(countOneBits(1i), _wgslsmith_sub_i32(2147483647i, global4.e | global0.a.x)), -8781i) == global4.e;
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-1780f, 934f, -430f, 2008f), _wgslsmith_f_op_vec4_f32(vec4<f32>(131f, -1111f, -532f, 1328f) + vec4<f32>(-1705f, 836f, -1000f, -1000f))))));
    global4 = global0.e;
    var var_2 = Struct_3(-global0.b, vec3<i32>(~(global4.e ^ global0.b.x) << ((~global0.d.x | (88826u | global0.e.d.x)) % 32u), 1i, global4.b.x), select(vec3<bool>(!any(global4.a.wzz), func_3(-2119f, global3[_wgslsmith_index_u32(0u, 19u)]) != ~6502u, select(any(global4.a.yww), true, false)), !(!global0.c), true), global0.e.d ^ vec2<u32>(1u, global0.d.x & 98563u), Struct_1(select(global4.a, !global4.a, vec4<bool>(true, any(vec3<bool>(global0.e.a.x, global4.a.x, false)), any(vec4<bool>(global4.a.x, global0.c.x, false, global4.a.x)), true)), select(~_wgslsmith_mult_vec2_i32(u_input.a.zx, global4.b), max(vec2<i32>(u_input.a.x, 1i), -global4.b), vec2<bool>(all(global4.a), global0.c.x)), true, _wgslsmith_clamp_vec2_u32(reverseBits(vec2<u32>(global4.d.x, global4.d.x)), global0.d, ~(global4.d ^ vec2<u32>(u_input.b, 1u))), u_input.a.x));
    var var_3 = i32(-1i) * -75532i;
    return global0.e;
}

fn func_1(arg_0: u32, arg_1: f32, arg_2: vec2<i32>, arg_3: vec3<u32>) -> f32 {
    var var_0 = func_2();
    var var_1 = abs(arg_2.x);
    var var_2 = Struct_3(u_input.a, ~(vec3<i32>(-1i) * -select(vec3<i32>(27366i, global0.a.x, u_input.a.x), vec3<i32>(u_input.a.x, 1i, -50567i), vec3<bool>(global0.c.x, global0.e.c, false))), global4.a.zwy, _wgslsmith_clamp_vec2_u32(global0.d, reverseBits(global4.d), global4.d), Struct_1(global0.e.a, _wgslsmith_sub_vec2_i32(select(var_0.b, vec2<i32>(var_0.b.x, 0i), global0.c.x) ^ countOneBits(global0.a.zz), var_0.b), all(!select(var_0.a, global4.a, vec4<bool>(global4.a.x, var_0.a.x, global0.c.x, global4.a.x))), ~vec2<u32>(~1u, ~0u), -(~(~var_0.b.x))));
    global0 = Struct_3(reverseBits(var_2.b), _wgslsmith_sub_vec3_i32(_wgslsmith_div_vec3_i32(-vec3<i32>(-49213i, arg_2.x, 17286i), _wgslsmith_mult_vec3_i32(global0.a, vec3<i32>(30774i, arg_2.x, var_0.b.x))), vec3<i32>(0i, -var_2.e.b.x, 1i)), vec3<bool>(!((var_0.e == -15159i) & all(global0.c)), !(!all(var_0.a.zz)), !(!select(true, false, true))), vec2<u32>(_wgslsmith_dot_vec4_u32(global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(28364u, 25713u, u_input.b), arg_3), abs(global0.d.x)), 8u)], _wgslsmith_mod_vec4_u32(abs(vec4<u32>(arg_3.x, var_2.e.d.x, var_2.e.d.x, var_2.e.d.x)), ~global1[_wgslsmith_index_u32(4488u, 8u)])), _wgslsmith_mod_u32(~(~global0.e.d.x), reverseBits(global4.d.x))), global0.e);
    let var_3 = Struct_3(_wgslsmith_add_vec3_i32(u_input.a, abs(~reverseBits(vec3<i32>(var_0.b.x, -85853i, arg_2.x)))), global0.a, select(func_2().a.xwz, !global0.c, global4.a.yyx), firstLeadingBit(vec2<u32>(var_2.e.d.x, func_2().d.x)) >> (firstLeadingBit(vec2<u32>(13882u, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 59306u, global0.d.x), vec3<u32>(103330u, arg_0, arg_3.x)))) % vec2<u32>(32u)), Struct_1(!vec4<bool>(var_2.c.x, false || global4.c, true, global4.c), firstLeadingBit(countOneBits(global0.e.b)), !global0.e.a.x, var_0.d, ~func_2().e));
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -4850i;
    let var_1 = global0.e;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(27510u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -293f)), _wgslsmith_mult_vec2_i32(vec2<i32>(firstLeadingBit(223i), global4.b.x >> (33747u % 32u)), abs(abs(vec2<i32>(-1i, 0i)))), min(_wgslsmith_add_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(global0.d.x, global4.d.x, 0u), vec3<u32>(var_1.d.x, 47583u, 42875u), vec3<u32>(global0.d.x, 119660u, 58412u)), firstTrailingBit(vec3<u32>(global4.d.x, 47756u, 1u))), vec3<u32>(_wgslsmith_sub_u32(global4.d.x, 1u), _wgslsmith_clamp_u32(global0.e.d.x, global0.d.x, 52855u), _wgslsmith_dot_vec3_u32(vec3<u32>(var_1.d.x, u_input.b, var_1.d.x), vec3<u32>(72441u, u_input.b, u_input.b)))))));
    var var_3 = func_2().a.xxz;
    var_2 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(global0.d.x, _wgslsmith_f_op_f32(trunc(-638f)), vec2<i32>(global4.e, -global0.a.x), vec3<u32>(global0.d.x, _wgslsmith_sub_u32(u_input.b, var_1.d.x), ~41927u)))), 698f));
    let x = u_input.a;
    s_output = StorageBuffer(i32(-1i) * -43731i, _wgslsmith_mod_u32(global0.d.x << (global4.d.x % 32u), _wgslsmith_clamp_u32(func_3(1f, Struct_2(global0.e)), ~31598u, var_1.d.x)));
}


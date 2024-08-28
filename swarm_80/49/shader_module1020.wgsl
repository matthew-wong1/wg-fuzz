struct Struct_1 {
    a: i32,
    b: vec2<bool>,
    c: vec2<i32>,
    d: vec3<u32>,
    e: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 32>;

var<private> global1: array<vec4<bool>, 30>;

var<private> global2: Struct_2 = Struct_2(Struct_1(5371i, vec2<bool>(true, false), vec2<i32>(-20543i, 79122i), vec3<u32>(21076u, 8254u, 25697u), vec3<f32>(505f, 810f, 2147f)), true);

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: bool, arg_1: Struct_1) -> bool {
    let var_0 = Struct_2(global2.a, !any(!select(vec3<bool>(true, arg_0, arg_1.b.x), vec3<bool>(arg_1.b.x, arg_1.b.x, false), true)));
    let var_1 = global2.a;
    global0 = array<vec2<i32>, 32>();
    global2 = var_0;
    global0 = array<vec2<i32>, 32>();
    return all(var_1.b) || arg_1.b.x;
}

fn func_2(arg_0: u32) -> u32 {
    let var_0 = vec2<bool>(func_3(false, global2.a), all(!vec3<bool>(true, func_3(global2.a.b.x, global2.a), true)));
    let var_1 = global2.a.e.x;
    var var_2 = !select(!select(!vec3<bool>(true, false, global2.b), select(vec3<bool>(false, false, false), vec3<bool>(true, global2.a.b.x, global2.a.b.x), var_0.x), global2.a.b.x), select(select(vec3<bool>(false, global2.a.b.x, false), vec3<bool>(var_0.x, global2.a.b.x, global2.b), !vec3<bool>(var_0.x, true, true)), vec3<bool>(select(true, false, false), 1323f < global2.a.e.x, true), vec3<bool>(var_0.x, 34618u != global2.a.d.x, var_0.x || true)), select(vec3<bool>(var_0.x || global2.a.b.x, var_0.x, var_0.x | var_0.x), vec3<bool>(var_0.x, global2.b, var_0.x), all(select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(false, var_0.x, global2.a.b.x)))));
    global0 = array<vec2<i32>, 32>();
    var var_3 = Struct_1(-1i, vec2<bool>(!var_0.x, global2.b), global0[_wgslsmith_index_u32(~(~global2.a.d.x), 32u)], vec3<u32>(0u, _wgslsmith_div_u32(1u, firstLeadingBit(14947u)), 1u), global2.a.e);
    return ~(_wgslsmith_clamp_u32(0u, 4294967295u, 303u) >> ((abs(u_input.c) << (countOneBits(global2.a.d.x) % 32u)) % 32u));
}

fn func_1() -> Struct_1 {
    let var_0 = global2.a;
    let var_1 = ~func_2(0u);
    let var_2 = (min(u_input.a.yzy, min(u_input.a.yyw, u_input.a.zyy | u_input.a.xzw)) ^ ~u_input.a.xzz) ^ u_input.a.xzx;
    global0 = array<vec2<i32>, 32>();
    global0 = array<vec2<i32>, 32>();
    return Struct_1(0i, var_0.b, -firstTrailingBit(vec2<i32>(-1i, _wgslsmith_sub_i32(global2.a.c.x, global2.a.c.x))), _wgslsmith_div_vec3_u32(countOneBits(vec3<u32>(~var_0.d.x, _wgslsmith_dot_vec2_u32(global2.a.d.yy, global2.a.d.xz), 1u)), _wgslsmith_sub_vec3_u32(~_wgslsmith_mult_vec3_u32(global2.a.d, global2.a.d), global2.a.d)), var_0.e);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_2, arg_3: vec3<u32>) -> StorageBuffer {
    global0 = array<vec2<i32>, 32>();
    let var_0 = _wgslsmith_f_op_vec2_f32(arg_1.e.yy * vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-591f))), global2.a.e.x));
    let var_1 = true;
    var var_2 = global2.a.b.x;
    global2 = Struct_2(Struct_1(_wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(u_input.a, _wgslsmith_mod_vec4_i32(vec4<i32>(arg_2.a.c.x, arg_0.a, -2147483647i, arg_2.a.c.x), vec4<i32>(arg_0.c.x, arg_1.a, arg_0.c.x, arg_2.a.c.x))), abs(abs(u_input.a))), select(vec2<bool>(all(vec2<bool>(arg_0.b.x, arg_2.b)), var_1 && true), func_1().b, !(!arg_2.a.b)), vec2<i32>(0i, _wgslsmith_dot_vec2_i32(arg_2.a.c, vec2<i32>(0i, u_input.a.x))) << (~(~arg_2.a.d.xz) % vec2<u32>(32u)), vec3<u32>(74278u, _wgslsmith_dot_vec2_u32(arg_3.zz, vec2<u32>(arg_0.d.x, 42842u)) << (1u % 32u), 1u), arg_2.a.e), global2.b);
    return StorageBuffer(-(~(~(-vec2<i32>(69230i, 0i)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~u_input.a.zwy >> (vec3<u32>(_wgslsmith_mult_u32(abs(~60950u), ~4294967295u), ~min(4294967295u | u_input.d, global2.a.d.x), u_input.c) % vec3<u32>(32u));
    let var_1 = true;
    let var_2 = ~12536i;
    var var_3 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global2.a.e.x, -1000f) * 208f)));
    global0 = array<vec2<i32>, 32>();
    global2 = Struct_2(global2.a, true);
    var var_4 = Struct_1(2147483647i, select(global2.a.b, select(!vec2<bool>(var_1, var_1), global2.a.b, true), select(select(select(vec2<bool>(false, false), global2.a.b, false), select(vec2<bool>(true, false), vec2<bool>(global2.a.b.x, true), global2.b), false), vec2<bool>(!global2.b, var_1), vec2<bool>(true, false))), u_input.a.yz, _wgslsmith_clamp_vec3_u32(~vec3<u32>(1u, ~u_input.c, global2.a.d.x), global2.a.d, global2.a.d), _wgslsmith_f_op_vec3_f32(-global2.a.e));
    let var_5 = ~global2.a.d.x;
    let x = u_input.a;
    s_output = func_4(func_1(), func_1(), Struct_2(func_1(), true), ~abs(vec3<u32>(u_input.c, ~var_4.d.x, firstTrailingBit(var_4.d.x))));
}


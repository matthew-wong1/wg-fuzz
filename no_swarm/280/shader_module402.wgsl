struct Struct_1 {
    a: f32,
    b: vec3<u32>,
    c: bool,
    d: f32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec2<f32>,
    c: bool,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec2<f32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(-706f, vec3<u32>(11178u, 1u, 1u), true, -595f);

var<private> global1: array<vec4<i32>, 15> = array<vec4<i32>, 15>(vec4<i32>(-37546i, -1i, -1i, 1i), vec4<i32>(-28308i, -11578i, 1i, 1i), vec4<i32>(-37624i, 32074i, 19460i, -23212i), vec4<i32>(i32(-2147483648), 17242i, -4725i, 2147483647i), vec4<i32>(-1i, 34257i, -26413i, -43940i), vec4<i32>(-91699i, 2147483647i, -42121i, 0i), vec4<i32>(3679i, i32(-2147483648), -102461i, -25972i), vec4<i32>(i32(-2147483648), 1i, -1i, i32(-2147483648)), vec4<i32>(-14908i, 1i, 1i, 0i), vec4<i32>(25984i, 10680i, 8193i, 0i), vec4<i32>(-4538i, i32(-2147483648), 2147483647i, -44138i), vec4<i32>(4095i, 0i, 37854i, -63336i), vec4<i32>(-82875i, 2101i, 2147483647i, 0i), vec4<i32>(1i, 0i, 4779i, 24071i), vec4<i32>(-55601i, 11987i, -1i, 2147483647i));

var<private> global2: vec4<bool> = vec4<bool>(true, true, true, false);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_2(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: Struct_1) -> i32 {
    global2 = !select(!(!vec4<bool>(true, arg_2.c, arg_2.c, arg_2.c)), select(!vec4<bool>(false, false, global0.c, arg_1.c), select(!vec4<bool>(false, false, arg_1.c, arg_1.c), !vec4<bool>(false, global2.x, false, true), select(vec4<bool>(false, global0.c, global0.c, arg_1.c), vec4<bool>(global0.c, arg_2.c, false, false), false)), !(!vec4<bool>(false, false, arg_2.c, arg_1.c))), vec4<bool>(global0.c, false, false, any(vec4<bool>(arg_2.c, true, false, arg_2.c))));
    let var_0 = firstTrailingBit(~_wgslsmith_add_vec2_i32(select(~vec2<i32>(-9864i, 14102i), select(vec2<i32>(u_input.b.x, -1i), u_input.c.yz, arg_2.c), true), u_input.b.xw));
    var var_1 = i32(-1i) * -max(~(-u_input.c.x), u_input.c.x);
    return _wgslsmith_sub_i32(-1i, u_input.b.x ^ var_0.x);
}

fn func_3(arg_0: vec3<i32>, arg_1: vec3<bool>, arg_2: bool, arg_3: u32) -> Struct_1 {
    global0 = Struct_1(global0.d, vec3<u32>(firstLeadingBit(global0.b.x), 0u, u_input.a.x), arg_2, 1f);
    global2 = !vec4<bool>(true, arg_2, all(vec4<bool>(true, true, global0.c, global0.c)), all(!vec2<bool>(false, global2.x)));
    var var_0 = u_input.b.x;
    let var_1 = select(abs(_wgslsmith_div_vec4_u32(vec4<u32>(global0.b.x, _wgslsmith_clamp_u32(0u, 24728u, global0.b.x), ~8543u, _wgslsmith_sub_u32(global0.b.x, 30085u)), vec4<u32>(_wgslsmith_mod_u32(global0.b.x, 36033u), u_input.a.x & global0.b.x, arg_3, ~u_input.a.x))), _wgslsmith_sub_vec4_u32(~(~abs(vec4<u32>(0u, 8773u, 72784u, u_input.a.x))), vec4<u32>(_wgslsmith_dot_vec2_u32(~u_input.a, _wgslsmith_div_vec2_u32(vec2<u32>(global0.b.x, 1u), vec2<u32>(u_input.a.x, 4294967295u))), ~arg_3 ^ max(global0.b.x, arg_3), 4294967295u, countOneBits(0u))), !global0.c & false);
    let var_2 = Struct_1(-1621f, ~(~_wgslsmith_clamp_vec3_u32(~vec3<u32>(35896u, var_1.x, global0.b.x), ~global0.b, ~global0.b)), any(vec2<bool>(true, true)), global0.d);
    return var_2;
}

fn func_1(arg_0: u32) -> i32 {
    global0 = Struct_1(-291f, global0.b, global0.c, _wgslsmith_f_op_f32(round(1686f)));
    var var_0 = func_3(_wgslsmith_clamp_vec3_i32(_wgslsmith_div_vec3_i32(_wgslsmith_mod_vec3_i32(min(u_input.c.ywz, u_input.b.ywx), select(vec3<i32>(2147483647i, -1i, u_input.b.x), u_input.b.wzx, false)), vec3<i32>(func_2(vec2<u32>(arg_0, 1u), Struct_1(-147f, global0.b, global0.c, global0.d), Struct_1(global0.d, vec3<u32>(43121u, arg_0, global0.b.x), global2.x, 840f)), countOneBits(-1i), u_input.b.x)), vec3<i32>(u_input.c.x, _wgslsmith_sub_i32(u_input.c.x, 1822i), u_input.b.x), -firstLeadingBit(-vec3<i32>(u_input.b.x, u_input.b.x, u_input.c.x))), global2.xyx, global0.c, 33147u);
    var var_1 = 1u;
    var var_2 = any(!select(!(!global2.yyz), vec3<bool>(var_0.c, !var_0.c, true), !(!vec3<bool>(false, global2.x, global2.x))));
    let var_3 = global0.b.x >> (69680u % 32u);
    return _wgslsmith_mult_i32(u_input.b.x, u_input.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec4<i32>, 15>();
    var var_0 = u_input.c.x;
    let var_1 = ~vec2<i32>(_wgslsmith_clamp_i32(_wgslsmith_add_i32(-31054i, ~u_input.b.x), func_1(_wgslsmith_clamp_u32(1u, u_input.a.x, global0.b.x)), -(u_input.c.x >> (global0.b.x % 32u))), _wgslsmith_add_i32(_wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(u_input.b.zz, vec2<i32>(91535i, -15788i)), u_input.b.x, u_input.b.x), _wgslsmith_add_i32(49970i, 3171i)));
    let var_2 = Struct_2(global0.b ^ global0.b, _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), global0.a), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1618f, 171f), vec2<f32>(-400f, -112f))))))))), !global2.x, select(!(!select(vec4<bool>(false, global2.x, true, global2.x), vec4<bool>(true, true, global2.x, true), global0.c)), vec4<bool>(global0.c, true, false, all(!vec3<bool>(true, true, global2.x))), vec4<bool>(!all(vec4<bool>(true, false, false, true)), true, false, all(global2.ww))));
    global2 = !var_2.d;
    global2 = !select(select(select(!vec4<bool>(false, false, global0.c, var_2.c), !var_2.d, !global0.c), vec4<bool>(global0.c && false, false, all(vec2<bool>(true, true)), true || global0.c), func_3(_wgslsmith_sub_vec3_i32(u_input.c.zxz, vec3<i32>(var_1.x, 2147483647i, -25609i)), !var_2.d.yxy, func_3(vec3<i32>(-1i, u_input.c.x, -2147483647i), global2.wwz, true, global0.b.x).c, 1u).c), var_2.d, any(var_2.d.ywx) || true);
    var var_3 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(~(~_wgslsmith_mod_u32(abs(var_3.a.x), reverseBits(var_3.a.x))), _wgslsmith_sub_u32(38370u, 9472u), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(134f, var_2.b.x))), u_input.b.wxy);
}


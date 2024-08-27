struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: u32,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec3<i32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec4<i32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: Struct_1 = Struct_1(49085u);

var<private> global2: vec2<f32>;

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_2() -> bool {
    let var_0 = true;
    let var_1 = ~(~99829u);
    var var_2 = _wgslsmith_clamp_vec3_i32(u_input.c, vec3<i32>(1i, u_input.d.x, (abs(-1i) ^ min(11797i, u_input.d.x)) << (reverseBits(u_input.b) % 32u)), ~firstLeadingBit(~(-vec3<i32>(u_input.c.x, 59185i, u_input.d.x))));
    let var_3 = Struct_2(i32(-1i) * -(~10706i), Struct_1(firstTrailingBit(var_1)), 40385u, Struct_1(_wgslsmith_add_u32(0u, 4294967295u)));
    let var_4 = Struct_2(~_wgslsmith_sub_i32(var_3.a, _wgslsmith_mod_i32(var_2.x, u_input.c.x >> (118468u % 32u))), Struct_1(~(~_wgslsmith_dot_vec4_u32(vec4<u32>(19788u, var_1, u_input.b, var_1), vec4<u32>(20182u, global1.a, u_input.b, 90904u)))), var_1, Struct_1(~4294967295u));
    return true;
}

fn func_3(arg_0: u32, arg_1: bool) -> Struct_1 {
    global2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global2.x, -1269f, true)) + _wgslsmith_f_op_f32(trunc(global2.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.x - -1625f))), global2.x));
    global0 = firstTrailingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, u_input.d.x, 7693i, 2147483647i), max(vec4<i32>(u_input.d.x, -29587i, u_input.a.x, u_input.c.x), vec4<i32>(-1i, u_input.c.x, u_input.c.x, u_input.d.x)))), -reverseBits(vec2<i32>(u_input.c.x, u_input.c.x)) >> (select(abs(vec2<u32>(global1.a, 1u)), vec2<u32>(global1.a, 37982u) << (vec2<u32>(arg_0, arg_0) % vec2<u32>(32u)), vec2<bool>(arg_1, false)) % vec2<u32>(32u))));
    global2 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(max(global2.x, _wgslsmith_f_op_f32(min(289f, global2.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.x + global2.x) * -787f))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(global2.x + 521f), _wgslsmith_f_op_f32(global2.x + -637f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(571f, 295f)))))));
    return Struct_1(~u_input.b);
}

fn func_1(arg_0: u32) -> i32 {
    global0 = 0i;
    var var_0 = func_3(countOneBits(1u), any(!vec2<bool>(func_2(), false)));
    global0 = -u_input.c.x;
    var var_1 = firstTrailingBit(~max(vec4<i32>(u_input.a.x, -12231i >> (0u % 32u), -11278i, u_input.d.x & u_input.a.x), vec4<i32>(u_input.d.x, u_input.a.x, u_input.c.x, u_input.d.x) & (vec4<i32>(u_input.c.x, 43285i, -21058i, -2147483647i) | vec4<i32>(u_input.d.x, -6408i, u_input.d.x, 41838i))));
    global1 = Struct_1(arg_0);
    return _wgslsmith_add_i32(var_1.x, u_input.d.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = reverseBits(vec4<i32>(firstLeadingBit(firstTrailingBit(-2147483647i)), func_1(0u), 50206i, -1i & ~_wgslsmith_add_i32(u_input.d.x, -1i)));
    let var_1 = -4308i;
    var var_2 = select(!select(vec2<bool>(true, false), vec2<bool>(true, -2147483647i == var_1), !select(vec2<bool>(false, false), vec2<bool>(false, false), true)), !(!vec2<bool>(true, func_2())), !vec2<bool>(false, all(vec3<bool>(false, false, true)) && false));
    var var_3 = -_wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(0i, var_0.x, -1i, var_1) & vec4<i32>(-1i, 15095i, var_1, var_0.x), -vec4<i32>(1i, var_0.x, var_0.x, -2147483647i), vec4<i32>(-1i, 2147483647i, u_input.d.x, 2147483647i) << (vec4<u32>(0u, u_input.b, 4294967295u, 0u) % vec4<u32>(32u))) << (~(~vec4<u32>(u_input.b, 4294967295u, global1.a, global1.a)) % vec4<u32>(32u)), -((vec4<i32>(2147483647i, u_input.a.x, 10540i, 0i) ^ vec4<i32>(-2147483647i, 2147483647i, -2147483647i, var_1)) | vec4<i32>(var_1, 0i, -18420i, var_1)));
    var var_4 = _wgslsmith_mod_vec2_u32(countOneBits(reverseBits(_wgslsmith_sub_vec2_u32(vec2<u32>(8067u, global1.a), vec2<u32>(12280u, 23289u)))), vec2<u32>(1u, ~(4294967295u << (global1.a % 32u)))) & max(select(vec2<u32>(~21829u, global1.a), ~(~vec2<u32>(u_input.b, 24958u)), vec2<bool>(var_2.x, var_2.x)), ~vec2<u32>(1u, ~1u));
    var var_5 = _wgslsmith_sub_vec4_i32(-vec4<i32>(var_1, 1i, ~(-7979i), 1383i) | -vec4<i32>(0i, ~u_input.a.x, i32(-1i) * -1i, var_1), select(_wgslsmith_div_vec4_i32(~(-vec4<i32>(-58453i, 1i, u_input.d.x, var_1)), vec4<i32>(select(67253i, -2147483647i, false), -38621i, ~var_1, -u_input.a.x)), _wgslsmith_div_vec4_i32(max(vec4<i32>(var_0.x, var_1, var_1, var_0.x), vec4<i32>(var_0.x, var_1, 2147483647i, var_1) << (vec4<u32>(u_input.b, global1.a, u_input.b, 1u) % vec4<u32>(32u))), _wgslsmith_sub_vec4_i32(min(vec4<i32>(var_0.x, 0i, u_input.a.x, u_input.c.x), vec4<i32>(15958i, 1i, var_0.x, 22068i)), -vec4<i32>(var_1, u_input.c.x, -8098i, 3424i))), var_1 < (_wgslsmith_mult_i32(var_1, -2147483647i) ^ _wgslsmith_clamp_i32(40467i, 11234i, 1956i))));
    let x = u_input.a;
    s_output = StorageBuffer(global1.a, -1000f, _wgslsmith_mod_vec4_i32(min(firstLeadingBit(_wgslsmith_mod_vec4_i32(vec4<i32>(var_5.x, var_0.x, 46742i, 2147483647i), vec4<i32>(1i, 677i, -2147483647i, var_0.x))), min(vec4<i32>(var_5.x, var_0.x, 70077i, var_5.x), ~vec4<i32>(var_1, 15281i, -25553i, -2147483647i))), -vec4<i32>(u_input.d.x, u_input.c.x, 0i, 2147483647i) << (vec4<u32>(var_4.x & global1.a, 1u, ~4294967295u, ~1u) % vec4<u32>(32u))), (_wgslsmith_div_vec2_i32(u_input.d.xz, var_0.zy ^ var_5.ww) & -u_input.a.yx) ^ _wgslsmith_mod_vec2_i32(vec2<i32>(u_input.d.x & var_0.x, func_1(0u)), var_0.yw << (vec2<u32>(45674u, global1.a) % vec2<u32>(32u))));
}


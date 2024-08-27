struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<bool>,
    d: vec3<i32>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec3<bool>,
    c: vec4<f32>,
    d: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: vec4<i32>,
    c: vec3<u32>,
    d: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<u32>,
    c: vec4<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 16> = array<Struct_1, 16>(Struct_1(vec3<bool>(true, true, false)), Struct_1(vec3<bool>(false, true, true)), Struct_1(vec3<bool>(false, false, true)), Struct_1(vec3<bool>(false, false, true)), Struct_1(vec3<bool>(true, false, false)), Struct_1(vec3<bool>(false, false, false)), Struct_1(vec3<bool>(true, true, true)), Struct_1(vec3<bool>(false, true, false)), Struct_1(vec3<bool>(false, true, true)), Struct_1(vec3<bool>(false, false, true)), Struct_1(vec3<bool>(false, false, false)), Struct_1(vec3<bool>(true, false, true)), Struct_1(vec3<bool>(false, false, true)), Struct_1(vec3<bool>(false, true, true)), Struct_1(vec3<bool>(true, true, true)), Struct_1(vec3<bool>(false, false, false)));

var<private> global1: array<vec4<u32>, 4> = array<vec4<u32>, 4>(vec4<u32>(4294967295u, 46668u, 12996u, 42238u), vec4<u32>(1u, 17145u, 1u, 30461u), vec4<u32>(1u, 34815u, 4294967295u, 38404u), vec4<u32>(8200u, 63559u, 1u, 4294967295u));

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_1(arg_0: Struct_4, arg_1: Struct_2, arg_2: Struct_1) -> bool {
    global0 = array<Struct_1, 16>();
    return false;
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_4, arg_2: i32) -> u32 {
    var var_0 = global0[_wgslsmith_index_u32(u_input.a, 16u)];
    var var_1 = global0[_wgslsmith_index_u32(16212u, 16u)];
    var var_2 = vec4<bool>(true, false == all(arg_1.a.a.zz), false, false);
    let var_3 = 5380u;
    var var_4 = !(!vec4<bool>(any(select(vec2<bool>(false, false), vec2<bool>(true, var_2.x), vec2<bool>(false, false))), any(!var_2.wzy), var_2.x, true));
    return ~25430u;
}

fn func_2(arg_0: vec2<u32>, arg_1: Struct_1) -> Struct_4 {
    var var_0 = 43766u;
    var_0 = ~18598u;
    global1 = array<vec4<u32>, 4>();
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-691f, _wgslsmith_f_op_f32(max(223f, 348f)))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(190f, -712f)))))));
    let var_2 = _wgslsmith_add_vec3_u32(vec3<u32>(~func_3(u_input.b.xx, Struct_4(Struct_1(vec3<bool>(arg_1.a.x, arg_1.a.x, arg_1.a.x)), vec4<i32>(-29526i, 18973i, 51468i, 0i), vec3<u32>(77437u, arg_0.x, u_input.a), arg_1.a.x), -1i), ~1u, 0u), max(firstLeadingBit(~(~vec3<u32>(arg_0.x, 42201u, 61239u))), vec3<u32>(_wgslsmith_clamp_u32(~arg_0.x, abs(u_input.a), _wgslsmith_add_u32(u_input.a, u_input.a)), arg_0.x, ~95842u)));
    return Struct_4(Struct_1(!(!arg_1.a)), -vec4<i32>(countOneBits(u_input.b.x), firstTrailingBit(1i), -13901i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, u_input.b.x, -2147483647i, u_input.b.x), vec4<i32>(u_input.b.x, 1i, -1i, u_input.b.x))) >> (reverseBits(~(~vec4<u32>(var_2.x, arg_0.x, arg_0.x, var_2.x))) % vec4<u32>(32u)), var_2, u_input.b.x >= u_input.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec4<u32>, 4>();
    var var_0 = func_2(_wgslsmith_div_vec2_u32(~vec2<u32>(u_input.a, ~89079u), firstLeadingBit(vec2<u32>(~69994u, ~u_input.a))), Struct_1(vec3<bool>(true, true, func_1(Struct_4(global0[_wgslsmith_index_u32(u_input.a, 16u)], vec4<i32>(u_input.b.x, 2147483647i, -2147483647i, 2147483647i), vec3<u32>(1u, u_input.a, 1139u), true), Struct_2(global0[_wgslsmith_index_u32(22278u, 16u)], Struct_1(vec3<bool>(true, false, false)), vec4<bool>(true, true, true, true), u_input.b), global0[_wgslsmith_index_u32(1u, 16u)]))));
    var var_1 = Struct_4(Struct_1(func_2(_wgslsmith_div_vec2_u32(_wgslsmith_div_vec2_u32(var_0.c.xz, var_0.c.yy), select(vec2<u32>(0u, u_input.a), vec2<u32>(5289u, u_input.a), var_0.a.a.zz)), global0[_wgslsmith_index_u32(u_input.a, 16u)]).a.a), var_0.b, _wgslsmith_clamp_vec3_u32(var_0.c, ~var_0.c, abs(_wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, var_0.c.x, var_0.c.x), vec3<u32>(u_input.a, 0u, u_input.a)))), !(true && (_wgslsmith_mult_u32(0u, var_0.c.x) < 96478u)));
    let var_2 = !(!var_0.d);
    var_1 = func_2(_wgslsmith_mod_vec2_u32(~(~(var_1.c.zz & vec2<u32>(14616u, 1u))), ~(max(var_1.c.yy, var_1.c.zy) & abs(var_0.c.xy))), global0[_wgslsmith_index_u32(30482u, 16u)]);
    let var_3 = Struct_2(Struct_1(!select(vec3<bool>(true, false, var_0.d), vec3<bool>(var_1.d, true, var_0.d), var_1.a.a)), func_2(vec2<u32>(1u, _wgslsmith_mult_u32(var_1.c.x, _wgslsmith_mod_u32(1u, var_1.c.x))), var_0.a).a, vec4<bool>(true, _wgslsmith_sub_u32(4294967295u, 1u) >= var_0.c.x, any(var_1.a.a.zx), true || (all(vec4<bool>(var_0.a.a.x, true, var_2, true)) != (var_2 & var_0.d))), select((-vec3<i32>(1i, 1i, -10730i) << (firstTrailingBit(vec3<u32>(var_0.c.x, 58874u, 25250u)) % vec3<u32>(32u))) ^ _wgslsmith_add_vec3_i32(vec3<i32>(-2147483647i, 2147483647i, var_1.b.x) << (vec3<u32>(var_1.c.x, var_0.c.x, 54396u) % vec3<u32>(32u)), u_input.b), firstTrailingBit(_wgslsmith_sub_vec3_i32(vec3<i32>(var_0.b.x, -14693i, -36308i), vec3<i32>(var_0.b.x, u_input.b.x, var_1.b.x)) ^ vec3<i32>(-1i, var_0.b.x, 1i)), vec3<bool>(false || func_2(var_1.c.zx, var_0.a).d, false, true)));
    let var_4 = i32(-1i) * -5724i;
    var_1 = Struct_4(func_2(~var_1.c.yy & (_wgslsmith_mult_vec2_u32(vec2<u32>(9070u, var_1.c.x), var_1.c.xy) | min(var_1.c.zz, vec2<u32>(52822u, 68362u))), global0[_wgslsmith_index_u32(_wgslsmith_div_u32(var_0.c.x, _wgslsmith_mult_u32(16755u, _wgslsmith_clamp_u32(4294967295u, var_0.c.x, 1u))), 16u)]).a, vec4<i32>(select(i32(-1i) * -21409i, var_0.b.x, true) >> (1u % 32u), func_2(var_0.c.zz, Struct_1(func_2(vec2<u32>(var_0.c.x, var_1.c.x), Struct_1(vec3<bool>(true, false, true))).a.a)).b.x, ~var_1.b.x, var_4), var_0.c, true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-vec3<f32>(363f, 1f, -523f)), var_0.c, ~_wgslsmith_add_vec4_u32(firstTrailingBit(vec4<u32>(u_input.a, 79326u, var_0.c.x, var_0.c.x)), global1[_wgslsmith_index_u32((u_input.a & var_1.c.x) ^ (var_1.c.x & var_0.c.x), 4u)]), -231f);
}


struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: u32,
    b: vec4<bool>,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: vec4<i32>,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: bool;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: f32, arg_1: bool, arg_2: vec4<i32>, arg_3: vec2<f32>) -> u32 {
    global0 = ~(~vec2<u32>(max(firstLeadingBit(global0.x), 1u), ~abs(28655u)));
    var var_0 = _wgslsmith_f_op_f32(sign(arg_0));
    let var_1 = Struct_4(Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(arg_0, 610f))))), _wgslsmith_add_vec4_i32(min(min(-arg_2, vec4<i32>(-333i, 2902i, -2147483647i, u_input.b)), countOneBits(vec4<i32>(11448i, -37223i, u_input.c, 1i))), _wgslsmith_sub_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(59761i, u_input.b, -1i, arg_2.x), -vec4<i32>(arg_2.x, u_input.c, arg_2.x, -1i)), arg_2)), ~_wgslsmith_clamp_vec3_u32(vec3<u32>(~71846u, ~19239u, 0u), abs(vec3<u32>(global0.x, global0.x, 4294967295u)), _wgslsmith_mod_vec3_u32(select(vec3<u32>(global0.x, global0.x, global0.x), vec3<u32>(global0.x, 18230u, 0u), vec3<bool>(arg_1, arg_1, arg_1)), reverseBits(vec3<u32>(global0.x, 21011u, 100671u)))));
    var var_2 = var_1.a;
    var_2 = Struct_1(_wgslsmith_f_op_f32(-arg_3.x));
    return 74164u;
}

fn func_2(arg_0: bool, arg_1: vec3<u32>, arg_2: vec3<i32>) -> i32 {
    global1 = u_input.b != _wgslsmith_div_i32(u_input.b, _wgslsmith_dot_vec2_i32(vec2<i32>(-1i) * -vec2<i32>(-2147483647i, 0i), _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a.x, u_input.a.x), arg_2.zx) & _wgslsmith_mult_vec2_i32(arg_2.xz, u_input.a)));
    let var_0 = func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1433f * -153f) - _wgslsmith_f_op_f32(-570f * -1315f))), false, ~(vec4<i32>(~arg_2.x, 1i, -12098i, u_input.b) >> ((_wgslsmith_mod_vec4_u32(vec4<u32>(0u, 0u, arg_1.x, 1u), vec4<u32>(10800u, 4294967295u, 14854u, 1u)) >> (~vec4<u32>(1u, arg_1.x, 69879u, arg_1.x) % vec4<u32>(32u))) % vec4<u32>(32u))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(2085f - 1000f), -1316f)) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(362f, 1000f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-221f, -1107f)))) * vec2<f32>(_wgslsmith_f_op_f32(1235f + 1000f), 230f))));
    global1 = all(vec3<bool>(arg_0, false, any(vec3<bool>(any(vec3<bool>(false, true, arg_0)), true, arg_0 | arg_0))));
    global1 = all(!(!(!select(vec4<bool>(true, arg_0, true, true), vec4<bool>(true, false, false, arg_0), true))));
    var var_1 = any(select(select(!select(vec3<bool>(true, true, false), vec3<bool>(false, false, arg_0), vec3<bool>(false, false, arg_0)), select(!vec3<bool>(false, true, arg_0), vec3<bool>(true, arg_0, true), true), arg_0), vec3<bool>(all(!vec4<bool>(true, arg_0, true, false)), false, true), select(!vec3<bool>(arg_0, arg_0, arg_0), !(!vec3<bool>(true, arg_0, arg_0)), all(vec2<bool>(false, arg_0)))));
    return _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(arg_2.xz, -_wgslsmith_clamp_vec2_i32(-arg_2.zz, -vec2<i32>(-14616i, 13012i), ~u_input.a)), vec2<i32>(~u_input.b, arg_2.x));
}

fn func_4(arg_0: i32, arg_1: i32) -> vec2<u32> {
    global0 = (_wgslsmith_sub_vec2_u32(~select(vec2<u32>(1u, global0.x), vec2<u32>(global0.x, 0u), vec2<bool>(true, false)), ~abs(vec2<u32>(116348u, 29245u))) | vec2<u32>(57767u, countOneBits(17797u) ^ (11329u | global0.x))) & ~vec2<u32>(~(global0.x >> (global0.x % 32u)), 541u);
    let var_0 = Struct_4(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(683f))))), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.a.x, -1i, i32(-1i) * -arg_0, 10941i), ~vec4<i32>(arg_1, 1i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, arg_0, u_input.b, arg_0), vec4<i32>(2147483647i, 0i, arg_1, u_input.b)), ~arg_0)), ~min(_wgslsmith_sub_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(global0.x, 4294967295u, 15832u), vec3<u32>(84366u, global0.x, global0.x)), firstTrailingBit(vec3<u32>(global0.x, 1u, 1u))), vec3<u32>(68552u, global0.x, ~global0.x)));
    global1 = true;
    global1 = !any(vec2<bool>(false, false));
    let var_1 = vec2<i32>(arg_1, arg_0);
    return _wgslsmith_add_vec2_u32(_wgslsmith_mult_vec2_u32(var_0.c.zy, var_0.c.xx), ~(select(vec2<u32>(global0.x, 129296u), _wgslsmith_sub_vec2_u32(var_0.c.yy, var_0.c.zz), any(vec2<bool>(false, false))) << (~(var_0.c.yy & vec2<u32>(global0.x, global0.x)) % vec2<u32>(32u))));
}

fn func_1() -> Struct_3 {
    global0 = _wgslsmith_clamp_vec2_u32(_wgslsmith_mod_vec2_u32(reverseBits(~vec2<u32>(4294967295u, global0.x)), abs(firstTrailingBit(vec2<u32>(0u, global0.x)))) | func_4(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, u_input.a.x), _wgslsmith_sub_vec2_i32(u_input.a, u_input.a)), func_2(true, vec3<u32>(global0.x, global0.x, global0.x) >> (vec3<u32>(global0.x, 39745u, 5251u) % vec3<u32>(32u)), firstTrailingBit(vec3<i32>(-41374i, u_input.b, u_input.a.x)))), ~min(vec2<u32>(~global0.x, global0.x), select(vec2<u32>(0u, global0.x), vec2<u32>(global0.x, global0.x), true)), vec2<u32>(~_wgslsmith_sub_u32(abs(global0.x), _wgslsmith_add_u32(34837u, global0.x)), ~global0.x));
    var var_0 = ~_wgslsmith_mult_vec4_i32(vec4<i32>(firstTrailingBit(~(-16725i)), -2147483647i | -u_input.a.x, _wgslsmith_sub_i32(i32(-1i) * -979i, select(1i, u_input.c, false)), ~u_input.a.x), vec4<i32>(_wgslsmith_add_i32(_wgslsmith_add_i32(-33988i, u_input.b), _wgslsmith_clamp_i32(u_input.b, -2075i, -1706i)), -(~u_input.c), ~max(u_input.c, u_input.c), firstTrailingBit(41971i)));
    var var_1 = var_0.x;
    let var_2 = _wgslsmith_f_op_f32(select(1209f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1046f - _wgslsmith_f_op_f32(ceil(-780f))))), _wgslsmith_sub_i32(u_input.b, 32260i) < (_wgslsmith_mult_i32(countOneBits(var_0.x), var_0.x) | min(-9082i, 1i))));
    var var_3 = Struct_3(1u, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2 * 2824f))));
    return Struct_3(_wgslsmith_mult_u32(global0.x, 0u), Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-468f + -534f))), _wgslsmith_f_op_f32(-var_2), all(vec3<bool>(true, true, true))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var var_1 = 1944f;
    global0 = vec2<u32>(1107u, ~firstTrailingBit(func_1().a));
    var var_2 = _wgslsmith_div_f32(_wgslsmith_div_f32(576f, _wgslsmith_f_op_f32(floor(-1410f))), var_0.b.a);
    var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -340f) - _wgslsmith_f_op_f32(f32(-1f) * -1738f))) * var_0.b.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(var_0.b.a + -188f), var_0.b.a)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.b.a, _wgslsmith_f_op_f32(step(var_0.b.a, var_0.b.a))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b.a, -1000f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(833f, var_0.b.a))))));
}


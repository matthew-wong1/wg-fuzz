struct Struct_1 {
    a: f32,
    b: vec4<i32>,
    c: vec2<f32>,
    d: vec3<u32>,
    e: vec4<u32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: i32,
    d: vec2<bool>,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<f32>,
    c: Struct_2,
    d: bool,
    e: f32,
}

struct Struct_4 {
    a: vec2<i32>,
    b: vec3<i32>,
    c: Struct_3,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: u32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec3<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(540f, vec4<i32>(i32(-2147483648), -11245i, -32876i, 8414i), vec2<f32>(601f, -120f), vec3<u32>(1u, 1u, 0u), vec4<u32>(10998u, 1u, 8205u, 4294967295u));

var<private> global1: vec3<i32> = vec3<i32>(-14875i, 0i, -1i);

var<private> global2: vec2<i32>;

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: bool, arg_1: bool, arg_2: vec4<f32>, arg_3: u32) -> vec2<f32> {
    global1 = global0.b.xyx;
    global0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_2.x, _wgslsmith_f_op_f32(-arg_2.x))) - -534f) + global0.c.x), _wgslsmith_sub_vec4_i32(abs(select(vec4<i32>(-18522i, global2.x, global1.x, global1.x), _wgslsmith_div_vec4_i32(vec4<i32>(global1.x, global2.x, 22505i, global1.x), vec4<i32>(45388i, 28995i, 2147483647i, global1.x)), 20236u > arg_3)), min(vec4<i32>(global0.b.x, 1i, -14689i, global2.x) & ~vec4<i32>(1i, -30862i, global0.b.x, global1.x), _wgslsmith_sub_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(1686i, global1.x, 1i, global2.x), global0.b, global0.b), global0.b & global0.b))), _wgslsmith_f_op_vec2_f32(global0.c + _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(min(arg_2.yw, global0.c)))), global0.c))), u_input.d.wzx, u_input.d);
    let var_0 = global1.zy;
    global2 = -(~((vec2<i32>(-1i, global2.x) | (global0.b.zz << (vec2<u32>(u_input.c, u_input.b) % vec2<u32>(32u)))) & vec2<i32>(var_0.x, 1i)));
    var var_1 = Struct_3(Struct_1(_wgslsmith_f_op_f32(sign(global0.c.x)), ~global0.b, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1101f, -185f)))), ~vec3<u32>(_wgslsmith_div_u32(11429u, arg_3), select(0u, 12399u, false), abs(arg_3)), ~(vec4<u32>(u_input.b, arg_3, 1u, 4294967295u) & u_input.d) >> (abs(~u_input.d) % vec4<u32>(32u))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(select(global0.c.x, 1299f, arg_1)), 424f, _wgslsmith_f_op_f32(1394f * 717f))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(arg_2.zyy, arg_2.zyx))), Struct_2(firstLeadingBit((u_input.c ^ global0.e.x) | 4294967295u), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -904f) * _wgslsmith_f_op_f32(exp2(arg_2.x))), global0.b, _wgslsmith_f_op_vec2_f32(max(arg_2.ww, arg_2.zz)), ~global0.d, select(select(u_input.d, global0.e, arg_0), max(u_input.d, u_input.d), vec4<bool>(arg_0, false, arg_0, arg_0))), firstTrailingBit(-(global0.b.x | 1i)), !select(vec2<bool>(arg_0, false), select(vec2<bool>(false, arg_1), vec2<bool>(true, true), vec2<bool>(arg_0, true)), false), Struct_1(arg_2.x, vec4<i32>(2147483647i, -18551i, _wgslsmith_div_i32(1i, global0.b.x), var_0.x), arg_2.yz, u_input.d.zxw, vec4<u32>(42718u, 0u, u_input.c, 10581u) | _wgslsmith_mult_vec4_u32(u_input.d, vec4<u32>(113238u, arg_3, 1u, arg_3)))), !((-14000i | -var_0.x) < _wgslsmith_div_i32(_wgslsmith_sub_i32(-26367i, global2.x), 0i)), 1878f);
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_2.yx + _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(global0.c + vec2<f32>(1000f, 185f)), _wgslsmith_f_op_vec2_f32(arg_2.yy * var_1.c.e.c))))));
}

fn func_2() -> vec3<u32> {
    var var_0 = global0.b.x;
    global1 = firstLeadingBit(_wgslsmith_add_vec3_i32(vec3<i32>(-27413i, -1i, _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(-71313i, global2.x, 0i), vec3<i32>(0i, -2147483647i, -1i), vec3<i32>(2147483647i, 0i, global2.x)), global0.b.xxy | vec3<i32>(global2.x, -2882i, 6733i))), global0.b.yzy));
    var var_1 = Struct_4(-_wgslsmith_div_vec2_i32(min(~global0.b.yy, abs(global0.b.xw)), vec2<i32>(13031i, -global0.b.x)), _wgslsmith_sub_vec3_i32(_wgslsmith_sub_vec3_i32(~reverseBits(vec3<i32>(global0.b.x, 42348i, global1.x)), _wgslsmith_sub_vec3_i32(global0.b.zyx, vec3<i32>(8932i, -5048i, 0i))), select(~global0.b.yyx, global0.b.xwx, vec3<bool>(any(vec4<bool>(false, false, true, false)), true, true))), Struct_3(Struct_1(_wgslsmith_div_f32(-734f, 259f), global0.b, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3(true, true, vec4<f32>(782f, global0.c.x, 208f, 610f), 21878u)) * vec2<f32>(-875f, global0.c.x)), vec3<u32>(u_input.a.x, global0.e.x, ~u_input.d.x), _wgslsmith_mult_vec4_u32(global0.e, ~vec4<u32>(global0.d.x, 0u, 0u, 4294967295u))), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global0.a, _wgslsmith_f_op_f32(-global0.c.x), _wgslsmith_f_op_f32(-global0.a)))), Struct_2(~global0.d.x, Struct_1(_wgslsmith_f_op_f32(-global0.c.x), vec4<i32>(global0.b.x, -32710i, -10246i, -2147483647i), global0.c, ~vec3<u32>(u_input.d.x, 9750u, global0.e.x), u_input.d), reverseBits(~global1.x), vec2<bool>(true, any(vec4<bool>(true, false, true, false))), Struct_1(_wgslsmith_f_op_f32(-281f - 175f), select(global0.b, global0.b, true), _wgslsmith_f_op_vec2_f32(max(global0.c, vec2<f32>(356f, global0.c.x))), u_input.d.yzx, ~vec4<u32>(u_input.b, u_input.a.x, global0.e.x, 57173u))), _wgslsmith_sub_i32(countOneBits(-24594i), ~global0.b.x) != global0.b.x, 1067f));
    let var_2 = var_1.c.d;
    var_1 = Struct_4(firstLeadingBit(select(max(vec2<i32>(10168i, global2.x), global1.yy), global0.b.xz, select(var_1.c.c.d, vec2<bool>(false, false), var_1.c.c.d))) >> (~min(global0.d.yx | global0.e.xz, vec2<u32>(28148u, 4294967295u)) % vec2<u32>(32u)), global0.b.zxz, Struct_3(var_1.c.c.e, _wgslsmith_f_op_vec3_f32(var_1.c.b + _wgslsmith_f_op_vec3_f32(-var_1.c.b)), Struct_2(_wgslsmith_mod_u32(firstTrailingBit(65861u), ~0u), var_1.c.a, abs(_wgslsmith_clamp_i32(2147483647i, global1.x, 2147483647i)), !(!var_1.c.c.d), var_1.c.c.b), var_1.c.d, global0.a));
    return _wgslsmith_div_vec3_u32(vec3<u32>(_wgslsmith_sub_u32(max(0u, global0.e.x), 0u), u_input.c, 34569u) << (vec3<u32>(0u, countOneBits(~global0.e.x), firstTrailingBit(var_1.c.a.d.x)) % vec3<u32>(32u)), ~(~(~global0.e.zzx >> (global0.d % vec3<u32>(32u)))));
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_1) -> Struct_3 {
    let var_0 = !any(select(!select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false)), select(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true)), vec2<bool>(true, true), true), true));
    var var_1 = Struct_3(Struct_1(-1000f, ~vec4<i32>(min(-1i, -15795i), arg_0.x, -12208i | global1.x, _wgslsmith_dot_vec3_i32(vec3<i32>(global1.x, arg_1.b.x, 15302i), arg_1.b.xwz)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(global0.a, global0.a))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.c.x, global0.a))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(arg_1.c, vec2<f32>(arg_1.a, arg_1.a), vec2<bool>(false, false)))), all(select(vec2<bool>(true, var_0), vec2<bool>(false, var_0), var_0)))), vec3<u32>(61203u, min(global0.d.x, 41927u | arg_1.d.x), max(~1u, countOneBits(12869u))), select(u_input.d, vec4<u32>(global0.e.x, global0.e.x, 1u, 1u) >> (vec4<u32>(100181u, 0u, arg_1.d.x, 0u) % vec4<u32>(32u)), !(!var_0))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.c.x, arg_1.a, _wgslsmith_f_op_f32(arg_1.c.x - arg_1.c.x))))), Struct_2(_wgslsmith_mod_u32(firstTrailingBit(~4294967295u), global0.e.x), Struct_1(global0.a, global0.b, _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.c.x, global0.c.x)), arg_1.d, ~u_input.d), abs(arg_0.x), !select(vec2<bool>(false, var_0), select(vec2<bool>(var_0, var_0), vec2<bool>(var_0, true), false), vec2<bool>(var_0, true)), Struct_1(_wgslsmith_f_op_vec2_f32(func_3(!var_0, true, _wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_1.a, 1307f, -261f, -1000f), vec4<f32>(714f, global0.c.x, arg_1.a, -768f), vec4<bool>(var_0, var_0, var_0, var_0))), countOneBits(44034u))).x, -arg_1.b, _wgslsmith_f_op_vec2_f32(func_3(true, false, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-142f, -651f, 2229f, arg_1.c.x)), 1u)), abs(arg_1.d) ^ vec3<u32>(global0.d.x, arg_1.d.x, 80459u), u_input.d)), !var_0, -394f);
    var var_2 = Struct_3(arg_1, vec3<f32>(var_1.c.b.a, arg_1.a, _wgslsmith_f_op_f32(-global0.a)), Struct_2(arg_1.e.x & global0.d.x, Struct_1(_wgslsmith_f_op_f32(var_1.e - arg_1.a), -vec4<i32>(arg_1.b.x, global1.x, 17068i, global2.x), vec2<f32>(global0.c.x, 1f), ~vec3<u32>(arg_1.e.x, arg_1.e.x, u_input.c), vec4<u32>(668u, firstTrailingBit(global0.d.x), u_input.c, reverseBits(arg_1.d.x))), global2.x, var_1.c.d, var_1.a), true, _wgslsmith_f_op_f32(-1832f + var_1.a.a));
    var_1 = Struct_3(Struct_1(_wgslsmith_f_op_f32(abs(arg_1.a)), ~abs(vec4<i32>(var_1.c.c, global1.x, 1i, -28768i) >> (vec4<u32>(0u, 9163u, 1u, u_input.c) % vec4<u32>(32u))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(floor(arg_1.c)), arg_1.c)), var_1.c.b.d, var_1.a.e), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_2.b)), var_1.c, false, _wgslsmith_f_op_f32(min(-151f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_1.c.b.a), _wgslsmith_f_op_f32(trunc(390f)), var_1.d)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(677f - var_2.a.a))))));
    let var_3 = firstTrailingBit(_wgslsmith_div_vec4_u32(vec4<u32>(0u, 4294967295u, ~max(23918u, 36835u), 67885u), ~var_2.c.e.e));
    return Struct_3(var_2.c.e, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_1.b * vec3<f32>(arg_1.a, var_1.b.x, global0.a)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1054f, arg_1.a, -822f))))), Struct_2(var_1.c.e.d.x, arg_1, var_1.c.b.b.x, vec2<bool>(var_2.c.d.x, global2.x > ~2147483647i), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1528f)), var_2.c.b.b, vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(f32(-1f) * -1002f)), firstLeadingBit(_wgslsmith_add_vec3_u32(vec3<u32>(arg_1.d.x, var_2.a.e.x, arg_1.d.x), vec3<u32>(17595u, 41197u, 39864u))), u_input.d)), !all(select(!vec3<bool>(var_0, true, var_0), vec3<bool>(var_0, var_2.d, var_0), !vec3<bool>(var_1.c.d.x, var_1.c.d.x, false))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1737f + _wgslsmith_f_op_f32(-var_1.a.c.x)) - global0.a))));
}

fn func_1(arg_0: u32) -> Struct_2 {
    var var_0 = func_4(vec2<i32>(~(-global0.b.x), firstLeadingBit(~(~global1.x))), Struct_1(317f, _wgslsmith_div_vec4_i32(global0.b, global0.b), global0.c, func_2(), _wgslsmith_mod_vec4_u32(~_wgslsmith_clamp_vec4_u32(u_input.d, global0.e, global0.e), reverseBits(_wgslsmith_sub_vec4_u32(vec4<u32>(arg_0, 27607u, 17239u, global0.d.x), global0.e)))));
    let var_1 = vec4<bool>(func_4(-_wgslsmith_div_vec2_i32(firstTrailingBit(global0.b.zw), vec2<i32>(global1.x, global0.b.x)), func_4(select(-vec2<i32>(global1.x, var_0.c.b.b.x), _wgslsmith_sub_vec2_i32(global1.xz, vec2<i32>(0i, global0.b.x)), false), var_0.a).a).c.d.x, any(!vec3<bool>(var_0.c.d.x, true, var_0.c.d.x | true)), false, all(select(vec3<bool>(true, true, false), select(vec3<bool>(var_0.d, var_0.c.d.x, var_0.c.d.x), vec3<bool>(var_0.d, var_0.d, var_0.d), var_0.c.d.x), vec3<bool>(var_0.c.d.x, true, true))) && !(!all(vec3<bool>(var_0.d, var_0.d, true))));
    global2 = ~_wgslsmith_div_vec2_i32(_wgslsmith_div_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(-2147483647i, 16553i), firstTrailingBit(var_0.c.b.b.ww)), _wgslsmith_mod_vec2_i32(-global0.b.yx, -vec2<i32>(global2.x, global0.b.x))), global1.yy | vec2<i32>(global1.x, _wgslsmith_div_i32(-27479i, -1375i)));
    var var_2 = Struct_4(~vec2<i32>(_wgslsmith_mult_i32(global2.x, global1.x) >> (arg_0 % 32u), global2.x), _wgslsmith_mult_vec3_i32(vec3<i32>(-1i) * -var_0.c.b.b.www, _wgslsmith_add_vec3_i32(~var_0.c.b.b.ywz, -var_0.a.b.xzx)), func_4(vec2<i32>(0i, abs(global0.b.x)), var_0.a));
    var var_3 = vec3<u32>(~(~0u), max(_wgslsmith_mult_u32(_wgslsmith_div_u32(_wgslsmith_sub_u32(arg_0, var_2.c.a.e.x), _wgslsmith_sub_u32(58069u, var_0.a.e.x)), var_2.c.c.a), ~1u), global0.e.x >> (~_wgslsmith_add_u32(15514u ^ arg_0, 1u & var_2.c.a.d.x) % 32u));
    return Struct_2(var_2.c.a.d.x, func_4(vec2<i32>(~(-9568i), ~2147483647i) >> (~vec2<u32>(4294967295u, 4294967295u) % vec2<u32>(32u)), func_4(global1.yy >> (max(vec2<u32>(55568u, 0u), vec2<u32>(var_0.c.a, arg_0)) % vec2<u32>(32u)), var_0.c.e).c.e).a, _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(reverseBits(global0.b.x), global2.x, 3519i, -var_0.c.b.b.x), ~var_0.a.b), abs(var_2.c.c.e.b)), vec2<bool>(var_0.d, var_3.x != (_wgslsmith_mult_u32(4294967295u, global0.e.x) & ~var_2.c.c.e.e.x)), Struct_1(-1066f, vec4<i32>(_wgslsmith_clamp_i32(global0.b.x >> (var_0.c.a % 32u), 5215i, -2147483647i), var_2.c.a.b.x, -17528i, 25869i), vec2<f32>(global0.a, global0.a), countOneBits(~global0.d), vec4<u32>(0u, _wgslsmith_dot_vec4_u32(vec4<u32>(var_2.c.a.d.x, 27247u, var_3.x, 1u), _wgslsmith_sub_vec4_u32(global0.e, vec4<u32>(24743u, arg_0, 1u, 0u))), 1u, 8218u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(global0.e.x);
    global1 = vec3<i32>(_wgslsmith_add_i32(global1.x, global1.x), firstLeadingBit(12200i), -global1.x);
    global2 = -(~global0.b.xw);
    let var_1 = !(!vec4<bool>(var_0.d.x && (35203u < global0.e.x), any(vec3<bool>(var_0.d.x, false, var_0.d.x)), true, func_1(~var_0.a).d.x));
    let var_2 = _wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, abs(u_input.b) >> (u_input.b % 32u)) & _wgslsmith_mod_vec2_u32(u_input.d.yw, ~(~vec2<u32>(global0.e.x, var_0.b.e.x))), u_input.d.zw);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.a - global0.c.x), func_1(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.d.x, global0.e.x), vec3<u32>(34097u, 4294967295u, var_2.x)) & select(var_2.x, 46745u, false)).e.c.x), ~(~(~var_2.x | ~var_2.x)), vec3<u32>(1u, 19436u, var_0.e.d.x) ^ countOneBits(~(vec3<u32>(1u, var_0.b.e.x, var_0.a) << (vec3<u32>(1u, var_0.e.e.x, 28407u) % vec3<u32>(32u)))), 2147483647i);
}


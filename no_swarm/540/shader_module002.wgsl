struct Struct_1 {
    a: i32,
    b: f32,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: bool,
    c: vec4<i32>,
    d: u32,
}

struct Struct_4 {
    a: vec2<i32>,
    b: Struct_1,
    c: Struct_1,
    d: u32,
    e: Struct_1,
}

struct Struct_5 {
    a: f32,
    b: vec2<i32>,
    c: u32,
    d: vec3<i32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 10> = array<vec2<bool>, 10>(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true));

var<private> global1: array<Struct_1, 4>;

var<private> global2: Struct_3;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3(arg_0: i32) -> f32 {
    var var_0 = Struct_5(_wgslsmith_f_op_f32(-global2.a.x), _wgslsmith_div_vec2_i32(_wgslsmith_div_vec2_i32(_wgslsmith_mult_vec2_i32(global2.c.xy, global2.c.xz), -global2.c.ww), global2.c.zy), max(~(~(~global2.d)), global2.d), select(vec3<i32>(countOneBits(arg_0), 6809i, arg_0) << (vec3<u32>(1u, ~0u, u_input.c.x) % vec3<u32>(32u)), -global2.c.wzw, select(!vec3<bool>(global2.b, global2.b, global2.b), select(vec3<bool>(global2.b, global2.b, false), !vec3<bool>(true, global2.b, global2.b), !vec3<bool>(false, global2.b, false)), !(!vec3<bool>(false, global2.b, true)))), Struct_1(i32(-1i) * -arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global2.a.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global2.a.x), _wgslsmith_f_op_f32(step(global2.a.x, 292f)))))));
    var_0 = Struct_5(_wgslsmith_f_op_f32(f32(-1f) * -1557f), var_0.b, firstTrailingBit(4294967295u), max(vec3<i32>(global2.c.x, u_input.d, 0i), -_wgslsmith_sub_vec3_i32(~var_0.d, ~vec3<i32>(u_input.e, var_0.e.a, 2147483647i))), Struct_1(~countOneBits(~0i), _wgslsmith_f_op_f32(1601f * global2.a.x), global2.a.x));
    let var_1 = _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(var_0.e.c, var_0.a)))), var_0.a, (1i >> (1u % 32u)) <= global2.c.x)), var_0.a, -1000f)));
    var var_2 = Struct_5(406f, _wgslsmith_div_vec2_i32(min(-var_0.d.xy, -global2.c.zx) >> (u_input.c.yx % vec2<u32>(32u)), _wgslsmith_div_vec2_i32(select(global2.c.yw, var_0.b, global0[_wgslsmith_index_u32(u_input.b, 10u)]) ^ var_0.d.zy, var_0.b)), 22354u, _wgslsmith_mult_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(22741i, select(u_input.e, arg_0, false), _wgslsmith_mod_i32(global2.c.x, global2.c.x)), countOneBits(min(global2.c.yyy, vec3<i32>(-34656i, var_0.b.x, var_0.d.x))), global2.c.xyx), vec3<i32>(_wgslsmith_dot_vec2_i32(abs(vec2<i32>(58972i, arg_0)), ~var_0.b), u_input.a, _wgslsmith_dot_vec4_i32(~vec4<i32>(u_input.a, 2371i, -29100i, u_input.d), -global2.c))), var_0.e);
    let var_3 = vec3<f32>(_wgslsmith_f_op_f32(var_1.x - -1075f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(var_1.x, 2043f), _wgslsmith_f_op_f32(-2083f - var_0.a))))) + _wgslsmith_f_op_f32(695f * var_2.a)), var_2.e.c);
    return var_0.e.c;
}

fn func_2(arg_0: u32, arg_1: vec4<i32>, arg_2: bool, arg_3: Struct_4) -> i32 {
    let var_0 = _wgslsmith_f_op_f32(step(1680f, _wgslsmith_f_op_f32(-arg_3.c.b)));
    global1 = array<Struct_1, 4>();
    let var_1 = _wgslsmith_f_op_f32(func_3(-u_input.d));
    var var_2 = vec4<f32>(var_0, _wgslsmith_div_f32(arg_3.b.b, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(963f, global2.a.x, true))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1343f - _wgslsmith_f_op_f32(-arg_3.b.c))), _wgslsmith_f_op_f32(global2.a.x - _wgslsmith_div_f32(var_1, 864f)));
    var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(983f + var_1), -1611f, _wgslsmith_f_op_f32(f32(-1f) * -1705f), _wgslsmith_f_op_f32(f32(-1f) * -2032f))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1617f, 431f, -1394f, arg_3.e.c)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_3.b.c, 1954f, global2.a.x, var_1) + vec4<f32>(2117f, var_2.x, arg_3.b.b, 1284f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1104f, var_2.x, 1150f, 203f)))), vec4<bool>(!any(global0[_wgslsmith_index_u32(arg_3.d, 10u)]), true, all(vec2<bool>(false, arg_2)), true))));
    return -(~min(abs(1i), _wgslsmith_clamp_i32(global2.c.x, arg_1.x >> (global2.d % 32u), u_input.a)));
}

fn func_1(arg_0: u32) -> vec2<i32> {
    global2 = Struct_3(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-474f, _wgslsmith_f_op_f32(max(897f, 357f)))), _wgslsmith_div_f32(global2.a.x, _wgslsmith_f_op_f32(-global2.a.x))), !(!global2.b) && false, vec4<i32>(_wgslsmith_add_i32(-30116i, _wgslsmith_sub_i32(14366i, -1i)), -57933i, func_2(min(arg_0, 4294967295u), global2.c, true, Struct_4(vec2<i32>(-2147483647i, 5162i), Struct_1(global2.c.x, -864f, -344f), Struct_1(global2.c.x, global2.a.x, global2.a.x), global2.d, global1[_wgslsmith_index_u32(1u, 4u)])), countOneBits(_wgslsmith_mod_i32(global2.c.x, 42960i))) ^ global2.c, select(abs(u_input.c.x), 17621u, global2.b));
    let var_0 = Struct_5(global2.a.x, vec2<i32>(~(-u_input.a & -global2.c.x), min(global2.c.x, ~reverseBits(2147483647i))), ~54705u, global2.c.yzx, global1[_wgslsmith_index_u32(0u >> (_wgslsmith_clamp_u32(max(select(u_input.b, arg_0, global2.b), arg_0), ~(1u >> (u_input.c.x % 32u)), 1u) % 32u), 4u)]);
    let var_1 = global1[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_mod_u32(var_0.c, _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(16982u, 73072u, 4294967295u), vec3<u32>(1u, 0u, 28391u)), u_input.c.xxy) | global2.d), _wgslsmith_dot_vec3_u32(u_input.c.wxw, select(~vec3<u32>(var_0.c, u_input.c.x, 1u), vec3<u32>(1u, max(21563u, 4294967295u), ~7792u), vec3<bool>(true, !global2.b, global2.b)))), 4u)];
    global2 = Struct_3(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.c, _wgslsmith_f_op_f32(func_3(var_1.a)))), global2.a)), true, _wgslsmith_mod_vec4_i32(-vec4<i32>(-3440i, _wgslsmith_dot_vec2_i32(var_0.d.zz, vec2<i32>(-6692i, 2147483647i)), var_0.b.x, var_1.a & -14022i), max(vec4<i32>(u_input.e, global2.c.x, -2147483647i << (global2.d % 32u), u_input.d), reverseBits(_wgslsmith_div_vec4_i32(global2.c, global2.c)))), 1u);
    let var_2 = Struct_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global2.a.x, -1146f)) * _wgslsmith_f_op_f32(-var_0.a))))), ~global2.c.wz, u_input.c.x >> ((9270u | _wgslsmith_sub_u32(select(arg_0, 2297u, false), global2.d)) % 32u), var_0.d, Struct_1(func_2(_wgslsmith_add_u32(_wgslsmith_mod_u32(u_input.b, arg_0), u_input.b), _wgslsmith_mult_vec4_i32(countOneBits(global2.c), vec4<i32>(-15102i, -14764i, 33922i, -2147483647i)), 1i > _wgslsmith_mod_i32(u_input.e, u_input.d), Struct_4(-var_0.b, Struct_1(-2147483647i, global2.a.x, var_0.e.c), Struct_1(u_input.d, 1464f, global2.a.x), ~13460u, global1[_wgslsmith_index_u32(~1u, 4u)])), global2.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0.a)))));
    return vec2<i32>(_wgslsmith_sub_i32(-1i, max(_wgslsmith_dot_vec4_i32(global2.c, vec4<i32>(var_1.a, var_2.e.a, global2.c.x, -1i)), ~var_0.b.x) ^ var_2.e.a), -17957i);
}

fn func_4(arg_0: i32, arg_1: Struct_4, arg_2: vec3<u32>, arg_3: u32) -> vec2<i32> {
    var var_0 = Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global2.a) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-606f, -1912f))))), global2.b, firstTrailingBit(select(global2.c, ~vec4<i32>(-114038i, 1i, arg_0, arg_0), !vec4<bool>(false, false, global2.b, true))) | -_wgslsmith_div_vec4_i32(~vec4<i32>(-1i, u_input.d, 37204i, global2.c.x), global2.c), global2.d);
    let var_1 = arg_1;
    let var_2 = Struct_5(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(716f, arg_1.c.c))), firstTrailingBit(var_1.a), firstTrailingBit(~abs(114508u)), min(firstTrailingBit(-global2.c.zyz), var_0.c.yxw), Struct_1(1i, 1173f, _wgslsmith_f_op_f32(var_1.c.c * _wgslsmith_f_op_f32(step(-1287f, 869f)))));
    global0 = array<vec2<bool>, 10>();
    var_0 = Struct_3(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1296f, -396f))))), !(!(-32647i < _wgslsmith_div_i32(var_2.d.x, arg_1.b.a))), -var_0.c, 1u);
    return vec2<i32>(func_1(_wgslsmith_mult_u32(~arg_3, 37427u)).x, -firstTrailingBit((var_2.e.a << (27742u % 32u)) >> ((var_2.c ^ arg_3) % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(global2.a.x, _wgslsmith_f_op_f32(global2.a.x * -162f)), vec2<f32>(_wgslsmith_f_op_f32(ceil(-639f)), -1849f))));
    var var_1 = Struct_4(func_4(-_wgslsmith_add_i32(_wgslsmith_sub_i32(u_input.e, -2147483647i), -global2.c.x), Struct_4(func_1(_wgslsmith_div_u32(28010u, global2.d)), global1[_wgslsmith_index_u32(u_input.b, 4u)], Struct_1(u_input.d | global2.c.x, global2.a.x, var_0.x), ~(~0u), global1[_wgslsmith_index_u32(~global2.d, 4u)]), ~u_input.c.zyx, 16416u), Struct_1(u_input.e, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(429f - global2.a.x)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-477f)))), var_0.x), global1[_wgslsmith_index_u32(select(global2.d, _wgslsmith_dot_vec4_u32(u_input.c, ~vec4<u32>(4294967295u, 0u, u_input.c.x, u_input.c.x)) | ~_wgslsmith_div_u32(u_input.c.x, global2.d), global2.b), 4u)], firstTrailingBit(global2.d), global1[_wgslsmith_index_u32(countOneBits(0u) | firstLeadingBit(_wgslsmith_dot_vec2_u32(u_input.c.xx, u_input.c.xw)), 4u)]);
    var var_2 = select(select(!(!(!vec4<bool>(global2.b, global2.b, true, global2.b))), select(!select(vec4<bool>(true, global2.b, true, global2.b), vec4<bool>(true, global2.b, true, global2.b), global2.b), !select(vec4<bool>(global2.b, global2.b, global2.b, false), vec4<bool>(global2.b, global2.b, false, true), false), any(select(vec4<bool>(false, false, false, true), vec4<bool>(global2.b, false, true, true), false))), false), select(vec4<bool>(1i > _wgslsmith_dot_vec2_i32(global2.c.yy, var_1.a), true, false, any(vec2<bool>(true, global2.b))), !(!vec4<bool>(global2.b, global2.b, true, true)), !(51103u >= u_input.b)), vec4<bool>(true, !(!all(vec3<bool>(global2.b, global2.b, global2.b))), false, global2.b || false));
    var var_3 = Struct_3(global2.a, any(var_2.xzz), vec4<i32>(abs(~u_input.d), global2.c.x, _wgslsmith_sub_i32((global2.c.x ^ u_input.e) << (4294967295u % 32u), firstTrailingBit(abs(u_input.d))), ~func_4(~u_input.d, Struct_4(vec2<i32>(global2.c.x, var_1.c.a), var_1.c, global1[_wgslsmith_index_u32(u_input.c.x, 4u)], global2.d, Struct_1(2147483647i, global2.a.x, -724f)), vec3<u32>(4294967295u, 45474u, 1u), var_1.d).x), ~17775u);
    let var_4 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_3.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.a.x - 454f)), 660f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-466f, -1168f, var_0.x), vec3<f32>(1229f, global2.a.x, global2.a.x)))), false))));
    var var_5 = ~vec4<u32>(~var_1.d, _wgslsmith_mod_u32(u_input.c.x, _wgslsmith_div_u32(~u_input.c.x, _wgslsmith_sub_u32(27689u, var_1.d))), var_1.d, abs(_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(u_input.c.xyz, vec3<u32>(var_3.d, 59536u, 9817u)), ~u_input.c.xxx)));
    var var_6 = var_1.c.a;
    let var_7 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(sign(global2.a.x)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(var_0.x, 923f)), _wgslsmith_f_op_f32(var_4.x - -1087f))))), 633f) + vec3<f32>(728f, _wgslsmith_f_op_f32(var_3.a.x * -1176f), _wgslsmith_f_op_f32(-1000f + var_0.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_u32(_wgslsmith_mod_u32(global2.d, max(global2.d, ~var_5.x)), 4294967295u));
}


struct Struct_1 {
    a: vec4<bool>,
    b: bool,
    c: f32,
    d: vec2<i32>,
    e: i32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: i32,
    c: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<f32>,
}

struct Struct_4 {
    a: Struct_2,
    b: vec4<i32>,
    c: Struct_2,
    d: u32,
    e: Struct_3,
}

struct Struct_5 {
    a: f32,
    b: bool,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(1000f, 173f, 338f, 1000f);

var<private> global1: Struct_5;

var<private> global2: vec4<f32>;

var<private> global3: vec3<bool>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3(arg_0: bool, arg_1: f32, arg_2: Struct_2) -> vec2<i32> {
    var var_0 = -(~vec2<i32>(arg_2.b, u_input.b));
    let var_1 = select(global1.c.x, max(firstTrailingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(14146i, 1i, u_input.b, arg_2.b), vec4<i32>(18559i, arg_2.b, arg_2.b, var_0.x)) & ~366i), global1.c.x), arg_0);
    global0 = vec4<f32>(-307f, _wgslsmith_f_op_f32(1004f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global2.x))) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(-406f, global0.x, global3.x)))))), 1129f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global0.x), global2.x, !(true & global1.b))), _wgslsmith_f_op_f32(f32(-1f) * -681f))));
    global1 = Struct_5(1485f, all(select(global3.yx, vec2<bool>(true, arg_0), !global3.yx)), ~(~(~global1.c)));
    let var_2 = Struct_4(arg_2, _wgslsmith_div_vec4_i32(vec4<i32>(firstTrailingBit(-34250i), 1i, 12568i, ~u_input.b) << (~vec4<u32>(u_input.a.x, 1u, u_input.a.x, arg_2.a.x) % vec4<u32>(32u)), vec4<i32>(-1703i, -4144i, var_0.x, _wgslsmith_mod_i32(-52165i, arg_2.b) & countOneBits(1i))), Struct_2(select(reverseBits(u_input.a.yxy), u_input.a.yyy, true) | vec3<u32>(0u >> (u_input.a.x % 32u), u_input.a.x, max(u_input.a.x, 1u)), -2147483647i, _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_mult_u32(~arg_2.a.x, 1u), Struct_3(Struct_1(vec4<bool>(true, true, true, true), select(true, global1.b, any(global3.yz)), -1273f, vec2<i32>(_wgslsmith_clamp_i32(u_input.b, -1i, 17960i), -50055i), u_input.b), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_div_f32(global2.x, 824f), -1000f), _wgslsmith_f_op_vec2_f32(select(global2.xy, _wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.x, arg_1)), !vec2<bool>(true, global1.b)))))));
    return select(_wgslsmith_mult_vec2_i32(global1.c, ~global1.c), global1.c, !select(vec2<bool>(all(var_2.e.a.a), any(vec3<bool>(true, global1.b, true))), select(global3.zy, vec2<bool>(false, false), !var_2.e.a.a.zx), true));
}

fn func_4(arg_0: vec2<i32>, arg_1: i32, arg_2: vec3<i32>, arg_3: vec3<f32>) -> vec3<f32> {
    global3 = select(!(!vec3<bool>(any(vec4<bool>(global3.x, true, global1.b, global3.x)), 4294967295u <= u_input.a.x, u_input.a.x == u_input.a.x)), vec3<bool>(any(global3.zx) & all(select(vec4<bool>(global1.b, global3.x, false, true), vec4<bool>(true, false, global3.x, true), global1.b)), !global3.x, true), select(select(select(vec3<bool>(true, global3.x, global1.b), vec3<bool>(global3.x, global1.b, global3.x), !vec3<bool>(global1.b, false, global1.b)), select(vec3<bool>(global1.b, false, global3.x), vec3<bool>(true, true, false), select(vec3<bool>(global1.b, global3.x, global3.x), vec3<bool>(global1.b, true, false), true)), vec3<bool>(true, false, true)), vec3<bool>(any(!global3.xy), true, global1.b), false));
    var var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(ceil(-510f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(399f, 1287f, global3.x)) - _wgslsmith_div_f32(-277f, 1337f))), vec2<f32>(arg_3.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global1.a))))), vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x)))), _wgslsmith_f_op_f32(min(global2.x, global0.x))));
    global1 = Struct_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-374f))), select(global1.b, true, global1.b) != global3.x, -vec2<i32>(-_wgslsmith_dot_vec4_i32(vec4<i32>(arg_1, 0i, 2147483647i, -696i), vec4<i32>(-2147483647i, 2147483647i, arg_0.x, arg_0.x)), abs(-arg_1)));
    var var_1 = Struct_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-1863f + global1.a)))) + _wgslsmith_f_op_f32(round(var_0.x))), any(vec4<bool>(max(u_input.b, arg_0.x) > arg_0.x, !select(false, false, global1.b), global3.x, true)), global1.c);
    global3 = vec3<bool>(!(!global3.x), any(select(!global3.xz, vec2<bool>(var_1.b & global1.b, !global3.x), var_1.b)), var_1.b);
    return _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))), -647f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -251f), var_1.a))));
}

fn func_2() -> Struct_1 {
    var var_0 = u_input.a.yw;
    var_0 = u_input.a.yy;
    var var_1 = global1.b;
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(global2.wz, vec2<f32>(global1.a, _wgslsmith_f_op_f32(sign(global2.x)))));
    let var_3 = _wgslsmith_f_op_vec3_f32(func_4(_wgslsmith_sub_vec2_i32(func_3(!global3.x, _wgslsmith_f_op_f32(-var_2.x), Struct_2(reverseBits(u_input.a.wxz), global1.c.x, _wgslsmith_f_op_f32(min(493f, var_2.x)))), vec2<i32>(global1.c.x >> (1u % 32u), -3180i) << (_wgslsmith_clamp_vec2_u32(countOneBits(vec2<u32>(0u, 0u)), select(vec2<u32>(var_0.x, 1u), u_input.a.yw, global3.xy), u_input.a.yz) % vec2<u32>(32u))), u_input.b, firstTrailingBit(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.b, u_input.b, -13486i) >> (vec3<u32>(1u, 41902u, u_input.a.x) % vec3<u32>(32u)), ~vec3<i32>(42840i, -1i, 1i)) ^ min(_wgslsmith_mult_vec3_i32(vec3<i32>(57601i, global1.c.x, -1i), vec3<i32>(-57084i, global1.c.x, -31559i)), vec3<i32>(-43585i, 19187i, global1.c.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.x, 368f, var_2.x) - vec3<f32>(460f, -1690f, 1258f)), global2.wzy))))));
    return Struct_1(select(!vec4<bool>(global1.b, true, all(vec4<bool>(true, false, global3.x, false)), true), vec4<bool>(global3.x, global1.b, global1.b, all(!global3.yz)), !select(select(vec4<bool>(global3.x, true, true, true), vec4<bool>(false, true, global1.b, true), true), vec4<bool>(global1.b, false, global3.x, true), global3.x)), true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(621f)))) + 893f), global1.c, global1.c.x);
}

fn func_5(arg_0: vec4<i32>, arg_1: vec4<i32>, arg_2: u32, arg_3: Struct_1) -> Struct_5 {
    global2 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(-401f, -1102f, arg_3.c, global2.x) * vec4<f32>(-1073f, -1318f, -1734f, 402f))))))));
    let var_0 = arg_1.x;
    var var_1 = arg_2 >> (arg_2 % 32u);
    global1 = Struct_5(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(209f, global0.x)), -1464f)), any(!vec4<bool>(arg_3.a.x, true, true, false)), arg_0.yx);
    var var_2 = _wgslsmith_f_op_f32(abs(global1.a));
    return Struct_5(_wgslsmith_f_op_f32(-global0.x), arg_3.b, ~global1.c);
}

fn func_1(arg_0: vec4<i32>) -> Struct_3 {
    global1 = func_5(~(~vec4<i32>(~global1.c.x, ~global1.c.x, _wgslsmith_mod_i32(global1.c.x, 2250i), arg_0.x)), arg_0 >> (firstTrailingBit(vec4<u32>(~u_input.a.x, u_input.a.x, _wgslsmith_add_u32(42803u, u_input.a.x), ~u_input.a.x)) % vec4<u32>(32u)), u_input.a.x, func_2());
    var var_0 = Struct_5(global0.x, false, -vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, 2147483647i, 2147483647i, 28515i), vec4<i32>(global1.c.x, 1i, 40317i, global1.c.x)), 1i));
    global1 = Struct_5(func_5(max(abs(~vec4<i32>(var_0.c.x, -2147483647i, u_input.b, global1.c.x)), vec4<i32>(0i, -52881i, 18477i, var_0.c.x) ^ vec4<i32>(-57581i, u_input.b, 63022i, 0i)), abs(vec4<i32>(_wgslsmith_sub_i32(global1.c.x, -55989i), u_input.b, _wgslsmith_clamp_i32(1i, 1i, var_0.c.x), u_input.b & 2147483647i)), u_input.a.x, func_2()).a, all(vec4<bool>(true, any(select(global3.zy, global3.yx, global3.yx)), !(global3.x || var_0.b), false)), vec2<i32>(firstTrailingBit(u_input.b), _wgslsmith_dot_vec3_i32(arg_0.xyw, arg_0.zxw)));
    var var_1 = vec2<u32>(firstLeadingBit(u_input.a.x | 4294967295u), u_input.a.x);
    global2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1689f, 1625f, -1295f, -1010f))))) * _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1754f, var_0.a, global1.a, -690f) + vec4<f32>(global1.a, 1197f, var_0.a, global1.a)))))) * vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(func_2().c, -1091f), 426f, abs(u_input.a.x) == ~u_input.a.x)), var_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(func_5(arg_0, arg_0, 0u, Struct_1(vec4<bool>(false, global1.b, global1.b, global1.b), var_0.b, global1.a, vec2<i32>(30754i, global1.c.x), var_0.c.x)).a))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(func_2().c))))));
    return Struct_3(Struct_1(select(vec4<bool>(u_input.a.x == var_1.x, var_0.c.x <= global1.c.x, false, var_0.b), !select(vec4<bool>(var_0.b, global1.b, var_0.b, true), vec4<bool>(global1.b, true, false, global3.x), true), !func_2().a), true, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_0.a))), ~var_0.c | ~var_0.c, countOneBits(_wgslsmith_div_i32(abs(u_input.b), ~44484i))), vec2<f32>(_wgslsmith_f_op_f32(floor(-298f)), 523f));
}

fn func_6(arg_0: Struct_1, arg_1: Struct_3, arg_2: Struct_5, arg_3: vec2<u32>) -> i32 {
    global3 = !vec3<bool>(all(!(!arg_0.a.yx)), true, arg_0.b | all(func_2().a.wx));
    var var_0 = ~arg_3;
    var_0 = ~(u_input.a.yx ^ vec2<u32>(~u_input.a.x, 1u | firstTrailingBit(24513u)));
    let var_1 = Struct_2(_wgslsmith_clamp_vec3_u32(vec3<u32>(var_0.x, u_input.a.x, arg_3.x), abs(~vec3<u32>(4294967295u, arg_3.x, 27914u)) & ((u_input.a.zxy << (vec3<u32>(18050u, u_input.a.x, 0u) % vec3<u32>(32u))) >> (firstTrailingBit(vec3<u32>(1u, u_input.a.x, 12798u)) % vec3<u32>(32u))), vec3<u32>(1u, _wgslsmith_div_u32(firstTrailingBit(30179u), 4294967295u), 48987u)), -2147483647i, arg_1.b.x);
    let var_2 = 27412u;
    return _wgslsmith_mult_i32(~(~abs(-35564i)), ~u_input.b);
}

fn func_7(arg_0: Struct_2) -> Struct_2 {
    let var_0 = 29839i;
    var var_1 = ~4294967295u;
    global3 = vec3<bool>(!(!func_5(vec4<i32>(13953i, arg_0.b, 0i, global1.c.x), vec4<i32>(u_input.b, -18493i, 6368i, u_input.b), u_input.a.x, Struct_1(vec4<bool>(global1.b, global1.b, global3.x, global3.x), false, 733f, vec2<i32>(0i, u_input.b), -2147483647i)).b) != !func_1(_wgslsmith_mod_vec4_i32(vec4<i32>(global1.c.x, global1.c.x, 2147483647i, -1i), vec4<i32>(arg_0.b, u_input.b, 68001i, u_input.b))).a.b, select(arg_0.a.x == u_input.a.x, false, true), global3.x);
    var var_2 = func_1(~(~select(-vec4<i32>(global1.c.x, 2890i, global1.c.x, global1.c.x), max(vec4<i32>(global1.c.x, -7697i, var_0, u_input.b), vec4<i32>(-2147483647i, global1.c.x, arg_0.b, var_0)), select(vec4<bool>(global1.b, true, false, false), vec4<bool>(global3.x, global3.x, global3.x, false), vec4<bool>(global3.x, false, global1.b, global3.x)))));
    let var_3 = arg_0.b;
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1.c;
    let var_1 = Struct_4(func_7(Struct_2(_wgslsmith_mult_vec3_u32(countOneBits(u_input.a.xzw), _wgslsmith_sub_vec3_u32(u_input.a.zyw, vec3<u32>(4294967295u, u_input.a.x, 1u))), func_6(Struct_1(vec4<bool>(global3.x, true, true, false), global1.b, -2291f, vec2<i32>(10585i, u_input.b), var_0.x), func_1(vec4<i32>(2147483647i, -2147483647i, -1i, var_0.x)), Struct_5(338f, global1.b, vec2<i32>(2147483647i, var_0.x)), _wgslsmith_add_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x), u_input.a.xy)), -875f)), -vec4<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(-72879i, -15049i, var_0.x, 16594i), vec4<i32>(u_input.b, 11429i, u_input.b, global1.c.x)), ~vec4<i32>(u_input.b, u_input.b, 29839i, -1i)), _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, global1.c.x), vec2<i32>(u_input.b, global1.c.x)), 51837i), 31152i, -global1.c.x | min(global1.c.x, var_0.x)), func_7(Struct_2(~(~vec3<u32>(20137u, u_input.a.x, 7616u)), func_7(func_7(Struct_2(vec3<u32>(4294967295u, 21283u, 93097u), 0i, 2665f))).b, -505f)), 43543u, func_1(_wgslsmith_mod_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(global1.c.x, -1i, -2147483647i, var_0.x) ^ vec4<i32>(u_input.b, u_input.b, 26871i, -2147483647i), select(vec4<i32>(0i, u_input.b, 0i, -29110i), vec4<i32>(2147483647i, 1i, u_input.b, u_input.b), vec4<bool>(false, global3.x, global1.b, global3.x))), select(_wgslsmith_add_vec4_i32(vec4<i32>(2147483647i, 1517i, global1.c.x, global1.c.x), vec4<i32>(var_0.x, -24553i, -20876i, global1.c.x)), -vec4<i32>(2187i, u_input.b, -13930i, 37082i), any(vec3<bool>(global3.x, false, false))))));
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, -1802f, 649f, global1.a) - vec4<f32>(766f, global2.x, -692f, var_1.e.a.c)) * _wgslsmith_div_vec4_f32(vec4<f32>(-1067f, var_1.e.b.x, global0.x, var_1.c.c), vec4<f32>(279f, 1075f, -584f, global2.x))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.a, global2.x, global2.x, 980f)))));
    let x = u_input.a;
    s_output = StorageBuffer(global1.a, 52904u ^ (var_1.c.a.x | var_1.a.a.x));
}


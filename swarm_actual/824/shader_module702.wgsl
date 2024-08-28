struct Struct_1 {
    a: vec4<bool>,
    b: vec3<bool>,
    c: vec4<i32>,
    d: vec3<u32>,
    e: vec4<f32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: i32,
    d: bool,
    e: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: i32,
    c: vec2<u32>,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 26>;

var<private> global1: Struct_1;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: Struct_4, arg_3: Struct_3) -> u32 {
    let var_0 = Struct_1(vec4<bool>(false, all(arg_0.b), global1.a.x, false), vec3<bool>(select((global1.d.x >> (4294967295u % 32u)) != 1u, true, global1.b.x), global1.a.x, arg_3.d == any(!vec3<bool>(arg_0.b.x, true, arg_0.a.x))), abs(firstTrailingBit(arg_2.a.c)), _wgslsmith_mult_vec3_u32(_wgslsmith_clamp_vec3_u32(arg_2.a.d, firstLeadingBit(~arg_2.a.d), ~arg_3.b.c.d), vec3<u32>(~_wgslsmith_clamp_u32(28532u, arg_3.e.b.d.x, arg_2.a.d.x), 4294967295u, arg_3.b.b.d.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(step(-1013f, arg_0.e.x)), 152f, 1f, 1545f)) * _wgslsmith_f_op_vec4_f32(ceil(arg_1))));
    global0 = array<vec4<f32>, 26>();
    let var_1 = arg_2.a;
    let var_2 = vec3<bool>(var_1.b.x, !all(vec2<bool>(var_0.e.x > arg_1.x, any(arg_2.a.a.zy))), false);
    let var_3 = arg_2.a;
    return firstTrailingBit(var_0.d.x);
}

fn func_4(arg_0: Struct_2, arg_1: i32, arg_2: vec4<u32>) -> vec4<bool> {
    var var_0 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(-362f, global1.e.x, 1f) - _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(1632f, 1000f, global1.e.x) + arg_0.b.e.yyx), arg_0.b.e.xzy)))))));
    global1 = arg_0.c;
    let var_1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1927f), global1.e.x));
    global0 = array<vec4<f32>, 26>();
    let var_2 = Struct_3(arg_0.b.b.x, arg_0, -global1.c.x, global1.d.x > 4294967295u, arg_0);
    return select(select(!select(select(vec4<bool>(global1.a.x, false, true, true), vec4<bool>(global1.a.x, var_2.e.c.a.x, false, global1.a.x), vec4<bool>(false, var_2.e.c.a.x, false, var_2.e.c.a.x)), vec4<bool>(true, false, false, true), global1.d.x >= 4294967295u), vec4<bool>(arg_0.c.b.x, true, var_2.e.b.b.x, !global1.a.x), vec4<bool>(global1.b.x, all(arg_0.b.b.zy) && var_2.d, true, select(all(var_2.b.b.a.yyy), global1.d.x <= arg_0.b.d.x, global1.b.x))), !(!vec4<bool>(global1.a.x, !var_2.b.b.a.x, true, all(var_2.e.c.a.xzw))), ~0u <= (reverseBits(arg_0.c.d.x) & var_2.e.c.d.x));
}

fn func_2(arg_0: f32, arg_1: i32) -> vec4<bool> {
    global0 = array<vec4<f32>, 26>();
    global1 = Struct_1(vec4<bool>(all(!(!global1.a.xz)), _wgslsmith_mult_i32(-23126i, _wgslsmith_add_i32(-54154i, global1.c.x)) >= _wgslsmith_dot_vec4_i32(vec4<i32>(arg_1, global1.c.x, global1.c.x, -17075i), ~global1.c), true && global1.b.x, !select(global1.b.x, false != global1.a.x, true)), global1.a.zxw, -select(_wgslsmith_div_vec4_i32(-global1.c, global1.c), global1.c, vec4<bool>(global1.b.x, true, !global1.a.x, 41524u == global1.d.x)), vec3<u32>(~(_wgslsmith_mod_u32(u_input.b.x, u_input.b.x) ^ 4294967295u), u_input.c.x, ~global1.d.x), global0[_wgslsmith_index_u32(~0u, 26u)]);
    global0 = array<vec4<f32>, 26>();
    var var_0 = _wgslsmith_f_op_vec4_f32(-global0[_wgslsmith_index_u32(4294967295u, 26u)]);
    let var_1 = global1.a.x;
    return !func_4(Struct_2(vec2<f32>(509f, -122f), Struct_1(global1.a, select(global1.b, global1.b, global1.b.x), _wgslsmith_mod_vec4_i32(vec4<i32>(-1i, 21965i, 2147483647i, arg_1), vec4<i32>(arg_1, -1i, 0i, -31659i)), u_input.c.zwy, _wgslsmith_f_op_vec4_f32(-vec4<f32>(1870f, global1.e.x, 309f, global1.e.x))), Struct_1(global1.a, global1.a.wxy, _wgslsmith_div_vec4_i32(vec4<i32>(-1i, arg_1, 58707i, -34787i), global1.c), abs(vec3<u32>(23270u, u_input.c.x, global1.d.x)), global0[_wgslsmith_index_u32(global1.d.x, 26u)])), -2147483647i, vec4<u32>(global1.d.x, func_3(Struct_1(global1.a, global1.a.zxw, vec4<i32>(global1.c.x, 0i, -1i, -4338i), global1.d, vec4<f32>(arg_0, arg_0, global1.e.x, var_0.x)), vec4<f32>(global1.e.x, -100f, var_0.x, -293f), Struct_4(Struct_1(global1.a, vec3<bool>(true, true, false), global1.c, vec3<u32>(9732u, global1.d.x, 0u), global1.e), arg_1, vec2<u32>(u_input.c.x, u_input.b.x), vec4<bool>(global1.b.x, global1.b.x, global1.b.x, global1.a.x)), Struct_3(global1.a.x, Struct_2(global1.e.wz, Struct_1(vec4<bool>(global1.b.x, false, true, false), vec3<bool>(global1.b.x, global1.a.x, false), vec4<i32>(global1.c.x, global1.c.x, 48243i, 0i), global1.d, global1.e), Struct_1(global1.a, vec3<bool>(true, true, global1.a.x), vec4<i32>(arg_1, -1i, 2147483647i, arg_1), global1.d, global0[_wgslsmith_index_u32(87712u, 26u)])), global1.c.x, true, Struct_2(var_0.wy, Struct_1(global1.a, vec3<bool>(global1.a.x, global1.a.x, true), vec4<i32>(4271i, -2147483647i, 16028i, -1i), vec3<u32>(u_input.a.x, 0u, 33352u), global1.e), Struct_1(global1.a, global1.b, global1.c, vec3<u32>(22183u, global1.d.x, global1.d.x), vec4<f32>(606f, 500f, 707f, -162f))))), 49261u, global1.d.x));
}

fn func_1(arg_0: vec4<f32>, arg_1: f32, arg_2: vec3<bool>, arg_3: f32) -> vec4<u32> {
    global1 = Struct_1(select(select(func_2(_wgslsmith_div_f32(global1.e.x, arg_3), -42753i), vec4<bool>(global1.a.x, arg_2.x, false, !arg_2.x), vec4<bool>(arg_2.x, select(true, true, global1.b.x), global1.a.x, true)), vec4<bool>(all(func_4(Struct_2(global1.e.xz, Struct_1(global1.a, vec3<bool>(global1.b.x, true, arg_2.x), vec4<i32>(-1i, global1.c.x, global1.c.x, -1i), u_input.a, vec4<f32>(global1.e.x, 1135f, -266f, global1.e.x)), Struct_1(global1.a, vec3<bool>(true, global1.a.x, global1.b.x), vec4<i32>(global1.c.x, global1.c.x, global1.c.x, 1i), vec3<u32>(4294967295u, u_input.a.x, global1.d.x), vec4<f32>(834f, -653f, -1423f, arg_1))), global1.c.x, u_input.c).zzw), !any(vec2<bool>(false, arg_2.x)), (1u << (u_input.b.x % 32u)) == 8125u, global1.b.x), all(select(func_2(-917f, -74765i).yyw, !arg_2, vec3<bool>(arg_2.x, true, true)))), vec3<bool>(true, true && func_4(Struct_2(vec2<f32>(-550f, arg_1), Struct_1(global1.a, arg_2, global1.c, global1.d, global0[_wgslsmith_index_u32(4294967295u, 26u)]), Struct_1(vec4<bool>(arg_2.x, arg_2.x, global1.b.x, global1.b.x), arg_2, global1.c, u_input.b.xzy, vec4<f32>(141f, arg_1, -1081f, global1.e.x))), i32(-1i) * -2147483647i, firstTrailingBit(u_input.b)).x, -186f >= arg_3), _wgslsmith_add_vec4_i32(_wgslsmith_sub_vec4_i32(global1.c, ~firstTrailingBit(global1.c)), abs(select(global1.c, global1.c, !vec4<bool>(true, global1.b.x, false, arg_2.x)))), u_input.c.yyw, _wgslsmith_div_vec4_f32(global1.e, vec4<f32>(_wgslsmith_f_op_f32(trunc(arg_1)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1541f + 1000f)), _wgslsmith_f_op_f32(1000f - -1342f), global1.e.x)));
    global1 = Struct_1(global1.a, global1.b, _wgslsmith_mod_vec4_i32(select(_wgslsmith_mult_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(global1.c.x, -2976i, global1.c.x, -64278i), global1.c), vec4<i32>(global1.c.x, -2147483647i, 0i, 1i)), -vec4<i32>(global1.c.x, global1.c.x, 16843i, -50472i), !global1.b.x || true), vec4<i32>(abs(_wgslsmith_add_i32(global1.c.x, global1.c.x)), -_wgslsmith_mult_i32(global1.c.x, 55260i), global1.c.x, ~global1.c.x)), vec3<u32>(u_input.a.x, ~48639u, func_3(Struct_1(func_2(1000f, -23650i), vec3<bool>(true, true, false), global1.c, select(global1.d, vec3<u32>(global1.d.x, u_input.b.x, 1u), global1.a.wxz), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, 226f, arg_1, arg_0.x))), _wgslsmith_f_op_vec4_f32(-global1.e), Struct_4(Struct_1(vec4<bool>(global1.b.x, true, global1.b.x, false), arg_2, global1.c, global1.d, vec4<f32>(arg_0.x, global1.e.x, arg_3, arg_3)), 0i, select(vec2<u32>(73726u, 4294967295u), vec2<u32>(global1.d.x, u_input.c.x), false), func_2(arg_1, 0i)), Struct_3(all(global1.a.zx), Struct_2(global1.e.wx, Struct_1(vec4<bool>(true, arg_2.x, arg_2.x, false), global1.a.yyy, vec4<i32>(5986i, 17988i, -1i, 11737i), global1.d, vec4<f32>(arg_0.x, arg_3, arg_0.x, arg_0.x)), Struct_1(global1.a, vec3<bool>(false, false, false), vec4<i32>(global1.c.x, global1.c.x, global1.c.x, global1.c.x), vec3<u32>(global1.d.x, u_input.a.x, 38718u), global1.e)), 1i, !global1.b.x, Struct_2(arg_0.ww, Struct_1(vec4<bool>(false, true, arg_2.x, false), global1.b, global1.c, u_input.c.yxz, global0[_wgslsmith_index_u32(global1.d.x, 26u)]), Struct_1(vec4<bool>(arg_2.x, global1.a.x, false, false), arg_2, global1.c, vec3<u32>(global1.d.x, 0u, u_input.a.x), vec4<f32>(arg_3, 1252f, -1561f, 1060f)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(global1.e, vec4<f32>(arg_1, 1018f, _wgslsmith_f_op_f32(arg_1 * arg_0.x), _wgslsmith_f_op_f32(516f - global1.e.x)))) - global1.e));
    var var_0 = !(!(!arg_2.zx));
    global0 = array<vec4<f32>, 26>();
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_0.yw - vec2<f32>(global1.e.x, _wgslsmith_f_op_f32(global1.e.x * _wgslsmith_f_op_f32(f32(-1f) * -552f)))));
    return select(abs(select(firstTrailingBit(vec4<u32>(u_input.b.x, 19968u, global1.d.x, global1.d.x)), vec4<u32>(global1.d.x, global1.d.x, global1.d.x, u_input.c.x) & u_input.c, select(global1.a, vec4<bool>(var_0.x, global1.b.x, true, global1.b.x), true)) | reverseBits(vec4<u32>(global1.d.x, 1u, global1.d.x, 0u))), _wgslsmith_mult_vec4_u32(u_input.b, _wgslsmith_mod_vec4_u32(~vec4<u32>(global1.d.x, global1.d.x, global1.d.x, 4294967295u), ~_wgslsmith_div_vec4_u32(u_input.b, vec4<u32>(68970u, global1.d.x, 1u, u_input.b.x)))), arg_2.x);
}

fn func_5(arg_0: i32, arg_1: vec4<u32>, arg_2: bool, arg_3: Struct_1) -> Struct_2 {
    global1 = arg_3;
    let var_0 = global1.a;
    global1 = arg_3;
    var var_1 = Struct_4(Struct_1(vec4<bool>(!any(global1.a.xwz), var_0.x, all(arg_3.b), false), !select(!arg_3.b, arg_3.a.xwx, vec3<bool>(arg_2, false, var_0.x)), vec4<i32>(1i << (u_input.c.x % 32u), countOneBits(-2147483647i | arg_0), -24654i, _wgslsmith_clamp_i32(1i, -arg_3.c.x, -2147483647i)), firstTrailingBit(arg_1.xzw), global1.e), firstTrailingBit(global1.c.x << (~(~arg_1.x) % 32u)), vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_1.x, global1.d.x) | global1.d.xz, vec2<u32>(global1.d.x, arg_1.x)) & arg_3.d.x, arg_1.x), !arg_3.a);
    global0 = array<vec4<f32>, 26>();
    return Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(global1.e.x, 1317f), global1.e.yz))))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(770f, _wgslsmith_f_op_f32(trunc(160f))) * _wgslsmith_f_op_vec2_f32(var_1.a.e.xy + _wgslsmith_f_op_vec2_f32(vec2<f32>(global1.e.x, -110f) - vec2<f32>(1793f, 146f))))), Struct_1(select(select(vec4<bool>(global1.b.x, global1.b.x, false, true), vec4<bool>(var_0.x, false, false, false), true), select(global1.a, select(global1.a, var_1.d, var_1.a.a), arg_2), !(!var_1.d.x)), var_0.zyy, -(~vec4<i32>(-27644i, arg_3.c.x, -80258i, 26005i)), ~abs(select(vec3<u32>(0u, 14694u, 4294967295u), vec3<u32>(4294967295u, arg_1.x, 1u), var_0.x)), arg_3.e), Struct_1(vec4<bool>(!(!arg_3.a.x), true, !(!arg_2), arg_3.b.x || all(vec4<bool>(var_1.a.a.x, false, false, arg_3.b.x))), vec3<bool>(_wgslsmith_mod_i32(var_1.a.c.x, arg_3.c.x) < (var_1.a.c.x ^ var_1.a.c.x), !global1.a.x, true), vec4<i32>(arg_0, _wgslsmith_add_i32(select(-7584i, -2147483647i, arg_2), var_1.a.c.x), ~(-2147483647i), select(_wgslsmith_dot_vec2_i32(global1.c.zw, arg_3.c.wx), arg_3.c.x << (u_input.b.x % 32u), false)), vec3<u32>(224u, ~arg_1.x, 54658u) << ((_wgslsmith_mult_vec3_u32(arg_3.d, vec3<u32>(global1.d.x, global1.d.x, 4294967295u)) ^ select(arg_1.zxz, arg_1.zxw, var_1.d.x)) % vec3<u32>(32u)), vec4<f32>(arg_3.e.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(-730f, var_1.a.e.x)))), global1.e.x, arg_3.e.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1.e.zwz;
    var var_1 = global1.b;
    var var_2 = ~vec2<i32>(global1.c.x, max((1i >> (global1.d.x % 32u)) >> (u_input.b.x % 32u), -_wgslsmith_clamp_i32(global1.c.x, global1.c.x, -2147483647i)));
    let var_3 = Struct_3(!(abs(~1u) <= countOneBits(1109u | global1.d.x)), func_5(firstTrailingBit(-var_2.x), func_1(_wgslsmith_div_vec4_f32(vec4<f32>(global1.e.x, 603f, global1.e.x, -202f), vec4<f32>(global1.e.x, global1.e.x, global1.e.x, var_0.x)), _wgslsmith_f_op_f32(f32(-1f) * -684f), vec3<bool>(global1.b.x, false, global1.a.x), _wgslsmith_div_f32(var_0.x, -2125f)) ^ firstLeadingBit(min(u_input.c, vec4<u32>(1u, global1.d.x, 18108u, u_input.b.x))), all(global1.a.zyz), Struct_1(select(global1.a, vec4<bool>(global1.a.x, var_1.x, true, global1.a.x), !global1.a.x), select(!vec3<bool>(true, var_1.x, true), select(global1.a.xzx, global1.a.xwy, false), global1.b), -vec4<i32>(-7144i, var_2.x, 0i, 2147483647i) << (~u_input.c % vec4<u32>(32u)), ~_wgslsmith_add_vec3_u32(vec3<u32>(1u, 1u, 32850u), u_input.c.xwy), _wgslsmith_f_op_vec4_f32(abs(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(global1.d.x, u_input.c.x), vec2<u32>(33416u, u_input.c.x)), 26u)])))), select(global1.c.x, 2294i, true), any(select(var_1.yz, var_1.zx, vec2<bool>(var_1.x, true))), Struct_2(vec2<f32>(303f, 1000f), func_5(func_5(var_2.x, u_input.c, true, Struct_1(vec4<bool>(true, var_1.x, true, false), global1.a.zyz, global1.c, u_input.c.yxz, vec4<f32>(-468f, global1.e.x, global1.e.x, global1.e.x))).c.c.x << (u_input.c.x % 32u), vec4<u32>(_wgslsmith_div_u32(u_input.b.x, 47096u), ~global1.d.x, global1.d.x, ~global1.d.x), -var_2.x > _wgslsmith_div_i32(29466i, var_2.x), Struct_1(func_2(global1.e.x, var_2.x), vec3<bool>(false, false, true), ~global1.c, vec3<u32>(1u, 0u, 24686u), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(global1.d.x, 10624u), u_input.a.zx), 26u)])).b, func_5(global1.c.x, vec4<u32>(4294967295u, func_5(var_2.x, u_input.b, var_1.x, Struct_1(global1.a, global1.b, global1.c, u_input.b.xyw, vec4<f32>(722f, global1.e.x, var_0.x, 516f))).b.d.x, max(55227u, 65306u), 4237u), all(select(vec2<bool>(false, false), var_1.xy, false)), func_5(max(global1.c.x, -14013i), vec4<u32>(global1.d.x, 19915u, 0u, global1.d.x), global1.b.x, Struct_1(vec4<bool>(false, global1.b.x, true, global1.b.x), vec3<bool>(var_1.x, true, var_1.x), vec4<i32>(592i, var_2.x, 33363i, var_2.x), vec3<u32>(global1.d.x, global1.d.x, u_input.c.x), vec4<f32>(var_0.x, global1.e.x, global1.e.x, 2039f))).b).b));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(step(var_3.e.b.e, vec4<f32>(var_3.b.c.e.x, 375f, -657f, global1.e.x))))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(global0[_wgslsmith_index_u32(64676u, 26u)] - var_3.e.c.e)))), var_3.e.b.e), global1.c.x, countOneBits(var_3.e.b.d));
}


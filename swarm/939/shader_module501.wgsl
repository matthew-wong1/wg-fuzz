struct Struct_1 {
    a: f32,
    b: vec4<f32>,
}

struct Struct_2 {
    a: u32,
    b: f32,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: vec3<i32>,
    b: Struct_3,
    c: bool,
    d: Struct_2,
}

struct Struct_5 {
    a: vec4<u32>,
    b: Struct_4,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec3<i32>,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<vec4<i32>, 23>;

var<private> global2: array<vec2<bool>, 11>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: u32, arg_1: Struct_5, arg_2: i32) -> u32 {
    let var_0 = 12527u;
    var var_1 = Struct_4(vec3<i32>(_wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, arg_2, -11728i, 39156i), _wgslsmith_div_vec4_i32(global1[_wgslsmith_index_u32(86825u, 23u)], vec4<i32>(-42794i, arg_1.b.a.x, arg_2, -2147483647i))), 2147483647i, -1i), -arg_1.b.a.x, firstLeadingBit(arg_2)), arg_1.b.b, all(vec4<bool>(var_0 >= ~u_input.a.x, !arg_1.b.c, _wgslsmith_f_op_f32(global0.c.a + -1863f) >= -750f, false)), arg_1.b.b.a);
    var var_2 = true;
    var var_3 = 0i;
    let var_4 = global0.c;
    return u_input.a.x;
}

fn func_2(arg_0: i32, arg_1: f32, arg_2: vec4<i32>) -> i32 {
    var var_0 = Struct_3(Struct_2(select(_wgslsmith_mult_u32(func_3(54270u, Struct_5(u_input.a, Struct_4(vec3<i32>(arg_2.x, arg_0, arg_2.x), Struct_3(Struct_2(0u, -2511f, Struct_1(arg_1, global0.c.b))), true, Struct_2(u_input.a.x, -392f, Struct_1(-804f, global0.c.b)))), 1i), u_input.a.x >> (1u % 32u)), 4294967295u, false), _wgslsmith_f_op_f32(round(global0.b)), Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_1 * 547f), _wgslsmith_f_op_f32(max(-1062f, -1633f)), true)), vec4<f32>(global0.b, _wgslsmith_f_op_f32(floor(-337f)), _wgslsmith_f_op_f32(floor(arg_1)), arg_1))));
    global0 = Struct_2(firstTrailingBit(25707u), _wgslsmith_f_op_f32(-global0.b), global0.c);
    var var_1 = Struct_3(Struct_2(9983u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-906f)) + _wgslsmith_f_op_f32(trunc(-948f))) + -135f), global0.c));
    var var_2 = vec2<f32>(789f, 1350f);
    var var_3 = _wgslsmith_div_vec2_i32(select(arg_2.xy, _wgslsmith_clamp_vec2_i32(arg_2.ww, arg_2.xw, min(-vec2<i32>(2147483647i, arg_2.x), ~arg_2.yx)), select(vec2<bool>(true, global0.a >= 4294967295u), vec2<bool>(true, true), vec2<bool>(true, false))), arg_2.xx);
    return _wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(arg_2.zzx, _wgslsmith_div_vec3_i32(_wgslsmith_mod_vec3_i32(firstTrailingBit(vec3<i32>(9728i, arg_2.x, 2147483647i)), _wgslsmith_div_vec3_i32(vec3<i32>(26245i, arg_2.x, arg_2.x), vec3<i32>(27733i, var_3.x, var_3.x))), ~_wgslsmith_add_vec3_i32(arg_2.yzx, vec3<i32>(-9941i, var_3.x, 17772i)))), var_3.x, 0i);
}

fn func_4(arg_0: i32, arg_1: i32, arg_2: f32, arg_3: Struct_1) -> Struct_2 {
    global1 = array<vec4<i32>, 23>();
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-127f * _wgslsmith_f_op_f32(round(852f))) + -454f), global0.c.b.x, true)));
    var var_1 = !(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_3.a))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(exp2(arg_2)))))) > _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global0.b * 1698f))))));
    let var_2 = true;
    let var_3 = 1i;
    return Struct_2(u_input.a.x, _wgslsmith_f_op_f32(-1791f * arg_2), arg_3);
}

fn func_1() -> Struct_4 {
    global0 = func_4(reverseBits(-func_2(~(-2147483647i), _wgslsmith_f_op_f32(trunc(global0.c.a)), vec4<i32>(36785i, -13644i, 15224i, -51775i))), _wgslsmith_sub_i32(~max(min(45224i, -11175i), 1i), max(_wgslsmith_mod_i32(1i, -1i), func_2(2147483647i, -555f, vec4<i32>(-2147483647i, 1i, -38808i, -36352i)))), global0.c.a, Struct_1(_wgslsmith_f_op_f32(round(286f)), vec4<f32>(-1270f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(732f)))), global0.c.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1689f * global0.b) - -1231f))));
    global0 = func_4(firstTrailingBit(~_wgslsmith_sub_i32(i32(-1i) * -1i, _wgslsmith_mult_i32(1i, 2147483647i))), ~_wgslsmith_sub_i32(_wgslsmith_add_i32(func_2(0i, global0.b, vec4<i32>(-24520i, 0i, 2147483647i, -26639i)), 6632i), ~(~(-2147483647i))), 397f, Struct_1(566f, _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(-global0.c.b.x), _wgslsmith_f_op_f32(round(1699f)), _wgslsmith_f_op_f32(abs(242f)), _wgslsmith_f_op_f32(233f + global0.c.a))))));
    var var_0 = Struct_3(Struct_2(min(~4294967295u, 1u) | ~(~u_input.a.x), 678f, global0.c));
    var var_1 = Struct_3(func_4(i32(-1i) * -1i, _wgslsmith_clamp_i32(1i, reverseBits(-29531i << (global0.a % 32u)), ~(-1103i)), _wgslsmith_f_op_f32(f32(-1f) * -1773f), func_4(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, 1i), vec2<i32>(1i, 2147483647i)), ~max(-1i, -14532i), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(var_0.a.b, 937f))), func_4(-2147483647i >> (var_0.a.a % 32u), _wgslsmith_mult_i32(-9507i, 0i), _wgslsmith_f_op_f32(var_0.a.b + 823f), Struct_1(global0.c.b.x, var_0.a.c.b)).c).c));
    var var_2 = ~min(_wgslsmith_dot_vec3_i32(select(firstTrailingBit(vec3<i32>(-3478i, 2147483647i, 16487i)), ~vec3<i32>(2147483647i, 1i, 45573i), select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), true)), vec3<i32>(7406i, -2147483647i, -471i) | (vec3<i32>(34570i, 24677i, -57168i) >> (u_input.a.xzw % vec3<u32>(32u)))), -1i);
    return Struct_4(firstTrailingBit(_wgslsmith_mult_vec3_i32(vec3<i32>(1i, _wgslsmith_sub_i32(-54871i, 1i), ~(-1i)), _wgslsmith_mult_vec3_i32(max(vec3<i32>(54279i, 0i, 2147483647i), vec3<i32>(-2147483647i, -19696i, -9802i)), vec3<i32>(1i, 1i, 1i)))), Struct_3(Struct_2(5090u, 1000f, var_1.a.c)), all(select(vec4<bool>(true, true, true, any(vec3<bool>(false, true, false))), vec4<bool>(true, true, all(vec2<bool>(false, false)), false), any(select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, false), false)))), var_1.a);
}

fn func_5(arg_0: Struct_4, arg_1: u32, arg_2: Struct_1, arg_3: vec2<i32>) -> Struct_2 {
    var var_0 = vec3<i32>(arg_0.a.x, arg_3.x, arg_0.a.x);
    let var_1 = Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(749f)))), vec4<f32>(_wgslsmith_f_op_f32(global0.b * 963f), _wgslsmith_f_op_f32(select(arg_2.a, arg_0.d.b, any(vec2<bool>(true, arg_0.c)))), arg_0.b.a.c.b.x, arg_2.b.x));
    let var_2 = Struct_5(vec4<u32>(func_3(_wgslsmith_mod_u32(1u, countOneBits(global0.a)), Struct_5(firstTrailingBit(vec4<u32>(u_input.a.x, 25793u, 0u, 0u)), arg_0), _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(1i, 0i, var_0.x), vec3<i32>(-2147483647i, -27176i, var_0.x), vec3<i32>(-9702i, 15184i, var_0.x)), _wgslsmith_mod_vec3_i32(vec3<i32>(-1i, 25870i, -10954i), vec3<i32>(-69379i, arg_3.x, arg_0.a.x)))), max(arg_1, _wgslsmith_add_u32(~u_input.a.x, abs(global0.a))), _wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(arg_0.b.a.a, 0u, 0u, arg_1)), _wgslsmith_clamp_vec4_u32(u_input.a, min(u_input.a, u_input.a), min(vec4<u32>(arg_1, arg_0.d.a, 1u, 1u), u_input.a))), countOneBits((arg_0.d.a >> (arg_1 % 32u)) & _wgslsmith_sub_u32(arg_0.d.a, global0.a))), Struct_4(~countOneBits(arg_0.a), arg_0.b, false, func_4(~arg_0.a.x, -arg_3.x & 32690i, _wgslsmith_f_op_f32(f32(-1f) * -865f), func_4(var_0.x, _wgslsmith_mult_i32(arg_0.a.x, arg_3.x), _wgslsmith_f_op_f32(arg_2.a - 1000f), arg_2).c)));
    global2 = array<vec2<bool>, 11>();
    let var_3 = vec4<i32>(~(~(~_wgslsmith_mod_i32(1i, -2147483647i))), arg_0.a.x, i32(-1i) * -(~(~2147483647i)), -_wgslsmith_add_i32(min(arg_0.a.x, _wgslsmith_dot_vec3_i32(arg_0.a, vec3<i32>(-1i, var_0.x, arg_3.x))), _wgslsmith_add_i32(var_0.x, firstTrailingBit(-2147483647i))));
    return var_2.b.d;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(global0.c.a + -608f);
    let var_1 = func_5(func_1(), ~global0.a, global0.c, _wgslsmith_div_vec2_i32(select(vec2<i32>(1i, 1i), -_wgslsmith_clamp_vec2_i32(vec2<i32>(14099i, 1i), vec2<i32>(-2147483647i, 1i), vec2<i32>(0i, 0i)), all(select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), true))), _wgslsmith_sub_vec2_i32(vec2<i32>(-1i, ~0i), vec2<i32>(i32(-1i) * -1i, _wgslsmith_dot_vec3_i32(vec3<i32>(-46082i, 12849i, -55401i), vec3<i32>(-5349i, 1i, -14119i))))));
    var var_2 = Struct_2(max(u_input.a.x, ~_wgslsmith_dot_vec4_u32(u_input.a, select(vec4<u32>(1u, global0.a, 1u, var_1.a), vec4<u32>(19788u, 0u, 0u, 73001u), vec4<bool>(false, false, true, false)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(820f * _wgslsmith_f_op_f32(-var_1.b)) + _wgslsmith_f_op_f32(-global0.b)), func_1().b.a.c);
    var var_3 = select(vec4<bool>(true, false, true, true), vec4<bool>(true, any(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, true), false), vec4<bool>(true, true, true, true))), true, all(vec4<bool>(true, true, true, false))), true);
    var_0 = 668f;
    var_2 = var_1;
    var_2 = Struct_2(_wgslsmith_dot_vec2_u32(u_input.a.xy, vec2<u32>(global0.a, func_5(Struct_4(vec3<i32>(2147483647i, -2299i, 54854i), Struct_3(Struct_2(79095u, -240f, var_2.c)), var_3.x, Struct_2(0u, var_2.b, global0.c)), u_input.a.x, global0.c, vec2<i32>(2147483647i, 15057i)).a)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_2.b * 113f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2.b), -566f) * 1329f)), var_1.c);
    let var_4 = func_1().d;
    let var_5 = _wgslsmith_sub_vec4_i32(-(-global1[_wgslsmith_index_u32(var_1.a, 23u)] | _wgslsmith_clamp_vec4_i32(vec4<i32>(28350i, 1i, 23766i, 1i), vec4<i32>(0i, 2147483647i, 28762i, 1i), vec4<i32>(-30561i, 0i, 2147483647i, 29539i))) & -(_wgslsmith_clamp_vec4_i32(vec4<i32>(-1i, -1i, 2147483647i, -1i), vec4<i32>(-29441i, -39957i, 63146i, -10704i), vec4<i32>(-20353i, -13483i, 1i, 4970i)) << (_wgslsmith_mod_vec4_u32(u_input.a, u_input.a) % vec4<u32>(32u))), vec4<i32>(firstLeadingBit(countOneBits(_wgslsmith_clamp_i32(-14127i, 50902i, 16997i))), 0i, ~(~_wgslsmith_sub_i32(2147483647i, 0i)), _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(1i, 1i, 1i), -vec3<i32>(-2147483647i, -9766i, 2147483647i)), -(~vec3<i32>(-30600i, 2147483647i, -5826i)))));
    let x = u_input.a;
    s_output = StorageBuffer(-33842i, var_1.b, var_5.xwz, func_3(var_1.a, Struct_5(vec4<u32>(func_1().d.a, var_4.a, u_input.a.x, var_2.a), Struct_4(abs(var_5.wwy), Struct_3(Struct_2(global0.a, var_1.c.b.x, Struct_1(var_2.c.a, vec4<f32>(var_1.b, var_2.c.b.x, -559f, 2131f)))), !var_3.x, Struct_2(var_2.a, -777f, Struct_1(var_4.b, var_2.c.b)))), _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(select(var_5, vec4<i32>(32198i, var_5.x, -20889i, -2147483647i), vec4<bool>(var_3.x, false, true, true)), global1[_wgslsmith_index_u32(~0u, 23u)]), vec4<i32>(func_2(-15079i, 1315f, global1[_wgslsmith_index_u32(var_2.a, 23u)]), 1i, _wgslsmith_mod_i32(var_5.x, 0i), 1787i))), _wgslsmith_div_u32(1u, var_4.a));
}


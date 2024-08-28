struct Struct_1 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: vec2<i32>,
    d: u32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<u32>(4294967295u, 1u, 3486u, 1u));

var<private> global1: vec4<f32> = vec4<f32>(-1365f, 607f, -566f, -774f);

var<private> global2: array<vec2<i32>, 13> = array<vec2<i32>, 13>(vec2<i32>(2147483647i, -39949i), vec2<i32>(2624i, 5988i), vec2<i32>(-26384i, -26655i), vec2<i32>(3055i, 39184i), vec2<i32>(i32(-2147483648), 2488i), vec2<i32>(i32(-2147483648), -42733i), vec2<i32>(1884i, 0i), vec2<i32>(0i, -25676i), vec2<i32>(-7537i, -54954i), vec2<i32>(-63273i, -1i), vec2<i32>(i32(-2147483648), 1522i), vec2<i32>(1i, -19401i), vec2<i32>(-20904i, -1i));

var<private> global3: vec3<bool>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3(arg_0: vec2<u32>, arg_1: vec3<u32>, arg_2: vec2<bool>) -> bool {
    var var_0 = ~_wgslsmith_sub_u32(~_wgslsmith_dot_vec2_u32(arg_1.xy, vec2<u32>(arg_0.x, 81102u)), arg_0.x) >= _wgslsmith_mult_u32(~(~u_input.d ^ 4294967295u), arg_0.x);
    global3 = select(select(!select(select(vec3<bool>(arg_2.x, global3.x, arg_2.x), vec3<bool>(false, arg_2.x, true), vec3<bool>(true, global3.x, arg_2.x)), vec3<bool>(global3.x, global3.x, false), vec3<bool>(global3.x, true, arg_2.x)), select(vec3<bool>(true, global3.x, !arg_2.x), select(vec3<bool>(global3.x, arg_2.x, true), select(vec3<bool>(false, false, false), vec3<bool>(global3.x, false, true), arg_2.x), true), !vec3<bool>(global3.x, global3.x, arg_2.x)), true), select(!(!select(vec3<bool>(false, global3.x, arg_2.x), vec3<bool>(false, true, global3.x), vec3<bool>(false, true, true))), !(!vec3<bool>(global3.x, global3.x, false)), true), !all(!(!vec4<bool>(false, true, true, arg_2.x))));
    global0 = Struct_1(min(~max(vec4<u32>(124615u, 20383u, arg_0.x, arg_1.x) ^ global0.a, vec4<u32>(global0.a.x, u_input.b.x, arg_1.x, 15149u)), ~(~global0.a)));
    let var_1 = Struct_1(~_wgslsmith_sub_vec4_u32(vec4<u32>(_wgslsmith_dot_vec2_u32(arg_0, vec2<u32>(u_input.d, arg_0.x)), ~33787u, ~1888u, _wgslsmith_sub_u32(4294967295u, arg_1.x)), global0.a));
    var var_2 = ~_wgslsmith_mult_vec4_i32(-vec4<i32>(u_input.a.x >> (4294967295u % 32u), -1i, 45968i, u_input.c.x), select(vec4<i32>(abs(u_input.c.x), _wgslsmith_dot_vec3_i32(u_input.a.xzz, vec3<i32>(u_input.a.x, u_input.e.x, 2368i)), ~u_input.a.x, _wgslsmith_clamp_i32(-51550i, u_input.e.x, u_input.a.x)), -vec4<i32>(-13986i, 0i, u_input.a.x, -2632i), arg_2.x));
    return global3.x;
}

fn func_2() -> vec4<bool> {
    global0 = Struct_1(countOneBits(vec4<u32>(0u, ~global0.a.x, _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(global0.a, global0.a), ~global0.a), u_input.d)));
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.x, 1315f) - global1.wx), vec2<f32>(1000f, -1000f)))) + _wgslsmith_f_op_vec2_f32(sign(global1.zx)));
    global2 = array<vec2<i32>, 13>();
    global0 = Struct_1(~max(_wgslsmith_div_vec4_u32(global0.a >> (vec4<u32>(u_input.d, global0.a.x, u_input.b.x, 47827u) % vec4<u32>(32u)), global0.a ^ vec4<u32>(u_input.d, u_input.d, 4294967295u, u_input.b.x)), vec4<u32>(~1u, u_input.d, ~u_input.b.x, firstLeadingBit(global0.a.x))));
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1544f, -916f, var_0.x, var_0.x), vec4<f32>(var_0.x, global1.x, -262f, 433f), true))) * _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1680f, 812f, var_0.x, -1463f)), vec4<f32>(901f, -256f, global1.x, 223f)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, global1.x, -920f))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_0.x, 653f, -2182f) + vec4<f32>(var_0.x, global1.x, global1.x, -726f)), vec4<f32>(168f, global1.x, global1.x, global1.x)), vec4<bool>(all(vec2<bool>(global3.x, false)), true, true, true))), select(vec4<bool>(global3.x, true, !global3.x, true), !(!vec4<bool>(false, false, global3.x, global3.x)), global3.x))));
    return !(!(!vec4<bool>(!global3.x, global3.x, global3.x, func_3(vec2<u32>(u_input.d, 39707u), global0.a.wxy, vec2<bool>(false, global3.x)))));
}

fn func_1(arg_0: u32, arg_1: vec4<u32>) -> Struct_1 {
    var var_0 = vec2<bool>(any(!(!vec3<bool>(false, global3.x, global3.x))), !all(select(vec4<bool>(global3.x, false, global3.x, global3.x), select(vec4<bool>(global3.x, global3.x, global3.x, global3.x), vec4<bool>(global3.x, global3.x, true, true), false), global3.x)));
    var var_1 = Struct_1(~select(arg_1, _wgslsmith_mod_vec4_u32(~vec4<u32>(arg_1.x, global0.a.x, 50020u, u_input.d), vec4<u32>(4294967295u, 1u, 0u, 553u) >> (arg_1 % vec4<u32>(32u))), var_0.x));
    global2 = array<vec2<i32>, 13>();
    global1 = _wgslsmith_f_op_vec4_f32(min(vec4<f32>(global1.x, global1.x, 125f, global1.x), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(418f * 1041f), _wgslsmith_div_f32(global1.x, global1.x), global1.x, _wgslsmith_f_op_f32(global1.x - -858f)) * vec4<f32>(_wgslsmith_f_op_f32(global1.x - global1.x), -1341f, _wgslsmith_f_op_f32(141f - -772f), _wgslsmith_f_op_f32(global1.x * 1384f))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1540f, 377f, global1.x, global1.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-233f, 1536f, 1000f, global1.x)))), func_2()))));
    let var_2 = Struct_1(max(vec4<u32>(arg_0, global0.a.x, reverseBits(var_1.a.x), ~(~arg_0)), ~global0.a >> (~(~vec4<u32>(u_input.d, 1u, u_input.b.x, global0.a.x)) % vec4<u32>(32u))));
    return var_2;
}

fn func_4(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: u32) -> Struct_1 {
    global2 = array<vec2<i32>, 13>();
    global1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) - _wgslsmith_f_op_f32(round(global1.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1000f, global1.x, false))), global1.x)));
    global0 = func_1(u_input.d, ~(vec4<u32>(arg_2 | global0.a.x, 4294967295u, arg_2, ~0u) | vec4<u32>(1u, arg_0.a.x, ~u_input.d, arg_0.a.x ^ global0.a.x)));
    var var_0 = any(func_2().zyz);
    let var_1 = Struct_1(global0.a);
    return Struct_1(_wgslsmith_add_vec4_u32(firstTrailingBit(arg_0.a), var_1.a));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(func_1(22678u, global0.a), ~(firstLeadingBit(u_input.a.wxz) << (_wgslsmith_add_vec3_u32(global0.a.yxy, vec3<u32>(4294967295u, u_input.b.x, 4928u)) % vec3<u32>(32u))) | u_input.a.wyz, u_input.b.x);
    var var_1 = global3.x;
    let var_2 = vec3<f32>(-257f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-637f, global1.x) - global1.x), global1.x);
    global1 = _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-466f * 238f)), -1187f, _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-1385f, global1.x))), _wgslsmith_div_f32(-341f, _wgslsmith_f_op_f32(776f + global1.x))), vec4<f32>(global1.x, _wgslsmith_f_op_f32(floor(var_2.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.x + global1.x)), global1.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1649f, var_2.x, 413f, 502f))) * _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_2.x, 427f, global1.x, 359f))))))));
    let var_3 = _wgslsmith_add_vec3_i32(-(select(vec3<i32>(-6356i, u_input.c.x, u_input.a.x), vec3<i32>(u_input.e.x, u_input.a.x, -5346i), vec3<bool>(global3.x, false, true)) >> (_wgslsmith_mod_vec3_u32(vec3<u32>(20081u, 4294967295u, 0u), vec3<u32>(5064u, global0.a.x, var_0.a.x)) % vec3<u32>(32u))) >> (vec3<u32>(var_0.a.x, var_0.a.x, abs(global0.a.x << (global0.a.x % 32u))) % vec3<u32>(32u)), u_input.a.xyz);
    let x = u_input.a;
    s_output = StorageBuffer(global0.a.xww);
}


struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
}

struct Struct_4 {
    a: vec3<f32>,
    b: f32,
    c: vec3<bool>,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec2<u32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(1i, 64746i);

var<private> global1: bool;

var<private> global2: array<vec2<u32>, 19>;

var<private> global3: array<u32, 24>;

var<private> global4: i32;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1) -> f32 {
    global4 = -_wgslsmith_mult_i32(-(~u_input.d.x), -1i) << (u_input.c.x % 32u);
    global0 = reverseBits(_wgslsmith_sub_vec2_i32(vec2<i32>(_wgslsmith_clamp_i32(firstLeadingBit(global0.x), 0i, _wgslsmith_add_i32(-1i, global0.x)), _wgslsmith_add_i32(_wgslsmith_mod_i32(-19884i, -8470i), -32249i)), abs(~(~u_input.b.yz))));
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a.x)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-452f)))) + -1000f);
    global1 = any(vec4<bool>(true, any(vec2<bool>(true, true)), (arg_0.a.x <= 858f) && true, (abs(u_input.a) << (global3[_wgslsmith_index_u32(~4294967295u, 24u)] % 32u)) != ~(u_input.c.x | 66511u)));
    let var_1 = Struct_3(u_input.c);
    return _wgslsmith_f_op_f32(abs(1f));
}

fn func_4(arg_0: f32, arg_1: vec4<bool>) -> vec4<u32> {
    var var_0 = vec2<bool>(false, arg_1.x);
    var var_1 = abs(vec3<i32>(_wgslsmith_mult_i32(~1i, 1i), u_input.b.x, ~(-2147483647i)));
    var var_2 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(-arg_0), -918f, _wgslsmith_f_op_f32(-arg_0), arg_0), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-121f, -1014f, arg_0, 421f)) + vec4<f32>(arg_0, -109f, arg_0, arg_0))))));
    var_2 = Struct_2(Struct_1(vec4<f32>(var_2.a.a.x, 1000f, var_2.a.a.x, arg_0)));
    var var_3 = -(~select(~(-var_1.yz), -u_input.d.xy, true));
    return vec4<u32>(35389u, global3[_wgslsmith_index_u32(4294967295u, 24u)], ~select(u_input.c.x, firstTrailingBit(98473u), ~global0.x > u_input.b.x), 4294967295u);
}

fn func_2(arg_0: f32) -> bool {
    let var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(567f, arg_0, arg_0, arg_0)))));
    let var_1 = global2[_wgslsmith_index_u32(~24794u, 19u)];
    var var_2 = func_4(_wgslsmith_f_op_f32(func_3(var_0.a)), !vec4<bool>(true, false, global0.x <= abs(global0.x), _wgslsmith_f_op_f32(ceil(-630f)) <= _wgslsmith_div_f32(arg_0, arg_0)));
    global2 = array<vec2<u32>, 19>();
    let var_3 = 24955i;
    return all(!select(vec3<bool>(true, true, any(vec4<bool>(true, false, false, false))), select(select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), false), vec3<bool>(true, true, true), false), all(vec4<bool>(true, true, true, true))));
}

fn func_5(arg_0: vec2<bool>, arg_1: vec3<bool>, arg_2: vec2<bool>) -> bool {
    global2 = array<vec2<u32>, 19>();
    return !arg_2.x;
}

fn func_1() -> Struct_1 {
    global1 = select(all(vec4<bool>(true, true, true, true)), true, func_5(vec2<bool>(any(vec4<bool>(true, true, true, true)), false), vec3<bool>(true == any(vec4<bool>(false, false, true, true)), select(true, true, any(vec2<bool>(true, false))), true), select(!select(vec2<bool>(false, true), vec2<bool>(false, true), false), vec2<bool>(true, true), vec2<bool>(func_2(-357f), true))));
    global2 = array<vec2<u32>, 19>();
    global0 = -u_input.b.yx;
    global2 = array<vec2<u32>, 19>();
    var var_0 = u_input.b.zz;
    return Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-334f, 596f, 321f, 402f), vec4<f32>(100f, 841f, 1000f, 676f), vec4<bool>(true, true, true, true))))))));
}

fn func_6(arg_0: Struct_2, arg_1: vec2<f32>, arg_2: Struct_4) -> vec3<i32> {
    var var_0 = arg_0;
    global2 = array<vec2<u32>, 19>();
    var var_1 = !select(select(select(select(vec4<bool>(true, false, arg_2.c.x, false), vec4<bool>(arg_2.c.x, false, true, false), false), vec4<bool>(false, false, true, arg_2.c.x), select(vec4<bool>(arg_2.c.x, true, true, true), vec4<bool>(arg_2.c.x, arg_2.c.x, arg_2.c.x, true), false)), vec4<bool>(all(arg_2.c.yx), false, true, any(vec4<bool>(arg_2.c.x, arg_2.c.x, arg_2.c.x, arg_2.c.x))), select(select(vec4<bool>(true, false, arg_2.c.x, true), vec4<bool>(true, arg_2.c.x, arg_2.c.x, arg_2.c.x), vec4<bool>(true, arg_2.c.x, arg_2.c.x, arg_2.c.x)), !vec4<bool>(arg_2.c.x, arg_2.c.x, false, arg_2.c.x), select(vec4<bool>(false, arg_2.c.x, arg_2.c.x, arg_2.c.x), vec4<bool>(arg_2.c.x, arg_2.c.x, arg_2.c.x, arg_2.c.x), vec4<bool>(arg_2.c.x, arg_2.c.x, arg_2.c.x, arg_2.c.x)))), !vec4<bool>(all(arg_2.c), false, u_input.a >= 4294967295u, true), any(select(arg_2.c, vec3<bool>(false, true, true), false)) & true);
    let var_2 = arg_0;
    var var_3 = u_input.b.wzz | vec3<i32>(~0i, 0i, i32(-1i) * -55873i);
    return u_input.b.zwz;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mod_i32(3492i, -1i);
    let var_1 = -func_6(Struct_2(func_1()), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(162f - 1000f), -425f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-421f, 1000f) + vec2<f32>(231f, -221f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(498f, -325f)))), Struct_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(605f, 1599f, 251f))), -1045f, !select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), false), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(290f, -454f, -1935f), vec3<f32>(-475f, 1000f, -1151f))))));
    let var_2 = 1i;
    var var_3 = Struct_3(min(~vec2<u32>(4294967295u >> (u_input.c.x % 32u), global3[_wgslsmith_index_u32(u_input.c.x, 24u)] & 8412u), (~u_input.c & vec2<u32>(u_input.c.x, 41136u)) >> (select(vec2<u32>(8401u, u_input.c.x) ^ global2[_wgslsmith_index_u32(u_input.a, 19u)], vec2<u32>(u_input.c.x, 51897u), vec2<bool>(false, false)) % vec2<u32>(32u))));
    global0 = _wgslsmith_sub_vec2_i32(var_1.zx, func_6(Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-203f, 914f, -487f, 109f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(621f, -1000f) * vec2<f32>(121f, 1659f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-1457f, 451f) * vec2<f32>(-1236f, 747f))) - vec2<f32>(-1195f, _wgslsmith_f_op_f32(min(652f, 513f)))), Struct_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-854f, 518f, 519f) + vec3<f32>(1351f, -1871f, -368f))), _wgslsmith_f_op_f32(1685f * _wgslsmith_f_op_f32(-159f + 185f)), !select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(true, false, false)), vec3<f32>(1f, 1f, 1f))).zy);
    let x = u_input.a;
    s_output = StorageBuffer(~firstLeadingBit(max(1u, _wgslsmith_mod_u32(global3[_wgslsmith_index_u32(var_3.a.x, 24u)], global3[_wgslsmith_index_u32(u_input.c.x, 24u)]))), ~vec2<u32>(4294967295u, 0u), var_2, _wgslsmith_f_op_f32(-1f));
}


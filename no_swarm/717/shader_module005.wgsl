struct Struct_1 {
    a: vec4<u32>,
    b: i32,
    c: f32,
    d: f32,
    e: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: Struct_1,
    d: Struct_1,
    e: bool,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: bool,
    d: bool,
    e: vec3<i32>,
}

struct Struct_4 {
    a: vec2<f32>,
    b: bool,
}

struct Struct_5 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 2147483647i;

var<private> global1: vec2<u32>;

var<private> global2: array<vec2<bool>, 3> = array<vec2<bool>, 3>(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false));

var<private> global3: array<Struct_3, 18>;

var<private> global4: array<vec4<bool>, 24> = array<vec4<bool>, 24>(vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, true));

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: vec3<bool>, arg_1: i32) -> u32 {
    global1 = _wgslsmith_mult_vec2_u32(min(abs(vec2<u32>(~0u, ~u_input.a)), select(~min(vec2<u32>(0u, 0u), vec2<u32>(u_input.a, u_input.a)), vec2<u32>(~21172u, abs(u_input.a)), vec2<bool>(true, !arg_0.x))), select(vec2<u32>(~global1.x, global1.x), _wgslsmith_mod_vec2_u32(~(~vec2<u32>(0u, 45962u)), vec2<u32>(47683u, 4294967295u) | firstTrailingBit(vec2<u32>(4294967295u, 57263u))), any(!arg_0) & arg_0.x));
    var var_0 = Struct_3(641f, Struct_2(Struct_1(_wgslsmith_mult_vec4_u32(vec4<u32>(0u, 0u, u_input.a, u_input.a), ~vec4<u32>(0u, u_input.a, u_input.a, 54045u)), abs(-373i), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1010f * 1408f))), -437f, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-635f, -666f, 1048f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1464f, 399f, -441f)))), max(vec4<i32>(u_input.b, u_input.b, 0i, 21784i) & vec4<i32>(u_input.b, -14853i, u_input.b, u_input.b), firstTrailingBit(vec4<i32>(-34294i, -1i, u_input.b, 33959i) & vec4<i32>(arg_1, 1i, u_input.b, -2147483647i))), Struct_1(_wgslsmith_add_vec4_u32(vec4<u32>(1u, 0u, u_input.a, u_input.a), vec4<u32>(63642u, 23256u, global1.x, global1.x)) & abs(vec4<u32>(119949u, global1.x, 1u, 9464u)), (25701i << (global1.x % 32u)) << (~4294967295u % 32u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-441f, 1000f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(-965f, 190f)), 571f, global1.x != u_input.a)), vec3<f32>(_wgslsmith_f_op_f32(min(2031f, -364f)), _wgslsmith_f_op_f32(f32(-1f) * -2263f), 545f)), Struct_1(vec4<u32>(countOneBits(0u), global1.x ^ 0u, abs(global1.x), ~u_input.a), _wgslsmith_add_i32(firstTrailingBit(u_input.b), u_input.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(964f * 1000f)), 1f, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(2328f, -1242f, 732f)))), false), any(arg_0), true, firstTrailingBit(firstLeadingBit(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.b, arg_1, u_input.b), vec3<i32>(arg_1, arg_1, arg_1)) >> (select(vec3<u32>(u_input.a, global1.x, global1.x), vec3<u32>(1u, u_input.a, 98081u), false) % vec3<u32>(32u)))));
    global3 = array<Struct_3, 18>();
    global4 = array<vec4<bool>, 24>();
    let var_1 = Struct_4(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-804f - _wgslsmith_f_op_f32(min(var_0.b.a.e.x, 217f)))), var_0.a), all(!select(arg_0.yx, vec2<bool>(arg_0.x, true), true)));
    return _wgslsmith_sub_u32(firstLeadingBit(62151u), ~(~(~(~var_0.b.c.a.x))));
}

fn func_2() -> Struct_5 {
    global1 = vec2<u32>(42952u >> (global1.x % 32u), func_3(select(vec3<bool>(true, false, true), select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), true), u_input.b == u_input.b), countOneBits(u_input.b))) & ~vec2<u32>(40975u, 16848u);
    global0 = ~(-_wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(firstTrailingBit(vec2<i32>(1i, u_input.b)), _wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.b, -39624i), vec2<i32>(u_input.b, u_input.b), vec2<i32>(26151i, u_input.b))), -42677i));
    global0 = ~(~7661i);
    global4 = array<vec4<bool>, 24>();
    return Struct_5(select(select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), true), false), select(!select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(false, true, false)), vec3<bool>(true, true, true), true), !(!select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(false, false, false)))));
}

fn func_4(arg_0: vec4<i32>, arg_1: vec2<bool>, arg_2: Struct_5, arg_3: vec2<bool>) -> Struct_1 {
    let var_0 = Struct_4(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, -252f) + _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1244f, -1061f))))), _wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) - vec2<f32>(_wgslsmith_f_op_f32(abs(1968f)), _wgslsmith_f_op_f32(min(1000f, -897f)))), true)), arg_2.a.x);
    let var_1 = global3[_wgslsmith_index_u32(1u, 18u)];
    global0 = u_input.b;
    let var_2 = ~21558i;
    let var_3 = (func_3(!(!arg_2.a), u_input.b) >> (global1.x % 32u)) >> (global1.x % 32u);
    return var_1.b.c;
}

fn func_1() -> Struct_2 {
    return Struct_2(func_4(vec4<i32>(_wgslsmith_mult_i32(_wgslsmith_clamp_i32(1i, 1i, u_input.b), _wgslsmith_div_i32(-472i, u_input.b)), ~(-1i), _wgslsmith_sub_i32(i32(-1i) * -2147483647i, u_input.b & -61773i), -2147483647i & ~u_input.b), select(select(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(global1.x, 366u), vec2<u32>(20451u, 7588u)), 3u)], vec2<bool>(true, true), vec2<bool>(false, false)), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(u_input.a, global1.x, 10626u, global1.x)), vec4<u32>(global1.x, 4294967295u, u_input.a, 60229u)), 3u)], select(global2[_wgslsmith_index_u32(~35255u, 3u)], select(global2[_wgslsmith_index_u32(global1.x, 3u)], global2[_wgslsmith_index_u32(global1.x, 3u)], false), global2[_wgslsmith_index_u32(70843u, 3u)])), func_2(), vec2<bool>(true, select(true, all(vec3<bool>(false, false, true)), true))), vec4<i32>(u_input.b, _wgslsmith_add_i32(_wgslsmith_sub_i32(firstLeadingBit(u_input.b), reverseBits(u_input.b)), -1i), ~(-36169i), -_wgslsmith_clamp_i32(~(-28530i), _wgslsmith_div_i32(2147483647i, u_input.b), 20851i)), Struct_1(vec4<u32>(~(~u_input.a), _wgslsmith_add_u32(global1.x, 48314u) & 24426u, select(firstTrailingBit(49977u), _wgslsmith_div_u32(40208u, u_input.a), all(global4[_wgslsmith_index_u32(u_input.a, 24u)])), ~(39070u << (global1.x % 32u))), abs(_wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, u_input.b), vec2<i32>(u_input.b, u_input.b)), _wgslsmith_dot_vec3_i32(vec3<i32>(16429i, u_input.b, u_input.b), vec3<i32>(u_input.b, 1i, u_input.b)))), _wgslsmith_f_op_f32(-func_4(~vec4<i32>(0i, u_input.b, -22139i, 14680i), func_2().a.zy, func_2(), vec2<bool>(true, true)).c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -421f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-783f, -506f, -1676f) * vec3<f32>(-1154f, -112f, -1720f))))), func_4(select(vec4<i32>(u_input.b, u_input.b, _wgslsmith_div_i32(1i, -12563i), -1i), vec4<i32>(1i, u_input.b, -1i, i32(-1i) * -4379i), vec4<bool>(1u > global1.x, any(global4[_wgslsmith_index_u32(u_input.a, 24u)]), all(vec2<bool>(false, false)), true)), select(func_2().a.xz, vec2<bool>(true, true), global2[_wgslsmith_index_u32(94034u, 3u)]), Struct_5(select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), false)), select(vec2<bool>(false, true), global2[_wgslsmith_index_u32(global1.x, 3u)], !all(global2[_wgslsmith_index_u32(18022u, 3u)]))), !all(global4[_wgslsmith_index_u32(select(42373u, 0u, true), 24u)]) == all(global2[_wgslsmith_index_u32(~69271u, 3u)]));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(!vec3<bool>(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, u_input.b), vec2<i32>(9927i, u_input.b)) >= -u_input.b, false, true));
    var var_1 = 1000f != _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), -447f), _wgslsmith_f_op_f32(max(1f, _wgslsmith_f_op_f32(-1f)))));
    let var_2 = func_1();
    var var_3 = Struct_5(func_2().a);
    var var_4 = func_2();
    global4 = array<vec4<bool>, 24>();
    let var_5 = firstLeadingBit(u_input.b);
    var var_6 = ~(((global1.x & ~17374u) >> (~var_2.c.a.x % 32u)) << (~1u % 32u));
    let var_7 = var_2.b.wy;
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(i32(-1i) * -1i), var_2.b.wwx);
}


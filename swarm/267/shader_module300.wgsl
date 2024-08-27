struct Struct_1 {
    a: vec2<i32>,
    b: vec3<f32>,
    c: vec3<i32>,
    d: bool,
    e: vec4<u32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: bool,
}

struct Struct_4 {
    a: vec4<i32>,
    b: vec2<u32>,
    c: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 18>;

var<private> global1: f32 = -363f;

var<private> global2: Struct_2;

var<private> global3: array<i32, 12> = array<i32, 12>(2147483647i, 0i, i32(-2147483648), 32324i, 1i, 0i, 28563i, 43212i, 9053i, 16378i, 1i, i32(-2147483648));

var<private> global4: i32 = -20478i;

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> vec4<i32> {
    var var_0 = global2.b.b.zz;
    global4 = global2.b.a.x;
    global3 = array<i32, 12>();
    let var_1 = !all(select(!vec2<bool>(global2.b.d, false), !select(vec2<bool>(true, global2.a), vec2<bool>(global2.a, global2.a), global2.b.d), all(vec3<bool>(true, true, true))));
    var var_2 = u_input.a;
    return -(~(vec4<i32>(_wgslsmith_clamp_i32(global2.b.c.x, -4694i, -64100i), global2.b.a.x, 0i, global2.b.a.x) & abs(_wgslsmith_sub_vec4_i32(vec4<i32>(25109i, 46487i, 17067i, -55866i), vec4<i32>(42064i, global2.b.a.x, 47203i, 0i)))));
}

fn func_2() -> Struct_2 {
    let var_0 = Struct_4(func_3(), vec2<u32>(_wgslsmith_clamp_u32(~global2.b.e.x, max(u_input.a, 0u), u_input.b) << (~7807u % 32u), global2.b.e.x), false);
    var var_1 = global2.b;
    global1 = _wgslsmith_f_op_f32(-global2.c);
    let var_2 = _wgslsmith_add_vec4_u32(firstLeadingBit(var_1.e), vec4<u32>(max(106520u, 4294967295u), ~var_1.e.x, _wgslsmith_mod_u32(1u, ~1u), ~var_1.e.x));
    var_1 = Struct_1(vec2<i32>(i32(-1i) * -_wgslsmith_dot_vec4_i32(vec4<i32>(global3[_wgslsmith_index_u32(var_0.b.x, 12u)], 1i, var_0.a.x, var_1.c.x), var_0.a), abs(0i)), vec3<f32>(global2.c, _wgslsmith_f_op_f32(-932f + var_1.b.x), 270f), _wgslsmith_add_vec3_i32(var_0.a.wyx, _wgslsmith_add_vec3_i32(vec3<i32>(-19548i, func_3().x, _wgslsmith_dot_vec4_i32(var_0.a, var_0.a)), vec3<i32>(_wgslsmith_clamp_i32(global2.b.a.x, -52548i, 1i), global2.b.c.x, _wgslsmith_add_i32(global3[_wgslsmith_index_u32(global2.b.e.x, 12u)], global2.b.a.x)))), !all(select(vec4<bool>(var_1.d, var_1.d, true, true), !vec4<bool>(global2.b.d, var_1.d, var_0.c, var_1.d), true || var_0.c)), vec4<u32>(var_0.b.x, global2.b.e.x, ~(max(1u, var_1.e.x) ^ (global2.b.e.x | 0u)), ~var_1.e.x));
    return Struct_2(var_0.c, Struct_1(firstLeadingBit(vec2<i32>(_wgslsmith_sub_i32(-30007i, global3[_wgslsmith_index_u32(var_2.x, 12u)]), abs(var_1.c.x))), _wgslsmith_f_op_vec3_f32(-global2.b.b), vec3<i32>(_wgslsmith_mult_i32(1i, _wgslsmith_dot_vec4_i32(var_0.a, vec4<i32>(global3[_wgslsmith_index_u32(var_1.e.x, 12u)], 37650i, 0i, global2.b.a.x))), -34519i, _wgslsmith_mult_i32(-var_1.a.x, var_0.a.x)), false, max(_wgslsmith_div_vec4_u32(countOneBits(global2.b.e), vec4<u32>(17689u, 2162u, global2.b.e.x, var_2.x)), ~abs(vec4<u32>(19808u, 42587u, var_2.x, var_2.x)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1061f + _wgslsmith_div_f32(_wgslsmith_div_f32(399f, global2.b.b.x), _wgslsmith_f_op_f32(global2.b.b.x - -1521f))), 189f)));
}

fn func_1(arg_0: vec4<f32>, arg_1: f32, arg_2: i32, arg_3: i32) -> Struct_1 {
    var var_0 = func_2();
    var var_1 = var_0.b.e;
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-965f * _wgslsmith_f_op_f32(ceil(-132f))), -165f) - -1032f);
    var var_3 = Struct_2(all(!select(!vec3<bool>(var_0.a, var_0.a, global2.a), vec3<bool>(global2.b.d, global2.b.d, var_0.b.d), !vec3<bool>(false, global2.b.d, true))), func_2().b, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1395f + _wgslsmith_div_f32(arg_1, 1000f))))));
    var var_4 = 1000f;
    return var_3.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(995f, 403f, global2.b.b.x, 171f))) + vec4<f32>(global2.c, global2.c, 744f, -473f))))), global2.c, _wgslsmith_mod_i32(~firstTrailingBit(global2.b.c.x), max(max(global2.b.c.x, 19047i | global2.b.c.x), global2.b.a.x)), max(firstLeadingBit(-global3[_wgslsmith_index_u32(1u, 12u)]), reverseBits(countOneBits(global2.b.a.x))));
    let var_1 = global2.b.e.x | func_2().b.e.x;
    let var_2 = var_0.e.x;
    global1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-func_1(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_0.b.x, 2451f, var_0.b.x, global2.b.b.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(144f, -718f, 643f, -117f) * vec4<f32>(var_0.b.x, global2.b.b.x, 1000f, global2.b.b.x)))), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(global2.b.b.x, -209f), _wgslsmith_f_op_f32(ceil(-823f)))), 1i, countOneBits(-1i >> (var_2 % 32u))).b.x), -670f);
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(var_0.b.xz))));
    global2 = func_2();
    let var_4 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(var_0.b.xy, _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(global2.b.b.yz * var_0.b.yx), var_0.b.zx))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(825f + var_3.x), _wgslsmith_div_f32(-1000f, global2.c)) * vec2<f32>(_wgslsmith_f_op_f32(-137f + var_0.b.x), -1454f)) - vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_0.b.x * -1512f))), _wgslsmith_f_op_f32(f32(-1f) * -384f))), all(vec3<bool>(!var_0.d, all(vec3<bool>(var_0.d, true, true)), true)) && all(vec4<bool>(true, global2.b.d || global2.a, !var_0.d, var_0.d))));
    let var_5 = func_1(vec4<f32>(129f, -222f, func_2().c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-310f - -746f) - -220f) - _wgslsmith_f_op_f32(-var_3.x))), _wgslsmith_f_op_f32(max(-1246f, var_4.x)), _wgslsmith_mod_i32(global3[_wgslsmith_index_u32(var_2, 12u)], -_wgslsmith_sub_i32(_wgslsmith_mult_i32(global2.b.a.x, 16111i), _wgslsmith_mult_i32(global3[_wgslsmith_index_u32(4294967295u, 12u)], 2147483647i))), global2.b.a.x);
    let var_6 = _wgslsmith_f_op_f32(f32(-1f) * -938f);
    let x = u_input.a;
    s_output = StorageBuffer(-648f);
}


struct Struct_1 {
    a: vec3<f32>,
    b: bool,
    c: vec4<bool>,
    d: vec4<f32>,
    e: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: bool,
    d: bool,
}

struct Struct_3 {
    a: vec3<i32>,
    b: Struct_2,
    c: vec2<u32>,
    d: bool,
    e: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: f32,
    c: u32,
    d: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: Struct_4;

var<private> global2: Struct_2;

var<private> global3: array<vec3<u32>, 29>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: u32, arg_1: Struct_3, arg_2: vec3<bool>, arg_3: Struct_2) -> vec3<f32> {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1000f)) + arg_1.b.a.a.x);
    var var_1 = -1000f;
    let var_2 = 0u;
    global2 = Struct_2(Struct_1(global2.a.d.xyy, (var_2 >= _wgslsmith_sub_u32(arg_1.b.a.e.x, 35493u)) != true, !select(select(vec4<bool>(arg_3.d, false, arg_2.x, global1.a.c), vec4<bool>(global1.d.e.c, false, false, global1.a.d), true), vec4<bool>(arg_3.a.c.x, false, arg_2.x, global2.a.c.x), vec4<bool>(true, false, arg_1.e.d, false)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global2.a.d + _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.d.e.a.a.x, 562f, global1.d.b.a.d.x, -631f) - global1.a.a.d))), arg_1.e.a.e), ~firstTrailingBit(-global1.d.b.b), arg_2.x, !global2.d);
    var var_3 = select(select(select(select(!arg_3.a.c.wy, select(arg_2.xx, vec2<bool>(true, global2.c), arg_3.c), select(arg_3.a.c.zy, arg_1.e.a.c.xx, true)), select(!vec2<bool>(global1.a.c, global1.a.c), arg_1.e.a.c.yz, arg_1.d | false), vec2<bool>(arg_3.a.b, arg_3.c)), select(vec2<bool>(arg_3.c, global2.c), select(vec2<bool>(true, true), global1.d.e.a.c.xx, !global2.c), global2.a.c.zz), vec2<bool>(-global1.d.b.b.x >= abs(2147483647i), select(true, arg_2.x | global1.d.d, global2.a.b & false))), vec2<bool>(!(!arg_3.c), false), arg_2.x && any(select(vec4<bool>(false, true, global2.d, false), arg_3.a.c, global1.a.a.c)));
    return _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.e.a.d.x, -240f, -232f) - global1.a.a.d.zzx)));
}

fn func_2() -> Struct_4 {
    let var_0 = global1.b;
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.b, global2.a.d.x)))));
    var var_2 = global1.d.e.a.c.yz;
    let var_3 = vec2<bool>(true, global1.a.a.c.x);
    return Struct_4(Struct_2(Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3(4294967295u, global1.d, global2.a.c.yyw, Struct_2(Struct_1(vec3<f32>(global2.a.a.x, var_1.x, global1.d.b.a.a.x), true, vec4<bool>(var_2.x, global1.a.d, global2.a.c.x, false), global1.d.b.a.d, vec4<u32>(1u, global1.a.a.e.x, u_input.b.x, global1.d.e.a.e.x)), global1.a.b, true, global1.d.d))), _wgslsmith_f_op_vec3_f32(vec3<f32>(1059f, global1.b, global2.a.a.x) * vec3<f32>(-330f, var_1.x, global2.a.d.x))), !var_3.x, select(select(global2.a.c, vec4<bool>(false, false, global1.d.d, global2.d), global2.a.c), !global2.a.c, var_2.x && var_2.x), vec4<f32>(var_1.x, 1349f, -530f, global1.d.e.a.d.x), global2.a.e), min(vec4<i32>(2147483647i & global2.b.x, global2.b.x, 21719i, firstLeadingBit(0i)), vec4<i32>(_wgslsmith_add_i32(-1i, u_input.a), 2147483647i & u_input.a, 1i >> (global2.a.e.x % 32u), -1i)), !global1.d.e.d, !(var_3.x && any(vec4<bool>(true, var_3.x, false, false)))), 841f, 0u, global1.d);
}

fn func_1(arg_0: vec4<bool>) -> Struct_1 {
    global0 = global2.a.c.x;
    var var_0 = select(arg_0.wxw, vec3<bool>(true, global2.a.e.x != ~_wgslsmith_mult_u32(global1.d.e.a.e.x, global1.d.b.a.e.x), !all(vec2<bool>(true, true))), false);
    global1 = func_2();
    let var_1 = countOneBits(global2.b.xw);
    var var_2 = func_2();
    return var_2.d.e.a;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: f32) -> StorageBuffer {
    let var_0 = _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(23917i, global2.b.x), vec2<i32>(global1.a.b.x, u_input.a)), _wgslsmith_mod_vec2_i32(max(vec2<i32>(u_input.a, -5180i), select(_wgslsmith_mod_vec2_i32(vec2<i32>(global1.d.a.x, global1.d.b.b.x), global2.b.wx), _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a, global2.b.x), global2.b.yx), all(vec4<bool>(arg_1.b, arg_1.b, true, arg_0.b)))), global2.b.yz));
    let var_1 = func_2().a.a.e.yx;
    var var_2 = func_2().d.b.a;
    var var_3 = _wgslsmith_sub_vec4_i32(select(global1.a.b, _wgslsmith_mult_vec4_i32(func_2().a.b, ~countOneBits(vec4<i32>(5720i, var_0, var_0, 29871i))), vec4<bool>(1u < firstTrailingBit(global2.a.e.x), true, any(!global2.a.c), !arg_1.b)), select(select(countOneBits(global1.a.b), global1.d.b.b, true), -vec4<i32>(26034i, var_0, 34888i, var_0), !var_2.c) >> (vec4<u32>(~(~32925u), var_2.e.x, 0u, ~77828u) % vec4<u32>(32u)));
    var var_4 = true;
    return StorageBuffer(~u_input.b, _wgslsmith_mod_i32((max(-1i, u_input.a) >> (1u % 32u)) ^ global2.b.x, 12979i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1.d.e;
    var var_1 = -var_0.b.xxy;
    let var_2 = 74422u;
    var var_3 = global1.d.e;
    let var_4 = -12660i;
    let x = u_input.a;
    s_output = func_4(func_1(vec4<bool>(true & any(vec4<bool>(global2.c, global2.a.c.x, global1.a.c, false)), true | !var_3.d, all(!vec2<bool>(global1.d.e.c, true)), all(var_3.a.c.wy))), func_2().a.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_3.a.d.x))) - -735f));
}


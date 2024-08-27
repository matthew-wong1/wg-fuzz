struct Struct_1 {
    a: bool,
    b: vec4<i32>,
    c: vec2<bool>,
    d: f32,
    e: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: u32,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: i32,
    b: f32,
    c: vec4<bool>,
    d: vec2<bool>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: f32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(-284f, 428f, 356f, -326f);

var<private> global1: array<bool, 17>;

var<private> global2: vec4<bool> = vec4<bool>(false, true, true, false);

var<private> global3: bool;

var<private> global4: u32;

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec3<u32>, arg_1: vec2<i32>) -> i32 {
    let var_0 = (_wgslsmith_mod_i32(_wgslsmith_mod_i32(-35413i, _wgslsmith_div_i32(arg_1.x, arg_1.x)), arg_1.x) & ~(abs(arg_1.x) & arg_1.x)) | -49111i;
    let var_1 = Struct_1(!global1[_wgslsmith_index_u32(0u, 17u)], vec4<i32>(0i, ~2147483647i, 5066i, var_0), global2.xz, global0.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-226f, global0.x, global0.x, -645f))))));
    global4 = arg_0.x;
    var var_2 = Struct_4(_wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32((var_1.b.yyz | var_1.b.wyw) ^ -var_1.b.xwz, _wgslsmith_sub_vec3_i32(-var_1.b.xwz, var_1.b.zwy), -(~vec3<i32>(var_0, -43042i, var_1.b.x))), select(vec3<i32>(firstTrailingBit(var_0), var_0, -211i), ~_wgslsmith_clamp_vec3_i32(vec3<i32>(21535i, 17953i, var_0), vec3<i32>(var_1.b.x, arg_1.x, -18380i), vec3<i32>(var_1.b.x, arg_1.x, -12990i)), global2.zwy)), global0.x, select(vec4<bool>(global2.x, true, !(var_1.a | false), true), select(!(!vec4<bool>(var_1.c.x, true, var_1.c.x, true)), select(!vec4<bool>(true, global2.x, global1[_wgslsmith_index_u32(17146u, 17u)], false), select(vec4<bool>(true, var_1.a, false, global2.x), vec4<bool>(false, global1[_wgslsmith_index_u32(arg_0.x, 17u)], false, true), global2.x), select(vec4<bool>(var_1.c.x, false, global1[_wgslsmith_index_u32(84056u, 17u)], global1[_wgslsmith_index_u32(45361u, 17u)]), vec4<bool>(true, global1[_wgslsmith_index_u32(u_input.a.x, 17u)], false, true), var_1.c.x)), false), false), !vec2<bool>(true, global1[_wgslsmith_index_u32(countOneBits(min(u_input.a.x, 4294967295u)), 17u)]), var_1);
    global3 = true;
    return var_0;
}

fn func_2(arg_0: vec2<bool>, arg_1: f32) -> f32 {
    let var_0 = Struct_1(any(!(!(!global2.yx))), vec4<i32>(select(max(i32(-1i) * -24907i, firstTrailingBit(-2147483647i)), reverseBits(1i), global2.x), func_3(~vec3<u32>(71578u, u_input.a.x, 19145u), vec2<i32>(1i, 1i)), firstTrailingBit(min(i32(-1i) * -26276i, ~0i)), max(16934i & _wgslsmith_dot_vec3_i32(vec3<i32>(7312i, -2147483647i, 5860i), vec3<i32>(0i, 2147483647i, -2147483647i)), ~(-5170i))), select(vec2<bool>(arg_0.x, true), vec2<bool>(arg_0.x == true, !(u_input.a.x == 0u)), select(vec2<bool>(false, any(global2.yxx)), vec2<bool>(global2.x, !arg_0.x), true)), _wgslsmith_f_op_f32(586f * -710f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(370f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_1))), _wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1256f) + _wgslsmith_f_op_f32(151f + 1172f)))));
    let var_1 = var_0;
    var var_2 = var_0.e;
    var var_3 = Struct_1(!(var_0.b.x < var_0.b.x), var_0.b, !global2.zx, 856f, _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-590f, -1000f, var_2.x, 508f))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.e.x, 3119f, 1466f, var_1.e.x))))) + var_0.e));
    let var_4 = all(vec4<bool>(any(!vec4<bool>(true, var_3.c.x, var_0.c.x, true)) && var_3.c.x, (true || !var_3.a) && !all(vec3<bool>(false, false, false)), var_1.a, all(vec2<bool>(global2.x, arg_0.x))));
    return arg_1;
}

fn func_1(arg_0: vec3<i32>) -> Struct_1 {
    var var_0 = global0.x;
    global0 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(515f, _wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-2387f * -1922f), _wgslsmith_f_op_f32(-global0.x)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x))), global0.x), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x))), _wgslsmith_f_op_f32(abs(-1517f)), -299f, _wgslsmith_f_op_f32(func_2(vec2<bool>(select(true, false, global1[_wgslsmith_index_u32(u_input.a.x, 17u)]), true), 1000f))), false));
    var var_1 = !global2.xzx;
    let var_2 = Struct_3(Struct_1(global2.x, _wgslsmith_div_vec4_i32(~vec4<i32>(arg_0.x, arg_0.x, -30009i, arg_0.x), (vec4<i32>(arg_0.x, -2147483647i, arg_0.x, arg_0.x) & vec4<i32>(-15686i, arg_0.x, arg_0.x, 2147483647i)) & -vec4<i32>(0i, arg_0.x, 31503i, arg_0.x)), select(vec2<bool>(true, arg_0.x <= arg_0.x), select(vec2<bool>(false, global2.x), !var_1.yx, all(vec4<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 17u)], var_1.x, false, true))), var_1.xx), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global0.x)) + _wgslsmith_f_op_f32(min(global0.x, _wgslsmith_f_op_f32(global0.x * global0.x)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(1343f * global0.x), 1853f, _wgslsmith_f_op_f32(1440f * 827f), _wgslsmith_div_f32(global0.x, -418f)))));
    var var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global0.yx) + global0.ww);
    return Struct_1(any(!vec4<bool>(any(global2.ww), any(vec2<bool>(false, false)), false, -14925i <= arg_0.x)), -(~(~(~var_2.a.b))), !(!(!vec2<bool>(false, var_1.x))), -1665f, _wgslsmith_f_op_vec4_f32(-var_2.a.e));
}

fn func_4(arg_0: u32, arg_1: Struct_4, arg_2: Struct_1, arg_3: Struct_2) -> Struct_4 {
    let var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1932f, arg_3.a.e.x, arg_1.e.e.x, -732f) * vec4<f32>(-2012f, arg_3.b, -805f, -691f)) + _wgslsmith_f_op_vec4_f32(-arg_2.e))))), _wgslsmith_f_op_vec4_f32(-func_1(_wgslsmith_sub_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(9220i, 16231i, arg_3.a.b.x), arg_1.e.b.xzx), arg_3.a.b.xyz)).e));
    var var_1 = false;
    global3 = all(!arg_1.c);
    let var_2 = abs(arg_1.a);
    global2 = arg_1.c;
    return arg_1;
}

fn func_5(arg_0: Struct_4) -> StorageBuffer {
    global0 = _wgslsmith_f_op_vec4_f32(-arg_0.e.e);
    global3 = global2.x;
    let var_0 = Struct_2(arg_0.e, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_0.e.d - global0.x))), u_input.a.x);
    global4 = countOneBits(select(_wgslsmith_div_u32(~var_0.c, _wgslsmith_add_u32(_wgslsmith_add_u32(u_input.a.x, 19088u), ~var_0.c)), var_0.c, !all(arg_0.c) == !(!var_0.a.a)));
    var var_1 = func_4(firstTrailingBit(~_wgslsmith_mod_u32(_wgslsmith_add_u32(var_0.c, 0u), ~17727u)), arg_0, Struct_1(all(!(!global2.wy)), vec4<i32>(-17386i, _wgslsmith_sub_i32(func_4(1u, arg_0, arg_0.e, Struct_2(Struct_1(true, vec4<i32>(-1i, var_0.a.b.x, -1i, arg_0.a), vec2<bool>(global2.x, false), -829f, arg_0.e.e), 2029f, u_input.a.x)).e.b.x, -arg_0.e.b.x), ~var_0.a.b.x, _wgslsmith_add_i32(-2147483647i, ~arg_0.a)), !global2.yx, _wgslsmith_div_f32(var_0.a.e.x, _wgslsmith_f_op_f32(-281f - -709f)), arg_0.e.e), var_0).e;
    return StorageBuffer(var_0.a.b.x, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(var_0.a.e.xzz))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1375f, arg_0.b, -1526f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(arg_0.e.e.yxz, _wgslsmith_f_op_vec3_f32(global0.yyx * vec3<f32>(global0.x, -388f, var_1.e.x)), true))), global2.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(global0.x))))), global0.x), var_1.b);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_5(func_4(71194u, Struct_4(41865i, _wgslsmith_f_op_f32(global0.x * _wgslsmith_f_op_f32(-global0.x)), vec4<bool>(false, true, global1[_wgslsmith_index_u32(abs(1u), 17u)], global1[_wgslsmith_index_u32(~u_input.a.x, 17u)]), global2.yy, func_1(vec3<i32>(1i, 1i, 1i))), func_1(vec3<i32>(-2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, 20427i, 29085i), vec3<i32>(-2147483647i, -13767i, -1i)), ~(-2147483647i))), Struct_2(func_1(vec3<i32>(1i, 1i, 1i)), global0.x, ~(~u_input.a.x))));
}


struct Struct_1 {
    a: vec4<f32>,
    b: bool,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: f32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<bool, 26> = array<bool, 26>(true, false, false, true, false, false, false, false, true, false, true, true, true, false, false, true, true, true, true, false, true, true, false, true, false, true);

var<private> global2: Struct_2 = Struct_2(Struct_1(vec4<f32>(2325f, 123f, 408f, -774f), false, false), Struct_1(vec4<f32>(-100f, -341f, -2057f, 675f), true, true), 1i, vec2<u32>(21413u, 4294967295u));

var<private> global3: array<vec3<i32>, 1> = array<vec3<i32>, 1>(vec3<i32>(-48909i, 1i, 5413i));

var<private> global4: vec2<i32>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3() -> i32 {
    let var_0 = true;
    let var_1 = false;
    global3 = array<vec3<i32>, 1>();
    return ~abs(0i);
}

fn func_2(arg_0: vec3<i32>) -> vec4<f32> {
    let var_0 = !vec2<bool>(false, global2.b.c);
    global2 = Struct_2(global2.a, Struct_1(vec4<f32>(-1205f, global2.a.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-670f)) - 275f), global2.b.a.x), true, true), func_3(), select(~(u_input.a.xz >> (vec2<u32>(0u, 4294967295u) % vec2<u32>(32u))), u_input.a.zx ^ ~(vec2<u32>(4294967295u, global2.d.x) << (vec2<u32>(75458u, u_input.a.x) % vec2<u32>(32u))), false));
    let var_1 = 60669u;
    let var_2 = global2.d.x;
    global3 = array<vec3<i32>, 1>();
    return vec4<f32>(global2.a.a.x, global2.b.a.x, -545f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.a.a.x) - _wgslsmith_f_op_f32(-global2.a.a.x))), global2.b.a.x)));
}

fn func_4(arg_0: vec4<f32>, arg_1: vec4<bool>, arg_2: Struct_2, arg_3: Struct_2) -> Struct_2 {
    global2 = arg_2;
    let var_0 = arg_2.c;
    global0 = !arg_1.x & (1052f >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1752f * arg_2.a.a.x)) + _wgslsmith_f_op_f32(-859f * _wgslsmith_f_op_f32(arg_2.a.a.x * 1007f))));
    global3 = array<vec3<i32>, 1>();
    global2 = arg_3;
    return arg_2;
}

fn func_1() -> Struct_2 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global2.b.a + vec4<f32>(210f, -2669f, global2.a.a.x, global2.a.a.x)))), false, _wgslsmith_mod_i32(_wgslsmith_sub_i32(firstLeadingBit(global2.c), global2.c | global2.c), -global4.x) <= abs(firstLeadingBit(-17322i)));
    let var_1 = true;
    global0 = true;
    global1 = array<bool, 26>();
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.b.a.x, var_0.a.x))) - global2.b.a.wz));
    return func_4(_wgslsmith_f_op_vec4_f32(func_2(max(vec3<i32>(abs(308i), global2.c, ~global2.c), firstLeadingBit(vec3<i32>(39932i, -8515i, global4.x))))), vec4<bool>(var_0.c, var_0.c, all(!vec4<bool>(global1[_wgslsmith_index_u32(0u, 26u)], global1[_wgslsmith_index_u32(4294967295u, 26u)], false, global2.a.b)), true), Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(632f, var_0.a.x, global2.a.a.x, var_2.x) + global2.b.a)), true, var_0.b), Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global2.b.a * vec4<f32>(503f, -719f, 1031f, 179f)) + vec4<f32>(var_2.x, -607f, global2.a.a.x, -937f)), global2.a.b, true), _wgslsmith_mult_i32(-17446i, global4.x), u_input.b), Struct_2(global2.b, global2.a, global2.c, ~(~min(vec2<u32>(u_input.b.x, 4294967295u), global2.d))));
}

fn func_5(arg_0: Struct_2, arg_1: i32) -> vec3<f32> {
    var var_0 = arg_0.b;
    var var_1 = global2.b;
    var var_2 = u_input.b.x;
    let var_3 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.a.a.x, global2.b.a.x, var_1.a.x, var_0.a.x) - arg_0.a.a) - arg_0.a.a)), func_4(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(sign(arg_0.b.a)), vec4<f32>(global2.a.a.x, var_0.a.x, -1064f, -121f), true)), select(select(vec4<bool>(global1[_wgslsmith_index_u32(global2.d.x, 26u)], var_1.c, false, global2.b.b), vec4<bool>(global1[_wgslsmith_index_u32(0u, 26u)], var_1.c, true, var_1.b), arg_0.a.b), vec4<bool>(var_1.b, global1[_wgslsmith_index_u32(u_input.a.x, 26u)], global2.a.b, var_0.c), select(vec4<bool>(false, arg_0.b.c, true, var_1.b), vec4<bool>(true, true, global2.a.c, true), vec4<bool>(var_0.b, true, false, true))), arg_0, Struct_2(func_4(vec4<f32>(arg_0.a.a.x, -1526f, 457f, 481f), vec4<bool>(true, arg_0.a.c, global1[_wgslsmith_index_u32(arg_0.d.x, 26u)], true), arg_0, arg_0).a, func_1().a, firstTrailingBit(-2147483647i), max(u_input.a.zz, u_input.a.wy))).b.b, all(vec4<bool>(arg_0.a.b, select(var_0.b, global1[_wgslsmith_index_u32(u_input.a.x, 26u)], arg_0.b.c), !global1[_wgslsmith_index_u32(u_input.b.x, 26u)], global2.a.b && var_0.c))), func_1().b, -func_4(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1280f, 197f, arg_0.a.a.x, 1000f))))), !select(vec4<bool>(var_0.c, var_1.c, true, global2.a.c), vec4<bool>(var_0.b, false, false, true), vec4<bool>(false, false, true, arg_0.b.c)), func_1(), Struct_2(arg_0.a, func_1().b, ~(-2147483647i), vec2<u32>(u_input.a.x, 0u))).c, arg_0.d);
    var_2 = ~1u;
    return _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_div_f32(var_3.a.a.x, -240f), _wgslsmith_div_f32(-413f, var_3.b.a.x), _wgslsmith_f_op_f32(-var_3.b.a.x)))) - _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_div_f32(global2.b.a.x, var_0.a.x), _wgslsmith_f_op_f32(sign(-909f)), var_1.a.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(var_1.a.xyz, vec3<f32>(1475f, 867f, 1000f))) * vec3<f32>(669f, var_1.a.x, -1104f)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(func_1().b.a.x * -741f), -1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_vec4_f32(func_2(vec3<i32>(70689i, global4.x, arg_1))).x - -204f)) - _wgslsmith_f_op_vec3_f32(trunc(var_3.a.a.www))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a.wx;
    let var_1 = _wgslsmith_div_vec4_i32(~(-(vec4<i32>(-1i) * -vec4<i32>(-2147483647i, global4.x, global4.x, global2.c))), vec4<i32>(-39214i, global2.c, _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_mod_i32(global2.c, global2.c), global4.x), vec2<i32>(global4.x, _wgslsmith_dot_vec2_i32(vec2<i32>(-47772i, 2147483647i), vec2<i32>(global2.c, global4.x)))), global4.x));
    var var_2 = _wgslsmith_f_op_vec3_f32(func_5(func_1(), _wgslsmith_mod_i32(-2147483647i, min(~global2.c, -1i))));
    global0 = global1[_wgslsmith_index_u32(4294967295u >> (select(global2.d.x, 1u, !(all(vec2<bool>(false, true)) & false)) % 32u), 26u)];
    global1 = array<bool, 26>();
    global2 = func_4(global2.b.a, select(!vec4<bool>(true, global2.b.b, global2.b.b, all(vec2<bool>(global2.a.b, true))), !vec4<bool>(select(false, false, true), global1[_wgslsmith_index_u32(u_input.b.x, 26u)], global2.b.b, global1[_wgslsmith_index_u32(2904u, 26u)] & true), vec4<bool>(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.b.x, var_0.x), 26u)] & global2.a.c, false, func_4(_wgslsmith_div_vec4_f32(vec4<f32>(global2.a.a.x, var_2.x, var_2.x, -135f), global2.a.a), select(vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 26u)], true, true, global1[_wgslsmith_index_u32(0u, 26u)]), vec4<bool>(false, true, global1[_wgslsmith_index_u32(15111u, 26u)], global1[_wgslsmith_index_u32(var_0.x, 26u)]), vec4<bool>(true, true, global1[_wgslsmith_index_u32(14669u, 26u)], global2.a.c)), func_4(vec4<f32>(1822f, 1304f, var_2.x, 458f), vec4<bool>(global1[_wgslsmith_index_u32(var_0.x, 26u)], false, global2.b.c, global1[_wgslsmith_index_u32(21511u, 26u)]), Struct_2(Struct_1(global2.b.a, global1[_wgslsmith_index_u32(0u, 26u)], global2.b.b), Struct_1(global2.a.a, true, global2.b.b), var_1.x, u_input.b), Struct_2(global2.b, Struct_1(vec4<f32>(global2.a.a.x, 515f, var_2.x, -863f), global2.b.b, true), -4086i, vec2<u32>(u_input.b.x, var_0.x))), func_1()).a.c, all(vec4<bool>(global1[_wgslsmith_index_u32(global2.d.x, 26u)], global2.b.b, global2.a.c, global1[_wgslsmith_index_u32(u_input.b.x, 26u)])))), func_1(), Struct_2(func_1().a, Struct_1(global2.b.a, global2.b.b, all(vec3<bool>(true, true, true))), _wgslsmith_mod_i32(_wgslsmith_mod_i32(_wgslsmith_div_i32(global4.x, -28707i), _wgslsmith_sub_i32(global4.x, 2147483647i)), global2.c), vec2<u32>(u_input.b.x, ~65993u | global2.d.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec2_i32(select(var_1.zw, vec2<i32>(0i, countOneBits(global4.x)), true), var_1.wz, ~select(_wgslsmith_div_vec2_i32(vec2<i32>(var_1.x, global2.c), vec2<i32>(global2.c, var_1.x)), vec2<i32>(global4.x, -1i), false)), var_1.zy, global2.b.a.x, ~(~vec2<u32>(u_input.a.x >> (var_0.x % 32u), 67172u)));
}


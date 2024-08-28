struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: bool,
    b: bool,
    c: Struct_1,
    d: Struct_1,
    e: vec4<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<i32>,
    c: vec4<f32>,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<i32>,
    c: vec4<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 2>;

var<private> global1: vec4<f32> = vec4<f32>(1000f, 1034f, -393f, 1330f);

var<private> global2: Struct_2 = Struct_2(false, true, Struct_1(-583f), Struct_1(-952f), vec4<i32>(-7765i, -1i, -40626i, 0i));

var<private> global3: vec4<u32>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> vec4<f32> {
    global0 = array<bool, 2>();
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global2.d.a, _wgslsmith_f_op_f32(step(-204f, 321f)))))), _wgslsmith_f_op_f32(global2.c.a * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x)) * 676f)), -1267f, global1.x);
    let var_1 = Struct_2(false && all(select(vec4<bool>(false, global2.a, true, global2.a), vec4<bool>(true, true, false, global0[_wgslsmith_index_u32(0u, 2u)]), false)), !global2.b, global2.d, Struct_1(_wgslsmith_f_op_f32(trunc(global2.c.a))), min(firstLeadingBit(global2.e), vec4<i32>(-(~global2.e.x), reverseBits(global2.e.x), reverseBits(~(-2147483647i)), global2.e.x)));
    var var_2 = global2.c;
    let var_3 = var_1.d;
    return vec4<f32>(604f, _wgslsmith_f_op_f32(939f - 1274f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global1.x)) - var_0.x), global2.d.a, select(all(vec3<bool>(var_1.b, global0[_wgslsmith_index_u32(24278u, 2u)], false)), true, true))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-2025f - _wgslsmith_f_op_f32(abs(-320f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(-118f)))))), _wgslsmith_f_op_f32(min(950f, _wgslsmith_f_op_f32(floor(1007f)))));
}

fn func_2() -> vec3<i32> {
    let var_0 = Struct_1(1703f);
    let var_1 = reverseBits(-1i);
    let var_2 = global1.zz;
    global1 = _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(839f, global1.x, -259f, global1.x), _wgslsmith_f_op_vec4_f32(func_3())) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(1215f, -569f, 1000f, 1551f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1195f, -1346f, 1291f, var_0.a) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.c.a, var_0.a, global1.x, -1503f))))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global2.c.a), _wgslsmith_f_op_f32(f32(-1f) * -1000f), true))), 1027f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -720f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-1000f, var_2.x))) - 345f)));
    let var_3 = true;
    return _wgslsmith_mult_vec3_i32(abs(select(global2.e.yxy, ~vec3<i32>(var_1, var_1, -13666i), !(!vec3<bool>(false, false, var_3)))), _wgslsmith_div_vec3_i32(global2.e.wzx, abs(-(global2.e.wxx ^ vec3<i32>(global2.e.x, var_1, -4962i)))));
}

fn func_1(arg_0: f32, arg_1: vec4<bool>, arg_2: vec2<i32>) -> Struct_1 {
    let var_0 = _wgslsmith_mod_vec3_i32(_wgslsmith_mult_vec3_i32(_wgslsmith_sub_vec3_i32(func_2(), select(global2.e.xzy, vec3<i32>(1i, global2.e.x, global2.e.x) >> (global3.wwy % vec3<u32>(32u)), global2.a)), _wgslsmith_add_vec3_i32(global2.e.yyz, _wgslsmith_add_vec3_i32(-global2.e.xwx, global2.e.xyx << (vec3<u32>(global3.x, global3.x, u_input.a.x) % vec3<u32>(32u))))), firstLeadingBit(global2.e.yzx));
    global1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.d.a, arg_0, 1214f, global1.x) + vec4<f32>(arg_0, arg_0, arg_0, 1228f))), vec4<f32>(global1.x, _wgslsmith_f_op_f32(-573f - -1000f), global2.d.a, _wgslsmith_f_op_f32(-global2.c.a))))));
    let var_1 = Struct_1(-702f);
    global2 = Struct_2(arg_1.x, global0[_wgslsmith_index_u32(abs(countOneBits(1u)), 2u)], Struct_1(_wgslsmith_f_op_f32(-global2.c.a)), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 + global1.x) - 1276f) - arg_0)), ~_wgslsmith_clamp_vec4_i32(select(vec4<i32>(-2147483647i, 0i, global2.e.x, 33156i), global2.e, arg_1) >> (u_input.a % vec4<u32>(32u)), ~(global2.e ^ vec4<i32>(global2.e.x, -2147483647i, -57102i, global2.e.x)), vec4<i32>(global2.e.x, global2.e.x, countOneBits(1i), -5230i)));
    let var_2 = 467f;
    return global2.c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global2.d.a)) + 707f), _wgslsmith_f_op_f32(sign(global1.x)), global1.x))), vec3<f32>(1000f, global2.d.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(457f + global1.x) - global2.c.a)))));
    var var_1 = Struct_2(~(~global2.e.x) <= ~(-2147483647i), false, Struct_1(541f), func_1(_wgslsmith_f_op_f32(-1686f * global1.x), select(select(vec4<bool>(global0[_wgslsmith_index_u32(83912u, 2u)], false, false, global0[_wgslsmith_index_u32(73126u, 2u)]), !vec4<bool>(false, global0[_wgslsmith_index_u32(global3.x, 2u)], true, false), global0[_wgslsmith_index_u32(_wgslsmith_div_u32(global3.x, 4610u), 2u)]), select(vec4<bool>(global0[_wgslsmith_index_u32(u_input.b, 2u)], global2.b, global2.b, true), vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 2u)], global2.a, true, true), true), global0[_wgslsmith_index_u32(~u_input.b << (_wgslsmith_mod_u32(1u, u_input.a.x) % 32u), 2u)]), countOneBits(global2.e.wz) >> (_wgslsmith_sub_vec2_u32(u_input.a.xy, vec2<u32>(72164u, u_input.a.x)) % vec2<u32>(32u))), -(vec4<i32>(global2.e.x & -20684i, 38900i, 1i, ~global2.e.x) << (_wgslsmith_mult_vec4_u32(u_input.a, vec4<u32>(global3.x, 825u, global3.x, 25283u)) % vec4<u32>(32u))));
    var_1 = Struct_2(true | any(vec4<bool>(true, true | var_1.a, global0[_wgslsmith_index_u32(global3.x, 2u)], global2.b)), firstLeadingBit(~(-23226i)) >= var_1.e.x, func_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_vec4_f32(func_3()).x)), select(vec4<bool>(0i <= var_1.e.x, true, !var_1.b, var_1.b), select(select(vec4<bool>(var_1.b, global2.b, true, var_1.a), vec4<bool>(global0[_wgslsmith_index_u32(global3.x, 2u)], true, global2.a, global2.b), vec4<bool>(var_1.a, true, var_1.b, global2.b)), select(vec4<bool>(true, false, global0[_wgslsmith_index_u32(u_input.b, 2u)], global0[_wgslsmith_index_u32(1u, 2u)]), vec4<bool>(var_1.b, var_1.b, true, true), vec4<bool>(global2.a, true, var_1.b, global0[_wgslsmith_index_u32(4160u, 2u)])), select(vec4<bool>(var_1.a, global2.b, global0[_wgslsmith_index_u32(global3.x, 2u)], false), vec4<bool>(true, var_1.b, true, true), vec4<bool>(false, false, true, true))), select(!vec4<bool>(global0[_wgslsmith_index_u32(global3.x, 2u)], global0[_wgslsmith_index_u32(u_input.b, 2u)], true, false), !vec4<bool>(true, var_1.a, false, false), global0[_wgslsmith_index_u32(global3.x ^ u_input.b, 2u)])), vec2<i32>(_wgslsmith_sub_i32(global2.e.x | 1i, var_1.e.x), 1i)), func_1(_wgslsmith_f_op_f32(var_1.d.a * global1.x), !select(!vec4<bool>(global2.a, var_1.a, var_1.a, false), select(vec4<bool>(var_1.a, var_1.a, global0[_wgslsmith_index_u32(global3.x, 2u)], false), vec4<bool>(false, true, false, var_1.a), true), true), _wgslsmith_clamp_vec2_i32(~(~vec2<i32>(26153i, -17749i)), _wgslsmith_clamp_vec2_i32(~global2.e.yx, vec2<i32>(global2.e.x, var_1.e.x), min(global2.e.yy, var_1.e.yw)), max(func_2().zy, ~vec2<i32>(global2.e.x, global2.e.x)))), global2.e);
    var_0 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(select(global1.wzy, _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)), true)), global1.zwy));
    var var_2 = ~(~_wgslsmith_mod_u32(~reverseBits(29671u), ~u_input.a.x));
    let var_3 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_3()).x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(round(global2.c.a)), func_1(var_1.c.a, vec4<bool>(var_1.b, false, true, false), select(global2.e.zw, vec2<i32>(0i, var_1.e.x), vec2<bool>(var_1.b, true))).a) + global1.ww), -vec2<i32>(~_wgslsmith_add_i32(var_1.e.x, -1520i), global2.e.x), global2.e, 0u);
}


struct Struct_1 {
    a: vec4<i32>,
    b: vec2<i32>,
    c: i32,
    d: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
    c: Struct_1,
    d: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: u32,
    d: u32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec2<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: vec4<bool> = vec4<bool>(false, false, true, true);

var<private> global2: array<Struct_2, 18>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_1(arg_0: vec3<f32>, arg_1: Struct_2) -> Struct_1 {
    var var_0 = vec3<f32>(1000f, _wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(-arg_0.x));
    let var_1 = u_input.d;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.x - 657f), arg_0.x))));
    global2 = array<Struct_2, 18>();
    var_0 = arg_0;
    return arg_1.a;
}

fn func_3(arg_0: u32, arg_1: bool, arg_2: Struct_1) -> bool {
    let var_0 = ~((~(vec4<u32>(6936u, 1u, 0u, arg_0) | vec4<u32>(u_input.b, 81509u, arg_0, arg_0)) | vec4<u32>(4294967295u, arg_0, 0u, select(arg_0, 44616u, true))) >> (~firstLeadingBit(firstLeadingBit(vec4<u32>(0u, 4294967295u, u_input.d, arg_0))) % vec4<u32>(32u)));
    var var_1 = !select(vec4<bool>(arg_1, true, false, !select(false, arg_1, global1.x)), select(select(vec4<bool>(false, false, arg_1, global1.x), select(vec4<bool>(false, arg_1, true, true), vec4<bool>(global1.x, arg_2.d.x, arg_2.d.x, arg_2.d.x), vec4<bool>(false, arg_2.d.x, false, true)), !vec4<bool>(false, true, global1.x, false)), select(!vec4<bool>(true, true, arg_1, true), !vec4<bool>(arg_2.d.x, global1.x, false, true), select(vec4<bool>(false, arg_2.d.x, true, false), vec4<bool>(arg_2.d.x, true, arg_1, arg_2.d.x), vec4<bool>(arg_2.d.x, arg_2.d.x, true, false))), select(vec4<bool>(arg_2.d.x, arg_1, global1.x, false), vec4<bool>(true, global1.x, arg_1, true), false)), select(!select(vec4<bool>(false, global1.x, false, true), vec4<bool>(arg_1, arg_1, arg_2.d.x, global1.x), arg_1), select(vec4<bool>(arg_1, global1.x, false, global1.x), !vec4<bool>(false, arg_1, global1.x, arg_2.d.x), select(vec4<bool>(arg_2.d.x, arg_1, false, arg_2.d.x), vec4<bool>(true, arg_1, arg_1, true), arg_1)), true));
    var_1 = !select(vec4<bool>(arg_2.d.x, all(vec3<bool>(false, true, true)), arg_1, false), select(vec4<bool>(global1.x, false, true, !global1.x), select(vec4<bool>(global1.x, false, false, var_1.x), !vec4<bool>(arg_1, true, arg_1, true), 28447u > u_input.a.x), true), vec4<bool>(any(vec3<bool>(arg_2.d.x, arg_1, arg_1)), true, _wgslsmith_add_i32(62171i, u_input.e.x) == _wgslsmith_mod_i32(-1i, 42615i), false));
    global1 = !(!(!select(vec4<bool>(var_1.x, arg_1, var_1.x, var_1.x), !vec4<bool>(var_1.x, false, false, global1.x), !vec4<bool>(false, arg_1, arg_1, false))));
    var var_2 = _wgslsmith_dot_vec4_u32((_wgslsmith_mult_vec4_u32(select(vec4<u32>(12065u, var_0.x, 42652u, 31036u), vec4<u32>(var_0.x, 63697u, arg_0, 91760u), vec4<bool>(false, true, arg_1, var_1.x)), vec4<u32>(4294967295u, arg_0, arg_0, u_input.a.x)) | var_0) << ((firstTrailingBit(reverseBits(var_0)) ^ ~select(var_0, var_0, vec4<bool>(true, true, false, true))) % vec4<u32>(32u)), var_0);
    return global1.x;
}

fn func_4(arg_0: i32, arg_1: bool) -> i32 {
    var var_0 = Struct_2(Struct_1(select(~vec4<i32>(0i, 2147483647i, -42392i, arg_0), vec4<i32>(min(-28911i, 2943i), _wgslsmith_mod_i32(u_input.e.x, 31295i), 1i, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.e.x, u_input.e.x), vec2<i32>(-2147483647i, 8223i))), false), _wgslsmith_sub_vec2_i32(vec2<i32>(19272i, 1i), -(u_input.e.zw | vec2<i32>(arg_0, arg_0))), u_input.e.x, func_1(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-298f, -103f, 1491f))), Struct_2(func_1(vec3<f32>(-279f, 1198f, -1342f), Struct_2(Struct_1(u_input.e, u_input.e.xw, arg_0, vec2<bool>(arg_1, true)), vec4<u32>(27265u, 96482u, u_input.c, u_input.c), Struct_1(vec4<i32>(u_input.e.x, u_input.e.x, arg_0, arg_0), u_input.e.xw, -32033i, global1.wz), false)), vec4<u32>(u_input.b, u_input.a.x, 4294967295u, u_input.c), Struct_1(u_input.e, vec2<i32>(22208i, 39414i), u_input.e.x, global1.zx), false)).d), ~vec4<u32>(1u, 20600u, ~abs(4294967295u), 34040u), Struct_1(-(~(-u_input.e)), vec2<i32>(arg_0, firstTrailingBit(~u_input.e.x)), u_input.e.x, vec2<bool>(arg_1, func_3(abs(23732u), false, func_1(vec3<f32>(-710f, -178f, 1190f), global2[_wgslsmith_index_u32(4294967295u, 18u)])))), !(!(!global1.x)));
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -1101f);
    global1 = vec4<bool>(true, !arg_1, true, true);
    let var_2 = (vec3<u32>(var_0.b.x, firstTrailingBit(1u), abs(_wgslsmith_sub_u32(34701u, 0u))) | ~(~(~vec3<u32>(5698u, 0u, 33306u)))) | vec3<u32>(var_0.b.x, _wgslsmith_mult_u32(var_0.b.x, firstTrailingBit(u_input.b) ^ 1u), 127750u);
    global0 = global1.x;
    return _wgslsmith_add_i32(_wgslsmith_sub_i32((-18410i ^ min(var_0.c.c, u_input.e.x)) ^ 18732i, abs(-26741i)), 37686i);
}

fn func_2(arg_0: bool) -> vec2<bool> {
    global0 = abs(-5536i) > func_4(-39061i, !func_3(u_input.c, func_1(vec3<f32>(1136f, 287f, 775f), Struct_2(Struct_1(vec4<i32>(u_input.e.x, u_input.e.x, -2147483647i, u_input.e.x), u_input.e.zz, u_input.e.x, vec2<bool>(true, arg_0)), vec4<u32>(u_input.c, 23133u, 55325u, u_input.b), Struct_1(u_input.e, vec2<i32>(u_input.e.x, u_input.e.x), u_input.e.x, vec2<bool>(global1.x, false)), false)).d.x, func_1(vec3<f32>(1470f, -1622f, -645f), global2[_wgslsmith_index_u32(12916u, 18u)])));
    var var_0 = global2[_wgslsmith_index_u32(~u_input.c, 18u)];
    global0 = func_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-916f, -294f, -110f) * _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-2481f, 352f, -279f), vec3<f32>(1034f, 617f, -415f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-1000f, -656f, -1806f), vec3<f32>(-1050f, 435f, -626f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-761f, 1243f, 1000f)))), global2[_wgslsmith_index_u32(0u, 18u)]).d.x && arg_0;
    return vec2<bool>(global1.x, select(true, any(!(!vec2<bool>(var_0.a.d.x, global1.x))), true));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -2147483647i;
    var var_1 = func_1(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1542f, 1139f, 368f), vec3<f32>(589f, 476f, -419f)))))))), global2[_wgslsmith_index_u32(u_input.d, 18u)]);
    global0 = global1.x;
    global0 = !(!any(select(func_2(false), vec2<bool>(true, true), all(global1.xzy))));
    var var_2 = -func_1(vec3<f32>(_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(186f * 191f)), -925f, 155f), global2[_wgslsmith_index_u32(807u, 18u)]).c;
    var_1 = Struct_1(~(-var_1.a), ~_wgslsmith_clamp_vec2_i32(u_input.e.zx, -vec2<i32>(14888i, 0i), countOneBits(vec2<i32>(var_1.a.x, 1i))), _wgslsmith_dot_vec2_i32(vec2<i32>(func_1(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(792f, 544f, -603f))), global2[_wgslsmith_index_u32(29339u & u_input.b, 18u)]).c, reverseBits(u_input.e.x)), u_input.e.xx), !global1.ww);
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mult_u32(countOneBits(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d, 22840u, u_input.d, u_input.a.x), vec4<u32>(10199u, u_input.b, 1u, u_input.c))), ~_wgslsmith_clamp_u32(4294967295u, 1u, 0u)), abs(u_input.c) >> (u_input.d % 32u), _wgslsmith_div_vec2_i32(_wgslsmith_div_vec2_i32(-vec2<i32>(var_0, u_input.e.x) | select(vec2<i32>(-1274i, var_0), vec2<i32>(var_0, 1i), vec2<bool>(var_1.d.x, false)), ~(vec2<i32>(u_input.e.x, var_0) << (vec2<u32>(u_input.b, u_input.d) % vec2<u32>(32u)))), _wgslsmith_mod_vec2_i32(vec2<i32>(var_1.b.x, var_1.a.x), -vec2<i32>(-25041i, var_0))), -var_0);
}


struct Struct_1 {
    a: u32,
    b: vec2<i32>,
    c: f32,
    d: i32,
    e: bool,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec2<bool>,
    d: f32,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<i32>,
}

struct Struct_4 {
    a: i32,
    b: Struct_2,
    c: i32,
    d: Struct_3,
    e: i32,
}

struct Struct_5 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5 = Struct_5(vec4<bool>(false, true, false, false));

var<private> global1: Struct_3 = Struct_3(Struct_1(40780u, vec2<i32>(6033i, -18520i), -392f, -35745i, true), vec2<i32>(27896i, 54635i));

var<private> global2: array<vec4<bool>, 28> = array<vec4<bool>, 28>(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, false));

var<private> global3: Struct_4;

var<private> global4: vec4<bool>;

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: bool, arg_1: vec4<f32>) -> vec2<f32> {
    let var_0 = select(any(!vec3<bool>(global0.a.x, arg_0, arg_0)) | true, -global3.c <= 27149i, !global4.x);
    let var_1 = vec2<f32>(global1.a.c, _wgslsmith_f_op_f32(global3.d.a.c - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-306f + 341f)))));
    global0 = Struct_5(select(select(select(vec4<bool>(false, global4.x, true, false), vec4<bool>(global3.d.a.e, false, var_0, global1.a.e), true), global0.a, any(select(global0.a.zw, global0.a.yz, vec2<bool>(true, global0.a.x)))), select(!select(vec4<bool>(global0.a.x, true, true, global1.a.e), global2[_wgslsmith_index_u32(4294967295u, 28u)], global0.a.x), select(vec4<bool>(true, false, var_0, false), global0.a, global0.a), vec4<bool>(all(vec4<bool>(global3.d.a.e, arg_0, var_0, false)), global1.a.b.x == global3.b.b.b.x, global3.b.b.e, false)), true));
    global2 = array<vec4<bool>, 28>();
    global3 = Struct_4(global1.a.d, global3.b, i32(-1i) * -(~0i), global3.d, global3.c);
    return _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(630f, global3.d.a.c)), var_1, false));
}

fn func_2(arg_0: vec4<f32>, arg_1: Struct_5, arg_2: bool) -> Struct_1 {
    global3 = Struct_4(global3.c, Struct_2(-2147483647i, global1.a, global3.b.c, global1.a.c, global3.d.a), -_wgslsmith_mod_i32(1i, min(_wgslsmith_dot_vec3_i32(vec3<i32>(-40839i, -12443i, global3.b.b.b.x), vec3<i32>(87512i, global3.c, global3.d.a.b.x)), -43880i & global1.b.x)), global3.d, -global1.a.b.x);
    global1 = Struct_3(global1.a, _wgslsmith_mult_vec2_i32(global1.b, abs(vec2<i32>(~50343i, 1i))));
    var var_0 = false;
    let var_1 = -1991f;
    let var_2 = _wgslsmith_f_op_vec2_f32(func_3(!global1.a.e, vec4<f32>(global1.a.c, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -964f))), global1.a.c, _wgslsmith_f_op_f32(step(-229f, _wgslsmith_f_op_f32(global1.a.c - _wgslsmith_f_op_f32(-520f - 852f)))))));
    return Struct_1(global1.a.a, global1.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_vec2_f32(func_3(global1.a.e, arg_0)).x - 987f), ~global3.d.a.b.x, ~11378u != ~(~global3.d.a.a ^ 4294967295u));
}

fn func_1() -> Struct_5 {
    let var_0 = Struct_4(1i, Struct_2(~1i, global1.a, select(global0.a.wz, vec2<bool>(any(vec4<bool>(true, true, global3.b.b.e, global3.d.a.e)), false), !global3.b.c), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global3.d.a.c), _wgslsmith_f_op_f32(global1.a.c - global1.a.c))), func_2(vec4<f32>(global3.b.d, _wgslsmith_f_op_f32(select(global3.d.a.c, 673f, global0.a.x)), _wgslsmith_f_op_f32(floor(global1.a.c)), _wgslsmith_f_op_f32(-global3.b.e.c)), Struct_5(global2[_wgslsmith_index_u32(abs(u_input.a.x), 28u)]), global3.d.a.e)), _wgslsmith_clamp_i32(i32(-1i) * -global1.b.x, ~global3.d.b.x | ~global3.a, global3.e) >> (_wgslsmith_mult_u32(reverseBits(reverseBits(51235u)), firstLeadingBit(19609u)) % 32u), Struct_3(Struct_1(firstTrailingBit(_wgslsmith_mod_u32(74053u, 4294967295u)), vec2<i32>(global3.b.e.b.x << (1u % 32u), -1349i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1314f) + global3.d.a.c), global1.b.x, true), vec2<i32>(global3.e, abs(firstTrailingBit(-13761i)))), -36684i);
    global0 = Struct_5(vec4<bool>(func_2(_wgslsmith_div_vec4_f32(vec4<f32>(-1294f, -692f, 495f, var_0.b.e.c), vec4<f32>(136f, global3.b.b.c, 971f, global1.a.c)), Struct_5(global0.a), any(global4.yzz)).c > _wgslsmith_f_op_f32(f32(-1f) * -1218f), any(vec3<bool>(false, select(global1.a.e, global3.d.a.e, global4.x), true)), true, global1.a.c > _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.b.e.c, -678f))));
    global2 = array<vec4<bool>, 28>();
    global4 = !select(global2[_wgslsmith_index_u32(func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.b.b.c, 181f, global3.d.a.c, global1.a.c)), Struct_5(global0.a), any(vec4<bool>(false, true, var_0.d.a.e, true))).a, 28u)], select(!select(vec4<bool>(var_0.b.c.x, true, global3.b.b.e, false), vec4<bool>(global1.a.e, global0.a.x, true, global4.x), var_0.b.c.x), !select(global0.a, vec4<bool>(global4.x, global0.a.x, false, global1.a.e), false), select(select(global0.a, global2[_wgslsmith_index_u32(39994u, 28u)], global3.d.a.e), vec4<bool>(global1.a.e, false, true, global1.a.e), true == global4.x)), !global2[_wgslsmith_index_u32(0u, 28u)]);
    var var_1 = (i32(-1i) * -_wgslsmith_mult_i32(-var_0.b.e.d, 53430i)) >> (~u_input.a.x % 32u);
    return Struct_5(vec4<bool>(global3.d.a.e, any(vec2<bool>(!var_0.b.c.x, true)), true, global3.d.a.e));
}

fn func_4(arg_0: Struct_5, arg_1: vec2<f32>, arg_2: vec4<i32>, arg_3: Struct_2) -> Struct_5 {
    let var_0 = -vec3<i32>(arg_2.x, arg_2.x, -(47364i >> (1u % 32u))) >> (~(u_input.a.wwz << ((~vec3<u32>(u_input.a.x, arg_3.b.a, 29519u) >> (~u_input.a.wzy % vec3<u32>(32u))) % vec3<u32>(32u))) % vec3<u32>(32u));
    var var_1 = global3.d;
    global2 = array<vec4<bool>, 28>();
    global1 = global3.d;
    var var_2 = -964f;
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_4(func_1(), _wgslsmith_f_op_vec2_f32(vec2<f32>(global1.a.c, global1.a.c) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, global1.a.c)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.a.c, 363f))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.a.c, 266f) * vec2<f32>(-565f, -1148f)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-231f, global3.d.a.c), vec2<f32>(-700f, -1000f), vec2<bool>(false, true)))))), vec4<i32>((global1.b.x >> (~4294967295u % 32u)) >> (39989u % 32u), global3.a, global3.b.a, -7086i), global3.b);
    let var_0 = false;
    let var_1 = global3.b;
    var var_2 = _wgslsmith_f_op_vec2_f32(vec2<f32>(global3.d.a.c, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.d.a.c) + global3.b.e.c), global3.b.d)) * vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(171f - _wgslsmith_f_op_f32(floor(-785f)))), global3.b.d));
    var var_3 = _wgslsmith_sub_vec2_i32(reverseBits(_wgslsmith_mod_vec2_i32(global1.a.b, abs(var_1.b.b))) & vec2<i32>(global1.a.d, 1i), abs(firstTrailingBit(reverseBits(max(var_1.e.b, vec2<i32>(57185i, 1875i))))));
    let var_4 = select(~(-_wgslsmith_mult_i32(1i, global1.a.d)), countOneBits(-8092i), true);
    global4 = vec4<bool>(func_1().a.x, !global0.a.x, select(true, global0.a.x, false | func_2(vec4<f32>(-657f, -355f, -735f, global3.b.d), Struct_5(vec4<bool>(true, global1.a.e, true, false)), global1.a.c >= -277f).e), true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(687f, global1.a.c, -538f)) * vec3<f32>(-1383f, var_1.d, var_1.b.c)))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-global3.b.b.c), _wgslsmith_f_op_f32(-1124f + var_2.x), -1934f))), vec4<i32>(abs(reverseBits(reverseBits(var_4))), _wgslsmith_dot_vec2_i32(global3.b.e.b, ~(vec2<i32>(1i, -474i) >> (u_input.a.yx % vec2<u32>(32u)))), global3.c, func_2(vec4<f32>(_wgslsmith_f_op_f32(select(1000f, 118f, true)), -1164f, _wgslsmith_f_op_f32(-1352f + var_2.x), global1.a.c), Struct_5(vec4<bool>(var_1.e.e, global4.x, true, true)), false).d), global1.b.x);
}


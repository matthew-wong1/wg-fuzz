struct Struct_1 {
    a: vec3<bool>,
    b: f32,
    c: vec3<f32>,
    d: vec2<f32>,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<bool>,
    c: f32,
    d: Struct_2,
}

struct Struct_4 {
    a: u32,
}

struct Struct_5 {
    a: bool,
    b: Struct_3,
    c: f32,
    d: Struct_1,
    e: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 1> = array<f32, 1>(-1599f);

var<private> global1: Struct_4;

var<private> global2: array<vec3<i32>, 15> = array<vec3<i32>, 15>(vec3<i32>(-11477i, 48826i, 32691i), vec3<i32>(2147483647i, 79028i, 5875i), vec3<i32>(2147483647i, 22288i, -9388i), vec3<i32>(70425i, 1876i, 0i), vec3<i32>(i32(-2147483648), 50367i, -1i), vec3<i32>(0i, i32(-2147483648), i32(-2147483648)), vec3<i32>(i32(-2147483648), -36131i, -1i), vec3<i32>(-1i, 4221i, 1i), vec3<i32>(-4124i, 0i, -33715i), vec3<i32>(i32(-2147483648), -1i, 1i), vec3<i32>(i32(-2147483648), 0i, 1i), vec3<i32>(3397i, i32(-2147483648), 14881i), vec3<i32>(37105i, -18124i, 5487i), vec3<i32>(14253i, 2147483647i, -37668i), vec3<i32>(i32(-2147483648), 0i, 3895i));

var<private> global3: array<u32, 1>;

var<private> global4: Struct_2 = Struct_2(Struct_1(vec3<bool>(true, true, true), 123f, vec3<f32>(726f, 544f, 1032f), vec2<f32>(206f, -514f), false));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_1() -> i32 {
    global1 = Struct_4(global1.a);
    return -1i;
}

fn func_3(arg_0: i32) -> f32 {
    var var_0 = i32(-1i) * -min(~(-4172i ^ u_input.d.x), _wgslsmith_sub_i32(abs(u_input.d.x), _wgslsmith_sub_i32(-2147483647i, u_input.d.x)));
    var var_1 = global4.a;
    var var_2 = Struct_4(u_input.a);
    var var_3 = ~(~abs(~global2[_wgslsmith_index_u32(global1.a, 15u)]) ^ (_wgslsmith_mod_vec3_i32(~global2[_wgslsmith_index_u32(8294u, 15u)], ~vec3<i32>(-1i, u_input.d.x, 66367i)) << (abs(vec3<u32>(global1.a, global1.a, 0u)) % vec3<u32>(32u))));
    let var_4 = ~(~21474u);
    return _wgslsmith_f_op_f32(max(var_1.b, -1000f));
}

fn func_2(arg_0: f32, arg_1: vec3<bool>, arg_2: Struct_4) -> Struct_3 {
    let var_0 = -862f;
    var var_1 = _wgslsmith_add_u32(global1.a, arg_2.a);
    let var_2 = abs(_wgslsmith_add_vec3_u32(~vec3<u32>(global3[_wgslsmith_index_u32(10209u, 1u)] ^ global3[_wgslsmith_index_u32(1u, 1u)], max(94872u, arg_2.a), min(30305u, arg_2.a)), _wgslsmith_sub_vec3_u32(~vec3<u32>(36580u, 4294967295u, 8799u), firstTrailingBit(vec3<u32>(arg_2.a, global3[_wgslsmith_index_u32(global1.a, 1u)], 5646u))) >> (_wgslsmith_mult_vec3_u32(vec3<u32>(arg_2.a, global1.a, 410u) | vec3<u32>(global3[_wgslsmith_index_u32(arg_2.a, 1u)], 0u, arg_2.a), min(vec3<u32>(0u, 0u, 42562u), vec3<u32>(arg_2.a, u_input.a, 59219u))) % vec3<u32>(32u))));
    return Struct_3(Struct_2(global4.a), !vec2<bool>(arg_1.x, all(!vec4<bool>(true, global4.a.e, global4.a.e, false))), _wgslsmith_f_op_f32(func_3(~5447i)), Struct_2(Struct_1(select(arg_1, global4.a.a, global4.a.a), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0), 447f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, global4.a.b, -1048f)), _wgslsmith_f_op_vec2_f32(-global4.a.c.yz), any(!global4.a.a))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(global4.a.a.yx, vec2<bool>(select(global4.a.e, false, !global4.a.a.x), any(global4.a.a.yy)), vec2<bool>(false, any(!(!vec2<bool>(global4.a.e, global4.a.a.x)))));
    global0 = array<f32, 1>();
    let var_1 = _wgslsmith_f_op_f32(round(-609f));
    let var_2 = func_1();
    var var_3 = -208f;
    var var_4 = Struct_5(true, func_2(-1752f, select(vec3<bool>(any(vec3<bool>(var_0.x, global4.a.a.x, var_0.x)), !global4.a.a.x, true), global4.a.a, global4.a.a), Struct_4(37292u)), -1000f, func_2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(exp2(var_1)))), !vec3<bool>(func_2(-191f, global4.a.a, Struct_4(69476u)).d.a.a.x, 2147483647i >= u_input.d.x, false), Struct_4(u_input.b << (~40341u % 32u))).d.a, 1u);
    global4 = func_2(_wgslsmith_f_op_f32(534f - _wgslsmith_f_op_f32(ceil(-1154f))), global4.a.a, Struct_4(var_4.e)).d;
    global4 = var_4.b.d;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(vec2<f32>(global4.a.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(var_2)) * _wgslsmith_f_op_f32(exp2(var_1)))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(455f, -886f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1290f, -1670f, 394f, global0[_wgslsmith_index_u32(var_4.e, 1u)]))) + vec4<f32>(_wgslsmith_f_op_f32(exp2(global0[_wgslsmith_index_u32(52102u, 1u)])), global0[_wgslsmith_index_u32(48364u, 1u)], _wgslsmith_f_op_f32(min(global0[_wgslsmith_index_u32(1u, 1u)], var_1)), _wgslsmith_f_op_f32(max(-1000f, var_1)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-953f, var_4.d.b, global4.a.b, var_4.b.c) + vec4<f32>(-320f, 1922f, -379f, 1335f))) - _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_4.b.c, -202f, 853f, -186f)))))), -1i);
}


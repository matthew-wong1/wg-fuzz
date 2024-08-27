struct Struct_1 {
    a: vec3<u32>,
    b: vec4<u32>,
    c: vec3<u32>,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_3,
}

struct Struct_5 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(Struct_3(Struct_1(vec3<u32>(39979u, 4294967295u, 31933u), vec4<u32>(49939u, 4294967295u, 4294967295u, 0u), vec3<u32>(46294u, 1u, 111712u))), Struct_3(Struct_1(vec3<u32>(4294967295u, 1u, 47434u), vec4<u32>(0u, 6796u, 12575u, 1u), vec3<u32>(4294967295u, 46818u, 4294967295u))));

var<private> global1: array<u32, 13> = array<u32, 13>(97181u, 0u, 19165u, 1u, 33065u, 1u, 52812u, 39435u, 44642u, 74470u, 0u, 32647u, 11261u);

var<private> global2: vec2<bool> = vec2<bool>(true, true);

var<private> global3: array<i32, 20> = array<i32, 20>(-51906i, 35394i, 18411i, -1i, 0i, 1i, i32(-2147483648), 35888i, 2147483647i, 46625i, 0i, 11664i, 2779i, 24805i, 18652i, i32(-2147483648), i32(-2147483648), 2147483647i, -1i, 42988i);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_2() -> bool {
    var var_0 = Struct_2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1289f)) * 1f) * _wgslsmith_f_op_f32(max(-329f, 1f))), _wgslsmith_f_op_f32(ceil(-565f)))));
    let var_1 = global3[_wgslsmith_index_u32(_wgslsmith_add_u32(~(~global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(select(vec4<u32>(1u, 1u, 76676u, 4294967295u), vec4<u32>(global1[_wgslsmith_index_u32(12110u, 13u)], 1u, 16973u, 4294967295u), global2.x), vec4<u32>(4294967295u, global0.a.a.a.x, global0.a.a.a.x, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b.x, 13u)], 13u)]) << (vec4<u32>(global0.b.a.c.x, 48380u, global1[_wgslsmith_index_u32(1u, 13u)], 1u) % vec4<u32>(32u))), 13u)]), _wgslsmith_mult_u32(~_wgslsmith_add_u32(~global0.a.a.c.x, min(1u, 10368u)), ~global0.a.a.a.x)), 20u)];
    var var_2 = firstTrailingBit(81104u);
    var_0 = Struct_2(var_0.a);
    global0 = Struct_4(Struct_3(global0.a.a), Struct_3(Struct_1(~u_input.a.zxw, ~(~vec4<u32>(0u, 34566u, 0u, u_input.b.x)), vec3<u32>(49767u, ~u_input.a.x, ~u_input.a.x))));
    return global2.x;
}

fn func_3(arg_0: i32) -> vec3<bool> {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(111f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(972f - 130f)))))));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0), var_0), _wgslsmith_f_op_f32(-var_0), !(global2.x && false))), 150f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)))) - var_0));
    let var_2 = vec4<bool>(func_2(), true & !any(vec4<bool>(global2.x, global2.x, global2.x, global2.x)), global2.x, select(global2.x, false, !func_2()));
    global2 = vec2<bool>(!func_2(), any(!var_2));
    global2 = select(select(!(!var_2.xw), select(var_2.yy, var_2.xy, !var_2.xw), var_2.zw), vec2<bool>(var_2.x, global2.x), vec2<bool>(true | (any(vec4<bool>(global2.x, false, var_2.x, false)) || all(vec4<bool>(var_2.x, true, true, global2.x))), true));
    return vec3<bool>(all(!var_2.ywx), all(!vec2<bool>(var_2.x == false, var_2.x)), !any(select(vec3<bool>(global2.x, false, global2.x), vec3<bool>(true, global2.x, global2.x), select(vec3<bool>(global2.x, false, var_2.x), var_2.zzy, var_2.x))));
}

fn func_4(arg_0: vec3<bool>, arg_1: vec4<bool>, arg_2: f32, arg_3: i32) -> bool {
    let var_0 = Struct_4(Struct_3(global0.a.a), Struct_3(Struct_1(vec3<u32>(u_input.a.x, 0u, _wgslsmith_sub_u32(25931u, 1u)), u_input.a, _wgslsmith_mult_vec3_u32(u_input.a.zwz, vec3<u32>(global1[_wgslsmith_index_u32(4294967295u, 13u)], u_input.a.x, 4294967295u)) >> (~vec3<u32>(global0.a.a.c.x, global1[_wgslsmith_index_u32(15046u, 13u)], 1u) % vec3<u32>(32u)))));
    let var_1 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(arg_2)), -671f)), 614f, arg_1.x))));
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2, 509f, -458f))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 448f, arg_2)) + vec3<f32>(arg_2, -2759f, -1378f)))), true)) - _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1534f, arg_2, 1477f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1237f, var_1.a, arg_2) + vec3<f32>(-142f, 722f, 1000f)) * _wgslsmith_f_op_vec3_f32(max(vec3<f32>(arg_2, arg_2, var_1.a), vec3<f32>(346f, 922f, arg_2))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.a, 320f, -991f) * vec3<f32>(-1306f, 624f, var_1.a)) * vec3<f32>(var_1.a, arg_2, 1606f)), vec3<f32>(arg_2, _wgslsmith_f_op_f32(f32(-1f) * -1000f), arg_2))));
    global3 = array<i32, 20>();
    var var_3 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(var_2.zx - _wgslsmith_f_op_vec2_f32(exp2(var_2.yy))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(arg_2, _wgslsmith_f_op_f32(floor(arg_2))), var_2.xx))), false));
    return false;
}

fn func_1(arg_0: bool) -> vec2<bool> {
    var var_0 = !select(!vec4<bool>(true, global2.x, true, func_2()), vec4<bool>(arg_0, func_4(func_3(global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(39090u, 13u)], 20u)]), !vec4<bool>(false, arg_0, false, true), -732f, -51040i), !any(vec3<bool>(arg_0, global2.x, global2.x)), global2.x & !arg_0), all(!(!vec2<bool>(arg_0, arg_0))));
    var var_1 = _wgslsmith_f_op_f32(floor(1f));
    global1 = array<u32, 13>();
    let var_2 = Struct_4(Struct_3(global0.b.a), Struct_3(Struct_1(global0.b.a.b.yxy, _wgslsmith_div_vec4_u32(~vec4<u32>(38350u, 14242u, global1[_wgslsmith_index_u32(0u, 13u)], global0.b.a.b.x), global0.a.a.b), ~u_input.a.xwy)));
    global0 = var_2;
    return vec2<bool>(global2.x, true);
}

fn func_5(arg_0: vec3<bool>, arg_1: vec2<u32>, arg_2: vec2<bool>) -> bool {
    global1 = array<u32, 13>();
    global2 = arg_0.zz;
    let var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1497f, _wgslsmith_f_op_f32(539f - _wgslsmith_f_op_f32(f32(-1f) * -1165f))));
    global2 = !arg_0.zy;
    let var_1 = global0.b.a;
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<u32, 13>();
    let var_0 = vec3<bool>(true, _wgslsmith_f_op_f32(round(302f)) <= -657f, func_5(vec3<bool>(global2.x, true, false && any(vec2<bool>(global2.x, true))), firstLeadingBit(vec2<u32>(min(global1[_wgslsmith_index_u32(4294967295u, 13u)], global0.a.a.b.x), 4294967295u)), func_1(global2.x)));
    global2 = select(!var_0.xz, vec2<bool>(func_2() | !func_1(var_0.x).x, global2.x), var_0.yy);
    let var_1 = firstTrailingBit(min(_wgslsmith_mult_vec3_i32(_wgslsmith_mod_vec3_i32(min(vec3<i32>(0i, 14548i, 27812i), vec3<i32>(1i, global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 13u)], 13u)], 20u)], 1i)), -vec3<i32>(global3[_wgslsmith_index_u32(4294967295u, 20u)], global3[_wgslsmith_index_u32(89574u, 20u)], 15562i)), _wgslsmith_sub_vec3_i32(max(vec3<i32>(global3[_wgslsmith_index_u32(32487u, 20u)], global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(8780u, 13u)], 13u)], 20u)], 0i), vec3<i32>(2147483647i, global3[_wgslsmith_index_u32(u_input.b.x, 20u)], global3[_wgslsmith_index_u32(10124u, 20u)])), vec3<i32>(global3[_wgslsmith_index_u32(4294967295u, 20u)], -1i, 0i) >> (vec3<u32>(1u, global1[_wgslsmith_index_u32(u_input.b.x, 13u)], 15542u) % vec3<u32>(32u)))), ~(~(~vec3<i32>(global3[_wgslsmith_index_u32(0u, 20u)], -43112i, global3[_wgslsmith_index_u32(u_input.b.x, 20u)])))));
    var var_2 = 76852u;
    global0 = Struct_4(Struct_3(Struct_1(vec3<u32>(global0.b.a.b.x, ~0u, u_input.b.x << (68314u % 32u)), select(~u_input.a, ~vec4<u32>(79422u, 34887u, 1u, 0u), false), vec3<u32>(20434u, ~global0.b.a.b.x, u_input.a.x))), global0.b);
    global1 = array<u32, 13>();
    var var_3 = 565f;
    let x = u_input.a;
    s_output = StorageBuffer(~global0.b.a.c.x);
}


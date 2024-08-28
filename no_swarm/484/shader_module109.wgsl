struct Struct_1 {
    a: f32,
    b: vec4<f32>,
    c: bool,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: i32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 17>;

var<private> global1: array<i32, 26> = array<i32, 26>(11002i, 17909i, -6664i, 35119i, -1i, -24550i, 19269i, -1i, -1i, 1i, 2147483647i, -19718i, 0i, -1i, 1i, 2147483647i, -6130i, -12260i, 14947i, 1i, 20216i, -34247i, 2147483647i, -1590i, 41351i, -1i);

var<private> global2: array<bool, 19> = array<bool, 19>(false, true, true, false, true, true, false, true, true, true, true, true, false, true, false, false, true, false, false);

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3() -> vec3<bool> {
    var var_0 = 67222u;
    let var_1 = all(!select(vec3<bool>(true, true, false), select(vec3<bool>(global2[_wgslsmith_index_u32(1u, 19u)], global2[_wgslsmith_index_u32(17111u, 19u)], global2[_wgslsmith_index_u32(415u, 19u)]), vec3<bool>(true, true, true), global2[_wgslsmith_index_u32(u_input.c, 19u)]), vec3<bool>(true, false, global2[_wgslsmith_index_u32(u_input.c, 19u)]))) | global2[_wgslsmith_index_u32(~(1u ^ u_input.c), 19u)];
    var var_2 = _wgslsmith_sub_vec3_i32(countOneBits(vec3<i32>(global1[_wgslsmith_index_u32(15181u, 26u)], _wgslsmith_div_i32(-2147483647i, 1i), firstLeadingBit(u_input.a))), vec3<i32>(-1i) * -(~vec3<i32>(u_input.a, u_input.a, u_input.a))) << (countOneBits(~abs(~vec3<u32>(u_input.c, u_input.c, u_input.c))) % vec3<u32>(32u));
    let var_3 = u_input.c << (5452u % 32u);
    let var_4 = var_1;
    return vec3<bool>(var_1, true, all(select(vec3<bool>(!var_1, any(vec3<bool>(global2[_wgslsmith_index_u32(71594u, 19u)], var_1, var_1)), any(vec4<bool>(true, true, false, false))), select(!vec3<bool>(var_4, false, true), !vec3<bool>(global2[_wgslsmith_index_u32(var_3, 19u)], global2[_wgslsmith_index_u32(1u, 19u)], false), var_4), var_4 | true)));
}

fn func_2(arg_0: f32, arg_1: vec3<i32>, arg_2: vec3<i32>) -> bool {
    let var_0 = Struct_2(select(select(select(vec3<bool>(false, global2[_wgslsmith_index_u32(0u, 19u)], global2[_wgslsmith_index_u32(u_input.c, 19u)]), !vec3<bool>(global2[_wgslsmith_index_u32(u_input.c, 19u)], false, true), vec3<bool>(global2[_wgslsmith_index_u32(1u, 19u)], false, global2[_wgslsmith_index_u32(29137u, 19u)])), vec3<bool>(!global2[_wgslsmith_index_u32(4294967295u, 19u)], true, !global2[_wgslsmith_index_u32(u_input.c, 19u)]), vec3<bool>(arg_2.x >= 23049i, select(true, global2[_wgslsmith_index_u32(227u, 19u)], global2[_wgslsmith_index_u32(56360u, 19u)]), global0[_wgslsmith_index_u32(4294967295u, 17u)] >= -980f)), func_3(), ~u_input.c < 0u), Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-305f))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(arg_0 + 1890f), 1000f, _wgslsmith_f_op_f32(step(arg_0, 2714f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(1842f, arg_0, arg_0, arg_0))), all(vec3<bool>(!global2[_wgslsmith_index_u32(0u, 19u)], global2[_wgslsmith_index_u32(u_input.c, 19u)], any(vec2<bool>(true, true))))));
    global1 = array<i32, 26>();
    let var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(arg_0, 1053f), var_0.b.a) + -315f), _wgslsmith_f_op_f32(max(-1040f, _wgslsmith_div_f32(var_0.b.b.x, arg_0)))))));
    global0 = array<f32, 17>();
    global1 = array<i32, 26>();
    return var_0.b.c;
}

fn func_1(arg_0: f32) -> Struct_1 {
    var var_0 = vec3<bool>(all(!vec3<bool>(true, func_2(arg_0, vec3<i32>(global1[_wgslsmith_index_u32(7803u, 26u)], u_input.b, 29756i), vec3<i32>(-16166i, u_input.a, -1i)), true)), global2[_wgslsmith_index_u32(~min(u_input.c << (u_input.c % 32u), u_input.c ^ 1u), 19u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(2411f)) + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(1294f))))) != _wgslsmith_f_op_f32(ceil(-860f)));
    let var_1 = 20550i;
    let var_2 = global0[_wgslsmith_index_u32(reverseBits(countOneBits(1u)), 17u)];
    global1 = array<i32, 26>();
    var_0 = !func_3();
    return Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(global0[_wgslsmith_index_u32(u_input.c >> (u_input.c % 32u), 17u)], _wgslsmith_div_f32(arg_0, arg_0)))) - -411f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, -250f, arg_0, arg_0) + vec4<f32>(arg_0, -406f, arg_0, -417f)), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(1482f, arg_0, arg_0, 1079f), vec4<f32>(arg_0, -1533f, -1244f, arg_0))), vec4<bool>(false, true, var_0.x, false))) + _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1089f, arg_0, global0[_wgslsmith_index_u32(u_input.c, 17u)], arg_0)))))), true);
}

fn func_4(arg_0: vec4<bool>, arg_1: u32, arg_2: Struct_1) -> Struct_2 {
    global2 = array<bool, 19>();
    global1 = array<i32, 26>();
    return Struct_2(arg_0.wzw, Struct_1(1436f, _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-arg_2.a), -488f, global0[_wgslsmith_index_u32(abs(arg_1), 17u)], 732f), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-591f, -240f, 362f, 696f), _wgslsmith_f_op_vec4_f32(round(arg_2.b)), !arg_0)), select(vec4<bool>(true, global2[_wgslsmith_index_u32(u_input.c, 19u)], true, global2[_wgslsmith_index_u32(arg_1, 19u)]), !vec4<bool>(false, arg_0.x, true, arg_2.c), select(vec4<bool>(global2[_wgslsmith_index_u32(1u, 19u)], arg_2.c, arg_0.x, arg_2.c), vec4<bool>(false, global2[_wgslsmith_index_u32(u_input.c, 19u)], arg_2.c, false), vec4<bool>(true, arg_2.c, true, arg_2.c))))), arg_0.x));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<i32, 26>();
    var var_0 = func_4(vec4<bool>(!global2[_wgslsmith_index_u32(u_input.c, 19u)], true, false, true), u_input.c, func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(512f - 1357f)))));
    var var_1 = func_4(select(vec4<bool>(false, global2[_wgslsmith_index_u32(u_input.c, 19u)], global1[_wgslsmith_index_u32(89833u, 26u)] <= -2147483647i, !select(false, true, global2[_wgslsmith_index_u32(4294967295u, 19u)])), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, var_0.b.c, false, true), vec4<bool>(false, false, global2[_wgslsmith_index_u32(1u, 19u)], true), false), global2[_wgslsmith_index_u32(~u_input.c, 19u)]), func_2(_wgslsmith_f_op_f32(1599f - 779f), ~vec3<i32>(u_input.a, global1[_wgslsmith_index_u32(u_input.c, 26u)], -16505i), vec3<i32>(u_input.b, -717i, 38915i))), ((global2[_wgslsmith_index_u32(u_input.c, 19u)] & false) != true) & any(var_0.a.xz)), ~(((u_input.c ^ 4294967295u) << (select(18485u, 4294967295u, true) % 32u)) | ~abs(u_input.c)), func_4(vec4<bool>(global2[_wgslsmith_index_u32(min(firstTrailingBit(u_input.c), ~39816u), 19u)], var_0.a.x, var_0.b.c, global2[_wgslsmith_index_u32(abs(u_input.c), 19u)]), u_input.c, Struct_1(global0[_wgslsmith_index_u32(firstTrailingBit(u_input.c), 17u)], _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_0.b.b) * _wgslsmith_f_op_vec4_f32(-var_0.b.b)), any(!vec4<bool>(var_0.b.c, true, global2[_wgslsmith_index_u32(u_input.c, 19u)], false)))).b);
    global2 = array<bool, 19>();
    var var_2 = Struct_1(686f, _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_1.b.b.x)) * _wgslsmith_f_op_f32(sign(-1001f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0.b.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1223f * 910f))) + _wgslsmith_f_op_vec4_f32(step(vec4<f32>(global0[_wgslsmith_index_u32(0u, 17u)], -600f, _wgslsmith_div_f32(global0[_wgslsmith_index_u32(50942u, 17u)], 1160f), -1166f), var_0.b.b))), all(var_0.a.zz));
    let x = u_input.a;
    s_output = StorageBuffer(1230f, select(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.c, 1u, u_input.c, 4294967295u) >> (vec4<u32>(u_input.c, u_input.c, 54244u, 0u) % vec4<u32>(32u)), select(vec4<u32>(48982u, 35950u, u_input.c, 4294967295u), vec4<u32>(u_input.c, u_input.c, u_input.c, 84726u), vec4<bool>(global2[_wgslsmith_index_u32(4294967295u, 19u)], var_0.a.x, var_0.a.x, false))) & abs(vec4<u32>(u_input.c, 60099u, u_input.c, u_input.c)), _wgslsmith_add_vec4_u32(vec4<u32>(1u, u_input.c, reverseBits(u_input.c), 4294967295u), reverseBits(vec4<u32>(u_input.c, 0u, u_input.c, 54135u) >> (vec4<u32>(u_input.c, 0u, u_input.c, u_input.c) % vec4<u32>(32u)))), all(func_4(vec4<bool>(true, true, true, true), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, u_input.c, 76707u), vec3<u32>(u_input.c, u_input.c, u_input.c)), var_1.b).a.xz)), firstLeadingBit(0i >> (u_input.c % 32u)), vec4<i32>(firstTrailingBit(u_input.a), 1i, _wgslsmith_mult_i32(_wgslsmith_add_i32(countOneBits(0i), -2147483647i), u_input.a), -1i));
}


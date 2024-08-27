struct Struct_1 {
    a: vec3<bool>,
    b: bool,
    c: f32,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -778f;

var<private> global1: array<i32, 19>;

var<private> global2: array<bool, 17> = array<bool, 17>(true, false, false, true, true, false, false, false, false, false, false, false, false, false, false, true, false);

var<private> global3: array<Struct_1, 5> = array<Struct_1, 5>(Struct_1(vec3<bool>(false, true, false), true, -389f), Struct_1(vec3<bool>(false, true, false), false, 694f), Struct_1(vec3<bool>(true, true, false), false, 1037f), Struct_1(vec3<bool>(false, true, false), true, 599f), Struct_1(vec3<bool>(true, false, false), true, 379f));

var<private> global4: array<vec3<u32>, 4>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_2, arg_2: Struct_1) -> vec4<f32> {
    global0 = 1368f;
    global4 = array<vec3<u32>, 4>();
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1818f)) * _wgslsmith_f_op_f32(step(arg_2.c, arg_2.c)))))) + arg_2.c);
    var var_1 = arg_1;
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(215f, var_0, var_0, _wgslsmith_f_op_f32(ceil(-1000f))) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-539f, var_0, 1680f, -1188f) * vec4<f32>(855f, arg_2.c, 1141f, -1395f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1250f, var_0, 361f, -946f))), global2[_wgslsmith_index_u32(1u, 17u)]))));
}

fn func_2(arg_0: Struct_1) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-arg_0.c), -937f, arg_0.c, -1000f))));
    var var_1 = _wgslsmith_f_op_vec4_f32(func_3(u_input.b.yxz, Struct_2(~(~(vec2<u32>(u_input.c, u_input.c) << (vec2<u32>(0u, 1u) % vec2<u32>(32u))))), arg_0));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1991f) + _wgslsmith_f_op_f32(min(arg_0.c, var_0.x))) - var_1.x))) * var_1.x);
    global1 = array<i32, 19>();
    let var_3 = !vec4<bool>(false, all(!vec4<bool>(false, false, global2[_wgslsmith_index_u32(19658u, 17u)], false)), !all(select(vec4<bool>(false, true, arg_0.b, arg_0.b), vec4<bool>(arg_0.b, false, false, false), arg_0.a.x)), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(max(vec4<u32>(u_input.c, 0u, u_input.c, u_input.a), vec4<u32>(u_input.a, u_input.a, u_input.a, 10320u)), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, u_input.c, u_input.a, 9714u), vec4<u32>(59300u, u_input.c, u_input.c, u_input.c))), vec4<u32>(u_input.c, _wgslsmith_dot_vec4_u32(vec4<u32>(91646u, 4294967295u, u_input.a, 1u), vec4<u32>(u_input.c, u_input.c, u_input.c, 40132u)), 42164u ^ u_input.c, _wgslsmith_dot_vec4_u32(vec4<u32>(7195u, 23128u, u_input.c, 4294967295u), vec4<u32>(73004u, u_input.a, 30661u, u_input.c)))), 17u)]);
    return Struct_2(~(~(vec2<u32>(12520u, 21068u) | ~vec2<u32>(16098u, u_input.c))));
}

fn func_1(arg_0: Struct_2) -> Struct_1 {
    let var_0 = Struct_2(vec2<u32>(arg_0.a.x, ~_wgslsmith_add_u32(0u, firstTrailingBit(4294967295u))));
    let var_1 = all(vec2<bool>(true, 0u >= arg_0.a.x));
    let var_2 = func_2(Struct_1(select(select(!vec3<bool>(var_1, false, var_1), select(vec3<bool>(global2[_wgslsmith_index_u32(arg_0.a.x, 17u)], false, true), vec3<bool>(global2[_wgslsmith_index_u32(var_0.a.x, 17u)], var_1, var_1), true), false == var_1), !(!vec3<bool>(true, false, var_1)), !(!vec3<bool>(true, false, var_1))), true, _wgslsmith_f_op_f32(-1f)));
    let var_3 = 2147483647i;
    global2 = array<bool, 17>();
    return Struct_1(vec3<bool>(global2[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_sub_u32(_wgslsmith_mod_u32(1932u, var_2.a.x), ~u_input.a)), 17u)], true, global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_mult_u32(1u, 24379u), _wgslsmith_mod_u32(var_2.a.x, 1u)), 17u)]), true, 1f);
}

fn func_4(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: vec4<i32>, arg_3: vec2<f32>) -> u32 {
    let var_0 = global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(9728u, u_input.c) >> ((58799u ^ func_2(Struct_1(!vec3<bool>(arg_1.x, arg_1.x, false), true, _wgslsmith_f_op_f32(min(arg_3.x, -1184f)))).a.x) % 32u), 5u)];
    var var_1 = -2331f;
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.c) + 1634f) + 618f);
    global0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(trunc(arg_0.c)), select(arg_1.x, global2[_wgslsmith_index_u32(19317u, 17u)], all(vec3<bool>(arg_1.x, !var_0.b, global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(0u, u_input.c), 17u)])))));
    global3 = array<Struct_1, 5>();
    return _wgslsmith_dot_vec4_u32(vec4<u32>(19421u, ~u_input.c, _wgslsmith_mult_u32(u_input.a, countOneBits(_wgslsmith_mult_u32(1u, u_input.c))), 61527u), vec4<u32>(reverseBits(u_input.c), max(u_input.c, abs(u_input.a)), select(u_input.a, u_input.c, global2[_wgslsmith_index_u32(min(u_input.a, u_input.c), 17u)]), reverseBits(_wgslsmith_mult_u32(16304u, 1u))) & vec4<u32>(0u, 4294967295u, abs(_wgslsmith_add_u32(u_input.c, 1u)), ~(u_input.a ^ 1u)));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<vec3<u32>, 4>();
    var var_0 = global3[_wgslsmith_index_u32(~select(func_4(func_1(Struct_2(vec2<u32>(u_input.a, 4294967295u))), select(vec4<bool>(false, global2[_wgslsmith_index_u32(0u, 17u)], false, false), vec4<bool>(global2[_wgslsmith_index_u32(u_input.c, 17u)], global2[_wgslsmith_index_u32(675u, 17u)], true, global2[_wgslsmith_index_u32(1u, 17u)]), any(vec3<bool>(global2[_wgslsmith_index_u32(u_input.c, 17u)], global2[_wgslsmith_index_u32(25157u, 17u)], true))), vec4<i32>(~u_input.b.x, _wgslsmith_mult_i32(-27428i, 55422i), -56243i, countOneBits(-23391i)), _wgslsmith_f_op_vec4_f32(func_3(_wgslsmith_add_vec3_i32(vec3<i32>(-14077i, u_input.b.x, u_input.b.x), vec3<i32>(0i, 0i, 43749i)), func_2(global3[_wgslsmith_index_u32(4294967295u, 5u)]), global3[_wgslsmith_index_u32(~u_input.a, 5u)])).zy), ~(min(21483u, 27299u) >> (_wgslsmith_dot_vec3_u32(global4[_wgslsmith_index_u32(0u, 4u)], global4[_wgslsmith_index_u32(34150u, 4u)]) % 32u)), all(!vec2<bool>(global2[_wgslsmith_index_u32(u_input.c, 17u)], global2[_wgslsmith_index_u32(0u, 17u)]))), 5u)];
    let var_1 = ~firstTrailingBit(-52300i);
    global2 = array<bool, 17>();
    var var_2 = any(select(select(select(vec4<bool>(false, false, true, false), !vec4<bool>(false, global2[_wgslsmith_index_u32(63259u, 17u)], global2[_wgslsmith_index_u32(10074u, 17u)], false), vec4<bool>(false, global2[_wgslsmith_index_u32(u_input.a, 17u)], true, var_0.a.x)), select(!vec4<bool>(global2[_wgslsmith_index_u32(u_input.c, 17u)], global2[_wgslsmith_index_u32(u_input.a, 17u)], var_0.b, true), select(vec4<bool>(false, global2[_wgslsmith_index_u32(0u, 17u)], true, false), vec4<bool>(true, var_0.b, var_0.b, var_0.a.x), vec4<bool>(var_0.a.x, var_0.a.x, global2[_wgslsmith_index_u32(u_input.a, 17u)], false)), all(vec4<bool>(true, true, var_0.a.x, global2[_wgslsmith_index_u32(4294967295u, 17u)]))), global2[_wgslsmith_index_u32(4089u, 17u)]), select(vec4<bool>(global2[_wgslsmith_index_u32(30659u, 17u)], !global2[_wgslsmith_index_u32(u_input.c, 17u)], all(vec4<bool>(var_0.b, var_0.a.x, true, var_0.b)), !var_0.a.x), vec4<bool>(6917i >= var_1, !global2[_wgslsmith_index_u32(u_input.a, 17u)], false, select(true, global2[_wgslsmith_index_u32(0u, 17u)], var_0.a.x)), select(vec4<bool>(global2[_wgslsmith_index_u32(1u, 17u)], true, false, var_0.a.x), select(vec4<bool>(var_0.a.x, false, true, var_0.a.x), vec4<bool>(var_0.b, var_0.b, false, true), vec4<bool>(false, global2[_wgslsmith_index_u32(u_input.c, 17u)], true, true)), var_0.a.x)), !all(vec4<bool>(var_0.a.x, var_0.b, true, global2[_wgslsmith_index_u32(44501u, 17u)]))));
    global4 = array<vec3<u32>, 4>();
    var var_3 = func_1(Struct_2(firstLeadingBit(_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a, 0u), vec2<u32>(23412u, u_input.a) >> (vec2<u32>(u_input.c, 4294967295u) % vec2<u32>(32u))))));
    var var_4 = global4[_wgslsmith_index_u32(21373u, 4u)];
    var var_5 = max(-_wgslsmith_mod_vec3_i32(min(vec3<i32>(-2147483647i, var_1, 28332i), vec3<i32>(-31853i, global1[_wgslsmith_index_u32(22988u, 19u)], u_input.b.x)), ~u_input.b.xwy), _wgslsmith_div_vec3_i32(select(u_input.b.zyx, reverseBits(u_input.b.ywz), var_3.a), vec3<i32>(max(47528i, -2147483647i), 2147483647i | var_1, 0i))) >> ((~vec3<u32>(~1u, reverseBits(u_input.a), _wgslsmith_sub_u32(39740u, 0u)) << (global4[_wgslsmith_index_u32(~(~reverseBits(0u)), 4u)] % vec3<u32>(32u))) % vec3<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(-1i, ~(-51974i), var_5.x), vec3<i32>(var_5.x << (_wgslsmith_mult_u32(_wgslsmith_clamp_u32(1u, u_input.a, u_input.c), ~16678u) % 32u), firstLeadingBit(-var_5.x), _wgslsmith_clamp_i32(_wgslsmith_mod_i32(42811i, var_5.x), 40853i, 2147483647i)));
}


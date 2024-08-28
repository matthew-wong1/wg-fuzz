struct Struct_1 {
    a: vec4<f32>,
    b: vec2<bool>,
    c: vec3<u32>,
    d: vec3<i32>,
    e: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<i32>,
}

struct Struct_3 {
    a: f32,
    b: i32,
}

struct Struct_4 {
    a: f32,
    b: f32,
    c: u32,
    d: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: u32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(7360u, 31926u, 1u, 8528u);

var<private> global1: array<vec3<i32>, 6>;

var<private> global2: Struct_3 = Struct_3(2053f, 20885i);

var<private> global3: vec3<bool> = vec3<bool>(true, true, true);

var<private> global4: array<Struct_3, 23> = array<Struct_3, 23>(Struct_3(-1000f, -1i), Struct_3(-1364f, 0i), Struct_3(306f, 0i), Struct_3(1191f, 2147483647i), Struct_3(-376f, -14021i), Struct_3(418f, i32(-2147483648)), Struct_3(2066f, -30787i), Struct_3(733f, 34860i), Struct_3(293f, 0i), Struct_3(434f, -1i), Struct_3(1821f, 0i), Struct_3(-1443f, 61138i), Struct_3(-262f, -7138i), Struct_3(-1000f, -46982i), Struct_3(-1305f, 2147483647i), Struct_3(-1000f, -44982i), Struct_3(-264f, 2147483647i), Struct_3(283f, 0i), Struct_3(2032f, 16071i), Struct_3(-1933f, -19994i), Struct_3(-331f, i32(-2147483648)), Struct_3(-326f, 1i), Struct_3(-956f, -1i));

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_4) -> vec3<bool> {
    global0 = _wgslsmith_sub_vec4_u32(firstLeadingBit(arg_0), vec4<u32>(_wgslsmith_dot_vec4_u32(arg_0, ~(~arg_0)), ~arg_1.c, 84854u, 0u));
    let var_0 = Struct_4(arg_1.a, _wgslsmith_f_op_f32(ceil(-208f)), u_input.b.x, global2.a);
    var var_1 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1982f, 1000f) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(global2.a - 339f), var_0.d))), _wgslsmith_mult_i32(0i, 0i));
    let var_2 = all(global3.xx);
    let var_3 = Struct_2(Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-arg_1.d), -119f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.d + 1000f) * var_1.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_0.b, -3218f, true)) + 1418f)), vec2<bool>(true, true), select(select(global0.xww, vec3<u32>(global0.x, global0.x, arg_1.c), global3.x) & ~arg_0.zxy, countOneBits(global0.xxw), true), ~(-global1[_wgslsmith_index_u32(44996u, 6u)] << (arg_0.xxy % vec3<u32>(32u))), ~(select(vec3<u32>(arg_1.c, 19546u, arg_1.c), vec3<u32>(1u, arg_1.c, global0.x), vec3<bool>(global3.x, global3.x, global3.x)) >> (max(vec3<u32>(0u, 31713u, 42279u), vec3<u32>(0u, 1u, arg_0.x)) % vec3<u32>(32u)))), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(select(-1306f, _wgslsmith_f_op_f32(f32(-1f) * -302f), false)), _wgslsmith_f_op_f32(trunc(-445f)), global2.a, -330f), !vec2<bool>(all(vec4<bool>(true, global3.x, global3.x, var_2)), !var_2), vec3<u32>(53611u, min(u_input.b.x, 13026u), _wgslsmith_dot_vec2_u32(vec2<u32>(28681u, global0.x), vec2<u32>(1u, u_input.b.x))) >> (~firstTrailingBit(u_input.b) % vec3<u32>(32u)), vec3<i32>(-50720i, -46784i, global2.b), abs(_wgslsmith_mult_vec3_u32(arg_0.ywy, firstLeadingBit(arg_0.yzw)))), firstTrailingBit(select(vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(var_1.b, -2147483647i, var_1.b), vec3<i32>(var_1.b, -77278i, 3123i)), 1i), u_input.a.zy, !select(vec2<bool>(global3.x, true), vec2<bool>(global3.x, var_2), var_2))));
    return vec3<bool>(true & any(vec4<bool>(any(vec2<bool>(var_2, var_3.a.b.x)), false, all(vec3<bool>(var_2, true, false)), all(vec2<bool>(var_2, global3.x)))), _wgslsmith_f_op_f32(-arg_1.d) <= _wgslsmith_f_op_f32(f32(-1f) * -293f), all(!(!vec4<bool>(true, false, true, var_2))));
}

fn func_2(arg_0: i32, arg_1: vec2<bool>, arg_2: bool, arg_3: bool) -> Struct_1 {
    var var_0 = -countOneBits(u_input.a.xy);
    global3 = select(vec3<bool>(global3.x, arg_1.x, arg_2), select(select(func_3(~vec4<u32>(4294967295u, 9526u, 89694u, u_input.b.x), Struct_4(global2.a, 1341f, 35702u, -705f)), vec3<bool>(any(global3.yz), !arg_3, true), select(func_3(vec4<u32>(u_input.b.x, u_input.b.x, 4294967295u, 25637u), Struct_4(-260f, global2.a, 0u, 1219f)), vec3<bool>(false, arg_2, arg_2), vec3<bool>(global3.x, arg_3, true))), vec3<bool>(_wgslsmith_div_f32(-1017f, 647f) != _wgslsmith_f_op_f32(trunc(152f)), any(vec4<bool>(arg_3, true, false, true)), _wgslsmith_mult_u32(4294967295u, u_input.b.x) >= min(21846u, 41084u)), true), !vec3<bool>(!arg_1.x, any(!vec3<bool>(false, true, arg_3)), any(vec2<bool>(false, true)) && true));
    let var_1 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(vec4<f32>(global2.a, global2.a, 1288f, global2.a), vec4<f32>(2438f, -1393f, global2.a, global2.a)), vec4<f32>(global2.a, global2.a, global2.a, global2.a)))), arg_1, _wgslsmith_div_vec3_u32(select(u_input.b, global0.xzy << (vec3<u32>(global0.x, 54863u, u_input.b.x) % vec3<u32>(32u)), !vec3<bool>(arg_2, arg_1.x, false)), ~u_input.b), _wgslsmith_add_vec3_i32(vec3<i32>(-39540i, var_0.x, _wgslsmith_mod_i32(30788i, arg_0)), abs(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.a.x, 11428i, arg_0), u_input.a))), countOneBits(~global0.wxy)), Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1809f, global2.a, 1118f, global2.a)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.a, global2.a, global2.a, -1058f)), _wgslsmith_div_vec4_f32(vec4<f32>(global2.a, global2.a, global2.a, 1901f), vec4<f32>(global2.a, global2.a, -880f, global2.a)))), global3.xz, u_input.b & ~vec3<u32>(u_input.b.x, 1u, 0u), _wgslsmith_sub_vec3_i32(-vec3<i32>(global2.b, 35958i, 54432i), vec3<i32>(~arg_0, ~global2.b, u_input.a.x >> (1u % 32u))), vec3<u32>(0u, abs(global0.x), abs(0u)) << (_wgslsmith_mod_vec3_u32(~vec3<u32>(u_input.b.x, 4294967295u, 1u), ~global0.xzy) % vec3<u32>(32u))), abs(u_input.a.xz));
    var var_2 = !select(select(vec3<bool>(!arg_2, global3.x, false), !select(vec3<bool>(true, true, global3.x), vec3<bool>(arg_2, true, global3.x), vec3<bool>(arg_3, global3.x, true)), any(vec4<bool>(false, true, true, false))), !func_3(vec4<u32>(u_input.b.x, global0.x, 127475u, 0u) ^ vec4<u32>(global0.x, 36677u, 51945u, 0u), Struct_4(var_1.a.a.x, global2.a, var_1.a.c.x, var_1.b.a.x)), select(func_3(~vec4<u32>(u_input.b.x, var_1.b.c.x, global0.x, global0.x), Struct_4(-1467f, -897f, 4294967295u, global2.a)), vec3<bool>(any(vec3<bool>(arg_1.x, var_1.b.b.x, false)), arg_3, true), vec3<bool>(false, false && arg_3, any(vec2<bool>(global3.x, false)))));
    global4 = array<Struct_3, 23>();
    return var_1.b;
}

fn func_4(arg_0: Struct_2, arg_1: vec3<u32>, arg_2: bool) -> Struct_2 {
    let var_0 = func_2(_wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(_wgslsmith_mult_vec4_i32(-vec4<i32>(global2.b, 33305i, -1i, -2147483647i), vec4<i32>(global2.b, -64206i, u_input.a.x, 0i)), vec4<i32>(-7419i, global2.b, abs(-23777i), abs(u_input.a.x))), vec4<i32>(-1i) * -(vec4<i32>(u_input.a.x, 26410i, -1i, u_input.a.x) | vec4<i32>(-28286i, 0i, -1i, global2.b))), func_2(-15643i, global3.yz, any(vec3<bool>(all(vec4<bool>(true, global3.x, arg_0.b.b.x, false)), global2.b > arg_0.a.d.x, true)), any(!select(vec4<bool>(arg_2, arg_0.a.b.x, true, arg_2), vec4<bool>(arg_0.a.b.x, false, arg_0.b.b.x, false), vec4<bool>(false, global3.x, global3.x, true)))).b, arg_2 | any(!vec4<bool>(arg_0.a.b.x, arg_0.a.b.x, arg_2, false)), !(_wgslsmith_dot_vec3_i32(~global1[_wgslsmith_index_u32(global0.x, 6u)], vec3<i32>(2147483647i, -2147483647i, 11667i)) == _wgslsmith_mult_i32(~arg_0.a.d.x, arg_0.a.d.x)));
    global4 = array<Struct_3, 23>();
    global1 = array<vec3<i32>, 6>();
    let var_1 = Struct_4(-698f, 1293f, max(1u, 1u ^ ~global0.x), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -622f), _wgslsmith_f_op_f32(f32(-1f) * -1000f))))));
    let var_2 = global4[_wgslsmith_index_u32(var_1.c, 23u)];
    return arg_0;
}

fn func_5(arg_0: Struct_2, arg_1: u32) -> Struct_4 {
    return Struct_4(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.a)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global2.a), arg_0.b.a.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1361f, global2.a)) + _wgslsmith_f_op_f32(-2328f - _wgslsmith_f_op_f32(arg_0.b.a.x * 342f))))), -858f, func_2(~(-1i), vec2<bool>(func_2(1i, !arg_0.a.b, false, !global3.x).b.x, global3.x & (u_input.b.x > arg_1)), true, true).e.x, _wgslsmith_div_f32(global2.a, _wgslsmith_f_op_f32(1518f + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_0.b.a.x * global2.a), arg_0.a.a.x)))));
}

fn func_6(arg_0: Struct_4, arg_1: vec3<i32>, arg_2: vec2<f32>, arg_3: vec3<f32>) -> Struct_3 {
    global2 = Struct_3(arg_2.x, firstTrailingBit(~(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, global2.b, global2.b), vec3<i32>(2147483647i, 1i, global2.b)) >> (~arg_0.c % 32u))));
    global1 = array<vec3<i32>, 6>();
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_0.b, arg_3.x, arg_0.a, arg_3.x), vec4<f32>(global2.a, -390f, -2076f, global2.a))), vec4<f32>(1611f, global2.a, -215f, 1444f))))), !func_3(abs(~vec4<u32>(u_input.b.x, 0u, u_input.b.x, 0u)), arg_0).xz, max(~firstLeadingBit(func_2(arg_1.x, vec2<bool>(global3.x, true), true, global3.x).e), vec3<u32>(~(~u_input.b.x), u_input.b.x, func_2(i32(-1i) * -15726i, vec2<bool>(true, global3.x), all(vec3<bool>(global3.x, true, false)), !global3.x).e.x)), func_2(~(-1i), !(!global3.zy), true, global3.x).d, global0.xyy);
    global2 = global4[_wgslsmith_index_u32(global0.x, 23u)];
    let var_1 = firstLeadingBit(_wgslsmith_add_u32(~(~arg_0.c), 1478u));
    return global4[_wgslsmith_index_u32(~(~(~1u)), 23u)];
}

fn func_1(arg_0: u32, arg_1: Struct_3, arg_2: f32, arg_3: bool) -> Struct_1 {
    let var_0 = 24394u;
    let var_1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global2.a), -1170f, arg_1.a == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1877f + arg_1.a)) + _wgslsmith_f_op_f32(min(-1963f, arg_1.a)))));
    var var_2 = reverseBits(abs(vec3<u32>(u_input.b.x, _wgslsmith_dot_vec3_u32(~vec3<u32>(4294967295u, var_0, global0.x), _wgslsmith_clamp_vec3_u32(u_input.b, vec3<u32>(4294967295u, u_input.b.x, 1u), vec3<u32>(4856u, u_input.b.x, global0.x))), 63446u)));
    var var_3 = global4[_wgslsmith_index_u32(37892u, 23u)];
    global2 = func_6(func_5(func_4(Struct_2(func_2(-72711i, vec2<bool>(false, false), false, true), Struct_1(vec4<f32>(arg_2, 1000f, -147f, 755f), vec2<bool>(arg_3, false), vec3<u32>(global0.x, arg_0, arg_0), u_input.a, vec3<u32>(30279u, u_input.b.x, 0u)), u_input.a.zz), func_2(arg_1.b, global3.zy, any(vec4<bool>(false, true, arg_3, global3.x)), any(vec2<bool>(true, true))).e, arg_3), u_input.b.x), -vec3<i32>(_wgslsmith_dot_vec3_i32(select(global1[_wgslsmith_index_u32(0u, 6u)], vec3<i32>(var_3.b, -1i, 1i), vec3<bool>(global3.x, false, arg_3)), vec3<i32>(2147483647i, global2.b, u_input.a.x) << (global0.zyw % vec3<u32>(32u))), arg_1.b, _wgslsmith_dot_vec2_i32(vec2<i32>(3091i, 0i), u_input.a.xy)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(func_4(Struct_2(Struct_1(vec4<f32>(1400f, arg_1.a, 313f, -1000f), vec2<bool>(global3.x, false), vec3<u32>(global0.x, arg_0, arg_0), global1[_wgslsmith_index_u32(var_2.x, 6u)], vec3<u32>(arg_0, 17693u, 9148u)), Struct_1(vec4<f32>(arg_2, -694f, arg_2, global2.a), vec2<bool>(arg_3, arg_3), vec3<u32>(var_0, 41132u, 17813u), u_input.a, global0.xyy), u_input.a.zy), vec3<u32>(global0.x, 16903u, 1u), !arg_3).b.a.zy, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.a, arg_2)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.a, -2709f))), !(global3.x || global3.x)))), vec3<f32>(var_1, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.a * -1938f)), var_1, !all(global3.zy))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_2)))));
    return func_2(38395i, vec2<bool>(-867f >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_3.a, var_3.a))), global2.a < 1197f), true, false);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(1u, global4[_wgslsmith_index_u32(~(~(~global0.x)), 23u)], -656f, _wgslsmith_sub_i32(firstLeadingBit(-global2.b), u_input.a.x) == ~0i);
    global2 = Struct_3(var_0.a.x, ~select(_wgslsmith_add_i32(-41706i, var_0.d.x), _wgslsmith_add_i32(global2.b, var_0.d.x), all(!vec3<bool>(true, global3.x, global3.x))));
    let var_1 = !select(select(func_3(countOneBits(vec4<u32>(u_input.b.x, 4065u, var_0.c.x, 4294967295u)), Struct_4(1589f, 610f, u_input.b.x, 1000f)), select(vec3<bool>(global3.x, true, global3.x), select(vec3<bool>(false, false, true), vec3<bool>(global3.x, true, false), var_0.b.x), true), !(!vec3<bool>(var_0.b.x, global3.x, global3.x))), select(select(vec3<bool>(false, false, true), func_3(vec4<u32>(12859u, 0u, 0u, u_input.b.x), Struct_4(-909f, 516f, 4294967295u, -1950f)), false), select(!vec3<bool>(var_0.b.x, false, true), func_3(vec4<u32>(u_input.b.x, 424u, global0.x, 4294967295u), Struct_4(-819f, var_0.a.x, global0.x, var_0.a.x)), true), vec3<bool>(all(vec4<bool>(global3.x, global3.x, var_0.b.x, var_0.b.x)), var_0.b.x, global3.x)), vec3<bool>(var_0.b.x, (var_0.d.x ^ -1i) == 0i, all(select(vec3<bool>(global3.x, true, global3.x), vec3<bool>(var_0.b.x, global3.x, false), vec3<bool>(global3.x, global3.x, var_0.b.x)))));
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a.x, var_0.a.x))))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1055f, -1014f)) + var_0.a.wy));
    global3 = vec3<bool>(var_1.x, !select(var_0.b.x, false, !global3.x), var_1.x);
    global1 = array<vec3<i32>, 6>();
    global0 = vec4<u32>(~_wgslsmith_add_u32(firstTrailingBit(global0.x ^ 1u), ~firstTrailingBit(u_input.b.x)), ~_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, ~7973u), vec2<u32>(firstTrailingBit(8694u), ~4294967295u)), 4294967295u, firstLeadingBit(func_1(~0u, Struct_3(-2488f, _wgslsmith_add_i32(8241i, -2147483647i)), global2.a, var_0.b.x).c.x));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.c, vec4<i32>(1i, ~(~u_input.a.x), 0i, -func_6(Struct_4(1116f, -1000f, var_0.e.x, global2.a), select(global1[_wgslsmith_index_u32(global0.x, 6u)], vec3<i32>(1i, -36159i, -1i), var_1), _wgslsmith_f_op_vec2_f32(-var_2), func_1(4294967295u, global4[_wgslsmith_index_u32(7009u, 23u)], var_2.x, false).a.zwx).b), abs(0u), vec4<f32>(-964f, _wgslsmith_f_op_f32(-global2.a), _wgslsmith_f_op_f32(step(-1061f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-446f * 1400f)))), -428f));
}


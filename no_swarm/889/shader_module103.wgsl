struct Struct_1 {
    a: bool,
    b: i32,
    c: bool,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: u32,
    d: vec3<i32>,
}

struct Struct_3 {
    a: f32,
    b: vec4<f32>,
    c: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 24>;

var<private> global1: array<vec4<f32>, 11>;

var<private> global2: Struct_1 = Struct_1(false, -466i, false, -1463f);

var<private> global3: array<Struct_2, 7>;

var<private> global4: array<bool, 27> = array<bool, 27>(false, true, true, true, true, false, true, true, false, true, false, false, false, false, true, true, true, true, false, true, false, true, true, true, true, true, false);

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_1) -> bool {
    let var_0 = vec3<u32>(firstTrailingBit(~max(u_input.b.x, _wgslsmith_div_u32(u_input.b.x, u_input.b.x))), select(_wgslsmith_dot_vec4_u32(arg_0, vec4<u32>(max(arg_0.x, arg_0.x), abs(global0[_wgslsmith_index_u32(arg_0.x, 24u)]), max(0u, arg_0.x), ~arg_0.x)), 20906u, true), 1u);
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.d, global2.d, arg_1.d))) - _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.d, global2.d, arg_1.d)), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(135f, -805f, 666f))))))) + vec3<f32>(-166f, _wgslsmith_f_op_f32(ceil(919f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.d - global2.d))))));
    let var_2 = !select(vec4<bool>(any(!vec4<bool>(global2.a, global2.c, global4[_wgslsmith_index_u32(arg_0.x, 27u)], global2.c)), arg_1.a != global4[_wgslsmith_index_u32(~4294967295u, 27u)], select(0i <= u_input.a, true, false), !(!global2.c)), !(!select(vec4<bool>(false, false, arg_1.a, false), vec4<bool>(true, global2.c, arg_1.c, false), true)), select(global2.c, !(arg_1.a && global2.a), true));
    let var_3 = arg_1;
    let var_4 = global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(260u, 1u), 7u)];
    return !global4[_wgslsmith_index_u32(0u, 27u)];
}

fn func_2(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: Struct_1) -> Struct_2 {
    var var_0 = vec3<u32>(_wgslsmith_add_u32(arg_1.x, 7709u), u_input.b.x, 81096u);
    var var_1 = !(!select(vec4<bool>(arg_2.a, true, all(vec2<bool>(false, arg_2.a)), func_3(arg_1, Struct_1(arg_0.c, 53586i, true, 1000f))), select(!vec4<bool>(arg_2.c, arg_0.a, false, global4[_wgslsmith_index_u32(1u, 27u)]), !vec4<bool>(arg_2.c, true, false, global4[_wgslsmith_index_u32(arg_1.x, 27u)]), select(false, true, arg_2.c)), select(!vec4<bool>(global4[_wgslsmith_index_u32(0u, 27u)], global4[_wgslsmith_index_u32(var_0.x, 27u)], global2.a, true), select(vec4<bool>(global2.c, arg_0.c, true, false), vec4<bool>(false, global2.c, true, true), vec4<bool>(false, true, true, false)), vec4<bool>(true, global2.a, arg_0.c, false))));
    let var_2 = firstLeadingBit(-max(min(vec3<i32>(arg_2.b, -2147483647i, arg_0.b), vec3<i32>(1i, -35963i, 0i)), vec3<i32>(global2.b, 2147483647i, 2147483647i) ^ vec3<i32>(0i, arg_2.b, 0i))) >> (countOneBits(arg_1.xyz) % vec3<u32>(32u));
    global4 = array<bool, 27>();
    var var_3 = u_input.b;
    return Struct_2(Struct_1(all(vec2<bool>(true, true)), arg_0.b, var_1.x, global2.d), func_3(~vec4<u32>(0u, 68280u, 89880u, arg_1.x), arg_2) && var_1.x, ~(var_0.x | arg_1.x), var_2);
}

fn func_4(arg_0: Struct_3, arg_1: vec2<i32>, arg_2: Struct_2) -> f32 {
    var var_0 = firstTrailingBit(_wgslsmith_dot_vec3_u32(~(~firstLeadingBit(vec3<u32>(51138u, arg_2.c, u_input.b.x))), ~vec3<u32>(22002u, arg_2.c, global0[_wgslsmith_index_u32(0u, 24u)]) << (select(vec3<u32>(global0[_wgslsmith_index_u32(4294967295u, 24u)], u_input.b.x, 46092u), vec3<u32>(u_input.b.x, 67739u, 4294967295u) & u_input.b, global2.c) % vec3<u32>(32u))));
    var var_1 = func_2(Struct_1(arg_2.a.a, firstLeadingBit(arg_0.c.d.x), true, _wgslsmith_f_op_f32(-func_2(func_2(Struct_1(true, arg_1.x, arg_0.c.a.a, global2.d), vec4<u32>(96311u, global0[_wgslsmith_index_u32(0u, 24u)], global0[_wgslsmith_index_u32(u_input.b.x, 24u)], global0[_wgslsmith_index_u32(arg_2.c, 24u)]), Struct_1(true, -2147483647i, arg_2.b, 1000f)).a, min(vec4<u32>(1u, 1u, arg_2.c, 29191u), vec4<u32>(u_input.b.x, arg_0.c.c, 16314u, u_input.b.x)), func_2(arg_2.a, vec4<u32>(arg_2.c, arg_0.c.c, arg_0.c.c, 1u), arg_2.a).a).a.d)), select(_wgslsmith_add_vec4_u32(vec4<u32>(arg_2.c, ~global0[_wgslsmith_index_u32(32620u, 24u)], countOneBits(4294967295u), 1u), ~(~vec4<u32>(4294967295u, global0[_wgslsmith_index_u32(7708u, 24u)], u_input.b.x, arg_2.c))), vec4<u32>(arg_0.c.c & 120356u, _wgslsmith_dot_vec3_u32(firstLeadingBit(u_input.b), _wgslsmith_div_vec3_u32(u_input.b, u_input.b)), 4294967295u, u_input.b.x), select(select(!vec4<bool>(global4[_wgslsmith_index_u32(arg_2.c, 27u)], arg_2.a.c, arg_2.a.c, arg_0.c.a.a), vec4<bool>(true, true, false, global4[_wgslsmith_index_u32(67481u, 27u)]), global2.d <= -1980f), !select(vec4<bool>(global4[_wgslsmith_index_u32(1u, 27u)], arg_0.c.b, false, false), vec4<bool>(arg_2.a.a, false, global4[_wgslsmith_index_u32(4294967295u, 27u)], true), vec4<bool>(arg_0.c.a.c, true, arg_2.b, false)), select(!vec4<bool>(arg_0.c.a.a, global4[_wgslsmith_index_u32(u_input.b.x, 27u)], arg_0.c.a.c, global2.c), select(vec4<bool>(global2.c, false, arg_2.a.c, global2.a), vec4<bool>(false, arg_0.c.a.c, global2.a, false), vec4<bool>(false, true, false, true)), true))), func_2(Struct_1(abs(global2.b) < 1i, i32(-1i) * -1i, false, -1964f), ~countOneBits(vec4<u32>(global0[_wgslsmith_index_u32(arg_0.c.c, 24u)], arg_2.c, arg_2.c, arg_2.c)) >> (_wgslsmith_mod_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 28596u, 31832u, 37844u), vec4<u32>(72173u, 1u, 74582u, arg_2.c)), countOneBits(vec4<u32>(u_input.b.x, 106953u, 52350u, 4294967295u))) % vec4<u32>(32u)), func_2(Struct_1(global4[_wgslsmith_index_u32(firstTrailingBit(global0[_wgslsmith_index_u32(0u, 24u)]), 27u)], 1i, arg_0.c.a.a, _wgslsmith_f_op_f32(-576f - arg_2.a.d)), ~vec4<u32>(u_input.b.x, 1u, arg_0.c.c, arg_2.c) & vec4<u32>(8240u, global0[_wgslsmith_index_u32(28257u, 24u)], arg_2.c, 4294967295u), func_2(arg_0.c.a, vec4<u32>(arg_2.c, arg_2.c, arg_2.c, 1u) << (vec4<u32>(arg_0.c.c, 32160u, 1u, global0[_wgslsmith_index_u32(51106u, 24u)]) % vec4<u32>(32u)), arg_0.c.a).a).a).a);
    global3 = array<Struct_2, 7>();
    var var_2 = func_2(arg_2.a, ~(~_wgslsmith_div_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(0u, var_1.c, 30196u, 57805u), vec4<u32>(15641u, 0u, 4015u, var_1.c)), vec4<u32>(var_1.c, 26230u, 1u, 0u) >> (vec4<u32>(u_input.b.x, 1u, 0u, 1u) % vec4<u32>(32u)))), var_1.a);
    global1 = array<vec4<f32>, 11>();
    return _wgslsmith_f_op_f32(-arg_2.a.d);
}

fn func_1(arg_0: vec3<bool>, arg_1: Struct_2, arg_2: vec2<i32>, arg_3: Struct_3) -> i32 {
    global0 = array<u32, 24>();
    global3 = array<Struct_2, 7>();
    global3 = array<Struct_2, 7>();
    global1 = array<vec4<f32>, 11>();
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_3.b.x, -1351f, false)) * 1283f) + _wgslsmith_f_op_f32(func_4(Struct_3(415f, vec4<f32>(arg_1.a.d, 563f, 618f, -327f), Struct_2(arg_1.a, arg_3.c.b, arg_1.c, arg_1.d)), min(vec2<i32>(arg_1.a.b, global2.b), vec2<i32>(global2.b, 1i)), func_2(arg_3.c.a, vec4<u32>(u_input.b.x, 21438u, 0u, 1u), Struct_1(false, 1i, arg_3.c.a.c, arg_1.a.d))))))), _wgslsmith_f_op_f32(-658f - _wgslsmith_f_op_f32(-1885f - _wgslsmith_f_op_f32(-arg_3.a))), arg_3.b.x, arg_3.c.a.d);
    return 2147483647i;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = Struct_1(all(!vec2<bool>(global4[_wgslsmith_index_u32(4294967295u, 27u)] == false, global2.a || global2.a)), _wgslsmith_sub_i32(-_wgslsmith_add_i32(func_1(vec3<bool>(global2.a, global4[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b.x, 24u)], 27u)], global2.c), global3[_wgslsmith_index_u32(0u, 7u)], vec2<i32>(17909i, 19472i), Struct_3(-810f, vec4<f32>(-1153f, global2.d, -1561f, global2.d), Struct_2(Struct_1(true, global2.b, global4[_wgslsmith_index_u32(38607u, 27u)], global2.d), global4[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 24u)], 27u)], u_input.b.x, vec3<i32>(u_input.a, global2.b, -2147483647i)))), global2.b), global2.b), global2.a, global2.d);
    let var_0 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, ~global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(23581u, 24u)], 24u)]), u_input.b.xz), 24u)] >= _wgslsmith_mod_u32(1u, _wgslsmith_add_u32(min(u_input.b.x, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, global0[_wgslsmith_index_u32(u_input.b.x, 24u)], 29666u), vec4<u32>(37780u, global0[_wgslsmith_index_u32(4294967295u, 24u)], u_input.b.x, 4294967295u))), select(u_input.b.x, u_input.b.x, false) ^ ~global0[_wgslsmith_index_u32(32734u, 24u)]));
    var var_1 = vec4<i32>(_wgslsmith_add_i32(firstTrailingBit(u_input.a), 1i) << (_wgslsmith_dot_vec3_u32(u_input.b, abs(vec3<u32>(51742u, global0[_wgslsmith_index_u32(u_input.b.x, 24u)], u_input.b.x) << (vec3<u32>(0u, 4294967295u, 0u) % vec3<u32>(32u)))) % 32u), -(~_wgslsmith_add_i32(~u_input.a, ~1i)), u_input.a, -34037i >> (u_input.b.x % 32u));
    var var_2 = !func_3(vec4<u32>(~(~u_input.b.x), 1u, 28652u ^ _wgslsmith_div_u32(23013u, global0[_wgslsmith_index_u32(u_input.b.x, 24u)]), _wgslsmith_dot_vec2_u32(select(vec2<u32>(global0[_wgslsmith_index_u32(0u, 24u)], 0u), u_input.b.zy, vec2<bool>(global2.c, var_0)), ~u_input.b.xy)), Struct_1(global2.c, global2.b, true, _wgslsmith_f_op_f32(-245f + 380f)));
    var var_3 = vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, ~_wgslsmith_dot_vec2_u32(u_input.b.zy, u_input.b.yx), ~_wgslsmith_sub_u32(0u, global0[_wgslsmith_index_u32(82227u, 24u)])), _wgslsmith_div_vec3_u32(_wgslsmith_mod_vec3_u32(select(u_input.b, vec3<u32>(1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 24u)], 24u)], 24u)], 7732u), vec3<bool>(global2.c, global2.a, var_0)), ~u_input.b), ~_wgslsmith_div_vec3_u32(vec3<u32>(u_input.b.x, 4294967295u, global0[_wgslsmith_index_u32(1u, 24u)]), u_input.b))), ~func_2(func_2(Struct_1(var_0, 0i, global4[_wgslsmith_index_u32(27364u, 27u)], -173f), vec4<u32>(1u, 30652u, 4294967295u, 5174u) << (vec4<u32>(u_input.b.x, 16833u, global0[_wgslsmith_index_u32(u_input.b.x, 24u)], u_input.b.x) % vec4<u32>(32u)), func_2(Struct_1(global4[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(7103u, 24u)], 24u)], 27u)], 4606i, global4[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b.x, 24u)], 27u)], global2.d), vec4<u32>(global0[_wgslsmith_index_u32(15132u, 24u)], 1u, u_input.b.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 24u)], 24u)], 24u)]), Struct_1(var_0, var_1.x, global4[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(10194u, 24u)], 27u)], -1801f)).a).a, _wgslsmith_sub_vec4_u32(countOneBits(vec4<u32>(u_input.b.x, 0u, global0[_wgslsmith_index_u32(u_input.b.x, 24u)], 4294967295u)), vec4<u32>(1u, 6868u, 4294967295u, 0u)), Struct_1(true, _wgslsmith_sub_i32(global2.b, -2147483647i), u_input.b.x != 1u, 1204f)).c);
    var var_4 = false == var_0;
    let x = u_input.a;
    s_output = StorageBuffer(616f, global2.d, _wgslsmith_f_op_f32(-global2.d));
}


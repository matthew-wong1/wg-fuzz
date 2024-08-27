struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
    b: Struct_2,
    c: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: bool,
    c: vec2<u32>,
    d: vec4<u32>,
    e: vec4<bool>,
}

struct Struct_5 {
    a: bool,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 16>;

var<private> global1: array<vec3<u32>, 31>;

var<private> global2: array<u32, 7> = array<u32, 7>(27060u, 14678u, 4294967295u, 1u, 8261u, 47864u, 38327u);

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: i32, arg_1: vec3<bool>) -> bool {
    let var_0 = _wgslsmith_mult_vec4_i32(vec4<i32>(arg_0, ~_wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, 24663i, u_input.d), vec3<i32>(arg_0, 21642i, arg_0)), _wgslsmith_add_i32(1210i, u_input.b)), u_input.a, ~(~(~arg_0))), vec4<i32>(-25020i | _wgslsmith_mod_i32(i32(-1i) * -55569i, u_input.a), -2147483647i, 18588i, reverseBits(u_input.d)));
    var var_1 = -254f;
    var var_2 = abs(_wgslsmith_dot_vec2_i32(var_0.wy, max(var_0.yw, var_0.zw)));
    let var_3 = 4294967295u;
    global2 = array<u32, 7>();
    return ~_wgslsmith_mod_i32(var_0.x, ~0i) < select(-8346i, firstLeadingBit(~countOneBits(28992i)), true);
}

fn func_2(arg_0: bool, arg_1: vec2<u32>, arg_2: vec4<bool>, arg_3: Struct_1) -> bool {
    let var_0 = Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(841f, -1375f, global0[_wgslsmith_index_u32(4294967295u, 16u)], global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4604u, 7u)], 16u)])))), Struct_2(arg_3, global2[_wgslsmith_index_u32(select(_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(arg_1.x, 73973u, 1u, global2[_wgslsmith_index_u32(1u, 7u)]), vec4<u32>(u_input.c, 2393u, global2[_wgslsmith_index_u32(0u, 7u)], 0u)), abs(vec4<u32>(u_input.c, 40123u, arg_1.x, arg_1.x))), ~min(0u, arg_1.x), all(vec4<bool>(true, true, false, true))), 7u)], Struct_1(all(!vec3<bool>(arg_0, arg_2.x, arg_2.x)))), Struct_1(!func_3(31945i, vec3<bool>(arg_0, arg_0, arg_0)) | !arg_3.a));
    var var_1 = reverseBits(0i);
    global0 = array<f32, 16>();
    global2 = array<u32, 7>();
    global0 = array<f32, 16>();
    return func_3(u_input.a >> (_wgslsmith_mod_u32(0u, arg_1.x) % 32u), !arg_2.wyy);
}

fn func_4(arg_0: u32, arg_1: vec4<bool>, arg_2: vec2<bool>) -> u32 {
    global2 = array<u32, 7>();
    global1 = array<vec3<u32>, 31>();
    global1 = array<vec3<u32>, 31>();
    let var_0 = arg_1.yzw;
    var var_1 = Struct_5(func_2(false, countOneBits(vec2<u32>(abs(arg_0), 4294967295u)), select(vec4<bool>(arg_2.x, true, false, global0[_wgslsmith_index_u32(0u, 16u)] <= global0[_wgslsmith_index_u32(1u, 16u)]), vec4<bool>(any(arg_1.zwz), false, false, arg_1.x), true), Struct_1(any(arg_2))));
    return 0u;
}

fn func_1(arg_0: vec4<i32>, arg_1: f32) -> Struct_1 {
    var var_0 = Struct_3(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(1u, 16u)], 758f, arg_1, global0[_wgslsmith_index_u32(1u, 16u)]), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, arg_1, arg_1, 478f)))), vec4<f32>(global0[_wgslsmith_index_u32(4294967295u, 16u)], _wgslsmith_f_op_f32(floor(global0[_wgslsmith_index_u32(~u_input.c, 16u)])), 1f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 7u)], 7u)], 7u)], 16u)], 1581f)), -383f, true))))), Struct_2(Struct_1(false), ~(~4294967295u), Struct_1(true)), Struct_1(all(!select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, true)))));
    global2 = array<u32, 7>();
    let var_1 = Struct_2(Struct_1(!select(!var_0.c.a, any(vec2<bool>(false, true)), !var_0.c.a)), func_4(82082u, select(vec4<bool>(var_0.b.c.a && var_0.c.a, -14155i >= u_input.b, true, func_2(var_0.c.a, vec2<u32>(7740u, var_0.b.b), vec4<bool>(false, true, false, false), var_0.c)), select(!vec4<bool>(var_0.b.c.a, true, var_0.c.a, var_0.c.a), !vec4<bool>(false, var_0.c.a, true, var_0.b.c.a), vec4<bool>(true, true, true, true)), true), !(!select(vec2<bool>(var_0.b.a.a, false), vec2<bool>(true, var_0.c.a), false))), var_0.b.c);
    return var_0.b.c;
}

fn func_5(arg_0: u32, arg_1: Struct_1) -> Struct_4 {
    global2 = array<u32, 7>();
    var var_0 = select(_wgslsmith_mod_vec4_i32(_wgslsmith_add_vec4_i32(firstLeadingBit(-vec4<i32>(u_input.b, -1i, u_input.d, -555i)), ~_wgslsmith_add_vec4_i32(vec4<i32>(u_input.a, -31928i, u_input.b, u_input.b), vec4<i32>(0i, u_input.a, u_input.a, -1i))), -_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b, u_input.a, u_input.a, u_input.d), firstTrailingBit(vec4<i32>(u_input.a, -56721i, u_input.b, 8715i)))), vec4<i32>(u_input.a, 0i & u_input.d, max(u_input.a, firstTrailingBit(0i)), _wgslsmith_clamp_i32(u_input.a, firstTrailingBit(u_input.b) << (67895u % 32u), firstTrailingBit(-38458i))), arg_1.a);
    var var_1 = Struct_4(func_1(_wgslsmith_mod_vec4_i32(vec4<i32>(19580i, u_input.a, var_0.x, 63654i) << (vec4<u32>(29045u, arg_0, arg_0, arg_0) % vec4<u32>(32u)), firstLeadingBit(vec4<i32>(var_0.x, 0i, var_0.x, u_input.a))) << (vec4<u32>(global2[_wgslsmith_index_u32(abs(1u), 7u)], 4294967295u, arg_0, 98261u) % vec4<u32>(32u)), global0[_wgslsmith_index_u32(1u, 16u)]), arg_1.a, vec2<u32>(~global2[_wgslsmith_index_u32(reverseBits(arg_0), 7u)], arg_0), ~(~(vec4<u32>(4294967295u, u_input.c, 0u, 47390u) | vec4<u32>(arg_0, arg_0, arg_0, global2[_wgslsmith_index_u32(4294967295u, 7u)])) & vec4<u32>(~u_input.c, 4294967295u, ~0u, _wgslsmith_clamp_u32(global2[_wgslsmith_index_u32(0u, 7u)], arg_0, global2[_wgslsmith_index_u32(u_input.c, 7u)]))), !(!(!(!vec4<bool>(false, arg_1.a, arg_1.a, arg_1.a)))));
    let var_2 = vec2<bool>(false, any(vec2<bool>(func_3(_wgslsmith_dot_vec3_i32(vec3<i32>(-20769i, var_0.x, -1i), vec3<i32>(-33688i, var_0.x, u_input.d)), vec3<bool>(false, var_1.b, var_1.a.a)), true)));
    let var_3 = Struct_3(vec4<f32>(1105f, _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(1u, 16u)] + global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(firstLeadingBit(vec3<u32>(arg_0, u_input.c, 23678u)), var_1.d.yyy), 16u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(879f - 1544f))), _wgslsmith_f_op_f32(2616f - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(0u, 16u)]))))), Struct_2(arg_1, max(arg_0, arg_0), Struct_1(all(!var_1.e.yww))), Struct_1(arg_1.a));
    return Struct_4(var_1.a, var_2.x, vec2<u32>(min(0u, 5949u) << (1u % 32u), 0u & func_4(_wgslsmith_mod_u32(42673u, u_input.c), var_1.e, vec2<bool>(true, true))), _wgslsmith_mult_vec4_u32(var_1.d << (~_wgslsmith_clamp_vec4_u32(var_1.d, var_1.d, var_1.d) % vec4<u32>(32u)), vec4<u32>(~firstLeadingBit(2340u), ~1u, 13389u, var_1.c.x)), !(!var_1.e));
}

fn func_6(arg_0: Struct_4, arg_1: bool) -> Struct_2 {
    global1 = array<vec3<u32>, 31>();
    let var_0 = _wgslsmith_dot_vec2_u32(arg_0.c, select(vec2<u32>(~(~global2[_wgslsmith_index_u32(arg_0.d.x, 7u)]), 1u), vec2<u32>(arg_0.c.x, func_5(u_input.c >> (0u % 32u), func_5(32174u, Struct_1(true)).a).c.x), false));
    var var_1 = Struct_2(func_5(_wgslsmith_clamp_u32(~_wgslsmith_add_u32(81351u, global2[_wgslsmith_index_u32(u_input.c, 7u)]), 4294967295u, 40321u), func_5(_wgslsmith_mod_u32(16798u, global2[_wgslsmith_index_u32(1u, 7u)]) >> (_wgslsmith_add_u32(0u, var_0) % 32u), Struct_1(arg_0.a.a)).a).a, ~countOneBits(arg_0.c.x), Struct_1(true));
    return Struct_2(func_5(_wgslsmith_dot_vec4_u32(arg_0.d, ~arg_0.d), func_1(vec4<i32>(-u_input.d, 0i, u_input.d, u_input.a), _wgslsmith_div_f32(global0[_wgslsmith_index_u32(1u, 16u)], global0[_wgslsmith_index_u32(var_0, 16u)]))).a, min(arg_0.d.x, select(_wgslsmith_add_u32(44633u, 31284u), ~global2[_wgslsmith_index_u32(var_0, 7u)], false) ^ ~var_0), Struct_1(all(!(!vec2<bool>(true, arg_1)))));
}

fn func_7(arg_0: Struct_2, arg_1: Struct_3) -> Struct_1 {
    global1 = array<vec3<u32>, 31>();
    return func_6(Struct_4(Struct_1(!arg_1.c.a), !(!arg_1.c.a) | (select(1u, global2[_wgslsmith_index_u32(arg_0.b, 7u)], false) <= u_input.c), vec2<u32>(~arg_1.b.b, ~(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(arg_0.b, 7u)], 7u)] >> (50808u % 32u))), max(_wgslsmith_mod_vec4_u32(vec4<u32>(70477u, global2[_wgslsmith_index_u32(u_input.c, 7u)], 14033u, arg_1.b.b), vec4<u32>(42841u, arg_1.b.b, 98913u, arg_1.b.b)), reverseBits(vec4<u32>(arg_0.b, 20320u, 95055u, 4294967295u))) | max(_wgslsmith_div_vec4_u32(vec4<u32>(arg_1.b.b, global2[_wgslsmith_index_u32(1u, 7u)], arg_0.b, 4294967295u), vec4<u32>(175u, arg_1.b.b, global2[_wgslsmith_index_u32(1u, 7u)], 76529u)), ~vec4<u32>(13601u, 4294967295u, 4294967295u, 7791u)), select(vec4<bool>(true, func_1(vec4<i32>(8273i, u_input.a, 1i, 27213i), 892f).a, !arg_0.c.a, !arg_0.c.a), !vec4<bool>(arg_1.b.a.a, false, arg_0.c.a, arg_1.b.c.a), !arg_1.c.a)), func_6(Struct_4(func_6(Struct_4(arg_1.b.c, arg_0.a.a, vec2<u32>(global2[_wgslsmith_index_u32(1u, 7u)], arg_1.b.b), vec4<u32>(0u, arg_1.b.b, 79092u, arg_1.b.b), vec4<bool>(arg_0.c.a, arg_1.b.c.a, true, arg_0.a.a)), false).c, true, _wgslsmith_add_vec2_u32(vec2<u32>(0u, global2[_wgslsmith_index_u32(u_input.c, 7u)]), vec2<u32>(0u, 51903u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(49185u, u_input.c, 9289u, arg_1.b.b), vec4<u32>(u_input.c, global2[_wgslsmith_index_u32(0u, 7u)], arg_0.b, 68959u), vec4<u32>(3519u, 90717u, 1u, u_input.c)), !vec4<bool>(false, true, true, arg_0.a.a)), arg_1.b.c.a).c.a & true).a;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<u32, 7>();
    global0 = array<f32, 16>();
    let var_0 = func_7(func_6(func_5(1u, func_1(-vec4<i32>(u_input.b, 12034i, -34612i, u_input.a), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.c, 16u)] - global0[_wgslsmith_index_u32(0u, 16u)]))), true), Struct_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(209f, 560f, 526f, _wgslsmith_f_op_f32(-2993f - 523f))), Struct_2(Struct_1(all(vec3<bool>(true, false, false))), ~firstTrailingBit(13790u), func_5(~global2[_wgslsmith_index_u32(u_input.c, 7u)], func_1(vec4<i32>(-2147483647i, u_input.a, 0i, u_input.d), global0[_wgslsmith_index_u32(69249u, 16u)])).a), func_1(vec4<i32>(~(-43936i), _wgslsmith_mult_i32(u_input.d, u_input.d), max(u_input.b, u_input.d), _wgslsmith_mult_i32(u_input.b, u_input.a)), global0[_wgslsmith_index_u32(38860u, 16u)])));
    let var_1 = ~(vec3<u32>(~(~4294967295u), abs(4294967295u), ~1u) >> (firstTrailingBit(~vec3<u32>(2660u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(29736u, 7u)], 7u)], 0u)) % vec3<u32>(32u)));
    global1 = array<vec3<u32>, 31>();
    global0 = array<f32, 16>();
    var var_2 = Struct_5(~u_input.b < -9100i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global0[_wgslsmith_index_u32(var_1.x, 16u)], global0[_wgslsmith_index_u32(55596u, 16u)], global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(22436u, 7u)], 7u)], 16u)], global0[_wgslsmith_index_u32(4294967295u, 16u)]))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.c, 7u)], 16u)], global0[_wgslsmith_index_u32(var_1.x, 16u)], global0[_wgslsmith_index_u32(25842u, 16u)], global0[_wgslsmith_index_u32(1u, 16u)]) - vec4<f32>(494f, global0[_wgslsmith_index_u32(var_1.x, 16u)], -582f, 429f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(global0[_wgslsmith_index_u32(var_1.x, 16u)], -306f, global0[_wgslsmith_index_u32(6357u, 16u)], -152f), vec4<f32>(417f, global0[_wgslsmith_index_u32(u_input.c, 16u)], global0[_wgslsmith_index_u32(4386u, 16u)], global0[_wgslsmith_index_u32(4294967295u, 16u)])))))), _wgslsmith_mult_u32(~func_6(Struct_4(Struct_1(var_0.a), var_0.a, var_1.yy, vec4<u32>(4294967295u, 0u, var_1.x, 1u), vec4<bool>(var_2.a, false, true, var_2.a)), var_2.a != var_0.a).b, _wgslsmith_add_u32(8815u, _wgslsmith_sub_u32(0u >> (0u % 32u), min(53254u, u_input.c)))));
}


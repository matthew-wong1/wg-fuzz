struct Struct_1 {
    a: u32,
    b: vec3<u32>,
    c: vec4<i32>,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 13> = array<u32, 13>(0u, 1u, 4294967295u, 104053u, 0u, 1u, 23605u, 0u, 41578u, 0u, 98403u, 39116u, 0u);

var<private> global1: Struct_1 = Struct_1(4294967295u, vec3<u32>(38327u, 4294967295u, 4294967295u), vec4<i32>(-37490i, -1i, -25934i, -13414i), vec4<i32>(1i, 2147483647i, 1i, 53664i));

var<private> global2: bool;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: bool, arg_1: bool, arg_2: vec4<f32>, arg_3: Struct_1) -> vec3<u32> {
    var var_0 = !(!(!(!vec4<bool>(arg_1, false, arg_0, arg_1))));
    let var_1 = arg_3.b;
    let var_2 = arg_3;
    let var_3 = firstTrailingBit(-(31220i << (countOneBits(~4294967295u) % 32u)));
    let var_4 = var_2;
    return countOneBits(_wgslsmith_sub_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(reverseBits(17078u) & ~var_4.a, 13u)], 139226u, ~var_1.x), global1.b));
}

fn func_2() -> Struct_1 {
    global0 = array<u32, 13>();
    return Struct_1(_wgslsmith_dot_vec3_u32(global1.b, countOneBits(vec3<u32>(u_input.c, global0[_wgslsmith_index_u32(0u, 13u)], 12290u) << (func_3(false, false, vec4<f32>(-1549f, -605f, 1927f, -909f), Struct_1(0u, global1.b, vec4<i32>(-1i, -2147483647i, global1.c.x, 41076i), vec4<i32>(-2147483647i, global1.d.x, global1.c.x, global1.d.x))) % vec3<u32>(32u)))), ~min(countOneBits(~vec3<u32>(global1.a, 21539u, global1.a)), _wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, 1u, u_input.b.x), abs(vec3<u32>(u_input.b.x, global0[_wgslsmith_index_u32(u_input.c, 13u)], global1.a)))), ~vec4<i32>(~countOneBits(-2147483647i), ~min(5813i, u_input.a), _wgslsmith_dot_vec2_i32(global1.d.xx, _wgslsmith_mod_vec2_i32(vec2<i32>(global1.d.x, u_input.a), global1.c.xw)), reverseBits(-26257i)), global1.c);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    global1 = Struct_1(~10593u, vec3<u32>(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(4294967295u, _wgslsmith_div_u32(_wgslsmith_mult_u32(global0[_wgslsmith_index_u32(1u, 13u)], 4294967295u), ~0u)), 13u)], global1.a ^ ~(~1u), ~(u_input.c << (61022u % 32u))), -vec4<i32>(4035i, ~arg_1.d.x | 2147483647i, _wgslsmith_dot_vec4_i32(arg_1.d, max(arg_2.c, vec4<i32>(-38033i, arg_0.c.x, -67529i, -1i))), func_2().c.x << ((arg_2.a | global1.a) % 32u)), _wgslsmith_add_vec4_i32(~vec4<i32>(-1i, -arg_1.c.x, 1i, ~(-6605i)), ~(~arg_0.d)));
    global2 = all(!(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), true)));
    return Struct_1(_wgslsmith_div_u32(~1u, arg_0.a), ~_wgslsmith_mod_vec3_u32(arg_1.b, global1.b) & vec3<u32>(firstLeadingBit(1u), u_input.b.x, 45054u), min(global1.c, _wgslsmith_clamp_vec4_i32(vec4<i32>(arg_2.d.x, -2147483647i, u_input.a, arg_1.d.x) << (~vec4<u32>(67495u, arg_0.b.x, 37940u, 13604u) % vec4<u32>(32u)), ~vec4<i32>(global1.d.x, -2147483647i, u_input.a, -6927i) & _wgslsmith_add_vec4_i32(vec4<i32>(arg_2.c.x, arg_2.c.x, arg_2.d.x, global1.d.x), vec4<i32>(-1i, -48969i, arg_1.d.x, -4755i)), vec4<i32>(-62282i, u_input.a, ~2147483647i, arg_2.c.x))), ~arg_1.d);
}

fn func_5(arg_0: Struct_1, arg_1: bool, arg_2: vec4<i32>) -> vec2<f32> {
    let var_0 = vec3<bool>(true == select(!arg_1, select(arg_2.x > arg_2.x, !arg_1, arg_1), -arg_0.c.x == arg_0.d.x), true, any(!vec2<bool>(false, arg_1 || arg_1)));
    var var_1 = ~vec4<u32>(arg_0.a, 139129u, 1u, 28739u);
    global2 = false;
    global0 = array<u32, 13>();
    let var_2 = arg_2;
    return vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(1965f * _wgslsmith_f_op_f32(f32(-1f) * -105f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-207f, 311f)) - _wgslsmith_f_op_f32(1651f - -376f)))), _wgslsmith_f_op_f32(max(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -366f)))));
}

fn func_1(arg_0: bool) -> bool {
    global0 = array<u32, 13>();
    var var_0 = ~0u;
    var var_1 = all(!(!vec3<bool>(false, true, any(vec4<bool>(arg_0, arg_0, arg_0, arg_0)))));
    var_0 = firstLeadingBit(~(~0u));
    let var_2 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1517f))), 1000f) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(245f, -638f) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-789f, -1500f) * vec2<f32>(783f, 1380f)))), _wgslsmith_f_op_vec2_f32(func_5(func_4(Struct_1(10133u, global1.b, global1.c, vec4<i32>(u_input.a, global1.d.x, -1i, global1.d.x)), func_2(), Struct_1(global1.a, global1.b, global1.c, vec4<i32>(8559i, 2147483647i, 16169i, -34995i))), arg_0, global1.d)), select(vec2<bool>(true, true), vec2<bool>(false, true), false))));
    return (global1.c.x << (0u % 32u)) > ~(~11909i);
}

fn func_6(arg_0: vec3<f32>) -> Struct_1 {
    global1 = Struct_1(firstTrailingBit(global0[_wgslsmith_index_u32(~_wgslsmith_mult_u32(u_input.b.x, _wgslsmith_mod_u32(u_input.b.x, global1.a)), 13u)]), ~_wgslsmith_mod_vec3_u32(select(~global1.b, ~vec3<u32>(u_input.b.x, 19138u, 35616u), true), global1.b), abs(_wgslsmith_div_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(18953i, -28117i, u_input.a, u_input.a), vec4<i32>(global1.c.x, -51297i, 13968i, -18765i)), vec4<i32>(global1.d.x >> (u_input.b.x % 32u), global1.c.x, min(13078i, global1.c.x), -1i))), reverseBits(vec4<i32>(i32(-1i) * -1i, -1i, max(u_input.a, global1.c.x), global1.d.x)));
    let var_0 = _wgslsmith_dot_vec4_i32(global1.c, vec4<i32>(firstTrailingBit(u_input.a), min(~33490i, ~(-15582i)), u_input.a, min(-2147483647i, global1.d.x) << (1u % 32u))) << (((u_input.b.x >> (45544u % 32u)) ^ _wgslsmith_div_u32(15445u, abs(global1.a))) % 32u);
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(928f - arg_0.x), -979f, _wgslsmith_f_op_f32(step(613f, -526f)), _wgslsmith_f_op_f32(f32(-1f) * -908f)) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1525f, 654f, arg_0.x, arg_0.x)), vec4<f32>(-476f, arg_0.x, -1000f, arg_0.x), arg_0.x == -1245f))))));
    global1 = Struct_1(_wgslsmith_clamp_u32(u_input.c, _wgslsmith_sub_u32(global0[_wgslsmith_index_u32(4294967295u, 13u)], ~(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 13u)], 13u)])), _wgslsmith_dot_vec2_u32(vec2<u32>(~4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, 50770u, 38105u), vec3<u32>(13795u, global1.b.x, global1.a))), ~select(vec2<u32>(global1.b.x, 0u), vec2<u32>(u_input.b.x, u_input.b.x), false))), ~vec3<u32>(~global1.b.x, func_4(Struct_1(4294967295u, global1.b, vec4<i32>(0i, -24833i, -17561i, 0i), global1.d), Struct_1(34277u, vec3<u32>(u_input.c, global1.b.x, 7428u), vec4<i32>(global1.c.x, global1.d.x, 1i, -1i), global1.d), Struct_1(global0[_wgslsmith_index_u32(global1.a, 13u)], global1.b, vec4<i32>(u_input.a, -73909i, global1.d.x, global1.c.x), vec4<i32>(global1.d.x, global1.d.x, u_input.a, global1.c.x))).b.x, _wgslsmith_mod_u32(4294967295u, 4294967295u)) & _wgslsmith_sub_vec3_u32(countOneBits(vec3<u32>(10133u, 41149u, global0[_wgslsmith_index_u32(0u, 13u)])) ^ firstLeadingBit(vec3<u32>(u_input.b.x, global0[_wgslsmith_index_u32(u_input.c, 13u)], 0u)), vec3<u32>(u_input.c, 85985u, ~33955u)), global1.d, vec4<i32>(_wgslsmith_mult_i32(i32(-1i) * -22530i, 1i), global1.c.x, -_wgslsmith_dot_vec3_i32(vec3<i32>(-17857i, var_0, -1i), vec3<i32>(global1.d.x, var_0, -1i)), -(~(-1i | global1.c.x))));
    let var_2 = _wgslsmith_clamp_vec4_i32(vec4<i32>(firstTrailingBit(max(1i, -1i)), _wgslsmith_div_i32(-global1.c.x, 36897i), firstLeadingBit(_wgslsmith_dot_vec3_i32(-vec3<i32>(global1.c.x, -1i, var_0), _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a, 41584i, var_0), vec3<i32>(2147483647i, u_input.a, -2147483647i)))), firstTrailingBit(-global1.c.x)), -(vec4<i32>(u_input.a, _wgslsmith_sub_i32(global1.d.x, -37279i), _wgslsmith_div_i32(-55247i, var_0), var_0 << (u_input.c % 32u)) >> (_wgslsmith_div_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(4294967295u, 13u)], u_input.c, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.c, 13u)], 13u)], u_input.c), vec4<u32>(35599u, global1.b.x, u_input.b.x, 71577u) >> (vec4<u32>(1u, 8078u, 14726u, 1u) % vec4<u32>(32u))) % vec4<u32>(32u))), vec4<i32>(~global1.c.x, -var_0, abs(_wgslsmith_add_i32(var_0, 1i)), _wgslsmith_div_i32(_wgslsmith_mod_i32(-2147483647i, 2147483647i), 1i << (1u % 32u))));
    return Struct_1(~(_wgslsmith_dot_vec3_u32(func_3(true, false, vec4<f32>(var_1.x, arg_0.x, var_1.x, arg_0.x), Struct_1(u_input.b.x, global1.b, vec4<i32>(59231i, 20252i, var_0, global1.d.x), vec4<i32>(global1.c.x, -11601i, var_2.x, global1.d.x))), vec3<u32>(u_input.b.x, 4294967295u, global1.b.x)) ^ 1u), firstLeadingBit(firstLeadingBit(func_3(true, all(vec4<bool>(false, false, true, false)), var_1, Struct_1(10947u, global1.b, vec4<i32>(-1i, var_0, 1i, u_input.a), vec4<i32>(1i, 5205i, 0i, 2147483647i))))), vec4<i32>(_wgslsmith_div_i32(firstLeadingBit(-10050i), 7343i), -2147483647i, _wgslsmith_mod_i32(select(u_input.a, u_input.a, true) | min(var_2.x, var_0), u_input.a), ~(-1i) & -func_4(Struct_1(79133u, vec3<u32>(u_input.c, global1.b.x, global0[_wgslsmith_index_u32(global1.b.x, 13u)]), global1.d, var_2), Struct_1(global1.a, vec3<u32>(u_input.c, global1.a, u_input.b.x), vec4<i32>(var_2.x, 2147483647i, -1i, -58537i), vec4<i32>(var_2.x, u_input.a, global1.c.x, -16604i)), Struct_1(global1.a, vec3<u32>(global0[_wgslsmith_index_u32(4294967295u, 13u)], 47633u, u_input.b.x), global1.c, var_2)).c.x), -vec4<i32>(_wgslsmith_add_i32(global1.d.x, 38715i), var_2.x, -33502i, 1i >> (1u % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_6(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -759f)), -770f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1445f, -1089f)) - _wgslsmith_f_op_f32(f32(-1f) * -647f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1000f, 303f, -996f)))), func_1(true))));
    let var_0 = vec3<u32>(_wgslsmith_sub_u32(u_input.c, 30289u), ~max(u_input.c, 13619u), 4294967295u);
    global2 = false;
    let var_1 = vec3<f32>(609f, _wgslsmith_f_op_f32(324f * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1562f)), _wgslsmith_f_op_f32(f32(-1f) * -463f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1311f))));
    global2 = true;
    var var_2 = Struct_1(u_input.b.x, ~((~global1.b << (vec3<u32>(1u, var_0.x, 32000u) % vec3<u32>(32u))) | vec3<u32>(54008u, global0[_wgslsmith_index_u32(var_0.x, 13u)], ~var_0.x)), global1.d, ~(~(-_wgslsmith_clamp_vec4_i32(global1.c, global1.c, global1.c))));
    global1 = Struct_1(4294967295u, var_2.b >> (countOneBits(~(~global1.b)) % vec3<u32>(32u)), select(max(~(-var_2.d), var_2.d), vec4<i32>(_wgslsmith_div_i32(var_2.c.x, 9268i) >> (abs(global0[_wgslsmith_index_u32(4294967295u, 13u)]) % 32u), u_input.a << (_wgslsmith_mod_u32(u_input.c, var_0.x) % 32u), var_2.c.x, _wgslsmith_mod_i32(abs(1i), ~global1.c.x)), vec4<bool>(true, true, true, true)), -(_wgslsmith_add_vec4_i32(vec4<i32>(14090i, 36920i, var_2.d.x, u_input.a), -vec4<i32>(u_input.a, global1.d.x, -19258i, 57615i)) >> (~(~vec4<u32>(u_input.c, var_0.x, 0u, 43897u)) % vec4<u32>(32u))));
    var var_3 = vec3<bool>(true, true, true);
    global0 = array<u32, 13>();
    let x = u_input.a;
    s_output = StorageBuffer(max(~(-1820i), _wgslsmith_mod_i32(func_6(var_1).c.x, -2147483647i)), -24502i, vec3<u32>(~29986u, _wgslsmith_add_u32(_wgslsmith_sub_u32(var_2.b.x, var_0.x), ~var_2.b.x) >> (~1u % 32u), global1.b.x), select(vec3<u32>(~_wgslsmith_dot_vec2_u32(var_0.xx, global1.b.xy), u_input.b.x, firstLeadingBit(1u)), _wgslsmith_mult_vec3_u32(vec3<u32>(30271u, global1.b.x, var_0.x), ~vec3<u32>(var_2.a, var_0.x, global1.b.x)) ^ firstLeadingBit(abs(global1.b)), all(vec4<bool>(any(vec4<bool>(var_3.x, var_3.x, var_3.x, false)), var_3.x, !var_3.x, true))));
}


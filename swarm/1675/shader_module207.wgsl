struct Struct_1 {
    a: u32,
    b: vec3<f32>,
    c: i32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: f32,
    c: Struct_1,
    d: vec4<i32>,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(i32(-2147483648), i32(-2147483648), 1i, 0i);

var<private> global1: array<f32, 26> = array<f32, 26>(1420f, 699f, -691f, -689f, -201f, -375f, 2232f, 159f, -197f, 611f, 1031f, 113f, 407f, 600f, 2010f, -993f, 2026f, -2175f, 1958f, 313f, -1316f, 1549f, 1484f, 793f, -1000f, 399f);

var<private> global2: vec3<bool>;

var<private> global3: array<Struct_1, 27>;

var<private> global4: f32;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_2(arg_0: vec4<u32>, arg_1: u32, arg_2: Struct_2) -> u32 {
    let var_0 = arg_2.c;
    return 1u;
}

fn func_3(arg_0: vec2<bool>, arg_1: vec3<bool>, arg_2: vec3<f32>) -> vec3<bool> {
    global4 = arg_2.x;
    global0 = vec4<i32>(-1i) * -_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.c.x, _wgslsmith_dot_vec3_i32(u_input.c, global0.yww), _wgslsmith_add_i32(u_input.c.x, -1i), ~global0.x), vec4<i32>(35287i, -2147483647i, firstLeadingBit(u_input.c.x), global0.x), -_wgslsmith_mult_vec4_i32(vec4<i32>(2147483647i, u_input.c.x, 18648i, -19712i), vec4<i32>(global0.x, 0i, 1i, -1i)));
    var var_0 = !arg_0.x;
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(599f - 831f)), global1[_wgslsmith_index_u32(u_input.b.x | max(u_input.a, u_input.a), 26u)], all(!vec2<bool>(true, global2.x)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_2.x, 160f))))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(arg_2.x)))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1000f)) * _wgslsmith_f_op_f32(-1351f * global1[_wgslsmith_index_u32(u_input.b.x, 26u)])))), _wgslsmith_f_op_f32(max(global1[_wgslsmith_index_u32(~(u_input.b.x << (u_input.b.x % 32u)), 26u)], _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(select(39119u, u_input.a, false), 26u)]))), false)), arg_2.x);
    var var_2 = arg_0;
    return arg_1;
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: Struct_2, arg_3: vec3<u32>) -> Struct_2 {
    global4 = _wgslsmith_f_op_f32(round(arg_0.b.x));
    var var_0 = global1[_wgslsmith_index_u32(u_input.b.x, 26u)];
    let var_1 = ~vec3<i32>(_wgslsmith_add_i32(_wgslsmith_mult_i32(0i, -34829i), global0.x), _wgslsmith_dot_vec2_i32(-vec2<i32>(arg_2.c.c, 0i), _wgslsmith_mod_vec2_i32(u_input.c.zz, vec2<i32>(-2147483647i, u_input.c.x))) ^ _wgslsmith_clamp_i32(-6195i >> (arg_2.c.a % 32u), abs(arg_2.c.c), global0.x & global0.x), u_input.c.x);
    global2 = select(!(!arg_2.a), vec3<bool>(func_3(vec2<bool>(true, arg_2.a.x && global2.x), arg_2.a, _wgslsmith_div_vec3_f32(vec3<f32>(global1[_wgslsmith_index_u32(43541u, 26u)], 554f, -2178f), _wgslsmith_f_op_vec3_f32(arg_2.c.b + vec3<f32>(441f, 1191f, arg_0.b.x)))).x, all(select(!vec3<bool>(global2.x, true, arg_2.a.x), arg_2.a, global2.x)), false), true);
    var var_2 = _wgslsmith_f_op_f32(-arg_0.b.x);
    return Struct_2(func_3(select(!vec2<bool>(false, global2.x), vec2<bool>(all(vec4<bool>(global2.x, global2.x, arg_2.a.x, true)), false & global2.x), vec2<bool>(arg_2.a.x, false)), arg_2.a, vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1217f), 1876f, -523f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(global1[_wgslsmith_index_u32(arg_2.c.a, 26u)])), -622f)) + -187f), arg_2.c, _wgslsmith_mult_vec4_i32(max(countOneBits(arg_2.d), -arg_2.d), vec4<i32>(arg_2.d.x, arg_2.d.x, select(-4662i, global0.x, global2.x | global2.x), arg_0.c)), _wgslsmith_add_vec2_u32(~abs(~u_input.b.yz), _wgslsmith_div_vec2_u32(arg_2.e, vec2<u32>(1u, 0u))));
}

fn func_1(arg_0: vec4<bool>, arg_1: i32) -> Struct_1 {
    var var_0 = func_4(global3[_wgslsmith_index_u32(func_2(vec4<u32>(max(abs(0u), 20886u), firstTrailingBit(53877u), reverseBits(~u_input.b.x), ~3068u), 0u, Struct_2(arg_0.xxz, global1[_wgslsmith_index_u32(u_input.b.x, 26u)], global3[_wgslsmith_index_u32(u_input.b.x, 27u)], max(select(vec4<i32>(-1i, global0.x, arg_1, global0.x), vec4<i32>(-19685i, -48768i, 18831i, -15613i), arg_0.x), ~vec4<i32>(u_input.c.x, arg_1, arg_1, -23465i)), ~u_input.b.zx)), 27u)], global1[_wgslsmith_index_u32(~(~_wgslsmith_mult_u32(u_input.b.x | 29304u, ~u_input.b.x)), 26u)], Struct_2(select(vec3<bool>(true, arg_0.x, global2.x != global2.x), select(arg_0.xzw, func_3(vec2<bool>(global2.x, false), arg_0.xxx, vec3<f32>(973f, global1[_wgslsmith_index_u32(27185u, 26u)], global1[_wgslsmith_index_u32(31922u, 26u)])), -57654i >= u_input.c.x), max(0i, u_input.c.x) >= -18662i), global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(4294967295u, select(abs(u_input.a), select(0u, 27212u, arg_0.x), any(arg_0.yw)), min(_wgslsmith_mod_u32(u_input.b.x, 4294967295u), ~u_input.b.x)), 26u)], global3[_wgslsmith_index_u32(71728u, 27u)], _wgslsmith_div_vec4_i32(-vec4<i32>(global0.x, -1i, u_input.c.x, 43923i), ~vec4<i32>(arg_1, -7626i, 2147483647i, -1i)) << (vec4<u32>(68119u, u_input.a, u_input.a, u_input.b.x) % vec4<u32>(32u)), u_input.b.zx), ~abs(max(~u_input.b, firstTrailingBit(vec3<u32>(u_input.a, u_input.a, 41992u)))));
    var var_1 = Struct_2(vec3<bool>(arg_0.x, !any(!arg_0), true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-967f, _wgslsmith_f_op_f32(var_0.b - _wgslsmith_div_f32(var_0.b, 213f))))), global3[_wgslsmith_index_u32(abs(abs(~0u)), 27u)], vec4<i32>(firstTrailingBit(0i), _wgslsmith_mod_i32(~_wgslsmith_dot_vec4_i32(vec4<i32>(60099i, u_input.c.x, 28001i, var_0.d.x), vec4<i32>(-33245i, -39648i, 2147483647i, 29696i)), 0i), -u_input.c.x, _wgslsmith_sub_i32(1i, -(~108001i))), vec2<u32>(u_input.a, ~abs(firstTrailingBit(var_0.e.x))));
    var var_2 = func_4(func_4(func_4(Struct_1(var_1.e.x, _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_0.b, global1[_wgslsmith_index_u32(u_input.a, 26u)], var_1.c.b.x))), arg_1), _wgslsmith_f_op_f32(abs(-986f)), Struct_2(select(vec3<bool>(false, true, false), arg_0.zzz, vec3<bool>(arg_0.x, arg_0.x, var_1.a.x)), 384f, func_4(Struct_1(var_1.c.a, vec3<f32>(var_1.c.b.x, global1[_wgslsmith_index_u32(4294967295u, 26u)], -166f), 21917i), 479f, Struct_2(vec3<bool>(true, false, true), var_1.b, var_0.c, vec4<i32>(var_0.c.c, u_input.c.x, u_input.c.x, 0i), vec2<u32>(1572u, u_input.b.x)), u_input.b).c, -var_1.d, vec2<u32>(30283u, 38820u)), vec3<u32>(~4294967295u, _wgslsmith_div_u32(u_input.a, u_input.b.x), u_input.b.x)).c, global1[_wgslsmith_index_u32(12920u, 26u)], Struct_2(func_3(vec2<bool>(var_0.a.x, false), select(var_1.a, var_0.a, vec3<bool>(var_0.a.x, global2.x, false)), var_1.c.b), var_1.b, Struct_1(var_1.c.a, _wgslsmith_div_vec3_f32(vec3<f32>(var_1.b, global1[_wgslsmith_index_u32(4294967295u, 26u)], -1971f), var_1.c.b), max(var_1.d.x, 2147483647i)), var_0.d, _wgslsmith_sub_vec2_u32(reverseBits(vec2<u32>(var_0.c.a, var_1.c.a)), countOneBits(vec2<u32>(4294967295u, 4294967295u)))), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b.x, ~var_0.c.a, 83002u), u_input.b)).c, global1[_wgslsmith_index_u32(var_1.c.a, 26u)], Struct_2(vec3<bool>(!(-1151f != var_0.c.b.x), !select(false, var_1.a.x, arg_0.x), any(!vec4<bool>(var_1.a.x, global2.x, global2.x, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c.b.x + _wgslsmith_f_op_f32(-var_1.b))), global3[_wgslsmith_index_u32(~(~(4294967295u & var_0.c.a)), 27u)], ~abs(~vec4<i32>(15i, -25345i, arg_1, global0.x)), vec2<u32>(func_2(vec4<u32>(var_0.c.a, 41137u, u_input.b.x, 6432u), 24712u & var_1.c.a, func_4(var_1.c, var_0.c.b.x, Struct_2(var_0.a, 1384f, Struct_1(u_input.a, vec3<f32>(-2208f, var_0.b, -464f), global0.x), var_0.d, vec2<u32>(u_input.b.x, var_1.c.a)), u_input.b)), firstTrailingBit(var_1.e.x))), ~vec3<u32>(18558u, 4294967295u, u_input.a)).e.x;
    let var_3 = vec4<bool>(1357u > ~u_input.a, !select(!all(var_1.a), var_0.c.b.x <= _wgslsmith_f_op_f32(-1822f + var_0.c.b.x), !(!global2.x)), true, arg_0.x);
    var var_4 = var_0.a.x;
    return func_4(global3[_wgslsmith_index_u32(u_input.a, 27u)], -1000f, func_4(func_4(global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_mult_u32(91559u, var_1.e.x), var_1.c.a | 3769u), 27u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(867f)) + _wgslsmith_f_op_f32(min(var_0.c.b.x, -467f))), func_4(func_4(Struct_1(var_0.e.x, var_0.c.b, var_1.d.x), var_0.b, Struct_2(var_3.xwz, -409f, global3[_wgslsmith_index_u32(var_1.c.a, 27u)], var_0.d, vec2<u32>(var_1.c.a, 35885u)), vec3<u32>(var_0.c.a, var_0.e.x, 76409u)).c, _wgslsmith_f_op_f32(sign(493f)), func_4(Struct_1(u_input.b.x, vec3<f32>(1000f, 1443f, 1039f), 0i), var_0.c.b.x, Struct_2(vec3<bool>(var_3.x, arg_0.x, true), global1[_wgslsmith_index_u32(49680u, 26u)], var_1.c, vec4<i32>(23385i, -1i, arg_1, 24556i), var_0.e), u_input.b), vec3<u32>(1u, u_input.b.x, var_1.c.a)), ~(~u_input.b)).c, _wgslsmith_f_op_f32(f32(-1f) * -222f), func_4(Struct_1(var_0.e.x, _wgslsmith_f_op_vec3_f32(min(var_0.c.b, var_0.c.b)), -13224i), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(var_1.b)))), Struct_2(vec3<bool>(global2.x, false, var_1.a.x), _wgslsmith_f_op_f32(max(global1[_wgslsmith_index_u32(var_1.e.x, 26u)], var_0.c.b.x)), global3[_wgslsmith_index_u32(var_1.c.a, 27u)], ~vec4<i32>(var_1.c.c, arg_1, arg_1, u_input.c.x), vec2<u32>(u_input.b.x, 0u)), reverseBits(abs(vec3<u32>(47218u, var_1.c.a, 0u)))), ~(~u_input.b)), firstTrailingBit(u_input.b)).c;
}

fn func_5(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: vec3<i32>) -> f32 {
    var var_0 = select(!global2.x, ~_wgslsmith_add_i32(arg_2.x << (arg_1.a % 32u), u_input.c.x & 2147483647i) < arg_0.x, select(global2.x, false, false));
    var var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-149f * -609f), 1000f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1887f - arg_1.b.x))), _wgslsmith_f_op_f32(max(arg_1.b.x, _wgslsmith_f_op_f32(-719f * arg_1.b.x))))), vec4<f32>(global1[_wgslsmith_index_u32(select(_wgslsmith_dot_vec3_u32(u_input.b, vec3<u32>(4294967295u, arg_1.a, 0u)), 0u >> (0u % 32u), true) << ((func_4(Struct_1(25661u, vec3<f32>(arg_1.b.x, global1[_wgslsmith_index_u32(4294967295u, 26u)], arg_1.b.x), u_input.c.x), arg_1.b.x, Struct_2(vec3<bool>(true, global2.x, false), 858f, arg_1, vec4<i32>(global0.x, -22090i, arg_2.x, -2147483647i), vec2<u32>(63383u, 0u)), vec3<u32>(4294967295u, 35950u, u_input.b.x)).c.a ^ ~u_input.a) % 32u), 26u)], _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(19678u, 26u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.b.x + 1539f))), arg_1.b.x));
    var var_2 = firstTrailingBit(_wgslsmith_sub_i32(40488i, select(-arg_0.x, ~2147483647i, select(global2.x, true, true))));
    let var_3 = ~arg_0.x;
    var_0 = -u_input.c.x == -4029i;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + 702f));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.a, 26u)] + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_5(~(vec3<i32>(2147483647i, global0.x, u_input.c.x) ^ global0.xxz), func_1(!vec4<bool>(global2.x, global2.x, false, true), _wgslsmith_mult_i32(u_input.c.x, global0.x)), u_input.c))));
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(~u_input.b.x, u_input.a), 26u)]) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1604f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global1[_wgslsmith_index_u32(u_input.a, 26u)], 649f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-393f))));
    var var_1 = firstTrailingBit(~(u_input.a & u_input.b.x));
    global0 = -abs(~_wgslsmith_div_vec4_i32(vec4<i32>(global0.x, u_input.c.x, 1i, -79273i), vec4<i32>(global0.x, -1i, 39942i, -2147483647i)) ^ _wgslsmith_mod_vec4_i32(vec4<i32>(28360i, 45580i, -2147483647i, u_input.c.x), max(vec4<i32>(4051i, 20050i, global0.x, u_input.c.x), vec4<i32>(global0.x, 1i, u_input.c.x, 2845i))));
    var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_5(_wgslsmith_add_vec3_i32(_wgslsmith_sub_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(global0.x, 1i, u_input.c.x), vec3<i32>(u_input.c.x, u_input.c.x, u_input.c.x)), vec3<i32>(u_input.c.x, u_input.c.x, global0.x)), vec3<i32>(~global0.x, u_input.c.x, countOneBits(u_input.c.x))), func_4(Struct_1(u_input.a >> (u_input.b.x % 32u), _wgslsmith_div_vec3_f32(vec3<f32>(global1[_wgslsmith_index_u32(3353u, 26u)], global1[_wgslsmith_index_u32(u_input.a, 26u)], -1666f), vec3<f32>(global1[_wgslsmith_index_u32(6502u, 26u)], global1[_wgslsmith_index_u32(u_input.b.x, 26u)], global1[_wgslsmith_index_u32(15802u, 26u)])), 1i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1000f))), Struct_2(!vec3<bool>(global2.x, global2.x, true), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.b.x, 26u)] * -1000f), Struct_1(u_input.a, vec3<f32>(global1[_wgslsmith_index_u32(4294967295u, 26u)], global1[_wgslsmith_index_u32(39908u, 26u)], -139f), u_input.c.x), vec4<i32>(-82178i, 3344i, 0i, global0.x) >> (vec4<u32>(u_input.a, u_input.a, 0u, u_input.b.x) % vec4<u32>(32u)), u_input.b.zx), vec3<u32>(4075u, 1u, u_input.a) & ~u_input.b).c, firstLeadingBit(~_wgslsmith_div_vec3_i32(global0.wzz, global0.wxw))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_i32(-countOneBits(vec4<i32>(u_input.c.x, -8405i, global0.x, global0.x)), max(~vec4<i32>(u_input.c.x, global0.x, 1i, global0.x), vec4<i32>(u_input.c.x, 2147483647i, u_input.c.x, u_input.c.x) | vec4<i32>(u_input.c.x, 3761i, u_input.c.x, global0.x))) >> (vec4<u32>(_wgslsmith_div_u32(u_input.a, u_input.b.x), 29113u, ~_wgslsmith_clamp_u32(14580u, 45121u, u_input.b.x), select(~u_input.a, _wgslsmith_mult_u32(42068u, u_input.b.x), func_4(Struct_1(u_input.b.x, vec3<f32>(global1[_wgslsmith_index_u32(1u, 26u)], 1000f, global1[_wgslsmith_index_u32(17788u, 26u)]), u_input.c.x), 1929f, Struct_2(vec3<bool>(true, global2.x, global2.x), global1[_wgslsmith_index_u32(1u, 26u)], global3[_wgslsmith_index_u32(u_input.a, 27u)], vec4<i32>(-2147483647i, global0.x, global0.x, global0.x), vec2<u32>(u_input.b.x, 1u)), u_input.b).a.x)) % vec4<u32>(32u)));
}


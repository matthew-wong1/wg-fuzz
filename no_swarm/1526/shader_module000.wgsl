struct Struct_1 {
    a: u32,
    b: i32,
    c: bool,
    d: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: vec4<i32>,
}

struct Struct_3 {
    a: vec2<bool>,
}

struct Struct_4 {
    a: vec2<f32>,
    b: i32,
}

struct Struct_5 {
    a: i32,
    b: vec2<bool>,
    c: Struct_4,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<f32>,
    c: f32,
    d: vec3<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 19>;

var<private> global1: Struct_4 = Struct_4(vec2<f32>(-1269f, -297f), 45227i);

var<private> global2: array<Struct_5, 23>;

var<private> global3: u32 = 0u;

var<private> global4: Struct_4 = Struct_4(vec2<f32>(359f, 106f), -63664i);

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: u32) -> u32 {
    let var_0 = _wgslsmith_add_vec3_u32(vec3<u32>(~(~arg_0), arg_0 & ~46895u, 19595u), vec3<u32>(~(arg_0 ^ 10437u), ~(51876u ^ arg_0), arg_0)) & select(vec3<u32>(arg_0, ~(~arg_0), _wgslsmith_dot_vec2_u32(vec2<u32>(0u, arg_0), vec2<u32>(4294967295u, arg_0))), reverseBits(vec3<u32>(1u, arg_0, 12461u)), !vec3<bool>(true, all(vec2<bool>(false, false)), false));
    global2 = array<Struct_5, 23>();
    global1 = Struct_4(global1.a, global1.b);
    global3 = ~_wgslsmith_sub_u32(4294967295u, ~(~var_0.x));
    global2 = array<Struct_5, 23>();
    return var_0.x | var_0.x;
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_2(Struct_1(func_3(1u), 1i, true, vec3<i32>(_wgslsmith_dot_vec2_i32(abs(vec2<i32>(14165i, -103i)), vec2<i32>(40265i, global4.b)), 1i, -2147483647i >> (select(0u, 51936u, false) % 32u))), !((global1.b >> (21579u % 32u)) != _wgslsmith_sub_i32(90425i, -1i)) & true, vec4<i32>(-1i) * -countOneBits(vec4<i32>(79242i, 2147483647i, global1.b, global1.b) >> (vec4<u32>(43820u, 4294967295u, 64333u, 1u) % vec4<u32>(32u))));
    var var_1 = ~_wgslsmith_clamp_vec3_i32(vec3<i32>(-1i) * -var_0.a.d, var_0.c.wxy, reverseBits(-vec3<i32>(2147483647i, u_input.a, -65781i) ^ var_0.a.d));
    var var_2 = min(_wgslsmith_sub_vec3_i32(-vec3<i32>(var_0.c.x ^ 35283i, var_0.c.x, ~global1.b), var_0.c.xzw), reverseBits(var_0.c.zzw));
    var var_3 = select(!(!vec3<bool>(!var_0.a.c, all(vec2<bool>(false, false)), true | var_0.b)), select(select(!(!vec3<bool>(var_0.b, true, var_0.b)), vec3<bool>(false, var_0.b, all(vec4<bool>(true, true, true, false))), vec3<bool>(true, var_0.b && var_0.b, any(vec3<bool>(var_0.a.c, true, var_0.b)))), select(vec3<bool>(false, false & var_0.b, false), vec3<bool>(var_0.a.c & true, all(vec3<bool>(var_0.b, false, true)), false), select(select(vec3<bool>(var_0.a.c, var_0.b, false), vec3<bool>(false, true, var_0.b), vec3<bool>(true, false, true)), !vec3<bool>(false, true, var_0.a.c), !var_0.a.c)), select(select(select(vec3<bool>(false, var_0.b, var_0.a.c), vec3<bool>(true, true, true), var_0.a.c), !vec3<bool>(var_0.a.c, var_0.b, var_0.b), true), select(vec3<bool>(true, var_0.a.c, var_0.a.c), select(vec3<bool>(var_0.a.c, true, var_0.b), vec3<bool>(false, false, var_0.a.c), var_0.b), select(vec3<bool>(var_0.b, true, true), vec3<bool>(true, true, var_0.b), vec3<bool>(false, false, var_0.a.c))), var_0.b && var_0.a.c)), !select(select(!vec3<bool>(true, var_0.a.c, false), !vec3<bool>(var_0.b, true, true), var_0.b | var_0.a.c), vec3<bool>(var_0.b, var_0.b, false && var_0.a.c), !vec3<bool>(false, var_0.a.c, false)));
    return var_0.a;
}

fn func_4(arg_0: Struct_1) -> Struct_2 {
    let var_0 = Struct_2(arg_0, global4.a.x > global1.a.x, abs(firstTrailingBit(_wgslsmith_sub_vec4_i32(vec4<i32>(-2147483647i, global4.b, -81098i, 0i) & vec4<i32>(global4.b, u_input.a, 0i, 1i), ~vec4<i32>(global4.b, 31512i, -19298i, -4026i)))));
    let var_1 = ~(~_wgslsmith_mod_vec3_u32(~countOneBits(vec3<u32>(arg_0.a, 41074u, 1u)), ~select(vec3<u32>(var_0.a.a, var_0.a.a, var_0.a.a), vec3<u32>(1u, 0u, 4294967295u), true)));
    let var_2 = all(select(vec3<bool>(true, true, true), !select(vec3<bool>(var_0.b, false, false), vec3<bool>(arg_0.c, false, false), arg_0.c), true & arg_0.c));
    let var_3 = func_2().b;
    var var_4 = Struct_2(arg_0, false, _wgslsmith_sub_vec4_i32(vec4<i32>(-27472i, firstTrailingBit(17269i), _wgslsmith_add_i32(u_input.a, -40481i), _wgslsmith_dot_vec2_i32(arg_0.d.xx, vec2<i32>(u_input.a, u_input.a))), var_0.c) & max(select(abs(var_0.c), -var_0.c, false), ~(~vec4<i32>(global4.b, 0i, -2147483647i, global1.b))));
    return var_0;
}

fn func_5(arg_0: Struct_2, arg_1: vec4<i32>, arg_2: vec3<u32>, arg_3: f32) -> Struct_2 {
    global0 = array<vec2<f32>, 19>();
    let var_0 = select(~_wgslsmith_dot_vec4_i32(-(~arg_1), arg_1 & -arg_0.c), ~((-22503i >> (arg_0.a.a % 32u)) & arg_0.a.d.x), all(select(vec3<bool>(true, true | arg_0.b, select(true, arg_0.a.c, arg_0.a.c)), !(!vec3<bool>(arg_0.b, true, arg_0.b)), false)));
    var var_1 = Struct_5(1i, vec2<bool>(true, true), Struct_4(_wgslsmith_f_op_vec2_f32(exp2(global0[_wgslsmith_index_u32(44481u, 19u)])), _wgslsmith_dot_vec2_i32(-arg_1.zy, -(vec2<i32>(1i, var_0) >> (vec2<u32>(arg_0.a.a, arg_2.x) % vec2<u32>(32u))))), _wgslsmith_div_vec2_i32(reverseBits(arg_1.xz) >> (~arg_2.zy % vec2<u32>(32u)), arg_0.a.d.zx & arg_1.wy));
    global1 = Struct_4(vec2<f32>(-384f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(-695f)), _wgslsmith_div_f32(290f, global4.a.x))) * _wgslsmith_f_op_f32(max(1218f, 695f)))), _wgslsmith_mod_i32(arg_0.a.b, _wgslsmith_add_i32(u_input.a, 932i) << (_wgslsmith_mod_u32(23547u, arg_2.x) % 32u)));
    global3 = abs(_wgslsmith_dot_vec2_u32((arg_2.zz ^ vec2<u32>(4294967295u, arg_0.a.a)) | select(arg_2.zy, ~arg_2.xy, false), max(firstLeadingBit(arg_2.zz) << (~arg_2.zz % vec2<u32>(32u)), ~(~vec2<u32>(arg_2.x, 4294967295u)))));
    return Struct_2(Struct_1(0u, var_0, any(!vec4<bool>(var_1.b.x, true, arg_0.a.c, true)) & (_wgslsmith_div_u32(1u, arg_2.x) < arg_2.x), ~vec3<i32>(u_input.a, _wgslsmith_clamp_i32(-2147483647i, 46422i, 11866i), -global1.b)), true, vec4<i32>(min(217i, firstLeadingBit(~(-1659i))), ~39639i, -1i << (arg_0.a.a % 32u), i32(-1i) * -arg_0.a.b));
}

fn func_6(arg_0: Struct_2, arg_1: Struct_5) -> Struct_5 {
    let var_0 = _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(global1.a.x, -1194f)));
    var var_1 = func_4(arg_0.a).c.x;
    var var_2 = 0i;
    let var_3 = true;
    let var_4 = vec3<u32>(arg_0.a.a, _wgslsmith_div_u32(arg_0.a.a, func_4(Struct_1(min(arg_0.a.a, arg_0.a.a), arg_0.c.x, arg_0.b & arg_1.b.x, vec3<i32>(u_input.a, 0i, global4.b))).a.a), min(1u, 4294967295u));
    return Struct_5(arg_1.c.b, arg_1.b, arg_1.c, -(~vec2<i32>(708i, -1i)) >> (vec2<u32>(~(arg_0.a.a >> (var_4.x % 32u)), abs(arg_0.a.a)) % vec2<u32>(32u)));
}

fn func_1() -> Struct_3 {
    let var_0 = func_6(func_5(func_4(func_2()), min(vec4<i32>(abs(global1.b), 9349i, func_4(Struct_1(4294967295u, global4.b, true, vec3<i32>(-2147483647i, global1.b, u_input.a))).a.d.x, 1i), ~abs(vec4<i32>(global4.b, 0i, global4.b, -14696i))), vec3<u32>(~reverseBits(18608u), countOneBits(1u) >> (1u % 32u), ~max(1u, 110774u)), _wgslsmith_f_op_f32(step(1f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-452f, global4.a.x)), global1.a.x)))), global2[_wgslsmith_index_u32(select(_wgslsmith_sub_u32(68498u, max(1u, firstLeadingBit(0u))), 1u, func_5(Struct_2(Struct_1(19381u, -1i, true, vec3<i32>(global1.b, 46616i, 7868i)), true, vec4<i32>(-11221i, u_input.a, global1.b, global4.b) >> (vec4<u32>(6966u, 54759u, 65344u, 67973u) % vec4<u32>(32u))), _wgslsmith_sub_vec4_i32(firstLeadingBit(vec4<i32>(global1.b, u_input.a, global4.b, 1i)), firstTrailingBit(vec4<i32>(global4.b, u_input.a, -43607i, 0i))), firstLeadingBit(firstTrailingBit(vec3<u32>(4294967295u, 1u, 60190u))), _wgslsmith_f_op_f32(global4.a.x * global1.a.x)).a.c), 23u)]);
    global0 = array<vec2<f32>, 19>();
    global3 = 1u;
    global3 = ~max(4294967295u, 0u);
    let var_1 = func_4(func_4(Struct_1(~(~36242u), min(global4.b | 1i, -global4.b), global4.a.x >= _wgslsmith_div_f32(global4.a.x, 724f), vec3<i32>(func_4(Struct_1(29608u, u_input.a, true, vec3<i32>(37611i, 1i, 10565i))).c.x, ~1i, _wgslsmith_sub_i32(-20179i, -1907i)))).a);
    return Struct_3(var_0.b);
}

fn func_7(arg_0: Struct_3, arg_1: Struct_3, arg_2: bool, arg_3: Struct_1) -> bool {
    var var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(744f, _wgslsmith_f_op_f32(global1.a.x + global1.a.x)))));
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-697f, global4.a.x))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-308f, global1.a.x))), global0[_wgslsmith_index_u32((func_4(arg_3).a.a ^ _wgslsmith_mult_u32(arg_3.a, 4294967295u)) << (arg_3.a % 32u), 19u)], !arg_1.a.x)) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(global4.a)) + _wgslsmith_div_vec2_f32(vec2<f32>(554f, global4.a.x), vec2<f32>(-244f, -475f)))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a.x))), false)));
    let var_2 = func_1();
    global1 = func_6(func_5(Struct_2(arg_3, arg_2, vec4<i32>(arg_3.d.x, i32(-1i) * -1i, _wgslsmith_clamp_i32(u_input.a, 8607i, global4.b), global4.b)), -vec4<i32>(-40757i, arg_3.b, 2147483647i, 0i & arg_3.d.x), vec3<u32>(_wgslsmith_sub_u32(arg_3.a << (63958u % 32u), func_5(Struct_2(Struct_1(4183u, -2147483647i, var_2.a.x, vec3<i32>(-2147483647i, arg_3.b, arg_3.b)), true, vec4<i32>(88302i, u_input.a, global1.b, 2147483647i)), vec4<i32>(-55271i, arg_3.b, u_input.a, u_input.a), vec3<u32>(arg_3.a, 0u, 1997u), global4.a.x).a.a), arg_3.a, _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(4058u, 0u), vec2<u32>(52318u, arg_3.a)), select(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(arg_3.a, 0u), false))), _wgslsmith_f_op_f32(global1.a.x + _wgslsmith_f_op_f32(f32(-1f) * -1395f))), func_6(func_4(func_5(func_5(Struct_2(Struct_1(0u, arg_3.b, false, arg_3.d), false, vec4<i32>(0i, global4.b, global1.b, u_input.a)), vec4<i32>(-9159i, global1.b, 1i, arg_3.d.x), vec3<u32>(68229u, 1u, 45878u), var_1.x), _wgslsmith_mod_vec4_i32(vec4<i32>(-2147483647i, u_input.a, arg_3.b, -2147483647i), vec4<i32>(global4.b, 2147483647i, 14437i, -2147483647i)), abs(vec3<u32>(47048u, 55902u, arg_3.a)), func_6(Struct_2(arg_3, false, vec4<i32>(global4.b, global1.b, 46015i, 2147483647i)), Struct_5(-1i, var_2.a, Struct_4(global1.a, 62741i), arg_3.d.xy)).c.a.x).a), Struct_5((i32(-1i) * -1i) << (arg_3.a % 32u), func_6(func_4(arg_3), func_6(Struct_2(arg_3, arg_2, vec4<i32>(-17009i, 48550i, global1.b, 35566i)), Struct_5(global4.b, arg_0.a, Struct_4(global0[_wgslsmith_index_u32(36859u, 19u)], 1i), vec2<i32>(-35629i, u_input.a)))).b, Struct_4(vec2<f32>(var_1.x, var_1.x), select(global1.b, 13886i, false)), ~vec2<i32>(0i, arg_3.b)))).c;
    global1 = func_6(Struct_2(arg_3, true, firstTrailingBit(vec4<i32>(-18853i, -43607i, u_input.a, 2865i) | vec4<i32>(global1.b, u_input.a, global4.b, global4.b))), func_6(func_5(Struct_2(func_4(arg_3).a, arg_0.a.x, -vec4<i32>(2147483647i, -29613i, global1.b, 0i)), ~vec4<i32>(12311i, u_input.a, -2147483647i, 49940i), max(~vec3<u32>(7580u, 1u, 36594u), countOneBits(vec3<u32>(0u, arg_3.a, arg_3.a))), 1000f), global2[_wgslsmith_index_u32(func_3(_wgslsmith_clamp_u32(arg_3.a, arg_3.a | arg_3.a, arg_3.a)), 23u)])).c;
    return var_2.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<f32>, 19>();
    let var_0 = global1.a.x;
    let var_1 = -432f;
    let var_2 = !func_7(func_1(), func_1(), true, Struct_1(countOneBits(~1u), _wgslsmith_div_i32(func_4(Struct_1(32197u, global4.b, false, vec3<i32>(-2147483647i, -2147483647i, 1i))).a.b, global4.b), !func_1().a.x, abs(vec3<i32>(-2147483647i, global1.b, u_input.a) | vec3<i32>(1i, global4.b, -50023i))));
    var var_3 = Struct_1(_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_mult_u32(1u, countOneBits(1u)), func_4(func_2()).a.a, ~40375u, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(48952u, 1u, 0u, 0u))), vec4<u32>(1u, 1u, 1u, 1u)), ~global4.b, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -717f))) != _wgslsmith_f_op_f32(f32(-1f) * -1236f), ~vec3<i32>(func_6(func_4(Struct_1(7896u, u_input.a, var_2, vec3<i32>(global4.b, u_input.a, global4.b))), func_6(Struct_2(Struct_1(4294967295u, global1.b, true, vec3<i32>(0i, 1i, u_input.a)), false, vec4<i32>(-1i, global4.b, 30841i, 2147483647i)), Struct_5(2147483647i, vec2<bool>(true, var_2), Struct_4(vec2<f32>(global4.a.x, 988f), u_input.a), vec2<i32>(2147483647i, global4.b)))).c.b, global1.b, 12708i));
    var var_4 = func_6(Struct_2(Struct_1(~1u, i32(-1i) * -global4.b, !(!var_3.c), vec3<i32>(u_input.a, global4.b, global4.b) ^ min(var_3.d, var_3.d)), var_3.c, ~(~(-vec4<i32>(64815i, -2147483647i, var_3.d.x, 26885i)))), Struct_5(var_3.b, select(!func_6(Struct_2(Struct_1(var_3.a, -30466i, var_3.c, vec3<i32>(23929i, -11042i, -27826i)), true, vec4<i32>(global4.b, 2147483647i, 0i, global1.b)), global2[_wgslsmith_index_u32(83098u, 23u)]).b, vec2<bool>(true, false), func_6(func_5(Struct_2(Struct_1(var_3.a, global1.b, var_2, var_3.d), true, vec4<i32>(0i, 106829i, u_input.a, 1i)), vec4<i32>(-1i, var_3.d.x, u_input.a, 2147483647i), vec3<u32>(4294967295u, var_3.a, 4294967295u), var_1), global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(var_3.a, 6584u), 23u)]).b.x), Struct_4(vec2<f32>(_wgslsmith_f_op_f32(598f - var_1), 1521f), (var_3.b >> (var_3.a % 32u)) ^ -5792i), ~(~vec2<i32>(0i, -21115i)))).c;
    var var_5 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_4.a.x, _wgslsmith_f_op_f32(-var_4.a.x), _wgslsmith_f_op_f32(max(808f, 633f)), _wgslsmith_f_op_f32(ceil(var_4.a.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(vec4<f32>(432f, -534f, -1276f, 274f), vec4<f32>(var_4.a.x, var_4.a.x, var_1, global1.a.x))))))));
    let var_6 = func_1().a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(var_5.yxw - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(max(var_5.yyy, vec3<f32>(global1.a.x, var_4.a.x, var_1))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-568f, global1.a.x, 392f) * var_5.xwz))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-673f, -1000f, 1783f) - _wgslsmith_f_op_vec3_f32(-var_5.yyw)), !var_6.x && (var_3.c || var_3.c)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-global1.a.x), 626f) - vec2<f32>(1f, 1f)) + _wgslsmith_f_op_vec2_f32(global0[_wgslsmith_index_u32(select(var_3.a, func_3(var_3.a), global1.b <= global4.b), 19u)] - vec2<f32>(1f, 1f))), -279f, var_3.d, _wgslsmith_sub_u32(84062u, ~(var_3.a >> (firstTrailingBit(0u) % 32u))));
}


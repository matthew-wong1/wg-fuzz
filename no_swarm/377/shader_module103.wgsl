struct Struct_1 {
    a: vec4<bool>,
    b: vec2<f32>,
    c: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
    d: vec4<i32>,
    e: bool,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: vec2<bool>,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 11>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: u32) -> f32 {
    global0 = array<f32, 11>();
    var var_0 = _wgslsmith_mod_vec3_u32(firstTrailingBit(vec3<u32>(u_input.a, abs(56792u), _wgslsmith_clamp_u32(79719u, arg_0, 0u))) | vec3<u32>(u_input.a, abs(_wgslsmith_add_u32(4294967295u, u_input.a)), 0u), ((reverseBits(vec3<u32>(arg_0, 1u, u_input.a)) ^ ~vec3<u32>(1u, u_input.a, 0u)) << (_wgslsmith_add_vec3_u32(vec3<u32>(arg_0, 0u, 1u) >> (vec3<u32>(1u, arg_0, 24295u) % vec3<u32>(32u)), vec3<u32>(arg_0, u_input.a, arg_0)) % vec3<u32>(32u))) << ((~(~vec3<u32>(3214u, u_input.a, u_input.a)) << (select(~vec3<u32>(u_input.a, arg_0, 64235u), abs(vec3<u32>(0u, arg_0, u_input.a)), -206f == global0[_wgslsmith_index_u32(arg_0, 11u)]) % vec3<u32>(32u))) % vec3<u32>(32u)));
    let var_1 = Struct_2(Struct_1(select(select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, false)), select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true), true), !select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, false), false)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(396f, 1094f)))), -vec3<i32>(u_input.b.x, u_input.b.x, ~(-1i))), ~min(u_input.a >> (var_0.x % 32u), u_input.a), Struct_1(select(select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), select(select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, false), false), select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, false), true), true), true), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(trunc(global0[_wgslsmith_index_u32(arg_0, 11u)])), 535f)), vec3<i32>(~(~u_input.b.x), 2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(24344i, u_input.b.x), -u_input.b.xy))), ~reverseBits(vec4<i32>(_wgslsmith_add_i32(u_input.b.x, u_input.b.x), 9592i, 1i, ~u_input.b.x)), global0[_wgslsmith_index_u32(firstTrailingBit(~34965u), 11u)] < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-986f)) - _wgslsmith_div_f32(global0[_wgslsmith_index_u32(u_input.a, 11u)], global0[_wgslsmith_index_u32(0u, 11u)]))));
    global0 = array<f32, 11>();
    var var_2 = var_1.e;
    return 1121f;
}

fn func_2(arg_0: Struct_2, arg_1: Struct_3, arg_2: Struct_3) -> f32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(769f, _wgslsmith_f_op_f32(round(arg_1.b.b.x)), _wgslsmith_f_op_f32(func_3(arg_1.d.x)), -402f))) * _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(1471f, arg_2.b.b.x, 359f, 1063f), vec4<f32>(-932f, 799f, arg_1.b.b.x, 207f)) + _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(640f, arg_0.a.b.x, arg_2.a, 1000f)))))))));
    var var_1 = arg_2;
    let var_2 = vec4<i32>(12426i, -2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_add_i32(_wgslsmith_sub_i32(var_1.b.c.x, var_1.b.c.x), -arg_1.b.c.x), select(39011i << (0u % 32u), -12673i, true), arg_1.b.c.x, -19316i), vec4<i32>(_wgslsmith_dot_vec3_i32(max(vec3<i32>(2147483647i, arg_0.d.x, arg_0.d.x), arg_0.c.c), _wgslsmith_mult_vec3_i32(vec3<i32>(arg_1.b.c.x, u_input.b.x, var_1.b.c.x), var_1.b.c)), u_input.b.x, firstLeadingBit(2147483647i), -abs(u_input.b.x))), _wgslsmith_mod_i32(u_input.b.x, _wgslsmith_dot_vec2_i32(-vec2<i32>(-45988i, arg_2.b.c.x) << (abs(vec2<u32>(var_1.d.x, arg_2.d.x)) % vec2<u32>(32u)), arg_0.d.wz)));
    global0 = array<f32, 11>();
    let var_3 = Struct_3(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_3(min(_wgslsmith_dot_vec4_u32(vec4<u32>(28341u, 1u, arg_2.d.x, 1581u), vec4<u32>(u_input.a, u_input.a, arg_0.b, 6697u)), abs(arg_1.d.x)))), -1000f)), var_1.b, !vec2<bool>(!(!arg_0.a.a.x), false), ~arg_1.d);
    return global0[_wgslsmith_index_u32(abs(arg_1.d.x), 11u)];
}

fn func_1() -> Struct_2 {
    var var_0 = ~(~vec4<i32>(-u_input.b.x, u_input.b.x, ~(u_input.b.x & u_input.b.x), u_input.b.x));
    global0 = array<f32, 11>();
    var var_1 = Struct_3(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(4294967295u, 11u)] * _wgslsmith_f_op_f32(func_2(Struct_2(Struct_1(vec4<bool>(false, true, false, true), vec2<f32>(439f, global0[_wgslsmith_index_u32(u_input.a, 11u)]), u_input.b), u_input.a, Struct_1(vec4<bool>(true, false, true, false), vec2<f32>(global0[_wgslsmith_index_u32(53857u, 11u)], -309f), var_0.wzy), vec4<i32>(42371i, -2147483647i, u_input.b.x, -1i), true), Struct_3(1000f, Struct_1(vec4<bool>(true, false, true, true), vec2<f32>(1318f, global0[_wgslsmith_index_u32(u_input.a, 11u)]), vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x)), vec2<bool>(false, false), vec3<u32>(1u, u_input.a, 0u)), Struct_3(global0[_wgslsmith_index_u32(9895u, 11u)], Struct_1(vec4<bool>(true, false, true, false), vec2<f32>(global0[_wgslsmith_index_u32(13225u, 11u)], -1000f), var_0.xxy), vec2<bool>(true, true), vec3<u32>(u_input.a, u_input.a, u_input.a))))) - global0[_wgslsmith_index_u32(~80410u, 11u)]))), Struct_1(vec4<bool>(true, true, true, true), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-964f, global0[_wgslsmith_index_u32(21514u, 11u)])) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1000f, 1302f), vec2<f32>(1448f, 800f), false)))), _wgslsmith_add_vec3_i32(_wgslsmith_add_vec3_i32(abs(vec3<i32>(var_0.x, 93122i, 8667i)), var_0.zxw), vec3<i32>(-1i ^ u_input.b.x, _wgslsmith_mod_i32(-1i, 23808i), u_input.b.x))), select(select(select(select(vec2<bool>(true, false), vec2<bool>(true, true), false), select(vec2<bool>(false, true), vec2<bool>(true, true), true), select(vec2<bool>(true, true), vec2<bool>(true, true), true)), vec2<bool>(true, true), !any(vec4<bool>(false, false, false, false))), select(select(vec2<bool>(false, false), vec2<bool>(true, true), true), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true))), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.a, 16145u), vec3<u32>(0u, u_input.a, u_input.a)), 11u)]) >= global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a, 3274u), vec2<u32>(0u, u_input.a)), ~vec2<u32>(0u, u_input.a)), 11u)]), _wgslsmith_mod_vec3_u32(firstLeadingBit(_wgslsmith_mod_vec3_u32(~vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(u_input.a, 1u, 79067u) & vec3<u32>(21083u, 100233u, 0u))), ~countOneBits(~vec3<u32>(4294967295u, 4294967295u, u_input.a))));
    var var_2 = Struct_3(-707f, var_1.b, var_1.c, ~vec3<u32>(~26819u, ~reverseBits(var_1.d.x), u_input.a));
    var var_3 = var_2.b;
    return Struct_2(var_1.b, _wgslsmith_dot_vec4_u32(vec4<u32>(16383u, ~u_input.a, ~(~17780u), 55374u), ~(vec4<u32>(u_input.a, var_2.d.x, u_input.a, 0u) ^ vec4<u32>(51705u, var_2.d.x, 46394u, var_2.d.x)) >> ((~vec4<u32>(u_input.a, u_input.a, 4319u, u_input.a) << (~vec4<u32>(1u, u_input.a, u_input.a, 41187u) % vec4<u32>(32u))) % vec4<u32>(32u))), var_2.b, (vec4<i32>(-1i) * -vec4<i32>(2147483647i, 0i, u_input.b.x, var_3.c.x)) & firstTrailingBit(vec4<i32>(var_3.c.x, 53653i, var_2.b.c.x, 1i)), true);
}

fn func_4(arg_0: Struct_2, arg_1: vec2<u32>) -> vec4<bool> {
    global0 = array<f32, 11>();
    var var_0 = reverseBits(vec3<u32>(reverseBits((4294967295u & arg_1.x) & (arg_1.x >> (u_input.a % 32u))), arg_1.x, arg_0.b));
    var var_1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_2(func_1(), Struct_3(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(4294967295u, 11u)] - arg_0.c.b.x), Struct_1(arg_0.c.a, vec2<f32>(-657f, -2387f), u_input.b), func_1().a.a.yy, vec3<u32>(var_0.x, arg_0.b, arg_0.b)), Struct_3(_wgslsmith_f_op_f32(sign(-770f)), arg_0.a, vec2<bool>(arg_0.e, arg_0.a.a.x), vec3<u32>(4294967295u, var_0.x, 70789u) << (vec3<u32>(1u, 1u, arg_0.b) % vec3<u32>(32u))))))) <= 235f;
    var var_2 = Struct_2(Struct_1(select(select(vec4<bool>(arg_0.c.a.x, arg_0.c.a.x, arg_0.c.a.x, true), select(arg_0.c.a, arg_0.c.a, arg_0.c.a), true), select(!vec4<bool>(arg_0.e, arg_0.c.a.x, false, arg_0.e), !vec4<bool>(arg_0.e, arg_0.c.a.x, false, arg_0.c.a.x), arg_0.a.a.x), all(vec4<bool>(true, false, false, arg_0.a.a.x))), vec2<f32>(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.b, var_0.x, var_0.x), vec3<u32>(4294967295u, 4294967295u, 52674u)), 11u)], _wgslsmith_f_op_f32(func_3(~88067u))), min(-(~arg_0.d.zzz), -vec3<i32>(-32089i, -1i, arg_0.d.x))), ~1u ^ select(~(~var_0.x), 4294967295u << (~arg_1.x % 32u), func_1().c.c.x < _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, arg_0.c.c.x, 11853i, u_input.b.x), arg_0.d)), arg_0.c, func_1().d, arg_0.e);
    let var_3 = var_2.a;
    return var_3.a;
}

fn func_5(arg_0: vec3<i32>, arg_1: vec4<bool>, arg_2: f32, arg_3: vec3<i32>) -> vec4<bool> {
    let var_0 = 33785i;
    var var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(183f, _wgslsmith_f_op_f32(select(global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 88569u, u_input.a, 32040u), vec4<u32>(27728u, 1u, u_input.a, 5710u)), 11u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.a, 11u)] + -181f)), !(!arg_1.x))), _wgslsmith_f_op_f32(f32(-1f) * -1184f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2 + 898f) - _wgslsmith_f_op_f32(694f + -175f))));
    var var_2 = vec3<u32>(_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.a, u_input.a), firstTrailingBit(~vec2<u32>(1u, u_input.a))), u_input.a, u_input.a) & ~_wgslsmith_mult_vec3_u32(_wgslsmith_add_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.a, 4294967295u, 38401u), vec3<u32>(u_input.a, 0u, u_input.a)), ~vec3<u32>(u_input.a, u_input.a, 8124u)), vec3<u32>(_wgslsmith_div_u32(1u, u_input.a), 0u, 0u));
    var_1 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(1000f, -2375f, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(var_2.x, 11u)]), _wgslsmith_div_f32(-1000f, -1051f)), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(161f, global0[_wgslsmith_index_u32(0u, 11u)], 303f, arg_2))))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_1.x, global0[_wgslsmith_index_u32(4294967295u, 11u)], -2166f, -674f), vec4<f32>(arg_2, -1593f, -1000f, -353f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1024f, global0[_wgslsmith_index_u32(var_2.x, 11u)], var_1.x, -564f)) * _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_1.x, var_1.x, -1010f, arg_2)))))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(670f))), global0[_wgslsmith_index_u32(47472u, 11u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_1.x * var_1.x)))), _wgslsmith_f_op_f32(select(arg_2, arg_2, arg_1.x))), !vec4<bool>(false, global0[_wgslsmith_index_u32(var_2.x & 27792u, 11u)] == _wgslsmith_f_op_f32(var_1.x * 566f), !(-2147483647i > u_input.b.x), false)));
    let var_3 = vec2<f32>(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(~abs(4294967295u), 11u)]), _wgslsmith_f_op_f32(-var_1.x));
    return !vec4<bool>(arg_1.x, false || (var_3.x > _wgslsmith_div_f32(var_3.x, 145f)), !arg_1.x, true);
}

fn func_6(arg_0: Struct_1, arg_1: i32, arg_2: vec4<u32>) -> StorageBuffer {
    var var_0 = func_1().a;
    return StorageBuffer(~vec3<i32>(-59637i, var_0.c.x, i32(-1i) * -arg_1), ~vec2<u32>(4294967295u, abs(_wgslsmith_sub_u32(1u, arg_2.x))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 11>();
    let x = u_input.a;
    s_output = func_6(Struct_1(func_5(-_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.b.x, 7200i, u_input.b.x), u_input.b, vec3<i32>(-871i, u_input.b.x, -2147483647i)), func_4(func_1(), vec2<u32>(u_input.a, u_input.a) | vec2<u32>(u_input.a, u_input.a)), _wgslsmith_f_op_f32(func_2(func_1(), Struct_3(1380f, Struct_1(vec4<bool>(true, false, true, false), vec2<f32>(-1000f, 1000f), vec3<i32>(1i, u_input.b.x, u_input.b.x)), vec2<bool>(false, true), vec3<u32>(4294967295u, u_input.a, u_input.a)), Struct_3(global0[_wgslsmith_index_u32(u_input.a, 11u)], Struct_1(vec4<bool>(false, true, false, false), vec2<f32>(global0[_wgslsmith_index_u32(4294967295u, 11u)], -247f), u_input.b), vec2<bool>(false, true), vec3<u32>(u_input.a, 0u, u_input.a)))), vec3<i32>(1i, _wgslsmith_mod_i32(u_input.b.x, u_input.b.x), u_input.b.x)), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(u_input.a, 11u)], 2507f) + vec2<f32>(global0[_wgslsmith_index_u32(74611u, 11u)], 1108f))))), u_input.b), min(u_input.b.x, -_wgslsmith_mult_i32(~u_input.b.x, u_input.b.x)), countOneBits(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a, u_input.a, 1u, 19282u), vec4<u32>(1056u, 1u, 9187u, ~u_input.a), abs(vec4<u32>(u_input.a, 8191u, u_input.a, u_input.a)) & _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, 89122u, u_input.a, u_input.a), vec4<u32>(25740u, u_input.a, u_input.a, 54484u)))));
}


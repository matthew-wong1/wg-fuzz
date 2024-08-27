struct Struct_1 {
    a: vec3<f32>,
    b: vec4<bool>,
    c: f32,
    d: u32,
    e: bool,
}

struct Struct_2 {
    a: f32,
    b: vec4<f32>,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: u32,
    d: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: vec2<f32>,
    c: vec2<bool>,
    d: f32,
    e: bool,
}

struct Struct_5 {
    a: Struct_1,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<f32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(false, true, true, false);

var<private> global1: u32;

var<private> global2: array<Struct_2, 10>;

var<private> global3: array<vec4<f32>, 9> = array<vec4<f32>, 9>(vec4<f32>(-2480f, -682f, -1636f, -412f), vec4<f32>(-687f, 170f, -651f, 1347f), vec4<f32>(872f, -1461f, -716f, -1770f), vec4<f32>(-381f, 194f, 1435f, 540f), vec4<f32>(-1000f, 112f, -220f, -432f), vec4<f32>(1570f, -724f, -583f, -276f), vec4<f32>(1901f, -1258f, -1403f, -389f), vec4<f32>(-1862f, 1249f, -1000f, -195f), vec4<f32>(-785f, -560f, -1639f, -563f));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec3<u32> {
    let var_0 = Struct_3(Struct_2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1348f - -342f) + _wgslsmith_f_op_f32(select(-738f, 1000f, true))), _wgslsmith_f_op_f32(-1f), true)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global3[_wgslsmith_index_u32(countOneBits(u_input.a), 9u)])), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-684f, -948f, -705f)))), vec4<bool>(true, global0.x, global0.x, true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-175f)) * _wgslsmith_f_op_f32(1027f + 1735f)), 1u, true)), ~countOneBits(0i << (1u % 32u)), min(_wgslsmith_clamp_u32(u_input.a, 4294967295u, _wgslsmith_dot_vec2_u32(firstTrailingBit(vec2<u32>(1u, u_input.a)), ~vec2<u32>(119624u, 4294967295u))), _wgslsmith_dot_vec3_u32(vec3<u32>(~22615u, min(u_input.a, u_input.a), ~1u), vec3<u32>(select(u_input.a, 1u, global0.x), 84510u, 4294967295u))), Struct_1(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(-903f, 2185f, -2020f) * vec3<f32>(873f, 1316f, -1059f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(549f, -435f, 1056f)), vec3<bool>(global0.x, true, global0.x))))), vec4<bool>(true, false, _wgslsmith_f_op_f32(select(101f, -1090f, true)) != _wgslsmith_f_op_f32(-446f - 436f), true), -621f, min(0u, _wgslsmith_sub_u32(18593u, 1u)) >> (1u % 32u), select(false, global0.x, global0.x)));
    var var_1 = var_0.a;
    let var_2 = Struct_5(var_0.d, global0.yx);
    var_1 = Struct_2(_wgslsmith_f_op_f32(-171f * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -280f), var_1.b.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.a, _wgslsmith_f_op_f32(round(-1000f)), _wgslsmith_f_op_f32(ceil(-935f)), -310f)), var_2.a);
    let var_3 = Struct_4(-1516f, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1901f)), _wgslsmith_f_op_f32(select(-538f, _wgslsmith_f_op_f32(var_2.a.c + -459f), true)))), select(var_1.c.b.zz, var_0.d.b.xx, any(select(!var_2.a.b, select(vec4<bool>(global0.x, true, true, var_0.a.c.b.x), vec4<bool>(global0.x, true, true, true), vec4<bool>(false, false, var_0.d.b.x, true)), select(var_1.c.b, vec4<bool>(false, true, false, global0.x), var_2.a.b.x)))), _wgslsmith_f_op_f32(var_2.a.a.x * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(120f + 847f) - var_2.a.c)))), var_2.b.x);
    return vec3<u32>(~(~60334u), _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(~u_input.a, 48106u, var_2.a.d, var_0.c), ~_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 1u, 4294967295u, 76950u), vec4<u32>(var_2.a.d, var_0.d.d, 51473u, 1546u))), ~var_1.c.d ^ countOneBits(15205u)), 0u);
}

fn func_4(arg_0: Struct_4, arg_1: vec2<bool>, arg_2: vec3<u32>) -> vec3<bool> {
    var var_0 = select(_wgslsmith_mult_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), vec4<i32>(1i, min(~63972i, 1i), _wgslsmith_dot_vec3_i32(select(vec3<i32>(5902i, 34998i, -17445i), vec3<i32>(0i, 39452i, -14328i), arg_1.x), -vec3<i32>(2147483647i, 1089i, 27369i)), _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(0i, 81896i, 24353i), vec3<i32>(-34735i, -1i, -13157i)), select(vec3<i32>(0i, 19047i, -1i), vec3<i32>(36020i, 2147483647i, 2147483647i), vec3<bool>(arg_0.e, true, global0.x))))), _wgslsmith_add_vec4_i32(vec4<i32>(_wgslsmith_mod_i32(1i, 22258i), firstTrailingBit(0i), ~0i, firstTrailingBit(abs(2147483647i))), vec4<i32>(50995i << (0u % 32u), -2147483647i, -50301i, select(-2147483647i, 20641i, arg_1.x)) << (vec4<u32>(arg_2.x << (1u % 32u), _wgslsmith_mult_u32(30300u, arg_2.x), u_input.a << (4294967295u % 32u), arg_2.x) % vec4<u32>(32u))), select(select(select(!vec4<bool>(arg_1.x, true, true, false), !vec4<bool>(false, false, arg_1.x, global0.x), true), vec4<bool>(false || arg_1.x, global0.x, true, true), arg_0.c.x), !select(select(vec4<bool>(true, arg_1.x, arg_1.x, global0.x), vec4<bool>(true, arg_0.e, global0.x, global0.x), global0.x), select(vec4<bool>(true, arg_0.c.x, true, true), vec4<bool>(arg_1.x, true, global0.x, true), vec4<bool>(global0.x, arg_0.c.x, global0.x, arg_0.c.x)), select(vec4<bool>(true, arg_1.x, false, arg_0.c.x), vec4<bool>(false, arg_0.c.x, global0.x, global0.x), vec4<bool>(arg_1.x, true, arg_0.e, false))), true));
    var_0 = firstTrailingBit(min(-(vec4<i32>(var_0.x, var_0.x, -1i, var_0.x) << (~vec4<u32>(135136u, 1u, u_input.a, 0u) % vec4<u32>(32u))), ~(~(vec4<i32>(var_0.x, var_0.x, 11242i, var_0.x) >> (vec4<u32>(4294967295u, arg_2.x, arg_2.x, u_input.a) % vec4<u32>(32u))))));
    let var_1 = !(!arg_0.e != false);
    global1 = u_input.a;
    var var_2 = 1u;
    return !global0.wzx;
}

fn func_2(arg_0: u32, arg_1: u32, arg_2: vec4<u32>) -> bool {
    let var_0 = _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(966f, _wgslsmith_f_op_f32(sign(-252f)), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-1327f, -1720f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -250f) * _wgslsmith_div_f32(767f, 183f)))))));
    global3 = array<vec4<f32>, 9>();
    var var_1 = 35652u;
    global0 = vec4<bool>(global0.x, all(func_4(Struct_4(_wgslsmith_f_op_f32(min(-467f, var_0.x)), vec2<f32>(var_0.x, var_0.x), select(global0.yy, global0.xz, global0.x), _wgslsmith_f_op_f32(var_0.x * var_0.x), global0.x), select(vec2<bool>(true, false), select(global0.wy, global0.zw, vec2<bool>(global0.x, true)), global0.x), _wgslsmith_mult_vec3_u32(select(vec3<u32>(1u, 1u, 6992u), arg_2.xxx, global0.xww), func_3()))), true, !(all(vec2<bool>(false, false)) | all(!global0.yz)));
    global0 = vec4<bool>(true || (var_0.x < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x))), var_0.x < var_0.x, false, all(vec3<bool>(false, any(vec3<bool>(global0.x, false, global0.x)), true)) || all(vec4<bool>(any(global0.zxw), -2327f == var_0.x, global0.x, false)));
    return !(!global0.x & any(!(!vec3<bool>(global0.x, global0.x, global0.x))));
}

fn func_1() -> Struct_5 {
    let var_0 = u_input.a;
    global1 = 5049u;
    var var_1 = true && (true & (!global0.x && true));
    global1 = var_0;
    global3 = array<vec4<f32>, 9>();
    return Struct_5(Struct_1(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1535f, -1005f, 652f))), _wgslsmith_div_vec3_f32(vec3<f32>(471f, 568f, 581f), _wgslsmith_f_op_vec3_f32(vec3<f32>(-628f, 510f, -898f) - vec3<f32>(-937f, 279f, 784f))))), vec4<bool>(global0.x != true, true, true, func_2(4294967295u, 16680u, vec4<u32>(1u, 1u, var_0, 18251u)) && false), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(-1074f, -390f)), _wgslsmith_f_op_f32(-1111f * _wgslsmith_f_op_f32(-655f + 573f)))), ~(~0u), true), func_4(Struct_4(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(1062f)), -1182f), _wgslsmith_f_op_vec2_f32(vec2<f32>(913f, -1000f) * vec2<f32>(1000f, 405f)), !vec2<bool>(global0.x, global0.x), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1041f + 688f))), all(select(vec4<bool>(global0.x, global0.x, global0.x, global0.x), vec4<bool>(true, global0.x, global0.x, true), false))), global0.yy, _wgslsmith_mod_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, 1u, 0u), vec3<u32>(var_0, 0u, var_0)) << (vec3<u32>(0u, var_0, u_input.a) % vec3<u32>(32u)), countOneBits(vec3<u32>(var_0, 7944u, var_0)) ^ vec3<u32>(1u, 4294967295u, 65156u))).xz);
}

fn func_5(arg_0: Struct_5, arg_1: u32, arg_2: Struct_3) -> StorageBuffer {
    var var_0 = _wgslsmith_mod_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_2.b, arg_2.b) | vec2<i32>(-2147483647i, -1i), _wgslsmith_mult_vec2_i32(vec2<i32>(arg_2.b, -1i), vec2<i32>(arg_2.b, 30584i))), arg_2.b, _wgslsmith_sub_i32(-36078i, abs(arg_2.b)), arg_2.b), vec4<i32>(-arg_2.b | -2292i, 1i, 2147483647i, 36110i)), vec4<i32>(arg_2.b, -54776i, 2147483647i, arg_2.b));
    global2 = array<Struct_2, 10>();
    var_0 = vec4<i32>(min(max(-10754i, reverseBits(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, -20059i, -27715i), vec3<i32>(-1i, 59645i, 0i)))), 0i), 7003i, _wgslsmith_clamp_i32(-40499i, _wgslsmith_add_i32(-var_0.x, _wgslsmith_div_i32(arg_2.b >> (u_input.a % 32u), var_0.x)), _wgslsmith_mult_i32(-(i32(-1i) * -15637i), arg_2.b)), -2147483647i);
    let var_1 = true;
    var var_2 = arg_2.d.a.x;
    return StorageBuffer(vec2<i32>(2147483647i, -1i), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-func_1().a.a), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_0.a.a) + _wgslsmith_f_op_vec3_f32(arg_0.a.a - vec3<f32>(arg_2.d.c, -538f, -679f))))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, arg_2.a.c.c, -833f)) + _wgslsmith_f_op_vec3_f32(exp2(arg_0.a.a))) + arg_2.a.c.a)), ~vec2<u32>(~16199u, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_1, arg_0.a.d, arg_2.c), ~vec3<u32>(u_input.a, u_input.a, 26472u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~abs(vec2<i32>(1i, 1i));
    let var_1 = Struct_4(423f, vec2<f32>(-515f, -250f), select(global0.wx, vec2<bool>(true, true), !vec2<bool>(true & global0.x, false)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-974f, -1551f) + 386f))) - -207f), global0.x);
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(1853f + -733f), -480f))), _wgslsmith_div_f32(-221f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(440f - var_1.a))), var_1.d)));
    let var_3 = var_2.x;
    global2 = array<Struct_2, 10>();
    var var_4 = ~45668i;
    let x = u_input.a;
    s_output = func_5(func_1(), ~60082u, Struct_3(global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 67059u, u_input.a), vec3<u32>(1u, 108716u, u_input.a)), u_input.a), 1u), 10u)], ~(~(~24301i)), _wgslsmith_mod_u32(_wgslsmith_div_u32(min(u_input.a, 1u), u_input.a), ~u_input.a), Struct_1(vec3<f32>(350f, -227f, _wgslsmith_f_op_f32(f32(-1f) * -1519f)), !(!vec4<bool>(true, var_1.e, global0.x, var_1.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-224f + 958f)), u_input.a, !select(false, global0.x, true))));
}


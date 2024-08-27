struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec3<u32>,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 17> = array<bool, 17>(false, false, true, false, true, true, false, true, false, true, false, true, true, true, false, false, false);

var<private> global1: array<vec2<f32>, 1> = array<vec2<f32>, 1>(vec2<f32>(1105f, 274f));

var<private> global2: vec3<f32>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1) -> f32 {
    global1 = array<vec2<f32>, 1>();
    let var_0 = u_input.b;
    var var_1 = arg_0.a.yw;
    var var_2 = !(!(!(true | global0[_wgslsmith_index_u32(var_1.x, 17u)]))) == ((18509u <= (_wgslsmith_div_u32(22124u, arg_0.a.x) | 22040u)) | !any(!vec2<bool>(true, global0[_wgslsmith_index_u32(89900u, 17u)])));
    return 1272f;
}

fn func_2(arg_0: vec4<u32>, arg_1: vec3<i32>, arg_2: f32, arg_3: Struct_1) -> Struct_2 {
    let var_0 = ~(1u | _wgslsmith_sub_u32(15473u, ~u_input.d | ~u_input.d));
    return Struct_2(arg_0, arg_3, Struct_1(_wgslsmith_f_op_f32(func_3(Struct_2(arg_0, Struct_1(global2.x), arg_3), arg_3))));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2) -> Struct_2 {
    var var_0 = vec2<u32>(0u, ~u_input.d);
    global0 = array<bool, 17>();
    let var_1 = !(!((all(vec4<bool>(global0[_wgslsmith_index_u32(22080u, 17u)], false, global0[_wgslsmith_index_u32(u_input.d, 17u)], false)) | global0[_wgslsmith_index_u32(countOneBits(109899u), 17u)]) == all(select(vec2<bool>(true, true), vec2<bool>(true, global0[_wgslsmith_index_u32(30519u, 17u)]), vec2<bool>(global0[_wgslsmith_index_u32(arg_0.a.x, 17u)], true)))));
    var var_2 = 26396u;
    global2 = vec3<f32>(_wgslsmith_f_op_f32(592f * arg_0.b.a), _wgslsmith_f_op_f32(-func_2(~(vec4<u32>(4294967295u, 1u, 0u, u_input.d) & vec4<u32>(arg_1.a.x, 44203u, 0u, arg_1.a.x)), firstTrailingBit(abs(vec3<i32>(u_input.c.x, 8982i, u_input.b.x))), _wgslsmith_f_op_f32(abs(-372f)), func_2(arg_0.a, _wgslsmith_add_vec3_i32(u_input.c.zwx, u_input.c.wxw), arg_0.b.a, Struct_1(180f)).b).b.a), _wgslsmith_f_op_f32(sign(arg_0.b.a)));
    return Struct_2(~(~select(vec4<u32>(arg_0.a.x, 32649u, 57567u, var_0.x), arg_0.a, true) ^ vec4<u32>(33167u & var_0.x, 1u, 4294967295u, ~20589u)), Struct_1(_wgslsmith_f_op_f32(1388f - _wgslsmith_div_f32(global2.x, -675f))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(arg_0, func_2(vec4<u32>(0u, 27014u, var_0.x, 24391u), u_input.c.yxx, -456f, arg_1.b).b)))));
}

fn func_1(arg_0: u32, arg_1: i32, arg_2: vec3<u32>) -> Struct_2 {
    let var_0 = vec4<u32>(1470u, 0u, 4294967295u, ((min(4294967295u, arg_2.x) ^ _wgslsmith_mult_u32(4294967295u, u_input.d)) | arg_2.x) >> (_wgslsmith_sub_u32(_wgslsmith_clamp_u32(_wgslsmith_add_u32(0u, 7983u), u_input.d, arg_0), u_input.d & (u_input.d & 1u)) % 32u));
    let var_1 = u_input.a;
    global2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x)), -1000f, global2.x), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(trunc(global2.x)), _wgslsmith_f_op_f32(min(global2.x, global2.x)), _wgslsmith_f_op_f32(650f + -1137f))))) + vec3<f32>(_wgslsmith_f_op_f32(floor(global2.x)), 261f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.x) * _wgslsmith_f_op_f32(-global2.x))));
    let var_2 = Struct_1(273f);
    let var_3 = firstTrailingBit(vec3<i32>(-27148i, u_input.a.x, ~u_input.b.x));
    return func_4(func_2(~firstLeadingBit(~vec4<u32>(41693u, u_input.d, 0u, 19339u)), vec3<i32>(~_wgslsmith_mult_i32(-2147483647i, var_1.x), firstTrailingBit(9505i), select(var_1.x, ~1i, all(vec2<bool>(true, global0[_wgslsmith_index_u32(arg_2.x, 17u)])))), _wgslsmith_f_op_f32(1369f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(425f * var_2.a))), var_2), Struct_2(countOneBits(_wgslsmith_clamp_vec4_u32(vec4<u32>(arg_0, arg_0, arg_2.x, 0u), firstTrailingBit(vec4<u32>(u_input.d, 4294967295u, arg_0, u_input.d)), _wgslsmith_mult_vec4_u32(var_0, var_0))), func_2(vec4<u32>(~1u, _wgslsmith_dot_vec2_u32(arg_2.yy, vec2<u32>(u_input.d, u_input.d)), ~var_0.x, reverseBits(57332u)), abs(var_3), _wgslsmith_f_op_f32(sign(global2.x)), func_2(var_0, var_3 >> (arg_2 % vec3<u32>(32u)), _wgslsmith_f_op_f32(-global2.x), func_2(vec4<u32>(68135u, 25406u, u_input.d, 86068u), var_3, -1000f, Struct_1(global2.x)).b).b).b, Struct_1(-1478f)));
}

fn func_5(arg_0: i32, arg_1: Struct_2, arg_2: vec2<i32>) -> Struct_1 {
    let var_0 = !select(select(!(!vec2<bool>(global0[_wgslsmith_index_u32(22759u, 17u)], true)), vec2<bool>(global0[_wgslsmith_index_u32(34550u, 17u)] & global0[_wgslsmith_index_u32(arg_1.a.x, 17u)], false), all(vec2<bool>(false, false))), !select(vec2<bool>(true, true), vec2<bool>(global0[_wgslsmith_index_u32(arg_1.a.x, 17u)], global0[_wgslsmith_index_u32(u_input.d, 17u)]), global0[_wgslsmith_index_u32(~arg_1.a.x, 17u)]), !all(select(vec3<bool>(false, false, global0[_wgslsmith_index_u32(arg_1.a.x, 17u)]), vec3<bool>(true, false, global0[_wgslsmith_index_u32(u_input.d, 17u)]), false)));
    let var_1 = !all(vec3<bool>(all(vec4<bool>(global0[_wgslsmith_index_u32(arg_1.a.x, 17u)], var_0.x, true, var_0.x)), all(select(vec2<bool>(var_0.x, false), var_0, false)), !(true && var_0.x)));
    var var_2 = _wgslsmith_mult_vec2_i32(min(u_input.c.xy, vec2<i32>(u_input.b.x, abs(-arg_0))), vec2<i32>(12523i, _wgslsmith_div_i32(abs(firstLeadingBit(-2147483647i)), abs(-u_input.a.x))));
    let var_3 = Struct_2(~_wgslsmith_sub_vec4_u32(vec4<u32>(arg_1.a.x, u_input.d, ~0u, _wgslsmith_add_u32(u_input.d, 67920u)), vec4<u32>(u_input.d, ~0u, _wgslsmith_sub_u32(17828u, arg_1.a.x), arg_1.a.x)), arg_1.b, func_4(Struct_2(arg_1.a, arg_1.b, arg_1.b), arg_1).b);
    let var_4 = func_1(abs(~(~min(arg_1.a.x, var_3.a.x))), arg_2.x, arg_1.a.wxz);
    return var_4.b;
}

fn func_6(arg_0: Struct_1, arg_1: f32) -> vec4<i32> {
    let var_0 = -_wgslsmith_div_i32(0i, -2147483647i);
    let var_1 = Struct_2(max(((vec4<u32>(1u, 449u, 4294967295u, u_input.d) ^ vec4<u32>(4294967295u, 4230u, 90815u, 1u)) & vec4<u32>(68329u, 81235u, 45039u, u_input.d)) << (_wgslsmith_add_vec4_u32(vec4<u32>(u_input.d, u_input.d, u_input.d, 0u), func_2(vec4<u32>(u_input.d, 27606u, u_input.d, 1u), vec3<i32>(u_input.c.x, var_0, -931i), global2.x, arg_0).a) % vec4<u32>(32u)), firstTrailingBit(abs(vec4<u32>(36437u, u_input.d, u_input.d, 1u)))), func_1(1u, 2147483647i, vec3<u32>(14281u | _wgslsmith_sub_u32(4294967295u, u_input.d), abs(_wgslsmith_mod_u32(u_input.d, u_input.d)), _wgslsmith_div_u32(_wgslsmith_div_u32(u_input.d, u_input.d), abs(32321u)))).c, func_5(~u_input.c.x, Struct_2(vec4<u32>(_wgslsmith_add_u32(u_input.d, 4294967295u), ~u_input.d, 1u, 38674u), Struct_1(-320f), Struct_1(_wgslsmith_f_op_f32(ceil(-1238f)))), vec2<i32>(-1i) * -vec2<i32>(7002i, u_input.b.x)));
    var var_2 = var_1.b;
    global1 = array<vec2<f32>, 1>();
    let var_3 = 86786u;
    return vec4<i32>(var_0, ~(-reverseBits(abs(var_0))), max(_wgslsmith_div_i32((1i << (u_input.d % 32u)) ^ reverseBits(29017i), -_wgslsmith_dot_vec3_i32(u_input.b.yzw, u_input.c.yyx)), ~_wgslsmith_dot_vec3_i32(vec3<i32>(-58889i, u_input.c.x, 2147483647i) ^ vec3<i32>(var_0, u_input.b.x, 0i), -vec3<i32>(u_input.b.x, 0i, -46543i))), firstLeadingBit(_wgslsmith_mult_i32(_wgslsmith_mult_i32(u_input.b.x, u_input.a.x), -2147483647i)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 17>();
    var var_0 = func_6(func_5(_wgslsmith_div_i32(0i, u_input.b.x), func_1(10598u, max(u_input.b.x, ~u_input.b.x), min(_wgslsmith_mult_vec3_u32(vec3<u32>(51962u, 43276u, u_input.d), vec3<u32>(4294967295u, 32729u, u_input.d)), ~vec3<u32>(u_input.d, 4294967295u, u_input.d))), u_input.c.yx), global2.x);
    let var_1 = func_4(func_2(~vec4<u32>(1u, 0u << (u_input.d % 32u), func_1(u_input.d, 0i, vec3<u32>(63796u, 0u, 4294967295u)).a.x, countOneBits(u_input.d)), ~(~_wgslsmith_add_vec3_i32(u_input.b.xzy, var_0.yzz)), _wgslsmith_f_op_f32(trunc(global2.x)), func_1(_wgslsmith_add_u32(22762u, u_input.d) ^ 0u, 1i, abs(vec3<u32>(u_input.d, 3758u, u_input.d)) << (~vec3<u32>(13117u, u_input.d, 32777u) % vec3<u32>(32u))).b), Struct_2(reverseBits(vec4<u32>(u_input.d, 64749u, u_input.d, u_input.d)), func_2(vec4<u32>(abs(4294967295u), ~u_input.d, 58704u >> (u_input.d % 32u), 0u), u_input.b.zxw, func_1(_wgslsmith_sub_u32(u_input.d, 0u), 2147483647i, vec3<u32>(u_input.d, 22982u, 54570u)).b.a, func_2(vec4<u32>(u_input.d, u_input.d, 35084u, u_input.d), vec3<i32>(u_input.b.x, var_0.x, u_input.c.x), 454f, func_5(-1i, Struct_2(vec4<u32>(36247u, u_input.d, u_input.d, 1u), Struct_1(global2.x), Struct_1(global2.x)), vec2<i32>(var_0.x, 0i))).c).c, func_1(~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 4294967295u, u_input.d, 4294967295u), vec4<u32>(26425u, u_input.d, u_input.d, u_input.d)), ~countOneBits(-49323i), vec3<u32>(~0u, max(u_input.d, u_input.d), abs(u_input.d))).c));
    global0 = array<bool, 17>();
    var var_2 = _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, u_input.b.x & u_input.a.x), -_wgslsmith_add_vec2_i32(vec2<i32>(var_0.x, countOneBits(-1i)), ~select(vec2<i32>(u_input.b.x, u_input.b.x), vec2<i32>(-1i, -15908i), vec2<bool>(true, global0[_wgslsmith_index_u32(var_1.a.x, 17u)]))));
    global2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(377f, global2.x, 3716f))) * _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_1.c.a, 688f, -1188f))))))) + _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1578f)) - -750f), _wgslsmith_div_f32(var_1.b.a, var_1.c.a), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(var_1.b.a, -1274f)), _wgslsmith_f_op_f32(-1000f - var_1.c.a), global0[_wgslsmith_index_u32(1u, 17u)]))))));
    var_2 = -12825i;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d ^ var_1.a.x, ~1u, max(func_1(_wgslsmith_div_u32(var_1.a.x, 1u), u_input.b.x, ~_wgslsmith_div_vec3_u32(vec3<u32>(16309u, 4294967295u, u_input.d), var_1.a.ywz)).a.zxx, var_1.a.xzz), _wgslsmith_div_u32(4294967295u, abs(_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(var_1.a, vec4<u32>(u_input.d, 19378u, u_input.d, 1u)), _wgslsmith_clamp_u32(54327u, 4275u, u_input.d)))), 4039i);
}


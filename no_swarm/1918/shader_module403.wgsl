struct Struct_1 {
    a: f32,
    b: vec4<bool>,
    c: vec3<i32>,
    d: vec3<bool>,
    e: u32,
}

struct Struct_2 {
    a: bool,
    b: bool,
    c: vec4<bool>,
}

struct Struct_3 {
    a: bool,
    b: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 26>;

var<private> global1: array<bool, 29>;

var<private> global2: array<vec3<u32>, 23>;

var<private> global3: Struct_2;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2(arg_0: u32, arg_1: vec3<bool>) -> Struct_3 {
    var var_0 = vec2<i32>(~(-36481i), -1i);
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1080f, -705f, _wgslsmith_div_f32(-1000f, 557f)))))) + _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(817f, 328f, 320f)))))));
    var var_2 = global0[_wgslsmith_index_u32(0u, 26u)];
    let var_3 = global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_mult_u32(min(arg_0, arg_0), ~(arg_0 << (_wgslsmith_mod_u32(u_input.a, 55446u) % 32u))), ~arg_0), 26u)];
    let var_4 = ~0u;
    return Struct_3(true, var_0.x);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_3, arg_2: vec4<u32>) -> Struct_3 {
    let var_0 = u_input.b.xzw;
    return Struct_3(true, arg_1.b);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_3) -> vec4<bool> {
    global1 = array<bool, 29>();
    let var_0 = !arg_0.b;
    return arg_0.c;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec3<u32>, arg_3: vec4<i32>) -> Struct_2 {
    var var_0 = Struct_2(any(!vec4<bool>(true, arg_1.c.x && false, false, global3.b)), !func_4(global0[_wgslsmith_index_u32(u_input.b.x, 26u)], Struct_3(true, 36397i)).x || (true || any(select(arg_0.b.xwy, vec3<bool>(true, false, true), false))), arg_1.c);
    global2 = array<vec3<u32>, 23>();
    let var_1 = Struct_2(min(0u, ~u_input.b.x) <= 1u, !func_3(Struct_1(-152f, select(global3.c, vec4<bool>(true, arg_0.d.x, global1[_wgslsmith_index_u32(30190u, 29u)], global3.b), var_0.c), reverseBits(vec3<i32>(-41889i, arg_0.c.x, arg_0.c.x)), vec3<bool>(arg_0.b.x, global1[_wgslsmith_index_u32(arg_2.x, 29u)], true), 1u), Struct_3(func_3(arg_0, Struct_3(arg_1.c.x, -28858i), u_input.b).a, ~u_input.c), vec4<u32>(20909u, 9103u, 0u, 4294967295u) ^ u_input.b).a, !arg_1.c);
    global1 = array<bool, 29>();
    var var_2 = _wgslsmith_dot_vec4_i32(vec4<i32>(i32(-1i) * -1i, arg_3.x, u_input.c, _wgslsmith_mod_i32(arg_0.c.x, 20327i)), (arg_3 ^ -(arg_3 << (vec4<u32>(0u, 28295u, arg_2.x, 6376u) % vec4<u32>(32u)))) & _wgslsmith_mult_vec4_i32(vec4<i32>(reverseBits(arg_3.x), 2147483647i >> (1u % 32u), -arg_3.x, u_input.c >> (arg_0.e % 32u)), arg_3));
    return var_1;
}

fn func_1(arg_0: Struct_1, arg_1: bool, arg_2: Struct_3, arg_3: Struct_3) -> Struct_2 {
    return func_5(arg_0, Struct_2((u_input.b.x ^ _wgslsmith_add_u32(arg_0.e, u_input.b.x)) < 1u, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1636f + -207f), -2193f, true)) != arg_0.a, func_4(global0[_wgslsmith_index_u32(4294967295u, 26u)], func_3(arg_0, func_2(u_input.b.x, vec3<bool>(arg_1, true, arg_0.b.x)), ~vec4<u32>(arg_0.e, arg_0.e, 4294967295u, 22896u)))), global2[_wgslsmith_index_u32(arg_0.e, 23u)], _wgslsmith_mult_vec4_i32(-(~vec4<i32>(-36005i, -9272i, arg_0.c.x, arg_3.b) << (~vec4<u32>(0u, u_input.b.x, 48219u, u_input.a) % vec4<u32>(32u))), _wgslsmith_mult_vec4_i32(abs(~vec4<i32>(-6804i, arg_0.c.x, 3404i, u_input.c)), -countOneBits(vec4<i32>(arg_0.c.x, arg_3.b, arg_2.b, -9352i)))));
}

fn func_6(arg_0: Struct_2) -> vec2<u32> {
    let var_0 = true;
    global3 = Struct_2(any(global3.c.yzx), true, !(!(!func_5(Struct_1(939f, vec4<bool>(false, false, global1[_wgslsmith_index_u32(u_input.a, 29u)], false), vec3<i32>(u_input.c, u_input.c, u_input.c), arg_0.c.ywx, u_input.b.x), arg_0, global2[_wgslsmith_index_u32(3099u, 23u)], vec4<i32>(14595i, 0i, u_input.c, u_input.c)).c)));
    global3 = func_5(Struct_1(_wgslsmith_f_op_f32(1216f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-807f * -3306f), _wgslsmith_f_op_f32(158f - 1000f))), func_1(Struct_1(-1000f, vec4<bool>(false, arg_0.c.x, true, global3.c.x), countOneBits(vec3<i32>(u_input.c, -17915i, u_input.c)), vec3<bool>(global1[_wgslsmith_index_u32(u_input.b.x, 29u)], arg_0.c.x, global3.c.x), u_input.a | 4294967295u), any(select(vec3<bool>(false, true, true), arg_0.c.yxx, arg_0.c.yxw)), Struct_3(true, -u_input.c), Struct_3(true, u_input.c)).c, _wgslsmith_div_vec3_i32(~vec3<i32>(2147483647i, u_input.c, u_input.c), select(vec3<i32>(0i, 1i, 34140i), vec3<i32>(u_input.c, u_input.c, -25724i), false)) >> (vec3<u32>(1u, max(4294967295u, u_input.b.x), ~12418u) % vec3<u32>(32u)), vec3<bool>(~u_input.b.x >= reverseBits(1u), !(var_0 & var_0), true), 87846u), Struct_2(arg_0.a, var_0, func_4(Struct_2(func_2(1u, global3.c.xxw).a, all(global3.c.xxx), vec4<bool>(var_0, global1[_wgslsmith_index_u32(5917u, 29u)], arg_0.a, arg_0.b)), func_3(Struct_1(1156f, global3.c, vec3<i32>(-1i, 1i, u_input.c), vec3<bool>(global3.a, false, var_0), 47911u), Struct_3(var_0, 0i), u_input.b))), ~select(global2[_wgslsmith_index_u32(select(max(u_input.b.x, u_input.a), abs(0u), !global3.c.x), 23u)], global2[_wgslsmith_index_u32(u_input.a, 23u)], arg_0.c.xwy), _wgslsmith_mult_vec4_i32(~(-abs(vec4<i32>(u_input.c, u_input.c, u_input.c, 75951i))), (-vec4<i32>(u_input.c, u_input.c, -42181i, -14170i) & vec4<i32>(u_input.c, u_input.c, u_input.c, -2147483647i)) | firstTrailingBit(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.c, u_input.c, u_input.c, -2147483647i), vec4<i32>(1i, u_input.c, -1i, u_input.c)))));
    var var_1 = reverseBits(select(_wgslsmith_mult_i32(min(96i, u_input.c) & u_input.c, ~u_input.c), 2147483647i, false));
    var var_2 = ~_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(reverseBits(u_input.b.ww), u_input.b.xw) ^ (~14283u >> (max(u_input.a, u_input.b.x) % 32u)), 1u);
    return abs(select(reverseBits(vec2<u32>(~u_input.a, u_input.a)), _wgslsmith_clamp_vec2_u32(~vec2<u32>(u_input.a, u_input.b.x), ~vec2<u32>(15661u, 0u), select(vec2<u32>(u_input.a, u_input.a) & vec2<u32>(12137u, 0u), ~vec2<u32>(u_input.a, u_input.b.x), global3.a)), vec2<bool>(arg_0.b, var_0)));
}

fn func_7(arg_0: u32, arg_1: f32, arg_2: vec2<u32>) -> Struct_1 {
    let var_0 = vec2<u32>(firstLeadingBit(~(~101209u)) << (reverseBits(_wgslsmith_add_u32(~arg_0, 63521u)) % 32u), ~_wgslsmith_div_u32(~0u, ~arg_0));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(909f)), arg_1)))), func_4(func_5(Struct_1(_wgslsmith_f_op_f32(step(-1490f, arg_1)), !vec4<bool>(global3.b, global3.c.x, false, true), countOneBits(vec3<i32>(-19651i, -13779i, u_input.c)), !vec3<bool>(true, false, global1[_wgslsmith_index_u32(4294967295u, 29u)]), ~113984u), func_5(Struct_1(1004f, vec4<bool>(global3.b, true, false, false), vec3<i32>(u_input.c, u_input.c, 0i), global3.c.zxz, var_0.x), Struct_2(global1[_wgslsmith_index_u32(arg_2.x, 29u)], global1[_wgslsmith_index_u32(0u, 29u)], global3.c), global2[_wgslsmith_index_u32(u_input.a, 23u)], -vec4<i32>(u_input.c, -51980i, -36408i, u_input.c)), reverseBits(global2[_wgslsmith_index_u32(4294967295u, 23u)]) ^ global2[_wgslsmith_index_u32(arg_0, 23u)], -vec4<i32>(u_input.c, u_input.c, u_input.c, 0i)), Struct_3(!func_3(Struct_1(arg_1, global3.c, vec3<i32>(u_input.c, u_input.c, u_input.c), global3.c.xyx, 1u), Struct_3(global3.a, u_input.c), u_input.b).a, -firstTrailingBit(u_input.c))), _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.c, u_input.c, select(func_3(Struct_1(arg_1, global3.c, vec3<i32>(u_input.c, 2147483647i, u_input.c), vec3<bool>(global1[_wgslsmith_index_u32(21106u, 29u)], global3.c.x, false), 33779u), Struct_3(true, u_input.c), vec4<u32>(78282u, 4294967295u, arg_0, var_0.x)).b, _wgslsmith_clamp_i32(17344i, -49709i, u_input.c), true)), reverseBits(countOneBits(_wgslsmith_add_vec3_i32(vec3<i32>(49175i, u_input.c, -46323i), vec3<i32>(1i, u_input.c, 0i))))), global3.c.zxy, firstTrailingBit(firstLeadingBit(_wgslsmith_dot_vec4_u32(u_input.b, u_input.b))));
    var var_2 = _wgslsmith_add_u32(reverseBits(_wgslsmith_mod_u32(~(~var_1.e), arg_2.x)), max(_wgslsmith_dot_vec3_u32(vec3<u32>(53572u, 10194u, 3326u) ^ (global2[_wgslsmith_index_u32(var_0.x, 23u)] << (global2[_wgslsmith_index_u32(arg_2.x, 23u)] % vec3<u32>(32u))), min(reverseBits(global2[_wgslsmith_index_u32(var_0.x, 23u)]), global2[_wgslsmith_index_u32(_wgslsmith_add_u32(1u, 47990u), 23u)])), ~abs(func_6(Struct_2(global3.b, false, vec4<bool>(global3.c.x, global1[_wgslsmith_index_u32(var_0.x, 29u)], true, false))).x)));
    let var_3 = vec3<i32>(min(u_input.c, -5136i), -2147483647i ^ u_input.c, ~countOneBits(-firstLeadingBit(u_input.c)));
    var_2 = 49054u;
    return Struct_1(var_1.a, vec4<bool>(func_2(0u, func_4(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(var_0.x, 15554u), 26u)], func_3(Struct_1(294f, global3.c, vec3<i32>(var_1.c.x, var_1.c.x, u_input.c), global3.c.wyz, arg_0), Struct_3(false, -14578i), vec4<u32>(34335u, 30574u, 4294967295u, 4294967295u))).ywz).a, global3.a != global3.b, !all(var_1.b), true), var_3, select(!(!vec3<bool>(var_1.d.x, true, true)), select(select(global3.c.ywx, vec3<bool>(true, global3.b, true), true), vec3<bool>(any(vec4<bool>(true, false, global3.a, global3.a)), global3.c.x, global1[_wgslsmith_index_u32(1u, 29u)] & global1[_wgslsmith_index_u32(32936u, 29u)]), var_1.b.wyx), global3.c.zwy), var_1.e);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 26>();
    global2 = array<vec3<u32>, 23>();
    let var_0 = !(!all(vec4<bool>(global1[_wgslsmith_index_u32(~u_input.a, 29u)], true, true, all(global3.c.yx))));
    global0 = array<Struct_2, 26>();
    let var_1 = func_7(firstTrailingBit(u_input.a), _wgslsmith_f_op_f32(f32(-1f) * -680f), ~(~func_6(func_1(Struct_1(342f, vec4<bool>(false, false, var_0, true), vec3<i32>(10145i, u_input.c, 1i), vec3<bool>(var_0, false, true), u_input.a), true, Struct_3(global1[_wgslsmith_index_u32(4294967295u, 29u)], 3108i), Struct_3(var_0, u_input.c)))));
    global2 = array<vec3<u32>, 23>();
    global2 = array<vec3<u32>, 23>();
    let x = u_input.a;
    s_output = StorageBuffer(select(~82694u, 54692u, false), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_1.a, var_1.a, 1119f, 1393f), vec4<f32>(581f, var_1.a, 1331f, -2169f))) + _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-387f, var_1.a, 1499f, -972f), vec4<f32>(var_1.a, var_1.a, var_1.a, var_1.a)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_1.a, var_1.a, var_1.a, 1013f), vec4<f32>(var_1.a, 1816f, var_1.a, -550f)) + _wgslsmith_div_vec4_f32(vec4<f32>(-1247f, -1000f, var_1.a, var_1.a), vec4<f32>(var_1.a, -540f, var_1.a, 999f))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(208f, var_1.a, var_1.a, -1210f), vec4<f32>(var_1.a, 201f, var_1.a, -628f), true)))));
}


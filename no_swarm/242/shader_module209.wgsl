struct Struct_1 {
    a: vec4<bool>,
    b: vec4<i32>,
    c: i32,
    d: i32,
    e: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 18>;

var<private> global1: array<vec2<i32>, 10> = array<vec2<i32>, 10>(vec2<i32>(2147483647i, 30833i), vec2<i32>(36126i, -1i), vec2<i32>(-1i, 0i), vec2<i32>(2147483647i, 0i), vec2<i32>(18860i, -1i), vec2<i32>(i32(-2147483648), -62467i), vec2<i32>(2147483647i, 2147483647i), vec2<i32>(-61667i, 62492i), vec2<i32>(-1960i, 2147483647i), vec2<i32>(0i, -61305i));

var<private> global2: Struct_1;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: f32, arg_1: vec3<f32>, arg_2: Struct_1, arg_3: vec4<f32>) -> u32 {
    global2 = Struct_1(select(!arg_2.a, select(!select(global2.a, vec4<bool>(true, global2.a.x, false, true), arg_2.a), select(!global2.a, select(vec4<bool>(true, global2.a.x, global2.a.x, global2.a.x), vec4<bool>(false, true, false, false), false), arg_2.a.x), global2.a), global2.a.x), -arg_2.b, ~(-_wgslsmith_div_i32(arg_2.b.x, arg_2.b.x)), ~(~(-12574i)), global2.e);
    let var_0 = -min(max(abs(select(vec3<i32>(1i, global2.c, 41172i), global2.b.zyx, global2.a.wyz)), ~vec3<i32>(arg_2.d, 2147483647i, u_input.a)), abs(_wgslsmith_clamp_vec3_i32(vec3<i32>(global2.d, -2147483647i, 0i), abs(arg_2.b.wyy), countOneBits(vec3<i32>(-1i, -2147483647i, global2.b.x)))));
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(arg_3))))))));
    var var_2 = _wgslsmith_f_op_f32(f32(-1f) * -173f);
    var var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(arg_0, _wgslsmith_f_op_f32(-2725f * -1750f), true))))), -546f);
    return arg_2.e;
}

fn func_2(arg_0: Struct_1, arg_1: vec2<f32>) -> i32 {
    var var_0 = Struct_1(vec4<bool>(arg_0.e == func_3(276f, _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-615f, arg_1.x, -467f), vec3<f32>(1517f, arg_1.x, 775f))), arg_0, _wgslsmith_f_op_vec4_f32(-vec4<f32>(1978f, -1000f, -256f, arg_1.x))), false, !(!(-478f < arg_1.x)), false), vec4<i32>(-2147483647i, 35238i, firstLeadingBit(u_input.a), 70797i), arg_0.c, max(global2.b.x, u_input.a), arg_0.e);
    let var_1 = Struct_1(select(select(!(!arg_0.a), !(!vec4<bool>(var_0.a.x, true, arg_0.a.x, true)), vec4<bool>(!arg_0.a.x, !var_0.a.x, true, select(true, true, global2.a.x))), !var_0.a, any(vec4<bool>(true, true, true, true))), _wgslsmith_sub_vec4_i32(-_wgslsmith_sub_vec4_i32(arg_0.b, arg_0.b), var_0.b), 1i, reverseBits(global2.b.x), var_0.e);
    let var_2 = reverseBits(~_wgslsmith_mult_u32(countOneBits(0u) << (1u % 32u), var_1.e));
    return -(~u_input.a);
}

fn func_4(arg_0: i32, arg_1: bool, arg_2: Struct_1) -> Struct_1 {
    global2 = Struct_1(vec4<bool>(select(select(global2.b.x, arg_0, arg_1) >= arg_0, true, arg_1), true, true, 76211u <= _wgslsmith_div_u32(min(global2.e, 36341u), 4294967295u)), -vec4<i32>(reverseBits(arg_0), _wgslsmith_mult_i32(abs(global2.c), global2.c), 2147483647i, _wgslsmith_dot_vec4_i32(firstTrailingBit(global2.b), abs(vec4<i32>(2147483647i, -23033i, arg_0, arg_2.d)))), arg_2.d, (i32(-1i) * -reverseBits(global2.d)) | ~global2.b.x, ~(~firstLeadingBit(3465u >> (1u % 32u))));
    let var_0 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(vec4<f32>(488f, -1000f, 1000f, -298f), vec4<f32>(1000f, 1000f, 300f, 1449f)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(438f, -578f, -700f, -1305f) * vec4<f32>(301f, 1015f, -936f, -246f)))))));
    let var_1 = global2.a;
    var var_2 = Struct_1(!(!global2.a), vec4<i32>(arg_2.d, ~1i, global2.b.x, 3916i), countOneBits(max(abs(-global2.b.x), _wgslsmith_mod_i32(arg_2.c, func_2(Struct_1(global2.a, vec4<i32>(-30838i, global2.c, global2.d, 1i), -1i, 1i, 35103u), var_0.xz)))), arg_2.d, 1u);
    var var_3 = Struct_1(arg_2.a, vec4<i32>(arg_0, func_2(Struct_1(vec4<bool>(false, arg_2.a.x, false, global2.a.x), min(vec4<i32>(var_2.d, 6577i, var_2.c, 1i), vec4<i32>(83688i, 2147483647i, -2147483647i, -2608i)), arg_2.d, 0i, ~var_2.e), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_0.x, var_0.x)))))), 26087i, abs(1i ^ global2.d)), abs(u_input.a), -2147483647i, ~_wgslsmith_mod_u32(var_2.e, 1u));
    return arg_2;
}

fn func_5(arg_0: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_mod_u32(_wgslsmith_add_u32(1u, reverseBits(min(26682u, arg_0.e) ^ arg_0.e)), firstLeadingBit(abs(firstTrailingBit(4294967295u))));
    var var_1 = Struct_1(select(global2.a, vec4<bool>((-2147483647i ^ arg_0.c) > u_input.a, any(func_4(7669i, false, Struct_1(global2.a, global2.b, u_input.a, -30704i, global2.e)).a), !any(vec3<bool>(global2.a.x, arg_0.a.x, false)), true), global2.a), firstLeadingBit(func_4(~(-22167i), arg_0.a.x != false, func_4(u_input.a, true, Struct_1(arg_0.a, vec4<i32>(-26916i, global2.c, arg_0.c, u_input.a), 29183i, 19873i, arg_0.e))).b & abs(arg_0.b)), ~(-24166i), abs(4316i), ~global2.e);
    let var_2 = func_4(global2.c ^ arg_0.c, any(arg_0.a), arg_0);
    var_1 = Struct_1(vec4<bool>(all(!(!vec2<bool>(true, global2.a.x))), true, var_2.a.x, any(var_1.a)), arg_0.b, _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(~_wgslsmith_clamp_vec2_i32(vec2<i32>(28647i, 59115i), vec2<i32>(-17303i, u_input.a), vec2<i32>(global2.b.x, 752i)), ~global1[_wgslsmith_index_u32(~global2.e, 10u)]), ~(-32926i ^ _wgslsmith_dot_vec4_i32(var_1.b, global2.b))), ~var_1.d, firstLeadingBit(0u));
    var var_3 = func_4(var_1.d, 9110u > _wgslsmith_sub_u32(0u, _wgslsmith_mult_u32(_wgslsmith_div_u32(global2.e, arg_0.e), 27190u)), Struct_1(!arg_0.a, _wgslsmith_mult_vec4_i32(var_1.b, ~(arg_0.b << (vec4<u32>(10777u, 1u, 0u, var_1.e) % vec4<u32>(32u)))), _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(abs(vec2<i32>(-21477i, -1i)), ~global2.b.zx, vec2<i32>(var_1.c, 0i)), _wgslsmith_mult_vec2_i32(global2.b.xx, vec2<i32>(global2.c, u_input.a))), firstTrailingBit(var_1.c), var_2.e));
    return func_4(var_2.c, any(!(!select(vec4<bool>(var_2.a.x, true, false, var_3.a.x), global2.a, false))), func_4(global2.b.x, global2.a.x, global0[_wgslsmith_index_u32(1u << (_wgslsmith_clamp_u32(0u, _wgslsmith_mult_u32(4294967295u, 1u), ~1u) % 32u), 18u)]));
}

fn func_1(arg_0: vec2<u32>, arg_1: vec2<bool>, arg_2: vec3<bool>, arg_3: Struct_1) -> vec3<u32> {
    var var_0 = reverseBits(global2.e);
    var_0 = _wgslsmith_sub_u32(global2.e, 67341u);
    var var_1 = func_5(func_4(_wgslsmith_mult_i32(func_2(Struct_1(arg_3.a, arg_3.b, 0i, u_input.a, arg_3.e), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-689f, 1222f))), 17636i), arg_2.x, Struct_1(!select(global2.a, arg_3.a, vec4<bool>(false, false, arg_2.x, global2.a.x)), reverseBits(~global2.b), _wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(global2.b.xz, vec2<i32>(arg_3.b.x, -2147483647i)), arg_3.c, global2.d | 20620i), -15281i, 1u)));
    let var_2 = func_5(Struct_1(global2.a, _wgslsmith_div_vec4_i32(reverseBits(vec4<i32>(-39847i, -9631i, 37279i, global2.c) << (vec4<u32>(arg_0.x, 24758u, arg_3.e, 43976u) % vec4<u32>(32u))), vec4<i32>(var_1.d, 1i, firstTrailingBit(var_1.c), 13851i >> (arg_3.e % 32u))), var_1.d, -19892i, 0u));
    global1 = array<vec2<i32>, 10>();
    return vec3<u32>(80070u, 11456u, _wgslsmith_clamp_u32(1u, 4520u ^ ~arg_3.e, _wgslsmith_add_u32(arg_0.x, arg_0.x) << ((arg_0.x << (arg_3.e % 32u)) % 32u))) | vec3<u32>(_wgslsmith_sub_u32(_wgslsmith_add_u32(countOneBits(var_2.e), _wgslsmith_div_u32(10618u, arg_0.x)), 62473u), ~arg_3.e, ~(~67085u));
}

fn func_6(arg_0: vec3<u32>, arg_1: vec4<f32>) -> vec4<bool> {
    let var_0 = global0[_wgslsmith_index_u32(_wgslsmith_div_u32(~global2.e, _wgslsmith_mult_u32(abs(max(_wgslsmith_dot_vec3_u32(arg_0, vec3<u32>(16560u, arg_0.x, 1183u)), arg_0.x >> (global2.e % 32u))), func_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.x), arg_1.x), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(abs(arg_1.zyx)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(784f, -722f, 324f)))), global0[_wgslsmith_index_u32(~arg_0.x & _wgslsmith_mult_u32(global2.e, global2.e), 18u)], _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-2452f, 280f, -1000f, arg_1.x), vec4<f32>(717f, 2340f, 130f, 2771f)))))), 18u)];
    let var_1 = vec4<bool>(true, !global2.a.x, all(!select(select(global2.a.xwx, var_0.a.zyz, var_0.a.x), !global2.a.zzx, global2.a.zzx)), true);
    global0 = array<Struct_1, 18>();
    global1 = array<vec2<i32>, 10>();
    let var_2 = var_0.a;
    return !select(vec4<bool>(any(var_1.xwz) | var_2.x, false, global2.a.x, true), !func_5(global0[_wgslsmith_index_u32(arg_0.x ^ 6944u, 18u)]).a, var_0.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<u32>(10858u, 24962u, ~(_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global2.e, 1u, 1u, global2.e), vec4<u32>(44088u, global2.e, 1u, global2.e)), global2.e) & _wgslsmith_add_u32(~global2.e, ~global2.e)));
    var var_1 = Struct_1(func_6(func_1(var_0.yx & _wgslsmith_add_vec2_u32(vec2<u32>(54694u, var_0.x), vec2<u32>(1u, global2.e)), !select(vec2<bool>(false, false), vec2<bool>(false, global2.a.x), vec2<bool>(global2.a.x, true)), !vec3<bool>(false, global2.a.x, false), Struct_1(global2.a, global2.b, ~u_input.a, firstLeadingBit(-1i), ~var_0.x)), vec4<f32>(_wgslsmith_f_op_f32(-213f * _wgslsmith_f_op_f32(683f - -1180f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-856f + 317f) * _wgslsmith_f_op_f32(f32(-1f) * -189f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1169f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1714f, 745f) * _wgslsmith_f_op_f32(step(149f, 1584f))))), vec4<i32>(-1i) * -_wgslsmith_clamp_vec4_i32(~vec4<i32>(2147483647i, u_input.a, u_input.a, global2.c), ~global2.b, ~vec4<i32>(-43699i, 28896i, global2.d, -2147483647i)), -66003i, -min(-func_5(global0[_wgslsmith_index_u32(1u, 18u)]).d, 51904i), func_1(~var_0.xz, !func_5(Struct_1(global2.a, global2.b, u_input.a, 25147i, 4294967295u)).a.zx, func_5(global0[_wgslsmith_index_u32(var_0.x, 18u)]).a.ywx, func_4(0i, ~18945i <= func_5(Struct_1(global2.a, global2.b, u_input.a, u_input.a, global2.e)).b.x, global0[_wgslsmith_index_u32(~var_0.x, 18u)])).x);
    var var_2 = func_5(global0[_wgslsmith_index_u32(~global2.e, 18u)]);
    var var_3 = func_5(global0[_wgslsmith_index_u32(global2.e, 18u)]);
    let var_4 = _wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(501f + _wgslsmith_f_op_f32(-1110f * -1807f)), -1412f)));
    let var_5 = _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -385f), var_4.x), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(803f, -314f))), -381f)));
    let var_6 = global0[_wgslsmith_index_u32(func_5(Struct_1(vec4<bool>(true, var_1.a.x, !(var_3.a.x | true), global2.a.x), func_4(var_2.b.x, all(vec3<bool>(true, var_1.a.x, var_1.a.x)), Struct_1(!var_2.a, _wgslsmith_add_vec4_i32(vec4<i32>(global2.b.x, 32820i, 1i, var_1.d), var_3.b), -7473i, var_3.b.x << (global2.e % 32u), ~0u)).b, 1i, _wgslsmith_add_i32(2147483647i, _wgslsmith_dot_vec4_i32(-var_2.b, var_3.b)), 4294967295u)).e, 18u)];
    global0 = array<Struct_1, 18>();
    global1 = array<vec2<i32>, 10>();
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(~(~func_4(u_input.a, false, Struct_1(var_2.a, var_2.b, var_2.d, var_2.c, 48556u)).e), ~var_1.e, ~func_5(func_5(Struct_1(global2.a, vec4<i32>(-44171i, 34550i, -1i, -27111i), var_1.d, -32620i, var_6.e))).e, _wgslsmith_div_u32(min(func_3(-621f, var_5, Struct_1(var_1.a, var_2.b, var_2.c, var_1.d, 51125u), vec4<f32>(var_5.x, -1000f, var_4.x, 745f)), ~41871u), firstLeadingBit(1u))), _wgslsmith_clamp_i32(~(-2147483647i), ~27903i, var_3.c << (var_6.e % 32u)));
}


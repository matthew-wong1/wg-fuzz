struct Struct_1 {
    a: bool,
    b: vec3<i32>,
    c: vec4<u32>,
    d: vec3<u32>,
    e: u32,
}

struct Struct_2 {
    a: u32,
    b: i32,
    c: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: u32,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: i32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(4294967295u, 105400u, 4294967295u, 0u);

var<private> global1: array<f32, 16>;

var<private> global2: array<vec3<i32>, 24>;

var<private> global3: u32 = 68996u;

var<private> global4: array<vec3<bool>, 19>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
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

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> i32 {
    var var_0 = vec4<f32>(-494f, _wgslsmith_f_op_f32(round(-645f)), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(firstLeadingBit(global0.x), 16u)] + global1[_wgslsmith_index_u32(min(_wgslsmith_div_u32(max(global0.x, 4294967295u), min(global0.x, 0u)), _wgslsmith_div_u32(~global0.x, 4294967295u << (0u % 32u))), 16u)]), 1511f);
    global1 = array<f32, 16>();
    let var_1 = select(~global0.zw, ~(global0.zy << (global0.yz % vec2<u32>(32u))), vec2<bool>(all(vec3<bool>(true, any(vec3<bool>(false, true, true)), any(vec2<bool>(true, true)))), true));
    var var_2 = select(global0.yyx, vec3<u32>(var_1.x << (~(~0u) % 32u), ~(~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 0u, var_1.x, global0.x), vec4<u32>(global0.x, 0u, 4294967295u, global0.x))), var_1.x), global4[_wgslsmith_index_u32(global0.x, 19u)]);
    global0 = _wgslsmith_mod_vec4_u32(select(_wgslsmith_mult_vec4_u32(vec4<u32>(0u, ~1u, 1u, var_2.x), vec4<u32>(firstTrailingBit(var_2.x), 0u, 4925u, 28543u)), firstTrailingBit(max(vec4<u32>(4294967295u, var_1.x, 68285u, global0.x), vec4<u32>(global0.x, var_2.x, 23232u, var_1.x)) << (vec4<u32>(var_2.x, 4294967295u, global0.x, 4294967295u) % vec4<u32>(32u))), true), ~firstLeadingBit(~(vec4<u32>(17455u, 13417u, var_1.x, var_2.x) | vec4<u32>(0u, var_1.x, 4294967295u, 1u))));
    return -u_input.a & countOneBits(-2147483647i);
}

fn func_2(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: Struct_1) -> u32 {
    global3 = arg_2.c.x;
    let var_0 = arg_2.d.xy;
    var var_1 = func_3();
    var var_2 = arg_2.a;
    var var_3 = (_wgslsmith_add_i32(countOneBits(arg_2.b.x), 2147483647i) >= abs(countOneBits(countOneBits(u_input.b)))) & (12612i < select(_wgslsmith_div_i32(~u_input.a, -8724i), arg_1.b.x, !(arg_0.x == global1[_wgslsmith_index_u32(1u, 16u)])));
    return ~firstLeadingBit(countOneBits(var_0.x));
}

fn func_4(arg_0: u32, arg_1: vec4<u32>, arg_2: vec2<u32>, arg_3: i32) -> f32 {
    global3 = arg_1.x;
    global2 = array<vec3<i32>, 24>();
    var var_0 = Struct_3(Struct_2(_wgslsmith_div_u32(arg_2.x, 4294967295u), firstLeadingBit(2147483647i), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(4294967295u, 16u)]), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(4294967295u, 16u)])) * _wgslsmith_f_op_f32(ceil(global1[_wgslsmith_index_u32(~arg_0, 16u)])))), ~(~firstTrailingBit(reverseBits(arg_3))), 4294967295u, Struct_1(true, _wgslsmith_mult_vec3_i32(vec3<i32>(firstLeadingBit(arg_3), -2147483647i, -1i), -vec3<i32>(u_input.a, -30782i, 2147483647i)), vec4<u32>(~(~arg_2.x), select(43442u, reverseBits(1u), true), arg_2.x, ~arg_2.x << (~arg_0 % 32u)), _wgslsmith_mod_vec3_u32(arg_1.xyy, _wgslsmith_mod_vec3_u32(vec3<u32>(global0.x, global0.x, arg_0), vec3<u32>(47870u, 0u, arg_0))), 36797u));
    let var_1 = !select(vec4<bool>(var_0.d.a, false, var_0.d.a | false, var_0.d.a), !vec4<bool>(var_0.b < -1i, true, false, false), select(vec4<bool>(var_0.d.a, arg_1.x != 65934u, select(false, var_0.d.a, true), any(vec3<bool>(false, false, var_0.d.a))), vec4<bool>(true, false, true, var_0.d.a), select(select(vec4<bool>(var_0.d.a, false, false, var_0.d.a), vec4<bool>(false, false, false, true), false), !vec4<bool>(true, true, true, var_0.d.a), any(vec2<bool>(false, var_0.d.a)))));
    global3 = var_0.a.a;
    return global1[_wgslsmith_index_u32(arg_2.x, 16u)];
}

fn func_5(arg_0: Struct_2, arg_1: vec2<f32>) -> vec3<f32> {
    var var_0 = Struct_3(Struct_2(1u, -abs(u_input.a), _wgslsmith_f_op_f32(func_4(1u, ~vec4<u32>(0u, arg_0.a, 81214u, arg_0.a), abs(global0.ww), _wgslsmith_mod_i32(-2147483647i, ~u_input.b)))), arg_0.b << (arg_0.a % 32u), (~arg_0.a & select(arg_0.a, arg_0.a, true)) | ~arg_0.a, Struct_1(any(vec2<bool>(true, true)), vec3<i32>(firstTrailingBit(_wgslsmith_mod_i32(1i, arg_0.b)), 1i ^ _wgslsmith_div_i32(u_input.b, -21090i), -20527i), vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(global0.x, 0u), global0.zw), global0.x, _wgslsmith_add_u32(arg_0.a, select(54301u, global0.x, false)), ~max(arg_0.a, arg_0.a)), abs(~(vec3<u32>(arg_0.a, 2666u, global0.x) & global0.xwy)), ~max(116546u, 68741u) >> (_wgslsmith_sub_u32(~arg_0.a, arg_0.a << (arg_0.a % 32u)) % 32u)));
    let var_1 = select(vec4<bool>(false, var_0.d.a, true, true), !vec4<bool>(var_0.d.a, !any(vec4<bool>(var_0.d.a, var_0.d.a, var_0.d.a, true)), true, !var_0.d.a), select(select(vec4<bool>(true, false, true, true), !(!vec4<bool>(var_0.d.a, var_0.d.a, true, var_0.d.a)), true), vec4<bool>(9452i >= -var_0.a.b, !(false && var_0.d.a), (var_0.b >= 13150i) || var_0.d.a, true), select(!select(vec4<bool>(true, true, false, false), vec4<bool>(var_0.d.a, var_0.d.a, var_0.d.a, true), vec4<bool>(false, false, var_0.d.a, true)), vec4<bool>(true, true, all(vec3<bool>(var_0.d.a, true, true)), true), all(select(global4[_wgslsmith_index_u32(3880u, 19u)], global4[_wgslsmith_index_u32(arg_0.a, 19u)], global4[_wgslsmith_index_u32(global0.x, 19u)])))));
    let var_2 = 0i;
    let var_3 = vec4<bool>(all(select(vec3<bool>(-1375f == var_0.a.c, any(vec3<bool>(var_0.d.a, false, var_1.x)), false), select(global4[_wgslsmith_index_u32(countOneBits(7211u), 19u)], vec3<bool>(var_1.x, false, var_1.x), var_1.zxy), vec3<bool>(true, true, true))), var_1.x, true & (all(select(vec3<bool>(false, false, true), var_1.xww, vec3<bool>(var_0.d.a, true, var_1.x))) & true), ~func_2(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_0.a.c, var_0.a.c, global1[_wgslsmith_index_u32(4294967295u, 16u)]))), Struct_1(true, vec3<i32>(1i, var_0.d.b.x, -2147483647i), var_0.d.c, global0.xyy, 1u), Struct_1(false, vec3<i32>(21494i, var_0.a.b, 2147483647i), vec4<u32>(var_0.a.a, var_0.a.a, arg_0.a, arg_0.a), global0.zww, arg_0.a)) == 1u);
    var var_4 = _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(arg_0.a, 16u)]);
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1204f, arg_1.x, arg_0.c) - vec3<f32>(637f, var_0.a.c, var_0.a.c))))))));
}

fn func_1() -> Struct_1 {
    let var_0 = Struct_1(true, (vec3<i32>(u_input.a, ~2147483647i, max(-47414i, -2147483647i)) & vec3<i32>(1i, -14431i, ~(-24934i))) & -max(vec3<i32>(u_input.b, u_input.b, u_input.a) << (vec3<u32>(global0.x, global0.x, 15206u) % vec3<u32>(32u)), global2[_wgslsmith_index_u32(global0.x ^ global0.x, 24u)]), ~(~(~_wgslsmith_clamp_vec4_u32(vec4<u32>(global0.x, 1u, global0.x, global0.x), vec4<u32>(1u, 0u, global0.x, 1u), vec4<u32>(global0.x, 50824u, global0.x, global0.x)))), vec3<u32>(reverseBits(global0.x & global0.x), global0.x, _wgslsmith_add_u32(~0u, select(4294967295u, 52528u, true)) & 5598u), global0.x >> (_wgslsmith_sub_u32(4294967295u, ~61802u) % 32u));
    var var_1 = _wgslsmith_f_op_vec3_f32(func_5(Struct_2(4294967295u, -57267i, _wgslsmith_f_op_f32(func_4(func_2(vec3<f32>(global1[_wgslsmith_index_u32(var_0.e, 16u)], -1293f, 897f), var_0, Struct_1(var_0.a, vec3<i32>(-11536i, u_input.b, 10878i), vec4<u32>(29120u, var_0.c.x, var_0.c.x, var_0.c.x), vec3<u32>(46681u, var_0.d.x, global0.x), 51829u)) & countOneBits(0u), min(_wgslsmith_sub_vec4_u32(vec4<u32>(var_0.d.x, var_0.e, 29939u, 1u), var_0.c), vec4<u32>(global0.x, var_0.c.x, global0.x, 15058u)), global0.wy, firstTrailingBit(var_0.b.x)))), vec2<f32>(-1518f, -1812f)));
    let var_2 = select(var_0.c.x, ~var_0.d.x, all(global4[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(~4294967295u, max(global0.x, 1u), global0.x), _wgslsmith_sub_vec3_u32(global0.xxy, ~vec3<u32>(4294967295u, 85056u, 0u))), 19u)]));
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec3_f32(func_5(Struct_2(8890u, var_0.b.x, var_1.x), vec2<f32>(-211f, global1[_wgslsmith_index_u32(var_0.d.x, 16u)]))).x))) - _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(5034u, 16u)] - 1873f));
    var var_4 = Struct_3(Struct_2(var_0.e, _wgslsmith_sub_i32(51569i, abs(select(-2147483647i, u_input.a, var_0.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(9689u, 16u)] * _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(var_2, 16u)])) + -1568f)), -8964i, var_0.e, var_0);
    return Struct_1(var_0.a, ~vec3<i32>(var_0.b.x, -2147483647i, var_0.b.x), ~max(_wgslsmith_sub_vec4_u32(~var_0.c, vec4<u32>(1u, global0.x, global0.x, 26875u)), _wgslsmith_mod_vec4_u32(~var_0.c, vec4<u32>(23648u, var_4.a.a, global0.x, 6460u))), vec3<u32>(var_4.c, var_4.c, global0.x), 7750u);
}

fn func_6(arg_0: vec4<f32>, arg_1: u32, arg_2: Struct_1, arg_3: vec4<bool>) -> vec2<i32> {
    var var_0 = vec2<f32>(_wgslsmith_f_op_vec3_f32(func_5(Struct_2(~_wgslsmith_sub_u32(0u, arg_2.e), arg_2.b.x, 1070f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0.xx))))).x, _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(~select(arg_2.c.x, countOneBits(global0.x), false), 16u)]));
    let var_1 = countOneBits(~(-firstTrailingBit(_wgslsmith_clamp_i32(79798i, u_input.b, -24349i))));
    global1 = array<f32, 16>();
    var_0 = arg_0.xw;
    var var_2 = var_0.x;
    return _wgslsmith_mod_vec2_i32(arg_2.b.zx, vec2<i32>(91521i >> (~(4294967295u & arg_1) % 32u), u_input.b ^ func_1().b.x));
}

fn func_7(arg_0: u32, arg_1: vec2<i32>) -> Struct_3 {
    global0 = vec4<u32>(59541u, 1u, 4294967295u ^ (0u ^ global0.x), 47740u);
    global4 = array<vec3<bool>, 19>();
    var var_0 = min(_wgslsmith_dot_vec2_i32(-vec2<i32>(0i ^ arg_1.x, arg_1.x), vec2<i32>(u_input.a, min(u_input.a, 0i))), (-45490i & arg_1.x) & u_input.b);
    global4 = array<vec3<bool>, 19>();
    var var_1 = !vec2<bool>(true, any(!select(global4[_wgslsmith_index_u32(global0.x, 19u)], vec3<bool>(false, false, false), false)));
    return Struct_3(Struct_2(0u, -21563i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(1u, 16u)]))))), func_3(), ~1u, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(331f))) <= global1[_wgslsmith_index_u32(1u, 16u)], _wgslsmith_clamp_vec3_i32(global2[_wgslsmith_index_u32(global0.x, 24u)], global2[_wgslsmith_index_u32(~arg_0, 24u)], _wgslsmith_sub_vec3_i32(~global2[_wgslsmith_index_u32(57037u, 24u)], global2[_wgslsmith_index_u32(func_1().e, 24u)])), ~vec4<u32>(1u, 0u, 1u, _wgslsmith_div_u32(arg_0, 10306u)), ~(~min(global0.wzz, vec3<u32>(4294967295u, 4294967295u, 4294967295u))), _wgslsmith_add_u32(~(~86436u), 23215u)));
}

fn func_8(arg_0: f32, arg_1: vec2<i32>, arg_2: Struct_3) -> StorageBuffer {
    var var_0 = _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(arg_2.d.c, arg_2.d.c), arg_2.d.c);
    var var_1 = select(select(!(!(!vec2<bool>(arg_2.d.a, arg_2.d.a))), select(!select(vec2<bool>(false, true), vec2<bool>(arg_2.d.a, true), false), vec2<bool>(!arg_2.d.a, arg_2.d.a), !(arg_2.d.a | arg_2.d.a)), select(select(select(vec2<bool>(true, false), vec2<bool>(arg_2.d.a, arg_2.d.a), vec2<bool>(true, true)), select(vec2<bool>(arg_2.d.a, true), vec2<bool>(false, false), true), false), vec2<bool>(arg_2.d.a, arg_2.d.a), !select(vec2<bool>(arg_2.d.a, true), vec2<bool>(true, arg_2.d.a), false))), !vec2<bool>(true, arg_2.d.a), !(!select(!vec2<bool>(arg_2.d.a, arg_2.d.a), vec2<bool>(true, true), false)));
    return StorageBuffer(func_7(10692u, func_1().b.zz).a.b, 1178f, select(1i, -_wgslsmith_dot_vec3_i32(global2[_wgslsmith_index_u32(arg_2.a.a, 24u)], vec3<i32>(2147483647i, u_input.b, -31418i)) & abs(26637i), true), min(vec3<u32>(~(global0.x & global0.x), arg_2.c, _wgslsmith_dot_vec3_u32(vec3<u32>(99794u, 4294967295u, global0.x), _wgslsmith_clamp_vec3_u32(vec3<u32>(arg_2.c, arg_2.c, global0.x), vec3<u32>(61539u, arg_2.a.a, 4294967295u), global0.zzy))), max(vec3<u32>(4962u, arg_2.c, arg_2.d.e) << (abs(global0.xyw) % vec3<u32>(32u)), global0.xyz)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_8(_wgslsmith_f_op_f32(-887f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-335f * global1[_wgslsmith_index_u32(global0.x, 16u)]) * global1[_wgslsmith_index_u32(~0u, 16u)])), -vec2<i32>(-2147483647i, -2147483647i), func_7(4294967295u, ~func_6(vec4<f32>(616f, 1685f, -1330f, global1[_wgslsmith_index_u32(global0.x, 16u)]), 1u ^ global0.x, func_1(), vec4<bool>(true, true, true, true))));
}


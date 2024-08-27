struct Struct_1 {
    a: vec4<u32>,
    b: vec4<f32>,
    c: i32,
    d: vec4<i32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: bool,
    d: u32,
    e: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
    b: vec3<u32>,
    c: Struct_1,
    d: u32,
}

struct Struct_4 {
    a: bool,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<f32>,
    c: vec4<i32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(15122u, Struct_1(vec4<u32>(0u, 11129u, 4294967295u, 0u), vec4<f32>(-1000f, 196f, 2022f, 636f), 0i, vec4<i32>(2147483647i, 0i, -2393i, 15925i)), true, 4294967295u, Struct_1(vec4<u32>(8049u, 15895u, 10425u, 1u), vec4<f32>(551f, 773f, 1000f, -332f), 33901i, vec4<i32>(1i, -37419i, i32(-2147483648), i32(-2147483648))));

var<private> global1: Struct_1;

var<private> global2: array<vec4<bool>, 17>;

var<private> global3: array<u32, 29>;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3(arg_0: vec3<f32>) -> vec2<f32> {
    return _wgslsmith_f_op_vec2_f32(-arg_0.yx);
}

fn func_4(arg_0: vec2<f32>) -> u32 {
    let var_0 = vec4<f32>(global1.b.x, arg_0.x, global1.b.x, 203f);
    global1 = global0.e;
    let var_1 = vec2<i32>(-1i) * -_wgslsmith_add_vec2_i32(min(firstTrailingBit(vec2<i32>(60132i, -32977i)), firstTrailingBit(vec2<i32>(-24737i, u_input.a))), vec2<i32>(~0i, abs(1i)));
    global3 = array<u32, 29>();
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(global0.e.b.wx)) + arg_0))));
    return (112173u << (~(~firstTrailingBit(global1.a.x)) % 32u)) | abs(~(~(global0.d ^ global0.e.a.x)));
}

fn func_2(arg_0: vec2<i32>, arg_1: Struct_1) -> Struct_1 {
    global2 = array<vec4<bool>, 17>();
    global3 = array<u32, 29>();
    var var_0 = ~vec3<u32>(firstTrailingBit(global1.a.x), global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(~(~_wgslsmith_mod_u32(1u, 51959u)), 29u)], 29u)], global3[_wgslsmith_index_u32(50299u << ((~global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(44176u, 29u)], 29u)], 29u)] ^ global0.a) % 32u), 29u)]);
    var var_1 = Struct_3(arg_1.b, vec3<u32>(arg_1.a.x, arg_1.a.x >> (0u % 32u), _wgslsmith_sub_u32(countOneBits(5130u), 31298u ^ (0u ^ arg_1.a.x))), arg_1, ~global1.a.x);
    var var_2 = arg_1.d;
    return Struct_1(~vec4<u32>(~_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 18166u), vec2<u32>(25227u, 0u)), _wgslsmith_div_u32(_wgslsmith_div_u32(arg_1.a.x, global0.a), _wgslsmith_div_u32(121053u, global0.e.a.x)), _wgslsmith_mod_u32(_wgslsmith_clamp_u32(20317u, 65650u, 0u), 9703u), func_4(_wgslsmith_f_op_vec2_f32(func_3(vec3<f32>(arg_1.b.x, global1.b.x, 687f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-arg_1.b), vec4<f32>(arg_1.b.x, 1605f, arg_1.b.x, var_1.c.b.x), select(global2[_wgslsmith_index_u32(89303u, 17u)], vec4<bool>(global0.c, global0.c, true, global0.c), global0.c))))) + _wgslsmith_div_vec4_f32(vec4<f32>(arg_1.b.x, -136f, 554f, -2900f), vec4<f32>(global1.b.x, global1.b.x, var_1.a.x, global0.e.b.x))), global0.b.d.x, vec4<i32>(global1.d.x << (select(_wgslsmith_dot_vec4_u32(global1.a, global1.a), 1u, true) % 32u), var_1.c.c, arg_1.d.x, -23907i));
}

fn func_5(arg_0: Struct_4) -> Struct_1 {
    global0 = Struct_2(global0.a, Struct_1(vec4<u32>(reverseBits(global1.a.x), max(4294967295u, 45221u), ~_wgslsmith_add_u32(51263u, global0.e.a.x), global0.d >> (min(global3[_wgslsmith_index_u32(arg_0.b.a.x, 29u)], 7008u) % 32u)), vec4<f32>(global1.b.x, -427f, 1576f, -1040f), _wgslsmith_sub_i32(_wgslsmith_add_i32(select(arg_0.b.c, u_input.a, arg_0.a), global0.b.c), func_2(_wgslsmith_div_vec2_i32(arg_0.b.d.xz, global1.d.zy), arg_0.b).c), global0.b.d), !(!(min(arg_0.b.d.x, global0.e.d.x) < firstTrailingBit(-2147483647i))), global0.a, global0.b);
    global1 = Struct_1(abs(~arg_0.b.a), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(sign(-1492f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global0.e.b.x * global1.b.x))), 507f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.b.b.x), _wgslsmith_f_op_f32(sign(global0.b.b.x))))), firstTrailingBit(_wgslsmith_add_i32(func_2(-vec2<i32>(arg_0.b.d.x, 42708i), func_2(vec2<i32>(1i, -28755i), arg_0.b)).c, u_input.a)), vec4<i32>(global0.e.c, arg_0.b.d.x, ~_wgslsmith_sub_i32(9265i, arg_0.b.d.x) | min(32471i, -1i), firstTrailingBit(_wgslsmith_div_i32(global0.e.c, -u_input.a))));
    return func_2(_wgslsmith_sub_vec2_i32(global1.d.zz, max(~(-global0.e.d.yy), global1.d.xz)), func_2(_wgslsmith_div_vec2_i32(arg_0.b.d.zz, _wgslsmith_sub_vec2_i32(~vec2<i32>(30035i, u_input.a), arg_0.b.d.yx)), func_2(-_wgslsmith_div_vec2_i32(global0.e.d.ww, arg_0.b.d.yw), arg_0.b)));
}

fn func_6(arg_0: Struct_3, arg_1: u32, arg_2: vec2<i32>, arg_3: Struct_2) -> Struct_2 {
    var var_0 = vec2<i32>(func_5(Struct_4(any(vec3<bool>(global0.c, arg_3.c, global0.c)), arg_0.c)).d.x >> (arg_1 % 32u), _wgslsmith_div_i32(~u_input.a >> (93845u % 32u), i32(-1i) * -(-1i >> (global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(21292u, 29u)], 29u)] % 32u))));
    var_0 = -(arg_2 >> (~_wgslsmith_div_vec2_u32(~vec2<u32>(arg_3.a, global1.a.x), vec2<u32>(global0.b.a.x, 4294967295u)) % vec2<u32>(32u)));
    global0 = Struct_2(arg_0.b.x, Struct_1(vec4<u32>(~(~8217u), select(_wgslsmith_dot_vec2_u32(arg_3.b.a.xw, vec2<u32>(arg_1, global3[_wgslsmith_index_u32(8181u, 29u)])), ~global0.b.a.x, true), 46267u, 1u), global0.b.b, max(_wgslsmith_sub_i32(1i << (arg_1 % 32u), global0.b.c), u_input.a), func_2(_wgslsmith_add_vec2_i32(abs(vec2<i32>(u_input.a, -61864i)), arg_3.b.d.zz), func_2(global1.d.zw, Struct_1(vec4<u32>(31536u, arg_0.c.a.x, arg_0.c.a.x, arg_0.c.a.x), global0.e.b, 23628i, vec4<i32>(var_0.x, arg_0.c.c, 2147483647i, -7381i)))).d), true, func_5(Struct_4(false, Struct_1(arg_3.e.a, _wgslsmith_f_op_vec4_f32(-global1.b), u_input.a, vec4<i32>(1110i, u_input.a, arg_0.c.d.x, arg_2.x)))).a.x, Struct_1(max(_wgslsmith_div_vec4_u32(vec4<u32>(global3[_wgslsmith_index_u32(global1.a.x, 29u)], 14043u, global0.b.a.x, 1u), vec4<u32>(arg_3.b.a.x, 10319u, 0u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global0.e.a.x, 29u)], 29u)])), reverseBits(_wgslsmith_mult_vec4_u32(global1.a, global0.b.a))), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-275f, global1.b.x, 416f, _wgslsmith_f_op_f32(-global0.e.b.x)))), u_input.a, global0.e.d));
    var var_1 = true;
    let var_2 = _wgslsmith_div_vec4_i32(vec4<i32>(~select(_wgslsmith_div_i32(2147483647i, arg_2.x), countOneBits(1015i), all(vec4<bool>(arg_3.c, true, true, true))), ~(~_wgslsmith_div_i32(u_input.a, 12199i)), _wgslsmith_mod_i32(_wgslsmith_add_i32(~arg_3.b.c, ~global0.b.c), -(i32(-1i) * -1i)), abs(reverseBits(-2147483647i)) << (0u % 32u)), vec4<i32>(-(i32(-1i) * -arg_2.x), -(~global1.d.x), ~(-2147483647i), ~(~global1.c) | -1i));
    return Struct_2(func_2(arg_0.c.d.zy << (global1.a.yy % vec2<u32>(32u)), func_5(Struct_4(true, Struct_1(vec4<u32>(4294967295u, arg_3.d, 0u, arg_3.b.a.x), vec4<f32>(global1.b.x, global0.b.b.x, global0.e.b.x, 1138f), global1.c, vec4<i32>(9711i, -14612i, 1i, -2147483647i))))).a.x, Struct_1(vec4<u32>(0u, ~(arg_3.e.a.x << (1u % 32u)), ~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 0u, 0u, 1u), global0.e.a), arg_0.d), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global1.b - _wgslsmith_div_vec4_f32(vec4<f32>(-1229f, 1546f, global0.e.b.x, global0.e.b.x), vec4<f32>(arg_3.e.b.x, arg_3.e.b.x, -1000f, arg_3.e.b.x)))), u_input.a >> (_wgslsmith_clamp_u32(4294967295u, ~53339u, arg_0.b.x & 0u) % 32u), vec4<i32>(~(i32(-1i) * -1i), u_input.a, _wgslsmith_div_i32(-35852i, func_5(Struct_4(true, global0.e)).d.x), 1i << (~global0.b.a.x % 32u))), true, min(~(~(arg_0.b.x & 6539u)), func_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_3.b.b.x, -305f)) + arg_3.e.b.wz))), arg_0.c);
}

fn func_1(arg_0: i32) -> u32 {
    let var_0 = arg_0 << (78991u % 32u);
    global2 = array<vec4<bool>, 17>();
    let var_1 = func_6(Struct_3(_wgslsmith_f_op_vec4_f32(-global1.b), global1.a.zwz, func_5(Struct_4(false, func_2(global1.d.yz, global0.e))), global1.a.x), 9366u, global1.d.zx, Struct_2(~0u, global0.b, global0.c, _wgslsmith_dot_vec4_u32(global1.a, vec4<u32>(56931u, global0.e.a.x, ~0u, global3[_wgslsmith_index_u32(_wgslsmith_add_u32(global0.a, global0.b.a.x), 29u)])), func_2(~global1.d.yw, func_2(~global1.d.wz, Struct_1(vec4<u32>(global0.b.a.x, 2979u, 0u, 1u), global0.b.b, 35611i, vec4<i32>(-8116i, global1.d.x, var_0, -1i))))));
    global0 = Struct_2(_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_dot_vec2_u32(~vec2<u32>(var_1.a, 1u), global1.a.wy), global1.a.x), max(func_5(Struct_4(var_1.c, global0.e)).a.xz, ~vec2<u32>(4294967295u, 11955u))), Struct_1(~global1.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(func_5(Struct_4(global0.c, Struct_1(vec4<u32>(5440u, 0u, var_1.a, 2467u), vec4<f32>(global0.e.b.x, 637f, global1.b.x, -1000f), u_input.a, global1.d))).b, _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.b.b.x, global1.b.x, global1.b.x, -1000f)))) + global0.b.b), 1i, -select(select(vec4<i32>(var_1.b.c, var_0, -1i, u_input.a), vec4<i32>(var_0, -2147483647i, global0.e.c, -5129i), false), vec4<i32>(global0.b.d.x, 39149i, global1.d.x, u_input.a), any(vec2<bool>(true, false)))), !var_1.c, _wgslsmith_mod_u32(global3[_wgslsmith_index_u32(func_4(_wgslsmith_f_op_vec2_f32(abs(var_1.e.b.zx))), 29u)], ~min(_wgslsmith_add_u32(global1.a.x, global0.e.a.x), ~global1.a.x)), func_6(Struct_3(global1.b, func_2(vec2<i32>(global1.d.x, 37443i), Struct_1(global0.e.a, vec4<f32>(1518f, var_1.e.b.x, -1059f, 199f), global0.e.d.x, vec4<i32>(arg_0, -1i, u_input.a, arg_0))).a.yyw, global0.e, var_1.e.a.x), global3[_wgslsmith_index_u32(~(~(~1u)), 29u)], firstLeadingBit(func_5(Struct_4(false, global0.b)).d.wy), Struct_2(~(var_1.d >> (global1.a.x % 32u)), var_1.b, var_1.c, max(37599u & global1.a.x, 100077u), global0.e)).e);
    global2 = array<vec4<bool>, 17>();
    return var_1.e.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = max(vec3<u32>(func_1(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, 23995i, global0.e.d.x, global0.e.d.x), _wgslsmith_mod_vec4_i32(global0.b.d, global0.e.d))), ~global1.a.x, countOneBits(~1u)), ~_wgslsmith_mult_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(0u, global3[_wgslsmith_index_u32(89708u, 29u)], 0u), vec3<u32>(4294967295u, global3[_wgslsmith_index_u32(global1.a.x, 29u)], global1.a.x)), _wgslsmith_div_vec3_u32(global0.e.a.www, vec3<u32>(global1.a.x, global0.d, global1.a.x))) | ~vec3<u32>(global3[_wgslsmith_index_u32(~0u, 29u)], 11396u, global1.a.x));
    let var_1 = Struct_1(_wgslsmith_clamp_vec4_u32(select(~(~vec4<u32>(global3[_wgslsmith_index_u32(4294967295u, 29u)], global0.a, 0u, 24982u)), countOneBits(vec4<u32>(global0.b.a.x, global0.e.a.x, global3[_wgslsmith_index_u32(94366u, 29u)], global0.b.a.x)), vec4<bool>(global0.c | true, all(vec3<bool>(global0.c, global0.c, global0.c)), all(vec4<bool>(true, true, global0.c, global0.c)), global0.c)), vec4<u32>(global3[_wgslsmith_index_u32(1u, 29u)], global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(~var_0.x, 29093u), 29u)], func_2(vec2<i32>(-1i, -7349i), global0.b).a.x | func_1(-1i), 4294967295u), firstTrailingBit(firstLeadingBit(reverseBits(vec4<u32>(1u, 1u, var_0.x, 80748u))))), global1.b, -9125i, vec4<i32>(_wgslsmith_mod_i32(~(-37566i), ~global1.c << (149059u % 32u)), -(~_wgslsmith_sub_i32(-2147483647i, global1.c)), -24504i, u_input.a));
    var var_2 = Struct_1(vec4<u32>(abs(var_0.x), global1.a.x, _wgslsmith_dot_vec2_u32(var_0.yx, countOneBits(~global1.a.yy)), var_0.x), global1.b, _wgslsmith_dot_vec3_i32(-global1.d.zzy, global1.d.xxz), -vec4<i32>(var_1.c, 52132i, -1i, i32(-1i) * -2147483647i));
    let var_3 = -13036i;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(73717u, func_1(u_input.a), ~4294967295u, 0u | (global1.a.x >> (~var_1.a.x % 32u))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_2.b.zzx)))), _wgslsmith_mod_vec4_i32(~_wgslsmith_clamp_vec4_i32(global0.e.d, var_2.d, var_2.d), vec4<i32>(1i, u_input.a >> (28915u % 32u), _wgslsmith_sub_i32(var_1.c, -1i), global0.b.d.x | 0i)) << (~vec4<u32>(17666u, var_1.a.x, ~1u, 1u) % vec4<u32>(32u)), global0.b.d.xxw);
}


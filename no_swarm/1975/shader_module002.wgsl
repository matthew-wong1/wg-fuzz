struct Struct_1 {
    a: vec2<f32>,
    b: vec3<u32>,
    c: vec4<bool>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
    b: Struct_1,
    c: u32,
    d: Struct_1,
}

struct Struct_4 {
    a: vec3<i32>,
    b: vec3<u32>,
}

struct Struct_5 {
    a: vec4<u32>,
    b: Struct_4,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 8>;

var<private> global1: array<bool, 29>;

var<private> global2: vec4<u32>;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3(arg_0: u32, arg_1: vec3<u32>, arg_2: i32, arg_3: i32) -> u32 {
    let var_0 = abs(global2.xxw);
    let var_1 = _wgslsmith_f_op_f32(-1f);
    var var_2 = _wgslsmith_add_vec4_u32(min(~reverseBits(vec4<u32>(var_0.x, 56273u, 0u, var_0.x)), _wgslsmith_mult_vec4_u32(vec4<u32>(0u >> (1u % 32u), 1u, global2.x, ~0u), ~vec4<u32>(var_0.x, u_input.b, 1u, 0u))), min(~max(vec4<u32>(0u, 9158u, 37933u, 11185u), ~vec4<u32>(var_0.x, var_0.x, 25875u, 32602u)), vec4<u32>(~11649u, ~reverseBits(u_input.b), 31969u, ~(~22003u))));
    global2 = vec4<u32>(_wgslsmith_sub_u32(countOneBits(arg_0), ~22443u), 41678u, arg_1.x, _wgslsmith_mod_u32(reverseBits(_wgslsmith_add_u32(13769u, arg_0)), _wgslsmith_add_u32(1u, 40407u)));
    var var_3 = select((~(~vec4<u32>(4294967295u, 0u, arg_0, 42505u)) & ((vec4<u32>(46673u, 1642u, 0u, 0u) >> (vec4<u32>(arg_1.x, arg_1.x, arg_0, 31577u) % vec4<u32>(32u))) | vec4<u32>(1u, 24912u, var_2.x, u_input.b))) & _wgslsmith_div_vec4_u32(select(select(vec4<u32>(35873u, 34929u, global2.x, 4294967295u), vec4<u32>(0u, arg_0, arg_0, var_0.x), vec4<bool>(false, global1[_wgslsmith_index_u32(23494u, 29u)], global1[_wgslsmith_index_u32(global2.x, 29u)], false)), ~vec4<u32>(global2.x, u_input.b, 74101u, var_2.x), any(vec3<bool>(true, global1[_wgslsmith_index_u32(31870u, 29u)], global1[_wgslsmith_index_u32(u_input.b, 29u)]))), ~firstLeadingBit(vec4<u32>(u_input.b, var_0.x, 4294967295u, 14145u))), ~vec4<u32>(countOneBits(47350u), u_input.b, arg_1.x, ~arg_0), global1[_wgslsmith_index_u32(1u & arg_1.x, 29u)]);
    return firstLeadingBit(_wgslsmith_mult_u32(global2.x, arg_1.x) >> (_wgslsmith_dot_vec4_u32(countOneBits(firstTrailingBit(vec4<u32>(0u, 88794u, u_input.b, arg_1.x))), ~vec4<u32>(0u, var_2.x, arg_0, 31963u)) % 32u));
}

fn func_2(arg_0: i32, arg_1: Struct_2, arg_2: f32, arg_3: u32) -> Struct_3 {
    var var_0 = Struct_4(vec3<i32>((arg_0 ^ _wgslsmith_sub_i32(u_input.c.x, 12661i)) | _wgslsmith_clamp_i32(arg_0, arg_0, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c.x, u_input.c.x, u_input.c.x), u_input.c)), u_input.c.x, u_input.c.x), ~arg_1.b.b);
    let var_1 = _wgslsmith_f_op_f32(floor(arg_1.b.a.x));
    let var_2 = arg_1.b.c.ww;
    global2 = vec4<u32>(17984u, 6206u, 88284u, _wgslsmith_mod_u32(~func_3(65637u, ~vec3<u32>(u_input.b, 1u, 0u), _wgslsmith_div_i32(var_0.a.x, var_0.a.x), i32(-1i) * -2147483647i), ~global2.x));
    var var_3 = arg_1.a;
    return Struct_3(vec4<i32>(-_wgslsmith_mult_i32(arg_0, -34943i), abs(-reverseBits(32924i)), 6883i, abs(-25561i)), arg_1.b, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, _wgslsmith_mult_u32(_wgslsmith_mod_u32(u_input.b, 1u), 1u), ~global2.x), var_0.b), Struct_1(arg_1.b.a, ~firstLeadingBit(select(var_0.b, vec3<u32>(arg_3, arg_1.b.b.x, arg_3), arg_1.a.wwx)), !(!arg_1.a)));
}

fn func_4(arg_0: Struct_3, arg_1: vec2<bool>, arg_2: vec4<bool>) -> Struct_4 {
    global2 = ~(~(~abs(vec4<u32>(1u, global2.x, arg_0.b.b.x, 5665u))));
    global2 = vec4<u32>(firstLeadingBit(~4294967295u), _wgslsmith_mod_u32(u_input.b, abs(countOneBits(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 4294967295u, 0u, arg_0.c), vec4<u32>(u_input.b, u_input.b, 4294967295u, global2.x))))), ~(~4294967295u), global2.x);
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -960f))))));
    var var_1 = -(~_wgslsmith_div_vec3_i32(vec3<i32>(~21572i, abs(u_input.c.x), min(arg_0.a.x, arg_0.a.x)), -(vec3<i32>(-2147483647i, 2147483647i, arg_0.a.x) << (arg_0.b.b % vec3<u32>(32u)))));
    let var_2 = Struct_4(firstTrailingBit(arg_0.a.yzw), ~(~global2.xwx) << (firstTrailingBit(vec3<u32>(firstTrailingBit(14610u), func_2(u_input.a, global0[_wgslsmith_index_u32(global2.x, 8u)], arg_0.b.a.x, arg_0.b.b.x).b.b.x, select(u_input.b, global2.x, false))) % vec3<u32>(32u)));
    return var_2;
}

fn func_5(arg_0: Struct_5, arg_1: bool, arg_2: Struct_4) -> Struct_1 {
    let var_0 = vec2<bool>(arg_0.c.x <= func_2(u_input.c.x, Struct_2(func_2(-43421i, Struct_2(vec4<bool>(global1[_wgslsmith_index_u32(29543u, 29u)], global1[_wgslsmith_index_u32(arg_0.b.b.x, 29u)], global1[_wgslsmith_index_u32(1u, 29u)], arg_1), Struct_1(vec2<f32>(arg_0.c.x, 2943f), global2.yxx, vec4<bool>(global1[_wgslsmith_index_u32(8564u, 29u)], global1[_wgslsmith_index_u32(19876u, 29u)], arg_1, global1[_wgslsmith_index_u32(arg_0.b.b.x, 29u)]))), -2562f, 59516u).b.c, Struct_1(vec2<f32>(-2007f, 1161f), global2.xxy, vec4<bool>(true, true, false, false))), arg_0.c.x, 29351u).d.a.x, arg_1);
    let var_1 = arg_0;
    var var_2 = (-(~vec4<i32>(arg_2.a.x, arg_2.a.x, arg_2.a.x, arg_0.b.a.x)) >> (vec4<u32>(arg_2.b.x, _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(1u, 32743u, 1u, 0u), vec4<u32>(48707u, 7624u, 0u, 41578u)), select(arg_0.a, var_1.a, vec4<bool>(false, var_0.x, global1[_wgslsmith_index_u32(arg_2.b.x, 29u)], var_0.x))), abs(var_1.b.b.x), 1u) % vec4<u32>(32u))) << (arg_0.a % vec4<u32>(32u));
    global1 = array<bool, 29>();
    var var_3 = 1f;
    return func_2(_wgslsmith_mult_i32(_wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(u_input.c, func_2(-2147483647i, Struct_2(vec4<bool>(arg_1, false, arg_1, arg_1), Struct_1(vec2<f32>(-1000f, var_1.c.x), vec3<u32>(26085u, 1u, 5980u), vec4<bool>(arg_1, true, arg_1, true))), var_1.c.x, var_1.b.b.x).a.wzw), 1i), arg_0.b.a.x), Struct_2(vec4<bool>(all(func_2(1i, Struct_2(vec4<bool>(false, true, arg_1, false), Struct_1(vec2<f32>(var_1.c.x, arg_0.c.x), arg_2.b, vec4<bool>(true, var_0.x, true, arg_1))), 340f, 12337u).b.c.wwx), any(!vec3<bool>(arg_1, var_0.x, false)), !(true & global1[_wgslsmith_index_u32(var_1.a.x, 29u)]), true), Struct_1(_wgslsmith_div_vec2_f32(vec2<f32>(986f, var_1.c.x), _wgslsmith_f_op_vec2_f32(arg_0.c.xx * arg_0.c.yy)), select(_wgslsmith_clamp_vec3_u32(global2.zwy, var_1.a.wyx, vec3<u32>(7561u, u_input.b, 17290u)), vec3<u32>(arg_2.b.x, arg_2.b.x, 1u), true), !(!vec4<bool>(false, var_0.x, var_0.x, arg_1)))), _wgslsmith_f_op_f32(var_1.c.x * _wgslsmith_f_op_f32(round(arg_0.c.x))), ~select(0u ^ arg_2.b.x, func_4(func_2(var_2.x, global0[_wgslsmith_index_u32(u_input.b, 8u)], 293f, arg_0.a.x), vec2<bool>(arg_1, arg_1), vec4<bool>(true, true, true, true)).b.x, !(arg_1 || false))).b;
}

fn func_1() -> Struct_3 {
    global0 = array<Struct_2, 8>();
    var var_0 = Struct_2(!(!(!(!vec4<bool>(global1[_wgslsmith_index_u32(global2.x, 29u)], true, global1[_wgslsmith_index_u32(u_input.b, 29u)], global1[_wgslsmith_index_u32(global2.x, 29u)])))), func_5(Struct_5(~(~vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b)), Struct_4(vec3<i32>(u_input.a, u_input.c.x, u_input.c.x), abs(vec3<u32>(global2.x, global2.x, 1u))), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-285f, -1054f, -1038f)))), global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(4294967295u ^ _wgslsmith_mod_u32(global2.x, global2.x), 12856u, 113869u), 29u)], func_4(func_2(~u_input.a, Struct_2(vec4<bool>(global1[_wgslsmith_index_u32(u_input.b, 29u)], false, true, true), Struct_1(vec2<f32>(-1393f, -246f), global2.zxz, vec4<bool>(false, false, false, true))), 1443f, u_input.b << (41663u % 32u)), !vec2<bool>(global1[_wgslsmith_index_u32(global2.x, 29u)], true), select(vec4<bool>(false, global1[_wgslsmith_index_u32(4294967295u, 29u)], false, global1[_wgslsmith_index_u32(19601u, 29u)]), vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 29u)], global1[_wgslsmith_index_u32(global2.x, 29u)], global1[_wgslsmith_index_u32(global2.x, 29u)], global1[_wgslsmith_index_u32(1u, 29u)]), true))));
    global1 = array<bool, 29>();
    let var_1 = vec3<i32>(u_input.a, _wgslsmith_sub_i32(~(-_wgslsmith_mult_i32(-1i, u_input.c.x)), -64736i), u_input.a);
    var var_2 = _wgslsmith_f_op_f32(-675f * _wgslsmith_f_op_f32(f32(-1f) * -329f));
    return Struct_3(vec4<i32>(min(-1i, _wgslsmith_dot_vec2_i32(vec2<i32>(0i, 0i), u_input.c.xy)), -2147483647i, func_4(func_2(var_1.x, global0[_wgslsmith_index_u32(u_input.b, 8u)], -403f, 63471u), !var_0.b.c.zx, vec4<bool>(true, false, var_0.b.c.x, var_0.a.x)).a.x, ~_wgslsmith_add_i32(0i, 0i)) ^ (abs(select(vec4<i32>(0i, var_1.x, u_input.a, var_1.x), vec4<i32>(39625i, 0i, var_1.x, u_input.a), vec4<bool>(false, true, global1[_wgslsmith_index_u32(25376u, 29u)], global1[_wgslsmith_index_u32(0u, 29u)]))) & ~(~vec4<i32>(u_input.c.x, u_input.a, u_input.a, -2147483647i))), func_2(-1i, global0[_wgslsmith_index_u32(28476u, 8u)], var_0.b.a.x, firstTrailingBit(_wgslsmith_div_u32(firstLeadingBit(4294967295u), global2.x ^ 2083u))).b, _wgslsmith_div_u32(~4294967295u, 42419u), var_0.b);
}

fn func_6(arg_0: Struct_3, arg_1: vec4<f32>, arg_2: vec3<f32>) -> vec4<i32> {
    var var_0 = !func_5(Struct_5(vec4<u32>(4294967295u, 1u, u_input.b, 58083u) & ~vec4<u32>(0u, 4294967295u, u_input.b, arg_0.d.b.x), Struct_4(u_input.c, vec3<u32>(4294967295u, arg_0.d.b.x, 28474u) << (vec3<u32>(57788u, global2.x, 1u) % vec3<u32>(32u))), vec3<f32>(_wgslsmith_f_op_f32(-470f * -1041f), _wgslsmith_f_op_f32(f32(-1f) * -787f), _wgslsmith_f_op_f32(floor(arg_0.d.a.x)))), false, Struct_4(abs(select(vec3<i32>(-2147483647i, u_input.c.x, 0i), u_input.c, vec3<bool>(false, true, true))), ~firstTrailingBit(global2.xzy))).c.x;
    global2 = vec4<u32>(global2.x, u_input.b, _wgslsmith_dot_vec4_u32(vec4<u32>(func_3(global2.x, _wgslsmith_div_vec3_u32(global2.zwy, vec3<u32>(47131u, 1u, global2.x)), reverseBits(arg_0.a.x), _wgslsmith_add_i32(0i, arg_0.a.x)), ~15023u, select(35384u, 12292u, arg_0.d.c.x) & ~18376u, arg_0.b.b.x), max(select(vec4<u32>(u_input.b, global2.x, u_input.b, global2.x), vec4<u32>(u_input.b, 1u, global2.x, global2.x), arg_0.d.c) << (vec4<u32>(arg_0.b.b.x, 4294967295u, global2.x, 32912u) % vec4<u32>(32u)), firstTrailingBit(vec4<u32>(global2.x, global2.x, arg_0.c, 26715u)))), _wgslsmith_div_u32(min(_wgslsmith_clamp_u32(global2.x, ~u_input.b, ~4294967295u), global2.x | _wgslsmith_dot_vec4_u32(vec4<u32>(global2.x, 76132u, 4294967295u, arg_0.b.b.x), vec4<u32>(4294967295u, 1u, u_input.b, arg_0.d.b.x))), ~_wgslsmith_sub_u32(u_input.b, ~arg_0.b.b.x)));
    let var_1 = Struct_2(!vec4<bool>(u_input.b > firstLeadingBit(4923u), abs(-2147483647i) <= (u_input.c.x << (global2.x % 32u)), any(!vec3<bool>(global1[_wgslsmith_index_u32(21903u, 29u)], global1[_wgslsmith_index_u32(arg_0.b.b.x, 29u)], false)), true && arg_0.d.c.x), func_1().b);
    var var_2 = -280f;
    global2 = abs(abs(~abs(_wgslsmith_mod_vec4_u32(vec4<u32>(arg_0.c, 0u, 0u, 1u), vec4<u32>(4294967295u, u_input.b, arg_0.c, 64378u)))));
    return vec4<i32>(~(-26648i) ^ arg_0.a.x, ~(-1i), min(u_input.c.x, 20372i), -12446i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(func_1(), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(539f - -487f))), _wgslsmith_f_op_f32(-761f * -1068f), _wgslsmith_f_op_f32(min(1f, _wgslsmith_f_op_f32(-760f - 1097f))), -607f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1429f, -358f, 1000f) - vec3<f32>(1000f, -1136f, 192f)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(838f, -1000f, -658f)))));
    var var_1 = 1u << (global2.x % 32u);
    let var_2 = Struct_5(~vec4<u32>(abs(1u), abs(global2.x), global2.x, 4294967295u), Struct_4(func_4(func_2(countOneBits(-2147483647i), Struct_2(vec4<bool>(true, global1[_wgslsmith_index_u32(global2.x, 29u)], true, true), Struct_1(vec2<f32>(-333f, 783f), global2.xwy, vec4<bool>(false, global1[_wgslsmith_index_u32(u_input.b, 29u)], true, global1[_wgslsmith_index_u32(u_input.b, 29u)]))), _wgslsmith_f_op_f32(f32(-1f) * -588f), 12764u), vec2<bool>(global1[_wgslsmith_index_u32(~u_input.b, 29u)], select(global1[_wgslsmith_index_u32(u_input.b, 29u)], false, true)), !vec4<bool>(true, false, true, global1[_wgslsmith_index_u32(0u, 29u)])).a, _wgslsmith_mod_vec3_u32(~global2.wwx, global2.yzy)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1873f, 1139f, -1341f), vec3<f32>(173f, -808f, 111f), vec3<bool>(global1[_wgslsmith_index_u32(global2.x, 29u)], false, false))), _wgslsmith_f_op_vec3_f32(vec3<f32>(1646f, -1496f, 370f) - vec3<f32>(222f, 493f, -633f))))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1212f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1494f)) + _wgslsmith_f_op_f32(f32(-1f) * -1559f)), func_2(~u_input.a, global0[_wgslsmith_index_u32(~26207u, 8u)], -264f, 1u).b.a.x), global1[_wgslsmith_index_u32(1u, 29u)])));
    let var_3 = -(-(vec2<i32>(2147483647i, var_2.b.a.x) & var_0.zx) << (global2.wx % vec2<u32>(32u))) >> (select(global2.wx, vec2<u32>(u_input.b, ~global2.x), vec2<bool>(!global1[_wgslsmith_index_u32(~u_input.b, 29u)], true)) % vec2<u32>(32u));
    var var_4 = false;
    let var_5 = !global1[_wgslsmith_index_u32(4294967295u >> (0u % 32u), 29u)];
    let var_6 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(156f, -592f, 1037f, var_2.c.x) + vec4<f32>(-905f, 1283f, var_2.c.x, -676f)) + vec4<f32>(var_2.c.x, 900f, 522f, var_2.c.x))))));
    let var_7 = _wgslsmith_add_i32(0i, 0i);
    global1 = array<bool, 29>();
    let x = u_input.a;
    s_output = StorageBuffer(0i, var_2.c.x);
}


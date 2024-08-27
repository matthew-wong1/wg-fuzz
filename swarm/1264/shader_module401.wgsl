struct Struct_1 {
    a: bool,
    b: vec2<u32>,
    c: vec2<i32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec2<f32>,
    d: vec4<f32>,
}

struct Struct_3 {
    a: f32,
    b: u32,
    c: vec2<i32>,
}

struct Struct_4 {
    a: vec4<u32>,
    b: u32,
    c: f32,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 6>;

var<private> global1: Struct_1;

var<private> global2: Struct_4;

var<private> global3: f32;

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3(arg_0: Struct_4, arg_1: i32) -> u32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(max(vec4<f32>(global2.c, global2.c, _wgslsmith_f_op_f32(sign(1000f)), _wgslsmith_f_op_f32(step(-228f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global2.c)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-521f, global2.c, 688f, 322f), vec4<f32>(arg_0.c, -569f, global2.c, -1550f)))) + _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1883f, global2.c, arg_0.c, arg_0.c)))))) * vec4<f32>(863f, _wgslsmith_f_op_f32(-arg_0.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.c)), -757f))));
    global1 = Struct_1(true, vec2<u32>(1u, 1u), -abs(-global1.c & ~global1.c));
    var var_1 = Struct_2(_wgslsmith_f_op_f32(-681f - _wgslsmith_f_op_f32(arg_0.c - _wgslsmith_f_op_f32(_wgslsmith_div_f32(global2.c, global2.c) - -1000f))), Struct_1(!(!(arg_1 < 2147483647i)), ~select(global2.a.wy, arg_0.a.wy, u_input.b >= global1.c.x), -vec2<i32>(2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, global1.c.x, 47384i), vec3<i32>(arg_1, global1.c.x, global1.c.x)))), vec2<f32>(_wgslsmith_f_op_f32(1227f + -506f), -426f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(381f, arg_0.c, global2.c, global2.c))))));
    return ~97624u;
}

fn func_2(arg_0: i32) -> Struct_3 {
    global2 = Struct_4(_wgslsmith_div_vec4_u32(vec4<u32>(~1u, _wgslsmith_clamp_u32(62511u & global2.a.x, 15120u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, global1.b.x, 0u), vec3<u32>(global1.b.x, 4294967295u, 56398u))), ~u_input.a.x, _wgslsmith_add_u32(abs(1u), func_3(Struct_4(global2.a, 5314u, 551f, vec2<bool>(true, true)), -2147483647i))), firstTrailingBit(select(vec4<u32>(global2.a.x, 61504u, global2.b, global2.b), vec4<u32>(global1.b.x, 66975u, u_input.a.x, global1.b.x), false)) & ~u_input.a), _wgslsmith_mult_u32(~u_input.a.x, 4294967295u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global2.c, _wgslsmith_f_op_f32(-global2.c)))), vec2<bool>(true, true));
    let var_0 = Struct_4(vec4<u32>(63161u, global1.b.x << (_wgslsmith_div_u32(4294967295u, 1u) % 32u), ~0u, 4294967295u), ~u_input.a.x, global2.c, select(!select(vec2<bool>(true, global1.a), vec2<bool>(global2.d.x, global2.d.x), !global2.d.x), global2.d, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -349f), _wgslsmith_f_op_f32(floor(global2.c)))) <= _wgslsmith_f_op_f32(global2.c * _wgslsmith_f_op_f32(-global2.c))));
    var var_1 = Struct_3(global2.c, ~u_input.a.x, select(global1.c, global1.c, !global2.d.x) | global1.c);
    var var_2 = reverseBits(_wgslsmith_sub_vec4_u32(global2.a, u_input.a) << (reverseBits(_wgslsmith_mult_vec4_u32(_wgslsmith_mult_vec4_u32(u_input.a, global2.a), abs(vec4<u32>(0u, 46720u, u_input.a.x, 1u)))) % vec4<u32>(32u)));
    var var_3 = select(!select(var_0.d, vec2<bool>(1i >= arg_0, false), all(!var_0.d)), !select(vec2<bool>(true, all(global0[_wgslsmith_index_u32(36812u, 6u)])), var_0.d, true), all(vec4<bool>(global1.a, 2147483647i > ~global1.c.x, global2.d.x, !(var_1.a != 753f))));
    return Struct_3(_wgslsmith_f_op_f32(var_1.a + -281f), ~1u, ~var_1.c);
}

fn func_1(arg_0: Struct_1, arg_1: Struct_3, arg_2: Struct_2) -> Struct_1 {
    var var_0 = func_2(arg_1.c.x);
    let var_1 = select(vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_mult_i32(23750i, 1i), _wgslsmith_div_i32(var_0.c.x, global1.c.x)), _wgslsmith_mult_vec2_i32(vec2<i32>(arg_0.c.x, global1.c.x), global1.c & arg_2.b.c)), -(0i ^ arg_0.c.x) << (31720u % 32u), firstTrailingBit(arg_1.c.x)), ~(~reverseBits(vec3<i32>(-19143i, arg_2.b.c.x, arg_0.c.x) | vec3<i32>(arg_1.c.x, 1i, 12858i))), global0[_wgslsmith_index_u32(~(~select(_wgslsmith_dot_vec4_u32(vec4<u32>(58402u, 40744u, global2.b, 78790u), global2.a), arg_1.b, select(true, true, arg_2.b.a))), 6u)]);
    var var_2 = arg_2.b.a;
    global2 = Struct_4(~_wgslsmith_mult_vec4_u32(u_input.a, vec4<u32>(4294967295u, u_input.a.x, _wgslsmith_dot_vec3_u32(global2.a.xwy, vec3<u32>(48782u, var_0.b, global2.a.x)), u_input.a.x | arg_0.b.x)), ~global2.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.a))), !global2.d);
    return Struct_1(true & arg_2.b.a, ~u_input.a.ww, countOneBits(reverseBits(_wgslsmith_add_vec2_i32(vec2<i32>(-1i, 1i), vec2<i32>(-2147483647i, arg_2.b.c.x))) >> (vec2<u32>(_wgslsmith_add_u32(arg_1.b, arg_0.b.x), abs(4294967295u)) % vec2<u32>(32u))));
}

fn func_4(arg_0: Struct_2, arg_1: bool, arg_2: Struct_2) -> Struct_4 {
    let var_0 = _wgslsmith_f_op_f32(max(global2.c, 497f));
    global3 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(855f + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.c - arg_2.d.x) - _wgslsmith_f_op_f32(round(-1171f))), _wgslsmith_f_op_f32(abs(-1177f)), global1.a)))));
    let var_1 = arg_0.d.xz;
    global3 = arg_2.c.x;
    let var_2 = global2.b | func_1(arg_2.b, func_2(1i), arg_2).b.x;
    return Struct_4(abs(vec4<u32>(firstTrailingBit(var_2 >> (1u % 32u)), 13642u, arg_2.b.b.x, 4294967295u)), func_2(~arg_2.b.c.x << (_wgslsmith_clamp_u32(_wgslsmith_mod_u32(arg_0.b.b.x, arg_0.b.b.x), var_2, ~arg_0.b.b.x) % 32u)).b, _wgslsmith_f_op_f32(arg_2.a * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(arg_0.c.x, var_1.x))))), !select(global2.d, global2.d, vec2<bool>(arg_0.b.a, false)));
}

fn func_5(arg_0: Struct_4, arg_1: Struct_3) -> Struct_2 {
    let var_0 = u_input.a.wzx;
    var var_1 = _wgslsmith_mult_vec4_i32(reverseBits(~max(vec4<i32>(global1.c.x, -9689i, u_input.b, arg_1.c.x), vec4<i32>(-2147483647i, arg_1.c.x, u_input.b, global1.c.x))), abs(max(~vec4<i32>(22383i, global1.c.x, -22069i, u_input.b), firstTrailingBit(vec4<i32>(u_input.b, 1i, -5243i, arg_1.c.x))))) & (-vec4<i32>(~19141i, -2147483647i, global1.c.x & arg_1.c.x, -2147483647i) ^ (vec4<i32>(~global1.c.x, i32(-1i) * -5550i, u_input.b, abs(arg_1.c.x)) & -(~vec4<i32>(-32151i, -1i, 33085i, -1i))));
    global3 = arg_0.c;
    var var_2 = 34341i;
    let var_3 = vec4<i32>(global1.c.x, -1i, -func_1(Struct_1(true, arg_0.a.zw, vec2<i32>(2147483647i, 30382i)), Struct_3(arg_1.a, var_0.x, vec2<i32>(arg_1.c.x, arg_1.c.x)), Struct_2(arg_1.a, Struct_1(global1.a, arg_0.a.xx, global1.c), vec2<f32>(-717f, arg_0.c), vec4<f32>(911f, 1000f, -631f, 1233f))).c.x, global1.c.x) << (vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(global2.a.x, var_0.x), vec2<u32>(~arg_0.a.x, 26310u)), max(arg_1.b, 0u), 4294967295u, 22036u & ~(~var_0.x)) % vec4<u32>(32u));
    return Struct_2(-1167f, func_1(func_1(Struct_1(true, select(u_input.a.yw, vec2<u32>(arg_1.b, u_input.a.x), true), vec2<i32>(83358i, 0i)), arg_1, Struct_2(-168f, func_1(Struct_1(true, global1.b, arg_1.c), Struct_3(arg_1.a, var_0.x, var_3.yz), Struct_2(global2.c, Struct_1(global2.d.x, vec2<u32>(39648u, 1u), var_3.xx), vec2<f32>(arg_0.c, 357f), vec4<f32>(-812f, -1000f, arg_0.c, -461f))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(975f, 455f), vec2<f32>(arg_0.c, global2.c), arg_0.d)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.a, -835f, arg_0.c, 746f)))), func_2(0i), Struct_2(arg_1.a, func_1(Struct_1(global2.d.x, vec2<u32>(arg_1.b, var_0.x), vec2<i32>(var_3.x, var_1.x)), arg_1, Struct_2(2357f, Struct_1(global1.a, vec2<u32>(4294967295u, 4294967295u), var_1.zw), vec2<f32>(556f, arg_1.a), vec4<f32>(275f, -757f, -400f, global2.c))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(global2.c, 781f), vec2<f32>(1109f, 1087f)) * vec2<f32>(arg_1.a, 583f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.c, arg_1.a, global2.c, global2.c) + vec4<f32>(1000f, -137f, -419f, -793f)) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0.c, global2.c, arg_0.c, arg_0.c), vec4<f32>(-1221f, arg_1.a, arg_0.c, arg_0.c), global2.d.x))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, global2.c)))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(139f, _wgslsmith_f_op_f32(trunc(-426f)), -483f, _wgslsmith_f_op_f32(-arg_1.a))), vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(global2.c)))), arg_1.a, arg_1.a, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(arg_1.a)))))));
}

fn func_6(arg_0: Struct_2, arg_1: vec2<f32>, arg_2: Struct_3) -> Struct_2 {
    global1 = Struct_1(func_1(arg_0.b, Struct_3(arg_0.a, 4294967295u, arg_0.b.c), Struct_2(func_4(func_5(Struct_4(vec4<u32>(44134u, 74498u, arg_2.b, 1u), global2.b, arg_2.a, global2.d), arg_2), arg_0.b.a & true, Struct_2(503f, Struct_1(global2.d.x, vec2<u32>(4294967295u, global2.a.x), vec2<i32>(global1.c.x, -23422i)), arg_1, vec4<f32>(1734f, arg_1.x, -192f, 1821f))).c, Struct_1(any(global0[_wgslsmith_index_u32(arg_0.b.b.x, 6u)]), vec2<u32>(0u, 23623u), -arg_0.b.c), arg_1, _wgslsmith_f_op_vec4_f32(vec4<f32>(global2.c, arg_0.a, global2.c, -762f) * arg_0.d))).a, _wgslsmith_sub_vec2_u32(~(~(global2.a.zw >> (vec2<u32>(0u, 0u) % vec2<u32>(32u)))), func_4(func_5(func_4(Struct_2(422f, arg_0.b, arg_0.d.wz, vec4<f32>(arg_1.x, arg_1.x, arg_0.c.x, arg_0.a)), true, Struct_2(global2.c, Struct_1(arg_0.b.a, global1.b, vec2<i32>(u_input.b, u_input.b)), arg_0.d.wz, arg_0.d)), Struct_3(1001f, global2.b, arg_2.c)), select(arg_0.b.a || global1.a, global1.a, false), arg_0).a.yy), _wgslsmith_div_vec2_i32(-_wgslsmith_mod_vec2_i32(vec2<i32>(global1.c.x, -45029i), global1.c), -_wgslsmith_div_vec2_i32(~vec2<i32>(1i, 2147483647i), _wgslsmith_sub_vec2_i32(arg_0.b.c, global1.c))));
    global2 = Struct_4(vec4<u32>(arg_2.b, func_5(func_4(func_5(Struct_4(vec4<u32>(1u, 10044u, global2.a.x, 0u), arg_0.b.b.x, -804f, global2.d), Struct_3(-1076f, global1.b.x, arg_2.c)), func_5(Struct_4(u_input.a, 4294967295u, 480f, global2.d), arg_2).b.a, Struct_2(arg_1.x, Struct_1(global1.a, vec2<u32>(global1.b.x, 81998u), global1.c), vec2<f32>(1419f, 1086f), arg_0.d)), func_2(7274i)).b.b.x, min(0u, 1u), select(~_wgslsmith_add_u32(36726u, 46135u), 34315u << (_wgslsmith_dot_vec3_u32(u_input.a.zzx, vec3<u32>(5154u, u_input.a.x, 22873u)) % 32u), any(select(vec4<bool>(true, true, global2.d.x, global1.a), vec4<bool>(arg_0.b.a, false, arg_0.b.a, false), vec4<bool>(true, global2.d.x, true, false))))), 4294967295u & (_wgslsmith_add_u32(countOneBits(u_input.a.x), 1u) >> (max(~global2.b, u_input.a.x) % 32u)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(global2.c)), _wgslsmith_f_op_f32(-arg_0.c.x)), vec2<bool>(select(global1.a, any(!vec4<bool>(global2.d.x, global1.a, global1.a, false)), all(vec4<bool>(global2.d.x, true, true, global1.a))), false));
    global3 = global2.c;
    global3 = -2207f;
    global3 = func_2(u_input.b).a;
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(func_5(func_4(Struct_2(_wgslsmith_div_f32(global2.c, global2.c), func_1(Struct_1(true, u_input.a.zw, vec2<i32>(3189i, 2147483647i)), Struct_3(global2.c, 48916u, global1.c), Struct_2(global2.c, Struct_1(global2.d.x, vec2<u32>(u_input.a.x, 1u), global1.c), vec2<f32>(-1957f, global2.c), vec4<f32>(global2.c, global2.c, global2.c, global2.c))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(653f, 1820f)), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global2.c, global2.c, 1563f, 417f)))), global2.d.x == true, Struct_2(_wgslsmith_f_op_f32(global2.c + -303f), Struct_1(false, vec2<u32>(global2.a.x, global1.b.x), global1.c), vec2<f32>(global2.c, global2.c), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.c, -1650f, global2.c, global2.c)))), Struct_3(_wgslsmith_f_op_f32(global2.c + -819f), ~_wgslsmith_dot_vec2_u32(global1.b, global1.b), vec2<i32>(i32(-1i) * -20796i, _wgslsmith_div_i32(global1.c.x, u_input.b)))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.c, global2.c)) + _wgslsmith_f_op_vec2_f32(step(vec2<f32>(global2.c, 1671f), vec2<f32>(-1000f, global2.c)))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(global2.c, -1000f) + vec2<f32>(-119f, 467f)))) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1985f, global2.c))), _wgslsmith_f_op_vec2_f32(vec2<f32>(global2.c, global2.c) * vec2<f32>(-176f, global2.c)))))), func_2(_wgslsmith_mult_i32(max(-3500i, max(31736i, u_input.b)), u_input.b)));
    global2 = func_4(Struct_2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(global2.c, 1091f)))), Struct_1(global1.a && true, vec2<u32>(global1.b.x, global1.b.x), vec2<i32>(-var_0.b.c.x, var_0.b.c.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(317f, global2.c))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_0.d))), global2.d.x, func_5(func_4(func_5(func_4(Struct_2(-1000f, Struct_1(false, global1.b, var_0.b.c), var_0.c, vec4<f32>(var_0.a, 2338f, global2.c, var_0.d.x)), global1.a, Struct_2(global2.c, var_0.b, var_0.c, var_0.d)), Struct_3(1660f, 0u, global1.c)), true, func_6(Struct_2(var_0.d.x, var_0.b, vec2<f32>(335f, -1263f), vec4<f32>(1691f, var_0.a, global2.c, -768f)), vec2<f32>(1000f, 181f), Struct_3(-1457f, u_input.a.x, vec2<i32>(4i, -2147483647i)))), func_2(abs(i32(-1i) * -2147483647i))));
    var var_1 = _wgslsmith_clamp_vec3_u32(max(max(vec3<u32>(~var_0.b.b.x, 16165u, 4294967295u), reverseBits(min(u_input.a.wzw, vec3<u32>(4294967295u, global2.a.x, global1.b.x)))), u_input.a.zyy), ~(global2.a.zwy ^ vec3<u32>(42541u, u_input.a.x, ~4294967295u)), u_input.a.zwz);
    var_0 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.c) * var_0.d.x), -2095f) * _wgslsmith_f_op_f32(max(var_0.d.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(-1045f)), _wgslsmith_div_f32(322f, var_0.c.x)))))), Struct_1(global2.d.x, vec2<u32>(0u, global2.a.x), select(select(global1.c, var_0.b.c, global2.d), _wgslsmith_sub_vec2_i32(var_0.b.c, var_0.b.c), !global1.a) & vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, global1.c.x, global1.c.x, global1.c.x), vec4<i32>(u_input.b, 1i, u_input.b, 25676i)), -1i)), _wgslsmith_f_op_vec2_f32(vec2<f32>(global2.c, 661f) * _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(select(var_0.c, var_0.c, select(global2.d, global2.d, var_0.b.a))), var_0.c))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-var_0.d), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(step(-484f, 922f)), _wgslsmith_f_op_f32(-global2.c), 248f, _wgslsmith_f_op_f32(floor(global2.c)))))));
    let var_2 = _wgslsmith_add_vec4_i32(_wgslsmith_add_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(firstLeadingBit(global1.c.x), -40894i, u_input.b, global1.c.x), vec4<i32>(u_input.b, -var_0.b.c.x, var_0.b.c.x, _wgslsmith_div_i32(-1i, global1.c.x))), vec4<i32>(u_input.b, abs(var_0.b.c.x), 1i, -reverseBits(var_0.b.c.x))), ~(~(vec4<i32>(-1i) * -vec4<i32>(var_0.b.c.x, u_input.b, -2147483647i, 3138i))));
    var var_3 = var_0.b.b;
    let x = u_input.a;
    s_output = StorageBuffer(1u);
}


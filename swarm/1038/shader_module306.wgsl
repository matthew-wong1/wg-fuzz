struct Struct_1 {
    a: vec2<bool>,
    b: f32,
    c: vec4<u32>,
    d: vec3<u32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: vec2<i32>,
    c: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: Struct_1,
}

struct Struct_5 {
    a: i32,
    b: vec2<f32>,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<u32>,
    c: vec4<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 17>;

var<private> global1: Struct_5;

var<private> global2: array<i32, 18>;

var<private> global3: array<i32, 7>;

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3(arg_0: vec2<i32>, arg_1: f32, arg_2: Struct_3) -> vec4<u32> {
    let var_0 = -firstTrailingBit(firstLeadingBit(~vec2<i32>(global3[_wgslsmith_index_u32(4294967295u, 7u)], -23067i)));
    global3 = array<i32, 7>();
    let var_1 = Struct_3(~0i, -vec2<i32>(-34888i, 3801i), arg_2.c);
    global0 = array<vec2<i32>, 17>();
    var var_2 = vec4<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(arg_0, var_0), ~_wgslsmith_add_vec2_i32(-var_0, -var_0)), _wgslsmith_div_i32(var_1.b.x, -arg_0.x) & global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~(~vec4<u32>(36774u, u_input.b.x, arg_2.c.d.x, 53953u)), ~(~vec4<u32>(u_input.b.x, arg_2.c.c.x, u_input.b.x, arg_2.c.c.x))), 7u)], firstTrailingBit(_wgslsmith_sub_i32(-55148i, _wgslsmith_dot_vec4_i32(vec4<i32>(-51221i, -10169i, 2147483647i, -28383i), vec4<i32>(-27575i, arg_2.a, var_0.x, global2[_wgslsmith_index_u32(0u, 18u)]) & vec4<i32>(global1.a, var_0.x, u_input.a, -5169i)))), 10209i);
    return ~((vec4<u32>(1u, ~42661u, 7957u, 4294967295u) << (((vec4<u32>(var_1.c.c.x, u_input.b.x, 1u, var_1.c.d.x) >> (var_1.c.c % vec4<u32>(32u))) ^ (vec4<u32>(52983u, 0u, arg_2.c.d.x, 29258u) >> (arg_2.c.c % vec4<u32>(32u)))) % vec4<u32>(32u))) ^ min(arg_2.c.c, arg_2.c.c));
}

fn func_4(arg_0: Struct_2, arg_1: vec3<bool>) -> u32 {
    var var_0 = Struct_4(_wgslsmith_add_u32(u_input.b.x, firstLeadingBit(4294967295u)), arg_0.b);
    return 0u;
}

fn func_2(arg_0: u32) -> Struct_1 {
    let var_0 = vec2<u32>(~max(~_wgslsmith_sub_u32(arg_0, 18083u), reverseBits(49929u)), func_4(Struct_2(_wgslsmith_mod_vec3_i32(vec3<i32>(-98i, 1i, -19770i) & vec3<i32>(global2[_wgslsmith_index_u32(arg_0, 18u)], -12479i, 16722i), -vec3<i32>(15345i, -1i, global3[_wgslsmith_index_u32(arg_0, 7u)])), Struct_1(vec2<bool>(true, true), global1.b.x, func_3(global0[_wgslsmith_index_u32(0u, 17u)], global1.c.x, Struct_3(-31415i, global0[_wgslsmith_index_u32(arg_0, 17u)], Struct_1(vec2<bool>(false, true), -660f, vec4<u32>(14938u, arg_0, 0u, arg_0), vec3<u32>(0u, 74807u, arg_0)))), ~vec3<u32>(4294967295u, arg_0, 15864u))), vec3<bool>(true, all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), true)), any(select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, false))))));
    var var_1 = Struct_3(-firstTrailingBit(-12600i | global2[_wgslsmith_index_u32(func_4(Struct_2(vec3<i32>(global1.a, global2[_wgslsmith_index_u32(14147u, 18u)], 0i), Struct_1(vec2<bool>(false, true), global1.b.x, vec4<u32>(u_input.b.x, var_0.x, 4294967295u, 36956u), vec3<u32>(u_input.b.x, u_input.b.x, 1u))), vec3<bool>(true, false, false)), 18u)]), global0[_wgslsmith_index_u32(countOneBits(0u), 17u)], Struct_1(!vec2<bool>(all(vec2<bool>(true, false)), true), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global1.c.x))), abs(abs(vec4<u32>(var_0.x, var_0.x, 79713u, var_0.x))), ~func_3(vec2<i32>(1i, global1.a) << (u_input.b % vec2<u32>(32u)), _wgslsmith_f_op_f32(-global1.c.x), Struct_3(u_input.a, vec2<i32>(-29307i, global1.a), Struct_1(vec2<bool>(true, false), 1574f, vec4<u32>(23799u, 98874u, 0u, 57696u), vec3<u32>(arg_0, 0u, 4294967295u)))).wzw));
    let var_2 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(var_1.c.b, global1.c.x)), _wgslsmith_f_op_f32(f32(-1f) * -303f), !all(!(!vec3<bool>(true, var_1.c.a.x, true)))));
    global1 = Struct_5(_wgslsmith_mult_i32(reverseBits(-_wgslsmith_sub_i32(-2147483647i, u_input.a)), -35116i), vec2<f32>(2373f, global1.b.x), _wgslsmith_f_op_vec3_f32(exp2(global1.c)));
    let var_3 = _wgslsmith_dot_vec2_u32(~var_1.c.d.zy, u_input.b);
    return var_1.c;
}

fn func_5(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: u32, arg_3: bool) -> vec2<i32> {
    let var_0 = Struct_3(1i, reverseBits(arg_1.xz), Struct_1(arg_0.a, -337f, _wgslsmith_clamp_vec4_u32(~(arg_0.c << (vec4<u32>(arg_0.c.x, arg_0.d.x, arg_0.d.x, 0u) % vec4<u32>(32u))), arg_0.c, ~(~vec4<u32>(arg_0.d.x, arg_0.d.x, 0u, 22977u))), max(arg_0.c.xzw ^ ~arg_0.c.yxz, firstTrailingBit(arg_0.d))));
    var var_1 = var_0.c;
    let var_2 = 75013u;
    let var_3 = !func_2(u_input.b.x << (21901u % 32u)).a;
    let var_4 = Struct_2(vec3<i32>(-2147483647i, var_0.a, _wgslsmith_clamp_i32(~46262i, -_wgslsmith_div_i32(1i, -2147483647i), abs(_wgslsmith_mult_i32(var_0.b.x, global1.a)))), func_2(var_0.c.c.x));
    return _wgslsmith_mult_vec2_i32(-firstTrailingBit(arg_1.wz ^ vec2<i32>(1i, global1.a)), vec2<i32>(global2[_wgslsmith_index_u32(var_1.c.x, 18u)], -_wgslsmith_dot_vec3_i32(arg_1.yxz, var_4.a)) ^ var_4.a.xy);
}

fn func_6(arg_0: Struct_3) -> Struct_5 {
    global2 = array<i32, 18>();
    return Struct_5(16752i, vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1329f)), 102f)), global1.c.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.c.b, -767f, global1.b.x) + vec3<f32>(arg_0.c.b, global1.b.x, arg_0.c.b))))));
}

fn func_1(arg_0: vec3<bool>) -> f32 {
    global3 = array<i32, 7>();
    let var_0 = global1.b.x;
    global1 = func_6(Struct_3(-_wgslsmith_dot_vec4_i32(vec4<i32>(37759i, -2147483647i, global1.a, 5803i) >> (vec4<u32>(u_input.b.x, 4294967295u, 4294967295u, u_input.b.x) % vec4<u32>(32u)), -vec4<i32>(global1.a, global3[_wgslsmith_index_u32(u_input.b.x, 7u)], -32310i, 1i)), func_5(func_2(_wgslsmith_mod_u32(30179u, u_input.b.x)), vec4<i32>(-global3[_wgslsmith_index_u32(19569u, 7u)], -57259i, global2[_wgslsmith_index_u32(1u, 18u)] ^ -28069i, _wgslsmith_dot_vec3_i32(vec3<i32>(global1.a, 0i, -16071i), vec3<i32>(-1i, -23760i, -2147483647i))), 11222u, arg_0.x), func_2(~(~u_input.b.x))));
    let var_1 = select(select(vec4<bool>(arg_0.x & (false != arg_0.x), arg_0.x, ~global1.a >= 29396i, true), vec4<bool>(false, !(global3[_wgslsmith_index_u32(u_input.b.x, 7u)] <= -26435i), arg_0.x, func_2(u_input.b.x << (4294967295u % 32u)).a.x), !all(select(vec2<bool>(arg_0.x, false), arg_0.yz, vec2<bool>(false, arg_0.x)))), !select(select(vec4<bool>(true, true, true, true), !vec4<bool>(true, false, arg_0.x, arg_0.x), false), !vec4<bool>(true, false, false, arg_0.x), true), arg_0.x);
    let var_2 = Struct_3(func_5(Struct_1(!(!var_1.zw), global1.c.x, _wgslsmith_div_vec4_u32(~vec4<u32>(12773u, u_input.b.x, 67889u, u_input.b.x), vec4<u32>(u_input.b.x, u_input.b.x, 4294967295u, u_input.b.x)), ~(vec3<u32>(u_input.b.x, 1u, 1u) >> (vec3<u32>(20479u, u_input.b.x, 23597u) % vec3<u32>(32u)))), _wgslsmith_sub_vec4_i32(vec4<i32>(-25659i, ~17949i, -global3[_wgslsmith_index_u32(u_input.b.x, 7u)], global1.a), max(-vec4<i32>(global1.a, u_input.a, -1i, global2[_wgslsmith_index_u32(4294967295u, 18u)]), vec4<i32>(16025i, 16634i, 2147483647i, global2[_wgslsmith_index_u32(u_input.b.x, 18u)]))), u_input.b.x, false).x, select(-firstTrailingBit(vec2<i32>(global3[_wgslsmith_index_u32(4294967295u, 7u)], u_input.a)) << (reverseBits(vec2<u32>(29529u, 47703u)) % vec2<u32>(32u)), vec2<i32>(1i, 0i ^ global3[_wgslsmith_index_u32(u_input.b.x, 7u)]) & _wgslsmith_mod_vec2_i32(-global0[_wgslsmith_index_u32(1u, 17u)], vec2<i32>(27758i, 42548i)), true), func_2(u_input.b.x));
    return 592f;
}

fn func_7(arg_0: vec4<f32>, arg_1: vec3<u32>, arg_2: Struct_2, arg_3: bool) -> Struct_1 {
    var var_0 = _wgslsmith_mod_i32(u_input.a, _wgslsmith_dot_vec4_i32(select(_wgslsmith_mod_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(13548i, 2147483647i, global2[_wgslsmith_index_u32(0u, 18u)], global2[_wgslsmith_index_u32(u_input.b.x, 18u)]), vec4<i32>(47589i, -23008i, -41623i, -2147483647i)), vec4<i32>(0i, 0i, u_input.a, global2[_wgslsmith_index_u32(1u, 18u)])), _wgslsmith_mod_vec4_i32(-vec4<i32>(global2[_wgslsmith_index_u32(0u, 18u)], arg_2.a.x, -24255i, global2[_wgslsmith_index_u32(17905u, 18u)]), select(vec4<i32>(-1i, global2[_wgslsmith_index_u32(43113u, 18u)], 7836i, global1.a), vec4<i32>(u_input.a, global1.a, 2147483647i, -14456i), vec4<bool>(arg_3, true, true, false))), false), min(-max(vec4<i32>(u_input.a, 28149i, global1.a, arg_2.a.x), vec4<i32>(u_input.a, 58298i, 0i, arg_2.a.x)), vec4<i32>(global1.a, _wgslsmith_sub_i32(-1i, arg_2.a.x), _wgslsmith_mod_i32(45524i, u_input.a), _wgslsmith_sub_i32(global1.a, -2147483647i)))));
    var var_1 = -40936i;
    global0 = array<vec2<i32>, 17>();
    var var_2 = !(!arg_2.b.a);
    global2 = array<i32, 18>();
    return arg_2.b;
}

fn func_8(arg_0: Struct_1) -> vec3<i32> {
    let var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(global1.c.x + -1026f), global1.c.x) * vec2<f32>(global1.c.x, _wgslsmith_div_f32(-537f, arg_0.b)));
    var var_1 = 40842i;
    var_1 = global1.a;
    global1 = Struct_5((-41304i << (~(62147u >> (u_input.b.x % 32u)) % 32u)) | (select(i32(-1i) * -27263i, u_input.a, func_2(arg_0.c.x).a.x) | _wgslsmith_div_i32(global2[_wgslsmith_index_u32(12991u, 18u)], _wgslsmith_div_i32(global3[_wgslsmith_index_u32(50724u, 7u)], global1.a))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(arg_0.b, _wgslsmith_f_op_f32(round(-1069f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_0.b))))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, arg_0.b, global1.b.x)))))));
    global0 = array<vec2<i32>, 17>();
    return -_wgslsmith_add_vec3_i32(_wgslsmith_mult_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(global1.a, global2[_wgslsmith_index_u32(4294967295u, 18u)], 7926i), vec3<i32>(u_input.a, global3[_wgslsmith_index_u32(arg_0.d.x, 7u)], global1.a)), -vec3<i32>(-1i, global3[_wgslsmith_index_u32(arg_0.d.x, 7u)], u_input.a)) << (arg_0.c.zwx % vec3<u32>(32u)), countOneBits(~(~vec3<i32>(0i, -361i, u_input.a))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<u32>(~(~39440u), select(~(~(~26518u)), ~_wgslsmith_div_u32(u_input.b.x, 27424u), ((u_input.b.x >> (4294967295u % 32u)) <= ~u_input.b.x) && select(true, true, true)), abs(0u));
    var var_1 = func_8(func_7(vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global1.c.x * global1.c.x))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, global1.c.x)), 1619f, global1.c.x), max(abs(~vec3<u32>(var_0.x, 0u, 4294967295u)), _wgslsmith_div_vec3_u32(vec3<u32>(var_0.x, 34511u, 4294967295u), ~vec3<u32>(var_0.x, var_0.x, u_input.b.x))), Struct_2(vec3<i32>(~u_input.a, firstTrailingBit(-2147483647i), ~(-22912i)), Struct_1(vec2<bool>(true, true), _wgslsmith_f_op_f32(func_1(vec3<bool>(true, true, false))), ~vec4<u32>(u_input.b.x, 38401u, 30411u, 10095u), firstTrailingBit(vec3<u32>(45278u, 0u, 4294967295u)))), !(true || (global1.c.x != global1.c.x))));
    let var_2 = vec4<bool>(func_7(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1088f, global1.c.x, 129f, global1.c.x) + vec4<f32>(global1.b.x, global1.c.x, 279f, global1.b.x))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.b.x, 709f, global1.c.x, -1323f)))), reverseBits(~(~vec3<u32>(24225u, u_input.b.x, var_0.x))), Struct_2(-func_8(Struct_1(vec2<bool>(true, true), global1.b.x, vec4<u32>(var_0.x, 69374u, u_input.b.x, 1u), vec3<u32>(1u, 0u, 7406u))), func_2(abs(var_0.x))), true).a.x, true & all(vec4<bool>(true, true, true, true)), any(vec3<bool>(select(false, true, false) || true, true, true)), false);
    let var_3 = any(!select(select(select(vec4<bool>(false, var_2.x, true, var_2.x), var_2, var_2.x), select(var_2, var_2, var_2), var_2.x), select(vec4<bool>(false, var_2.x, false, false), vec4<bool>(var_2.x, var_2.x, var_2.x, var_2.x), var_2), all(var_2.xy)));
    let var_4 = !any(var_2.xy);
    global1 = func_6(Struct_3(select(abs(-30616i), -(~(-22966i)), false), var_1.yy, func_2(abs(~var_0.x))));
    let var_5 = func_7(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(203f, global1.b.x, _wgslsmith_f_op_f32(exp2(global1.c.x)), _wgslsmith_f_op_f32(-729f - -615f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-692f, global1.c.x, -310f, -178f)))))), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b.x, 9280u | func_7(vec4<f32>(global1.c.x, global1.b.x, global1.b.x, global1.b.x), vec3<u32>(u_input.b.x, 57878u, 6575u), Struct_2(vec3<i32>(-2147483647i, -1i, 1i), Struct_1(vec2<bool>(var_2.x, false), global1.b.x, vec4<u32>(15884u, 27822u, var_0.x, var_0.x), vec3<u32>(var_0.x, var_0.x, var_0.x))), var_4).c.x, var_0.x), max(vec3<u32>(firstTrailingBit(var_0.x), reverseBits(u_input.b.x), 1u), vec3<u32>(u_input.b.x, 1u, 22650u))), Struct_2(_wgslsmith_sub_vec3_i32(_wgslsmith_sub_vec3_i32(firstTrailingBit(vec3<i32>(35309i, global1.a, -1i)), _wgslsmith_add_vec3_i32(vec3<i32>(335i, -8764i, 2147483647i), vec3<i32>(u_input.a, var_1.x, 2147483647i))), vec3<i32>(global1.a, _wgslsmith_mod_i32(u_input.a, 33432i), _wgslsmith_div_i32(1i, var_1.x))), Struct_1(vec2<bool>(true, any(vec4<bool>(true, true, var_2.x, var_3))), global1.b.x, vec4<u32>(u_input.b.x, ~50417u, 1u, func_7(vec4<f32>(global1.b.x, global1.b.x, global1.c.x, global1.b.x), vec3<u32>(u_input.b.x, 1u, u_input.b.x), Struct_2(vec3<i32>(global3[_wgslsmith_index_u32(u_input.b.x, 7u)], global1.a, -19752i), Struct_1(var_2.wx, global1.b.x, vec4<u32>(u_input.b.x, var_0.x, var_0.x, var_0.x), vec3<u32>(u_input.b.x, 0u, var_0.x))), var_4).c.x), max(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.b.x, var_0.x, 4294967295u), vec3<u32>(var_0.x, u_input.b.x, 1821u)), ~vec3<u32>(var_0.x, 54930u, 78240u)))), true).a.x;
    let var_6 = Struct_2(vec3<i32>(-_wgslsmith_mult_i32(5444i, _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, global3[_wgslsmith_index_u32(u_input.b.x, 7u)], 0i), vec3<i32>(var_1.x, -1i, -30810i))), _wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(func_8(Struct_1(var_2.xz, 779f, vec4<u32>(1u, var_0.x, var_0.x, u_input.b.x), vec3<u32>(4294967295u, 0u, var_0.x))).xz, -global0[_wgslsmith_index_u32(76443u, 17u)]), 22247i), global3[_wgslsmith_index_u32(4294967295u, 7u)]), func_2(1788u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(1097f, _wgslsmith_f_op_f32(1000f - 962f)))))), _wgslsmith_mult_vec3_u32(~vec3<u32>(1u, func_7(vec4<f32>(var_6.b.b, 2214f, global1.b.x, 1000f), var_6.b.d, Struct_2(vec3<i32>(12710i, 1i, u_input.a), Struct_1(var_2.xx, -876f, vec4<u32>(4294967295u, 4294967295u, 1u, 1u), var_6.b.d)), var_4).c.x, _wgslsmith_add_u32(0u, 4294967295u)), vec3<u32>(firstTrailingBit(~16175u), var_0.x, 1u)), -vec4<i32>(var_1.x, -8446i ^ -global2[_wgslsmith_index_u32(var_0.x, 18u)], global3[_wgslsmith_index_u32(0u << (~4294967295u % 32u), 7u)], u_input.a), 457f);
}


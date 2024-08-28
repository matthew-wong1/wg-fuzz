struct Struct_1 {
    a: vec3<i32>,
    b: vec4<f32>,
    c: vec4<i32>,
    d: i32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
    b: Struct_2,
    c: i32,
    d: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec4<f32>,
    d: u32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: array<i32, 29>;

var<private> global2: vec2<f32> = vec2<f32>(108f, -172f);

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> u32 {
    global1 = array<i32, 29>();
    var var_0 = Struct_3(!(!vec4<bool>(global2.x <= -1362f, true, true, true)), Struct_2(u_input.a, Struct_1(u_input.c, _wgslsmith_f_op_vec4_f32(vec4<f32>(466f, -1006f, global2.x, -514f) - _wgslsmith_f_op_vec4_f32(max(vec4<f32>(453f, global2.x, -1357f, -453f), vec4<f32>(global2.x, global2.x, global2.x, 1950f)))), vec4<i32>(max(1i, u_input.c.x), 1i >> (global0.x % 32u), u_input.c.x, global1[_wgslsmith_index_u32(abs(u_input.b.x), 29u)]), _wgslsmith_mult_i32(~u_input.c.x, _wgslsmith_div_i32(global1[_wgslsmith_index_u32(u_input.b.x, 29u)], 1i)))), firstLeadingBit(_wgslsmith_clamp_i32(-(u_input.c.x & 1i), reverseBits(_wgslsmith_clamp_i32(-14458i, global1[_wgslsmith_index_u32(global0.x, 29u)], global1[_wgslsmith_index_u32(36749u, 29u)])), global1[_wgslsmith_index_u32(27723u, 29u)])), Struct_2(~(~(u_input.a >> (vec3<u32>(u_input.a.x, u_input.b.x, 1u) % vec3<u32>(32u)))), Struct_1(vec3<i32>(-2147483647i, reverseBits(u_input.c.x), u_input.c.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-255f, 1000f, -1155f, 123f), vec4<f32>(global2.x, global2.x, -502f, -205f)))), _wgslsmith_clamp_vec4_i32(-vec4<i32>(1i, global1[_wgslsmith_index_u32(43074u, 29u)], global1[_wgslsmith_index_u32(47041u, 29u)], global1[_wgslsmith_index_u32(global0.x, 29u)]), vec4<i32>(1i, global1[_wgslsmith_index_u32(u_input.a.x, 29u)], -38506i, -12626i), vec4<i32>(global1[_wgslsmith_index_u32(0u, 29u)], 1i, u_input.c.x, -1i)), firstTrailingBit(global1[_wgslsmith_index_u32(global0.x, 29u)]))));
    var var_1 = Struct_4(var_0.d, _wgslsmith_sub_u32(_wgslsmith_mod_u32(u_input.b.x, countOneBits(1u)), _wgslsmith_dot_vec2_u32(~firstTrailingBit(u_input.b), u_input.a.yz)));
    global2 = var_1.a.b.b.wz;
    var_1 = Struct_4(Struct_2(_wgslsmith_mod_vec3_u32(_wgslsmith_add_vec3_u32(var_0.d.a, var_1.a.a), ~firstTrailingBit(var_1.a.a)), Struct_1(u_input.c, vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(f32(-1f) * -489f), _wgslsmith_f_op_f32(f32(-1f) * -902f), _wgslsmith_f_op_f32(f32(-1f) * -1029f)), _wgslsmith_mod_vec4_i32(vec4<i32>(var_0.d.b.d, -1i, var_1.a.b.d, -13247i), ~vec4<i32>(var_0.b.b.a.x, -43105i, -23142i, 0i)), _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, global1[_wgslsmith_index_u32(20736u, 29u)]), var_0.b.b.a.zy))), var_1.b);
    return _wgslsmith_div_u32(0u, var_0.d.a.x);
}

fn func_2(arg_0: f32, arg_1: Struct_1, arg_2: vec3<bool>) -> u32 {
    var var_0 = Struct_2(u_input.a, arg_1);
    let var_1 = ~vec4<u32>(_wgslsmith_clamp_u32(global0.x, var_0.a.x, ~1u) | _wgslsmith_div_u32(0u, 1u), _wgslsmith_div_u32(_wgslsmith_div_u32(~25929u, 57260u), 60549u), 2778u, u_input.a.x);
    var var_2 = Struct_4(Struct_2(vec3<u32>(select(global0.x, var_0.a.x, arg_2.x), abs(u_input.a.x), abs(4294967295u)) | vec3<u32>(var_1.x >> (global0.x % 32u), _wgslsmith_mod_u32(71441u, 1u), 4294967295u), Struct_1(var_0.b.c.yzz, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_1.b), var_0.b.b), _wgslsmith_div_vec4_i32(min(vec4<i32>(-1i, global1[_wgslsmith_index_u32(var_1.x, 29u)], 1i, arg_1.a.x), vec4<i32>(-37706i, 1i, -1i, -2147483647i)), ~vec4<i32>(arg_1.c.x, global1[_wgslsmith_index_u32(var_1.x, 29u)], 1i, u_input.c.x)), _wgslsmith_sub_i32(arg_1.c.x >> (4294967295u % 32u), i32(-1i) * -4847i))), var_1.x);
    let var_3 = var_1.zw;
    global2 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b.b.x + 1000f)), _wgslsmith_f_op_f32(629f + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(520f, _wgslsmith_f_op_f32(f32(-1f) * -533f), true))))));
    return _wgslsmith_clamp_u32(_wgslsmith_mod_u32(select(0u, ~_wgslsmith_add_u32(var_3.x, var_0.a.x), true), max(func_3(), var_0.a.x)), 32519u ^ _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_mult_u32(var_0.a.x, 4294967295u), 31371u, ~var_0.a.x), ~var_2.a.a), max(~var_0.a.x, ~(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.a.x, var_2.b, 44414u, var_2.a.a.x), var_1) | var_3.x)));
}

fn func_1(arg_0: Struct_3, arg_1: i32) -> Struct_4 {
    var var_0 = arg_1;
    var var_1 = arg_0.d.a.yy;
    global1 = array<i32, 29>();
    global2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -482f), _wgslsmith_f_op_f32(min(arg_0.b.b.b.x, 1000f))), arg_0.d.b.b.wz)));
    var var_2 = arg_0.d;
    return Struct_4(arg_0.b, _wgslsmith_mult_u32(_wgslsmith_mod_u32(select(0u, global0.x, true), 0u) << (arg_0.b.a.x % 32u), (1u ^ _wgslsmith_sub_u32(u_input.a.x, 31079u)) & ~func_2(799f, arg_0.d.b, vec3<bool>(false, arg_0.a.x, false))));
}

fn func_4(arg_0: Struct_4) -> Struct_1 {
    let var_0 = 1065f;
    var var_1 = func_1(Struct_3(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false), true), true), arg_0.a, _wgslsmith_div_i32(~(arg_0.a.b.c.x ^ u_input.c.x), u_input.c.x & ~u_input.c.x), Struct_2(~vec3<u32>(global0.x, global0.x, global0.x), arg_0.a.b)), _wgslsmith_mod_i32(-_wgslsmith_mult_i32(u_input.c.x & 0i, global1[_wgslsmith_index_u32(abs(4294967295u), 29u)]), _wgslsmith_mult_i32(reverseBits(arg_0.a.b.d), 0i))).a.b;
    global2 = arg_0.a.b.b.yx;
    let var_2 = func_1(Struct_3(vec4<bool>(select(false, any(vec4<bool>(true, false, false, true)), true), func_1(Struct_3(vec4<bool>(true, true, true, false), Struct_2(arg_0.a.a, arg_0.a.b), arg_0.a.b.a.x, arg_0.a), -2147483647i).a.b.d < 0i, false, false), func_1(Struct_3(vec4<bool>(true, true, true, true), func_1(Struct_3(vec4<bool>(true, false, true, true), Struct_2(arg_0.a.a, Struct_1(u_input.c, vec4<f32>(716f, 3132f, -2069f, global2.x), vec4<i32>(global1[_wgslsmith_index_u32(u_input.a.x, 29u)], arg_0.a.b.c.x, 0i, arg_0.a.b.d), 0i)), u_input.c.x, arg_0.a), var_1.a.x).a, abs(-88856i), arg_0.a), var_1.d).a, abs(-22925i), func_1(Struct_3(select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, false)), arg_0.a, -global1[_wgslsmith_index_u32(4294967295u, 29u)], arg_0.a), 2147483647i).a), 1i).a;
    global2 = var_2.b.b.yx;
    return Struct_1(u_input.c, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(596f, _wgslsmith_f_op_f32(floor(var_0)), _wgslsmith_f_op_f32(1000f * global2.x), _wgslsmith_f_op_f32(2159f - arg_0.a.b.b.x))), _wgslsmith_f_op_vec4_f32(-var_2.b.b), select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, false), true), vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true)), true))), arg_0.a.b.c, firstTrailingBit(var_1.c.x & _wgslsmith_dot_vec2_i32(vec2<i32>(global1[_wgslsmith_index_u32(33068u, 29u)], 2147483647i), var_1.c.zz)));
}

fn func_5(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: f32, arg_3: vec4<bool>) -> vec4<f32> {
    var var_0 = u_input.a;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1216f));
    var var_2 = vec3<u32>(~(~0u << (_wgslsmith_div_u32(1u, ~u_input.a.x) % 32u)), func_3(), 1u);
    let var_3 = min(0i, _wgslsmith_clamp_i32(select(_wgslsmith_div_i32(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(var_2.yx, var_2.yy), 29u)], global1[_wgslsmith_index_u32(var_0.x << (u_input.b.x % 32u), 29u)]), arg_1.a.x, true), -u_input.c.x, 10405i));
    let var_4 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -436f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_2), -1457f, true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(959f, _wgslsmith_f_op_f32(-arg_1.b.x))) - _wgslsmith_f_op_f32(469f * global2.x))));
    return _wgslsmith_div_vec4_f32(arg_1.b, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(303f, 1276f, 285f, -841f), vec4<f32>(var_1, global2.x, arg_1.b.x, 824f), false)), vec4<f32>(global2.x, arg_1.b.x, -1000f, var_4.x))), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_1, _wgslsmith_f_op_f32(var_4.x * -555f), arg_2, var_4.x), _wgslsmith_f_op_vec4_f32(ceil(arg_1.b))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = countOneBits(vec3<u32>(_wgslsmith_mod_u32(global0.x, 1u), _wgslsmith_dot_vec3_u32(u_input.a, u_input.a), ~(firstLeadingBit(global0.x) ^ abs(485u))));
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(151f)));
    var var_1 = Struct_1(u_input.c, _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(func_5(u_input.b, func_4(func_1(Struct_3(vec4<bool>(true, true, true, false), Struct_2(vec3<u32>(u_input.b.x, 15134u, 4294967295u), Struct_1(u_input.c, vec4<f32>(var_0, global2.x, global2.x, var_0), vec4<i32>(global1[_wgslsmith_index_u32(u_input.b.x, 29u)], global1[_wgslsmith_index_u32(u_input.a.x, 29u)], 45785i, global1[_wgslsmith_index_u32(global0.x, 29u)]), 31973i)), global1[_wgslsmith_index_u32(58872u, 29u)], Struct_2(vec3<u32>(7201u, global0.x, 19632u), Struct_1(vec3<i32>(u_input.c.x, u_input.c.x, u_input.c.x), vec4<f32>(var_0, -158f, 592f, global2.x), vec4<i32>(2147483647i, global1[_wgslsmith_index_u32(u_input.b.x, 29u)], u_input.c.x, 13432i), u_input.c.x))), -30614i)), _wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(ceil(global2.x))), select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true), true))))), -(~_wgslsmith_add_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(global1[_wgslsmith_index_u32(0u, 29u)], -1i, 0i, u_input.c.x), vec4<i32>(u_input.c.x, 2147483647i, u_input.c.x, u_input.c.x)), ~vec4<i32>(61953i, -1i, 2147483647i, global1[_wgslsmith_index_u32(global0.x, 29u)]))), global1[_wgslsmith_index_u32(global0.x & ~(~(~global0.x)), 29u)]);
    let var_2 = func_1(Struct_3(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true), select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, false), false)), true), func_1(Struct_3(select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, false), true), func_1(Struct_3(vec4<bool>(true, false, true, false), Struct_2(u_input.a, Struct_1(var_1.c.xzx, vec4<f32>(var_1.b.x, 1000f, var_0, var_0), var_1.c, global1[_wgslsmith_index_u32(0u, 29u)])), -61192i, Struct_2(vec3<u32>(global0.x, 67412u, global0.x), Struct_1(u_input.c, vec4<f32>(var_0, var_0, 1576f, var_1.b.x), vec4<i32>(var_1.c.x, global1[_wgslsmith_index_u32(global0.x, 29u)], var_1.c.x, u_input.c.x), global1[_wgslsmith_index_u32(4294967295u, 29u)]))), global1[_wgslsmith_index_u32(global0.x, 29u)]).a, 0i, Struct_2(vec3<u32>(53294u, u_input.a.x, global0.x), Struct_1(u_input.c, var_1.b, var_1.c, -1i))), 25379i).a, _wgslsmith_add_i32(u_input.c.x, max(~19904i, min(2147483647i, u_input.c.x))), Struct_2(_wgslsmith_clamp_vec3_u32(vec3<u32>(global0.x, u_input.a.x, global0.x), vec3<u32>(82690u, 2282u, 0u), u_input.a) >> (vec3<u32>(global0.x, 0u, 1u) % vec3<u32>(32u)), Struct_1(abs(vec3<i32>(u_input.c.x, 0i, u_input.c.x)), _wgslsmith_f_op_vec4_f32(func_5(vec2<u32>(4294967295u, global0.x), Struct_1(var_1.c.ywz, vec4<f32>(103f, var_1.b.x, var_1.b.x, -758f), var_1.c, global1[_wgslsmith_index_u32(global0.x, 29u)]), var_1.b.x, vec4<bool>(true, false, true, true))), _wgslsmith_div_vec4_i32(var_1.c, vec4<i32>(-2147483647i, -74969i, 1i, u_input.c.x)), _wgslsmith_dot_vec4_i32(vec4<i32>(18385i, global1[_wgslsmith_index_u32(u_input.b.x, 29u)], 1i, var_1.c.x), var_1.c)))), _wgslsmith_mod_i32(98050i, -1i));
    global0 = ~var_2.a.a;
    var var_3 = Struct_4(Struct_2(var_2.a.a, Struct_1(u_input.c, _wgslsmith_f_op_vec4_f32(func_1(Struct_3(vec4<bool>(false, false, false, false), var_2.a, var_1.c.x, var_2.a), global1[_wgslsmith_index_u32(1u, 29u)]).a.b.b + _wgslsmith_f_op_vec4_f32(-var_1.b)), _wgslsmith_sub_vec4_i32(func_4(var_2).c, var_1.c), 1i)), ~_wgslsmith_mult_u32(var_2.a.a.x, ~var_2.b));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(var_3.a.b.b.x, global2.x))), _wgslsmith_f_op_f32(263f - -234f), vec4<f32>(global2.x, 160f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-708f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.a.b.b.x)))), _wgslsmith_dot_vec3_u32(var_3.a.a, var_2.a.a) ^ var_2.a.a.x, firstLeadingBit(~(~var_3.a.a)));
}


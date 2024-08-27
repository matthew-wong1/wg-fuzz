struct Struct_1 {
    a: u32,
    b: bool,
    c: vec2<bool>,
    d: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: i32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 6> = array<vec2<i32>, 6>(vec2<i32>(-26285i, i32(-2147483648)), vec2<i32>(24207i, 2147483647i), vec2<i32>(-75470i, 2147483647i), vec2<i32>(21213i, i32(-2147483648)), vec2<i32>(-22152i, 1i), vec2<i32>(0i, 0i));

var<private> global1: array<vec3<bool>, 9>;

var<private> global2: vec4<u32>;

var<private> global3: f32 = 1292f;

var<private> global4: Struct_2 = Struct_2(Struct_1(0u, false, vec2<bool>(true, false), vec2<i32>(0i, i32(-2147483648))), 12209u, vec3<u32>(29328u, 0u, 86541u));

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3(arg_0: vec2<bool>, arg_1: i32, arg_2: i32, arg_3: f32) -> u32 {
    let var_0 = Struct_1(u_input.a, !(arg_0.x & !(false | arg_0.x)), !select(arg_0, vec2<bool>(any(vec4<bool>(global4.a.c.x, false, global4.a.c.x, true)), false), global4.a.b), _wgslsmith_mod_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(-arg_2, ~19882i), _wgslsmith_add_vec2_i32(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(4294967295u, 33641u), 6u)], global0[_wgslsmith_index_u32(28840u, 6u)] | global4.a.d)), select(global4.a.d, vec2<i32>(6990i, i32(-1i) * -1i), arg_0.x && false)));
    global4 = Struct_2(Struct_1(~(~_wgslsmith_clamp_u32(4294967295u, u_input.a, 8770u)), arg_3 >= 1000f, global4.a.c, global4.a.d), min(~_wgslsmith_dot_vec3_u32(~vec3<u32>(11524u, 4294967295u, 69964u), global4.c), 31618u), global2.ywx);
    var var_1 = var_0;
    global4 = Struct_2(var_0, u_input.a, vec3<u32>(_wgslsmith_sub_u32(u_input.c, 1u), abs(_wgslsmith_clamp_u32(countOneBits(112998u), reverseBits(u_input.a), ~1u)), 7416u));
    var_1 = var_0;
    return 1u;
}

fn func_2() -> Struct_1 {
    let var_0 = vec3<f32>(-957f, _wgslsmith_f_op_f32(-590f - -1857f), _wgslsmith_f_op_f32(f32(-1f) * -1389f));
    let var_1 = _wgslsmith_sub_vec2_i32(vec2<i32>(-1i) * -_wgslsmith_mod_vec2_i32(vec2<i32>(8890i, 11144i), max(vec2<i32>(global4.a.d.x, -18125i), vec2<i32>(global4.a.d.x, global4.a.d.x))), global0[_wgslsmith_index_u32(global2.x | 5665u, 6u)]);
    var var_2 = Struct_2(Struct_1(4294967295u, u_input.b.x > 5921u, select(!global4.a.c, vec2<bool>(global4.a.b, global4.a.c.x && global4.a.b), !select(vec2<bool>(true, global4.a.b), global4.a.c, global4.a.c)), vec2<i32>(_wgslsmith_add_i32(global4.a.d.x, global4.a.d.x), -(~var_1.x))), ~func_3(vec2<bool>(true | global4.a.c.x, global4.a.c.x && false), global4.a.d.x << (0u % 32u), global4.a.d.x, 1000f), reverseBits(global2.zxx));
    var_2 = Struct_2(Struct_1(~4294967295u & min(~u_input.c, _wgslsmith_mod_u32(0u, global2.x)), !all(vec3<bool>(global4.a.c.x, true, true)), !select(vec2<bool>(true, true), !global4.a.c, true), -var_1), u_input.c, vec3<u32>(4294967295u, global4.a.a, ~firstTrailingBit(_wgslsmith_clamp_u32(4294967295u, 0u, 4294967295u))));
    var var_3 = _wgslsmith_f_op_f32(max(-1367f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(-470f)), -2368f))));
    return var_2.a;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> Struct_2 {
    global2 = firstTrailingBit(vec4<u32>(16749u, 4294967295u, ~u_input.b.x, reverseBits(arg_0.a << (_wgslsmith_dot_vec2_u32(vec2<u32>(arg_2.a, 26612u), global2.zw) % 32u))));
    let var_0 = arg_1;
    global1 = array<vec3<bool>, 9>();
    let var_1 = Struct_2(func_2(), 0u, global2.wzy >> (vec3<u32>(_wgslsmith_dot_vec3_u32(global2.yzz, vec3<u32>(4294967295u, arg_0.a, 65835u)), 27079u, arg_0.a) % vec3<u32>(32u)));
    global2 = _wgslsmith_clamp_vec4_u32(~(~vec4<u32>(1u, 1u, 0u, 1u)), _wgslsmith_mod_vec4_u32(~_wgslsmith_sub_vec4_u32(~vec4<u32>(var_0.a, 1u, var_0.a, arg_0.a), select(vec4<u32>(19848u, u_input.c, 1u, 1u), vec4<u32>(50266u, 1u, u_input.c, 37355u), vec4<bool>(var_0.c.x, false, true, arg_2.b))), ~vec4<u32>(global4.a.a, 4294967295u, var_1.b, arg_1.a) ^ ~(vec4<u32>(35804u, 0u, arg_2.a, 0u) << (vec4<u32>(115u, global4.a.a, 15509u, var_0.a) % vec4<u32>(32u)))), ~_wgslsmith_mult_vec4_u32(~min(vec4<u32>(0u, arg_2.a, global4.a.a, u_input.a), vec4<u32>(global2.x, 0u, global4.b, arg_0.a)), max(vec4<u32>(4294967295u, 71379u, 1u, 27489u) & vec4<u32>(19426u, 0u, u_input.a, 37741u), ~vec4<u32>(0u, var_1.b, 4294967295u, 1u))));
    return Struct_2(func_2(), ~77861u, reverseBits(var_1.c) & ~((vec3<u32>(57223u, 42373u, u_input.a) | vec3<u32>(var_1.c.x, var_1.b, 105893u)) << (~global4.c % vec3<u32>(32u))));
}

fn func_5(arg_0: vec2<u32>, arg_1: Struct_2, arg_2: vec3<u32>) -> vec2<i32> {
    var var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1091f + 1777f) + _wgslsmith_f_op_f32(101f * -1023f))), 1087f));
    global2 = vec4<u32>(_wgslsmith_mult_u32(global2.x, _wgslsmith_dot_vec4_u32(vec4<u32>(~global4.a.a, 4294967295u, _wgslsmith_div_u32(arg_1.c.x, arg_2.x), ~4294967295u), _wgslsmith_div_vec4_u32(~vec4<u32>(arg_1.c.x, global2.x, arg_0.x, arg_0.x), vec4<u32>(arg_1.c.x, arg_0.x, arg_2.x, 31663u)))), ~(~_wgslsmith_clamp_u32(~arg_2.x, arg_0.x, 4294967295u)), min(arg_0.x, global2.x), arg_0.x);
    var var_1 = max(vec4<i32>(global4.a.d.x | -27335i, global4.a.d.x, global4.a.d.x, _wgslsmith_sub_i32(global4.a.d.x, -15950i)), vec4<i32>(i32(-1i) * -8828i, global4.a.d.x, arg_1.a.d.x, _wgslsmith_mod_i32(31141i, _wgslsmith_dot_vec4_i32(-vec4<i32>(arg_1.a.d.x, arg_1.a.d.x, -5755i, global4.a.d.x), ~vec4<i32>(global4.a.d.x, global4.a.d.x, -48005i, global4.a.d.x)))));
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(288f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(1733f))))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1333f))));
    var var_3 = 4294967295u;
    return -func_4(func_4(arg_1.a, global4.a, arg_1.a).a, func_2(), func_4(global4.a, func_2(), func_4(global4.a, global4.a, global4.a).a).a).a.d;
}

fn func_1(arg_0: Struct_1) -> Struct_2 {
    let var_0 = Struct_2(Struct_1(abs(global2.x), any(select(vec2<bool>(global4.a.c.x, false), !vec2<bool>(arg_0.b, global4.a.b), true)), vec2<bool>(any(vec3<bool>(false, true, arg_0.c.x)) | false, (1u << (global4.b % 32u)) <= u_input.c), func_5(_wgslsmith_add_vec2_u32(_wgslsmith_clamp_vec2_u32(global4.c.zx, vec2<u32>(4294967295u, u_input.b.x), vec2<u32>(129603u, u_input.a)), vec2<u32>(1622u, 47683u)), func_4(func_2(), func_2(), func_2()), vec3<u32>(abs(1u), global4.b, abs(global2.x)))), _wgslsmith_dot_vec2_u32(abs(_wgslsmith_mult_vec2_u32(global4.c.yy, ~vec2<u32>(u_input.b.x, 1144u))), reverseBits(_wgslsmith_clamp_vec2_u32(u_input.b, vec2<u32>(4294967295u, 4294967295u), u_input.b)) << (vec2<u32>(reverseBits(0u), ~u_input.a) % vec2<u32>(32u))), ~(~(~vec3<u32>(6163u, global2.x, global4.b))));
    let var_1 = (-vec4<i32>(1i, ~(-1i), 1502i, _wgslsmith_sub_i32(2147483647i, var_0.a.d.x)) | -(~(-vec4<i32>(global4.a.d.x, 0i, -2147483647i, var_0.a.d.x)))) | vec4<i32>(var_0.a.d.x, global4.a.d.x, _wgslsmith_div_i32(arg_0.d.x | global4.a.d.x, _wgslsmith_mod_i32(-1i, _wgslsmith_div_i32(var_0.a.d.x, arg_0.d.x))), ~(_wgslsmith_add_i32(global4.a.d.x, var_0.a.d.x) & -6688i));
    global4 = Struct_2(Struct_1(_wgslsmith_dot_vec2_u32(~u_input.b ^ vec2<u32>(var_0.c.x, var_0.b), vec2<u32>(0u, 9939u)), select(var_0.a.d.x != -1i, global4.c.x == 1u, func_2().c.x), arg_0.c, vec2<i32>(-var_0.a.d.x << (~u_input.c % 32u), var_1.x)), ~25892u, vec3<u32>(reverseBits(abs(global2.x)), ~arg_0.a, 115u) & ~abs(select(vec3<u32>(u_input.a, u_input.c, 1u), var_0.c, arg_0.b)));
    global2 = ~select(vec4<u32>(~1u, 34732u, firstTrailingBit(min(global4.a.a, u_input.a)), arg_0.a), ~(~vec4<u32>(12808u, 4294967295u, 4294967295u, u_input.a)) >> (~(vec4<u32>(1u, global4.b, 58563u, 4294967295u) >> (vec4<u32>(4294967295u, global4.c.x, u_input.b.x, global4.c.x) % vec4<u32>(32u))) % vec4<u32>(32u)), all(!select(vec4<bool>(var_0.a.c.x, var_0.a.b, arg_0.b, global4.a.b), vec4<bool>(false, false, false, true), vec4<bool>(global4.a.b, global4.a.c.x, global4.a.b, arg_0.c.x))));
    global2 = ~_wgslsmith_add_vec4_u32(~vec4<u32>(1u, var_0.a.a, u_input.b.x, 4294967295u), _wgslsmith_clamp_vec4_u32(vec4<u32>(65640u, 71719u, global4.b, 0u), vec4<u32>(var_0.c.x, u_input.c, 4294967295u, u_input.a) & vec4<u32>(u_input.c, global4.a.a, 26881u, u_input.b.x), max(vec4<u32>(global4.a.a, global4.c.x, arg_0.a, 37432u), vec4<u32>(61082u, var_0.b, 42671u, 33361u)))) << (vec4<u32>(~var_0.c.x, 4294967295u, 58421u, ~(~(global2.x << (arg_0.a % 32u)))) % vec4<u32>(32u));
    return var_0;
}

fn func_6(arg_0: Struct_2, arg_1: bool, arg_2: vec3<f32>, arg_3: vec3<i32>) -> Struct_1 {
    let var_0 = func_4(func_1(func_1(Struct_1(u_input.a & 11419u, global4.a.b, vec2<bool>(false, global4.a.b), func_2().d)).a).a, global4.a, arg_0.a).a;
    global1 = array<vec3<bool>, 9>();
    let var_1 = abs(arg_0.c.zx);
    global4 = arg_0;
    var var_2 = func_1(arg_0.a);
    return func_4(arg_0.a, global4.a, func_4(func_1(Struct_1(global4.c.x, true, var_2.a.c, ~vec2<i32>(1i, arg_0.a.d.x))).a, Struct_1(1u, true && global4.a.c.x, !vec2<bool>(arg_1, var_2.a.c.x), arg_0.a.d), arg_0.a).a).a;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec3<bool>, 9>();
    var var_0 = Struct_2(global4.a, 946u, ~vec3<u32>(~1u, 4294967295u, u_input.a));
    let var_1 = func_6(func_1(var_0.a), all(global1[_wgslsmith_index_u32(0u, 9u)]), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1307f, 3449f, 1019f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-322f, 874f, 466f) - vec3<f32>(-1039f, -1085f, 1903f))) + _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 411f, -145f)))))), -(~_wgslsmith_div_vec3_i32(vec3<i32>(16817i, -13578i, -40545i), vec3<i32>(global4.a.d.x, -24839i, global4.a.d.x))) ^ vec3<i32>(global4.a.d.x, _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 60746i, 1i, 2147483647i) & vec4<i32>(-1i, global4.a.d.x, -10100i, global4.a.d.x), _wgslsmith_div_vec4_i32(vec4<i32>(-63527i, global4.a.d.x, var_0.a.d.x, -2147483647i), vec4<i32>(global4.a.d.x, global4.a.d.x, global4.a.d.x, global4.a.d.x))), _wgslsmith_div_i32(1i, -var_0.a.d.x)));
    let x = u_input.a;
    s_output = StorageBuffer(global0[_wgslsmith_index_u32(var_1.a, 6u)], 3935u, var_1.d.x, _wgslsmith_mod_vec4_i32(vec4<i32>(-reverseBits(global4.a.d.x), _wgslsmith_add_i32(-28252i, min(var_1.d.x, -41367i)), -36361i, var_1.d.x), -_wgslsmith_add_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(var_0.a.d.x, var_1.d.x, -550i, var_0.a.d.x), vec4<i32>(2147483647i, var_0.a.d.x, -15105i, var_1.d.x)), min(vec4<i32>(var_0.a.d.x, 24353i, 2147483647i, 2147483647i), vec4<i32>(1i, 0i, 9106i, -1i)))));
}


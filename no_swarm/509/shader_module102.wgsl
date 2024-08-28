struct Struct_1 {
    a: vec2<i32>,
    b: vec2<u32>,
    c: vec2<f32>,
    d: u32,
    e: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec3<u32>,
    d: vec2<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: array<f32, 15> = array<f32, 15>(672f, -1074f, 844f, -1717f, -757f, -1580f, -302f, -197f, -687f, 573f, -737f, -142f, -1498f, 1497f, 708f);

var<private> global2: array<vec4<bool>, 20>;

var<private> global3: array<vec2<bool>, 15>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_1(arg_0: bool, arg_1: bool, arg_2: bool, arg_3: vec4<bool>) -> vec3<u32> {
    global2 = array<vec4<bool>, 20>();
    global2 = array<vec4<bool>, 20>();
    var var_0 = u_input.b.x;
    let var_1 = true;
    global1 = array<f32, 15>();
    return _wgslsmith_sub_vec3_u32(~(~reverseBits(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.e, 4294967295u, u_input.e), vec3<u32>(u_input.d.x, 74471u, u_input.b.x)))), u_input.c);
}

fn func_3() -> vec4<i32> {
    global2 = array<vec4<bool>, 20>();
    var var_0 = Struct_1(firstTrailingBit(_wgslsmith_add_vec2_i32(_wgslsmith_clamp_vec2_i32(abs(vec2<i32>(2147483647i, 42078i)), _wgslsmith_div_vec2_i32(vec2<i32>(-14148i, -2147483647i), vec2<i32>(-23722i, 23548i)), -vec2<i32>(1i, -32261i)), _wgslsmith_clamp_vec2_i32(vec2<i32>(40691i, 1i), vec2<i32>(-11889i, -47825i), vec2<i32>(0i, 2147483647i)) ^ -vec2<i32>(24592i, 1i))), abs(select(~u_input.b.wy, _wgslsmith_mod_vec2_u32(vec2<u32>(0u, 32584u), u_input.d), vec2<bool>(true, !global0.x))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global1[_wgslsmith_index_u32(71143u, 15u)], global1[_wgslsmith_index_u32(0u, 15u)]) * vec2<f32>(global1[_wgslsmith_index_u32(u_input.c.x, 15u)], 1000f))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-1350f, global1[_wgslsmith_index_u32(u_input.e, 15u)]) * _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(global1[_wgslsmith_index_u32(0u, 15u)], 1238f))))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(select(global1[_wgslsmith_index_u32(u_input.c.x, 15u)], global1[_wgslsmith_index_u32(0u, 15u)], true)), _wgslsmith_f_op_f32(f32(-1f) * -435f)) + _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(276f, -387f))), _wgslsmith_div_vec2_f32(vec2<f32>(-1961f, -245f), vec2<f32>(640f, -285f)))))), _wgslsmith_dot_vec4_u32(firstTrailingBit(~(u_input.b ^ u_input.b)), ~(~_wgslsmith_mod_vec4_u32(u_input.b, u_input.b))), u_input.c);
    var var_1 = Struct_1(var_0.a, _wgslsmith_clamp_vec2_u32(var_0.e.yx, vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 4294967295u), _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.c.x, 0u), u_input.c.xy, vec2<u32>(u_input.d.x, var_0.b.x))), _wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(var_0.b.x, var_0.b.x, 1u)), u_input.b.wxz ^ vec3<u32>(4294967295u, var_0.d, 4294967295u))), _wgslsmith_sub_vec2_u32(var_0.e.xy, ~_wgslsmith_mult_vec2_u32(var_0.e.xy, u_input.d))), vec2<f32>(var_0.c.x, -1000f), var_0.e.x, ~vec3<u32>(_wgslsmith_add_u32(_wgslsmith_sub_u32(var_0.b.x, var_0.d), max(4294967295u, var_0.e.x)), 4294967295u, ~u_input.b.x));
    let var_2 = Struct_1(vec2<i32>(~_wgslsmith_dot_vec4_i32(vec4<i32>(0i, -1i, 2147483647i, 2147483647i), vec4<i32>(var_1.a.x, var_0.a.x, 2147483647i, var_1.a.x)), _wgslsmith_dot_vec2_i32(var_1.a << (~u_input.d % vec2<u32>(32u)), _wgslsmith_div_vec2_i32(~var_1.a, var_0.a))), ~(~(~(~var_1.b))), var_0.c, var_1.b.x, ~vec3<u32>(u_input.c.x, max(0u & var_1.b.x, ~1u), ~var_1.b.x));
    let var_3 = _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(~(~select(4294967295u, 23420u, global0.x)), 15u)]) == _wgslsmith_f_op_f32(var_0.c.x + var_0.c.x);
    return max(_wgslsmith_div_vec4_i32(vec4<i32>(-11847i, var_2.a.x, ~(~var_0.a.x), 1i), ~abs(vec4<i32>(0i, 17637i, var_1.a.x, 28267i) >> (u_input.b % vec4<u32>(32u)))), ~(vec4<i32>(~var_0.a.x, _wgslsmith_dot_vec2_i32(var_1.a, var_2.a), 29182i, -66848i) >> (~abs(u_input.b) % vec4<u32>(32u))));
}

fn func_2() -> vec3<i32> {
    var var_0 = _wgslsmith_mod_vec4_i32(vec4<i32>(-(~(-1i)), _wgslsmith_sub_i32(2147483647i, _wgslsmith_mod_i32(1i, -2147483647i)), reverseBits(countOneBits(i32(-1i) * -1i)), max(1i, firstLeadingBit(select(8045i, -28727i, global0.x)))), firstTrailingBit(func_3()));
    let var_1 = Struct_1(countOneBits(~vec2<i32>(abs(var_0.x), _wgslsmith_dot_vec2_i32(var_0.ww, var_0.xy))), ~vec2<u32>(~(~1u), _wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(1u, 96187u, u_input.c.x)), abs(vec3<u32>(0u, 1u, 4294967295u)))), vec2<f32>(-1489f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(935f, 492f)))), u_input.b.x, abs(~(~vec3<u32>(0u, 8535u, u_input.e))) >> (vec3<u32>(u_input.b.x, _wgslsmith_clamp_u32(~22634u, select(u_input.a, 9133u, false), 0u), _wgslsmith_dot_vec2_u32(u_input.b.wy, vec2<u32>(65144u, 4294967295u))) % vec3<u32>(32u)));
    var var_2 = _wgslsmith_dot_vec4_u32(u_input.b, reverseBits(vec4<u32>(1u, u_input.e, 22569u, 27937u)));
    var var_3 = Struct_1(_wgslsmith_add_vec2_i32(min(_wgslsmith_div_vec2_i32(vec2<i32>(22083i, 1i), var_0.xx), vec2<i32>(0i, var_0.x)), ~max(vec2<i32>(-1i, var_1.a.x), var_1.a)) >> (u_input.d % vec2<u32>(32u)), var_1.b, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.c.x, -1707f))) + var_1.c), ~_wgslsmith_clamp_u32(u_input.a, 0u, ~_wgslsmith_mod_u32(15909u, 62616u)), _wgslsmith_clamp_vec3_u32(min(_wgslsmith_mult_vec3_u32(vec3<u32>(358u, 4294967295u, u_input.d.x), _wgslsmith_sub_vec3_u32(var_1.e, vec3<u32>(1u, u_input.b.x, 1u))), reverseBits(var_1.e | u_input.b.www)), vec3<u32>(~u_input.a, ~var_1.b.x, ~var_1.b.x) ^ (vec3<u32>(28532u, 1u, u_input.b.x) << ((vec3<u32>(var_1.d, u_input.d.x, u_input.d.x) << (var_1.e % vec3<u32>(32u))) % vec3<u32>(32u))), _wgslsmith_add_vec3_u32(countOneBits(vec3<u32>(86203u, 1u, var_1.e.x)), vec3<u32>(u_input.b.x, var_1.b.x, var_1.b.x) ^ _wgslsmith_mod_vec3_u32(var_1.e, vec3<u32>(var_1.e.x, u_input.e, 46566u)))));
    let var_4 = _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(var_1.e.xy, _wgslsmith_div_vec2_u32(_wgslsmith_sub_vec2_u32(~vec2<u32>(51485u, var_3.e.x), select(vec2<u32>(var_3.e.x, var_3.d), u_input.d, true)), _wgslsmith_sub_vec2_u32(var_3.b, abs(var_1.b)))), var_3.b.x | ~_wgslsmith_dot_vec3_u32(~vec3<u32>(72939u, var_3.d, u_input.b.x), ~vec3<u32>(1u, u_input.d.x, var_3.e.x)));
    return select(_wgslsmith_mult_vec3_i32(-_wgslsmith_add_vec3_i32(_wgslsmith_sub_vec3_i32(var_0.wxx, vec3<i32>(12289i, var_3.a.x, -52881i)), var_0.yxz), var_0.yzz & (vec3<i32>(-1i, var_3.a.x, var_1.a.x) | ~var_0.zzy)), vec3<i32>(var_3.a.x, ~1i, _wgslsmith_sub_i32(var_0.x, var_1.a.x) << ((var_1.e.x << (var_4 % 32u)) % 32u)) & countOneBits(reverseBits(vec3<i32>(-2147483647i, var_0.x, -7217i))), vec3<bool>(false, global0.x, global0.x));
}

fn func_4(arg_0: vec3<i32>) -> Struct_2 {
    global1 = array<f32, 15>();
    global2 = array<vec4<bool>, 20>();
    global2 = array<vec4<bool>, 20>();
    let var_0 = Struct_2(Struct_1(arg_0.zx, u_input.c.xz ^ vec2<u32>(_wgslsmith_dot_vec4_u32(u_input.b, u_input.b), 0u), vec2<f32>(_wgslsmith_f_op_f32(sign(-1802f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(32985u, 15u)] - 915f) * -1782f)), 1u, ~u_input.c), Struct_1(arg_0.xx, u_input.c.yz, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(global1[_wgslsmith_index_u32(6533u, 15u)], global1[_wgslsmith_index_u32(u_input.c.x, 15u)]), vec2<f32>(237f, global1[_wgslsmith_index_u32(u_input.d.x, 15u)])) - _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(197f, global1[_wgslsmith_index_u32(u_input.c.x, 15u)]))))), func_1(all(!global3[_wgslsmith_index_u32(57614u, 15u)]), true, any(global2[_wgslsmith_index_u32(0u, 20u)]), global2[_wgslsmith_index_u32(1u, 20u)]).x, _wgslsmith_mult_vec3_u32(func_1(all(vec3<bool>(true, false, true)), !global0.x, arg_0.x == arg_0.x, vec4<bool>(true, false, true, false)), ~u_input.b.xyx)));
    var var_1 = countOneBits(abs(_wgslsmith_mod_u32(select(reverseBits(var_0.a.b.x), reverseBits(86407u), !global0.x), 23271u)));
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec2<bool>(global0.x, all(!global2[_wgslsmith_index_u32(~11144u, 20u)]));
    var var_0 = Struct_1(firstTrailingBit(vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(24934i, 0i, -10076i, -14512i), vec4<i32>(-48102i, -4155i, 2147483647i, 33799i)), _wgslsmith_dot_vec3_i32(vec3<i32>(-12188i, -36167i, 85607i), vec3<i32>(51109i, 0i, -1i))) ^ ~_wgslsmith_div_vec2_i32(vec2<i32>(6569i, -1715i), vec2<i32>(1i, 36872i))), vec2<u32>(0u, 155584u), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1[_wgslsmith_index_u32(u_input.c.x, 15u)], global1[_wgslsmith_index_u32(u_input.e, 15u)])))), ~4294967295u, _wgslsmith_mult_vec3_u32(select(~u_input.c, _wgslsmith_clamp_vec3_u32(select(u_input.c, vec3<u32>(4294967295u, u_input.d.x, 47229u), global0.x), u_input.c, vec3<u32>(u_input.c.x, 1u, 0u)), !(!vec3<bool>(global0.x, false, true))), max(u_input.b.yww, func_1(global0.x, true, true, !global2[_wgslsmith_index_u32(1u, 20u)]))));
    var var_1 = !global3[_wgslsmith_index_u32(1u, 15u)];
    let var_2 = func_4(-(~vec3<i32>(var_0.a.x, -38545i, -1i) | _wgslsmith_sub_vec3_i32(-vec3<i32>(18300i, var_0.a.x, 1i), func_2())));
    global2 = array<vec4<bool>, 20>();
    let var_3 = true;
    let var_4 = Struct_2(func_4(~vec3<i32>(-52027i, 0i, 0i) ^ ~(-vec3<i32>(15200i, 41600i, var_2.a.a.x))).b, var_2.b);
    let var_5 = func_4(vec3<i32>(firstTrailingBit(firstLeadingBit(-1i)) ^ firstTrailingBit(40942i), ~_wgslsmith_mod_i32(~(-9085i), -2147483647i >> (var_0.d % 32u)), _wgslsmith_mod_i32(var_0.a.x, -firstLeadingBit(var_4.b.a.x))));
    let var_6 = _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(var_5.b.c.x, -793f)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-726f, var_2.a.c.x, _wgslsmith_f_op_f32(trunc(global1[_wgslsmith_index_u32(66870u, 15u)])), -101f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1110f, global1[_wgslsmith_index_u32(4294967295u, 15u)], -1971f, -1013f))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(788f, -825f, -2621f, var_5.a.c.x))))), true)));
}


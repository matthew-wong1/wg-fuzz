struct Struct_1 {
    a: vec3<bool>,
    b: f32,
    c: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: vec4<bool>,
}

struct Struct_3 {
    a: f32,
    b: f32,
}

struct Struct_4 {
    a: f32,
    b: f32,
    c: vec3<bool>,
    d: vec4<i32>,
    e: Struct_1,
}

struct Struct_5 {
    a: Struct_1,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: i32,
    d: vec4<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<f32>,
    c: f32,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 4>;

var<private> global1: array<Struct_2, 5> = array<Struct_2, 5>(Struct_2(Struct_1(vec3<bool>(false, false, true), -1048f, vec2<i32>(0i, 1i)), vec2<i32>(-7786i, 2147483647i), vec4<bool>(false, false, false, true)), Struct_2(Struct_1(vec3<bool>(true, false, false), -1148f, vec2<i32>(19496i, -6156i)), vec2<i32>(-1i, -1i), vec4<bool>(false, true, false, true)), Struct_2(Struct_1(vec3<bool>(true, false, true), -178f, vec2<i32>(1i, 16276i)), vec2<i32>(1044i, 1i), vec4<bool>(false, true, false, false)), Struct_2(Struct_1(vec3<bool>(false, true, false), -157f, vec2<i32>(-26950i, 0i)), vec2<i32>(-13296i, 61606i), vec4<bool>(true, true, false, false)), Struct_2(Struct_1(vec3<bool>(false, true, true), -235f, vec2<i32>(-5156i, 2147483647i)), vec2<i32>(-33676i, -1i), vec4<bool>(false, true, true, false)));

var<private> global2: array<bool, 32>;

var<private> global3: Struct_4;

var<private> global4: i32;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_5, arg_1: Struct_5, arg_2: u32) -> bool {
    var var_0 = true;
    let var_1 = !vec3<bool>(false, all(vec4<bool>(global3.e.a.x, arg_1.a.c.x == -49282i, true, 14700u < arg_1.b.x)), !select(true & arg_0.a.a.x, arg_1.a.a.x, global3.e.a.x));
    var var_2 = true;
    var var_3 = global1[_wgslsmith_index_u32(18632u, 5u)];
    let var_4 = vec3<i32>(_wgslsmith_add_i32(arg_0.a.c.x, _wgslsmith_dot_vec3_i32(global3.d.xxz, -vec3<i32>(arg_1.a.c.x, 54863i, 35456i) >> (~arg_1.b.yxx % vec3<u32>(32u)))), arg_0.a.c.x, ~abs(arg_1.a.c.x));
    return true;
}

fn func_2(arg_0: vec4<i32>, arg_1: vec4<i32>, arg_2: vec2<bool>) -> Struct_4 {
    global1 = array<Struct_2, 5>();
    let var_0 = _wgslsmith_add_i32(~(-arg_0.x), -32289i);
    global0 = array<Struct_3, 4>();
    let var_1 = global1[_wgslsmith_index_u32(u_input.e, 5u)];
    global3 = Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(565f, -893f, true)), _wgslsmith_f_op_f32(abs(var_1.a.b)), func_3(Struct_5(var_1.a, vec4<u32>(u_input.d.x, 33320u, 48342u, u_input.b.x)), Struct_5(Struct_1(var_1.c.xzw, var_1.a.b, vec2<i32>(0i, -10394i)), vec4<u32>(u_input.d.x, 0u, 4294967295u, u_input.e)), 1u))))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-989f, 1178f)) * _wgslsmith_div_f32(var_1.a.b, -1057f)), 274f)), _wgslsmith_f_op_f32(-global3.a), !global3.c, vec4<i32>(~(-9500i), -48521i, 2147483647i, 1i), Struct_1(vec3<bool>(!global2[_wgslsmith_index_u32(1u, 32u)] | false, any(var_1.a.a), false), var_1.a.b, _wgslsmith_mult_vec2_i32(global3.e.c, firstTrailingBit(_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a, 30733i), vec2<i32>(14776i, arg_0.x))))));
    return Struct_4(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-544f + 2325f) * _wgslsmith_f_op_f32(-global3.e.b)) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(-1000f))))))), -722f, select(select(vec3<bool>(true, var_1.a.b != 1786f, func_3(Struct_5(Struct_1(vec3<bool>(global3.c.x, false, true), 1356f, arg_1.ww), u_input.d), Struct_5(Struct_1(vec3<bool>(var_1.a.a.x, false, false), var_1.a.b, vec2<i32>(var_0, arg_0.x)), u_input.d), 23149u)), select(select(global3.c, var_1.c.xxw, arg_2.x), select(global3.e.a, vec3<bool>(false, true, true), global3.c), vec3<bool>(true, arg_2.x, arg_2.x)), select(select(vec3<bool>(true, false, arg_2.x), global3.c, arg_2.x), !var_1.c.xzw, vec3<bool>(true, false, var_1.a.a.x))), vec3<bool>(!(arg_1.x == 47458i), _wgslsmith_f_op_f32(766f * 586f) <= _wgslsmith_f_op_f32(step(global3.e.b, 1752f)), global2[_wgslsmith_index_u32(firstLeadingBit(4294967295u) | _wgslsmith_mult_u32(u_input.b.x, 0u), 32u)]), false), arg_1, Struct_1(!vec3<bool>(true, true, any(global3.c)), _wgslsmith_f_op_f32(global3.a * 1498f), vec2<i32>(arg_0.x, var_0)));
}

fn func_1(arg_0: f32, arg_1: Struct_1) -> u32 {
    let var_0 = Struct_5(arg_1, vec4<u32>(_wgslsmith_sub_u32(~59212u, ~0u >> ((u_input.d.x ^ u_input.b.x) % 32u)), u_input.e, 51321u, 19258u));
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_1.b))), _wgslsmith_f_op_f32(sign(1828f)));
    global3 = func_2(select(select(vec4<i32>(u_input.c, global3.e.c.x, 2147483647i, global3.d.x), global3.d ^ vec4<i32>(var_0.a.c.x, var_0.a.c.x, global3.e.c.x, global3.e.c.x), vec4<bool>(true, global3.c.x, arg_1.a.x, false)) >> (_wgslsmith_mult_vec4_u32(~vec4<u32>(u_input.b.x, 28227u, 60538u, u_input.d.x), var_0.b) % vec4<u32>(32u)), vec4<i32>(-14525i, abs(-1124i), ~u_input.a, u_input.a), vec4<bool>(true, false, true, any(vec3<bool>(arg_1.a.x, true, false)))), firstTrailingBit(global3.d), vec2<bool>(!arg_1.a.x, u_input.c <= abs(u_input.c)));
    let var_2 = vec3<f32>(_wgslsmith_div_f32(-1662f, -766f), _wgslsmith_f_op_f32(select(996f, 1f, true)), _wgslsmith_f_op_f32(global3.e.b + _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(var_0.a.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_0.a.b, var_0.a.b))))));
    let var_3 = 4179i >> (var_0.b.x % 32u);
    return ~var_0.b.x | 1u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mult_vec4_u32(vec4<u32>(1u | ~_wgslsmith_div_u32(u_input.b.x, u_input.b.x), _wgslsmith_clamp_u32(u_input.e, 4294967295u, 15037u) | (u_input.b.x & func_1(392f, Struct_1(vec3<bool>(global2[_wgslsmith_index_u32(34188u, 32u)], false, true), 1000f, global3.e.c))), 1u >> (firstTrailingBit(u_input.e >> (1801u % 32u)) % 32u), u_input.d.x), countOneBits(~u_input.d));
    global1 = array<Struct_2, 5>();
    let var_1 = global3.d;
    global1 = array<Struct_2, 5>();
    global3 = func_2(global3.d, ~vec4<i32>(global3.d.x, min(u_input.c, -2147483647i) << (var_0.x % 32u), -var_1.x, 1i | _wgslsmith_clamp_i32(u_input.a, -2147483647i, 6332i)), !(!global3.e.a.xz));
    global4 = global3.e.c.x;
    let x = u_input.a;
    s_output = StorageBuffer(~firstLeadingBit(_wgslsmith_mult_vec3_u32(u_input.d.wzz, abs(vec3<u32>(u_input.e, u_input.b.x, var_0.x)))), vec4<f32>(_wgslsmith_f_op_f32(-global3.e.b), 807f, _wgslsmith_f_op_f32(-151f - global3.b), global3.a), global3.e.b, _wgslsmith_div_f32(global3.a, 739f), 0u);
}


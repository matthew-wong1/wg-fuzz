struct Struct_1 {
    a: vec3<u32>,
    b: f32,
    c: i32,
    d: i32,
    e: vec3<f32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: vec4<i32>,
}

struct Struct_3 {
    a: vec4<u32>,
    b: vec4<f32>,
    c: Struct_2,
    d: u32,
}

struct Struct_4 {
    a: vec2<u32>,
    b: Struct_3,
    c: vec3<bool>,
}

struct Struct_5 {
    a: i32,
    b: Struct_3,
    c: Struct_4,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: f32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: Struct_2;

var<private> global2: array<bool, 22>;

var<private> global3: array<vec3<u32>, 18>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_4, arg_1: vec3<i32>, arg_2: vec2<f32>) -> bool {
    let var_0 = select(vec2<bool>(any(vec4<bool>(arg_0.c.x, true, !global0.c.a.x, all(global1.a))), global1.a.x), arg_0.c.xy, vec2<bool>(global1.a.x, global2[_wgslsmith_index_u32(23394u, 22u)]));
    var var_1 = Struct_4(global1.b.a.xy, arg_0.b, arg_0.c);
    global1 = var_1.b.c;
    let var_2 = var_1.b.c.a.x || global0.c.a.x;
    var var_3 = 1894f;
    return global0.c.a.x;
}

fn func_2(arg_0: u32, arg_1: f32) -> u32 {
    let var_0 = global0.c.b.a.yx;
    let var_1 = !vec3<bool>(true, func_3(Struct_4(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.b, 78857u), global0.c.b.a.zy), Struct_3(vec4<u32>(var_0.x, 0u, 13120u, global0.d), vec4<f32>(2035f, global1.b.e.x, global1.b.e.x, 273f), Struct_2(vec2<bool>(global2[_wgslsmith_index_u32(4294967295u, 22u)], false), Struct_1(vec3<u32>(1u, 4294967295u, global0.c.b.a.x), 966f, 54469i, -29728i, vec3<f32>(global0.c.b.e.x, 468f, 1563f)), global1.c), var_0.x), !vec3<bool>(global2[_wgslsmith_index_u32(4294967295u, 22u)], false, global1.a.x)), vec3<i32>(-33128i, firstTrailingBit(u_input.a.x), global0.c.b.d), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(432f, arg_1))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1, 377f) + vec2<f32>(-879f, global1.b.e.x)))), !(_wgslsmith_f_op_f32(floor(-290f)) != global0.b.x));
    var var_2 = global0.c.b;
    global0 = Struct_3(_wgslsmith_sub_vec4_u32(abs(vec4<u32>(40698u, var_2.a.x, 0u, u_input.c)) | _wgslsmith_sub_vec4_u32(global0.a, ~vec4<u32>(46498u, u_input.b, 38190u, 54101u)), _wgslsmith_add_vec4_u32(countOneBits(_wgslsmith_add_vec4_u32(global0.a, vec4<u32>(0u, 29927u, 4284u, var_2.a.x))), vec4<u32>(~25033u, var_0.x >> (u_input.c % 32u), 29154u, ~0u))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(global0.b, global0.b, global0.c.a.x))))), Struct_2(!vec2<bool>(true, var_1.x), Struct_1(abs(~global1.b.a), var_2.b, ~2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(14526i, 2147483647i), ~vec2<i32>(-1i, global1.c.x)), _wgslsmith_f_op_vec3_f32(var_2.e * _wgslsmith_f_op_vec3_f32(var_2.e * global1.b.e))), -(vec4<i32>(-12774i, var_2.c, -1i, 0i) ^ vec4<i32>(global0.c.c.x, global1.c.x, var_2.c, 7017i))), ~(~_wgslsmith_dot_vec4_u32(global0.a, ~vec4<u32>(var_0.x, 0u, 86726u, 132u))));
    let var_3 = _wgslsmith_clamp_vec3_i32(-abs(global0.c.c.zww), vec3<i32>(-global1.b.c, _wgslsmith_add_i32(~u_input.a.x, -2147483647i), ~abs(global0.c.c.x)) & global0.c.c.yyz, vec3<i32>(_wgslsmith_clamp_i32(1i, _wgslsmith_dot_vec2_i32(global0.c.c.xz, vec2<i32>(var_2.d, 2147483647i)), ~0i), countOneBits(min(8471i, 51381i << (arg_0 % 32u))), -_wgslsmith_dot_vec2_i32(vec2<i32>(18453i, global0.c.b.c), vec2<i32>(u_input.d, 47014i))));
    return 45913u ^ ~_wgslsmith_div_u32(var_2.a.x, ~19390u);
}

fn func_1(arg_0: vec4<i32>, arg_1: i32, arg_2: vec3<bool>) -> Struct_2 {
    global3 = array<vec3<u32>, 18>();
    let var_0 = min(-global1.b.d, -1i) >> (_wgslsmith_sub_u32(4294967295u, min(func_2(global1.b.a.x, global1.b.e.x) | _wgslsmith_add_u32(u_input.c, u_input.b), _wgslsmith_div_u32(~global0.a.x, ~0u))) % 32u);
    global1 = Struct_2(vec2<bool>(global1.a.x, true), global0.c.b, ~firstTrailingBit(~firstLeadingBit(global1.c)));
    let var_1 = -921f;
    global0 = Struct_3(abs(max(abs(~vec4<u32>(1u, u_input.c, 4294967295u, u_input.b)), ~(~vec4<u32>(global0.c.b.a.x, 40379u, global1.b.a.x, u_input.b)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(global0.b, global0.b, !select(vec4<bool>(arg_2.x, global2[_wgslsmith_index_u32(1u, 22u)], false, true), vec4<bool>(global0.c.a.x, true, global0.c.a.x, global2[_wgslsmith_index_u32(42552u, 22u)]), true))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-210f, -313f, -881f, _wgslsmith_f_op_f32(select(global1.b.e.x, global0.b.x, arg_2.x))) * vec4<f32>(var_1, 516f, _wgslsmith_f_op_f32(global0.c.b.b + -1404f), var_1))), global0.c, _wgslsmith_div_u32(u_input.b, countOneBits(_wgslsmith_div_u32(0u, global0.a.x))));
    return Struct_2(select(vec2<bool>(1i <= arg_1, all(!vec4<bool>(true, false, global0.c.a.x, global2[_wgslsmith_index_u32(42057u, 22u)]))), vec2<bool>(true, global1.a.x), select(!select(vec2<bool>(global2[_wgslsmith_index_u32(1u, 22u)], arg_2.x), global1.a, vec2<bool>(true, true)), vec2<bool>(global0.c.a.x, true), arg_2.yy)), global0.c.b, countOneBits(vec4<i32>(1i, _wgslsmith_dot_vec3_i32(arg_0.xzz | global0.c.c.zzy, u_input.a), global0.c.c.x, global1.c.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<vec3<u32>, 18>();
    global3 = array<vec3<u32>, 18>();
    var var_0 = vec4<u32>(~(~((global0.d & u_input.b) << ((u_input.b >> (global1.b.a.x % 32u)) % 32u))), global1.b.a.x, 24641u, ~global0.c.b.a.x);
    global1 = func_1(_wgslsmith_sub_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(global0.c.b.d, global1.c.x, 20625i, u_input.d), vec4<i32>(u_input.a.x, 0i, global1.b.d, u_input.a.x)) << (abs(global0.a) % vec4<u32>(32u)), global0.c.c) & vec4<i32>(~(~(-4667i)), -17912i, 6715i, select(global1.b.c, u_input.d << (global0.a.x % 32u), false)), reverseBits(i32(-1i) * -abs(1i)), vec3<bool>(false, any(select(!vec3<bool>(true, global1.a.x, false), !vec3<bool>(global1.a.x, false, false), true)), all(!select(vec4<bool>(global2[_wgslsmith_index_u32(global0.d, 22u)], global1.a.x, global0.c.a.x, global2[_wgslsmith_index_u32(u_input.b, 22u)]), vec4<bool>(true, global0.c.a.x, true, false), global2[_wgslsmith_index_u32(global0.a.x, 22u)]))));
    let var_1 = countOneBits(~(-vec4<i32>(~(-23543i), ~global0.c.c.x, _wgslsmith_dot_vec4_i32(vec4<i32>(global1.c.x, global0.c.b.d, 12702i, -5510i), vec4<i32>(global1.c.x, global1.c.x, global1.c.x, global1.c.x)), -25630i)));
    var_0 = vec4<u32>(27348u, 4294967295u, _wgslsmith_sub_u32(global0.c.b.a.x, _wgslsmith_mod_u32(_wgslsmith_clamp_u32(var_0.x, ~global0.c.b.a.x, global1.b.a.x), var_0.x)), ~_wgslsmith_div_u32(global0.d, _wgslsmith_sub_u32(global1.b.a.x, global0.d)));
    let var_2 = ~(~(-(~(-global1.b.d))));
    let var_3 = func_1(vec4<i32>(5091i, _wgslsmith_dot_vec3_i32(-u_input.a, ~vec3<i32>(u_input.d, global0.c.c.x, 10367i)), 2147483647i, ~global0.c.c.x >> (countOneBits(_wgslsmith_clamp_u32(global1.b.a.x, u_input.b, u_input.b)) % 32u)), -8279i, vec3<bool>(false, global0.b.x > global0.b.x, global0.c.a.x && any(!vec4<bool>(global2[_wgslsmith_index_u32(0u, 22u)], false, true, false)))).a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-global0.b.wx), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -645f), _wgslsmith_f_op_f32(-203f - global0.b.x))))), 1799f, -_wgslsmith_mult_vec2_i32(func_1(global1.c, var_2, vec3<bool>(true, var_3.x, true)).c.xx, global0.c.c.zz));
}


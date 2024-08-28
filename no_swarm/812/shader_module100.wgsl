struct Struct_1 {
    a: bool,
    b: bool,
    c: i32,
    d: u32,
    e: vec3<u32>,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: f32,
    d: Struct_1,
    e: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<f32>,
    c: vec4<i32>,
    d: vec4<i32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(51779u, Struct_2(vec3<i32>(29905i, -10101i, -1i)), 253f, Struct_1(true, true, 1i, 26109u, vec3<u32>(102789u, 38450u, 71927u)), false);

var<private> global1: array<Struct_3, 3>;

var<private> global2: i32;

var<private> global3: i32 = 1i;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: bool, arg_1: vec4<i32>) -> vec4<u32> {
    global0 = Struct_3(~_wgslsmith_clamp_u32(~_wgslsmith_add_u32(global0.d.e.x, 9098u), select(global0.a, global0.a ^ 56444u, all(vec3<bool>(false, global0.d.b, global0.d.a))), global0.d.e.x), Struct_2(_wgslsmith_clamp_vec3_i32(arg_1.zyz, global0.b.a, _wgslsmith_mod_vec3_i32(global0.b.a, global0.b.a))), -506f, global0.d, global0.c <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(1381f, 587f) - _wgslsmith_f_op_f32(global0.c + 1698f))));
    var var_0 = global0.d;
    let var_1 = vec2<bool>(global0.e, any(select(!select(vec2<bool>(var_0.b, global0.d.b), vec2<bool>(true, false), vec2<bool>(true, true)), !(!vec2<bool>(false, global0.e)), select(select(vec2<bool>(arg_0, false), vec2<bool>(true, true), vec2<bool>(false, true)), !vec2<bool>(var_0.a, arg_0), global0.e))));
    var var_2 = Struct_3(_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_mod_u32(0u, reverseBits(1u)), max(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, var_0.d, 4294967295u, 15944u), vec4<u32>(var_0.d, 1u, 1u, var_0.e.x)), 67820u)), var_0.e.xz), Struct_2(~select(vec3<i32>(0i, 2147483647i, 6655i), vec3<i32>(-2147483647i, var_0.c, arg_1.x), vec3<bool>(true, true, false))), 281f, global0.d, var_0.b);
    let var_3 = _wgslsmith_mod_u32(_wgslsmith_sub_u32(_wgslsmith_mult_u32(_wgslsmith_sub_u32(4294967295u, var_2.a) >> ((var_0.d << (4294967295u % 32u)) % 32u), _wgslsmith_dot_vec4_u32(abs(vec4<u32>(var_2.d.e.x, var_2.d.e.x, 4294967295u, var_0.e.x)), countOneBits(vec4<u32>(4294967295u, global0.d.e.x, global0.a, 4294967295u)))), global0.d.d), 84592u);
    return ~vec4<u32>(firstTrailingBit(~_wgslsmith_mod_u32(0u, var_3)), 1u >> (((global0.d.e.x & global0.d.e.x) ^ 4294967295u) % 32u), ~var_0.d, max((var_2.a >> (16200u % 32u)) << (1u % 32u), var_2.a));
}

fn func_2(arg_0: Struct_1, arg_1: u32, arg_2: Struct_2) -> i32 {
    global0 = global1[_wgslsmith_index_u32(arg_0.d, 3u)];
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.c));
    var var_1 = i32(-1i) * -1098i;
    let var_2 = vec2<u32>(_wgslsmith_dot_vec4_u32(func_3(any(vec3<bool>(arg_0.b, true, global0.e)), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a.x, 0i, arg_0.c, arg_0.c), vec4<i32>(1i, arg_0.c, 10263i, arg_0.c))), vec4<u32>(4294967295u, 0u, ~global0.d.d, 1u)), 0u) | arg_0.e.yz;
    var var_3 = ~(~global0.d.e.yz);
    return arg_0.c;
}

fn func_1(arg_0: Struct_1, arg_1: vec2<i32>) -> f32 {
    let var_0 = global1[_wgslsmith_index_u32(reverseBits(_wgslsmith_dot_vec3_u32(global0.d.e, global0.d.e | ~_wgslsmith_mod_vec3_u32(arg_0.e, arg_0.e))), 3u)];
    let var_1 = global1[_wgslsmith_index_u32(53695u, 3u)];
    var var_2 = abs(vec2<i32>(~countOneBits(func_2(Struct_1(false, true, 40300i, 1u, global0.d.e), global0.d.e.x, Struct_2(vec3<i32>(arg_0.c, global0.b.a.x, var_1.d.c)))), var_0.b.a.x & firstTrailingBit(global0.b.a.x)));
    let var_3 = global0.b;
    var var_4 = _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(1784f, _wgslsmith_f_op_f32(max(global0.c, var_0.c))), 1159f));
    return _wgslsmith_f_op_f32(max(613f, _wgslsmith_f_op_f32(-var_1.c)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(global0.d, vec2<i32>(2147483647i, 0i)))))) + 377f);
    global3 = select(_wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(global0.b.a, global0.b.a), global0.b.a), _wgslsmith_dot_vec4_i32(~(abs(vec4<i32>(global0.d.c, 0i, u_input.a.x, 13911i)) | ~vec4<i32>(1i, global0.b.a.x, 1i, 14837i)), -_wgslsmith_sub_vec4_i32(vec4<i32>(23655i, -2147483647i, 1i, global0.d.c), vec4<i32>(2147483647i, u_input.a.x, global0.b.a.x, 0i)) >> (~(~vec4<u32>(global0.d.d, 54972u, global0.d.d, 4294967295u)) % vec4<u32>(32u))), all(select(!vec2<bool>(global0.e, false), !vec2<bool>(global0.e, global0.e), all(vec4<bool>(global0.e, false, global0.e, global0.d.a)))) & global0.e);
    let var_1 = select((0u >> (select(global0.d.d, max(65135u, global0.a), true) % 32u)) >= 4294967295u, global0.e | true, !all(select(vec3<bool>(true, global0.d.b, global0.d.b), select(vec3<bool>(global0.d.b, false, global0.d.b), vec3<bool>(global0.e, false, true), vec3<bool>(global0.e, true, global0.e)), all(vec3<bool>(false, global0.d.b, global0.e)))));
    let var_2 = ~firstTrailingBit(~u_input.a.x);
    var var_3 = global0.e;
    var_0 = _wgslsmith_f_op_f32(select(global0.c, _wgslsmith_f_op_f32(ceil(global0.c)), true));
    let var_4 = firstLeadingBit(7388i);
    let var_5 = global0.b;
    let var_6 = vec2<u32>(~global0.a, 0u);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(-1i) * -u_input.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(step(-119f, global0.c)), _wgslsmith_f_op_f32(select(global0.c, -558f, false))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(730f, -501f), vec2<f32>(global0.c, 1600f), global0.e)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-747f, -194f)))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.c, -1984f))), -_wgslsmith_div_vec4_i32(vec4<i32>(23482i, -28747i, 1i, 43476i), min(vec4<i32>(u_input.a.x, 22901i, -1i, -35920i), vec4<i32>(var_4, -1i, u_input.a.x, -13549i))) << (vec4<u32>(_wgslsmith_sub_u32(_wgslsmith_mod_u32(var_6.x, global0.d.d), 1u), var_6.x, ~(~var_6.x), 0u) % vec4<u32>(32u)), _wgslsmith_mult_vec4_i32(countOneBits(_wgslsmith_clamp_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(var_5.a.x, -2147483647i, 34484i, -36965i), vec4<i32>(-2100i, var_2, var_2, -16698i)), -vec4<i32>(-32365i, -2147483647i, 80327i, 3734i), _wgslsmith_mult_vec4_i32(vec4<i32>(-1i, -1i, -50688i, var_4), vec4<i32>(var_5.a.x, u_input.a.x, -2147483647i, -2147483647i)))), _wgslsmith_mult_vec4_i32(vec4<i32>(1i, -var_2, var_2, func_2(global0.d, global0.a, Struct_2(var_5.a))), _wgslsmith_mult_vec4_i32(vec4<i32>(var_2, var_5.a.x, 31965i, u_input.a.x), vec4<i32>(42955i, 2147483647i, var_4, var_2) & vec4<i32>(2147483647i, 0i, 27881i, -31217i)))), vec3<f32>(_wgslsmith_f_op_f32(1000f - global0.c), _wgslsmith_f_op_f32(trunc(786f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.c) - _wgslsmith_f_op_f32(-global0.c)), _wgslsmith_f_op_f32(max(-1219f, 110f)))));
}


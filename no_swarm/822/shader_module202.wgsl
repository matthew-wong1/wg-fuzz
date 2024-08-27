struct Struct_1 {
    a: i32,
    b: vec3<i32>,
}

struct Struct_2 {
    a: bool,
    b: vec2<u32>,
    c: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: vec4<u32>,
    c: Struct_2,
    d: vec2<bool>,
}

struct Struct_4 {
    a: bool,
    b: Struct_2,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 22>;

var<private> global1: Struct_1;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2(arg_0: vec3<bool>, arg_1: vec3<i32>, arg_2: Struct_3, arg_3: vec3<f32>) -> vec3<bool> {
    var var_0 = _wgslsmith_f_op_f32(floor(arg_3.x));
    global0 = array<Struct_3, 22>();
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-264f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(1082f)), _wgslsmith_f_op_f32(select(-2234f, -674f, true))), -792f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1523f)))) - _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(arg_3.x - arg_3.x), 1351f, _wgslsmith_f_op_f32(round(690f)), _wgslsmith_f_op_f32(arg_3.x * -600f))))));
    var var_2 = Struct_4(true, arg_2.c, arg_2.c.c);
    var_2 = Struct_4(all(vec4<bool>(true, arg_0.x | any(vec4<bool>(arg_2.c.a, var_2.a, false, arg_0.x)), select(any(vec2<bool>(false, false)), !var_2.b.a, var_2.a), _wgslsmith_f_op_f32(arg_3.x + arg_3.x) != _wgslsmith_f_op_f32(-var_1.x))), Struct_2(40260u > u_input.a, reverseBits(var_2.b.b), arg_2.c.c), arg_2.c.c);
    return !vec3<bool>(true, all(vec3<bool>(false, true, false)), arg_2.c.a);
}

fn func_3(arg_0: u32, arg_1: f32, arg_2: Struct_4, arg_3: vec4<u32>) -> f32 {
    global0 = array<Struct_3, 22>();
    let var_0 = abs(arg_3.yzz);
    let var_1 = arg_2;
    let var_2 = false;
    return arg_1;
}

fn func_4(arg_0: u32, arg_1: vec2<u32>, arg_2: f32) -> vec3<bool> {
    let var_0 = select(select(select(select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), all(vec3<bool>(true, false, true))), !select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, false), true), !select(false, true, true)), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), true), func_2(select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), false), global1.b, Struct_3(-global1.a, ~vec4<u32>(13176u, 4294967295u, 1u, arg_1.x), Struct_2(true, vec2<u32>(0u, arg_0), Struct_1(global1.a, vec3<i32>(-26109i, 1i, global1.b.x))), vec2<bool>(true, true)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1134f, arg_2, -1000f) - vec3<f32>(arg_2, -544f, -1000f)))).x), select(vec4<bool>(~67888u <= select(arg_0, u_input.b, true), true, global1.a > 24669i, !all(vec2<bool>(false, false))), vec4<bool>(true, !any(vec4<bool>(false, true, true, true)), false, any(vec3<bool>(false, false, true))), true), select(vec4<bool>(func_2(select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(false, false, true)), vec3<i32>(global1.a, global1.b.x, global1.b.x), global0[_wgslsmith_index_u32(arg_1.x, 22u)], vec3<f32>(-1463f, -1120f, -295f)).x, any(vec2<bool>(true, false)), all(select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), false)), true), vec4<bool>(true, true, true, true), !any(select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, false)))));
    let var_1 = ~u_input.c >> (~(~(max(vec2<u32>(19975u, 94841u), vec2<u32>(u_input.b, u_input.c.x)) << (vec2<u32>(arg_0, 1u) % vec2<u32>(32u)))) % vec2<u32>(32u));
    return vec3<bool>(true, (_wgslsmith_clamp_u32(~arg_1.x, ~u_input.c.x, _wgslsmith_sub_u32(arg_1.x, arg_0)) != ~(~0u)) | (true & select(global1.a >= global1.a, true, false)), false);
}

fn func_1(arg_0: vec2<f32>, arg_1: Struct_1) -> Struct_1 {
    var var_0 = min(~(~u_input.a), 31062u & _wgslsmith_mod_u32(~(~u_input.b), u_input.a));
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(303f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(1613f)), _wgslsmith_f_op_f32(round(arg_0.x)))), -862f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1228f * -271f) + _wgslsmith_f_op_f32(-1000f * arg_0.x))) * _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_0.x, _wgslsmith_f_op_f32(min(-660f, 317f)), -1801f, -616f)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-169f * arg_0.x), arg_0.x, -198f, arg_0.x) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, arg_0.x, arg_0.x, 805f))))));
    let var_2 = !select(!select(vec3<bool>(true, false, true), func_2(vec3<bool>(false, true, true), global1.b, Struct_3(3136i, vec4<u32>(u_input.b, u_input.a, u_input.b, 1u), Struct_2(false, vec2<u32>(1u, u_input.b), arg_1), vec2<bool>(true, true)), vec3<f32>(arg_0.x, var_1.x, arg_0.x)), vec3<bool>(true, true, false)), func_2(func_4(reverseBits(4294967295u), u_input.c, _wgslsmith_f_op_f32(func_3(u_input.c.x, arg_0.x, Struct_4(true, Struct_2(false, vec2<u32>(u_input.b, u_input.c.x), Struct_1(arg_1.b.x, global1.b)), arg_1), vec4<u32>(50292u, u_input.c.x, 1u, u_input.c.x)))), arg_1.b, global0[_wgslsmith_index_u32(1u, 22u)], _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(arg_0.x, 340f, arg_0.x))))), !any(vec3<bool>(true, true, true)));
    let var_3 = Struct_2(any(func_2(!select(vec3<bool>(true, true, true), var_2, var_2), max(_wgslsmith_clamp_vec3_i32(arg_1.b, vec3<i32>(-1i, arg_1.b.x, arg_1.b.x), arg_1.b), _wgslsmith_mod_vec3_i32(vec3<i32>(9862i, global1.a, 2147483647i), vec3<i32>(0i, arg_1.a, 2147483647i))), Struct_3(_wgslsmith_clamp_i32(arg_1.b.x, 0i, global1.a), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.c.x, u_input.b, u_input.a, u_input.a), vec4<u32>(5367u, 1u, u_input.b, 46394u)), Struct_2(true, u_input.c, Struct_1(-1i, vec3<i32>(-2147483647i, arg_1.a, global1.a))), select(vec2<bool>(true, true), var_2.xx, var_2.xx)), var_1.zww).yx), ~vec2<u32>(~u_input.b, u_input.c.x), arg_1);
    let var_4 = var_3;
    return Struct_1(firstTrailingBit(var_4.c.b.x), -arg_1.b);
}

fn func_5(arg_0: Struct_2, arg_1: Struct_4, arg_2: Struct_2, arg_3: vec2<f32>) -> vec4<i32> {
    var var_0 = countOneBits(0i) >> (max(arg_1.b.b.x, (firstTrailingBit(arg_2.b.x) & ~1u) & arg_2.b.x) % 32u);
    let var_1 = vec2<u32>(4294967295u ^ arg_2.b.x, _wgslsmith_dot_vec4_u32(vec4<u32>(countOneBits(u_input.c.x >> (32085u % 32u)), ~arg_1.b.b.x, _wgslsmith_add_u32(_wgslsmith_div_u32(20299u, arg_0.b.x), _wgslsmith_div_u32(1u, arg_2.b.x)), _wgslsmith_mod_u32(countOneBits(0u), arg_0.b.x)), ~(~_wgslsmith_add_vec4_u32(vec4<u32>(1u, arg_1.b.b.x, arg_2.b.x, arg_0.b.x), vec4<u32>(935u, 16142u, arg_0.b.x, 47330u)))));
    var_0 = _wgslsmith_add_i32(-1i, arg_0.c.a);
    var var_2 = firstTrailingBit(_wgslsmith_dot_vec2_i32(~arg_0.c.b.zx, ~_wgslsmith_div_vec2_i32(vec2<i32>(arg_0.c.a, arg_0.c.b.x) ^ arg_1.c.b.yx, vec2<i32>(-13909i, 1i))));
    var var_3 = Struct_2(arg_2.a, u_input.c | u_input.c, Struct_1(global1.a, vec3<i32>(arg_1.c.a, -281i, arg_0.c.b.x)));
    return firstLeadingBit(_wgslsmith_add_vec4_i32(-(~vec4<i32>(var_3.c.a, -1i, arg_1.c.b.x, 67554i)), vec4<i32>(abs(arg_0.c.a), _wgslsmith_dot_vec4_i32(vec4<i32>(global1.a, arg_1.c.a, 0i, 0i), vec4<i32>(arg_0.c.b.x, 2147483647i, -1i, arg_1.c.a)), -global1.b.x, 49107i)) & _wgslsmith_mult_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(var_3.c.b.x, 0i, arg_2.c.a, 1i) ^ vec4<i32>(var_3.c.b.x, -73093i, var_3.c.b.x, arg_0.c.b.x), vec4<i32>(1i, 1i, 1i, 1i)), min(select(vec4<i32>(2147483647i, arg_0.c.a, 1i, 0i), vec4<i32>(12430i, var_3.c.b.x, -2147483647i, arg_2.c.b.x), arg_1.b.a), -vec4<i32>(var_3.c.b.x, arg_0.c.a, -1i, 10899i))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_3, 22>();
    let var_0 = _wgslsmith_clamp_vec4_i32(-func_5(Struct_2(true, u_input.c, Struct_1(0i, vec3<i32>(42448i, 0i, global1.a))), Struct_4(true, Struct_2(true, vec2<u32>(u_input.c.x, u_input.c.x), Struct_1(-45378i, vec3<i32>(global1.b.x, global1.a, -1i))), func_1(vec2<f32>(834f, 1000f), Struct_1(global1.b.x, global1.b))), Struct_2(true, vec2<u32>(60703u, 6060u), Struct_1(-22887i, global1.b)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-776f, 1257f) * vec2<f32>(-417f, 1189f)))), select(-vec4<i32>(1i & global1.b.x, reverseBits(global1.b.x), 1i, _wgslsmith_dot_vec3_i32(global1.b, vec3<i32>(28456i, 2147483647i, global1.a))), -vec4<i32>(~62611i, ~global1.b.x, abs(-27610i), _wgslsmith_sub_i32(global1.a, global1.a)), false), vec4<i32>(2147483647i, global1.b.x, 1i, -1i));
    let var_1 = global0[_wgslsmith_index_u32(4284u, 22u)];
    let var_2 = ~(1i << (~(~u_input.a) % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_3(u_input.c.x, -499f, Struct_4(var_1.d.x, Struct_2(true, vec2<u32>(28181u, 12433u), var_1.c.c), Struct_1(-2147483647i, vec3<i32>(-16093i, var_1.c.c.a, -68395i))), var_1.b)))) * _wgslsmith_f_op_f32(-482f + -2517f)))), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.c.x, ~(~74928u), 1u), ~(vec3<u32>(u_input.b, u_input.c.x, 0u) ^ max(var_1.b.www, vec3<u32>(69216u, var_1.b.x, u_input.a)))));
}


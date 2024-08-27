struct Struct_1 {
    a: vec3<u32>,
    b: vec2<u32>,
    c: vec4<f32>,
    d: vec2<i32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: bool,
    d: Struct_1,
    e: vec2<bool>,
}

struct Struct_3 {
    a: u32,
    b: f32,
}

struct Struct_4 {
    a: vec3<u32>,
    b: Struct_3,
    c: i32,
    d: Struct_3,
    e: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec4<u32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: vec3<f32>,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: Struct_2;

var<private> global2: vec4<f32>;

var<private> global3: array<i32, 10> = array<i32, 10>(-1355i, -24058i, 0i, 24960i, 2147483647i, 57655i, 2147483647i, 0i, -1i, 25705i);

var<private> global4: array<Struct_3, 3>;

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: i32, arg_1: Struct_3, arg_2: vec4<i32>) -> vec4<f32> {
    var var_0 = true;
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-941f, global1.b.c.x, global1.d.c.x, arg_1.b), _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.d.c.x, 1000f, -593f, 104f) - vec4<f32>(382f, -714f, -1262f, 638f)))), vec4<f32>(353f, _wgslsmith_f_op_f32(step(289f, arg_1.b)), _wgslsmith_f_op_f32(-arg_1.b), 2307f))));
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_2, arg_2: Struct_4) -> vec3<u32> {
    global3 = array<i32, 10>();
    return ~vec3<u32>(30295u << (1u % 32u), ~1u, _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(arg_1.b.a, ~global1.b.a), _wgslsmith_mult_u32(~4294967295u, max(21945u, arg_2.a.x))));
}

fn func_4(arg_0: vec3<u32>, arg_1: vec2<f32>, arg_2: vec2<u32>) -> u32 {
    let var_0 = 1065f;
    let var_1 = -_wgslsmith_mod_i32(_wgslsmith_add_i32(_wgslsmith_mult_i32(1i, -26280i << (global1.a.x % 32u)), -(u_input.a ^ global1.d.d.x)), _wgslsmith_mod_i32(u_input.a, global1.b.d.x));
    global1 = Struct_2(min(vec2<u32>(global1.b.b.x, ~reverseBits(52407u)), _wgslsmith_sub_vec2_u32(arg_0.xx, (arg_2 << (vec2<u32>(arg_0.x, 42576u) % vec2<u32>(32u))) >> (_wgslsmith_mod_vec2_u32(vec2<u32>(global1.d.a.x, u_input.b.x), vec2<u32>(arg_0.x, 95633u)) % vec2<u32>(32u)))), Struct_1(~(~global1.d.a), ~_wgslsmith_div_vec2_u32(abs(arg_2), vec2<u32>(44529u, u_input.c.x)), vec4<f32>(-243f, _wgslsmith_f_op_f32(step(-356f, _wgslsmith_div_f32(arg_1.x, arg_1.x))), _wgslsmith_f_op_f32(min(arg_1.x, _wgslsmith_f_op_f32(f32(-1f) * -618f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1000f, 222f)))), global1.d.d), select(all(select(vec3<bool>(false, global1.c, global1.e.x), vec3<bool>(true, false, false), global1.e.x)) & global1.e.x, false, all(vec2<bool>(global1.c, !global1.c))), global1.b, global1.e);
    global1 = Struct_2(vec2<u32>(abs(23358u), 6067u), Struct_1(vec3<u32>(arg_2.x, countOneBits(firstTrailingBit(u_input.b.x)), abs(4294967295u)), vec2<u32>(arg_2.x, min(arg_0.x, 1u)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(var_0 + -340f), _wgslsmith_div_f32(global2.x, 618f), arg_1.x, _wgslsmith_f_op_f32(round(-1000f)))), ~(~global1.b.d)), !(!any(vec3<bool>(global1.e.x, true, true))) != any(select(vec4<bool>(global1.e.x, global1.c, false, global1.c), select(vec4<bool>(global1.c, global1.e.x, false, global1.c), vec4<bool>(global1.e.x, false, global1.c, false), global1.e.x), !vec4<bool>(true, false, global1.c, true))), global1.b, vec2<bool>(global1.c, global1.c));
    global3 = array<i32, 10>();
    return ~(~(~u_input.b.x));
}

fn func_1() -> u32 {
    var var_0 = vec2<i32>(_wgslsmith_mod_i32(global3[_wgslsmith_index_u32(select(16200u, u_input.b.x, global1.c), 10u)], 73096i), global1.d.d.x);
    global2 = _wgslsmith_f_op_vec4_f32(func_2(-((i32(-1i) * -16381i) << (1u % 32u)), global4[_wgslsmith_index_u32(firstLeadingBit(0u), 3u)], vec4<i32>(abs(2147483647i), ~(~(-70637i)), 1i, 2147483647i)));
    let var_1 = Struct_4(abs(vec3<u32>(abs(12677u), global1.d.a.x, select(u_input.d.x, 0u, true))) ^ abs(vec3<u32>(1u, ~4294967295u, 4294967295u)), global4[_wgslsmith_index_u32(func_4(func_3(-vec3<i32>(-11273i, var_0.x, global3[_wgslsmith_index_u32(global1.a.x, 10u)]), Struct_2(global1.b.b, global1.b, global1.e.x, global1.d, vec2<bool>(global1.e.x, true)), Struct_4(global1.b.a, Struct_3(u_input.c.x, global2.x), 54327i, global4[_wgslsmith_index_u32(u_input.c.x, 3u)], -40942i)), vec2<f32>(_wgslsmith_f_op_f32(-global1.b.c.x), global2.x), u_input.c.yw) & ~0u, 3u)], _wgslsmith_clamp_i32(_wgslsmith_add_i32(14829i | select(27511i, -19815i, false), reverseBits(_wgslsmith_dot_vec4_i32(vec4<i32>(-3361i, -45438i, 28782i, -2147483647i), vec4<i32>(-1i, -1i, u_input.a, u_input.a)))), min(global1.b.d.x, 1i), 1i << (_wgslsmith_div_u32(~global1.b.a.x, select(global1.a.x, 45108u, true)) % 32u)), Struct_3(global1.d.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-391f * _wgslsmith_f_op_f32(-global2.x)) * -272f)), -2147483647i);
    let var_2 = var_1;
    global1 = Struct_2(~_wgslsmith_sub_vec2_u32(var_2.a.zz, firstTrailingBit(~vec2<u32>(var_1.b.a, u_input.d.x))), Struct_1(min(vec3<u32>(global1.d.a.x, var_1.a.x, var_1.a.x), _wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, var_1.d.a, 49657u), global1.b.a)) << (firstTrailingBit(vec3<u32>(var_1.d.a, 5641u, var_2.d.a)) % vec3<u32>(32u)), _wgslsmith_mult_vec2_u32(var_2.a.xz, vec2<u32>(~u_input.c.x, ~global1.d.b.x)), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(-var_2.d.b), var_1.d.b, _wgslsmith_f_op_f32(sign(var_1.d.b))), _wgslsmith_f_op_vec4_f32(-global1.d.c))), ~(~global1.b.d & (global1.b.d << (var_1.a.zz % vec2<u32>(32u))))), true, global1.d, global1.e);
    return 1u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(323f)))) * -455f);
    var_0 = global2.x;
    var var_1 = _wgslsmith_sub_u32(min(~abs(~9317u), ~_wgslsmith_sub_u32(16372u, func_1())), 4294967295u >> (~global1.b.b.x % 32u));
    let var_2 = select(select(select(vec3<bool>(true, true, select(global1.c, global1.c, global1.c)), vec3<bool>(global1.c, all(vec3<bool>(global1.c, global1.e.x, true)), any(vec4<bool>(global1.e.x, false, global1.c, global1.c))), !select(vec3<bool>(global1.c, global1.c, global1.e.x), vec3<bool>(false, global1.e.x, true), global1.c)), vec3<bool>(_wgslsmith_div_f32(global2.x, -391f) >= global2.x, all(!vec4<bool>(true, global1.e.x, global1.e.x, global1.c)), (global1.b.b.x >= 0u) | false), !(!(global1.e.x || true))), !(!(!select(vec3<bool>(false, true, global1.e.x), vec3<bool>(global1.e.x, false, true), global1.c))), !any(vec3<bool>(true, global1.e.x, all(vec3<bool>(true, false, true)))));
    var var_3 = Struct_4(~abs(select(global1.d.a & vec3<u32>(global1.b.b.x, 0u, 0u), ~u_input.c.zwy, vec3<bool>(false, true, false))), global4[_wgslsmith_index_u32(global1.a.x, 3u)], _wgslsmith_sub_i32(_wgslsmith_add_i32(firstLeadingBit(global1.d.d.x), -(~2147483647i)), -15782i), Struct_3(~23981u, _wgslsmith_div_f32(global2.x, 858f)), -10103i);
    global3 = array<i32, 10>();
    global1 = Struct_2(vec2<u32>(global1.d.b.x, u_input.d.x), Struct_1(max(var_3.a, vec3<u32>(_wgslsmith_mod_u32(79310u, global1.a.x), 8205u, global1.a.x ^ 1u)), _wgslsmith_mult_vec2_u32(var_3.a.xz | global1.d.b, ~max(vec2<u32>(var_3.a.x, u_input.d.x), vec2<u32>(u_input.d.x, 1u))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-876f, 373f, -317f, var_3.d.b))))), _wgslsmith_mult_vec2_i32(vec2<i32>(var_3.c, 25933i), -abs(vec2<i32>(1i, global1.d.d.x)))), var_2.x, global1.d, vec2<bool>(all(select(global1.e, select(vec2<bool>(global1.c, global1.c), vec2<bool>(true, true), global1.e), any(vec3<bool>(var_2.x, true, global1.e.x)))), !var_2.x || all(global1.e)));
    let var_4 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -276f) - -1726f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(global2.x, -777f))) + 1f)), _wgslsmith_f_op_f32(step(global1.d.c.x, _wgslsmith_f_op_f32(step(global2.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(219f + -600f)))))))));
    let x = u_input.a;
    s_output = StorageBuffer(select(countOneBits(vec3<i32>(_wgslsmith_mod_i32(var_3.e, global3[_wgslsmith_index_u32(1u, 10u)]), ~global1.b.d.x, 54397i)), ~(_wgslsmith_mult_vec3_i32(vec3<i32>(-2147483647i, global1.b.d.x, global1.b.d.x), vec3<i32>(14421i, -4984i, global1.b.d.x)) << (select(var_3.a, vec3<u32>(0u, 11161u, u_input.b.x), global1.c) % vec3<u32>(32u))), !var_2.x), _wgslsmith_sub_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(var_3.a.x, var_3.a.x, u_input.b.x) << (func_3(vec3<i32>(24327i, u_input.a, global3[_wgslsmith_index_u32(global1.d.a.x, 10u)]), Struct_2(vec2<u32>(1351u, 4294967295u), Struct_1(u_input.c.zyy, vec2<u32>(1u, 30146u), vec4<f32>(519f, var_3.b.b, global1.d.c.x, var_3.d.b), global1.d.d), global1.e.x, Struct_1(global1.d.a, vec2<u32>(0u, global1.b.a.x), vec4<f32>(-552f, 578f, global1.d.c.x, var_4), vec2<i32>(-2147483647i, 12707i)), vec2<bool>(var_2.x, var_2.x)), Struct_4(vec3<u32>(u_input.c.x, 30591u, 53599u), var_3.b, 1i, Struct_3(var_3.d.a, -657f), u_input.a)) % vec3<u32>(32u)), var_3.a), _wgslsmith_sub_vec3_u32(firstLeadingBit(~global1.d.a), var_3.a)), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1843f, -1004f)) - 1000f)), _wgslsmith_f_op_f32(-var_4), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1186f + 716f))))), var_3.d.a, select(-2147483647i, -_wgslsmith_div_i32(_wgslsmith_div_i32(global3[_wgslsmith_index_u32(var_3.a.x, 10u)], -2147483647i), u_input.a), !var_2.x));
}


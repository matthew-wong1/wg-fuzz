struct Struct_1 {
    a: bool,
    b: vec4<u32>,
    c: vec4<i32>,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<u32>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: vec2<f32>,
}

struct Struct_4 {
    a: Struct_2,
    b: vec2<bool>,
    c: bool,
    d: Struct_3,
}

struct Struct_5 {
    a: vec4<i32>,
    b: f32,
    c: Struct_4,
}

struct UniformBuffer {
    a: vec3<u32>,
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

var<private> global0: array<vec4<bool>, 17> = array<vec4<bool>, 17>(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, false));

var<private> global1: Struct_1 = Struct_1(false, vec4<u32>(4294967295u, 1u, 2960u, 25807u), vec4<i32>(24950i, 16666i, -1i, 2147483647i), 1u);

var<private> global2: array<i32, 3>;

var<private> global3: u32;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> i32 {
    global0 = array<vec4<bool>, 17>();
    let var_0 = Struct_2(Struct_1(true, ~_wgslsmith_add_vec4_u32(global1.b, vec4<u32>(16997u, 18313u, 4294967295u, 1u)), vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, global2[_wgslsmith_index_u32(40637u, 3u)], global2[_wgslsmith_index_u32(1u, 3u)]), global1.c.wwy), reverseBits(global1.c.x), max(global1.c.x, global2[_wgslsmith_index_u32(u_input.a.x, 3u)]), 1i) & global1.c, u_input.a.x), Struct_1(false, ~global1.b, ~(-(~global1.c)), ~117967u), u_input.a.zx, Struct_1(true, global1.b, global1.c, 37307u), Struct_1(global1.a, reverseBits(max(vec4<u32>(global1.b.x, global1.d, 79838u, 0u), global1.b)) ^ (vec4<u32>(global1.b.x, global1.d, u_input.a.x, global1.d) ^ vec4<u32>(u_input.a.x, global1.b.x, global1.b.x, u_input.a.x)), firstTrailingBit(vec4<i32>(~5482i, 1i, _wgslsmith_dot_vec3_i32(vec3<i32>(5574i, global1.c.x, global1.c.x), vec3<i32>(global2[_wgslsmith_index_u32(7956u, 3u)], -23551i, global2[_wgslsmith_index_u32(2880u, 3u)])), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(global1.b, global1.b), 3u)])), 0u));
    let var_1 = abs(~global1.d);
    var var_2 = firstLeadingBit(-((_wgslsmith_div_i32(global1.c.x, -34000i) & -17078i) >> (var_0.c.x % 32u)));
    global0 = array<vec4<bool>, 17>();
    return global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~((reverseBits(var_0.c.x) & _wgslsmith_mod_u32(15119u, 1u)) << (2634u % 32u)), countOneBits(26418u), ~32681u), 3u)];
}

fn func_2() -> Struct_1 {
    global2 = array<i32, 3>();
    global2 = array<i32, 3>();
    var var_0 = Struct_5(-vec4<i32>(~global2[_wgslsmith_index_u32(global1.d, 3u)], global1.c.x, ~_wgslsmith_dot_vec2_i32(global1.c.wz, vec2<i32>(global1.c.x, global1.c.x)), func_3()), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1073f, -522f))) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1412f - -1498f) - -1245f)))), Struct_4(Struct_2(Struct_1(any(vec4<bool>(false, global1.a, false, global1.a)), vec4<u32>(4294967295u, 59445u, u_input.a.x, 4294967295u), global1.c | vec4<i32>(26841i, -2147483647i, global2[_wgslsmith_index_u32(global1.d, 3u)], global2[_wgslsmith_index_u32(u_input.a.x, 3u)]), u_input.a.x), Struct_1(!global1.a, vec4<u32>(63516u, 0u, global1.b.x, u_input.a.x), ~vec4<i32>(1i, 2147483647i, -7i, global2[_wgslsmith_index_u32(u_input.a.x, 3u)]), global1.b.x | u_input.a.x), global1.b.wx, Struct_1(all(vec4<bool>(false, global1.a, global1.a, global1.a)), vec4<u32>(global1.d, 25748u, global1.b.x, u_input.a.x), vec4<i32>(52289i, global1.c.x, 53103i, 22405i), 1u), Struct_1(!global1.a, global1.b, -global1.c, ~u_input.a.x)), vec2<bool>(!all(vec2<bool>(true, true)), any(!vec2<bool>(global1.a, false))), true, Struct_3(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -378f, 891f)))), vec2<f32>(_wgslsmith_f_op_f32(trunc(-1000f)), -884f))));
    var var_1 = Struct_5(vec4<i32>(_wgslsmith_clamp_i32(min(-global2[_wgslsmith_index_u32(var_0.c.a.a.d, 3u)], ~global1.c.x), ~global1.c.x, firstLeadingBit(global2[_wgslsmith_index_u32(~global1.b.x, 3u)])), -_wgslsmith_dot_vec4_i32(abs(vec4<i32>(var_0.c.a.b.c.x, global1.c.x, -1i, global1.c.x)), max(vec4<i32>(936i, -7131i, -2104i, 18558i), var_0.c.a.d.c)), 1i, _wgslsmith_dot_vec2_i32(~(vec2<i32>(-1i, global1.c.x) >> (u_input.a.xz % vec2<u32>(32u))), ~vec2<i32>(global1.c.x, -7199i) << (select(vec2<u32>(var_0.c.a.d.b.x, var_0.c.a.a.b.x), var_0.c.a.c, var_0.c.b) % vec2<u32>(32u)))), _wgslsmith_f_op_f32(floor(var_0.c.d.a.x)), var_0.c);
    var var_2 = vec3<u32>(global1.b.x, var_1.c.a.e.b.x, u_input.a.x);
    return var_1.c.a.b;
}

fn func_1() -> u32 {
    var var_0 = func_2();
    let var_1 = ~(var_0.c.x << (var_0.b.x % 32u));
    global3 = _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_mult_u32(var_0.d, 1u), min(firstLeadingBit(u_input.a.x), 4294967295u), global1.b.x), ~var_0.b.zzx), var_0.b.x);
    let var_2 = all(vec4<bool>(false, all(select(vec2<bool>(var_0.a, global1.a), vec2<bool>(true, global1.a), all(vec3<bool>(true, var_0.a, global1.a)))), global1.a, any(vec3<bool>(true, global1.a, true))));
    var var_3 = Struct_5(_wgslsmith_mult_vec4_i32(abs(~global1.c), -max(vec4<i32>(global2[_wgslsmith_index_u32(global1.d, 3u)], -46352i, 2147483647i, var_1), global1.c)) >> (~_wgslsmith_mod_vec4_u32(~vec4<u32>(4294967295u, 1378u, var_0.d, global1.b.x), ~global1.b) % vec4<u32>(32u)), _wgslsmith_f_op_f32(160f + 675f), Struct_4(Struct_2(Struct_1(true, max(global1.b, vec4<u32>(var_0.b.x, 33125u, var_0.b.x, global1.b.x)), vec4<i32>(-1i, global2[_wgslsmith_index_u32(0u, 3u)], global1.c.x, global2[_wgslsmith_index_u32(0u, 3u)]), var_0.b.x), Struct_1(select(var_2, false, var_2), abs(var_0.b), global1.c << (vec4<u32>(u_input.a.x, 1u, 60967u, u_input.a.x) % vec4<u32>(32u)), var_0.b.x), _wgslsmith_sub_vec2_u32(var_0.b.yy, _wgslsmith_mod_vec2_u32(vec2<u32>(var_0.d, var_0.b.x), vec2<u32>(global1.b.x, var_0.b.x))), func_2(), func_2()), vec2<bool>(var_2, global1.a), true, Struct_3(vec3<f32>(-856f, -1130f, _wgslsmith_f_op_f32(trunc(-1537f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(192f, -360f) - vec2<f32>(-431f, -1615f))))));
    return _wgslsmith_mult_u32(~(~_wgslsmith_dot_vec4_u32(~vec4<u32>(0u, 49125u, u_input.a.x, global1.b.x), var_3.c.a.d.b)), func_2().d);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(Struct_1(false, vec4<u32>(_wgslsmith_sub_u32(_wgslsmith_mult_u32(u_input.a.x, u_input.a.x), 1u), min(~global1.b.x, func_1()), ~u_input.a.x, u_input.a.x), vec4<i32>(16655i, firstTrailingBit(global1.c.x << (global1.d % 32u)), select(-66273i, 0i, -69650i <= global1.c.x), global1.c.x), 36097u), func_2(), vec2<u32>(_wgslsmith_mult_u32(_wgslsmith_mod_u32(1u, 0u << (global1.d % 32u)), func_2().d), ~0u), Struct_1(-func_2().c.x > _wgslsmith_mult_i32(1i, global2[_wgslsmith_index_u32(~global1.b.x, 3u)]), global1.b, -vec4<i32>(0i, _wgslsmith_dot_vec3_i32(global1.c.wzw, vec3<i32>(-24509i, global2[_wgslsmith_index_u32(2870u, 3u)], 0i)), _wgslsmith_dot_vec3_i32(global1.c.wzw, vec3<i32>(global1.c.x, 51194i, -33074i)), global2[_wgslsmith_index_u32(0u, 3u)] ^ -2147483647i), ~u_input.a.x), func_2());
    var var_1 = ~_wgslsmith_dot_vec3_i32(var_0.a.c.xyx, vec3<i32>(_wgslsmith_mult_i32(-28328i | global2[_wgslsmith_index_u32(32753u, 3u)], 1i), reverseBits(-11042i), func_2().c.x));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-625f))) * 467f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -103f))))));
    global0 = array<vec4<bool>, 17>();
    let var_3 = Struct_5(_wgslsmith_sub_vec4_i32(abs((var_0.d.c | var_0.a.c) >> (vec4<u32>(3027u, 82797u, 4294967295u, u_input.a.x) % vec4<u32>(32u))), min(vec4<i32>(global1.c.x, global1.c.x, 1i, -2147483647i), global1.c) ^ vec4<i32>(7735i, -2147483647i, -86753i, -1i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-436f))), var_2))), Struct_4(Struct_2(var_0.d, func_2(), ~(~vec2<u32>(global1.d, 19035u)), Struct_1(true, countOneBits(vec4<u32>(u_input.a.x, var_0.d.d, 4294967295u, 53055u)), abs(vec4<i32>(-25510i, global1.c.x, -18091i, global2[_wgslsmith_index_u32(var_0.a.d, 3u)])), _wgslsmith_mult_u32(13504u, u_input.a.x)), Struct_1(true, global1.b, vec4<i32>(global2[_wgslsmith_index_u32(4294967295u, 3u)], global2[_wgslsmith_index_u32(var_0.a.b.x, 3u)], 2147483647i, -1i), 1u)), vec2<bool>(false, _wgslsmith_clamp_i32(-1i, -33769i, global1.c.x) < (-1i & global2[_wgslsmith_index_u32(u_input.a.x, 3u)])), var_0.a.a, Struct_3(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, var_2, var_2)))), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(230f, 405f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2, 1320f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(~var_0.a.d);
}


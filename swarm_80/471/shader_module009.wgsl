struct Struct_1 {
    a: vec4<bool>,
    b: i32,
    c: vec4<i32>,
    d: u32,
    e: i32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec4<i32>,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: i32,
    d: Struct_1,
    e: u32,
}

struct Struct_4 {
    a: Struct_1,
    b: vec3<u32>,
    c: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<f32>,
    c: u32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 24>;

var<private> global1: u32 = 68071u;

var<private> global2: array<i32, 29> = array<i32, 29>(2147483647i, i32(-2147483648), 2147483647i, -91i, 0i, 1i, 47978i, -50216i, 41327i, 1i, -23389i, -57888i, 2147483647i, 17905i, -52034i, 0i, i32(-2147483648), 5896i, 32024i, 1i, 0i, 10867i, 0i, 1i, 2147483647i, i32(-2147483648), i32(-2147483648), -1i, -1i);

var<private> global3: array<Struct_4, 18> = array<Struct_4, 18>(Struct_4(Struct_1(vec4<bool>(false, true, false, true), 36869i, vec4<i32>(37823i, i32(-2147483648), 35397i, 2147483647i), 0u, 0i), vec3<u32>(0u, 4294967295u, 1u), 1u), Struct_4(Struct_1(vec4<bool>(false, false, false, false), 1i, vec4<i32>(392i, 38527i, 0i, 50311i), 1u, 1i), vec3<u32>(13472u, 1u, 72540u), 0u), Struct_4(Struct_1(vec4<bool>(false, false, false, true), 1623i, vec4<i32>(21141i, 2147483647i, 0i, 37322i), 105525u, -34283i), vec3<u32>(1u, 9781u, 4294967295u), 36070u), Struct_4(Struct_1(vec4<bool>(false, true, true, true), -4056i, vec4<i32>(-78324i, i32(-2147483648), 1i, -1i), 1u, 0i), vec3<u32>(57631u, 1u, 0u), 0u), Struct_4(Struct_1(vec4<bool>(false, true, false, true), 95826i, vec4<i32>(-11142i, -50045i, i32(-2147483648), 42053i), 69525u, 2147483647i), vec3<u32>(18249u, 5834u, 4294967295u), 515u), Struct_4(Struct_1(vec4<bool>(false, true, true, false), i32(-2147483648), vec4<i32>(16786i, 0i, 0i, -15589i), 0u, 25827i), vec3<u32>(1u, 22643u, 61000u), 0u), Struct_4(Struct_1(vec4<bool>(false, true, true, true), -30022i, vec4<i32>(-1i, i32(-2147483648), i32(-2147483648), 2147483647i), 2188u, -24190i), vec3<u32>(1u, 44151u, 4294967295u), 20052u), Struct_4(Struct_1(vec4<bool>(false, false, true, false), -55004i, vec4<i32>(0i, 1i, 32701i, 1i), 1262u, 1i), vec3<u32>(8414u, 10183u, 24626u), 69912u), Struct_4(Struct_1(vec4<bool>(true, false, false, true), -1i, vec4<i32>(-17821i, 0i, -32534i, 1i), 6431u, -1i), vec3<u32>(14695u, 0u, 69618u), 76088u), Struct_4(Struct_1(vec4<bool>(false, true, false, true), -38372i, vec4<i32>(-1i, -21972i, 9191i, -23964i), 57428u, 20288i), vec3<u32>(35175u, 1776u, 25065u), 19529u), Struct_4(Struct_1(vec4<bool>(true, true, true, false), 13625i, vec4<i32>(38395i, -11637i, 25313i, i32(-2147483648)), 1u, 13975i), vec3<u32>(9094u, 4294967295u, 0u), 0u), Struct_4(Struct_1(vec4<bool>(true, true, false, false), -53170i, vec4<i32>(-13388i, i32(-2147483648), i32(-2147483648), 1i), 45194u, -1i), vec3<u32>(1u, 131037u, 41865u), 2542u), Struct_4(Struct_1(vec4<bool>(true, false, true, false), 24700i, vec4<i32>(0i, i32(-2147483648), -3148i, -29880i), 39780u, 1i), vec3<u32>(78917u, 18438u, 28962u), 65263u), Struct_4(Struct_1(vec4<bool>(true, false, false, true), 45184i, vec4<i32>(16454i, 0i, 1i, 1i), 0u, 26754i), vec3<u32>(33271u, 37360u, 1u), 0u), Struct_4(Struct_1(vec4<bool>(false, true, false, true), -55105i, vec4<i32>(-25935i, i32(-2147483648), -31878i, -35749i), 10044u, -1i), vec3<u32>(4294967295u, 0u, 3800u), 36428u), Struct_4(Struct_1(vec4<bool>(true, false, false, false), 48932i, vec4<i32>(-10566i, -7263i, 9898i, -21811i), 8468u, 0i), vec3<u32>(4294967295u, 62596u, 4294967295u), 56772u), Struct_4(Struct_1(vec4<bool>(false, true, false, false), 1i, vec4<i32>(2147483647i, 8524i, -54523i, 44793i), 7141u, 1i), vec3<u32>(10994u, 16108u, 51231u), 19959u), Struct_4(Struct_1(vec4<bool>(true, false, true, true), i32(-2147483648), vec4<i32>(-31013i, -1i, -3386i, 1694i), 6721u, 1i), vec3<u32>(1u, 71087u, 1u), 21741u));

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec4<bool>) -> i32 {
    var var_0 = vec4<bool>(arg_0.x, arg_0.x, all(vec2<bool>(true, -43521i > _wgslsmith_sub_i32(2147483647i, global2[_wgslsmith_index_u32(0u, 29u)]))), false);
    var var_1 = Struct_1(select(!select(!arg_0, select(arg_0, vec4<bool>(arg_0.x, true, true, true), arg_0.x), select(vec4<bool>(false, arg_0.x, var_0.x, true), vec4<bool>(var_0.x, var_0.x, var_0.x, false), true)), !select(vec4<bool>(false, arg_0.x, false, true), arg_0, false), !(-39062i != (global2[_wgslsmith_index_u32(1u, 29u)] ^ 2147483647i))), 1i, _wgslsmith_mult_vec4_i32(vec4<i32>(1i, global2[_wgslsmith_index_u32(abs(u_input.a.x) | 40486u, 29u)], -26826i, 2620i), select(~abs(vec4<i32>(global2[_wgslsmith_index_u32(u_input.a.x, 29u)], -1i, 2147483647i, -1i)), vec4<i32>(7167i, global2[_wgslsmith_index_u32(1u, 29u)], -26632i, -2147483647i), true)), max(~(~u_input.a.x), 51815u), reverseBits(~(_wgslsmith_add_i32(global2[_wgslsmith_index_u32(u_input.a.x, 29u)], global2[_wgslsmith_index_u32(u_input.a.x, 29u)]) ^ _wgslsmith_sub_i32(-1i, global2[_wgslsmith_index_u32(u_input.a.x, 29u)]))));
    var var_2 = Struct_4(Struct_1(var_1.a, global2[_wgslsmith_index_u32(~((var_1.d >> (var_1.d % 32u)) | 3078u), 29u)], vec4<i32>(abs(var_1.c.x), ~(-1i | global2[_wgslsmith_index_u32(var_1.d, 29u)]), -32226i, global2[_wgslsmith_index_u32(var_1.d, 29u)]), ~(~var_1.d), -39152i), u_input.a, var_1.d);
    let var_3 = vec4<bool>(select(all(!arg_0), select(!any(arg_0.wwy), false, all(!vec4<bool>(true, var_2.a.a.x, var_2.a.a.x, var_1.a.x))), var_0.x), var_0.x, var_1.a.x, var_0.x);
    var_2 = global3[_wgslsmith_index_u32(89093u, 18u)];
    return _wgslsmith_dot_vec3_i32(~vec3<i32>(_wgslsmith_sub_i32(-2147483647i & var_1.c.x, var_1.e), 1i, ~(-2147483647i)), var_1.c.www);
}

fn func_4(arg_0: i32) -> vec4<i32> {
    var var_0 = !select(vec4<bool>(!any(vec2<bool>(true, false)), true, ~21718u != ~u_input.a.x, !all(vec3<bool>(false, false, true))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, all(vec3<bool>(true, true, false))), vec4<bool>(true, select(true, false, true), false, true)), any(vec3<bool>(true, true, true)));
    let var_1 = _wgslsmith_mult_vec4_i32(vec4<i32>(abs(-2410i), arg_0, global2[_wgslsmith_index_u32(_wgslsmith_add_u32(~54030u, 1u), 29u)], -global2[_wgslsmith_index_u32(u_input.a.x, 29u)]), vec4<i32>(2147483647i, global2[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.a.x, _wgslsmith_dot_vec2_u32(u_input.a.xz, u_input.a.yz)), 29u)], ~(~_wgslsmith_add_i32(arg_0, global2[_wgslsmith_index_u32(u_input.a.x, 29u)])), global2[_wgslsmith_index_u32(~(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, 41117u, u_input.a.x), vec4<u32>(u_input.a.x, u_input.a.x, 30366u, 29863u))), 29u)]));
    global2 = array<i32, 29>();
    var var_2 = u_input.a.x | _wgslsmith_add_u32(select(_wgslsmith_clamp_u32(~u_input.a.x, firstLeadingBit(45807u), abs(u_input.a.x)), firstLeadingBit(select(u_input.a.x, u_input.a.x, var_0.x)), true), max(firstTrailingBit(_wgslsmith_add_u32(74232u, u_input.a.x)), firstLeadingBit(34720u)));
    var var_3 = global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(_wgslsmith_div_u32(u_input.a.x, 20085u), ~u_input.a.x), vec2<u32>(u_input.a.x ^ 4294967295u, u_input.a.x)), abs(reverseBits(u_input.a.xy))), _wgslsmith_mult_u32(12974u, _wgslsmith_mod_u32(reverseBits(u_input.a.x), _wgslsmith_clamp_u32(u_input.a.x << (u_input.a.x % 32u), max(0u, 0u), 18341u)))), 18u)];
    return var_1;
}

fn func_2(arg_0: vec3<i32>, arg_1: Struct_2, arg_2: i32) -> vec3<u32> {
    var var_0 = _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(u_input.a.yx, vec2<u32>(_wgslsmith_div_u32(78801u, _wgslsmith_sub_u32(23400u, 0u)), countOneBits(u_input.a.x) | 54898u)), 18035u);
    var var_1 = (u_input.a.x | firstLeadingBit(countOneBits(reverseBits(u_input.a.x)))) == u_input.a.x;
    let var_2 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global0[_wgslsmith_index_u32(12675u, 24u)]))))), func_4(func_3(select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, false), false))) << (_wgslsmith_sub_vec4_u32(abs(vec4<u32>(0u, u_input.a.x, 4294967295u, u_input.a.x)), ~(~vec4<u32>(u_input.a.x, u_input.a.x, 1u, 57037u))) % vec4<u32>(32u)));
    var var_3 = Struct_1(select(select(vec4<bool>(true, any(vec4<bool>(false, false, true, false)), true, all(vec4<bool>(false, true, true, false))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), global2[_wgslsmith_index_u32(4294967295u, 29u)] > arg_1.b.x), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false), true)), vec4<bool>(!any(vec3<bool>(true, true, true)), !any(vec4<bool>(true, true, true, true)), true, true), true), arg_2, _wgslsmith_div_vec4_i32(arg_1.b, _wgslsmith_mult_vec4_i32(func_4(min(-41332i, arg_1.b.x)), vec4<i32>(~arg_1.b.x, _wgslsmith_div_i32(global2[_wgslsmith_index_u32(u_input.a.x, 29u)], arg_0.x), -arg_1.b.x, ~arg_2))), 1u, 1i << (_wgslsmith_mod_u32(_wgslsmith_div_u32(u_input.a.x, 4294967295u), u_input.a.x) % 32u));
    var var_4 = Struct_1(select(vec4<bool>(false, ~u_input.a.x < 0u, all(select(vec2<bool>(var_3.a.x, var_3.a.x), vec2<bool>(false, var_3.a.x), false)), var_3.a.x | var_3.a.x), vec4<bool>(any(var_3.a.yz), !var_3.a.x, var_3.a.x, any(vec3<bool>(var_3.a.x, var_3.a.x, true))), select(vec4<bool>(false, any(vec3<bool>(true, false, var_3.a.x)), arg_1.a.x >= -1000f, false), !select(var_3.a, var_3.a, vec4<bool>(true, true, false, var_3.a.x)), true)), abs(_wgslsmith_clamp_i32(~(global2[_wgslsmith_index_u32(0u, 29u)] << (u_input.a.x % 32u)), 1i, countOneBits(var_3.b & arg_0.x))), min(vec4<i32>(0i, _wgslsmith_dot_vec4_i32(-var_3.c, _wgslsmith_mod_vec4_i32(arg_1.b, vec4<i32>(var_2.b.x, var_3.b, var_2.b.x, global2[_wgslsmith_index_u32(var_3.d, 29u)]))), 1i, 1i), abs(var_2.b)), u_input.a.x, -33693i);
    return max(u_input.a, vec3<u32>(var_4.d, _wgslsmith_dot_vec2_u32((u_input.a.zy << (u_input.a.zy % vec2<u32>(32u))) & select(u_input.a.yz, vec2<u32>(0u, u_input.a.x), var_3.a.zw), _wgslsmith_sub_vec2_u32(u_input.a.zy, ~u_input.a.xy)), 56364u));
}

fn func_5(arg_0: vec4<f32>, arg_1: vec3<u32>, arg_2: u32) -> Struct_2 {
    let var_0 = global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(u_input.a.xx, ~max(vec2<u32>(u_input.a.x, 0u), u_input.a.yy)), vec2<u32>(countOneBits(20527u << (arg_1.x % 32u)), arg_2)), 29u)] << (~40971u % 32u);
    let var_1 = !vec4<bool>(any(vec3<bool>(true, all(vec2<bool>(true, true)), all(vec2<bool>(false, false)))), false, any(vec3<bool>(true, true, true)) && all(vec3<bool>(true, true, true)), false);
    let var_2 = Struct_3(0i, Struct_1(vec4<bool>(!(!var_1.x), true, !(2147483647i >= var_0), true), ~(-9703i & var_0), _wgslsmith_add_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, 1i, global2[_wgslsmith_index_u32(arg_2, 29u)], global2[_wgslsmith_index_u32(arg_1.x, 29u)]), vec4<i32>(global2[_wgslsmith_index_u32(arg_2, 29u)], 2147483647i, global2[_wgslsmith_index_u32(u_input.a.x, 29u)], -10802i) << (vec4<u32>(63708u, 41668u, 4652u, arg_2) % vec4<u32>(32u))), func_4(var_0)), abs(u_input.a.x), abs(var_0 & 2147483647i) ^ 9530i), -_wgslsmith_mod_i32(-global2[_wgslsmith_index_u32(1u, 29u)] & func_4(37643i).x, var_0 | -1i), Struct_1(select(!(!vec4<bool>(var_1.x, true, true, var_1.x)), var_1, !all(var_1.wx)), global2[_wgslsmith_index_u32(u_input.a.x, 29u)], firstLeadingBit(~(~vec4<i32>(var_0, -21433i, -1i, global2[_wgslsmith_index_u32(arg_1.x, 29u)]))), ~(1u & arg_2), _wgslsmith_div_i32(_wgslsmith_div_i32(1i, func_3(var_1)), global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 1u, 0u), arg_1), ~arg_1.x, arg_2), 29u)])), 1u);
    var var_3 = global3[_wgslsmith_index_u32(var_2.b.d, 18u)];
    var var_4 = Struct_3(~2147483647i, Struct_1(var_1, 0i, -vec4<i32>(firstTrailingBit(16943i), ~var_3.a.b, max(var_2.b.e, var_0), -26861i), ~_wgslsmith_mult_u32(min(0u, 57509u), ~u_input.a.x), -2147483647i), 38761i, var_2.b, arg_2);
    return Struct_2(arg_0.yxx, var_3.a.c);
}

fn func_1() -> Struct_2 {
    let var_0 = _wgslsmith_sub_i32(global2[_wgslsmith_index_u32(0u, 29u)], ~1i >> (u_input.a.x % 32u));
    let var_1 = max(1i, _wgslsmith_add_i32(_wgslsmith_div_i32(~global2[_wgslsmith_index_u32(u_input.a.x, 29u)], i32(-1i) * -2147483647i), -(~(-2147483647i)))) & ~((_wgslsmith_mult_i32(global2[_wgslsmith_index_u32(48367u, 29u)], 10786i) >> (firstLeadingBit(18753u) % 32u)) | (i32(-1i) * -4535i));
    var var_2 = func_5(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(697f, -1566f, -555f, 1457f))))), ~firstTrailingBit(firstLeadingBit(func_2(vec3<i32>(global2[_wgslsmith_index_u32(4294967295u, 29u)], -41476i, var_0), Struct_2(global0[_wgslsmith_index_u32(0u, 24u)], vec4<i32>(16894i, 0i, -36454i, -2147483647i)), -2147483647i))), ~1u);
    let var_3 = u_input.a.x;
    var_2 = func_5(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(309f, 1210f, 1591f, var_2.a.x), vec4<f32>(var_2.a.x, var_2.a.x, var_2.a.x, -806f)))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(vec4<f32>(var_2.a.x, var_2.a.x, var_2.a.x, var_2.a.x), vec4<f32>(var_2.a.x, var_2.a.x, var_2.a.x, var_2.a.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1559f, 289f, 1599f, var_2.a.x)))))) * vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2341f), 313f, var_2.a.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(-111f)))))), u_input.a, u_input.a.x);
    return Struct_2(global0[_wgslsmith_index_u32(49532u >> ((u_input.a.x << (u_input.a.x % 32u)) % 32u), 24u)], func_4(1i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_sub_i32(abs(~(-32550i)), 6821i);
    var var_1 = _wgslsmith_add_i32(countOneBits(~_wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(global2[_wgslsmith_index_u32(u_input.a.x, 29u)], var_0), vec2<i32>(var_0, global2[_wgslsmith_index_u32(1u, 29u)])), var_0)), -25182i);
    var var_2 = _wgslsmith_f_op_f32(trunc(-131f));
    var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(2360f + 611f))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -198f), _wgslsmith_f_op_f32(select(574f, -1000f, false))))));
    let var_3 = func_1();
    let var_4 = u_input.a.x;
    global0 = array<vec3<f32>, 24>();
    var var_5 = select(!select(vec3<bool>(var_3.a.x < 1760f, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), select(vec3<bool>(true, true, true), select(!select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(true, true, true)), vec3<bool>(false, any(vec2<bool>(false, true)), true), vec3<bool>(true, false, true)), !vec3<bool>(false, all(vec4<bool>(false, true, true, true)), true)), all(select(vec4<bool>(true, true, true, true), !select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, true), false), true)));
    var_5 = !(!(!(!select(vec3<bool>(var_5.x, var_5.x, false), vec3<bool>(false, false, var_5.x), vec3<bool>(true, var_5.x, var_5.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.a.zx, vec2<f32>(var_3.a.x, var_3.a.x), u_input.a.x, vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -560f), _wgslsmith_f_op_f32(-var_3.a.x), 604f));
}


struct Struct_1 {
    a: vec2<u32>,
    b: vec3<u32>,
    c: i32,
    d: vec4<i32>,
    e: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: u32,
    d: vec4<i32>,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: vec3<u32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 3> = array<f32, 3>(1930f, -1000f, 839f);

var<private> global1: Struct_1;

var<private> global2: Struct_4;

var<private> global3: Struct_3 = Struct_3(Struct_2(Struct_1(vec2<u32>(4294967295u, 70357u), vec3<u32>(25281u, 12017u, 85318u), -1i, vec4<i32>(0i, 8000i, 0i, 0i), vec2<bool>(true, true)), 1i), Struct_1(vec2<u32>(4294967295u, 0u), vec3<u32>(23384u, 0u, 23053u), 5334i, vec4<i32>(9398i, 2147483647i, 64919i, -1i), vec2<bool>(true, true)), 1u, vec4<i32>(i32(-2147483648), 29898i, 1i, 9548i));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3() -> vec2<u32> {
    var var_0 = !select(select(!(!vec3<bool>(global3.a.a.e.x, true, global3.b.e.x)), vec3<bool>(select(global1.e.x, false, true), select(true, global2.a.a.e.x, global2.a.a.e.x), true), !vec3<bool>(global2.a.a.e.x, global2.a.a.e.x, global1.e.x)), !vec3<bool>(true, global3.a.a.e.x && true, global3.b.e.x), vec3<bool>(any(!vec4<bool>(true, global3.a.a.e.x, global2.a.a.e.x, global3.b.e.x)), any(!global3.a.a.e), global2.a.a.e.x));
    var var_1 = vec2<f32>(_wgslsmith_div_f32(-259f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.a, global2.a.a.b.x), 3u)], _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(105148u, 3u)])))))), -212f);
    var var_2 = Struct_3(global3.a, global3.b, global2.a.a.b.x, global1.d);
    var var_3 = -657f;
    let var_4 = Struct_2(global2.a.a, _wgslsmith_clamp_i32(46134i, abs(-u_input.c), global2.a.a.c) | _wgslsmith_clamp_i32(var_2.a.a.c, global3.b.c, 12629i));
    return ~_wgslsmith_div_vec2_u32(global2.a.a.b.xz, select(global1.b.zx, ~countOneBits(vec2<u32>(global3.a.a.b.x, 13212u)), var_0.x));
}

fn func_2(arg_0: vec2<bool>) -> Struct_1 {
    var var_0 = abs(abs(global1.c) << (4294967295u % 32u));
    let var_1 = true;
    let var_2 = select(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(1u, 3u)]) + _wgslsmith_f_op_f32(f32(-1f) * -844f)))) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(1u, 3u)] + -1000f))), _wgslsmith_dot_vec4_u32(~vec4<u32>(20492u, 0u, global1.a.x, global1.a.x), vec4<u32>(1u ^ global3.a.a.a.x, max(u_input.a, global3.a.a.b.x), ~13008u, 0u)) < (u_input.a & firstTrailingBit(~u_input.b)), global1.e.x);
    let var_3 = Struct_4(global2.a);
    global1 = global2.a.a;
    return Struct_1(select(~func_3() ^ max(vec2<u32>(global2.a.a.a.x, 0u), vec2<u32>(57177u, global3.c)), ~(~var_3.a.a.b.yz), (_wgslsmith_mult_u32(1u, 57929u) >> (_wgslsmith_dot_vec3_u32(vec3<u32>(7960u, 0u, var_3.a.a.a.x), global3.a.a.b) % 32u)) < global3.b.b.x), ~(~vec3<u32>(_wgslsmith_sub_u32(743u, global2.a.a.a.x), countOneBits(62166u), select(global3.a.a.a.x, global2.a.a.b.x, global1.e.x))), -max(-_wgslsmith_dot_vec3_i32(vec3<i32>(-4372i, var_3.a.a.d.x, -2147483647i), vec3<i32>(global1.d.x, -4457i, global1.c)), min(max(0i, 2147483647i), var_3.a.b)), vec4<i32>(firstLeadingBit(1i), -2147483647i, max(global1.d.x, global2.a.a.d.x), ~(-2147483647i >> (global1.b.x % 32u))), select(global3.b.e, global3.b.e, !all(!vec2<bool>(global2.a.a.e.x, global1.e.x))));
}

fn func_1(arg_0: f32) -> Struct_1 {
    var var_0 = Struct_3(Struct_2(func_2(vec2<bool>(true && global2.a.a.e.x, global1.e.x)), _wgslsmith_dot_vec3_i32(vec3<i32>(-57547i, ~global1.c, -global3.b.c), ~vec3<i32>(u_input.c, u_input.c, global2.a.b))), global2.a.a, 0u ^ (((global3.c ^ 16871u) | 1u) ^ reverseBits(~u_input.b)), ~(-vec4<i32>(global1.c, global2.a.b, global1.d.x, -3075i) << (_wgslsmith_mult_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(5036u, 12514u, 17216u, 15845u), vec4<u32>(1u, u_input.b, 0u, 37460u)), vec4<u32>(u_input.a, global2.a.a.b.x, global2.a.a.a.x, global3.c) ^ vec4<u32>(1u, global3.a.a.a.x, 0u, u_input.b)) % vec4<u32>(32u))));
    let var_1 = true;
    var_0 = Struct_3(var_0.a, global2.a.a, ~reverseBits(firstTrailingBit(_wgslsmith_sub_u32(7009u, global3.b.b.x))), _wgslsmith_clamp_vec4_i32(firstLeadingBit(var_0.d), global1.d, var_0.d & _wgslsmith_sub_vec4_i32(var_0.a.a.d, vec4<i32>(-19481i, global3.a.b, -9461i, -1i))) >> (~select(vec4<u32>(global3.b.b.x, 69212u, global3.b.b.x, 4294967295u), vec4<u32>(14004u, 4294967295u, u_input.b, 1u) | vec4<u32>(0u, 1u, global3.a.a.b.x, var_0.a.a.a.x), global0[_wgslsmith_index_u32(global2.a.a.b.x, 3u)] > -1915f) % vec4<u32>(32u)));
    var var_2 = select(vec4<bool>(!(!var_1), true, !global3.b.e.x, var_0.c <= global3.a.a.b.x), select(vec4<bool>(global1.e.x, !all(vec2<bool>(false, true)), global2.a.a.e.x, func_2(vec2<bool>(global1.e.x, var_1)).e.x), select(vec4<bool>(true, true, true, true), vec4<bool>(false, global3.b.e.x, false, any(vec3<bool>(false, global2.a.a.e.x, false))), global1.a.x >= ~4294967295u), !(true && (arg_0 < -439f))), !var_0.b.e.x);
    var_2 = vec4<bool>(!(_wgslsmith_mod_u32(1u, 1u) <= (abs(10548u) & _wgslsmith_dot_vec3_u32(var_0.b.b, vec3<u32>(4294967295u, 0u, 1u)))), true, var_1, any(!select(vec4<bool>(false, false, var_1, false), vec4<bool>(true, var_0.b.e.x, global3.b.e.x, var_0.b.e.x), vec4<bool>(false, false, false, false))) & global2.a.a.e.x);
    return func_2(global3.a.a.e);
}

fn func_4(arg_0: i32, arg_1: Struct_1) -> Struct_2 {
    global2 = Struct_4(Struct_2(Struct_1(vec2<u32>(3840u, func_3().x), abs(vec3<u32>(global1.b.x, global2.a.a.a.x, 58588u) >> (arg_1.b % vec3<u32>(32u))), _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(global3.d.x, -1i, 1i, 0i), vec4<i32>(u_input.c, 12890i, global1.d.x, -1i)), 2147483647i), arg_1.d, !(!vec2<bool>(global2.a.a.e.x, true))), arg_0));
    var var_0 = _wgslsmith_f_op_f32(381f - -356f);
    global1 = func_1(_wgslsmith_f_op_f32(floor(312f)));
    global2 = Struct_4(global3.a);
    var var_1 = vec4<bool>(any(select(!(!vec2<bool>(false, global2.a.a.e.x)), vec2<bool>(select(false, global3.a.a.e.x, false), !arg_1.e.x), select(global3.b.e.x || false, !global1.e.x, global3.a.a.e.x))), arg_1.e.x, global2.a.a.e.x, !(!all(vec4<bool>(false, global2.a.a.e.x, global1.e.x, global2.a.a.e.x))));
    return global2.a;
}

fn func_5(arg_0: vec2<i32>, arg_1: Struct_4) -> Struct_1 {
    var var_0 = Struct_4(func_4(_wgslsmith_clamp_i32(-_wgslsmith_mult_i32(global3.b.d.x, global3.a.a.d.x), _wgslsmith_div_i32(firstTrailingBit(-18125i), -2147483647i >> (arg_1.a.a.a.x % 32u)), u_input.c), global2.a.a));
    var var_1 = arg_1.a.a;
    var var_2 = _wgslsmith_div_vec4_u32(reverseBits(vec4<u32>(~global2.a.a.b.x, var_0.a.a.b.x, abs(4294967295u), 1u) >> (firstLeadingBit(~vec4<u32>(40865u, 74039u, 4294967295u, arg_1.a.a.b.x)) % vec4<u32>(32u))), reverseBits(~_wgslsmith_add_vec4_u32(~vec4<u32>(12109u, var_0.a.a.a.x, 0u, arg_1.a.a.b.x), vec4<u32>(global2.a.a.b.x, var_1.b.x, 49407u, global1.b.x) & vec4<u32>(4294967295u, u_input.b, arg_1.a.a.a.x, global3.c))));
    var_2 = ~select(_wgslsmith_add_vec4_u32(_wgslsmith_mult_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(var_0.a.a.a.x, var_1.a.x, 0u, var_2.x), vec4<u32>(arg_1.a.a.b.x, 1u, 55286u, 28903u)), _wgslsmith_div_vec4_u32(vec4<u32>(15434u, 2655u, 4294967295u, 48837u), vec4<u32>(global2.a.a.b.x, 97819u, 1u, 38305u))), ~reverseBits(vec4<u32>(global3.b.a.x, global3.a.a.b.x, 34638u, u_input.a))), _wgslsmith_add_vec4_u32(max(vec4<u32>(0u, arg_1.a.a.a.x, global3.c, arg_1.a.a.a.x), vec4<u32>(global1.b.x, 5445u, 18929u, global3.a.a.a.x)) >> (vec4<u32>(0u, 1u, var_0.a.a.b.x, 1u) % vec4<u32>(32u)), ~vec4<u32>(var_2.x, var_1.b.x, 53173u, 0u) << (firstLeadingBit(vec4<u32>(u_input.a, 52677u, var_2.x, 111212u)) % vec4<u32>(32u))), select(select(vec4<bool>(var_1.e.x, global1.e.x, var_1.e.x, true), vec4<bool>(global1.e.x, false, var_1.e.x, var_0.a.a.e.x), true), !(!vec4<bool>(true, global3.b.e.x, false, global2.a.a.e.x)), vec4<bool>(false, true, false, all(arg_1.a.a.e))));
    let var_3 = var_0.a.a.e;
    return Struct_1(func_2(func_4(-26503i, func_1(global0[_wgslsmith_index_u32(44751u, 3u)])).a.e).a >> (var_0.a.a.a % vec2<u32>(32u)), global2.a.a.b, ~func_1(global0[_wgslsmith_index_u32(0u, 3u)]).d.x, vec4<i32>(global1.d.x, 33852i, ~0i, 25905i), global3.b.e);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = Struct_4(global3.a);
    let var_0 = Struct_2(func_5(reverseBits(firstLeadingBit(u_input.d) ^ (global2.a.a.d.zz << (vec2<u32>(0u, global3.c) % vec2<u32>(32u)))), Struct_4(func_4(_wgslsmith_mult_i32(2147483647i, global3.d.x), func_1(global0[_wgslsmith_index_u32(global2.a.a.b.x, 3u)])))), 1i);
    global1 = global2.a.a;
    var var_1 = global0[_wgslsmith_index_u32(func_5(vec2<i32>(u_input.c, _wgslsmith_dot_vec3_i32(global2.a.a.d.xxw, _wgslsmith_div_vec3_i32(vec3<i32>(global2.a.a.c, -2147483647i, 37060i), vec3<i32>(global3.d.x, global2.a.b, 1i)))), Struct_4(Struct_2(global2.a.a, _wgslsmith_dot_vec3_i32(-vec3<i32>(global2.a.b, -23834i, -14992i), _wgslsmith_clamp_vec3_i32(global1.d.wzy, vec3<i32>(u_input.d.x, -17265i, global1.c), vec3<i32>(13423i, global3.b.c, -9031i)))))).b.x, 3u)];
    global1 = Struct_1(vec2<u32>(_wgslsmith_dot_vec2_u32(~vec2<u32>(47038u, global1.a.x), ~(~global2.a.a.a)), 24515u), firstTrailingBit(~abs(var_0.a.b)) | ~var_0.a.b, -var_0.b, abs(_wgslsmith_add_vec4_i32(firstTrailingBit(-global2.a.a.d), max(max(var_0.a.d, var_0.a.d), var_0.a.d))), global2.a.a.e);
    let var_2 = global3.d.x;
    global1 = func_5(vec2<i32>(~reverseBits(u_input.c), 32911i), Struct_4(Struct_2(func_4(33561i, var_0.a).a, -var_0.b ^ -global2.a.a.d.x)));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(~_wgslsmith_sub_u32(~global3.c, global1.b.x), countOneBits(_wgslsmith_clamp_u32(global1.a.x, global2.a.a.b.x, 36759u)) & 1u, ~1u), vec4<u32>(~(~u_input.b), _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(~vec4<u32>(global3.a.a.b.x, 4294967295u, var_0.a.b.x, 137266u), firstLeadingBit(vec4<u32>(4294967295u, global1.b.x, var_0.a.a.x, u_input.b))), ~_wgslsmith_add_vec4_u32(vec4<u32>(16808u, var_0.a.b.x, 1u, 1u), vec4<u32>(47242u, global2.a.a.a.x, 38818u, var_0.a.a.x))), min(func_3().x, _wgslsmith_clamp_u32(~0u, _wgslsmith_sub_u32(6321u, 0u), global2.a.a.b.x)), 6749u), abs(vec3<u32>(_wgslsmith_sub_u32(global1.a.x, var_0.a.b.x) | 72567u, 2328u, _wgslsmith_div_u32(_wgslsmith_sub_u32(58605u, global3.c), _wgslsmith_mod_u32(u_input.b, var_0.a.b.x)))), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1070f) - 140f), global0[_wgslsmith_index_u32(1u, 3u)], 493f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(679f, global0[_wgslsmith_index_u32(37539u, 3u)]) + global0[_wgslsmith_index_u32(_wgslsmith_add_u32(30749u, var_0.a.b.x), 3u)])))));
}


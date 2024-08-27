struct Struct_1 {
    a: vec2<i32>,
    b: vec3<i32>,
    c: u32,
    d: vec3<f32>,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
    d: vec2<f32>,
}

struct Struct_4 {
    a: vec4<bool>,
    b: Struct_1,
    c: Struct_2,
    d: bool,
    e: vec4<i32>,
}

struct Struct_5 {
    a: vec4<f32>,
    b: vec3<i32>,
    c: vec4<i32>,
    d: vec2<u32>,
    e: Struct_4,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: vec3<i32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: f32,
    d: u32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 3> = array<vec2<u32>, 3>(vec2<u32>(4294967295u, 0u), vec2<u32>(1u, 60864u), vec2<u32>(103308u, 47203u));

var<private> global1: array<f32, 27>;

var<private> global2: Struct_3 = Struct_3(Struct_1(vec2<i32>(-1i, 8493i), vec3<i32>(i32(-2147483648), -35098i, 24247i), 27777u, vec3<f32>(194f, 183f, 1512f), false), 63645u, Struct_1(vec2<i32>(-1i, 1i), vec3<i32>(73964i, 23267i, 1i), 16183u, vec3<f32>(1724f, 1555f, 1258f), false), vec2<f32>(-1007f, -579f));

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec3<bool>) -> f32 {
    var var_0 = arg_0.zx;
    var var_1 = select(!select(!select(arg_0.yz, arg_0.yx, global2.a.e), arg_0.xz, arg_0.zy), select(arg_0.zz, !vec2<bool>(all(arg_0), !var_0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-978f)) + _wgslsmith_f_op_f32(exp2(global1[_wgslsmith_index_u32(20118u, 27u)]))) > _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.d.x, 27u)])), any(select(vec3<bool>(!arg_0.x, true, true), vec3<bool>(all(vec3<bool>(false, false, var_0.x)), true, u_input.b.x != 1i), select(!arg_0, vec3<bool>(true, false, global2.c.e), arg_0))));
    let var_2 = Struct_3(global2.c, 0u, global2.a, vec2<f32>(-1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(global2.a.d.x)))) * global2.a.d.x)));
    let var_3 = !all(select(!(!arg_0.zz), vec2<bool>(var_2.c.e, any(vec2<bool>(arg_0.x, arg_0.x))), all(vec2<bool>(false, true))));
    let var_4 = Struct_1(vec2<i32>(var_2.c.a.x, ~(~(-1i))), vec3<i32>(1i, _wgslsmith_mod_i32(27264i, select(abs(-2147483647i), var_2.a.a.x, global2.a.e)), var_2.a.a.x), ~global2.a.c, var_2.a.d, _wgslsmith_mod_i32(_wgslsmith_add_i32(_wgslsmith_mult_i32(global2.a.b.x, 2147483647i), _wgslsmith_clamp_i32(-2147483647i, 0i, -23129i)), firstTrailingBit(abs(global2.c.a.x))) < ~37478i);
    return _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.d.x ^ (~72579u & u_input.d.x), 27u)]);
}

fn func_4(arg_0: f32) -> u32 {
    var var_0 = Struct_5(vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(-874f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(386f - -696f)), _wgslsmith_f_op_f32(-global2.d.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_0, -952f, global2.a.e))))), -(~(vec3<i32>(-1i) * -u_input.c)), _wgslsmith_mult_vec4_i32(~(vec4<i32>(-40308i, u_input.c.x, u_input.b.x, global2.c.b.x) & -vec4<i32>(global2.c.a.x, -9665i, global2.c.b.x, u_input.b.x)), reverseBits(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.c.x, -1i, 4970i, -1i), -vec4<i32>(-2147483647i, 52827i, 0i, 7185i)))), vec2<u32>(countOneBits(_wgslsmith_mod_u32(4294967295u, global2.b >> (global2.a.c % 32u))), ~global2.b), Struct_4(!vec4<bool>(false, true, any(vec3<bool>(global2.a.e, true, true)), all(vec2<bool>(true, false))), global2.c, Struct_2(Struct_1(_wgslsmith_mod_vec2_i32(u_input.a, vec2<i32>(u_input.a.x, global2.c.b.x)), global2.a.b, global2.a.c, _wgslsmith_f_op_vec3_f32(-vec3<f32>(732f, -1081f, 689f)), false), global2.c), all(vec4<bool>(!global2.a.e, !global2.a.e, true, global2.c.e)), vec4<i32>(global2.a.a.x, max(-u_input.c.x, -1i), 0i, ~u_input.a.x & (1i | u_input.a.x))));
    var var_1 = true;
    let var_2 = vec3<u32>(global2.c.c, u_input.d.x << (select(34392u, var_0.e.b.c, true) % 32u), min(_wgslsmith_dot_vec4_u32((vec4<u32>(u_input.d.x, 53038u, 24564u, 19528u) << (vec4<u32>(4294967295u, var_0.e.c.a.c, u_input.d.x, global2.a.c) % vec4<u32>(32u))) >> (vec4<u32>(global2.c.c, var_0.d.x, u_input.d.x, 1u) % vec4<u32>(32u)), vec4<u32>(1u, 1u, ~var_0.d.x, _wgslsmith_mod_u32(var_0.d.x, u_input.d.x))), 36378u));
    var_0 = Struct_5(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(125f, -1770f, -626f, var_0.e.b.d.x) - _wgslsmith_f_op_vec4_f32(max(vec4<f32>(global1[_wgslsmith_index_u32(var_0.d.x, 27u)], -994f, global2.d.x, 760f), var_0.a)))))), select(vec3<i32>(u_input.a.x, -(~(-33786i)), 4182i), -vec3<i32>(u_input.a.x & u_input.b.x, firstTrailingBit(u_input.b.x), firstTrailingBit(-31180i)), any(!vec4<bool>(global2.c.e, var_0.e.d, var_0.e.c.b.e, global2.a.e)) & (true | all(var_0.e.a.zz))), var_0.e.e, vec2<u32>(var_0.d.x, (~global2.b ^ (u_input.d.x ^ var_0.e.b.c)) | var_2.x), var_0.e);
    return abs(1u);
}

fn func_2(arg_0: Struct_1, arg_1: bool, arg_2: i32) -> bool {
    global0 = array<vec2<u32>, 3>();
    global2 = Struct_3(Struct_1(reverseBits(~vec2<i32>(arg_2, u_input.c.x)), vec3<i32>(-1i) * -vec3<i32>(arg_0.b.x, -14373i, global2.a.a.x), func_4(_wgslsmith_f_op_f32(func_3(select(vec3<bool>(false, false, arg_1), vec3<bool>(true, false, false), vec3<bool>(arg_0.e, true, false))))), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1329f, _wgslsmith_f_op_f32(-arg_0.d.x), arg_0.d.x))), false), firstTrailingBit(39843u) | ~4294967295u, Struct_1(~(-arg_0.a) << (firstLeadingBit(vec2<u32>(13401u, u_input.d.x)) % vec2<u32>(32u)), select(_wgslsmith_mult_vec3_i32(vec3<i32>(2147483647i, 20847i, arg_2), vec3<i32>(0i, 21982i, global2.c.a.x)) >> (~vec3<u32>(14445u, 25412u, arg_0.c) % vec3<u32>(32u)), abs(u_input.b), select(!vec3<bool>(false, false, arg_0.e), select(vec3<bool>(false, global2.c.e, true), vec3<bool>(true, true, false), arg_0.e), global2.c.e && true)), global2.b << (~(~0u) % 32u), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global2.a.d - global2.a.d) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(681f, global2.d.x, global2.c.d.x), global2.a.d, vec3<bool>(global2.c.e, false, false)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global1[_wgslsmith_index_u32(u_input.d.x, 27u)], global1[_wgslsmith_index_u32(arg_0.c, 27u)], 901f), global2.c.d, vec3<bool>(arg_1, global2.c.e, arg_1))) - vec3<f32>(-335f, -475f, global1[_wgslsmith_index_u32(4930u, 27u)])), true)), all(vec3<bool>(!global2.c.e, true, true))), global2.d);
    global2 = Struct_3(arg_0, countOneBits(3886u), Struct_1(global2.c.a, global2.a.b, global2.c.c, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(trunc(arg_0.d.x)), 443f, 1167f)), all(select(select(vec4<bool>(false, true, arg_0.e, arg_1), vec4<bool>(arg_1, false, true, arg_0.e), vec4<bool>(true, arg_1, true, false)), select(vec4<bool>(arg_0.e, true, false, global2.c.e), vec4<bool>(false, true, true, true), false), select(vec4<bool>(arg_1, arg_1, false, arg_0.e), vec4<bool>(arg_0.e, arg_0.e, arg_0.e, true), vec4<bool>(arg_1, global2.c.e, arg_0.e, arg_0.e))))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(arg_0.d.yz * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global2.d))))));
    var var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.d.x, 1000f, _wgslsmith_f_op_f32(303f * global1[_wgslsmith_index_u32(global2.c.c, 27u)]), global2.a.d.x));
    let var_1 = Struct_5(vec4<f32>(_wgslsmith_f_op_f32(floor(var_0.x)), 472f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1000f + var_0.x), _wgslsmith_div_f32(global1[_wgslsmith_index_u32(1u, 27u)], global2.c.d.x))) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -879f)))), global1[_wgslsmith_index_u32(arg_0.c << ((_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.c, u_input.d.x), global0[_wgslsmith_index_u32(68558u, 3u)]) & ~u_input.d.x) % 32u), 27u)]), global2.c.b, vec4<i32>(-1i) * -(~(vec4<i32>(0i, -25802i, -1i, arg_0.b.x) | vec4<i32>(u_input.a.x, 51958i, arg_0.b.x, 24470i))), reverseBits(u_input.d.zz) >> (vec2<u32>(max(arg_0.c, abs(global2.a.c)), 0u) % vec2<u32>(32u)), Struct_4(vec4<bool>(all(vec2<bool>(true, arg_1)), all(vec2<bool>(arg_1, arg_1)), false, global2.a.e), arg_0, Struct_2(Struct_1(countOneBits(arg_0.b.xx), u_input.c, 27890u, _wgslsmith_div_vec3_f32(var_0.xxw, var_0.xwx), true), global2.a), true, ~_wgslsmith_div_vec4_i32(reverseBits(vec4<i32>(arg_2, u_input.b.x, -16812i, global2.a.a.x)), vec4<i32>(0i, 32953i, arg_0.a.x, u_input.a.x))));
    return true;
}

fn func_5(arg_0: Struct_4, arg_1: Struct_5, arg_2: bool) -> Struct_1 {
    global1 = array<f32, 27>();
    let var_0 = Struct_1(vec2<i32>(1i, u_input.a.x), ~(firstLeadingBit(firstLeadingBit(arg_1.e.e.yxy)) ^ (~global2.c.b << (vec3<u32>(1u, 0u, global2.a.c) % vec3<u32>(32u)))), _wgslsmith_add_u32(32688u, arg_1.e.b.c), arg_1.e.c.b.d, !arg_2);
    var var_1 = Struct_3(var_0, ~4294967295u, Struct_1(global2.a.b.xx, reverseBits(firstTrailingBit(-global2.c.b)), max(firstTrailingBit(25262u), 65021u), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(588f, arg_0.b.d.x, -1080f), _wgslsmith_div_vec3_f32(arg_0.b.d, arg_0.b.d))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_0.b.d.x, -157f, arg_1.a.x), vec3<f32>(arg_1.e.b.d.x, 635f, 484f), arg_0.a.zyz)) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.d.x, arg_0.c.b.d.x, arg_1.e.c.a.d.x), global2.c.d, vec3<bool>(true, arg_0.d, true)))))), all(vec2<bool>(true, arg_0.b.b.x >= arg_1.b.x))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-762f, _wgslsmith_f_op_f32(-arg_1.a.x))))));
    var var_2 = vec4<bool>(all(vec3<bool>(var_1.c.e, !(!arg_0.d), false)), true, arg_1.e.a.x, any(arg_1.e.a));
    var_1 = Struct_3(Struct_1(-vec2<i32>(firstLeadingBit(2147483647i), firstTrailingBit(u_input.c.x)), vec3<i32>(-1i) * -abs(global2.a.b), arg_1.d.x, _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(-arg_0.c.a.d.x), var_0.d.x, arg_1.e.b.d.x))), global2.c.e), abs(0u), Struct_1(arg_0.c.a.b.yy, select(vec3<i32>(1i, var_0.a.x, reverseBits(arg_0.e.x)), var_0.b, vec3<bool>(var_2.x || true, var_0.e, arg_1.e.c.a.c == 61874u)), 4294967295u, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(339f, arg_0.b.d.x, arg_0.b.d.x)) - vec3<f32>(arg_1.a.x, 924f, global1[_wgslsmith_index_u32(0u, 27u)])), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(1503f, -578f, 1474f))) * vec3<f32>(-140f, global1[_wgslsmith_index_u32(var_1.c.c, 27u)], var_0.d.x))), global2.a.e), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_0.d.x * arg_1.a.x))), -982f))));
    return var_1.c;
}

fn func_1(arg_0: Struct_4) -> bool {
    let var_0 = vec4<u32>(u_input.d.x, global2.b, ~(~_wgslsmith_sub_u32(~25068u, global2.a.c)), 0u);
    let var_1 = func_5(Struct_4(select(select(!arg_0.a, vec4<bool>(true, arg_0.d, arg_0.b.e, true), true), arg_0.a, vec4<bool>(false, false, !arg_0.d, func_2(Struct_1(vec2<i32>(global2.a.a.x, 27437i), vec3<i32>(-1i, -2147483647i, global2.c.b.x), global2.c.c, global2.c.d, global2.c.e), global2.c.e, global2.c.a.x))), global2.c, arg_0.c, true | global2.c.e, firstLeadingBit(min(vec4<i32>(u_input.a.x, -18483i, arg_0.b.a.x, 2147483647i), arg_0.e)) << (vec4<u32>(_wgslsmith_div_u32(var_0.x, 58270u), arg_0.b.c, _wgslsmith_sub_u32(36609u, 28632u), global2.a.c) % vec4<u32>(32u))), Struct_5(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-719f, global1[_wgslsmith_index_u32(global2.b, 27u)], arg_0.b.d.x, global2.c.d.x), vec4<f32>(-662f, 999f, 748f, -473f))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.c.a.d.x, global1[_wgslsmith_index_u32(8403u, 27u)], -401f, 2270f) + vec4<f32>(arg_0.c.b.d.x, -662f, global1[_wgslsmith_index_u32(0u, 27u)], global1[_wgslsmith_index_u32(0u, 27u)]))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1125f, -1201f, 887f, -105f))))), max(select(~arg_0.c.a.b, vec3<i32>(arg_0.b.b.x, 20619i, arg_0.e.x) ^ u_input.c, true), (u_input.c << (u_input.d % vec3<u32>(32u))) << (var_0.xyy % vec3<u32>(32u))), arg_0.e, (reverseBits(global0[_wgslsmith_index_u32(arg_0.c.a.c, 3u)]) | vec2<u32>(4294967295u, 1u)) << (firstTrailingBit(_wgslsmith_div_vec2_u32(global0[_wgslsmith_index_u32(arg_0.b.c, 3u)], var_0.wy)) % vec2<u32>(32u)), arg_0), !(!arg_0.b.e));
    let var_2 = 0u;
    var var_3 = 1067f;
    let var_4 = any(!vec3<bool>(true, false, var_1.e));
    return arg_0.c.a.e;
}

fn func_6(arg_0: f32, arg_1: i32, arg_2: Struct_2, arg_3: vec2<bool>) -> Struct_3 {
    let var_0 = Struct_3(Struct_1(min(-(~global2.a.b.xy), vec2<i32>(-4242i, _wgslsmith_mod_i32(arg_1, u_input.b.x))), u_input.b, func_5(Struct_4(!vec4<bool>(false, arg_3.x, true, arg_3.x), global2.a, Struct_2(global2.c, Struct_1(vec2<i32>(arg_1, 2147483647i), vec3<i32>(0i, arg_2.a.b.x, 17017i), 1u, arg_2.a.d, false)), true, vec4<i32>(arg_1, arg_1, arg_2.b.b.x, arg_1)), Struct_5(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global2.a.d.x, arg_0, global1[_wgslsmith_index_u32(18244u, 27u)], global2.a.d.x))), vec3<i32>(2147483647i, 0i, 0i), ~vec4<i32>(1i, u_input.a.x, global2.c.a.x, global2.c.a.x), vec2<u32>(4294967295u, global2.c.c), Struct_4(vec4<bool>(global2.c.e, arg_2.b.e, true, true), arg_2.a, arg_2, false, vec4<i32>(arg_2.b.b.x, global2.c.b.x, -2147483647i, 2147483647i))), false).c, global2.a.d, arg_2.b.e), _wgslsmith_dot_vec3_u32(vec3<u32>(select(28353u | u_input.d.x, u_input.d.x, true), _wgslsmith_sub_u32(arg_2.a.c, u_input.d.x), 4294967295u), ~_wgslsmith_add_vec3_u32(vec3<u32>(1u, 0u, 43114u), firstLeadingBit(u_input.d))), arg_2.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(global2.c.d.xy, global2.a.d.yy), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.b.d.x, 180f)), arg_2.a.d.yx), true))));
    var var_1 = func_5(Struct_4(select(!select(vec4<bool>(false, true, arg_2.a.e, true), vec4<bool>(arg_3.x, false, var_0.a.e, false), vec4<bool>(arg_3.x, arg_2.b.e, arg_3.x, arg_2.b.e)), select(select(vec4<bool>(true, arg_3.x, true, true), vec4<bool>(var_0.c.e, false, true, global2.c.e), false), select(vec4<bool>(arg_3.x, false, global2.a.e, true), vec4<bool>(true, false, false, true), vec4<bool>(true, arg_3.x, global2.c.e, arg_2.b.e)), func_1(Struct_4(vec4<bool>(global2.a.e, arg_2.b.e, var_0.c.e, var_0.a.e), Struct_1(vec2<i32>(-11960i, u_input.c.x), arg_2.a.b, arg_2.b.c, vec3<f32>(1000f, global2.d.x, var_0.c.d.x), global2.c.e), Struct_2(var_0.c, var_0.a), var_0.c.e, vec4<i32>(-1i, -2147483647i, arg_1, 8685i)))), vec4<bool>(arg_2.a.a.x <= arg_1, func_5(Struct_4(vec4<bool>(arg_3.x, global2.c.e, true, var_0.c.e), global2.a, Struct_2(Struct_1(vec2<i32>(arg_1, arg_1), u_input.c, 4294967295u, var_0.c.d, arg_2.b.e), Struct_1(vec2<i32>(u_input.c.x, global2.c.a.x), vec3<i32>(5092i, -4214i, arg_2.a.b.x), 24961u, var_0.c.d, global2.a.e)), global2.a.e, vec4<i32>(2147483647i, arg_1, -1i, 2147483647i)), Struct_5(vec4<f32>(-333f, arg_0, -919f, arg_2.a.d.x), vec3<i32>(global2.c.b.x, arg_2.a.a.x, 2147483647i), vec4<i32>(global2.c.b.x, arg_1, arg_2.b.b.x, -2147483647i), u_input.d.xy, Struct_4(vec4<bool>(var_0.a.e, true, true, var_0.a.e), global2.a, arg_2, arg_3.x, vec4<i32>(arg_2.b.b.x, var_0.c.a.x, arg_2.b.a.x, global2.c.a.x))), false).e, !arg_3.x, any(vec3<bool>(global2.a.e, arg_2.a.e, var_0.c.e)))), func_5(Struct_4(!vec4<bool>(true, var_0.c.e, arg_2.b.e, global2.c.e), var_0.c, arg_2, arg_3.x, _wgslsmith_add_vec4_i32(vec4<i32>(13961i, u_input.b.x, arg_2.a.a.x, -19617i), vec4<i32>(arg_1, arg_1, u_input.c.x, arg_1))), Struct_5(_wgslsmith_f_op_vec4_f32(vec4<f32>(681f, 415f, arg_0, -2394f) * vec4<f32>(1002f, -320f, 759f, 1000f)), vec3<i32>(arg_1, 5797i, u_input.b.x), min(vec4<i32>(-6294i, -2147483647i, u_input.c.x, 0i), vec4<i32>(2880i, var_0.c.a.x, 0i, u_input.a.x)), ~global0[_wgslsmith_index_u32(global2.b, 3u)], Struct_4(vec4<bool>(global2.a.e, arg_2.b.e, arg_2.b.e, arg_2.a.e), Struct_1(global2.a.a, vec3<i32>(76468i, 58739i, global2.a.b.x), global2.c.c, vec3<f32>(arg_2.a.d.x, -540f, arg_2.a.d.x), arg_2.b.e), arg_2, true, vec4<i32>(global2.c.b.x, arg_2.a.b.x, 2147483647i, global2.c.b.x))), (global2.c.b.x | arg_1) < ~2147483647i), Struct_2(global2.a, func_5(Struct_4(vec4<bool>(true, var_0.c.e, var_0.a.e, true), Struct_1(vec2<i32>(arg_1, -13566i), u_input.c, 20206u, vec3<f32>(arg_2.a.d.x, 720f, global2.c.d.x), true), Struct_2(var_0.c, var_0.a), arg_2.a.e, vec4<i32>(-26649i, global2.c.b.x, arg_2.b.a.x, global2.a.a.x)), Struct_5(vec4<f32>(var_0.d.x, -845f, 1695f, global1[_wgslsmith_index_u32(u_input.d.x, 27u)]), arg_2.b.b, vec4<i32>(global2.a.a.x, 33373i, 13713i, arg_2.a.a.x), u_input.d.xx, Struct_4(vec4<bool>(false, true, true, arg_3.x), Struct_1(arg_2.b.a, var_0.a.b, u_input.d.x, vec3<f32>(global1[_wgslsmith_index_u32(arg_2.a.c, 27u)], -1610f, arg_0), var_0.c.e), arg_2, true, vec4<i32>(arg_2.a.b.x, arg_2.b.a.x, -41390i, 52641i))), true)), arg_3.x, reverseBits(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b.x, arg_1, 70287i, -1i), vec4<i32>(var_0.c.b.x, -1i, 0i, arg_1)))), Struct_5(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1813f, 1363f, global1[_wgslsmith_index_u32(arg_2.b.c, 27u)], 1000f)) + _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global2.d.x, global1[_wgslsmith_index_u32(13419u, 27u)], 1065f, -373f)))) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(695f, -155f, 599f, 760f), vec4<f32>(832f, -1145f, arg_0, arg_0), !vec4<bool>(false, false, global2.a.e, true)))), select(_wgslsmith_clamp_vec3_i32(vec3<i32>(arg_2.b.b.x, u_input.c.x, var_0.c.b.x) & var_0.c.b, vec3<i32>(arg_2.a.b.x, u_input.a.x, u_input.a.x), min(u_input.b, global2.a.b)), max(vec3<i32>(arg_1, -1i, u_input.c.x), vec3<i32>(-53253i, 812i, -6542i)), select(vec3<bool>(false, true, true), vec3<bool>(true, var_0.c.e, global2.c.e), -136f < global1[_wgslsmith_index_u32(global2.b, 27u)])), ~(-select(vec4<i32>(74397i, var_0.c.b.x, -14053i, global2.a.a.x), vec4<i32>(var_0.c.b.x, arg_1, 0i, var_0.a.a.x), arg_3.x)), ~vec2<u32>(_wgslsmith_sub_u32(arg_2.a.c, u_input.d.x), global2.a.c), Struct_4(vec4<bool>(true, true, var_0.a.e, true), global2.a, arg_2, false, ~vec4<i32>(global2.a.a.x, arg_2.b.a.x, -36600i, u_input.b.x))), false);
    var var_2 = var_0;
    global1 = array<f32, 27>();
    var_2 = Struct_3(Struct_1(vec2<i32>(abs(var_1.a.x), -2147483647i), arg_2.b.b, 1u, _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(arg_2.a.d.x, arg_2.b.d.x, global2.c.d.x)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.b.d.x, var_2.c.d.x, arg_2.b.d.x)) - _wgslsmith_f_op_vec3_f32(var_1.d - vec3<f32>(var_2.a.d.x, arg_2.b.d.x, -161f))))), any(arg_3)), var_2.b | var_2.c.c, Struct_1(var_1.b.yy, vec3<i32>(_wgslsmith_clamp_i32(-38374i, ~global2.c.b.x, -18573i), _wgslsmith_mod_i32(select(-6252i, 2147483647i, false), -33407i), global2.a.b.x), var_0.a.c, global2.c.d, any(select(!vec4<bool>(true, global2.a.e, var_2.a.e, var_1.e), vec4<bool>(false, arg_3.x, arg_3.x, true), any(vec4<bool>(var_2.c.e, false, var_0.a.e, false))))), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-func_5(Struct_4(vec4<bool>(true, var_0.a.e, var_1.e, arg_3.x), arg_2.b, arg_2, true, vec4<i32>(var_2.a.b.x, var_1.b.x, 2147483647i, var_1.a.x)), Struct_5(vec4<f32>(var_2.c.d.x, global2.a.d.x, global1[_wgslsmith_index_u32(0u, 27u)], 1103f), u_input.b, vec4<i32>(var_1.b.x, u_input.b.x, 22155i, 1i), vec2<u32>(62082u, 41210u), Struct_4(vec4<bool>(false, var_0.a.e, var_0.a.e, false), global2.a, arg_2, arg_2.a.e, vec4<i32>(-8456i, u_input.c.x, 2147483647i, arg_1))), false).d.x), -256f), var_2.a.d.zx));
    return Struct_3(func_5(Struct_4(select(vec4<bool>(true, true, true, true), vec4<bool>(var_1.e, var_1.e, false, false), all(arg_3)), Struct_1(vec2<i32>(var_2.a.a.x, -40806i), abs(u_input.b), _wgslsmith_dot_vec3_u32(u_input.d, u_input.d), vec3<f32>(791f, global1[_wgslsmith_index_u32(var_1.c, 27u)], -454f), !var_2.a.e), Struct_2(arg_2.a, Struct_1(vec2<i32>(var_2.a.b.x, 2147483647i), u_input.c, 45780u, vec3<f32>(1533f, arg_2.b.d.x, arg_2.b.d.x), false)), all(vec3<bool>(var_2.c.e, global2.a.e, arg_3.x)), -vec4<i32>(2147483647i, var_1.b.x, var_2.a.a.x, -2147483647i)), Struct_5(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-513f, 206f, var_1.d.x, 1226f)), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-627f, var_2.d.x, 1025f, arg_2.b.d.x))), all(vec4<bool>(var_1.e, var_0.c.e, var_0.a.e, true)))), var_1.b, ~vec4<i32>(arg_2.a.b.x, -13179i, u_input.c.x, -12029i), vec2<u32>(4294967295u, global2.a.c), Struct_4(select(vec4<bool>(global2.a.e, false, false, true), vec4<bool>(true, arg_2.a.e, true, true), vec4<bool>(global2.c.e, true, global2.a.e, var_2.a.e)), Struct_1(vec2<i32>(-1i, -1i), vec3<i32>(var_0.c.b.x, 1i, u_input.b.x), var_0.a.c, var_0.a.d, false), arg_2, all(arg_3), vec4<i32>(global2.a.a.x, -15757i, 2147483647i, 30178i))), any(!vec4<bool>(true, global2.c.e, false, true))), 37703u, func_5(Struct_4(select(select(vec4<bool>(true, true, global2.a.e, global2.c.e), vec4<bool>(global2.a.e, false, var_2.c.e, true), vec4<bool>(var_0.a.e, var_2.a.e, var_2.c.e, arg_2.b.e)), !vec4<bool>(false, false, var_0.a.e, arg_3.x), any(vec4<bool>(var_1.e, var_0.a.e, var_0.a.e, var_0.a.e))), arg_2.a, arg_2, func_2(Struct_1(var_1.a, global2.c.b, 6986u, var_0.c.d, global2.c.e), true, 2147483647i & u_input.b.x), select(vec4<i32>(global2.c.b.x, var_2.a.a.x, -12972i, var_1.a.x) & vec4<i32>(36980i, 2630i, -11617i, -22815i), countOneBits(vec4<i32>(var_1.b.x, arg_2.b.a.x, var_2.a.b.x, var_0.c.a.x)), vec4<bool>(arg_3.x, true, false, false))), Struct_5(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1618f, 450f, -1000f, 1285f)) - vec4<f32>(-607f, 586f, -1000f, var_0.d.x)), arg_2.b.b, vec4<i32>(~global2.c.a.x, -55632i, countOneBits(var_2.c.b.x), -var_2.a.b.x), vec2<u32>(1u, 1u), Struct_4(!vec4<bool>(false, var_2.c.e, false, arg_2.b.e), Struct_1(var_2.c.b.zz, var_1.b, 1u, vec3<f32>(-294f, arg_2.b.d.x, 693f), arg_3.x), arg_2, var_0.a.e, min(vec4<i32>(1i, var_1.b.x, var_0.c.b.x, -2147483647i), vec4<i32>(var_0.c.a.x, 31327i, var_0.c.b.x, -16462i)))), func_2(Struct_1(_wgslsmith_add_vec2_i32(var_2.a.a, arg_2.b.b.xz), countOneBits(vec3<i32>(20939i, var_0.a.a.x, 20025i)), global2.c.c, var_2.c.d, !var_2.a.e), !all(vec2<bool>(true, arg_3.x)), -select(arg_1, -1i, true))), vec2<f32>(arg_2.a.d.x, func_5(Struct_4(!vec4<bool>(arg_3.x, var_0.c.e, true, global2.c.e), Struct_1(vec2<i32>(-16981i, arg_1), global2.c.b, arg_2.b.c, vec3<f32>(-782f, var_2.d.x, 1000f), true), arg_2, true, ~vec4<i32>(17367i, var_2.a.a.x, arg_1, 0i)), Struct_5(vec4<f32>(global2.c.d.x, var_0.d.x, 1286f, var_0.c.d.x), u_input.c, -vec4<i32>(0i, arg_1, u_input.b.x, arg_1), global0[_wgslsmith_index_u32(_wgslsmith_add_u32(9601u, var_2.b), 3u)], Struct_4(vec4<bool>(global2.a.e, true, true, true), Struct_1(vec2<i32>(var_1.a.x, 47237i), vec3<i32>(-1i, 1i, -2147483647i), u_input.d.x, arg_2.a.d, false), Struct_2(Struct_1(var_1.b.zy, global2.a.b, var_1.c, vec3<f32>(var_2.c.d.x, -1958f, 971f), false), Struct_1(u_input.b.zx, vec3<i32>(global2.c.a.x, -1i, -2147483647i), 37103u, vec3<f32>(global2.a.d.x, arg_0, arg_0), var_1.e)), true, vec4<i32>(arg_2.b.b.x, arg_2.b.a.x, 0i, 8741i))), !(!var_0.a.e)).d.x));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<f32, 27>();
    global2 = func_6(1986f, u_input.c.x, Struct_2(global2.c, global2.a), vec2<bool>(!(func_1(Struct_4(vec4<bool>(global2.a.e, true, false, global2.c.e), global2.c, Struct_2(global2.a, global2.c), global2.a.e, vec4<i32>(1i, 2147483647i, 2147483647i, 0i))) | (global2.c.e && true)), all(select(select(vec4<bool>(global2.c.e, global2.a.e, global2.c.e, global2.a.e), vec4<bool>(true, global2.a.e, true, false), vec4<bool>(true, global2.c.e, false, false)), !vec4<bool>(false, global2.c.e, false, global2.c.e), false))));
    var var_0 = ~1u;
    global2 = Struct_3(global2.a, abs(reverseBits(15436u)), global2.c, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-2751f, global1[_wgslsmith_index_u32(16787u & u_input.d.x, 27u)]) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(1773f, 998f), global2.d)))));
    var var_1 = Struct_5(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(u_input.d.x, 27u)], global1[_wgslsmith_index_u32(global2.a.c, 27u)], 646f, global2.d.x))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-658f, global2.c.d.x, 514f, 1264f))) - _wgslsmith_div_vec4_f32(vec4<f32>(global2.a.d.x, 1163f, global2.d.x, 1446f), vec4<f32>(-616f, global2.c.d.x, global2.d.x, global2.d.x)))))), select(-vec3<i32>(_wgslsmith_div_i32(global2.c.b.x, global2.c.a.x), u_input.b.x | global2.c.a.x, u_input.a.x), func_6(_wgslsmith_f_op_f32(trunc(global2.d.x)), -1i, Struct_2(Struct_1(vec2<i32>(1i, -4474i), u_input.b, 4294967295u, global2.c.d, true), Struct_1(vec2<i32>(-2147483647i, -1i), vec3<i32>(-27267i, -34294i, -36014i), u_input.d.x, vec3<f32>(global2.c.d.x, global2.c.d.x, global2.c.d.x), global2.a.e)), select(!vec2<bool>(false, global2.c.e), select(vec2<bool>(false, true), vec2<bool>(false, global2.c.e), global2.c.e), vec2<bool>(false, global2.a.e))).a.b, select(select(vec3<bool>(true, global2.c.e, global2.a.e), !vec3<bool>(false, true, global2.a.e), !vec3<bool>(true, false, global2.c.e)), select(select(vec3<bool>(false, true, false), vec3<bool>(false, global2.a.e, global2.c.e), vec3<bool>(global2.c.e, true, true)), select(vec3<bool>(global2.c.e, true, global2.a.e), vec3<bool>(false, global2.a.e, global2.c.e), vec3<bool>(false, false, true)), global2.c.e), false)), ~(_wgslsmith_mult_vec4_i32(vec4<i32>(-2147483647i, global2.c.a.x, 1i, u_input.b.x), _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.b.x, u_input.a.x, -4962i, -34779i), vec4<i32>(u_input.a.x, u_input.c.x, 8022i, global2.a.b.x), vec4<i32>(global2.a.a.x, global2.c.a.x, 65440i, 27965i))) ^ (vec4<i32>(50203i, global2.c.a.x, 1i, -111416i) << (~vec4<u32>(global2.b, 0u, global2.c.c, u_input.d.x) % vec4<u32>(32u)))), _wgslsmith_mult_vec2_u32(u_input.d.xz, ~vec2<u32>(~global2.c.c, min(40869u, u_input.d.x))), Struct_4(!select(select(vec4<bool>(global2.c.e, global2.a.e, false, false), vec4<bool>(true, global2.a.e, true, global2.a.e), global2.a.e), select(vec4<bool>(true, global2.c.e, false, global2.a.e), vec4<bool>(false, true, false, global2.c.e), vec4<bool>(true, global2.c.e, true, true)), vec4<bool>(true, false, true, global2.a.e)), func_5(Struct_4(vec4<bool>(true, global2.a.e, false, global2.c.e), global2.c, Struct_2(global2.a, Struct_1(u_input.a, u_input.b, global2.c.c, vec3<f32>(global2.c.d.x, global2.a.d.x, 542f), global2.c.e)), true, vec4<i32>(0i, 13200i, global2.a.a.x, u_input.c.x)), Struct_5(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(global1[_wgslsmith_index_u32(0u, 27u)], -1337f, global1[_wgslsmith_index_u32(4294967295u, 27u)], 582f), vec4<f32>(331f, 1816f, -737f, 234f))), countOneBits(global2.a.b), ~vec4<i32>(-22267i, 0i, u_input.b.x, 44209i), vec2<u32>(23500u, 48106u) << (global0[_wgslsmith_index_u32(11034u, 3u)] % vec2<u32>(32u)), Struct_4(vec4<bool>(global2.a.e, global2.a.e, global2.a.e, true), Struct_1(vec2<i32>(global2.a.a.x, -1i), u_input.c, 0u, global2.a.d, false), Struct_2(Struct_1(global2.c.a, vec3<i32>(global2.c.b.x, -1i, u_input.c.x), global2.c.c, vec3<f32>(310f, global1[_wgslsmith_index_u32(u_input.d.x, 27u)], global1[_wgslsmith_index_u32(global2.c.c, 27u)]), false), global2.a), false, vec4<i32>(0i, u_input.c.x, u_input.c.x, 1i))), true), Struct_2(Struct_1(vec2<i32>(0i, 0i), global2.c.b, u_input.d.x, _wgslsmith_f_op_vec3_f32(vec3<f32>(global1[_wgslsmith_index_u32(1u, 27u)], 952f, 1317f) + vec3<f32>(470f, -1398f, global1[_wgslsmith_index_u32(1u, 27u)])), true), global2.c), !(all(vec2<bool>(true, false)) & any(vec2<bool>(global2.a.e, global2.c.e))), -(vec4<i32>(global2.c.b.x, global2.c.a.x, 1i, 2147483647i) << (~vec4<u32>(1u, global2.b, 50613u, u_input.d.x) % vec4<u32>(32u)))));
    let x = u_input.a;
    s_output = StorageBuffer(~var_1.c, _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(~_wgslsmith_mult_vec4_i32(vec4<i32>(20766i, 0i, -2147483647i, global2.a.b.x), var_1.c), vec4<i32>(-u_input.c.x, _wgslsmith_clamp_i32(-49939i, var_1.c.x, -1i), global2.a.a.x, _wgslsmith_mult_i32(-1563i, u_input.b.x))), global2.a.a.x), 1000f, _wgslsmith_dot_vec2_u32(~_wgslsmith_sub_vec2_u32(_wgslsmith_div_vec2_u32(var_1.d, vec2<u32>(28969u, u_input.d.x)), var_1.d), var_1.d), vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec3<bool>(true, var_1.e.a.x, false)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -282f))));
}


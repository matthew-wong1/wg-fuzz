struct Struct_1 {
    a: f32,
    b: f32,
    c: vec3<i32>,
    d: vec2<f32>,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<u32>,
    d: vec2<bool>,
    e: vec3<bool>,
}

struct Struct_3 {
    a: vec2<i32>,
}

struct Struct_4 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: vec3<u32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: vec4<u32>;

var<private> global2: Struct_2 = Struct_2(Struct_1(439f, -536f, vec3<i32>(4315i, 37100i, -2177i), vec2<f32>(-941f, 852f), -544f), Struct_1(-1000f, 873f, vec3<i32>(i32(-2147483648), 0i, 1i), vec2<f32>(-3895f, 1657f), -800f), vec4<u32>(11800u, 64759u, 372u, 1u), vec2<bool>(false, true), vec3<bool>(true, true, false));

var<private> global3: array<Struct_3, 30>;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: f32) -> i32 {
    let var_0 = !vec4<bool>(true && any(select(vec4<bool>(false, global2.d.x, true, false), vec4<bool>(true, true, global2.e.x, global2.d.x), vec4<bool>(global2.d.x, global2.d.x, true, true))), false, any(global2.d), true);
    global0 = _wgslsmith_dot_vec4_i32(select(_wgslsmith_add_vec4_i32(vec4<i32>(global2.a.c.x, u_input.b.x, global2.b.c.x, -22093i), vec4<i32>(u_input.b.x, global2.a.c.x, global2.a.c.x, u_input.b.x)), ~(~vec4<i32>(-25507i, -24745i, global2.a.c.x, -11511i)), true), ~vec4<i32>(firstTrailingBit(global2.a.c.x), i32(-1i) * -2147483647i, _wgslsmith_add_i32(u_input.b.x, 19720i), _wgslsmith_dot_vec2_i32(u_input.b.yx, vec2<i32>(u_input.b.x, 20088i)))) ^ (u_input.b.x << (_wgslsmith_mult_u32(~_wgslsmith_add_u32(4294967295u, u_input.a.x), 1u) % 32u));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(global2.a.a * -324f), _wgslsmith_div_f32(global2.a.a, 1f), u_input.b, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(global2.a.d, _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(ceil(global2.a.d)), vec2<f32>(arg_0, arg_0))), any(select(vec3<bool>(false, true, var_0.x), vec3<bool>(true, global2.d.x, false), global2.d.x)))), _wgslsmith_f_op_vec2_f32(-global2.a.d), var_0.x)), global2.b.e);
    global1 = firstLeadingBit(u_input.d);
    var var_2 = _wgslsmith_sub_vec4_i32(vec4<i32>(min(global2.a.c.x, u_input.b.x), _wgslsmith_div_i32(abs(abs(0i)), global2.a.c.x), 2147483647i, (~24813i | var_1.c.x) | _wgslsmith_dot_vec2_i32(vec2<i32>(-29740i, u_input.b.x) | vec2<i32>(global2.a.c.x, var_1.c.x), ~var_1.c.yz)), vec4<i32>(var_1.c.x, abs(-32942i), global2.b.c.x << (_wgslsmith_dot_vec2_u32(max(vec2<u32>(u_input.c.x, global2.c.x), global1.zy), vec2<u32>(u_input.c.x, 4294967295u)) % 32u), select(_wgslsmith_div_i32(global2.b.c.x, global2.b.c.x), var_1.c.x, false)));
    return -4667i;
}

fn func_2(arg_0: vec3<f32>, arg_1: f32) -> Struct_1 {
    var var_0 = func_3(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(-arg_0.x))));
    global2 = Struct_2(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global2.b.a, _wgslsmith_f_op_f32(976f * arg_0.x))) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_0.x)))), -922f, vec3<i32>(select(u_input.b.x, u_input.b.x, global2.d.x) << (1u % 32u), 0i, -2147483647i), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -877f) * 1f), arg_1), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(696f)), arg_0.x, select(any(vec4<bool>(false, global2.e.x, global2.d.x, true)), true, global2.e.x)))), Struct_1(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.x, _wgslsmith_f_op_f32(select(arg_0.x, arg_1, true)))), global2.b.c, vec2<f32>(arg_0.x, global2.b.a), -522f), u_input.d, !global2.e.xz, global2.e);
    return Struct_1(arg_1, _wgslsmith_f_op_f32(arg_0.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(574f, _wgslsmith_f_op_f32(trunc(-835f)))))), reverseBits(min(vec3<i32>(_wgslsmith_mod_i32(-59362i, global2.a.c.x), _wgslsmith_add_i32(-1i, 2147483647i), -66641i), vec3<i32>(global2.a.c.x, 1i, i32(-1i) * -2147483647i))), _wgslsmith_f_op_vec2_f32(global2.a.d * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_0.xx + _wgslsmith_div_vec2_f32(global2.a.d, global2.a.d)) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(789f, 1343f) - vec2<f32>(-348f, global2.b.d.x)) + vec2<f32>(global2.a.b, global2.b.b)))), -1981f);
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_1) -> u32 {
    var var_0 = Struct_2(func_2(vec3<f32>(_wgslsmith_f_op_f32(-global2.a.b), arg_1.a, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-851f, -501f))), func_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.d.x, 1982f, arg_1.e) + _wgslsmith_f_op_vec3_f32(-arg_0.xwy)), arg_0.x).d.x), Struct_1(_wgslsmith_f_op_f32(-arg_1.d.x), -1000f, global2.b.c, vec2<f32>(_wgslsmith_f_op_f32(round(553f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(447f, global2.b.d.x)))), -231f), vec4<u32>(global1.x, _wgslsmith_div_u32(reverseBits(1u & u_input.c.x), firstLeadingBit(~1u)), firstLeadingBit(~(~global2.c.x)), 5553u), select(vec2<bool>(all(vec4<bool>(global2.e.x, global2.e.x, true, false)) && global2.d.x, true), select(select(!global2.d, select(vec2<bool>(global2.e.x, global2.d.x), vec2<bool>(global2.d.x, global2.e.x), global2.d), global2.e.x & global2.e.x), global2.e.yy, global2.d.x), true), global2.e);
    let var_1 = global3[_wgslsmith_index_u32(~(~(~0u)), 30u)];
    let var_2 = _wgslsmith_sub_vec2_u32(vec2<u32>(global1.x, (~global2.c.x & 1u) << (~(~1u) % 32u)), max(vec2<u32>(~global2.c.x, ~global2.c.x) << (select(var_0.c.wy, ~vec2<u32>(18209u, 55740u), true) % vec2<u32>(32u)), abs(~(vec2<u32>(0u, 0u) << (vec2<u32>(global1.x, 0u) % vec2<u32>(32u))))));
    var var_3 = _wgslsmith_sub_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(-u_input.b.x, firstTrailingBit(global2.a.c.x), arg_1.c.x, min(global2.a.c.x, arg_1.c.x)), max(vec4<i32>(u_input.b.x, 11711i, var_0.b.c.x, 2147483647i) ^ vec4<i32>(48736i, -2147483647i, 1i, arg_1.c.x), reverseBits(vec4<i32>(global2.b.c.x, u_input.b.x, 0i, u_input.b.x)))) & -min(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b.x, var_1.a.x, 2341i, arg_1.c.x), vec4<i32>(var_0.a.c.x, var_1.a.x, 42519i, var_1.a.x)), firstLeadingBit(vec4<i32>(0i, arg_1.c.x, arg_1.c.x, 2147483647i))), -firstTrailingBit(_wgslsmith_mult_vec4_i32(-vec4<i32>(global2.a.c.x, -27069i, 27885i, u_input.b.x), select(vec4<i32>(19371i, -41203i, u_input.b.x, 1i), vec4<i32>(1i, 2147483647i, 0i, global2.a.c.x), var_0.d.x))));
    let var_4 = select(vec3<bool>((~var_0.b.c.x <= _wgslsmith_div_i32(-2147483647i, 1i)) != var_0.e.x, all(select(select(vec3<bool>(true, false, true), var_0.e, vec3<bool>(var_0.e.x, false, true)), !var_0.e, false)), false), global2.e, var_0.e.x | var_0.e.x);
    return u_input.c.x;
}

fn func_5(arg_0: Struct_3, arg_1: bool, arg_2: u32) -> i32 {
    var var_0 = !vec2<bool>(false & arg_1, true);
    let var_1 = any(select(vec4<bool>(false, any(global2.e.yx), false, all(!vec3<bool>(global2.e.x, false, var_0.x))), vec4<bool>(!all(vec3<bool>(true, arg_1, false)), global2.e.x, all(!vec4<bool>(false, true, global2.e.x, arg_1)), any(!global2.e)), select(!select(vec4<bool>(true, arg_1, true, arg_1), vec4<bool>(arg_1, true, global2.e.x, var_0.x), arg_1), select(select(vec4<bool>(var_0.x, var_0.x, true, global2.d.x), vec4<bool>(false, arg_1, arg_1, false), vec4<bool>(global2.d.x, var_0.x, false, global2.e.x)), vec4<bool>(false, global2.e.x, true, var_0.x), global2.a.e > 1195f), !select(vec4<bool>(false, true, arg_1, true), vec4<bool>(var_0.x, false, false, false), vec4<bool>(global2.d.x, true, arg_1, var_0.x)))));
    let var_2 = _wgslsmith_mod_u32(global2.c.x, func_4(vec4<f32>(global2.a.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(364f, global2.a.b)) + _wgslsmith_f_op_f32(global2.a.a * global2.a.b)), _wgslsmith_f_op_f32(-528f * -1069f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global2.a.a * global2.b.a), -399f, true))), global2.b));
    return 33089i;
}

fn func_1(arg_0: i32, arg_1: i32) -> i32 {
    var var_0 = select(_wgslsmith_dot_vec4_u32(~global2.c, vec4<u32>(global1.x, ~4294967295u, max(global2.c.x | 1u, 4294967295u), global2.c.x)), _wgslsmith_clamp_u32(firstTrailingBit(~(~global2.c.x)), global2.c.x, global1.x), !global2.e.x);
    let var_1 = global2.b;
    let var_2 = vec4<i32>(-1i) * -vec4<i32>(2147483647i, u_input.b.x, max(firstLeadingBit(u_input.b.x), ~arg_1), var_1.c.x);
    var_0 = ~_wgslsmith_mult_u32(~global2.c.x, ~4294967295u);
    var var_3 = -240f;
    return -func_5(Struct_3(vec2<i32>(-16743i, -45024i) ^ (global2.b.c.zz | global2.a.c.xx)), true, _wgslsmith_sub_u32(func_4(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.b.e, -471f, -319f, global2.b.d.x) - vec4<f32>(var_1.d.x, 426f, -1117f, global2.b.d.x)), func_2(vec3<f32>(961f, 1740f, -1449f), global2.b.e)), global1.x));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_mod_i32(u_input.b.x, _wgslsmith_mod_i32(abs(-2147483647i), _wgslsmith_add_i32(-u_input.b.x, func_1(global2.b.c.x ^ -46097i, _wgslsmith_div_i32(u_input.b.x, u_input.b.x)))));
    global3 = array<Struct_3, 30>();
    var var_0 = global3[_wgslsmith_index_u32(~abs(_wgslsmith_sub_u32(1u, ~(~global1.x))), 30u)];
    let var_1 = Struct_2(global2.a, func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(global2.a.a, global2.a.e, 442f), vec3<f32>(1000f, global2.a.d.x, -652f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-464f, -1000f, -988f) + vec3<f32>(-1547f, global2.b.d.x, global2.b.b)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global2.a.d.x), -881f))), u_input.a, select(global2.e.xx, vec2<bool>(any(select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), global2.e)), false), false), !global2.e);
    global0 = _wgslsmith_div_i32(countOneBits(-1i), var_1.b.c.x);
    var var_2 = select(!vec4<bool>(var_1.d.x, true, var_1.d.x, global2.e.x), vec4<bool>(true, false, var_1.d.x | !(var_1.b.b <= global2.a.d.x), -16609i <= ~func_2(vec3<f32>(global2.b.a, global2.b.d.x, 400f), 1982f).c.x), !any(!var_1.e));
    var_0 = Struct_3(var_1.b.c.zy ^ -(~var_1.a.c.zx));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.a.a)))), ~global1.x);
}


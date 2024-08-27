struct Struct_1 {
    a: bool,
    b: vec4<i32>,
    c: i32,
    d: vec3<bool>,
    e: vec4<f32>,
}

struct Struct_2 {
    a: f32,
    b: vec3<f32>,
}

struct Struct_3 {
    a: u32,
    b: u32,
    c: Struct_2,
}

struct Struct_4 {
    a: vec3<u32>,
    b: f32,
    c: vec2<u32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec3<i32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 4> = array<Struct_1, 4>(Struct_1(true, vec4<i32>(2147483647i, -18354i, 7082i, 2043i), i32(-2147483648), vec3<bool>(false, true, false), vec4<f32>(860f, -121f, 918f, 408f)), Struct_1(true, vec4<i32>(-1i, 20677i, 53498i, i32(-2147483648)), -40420i, vec3<bool>(false, false, true), vec4<f32>(221f, 788f, 124f, -1065f)), Struct_1(false, vec4<i32>(-2339i, -1i, -16399i, 34789i), 0i, vec3<bool>(true, true, true), vec4<f32>(728f, -1527f, -421f, 888f)), Struct_1(true, vec4<i32>(-8962i, -1i, 0i, 2147483647i), -37730i, vec3<bool>(false, false, true), vec4<f32>(185f, 171f, 446f, 641f)));

var<private> global1: i32;

var<private> global2: Struct_2 = Struct_2(714f, vec3<f32>(-140f, 1215f, -683f));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: Struct_2) -> i32 {
    let var_0 = vec2<f32>(arg_0.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global2.a, _wgslsmith_f_op_f32(ceil(arg_0.b.x))))));
    global1 = _wgslsmith_sub_i32(~(-1i), _wgslsmith_dot_vec3_i32(select(u_input.c, u_input.c & u_input.c, any(vec4<bool>(false, true, false, true))), -(~u_input.c)) & _wgslsmith_sub_i32(-1i, _wgslsmith_add_i32(_wgslsmith_mult_i32(3807i, 0i), -2597i)));
    global0 = array<Struct_1, 4>();
    global0 = array<Struct_1, 4>();
    global2 = arg_0;
    return u_input.c.x;
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_4, arg_2: Struct_4, arg_3: vec2<u32>) -> f32 {
    global2 = Struct_2(307f, arg_2.d.e.wzw);
    let var_0 = abs(_wgslsmith_clamp_vec2_u32(max(vec2<u32>(1u, ~1u), ~arg_3), arg_3, ~vec2<u32>(abs(0u), _wgslsmith_dot_vec2_u32(arg_3, vec2<u32>(u_input.a.x, 4294967295u)))));
    global2 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.b) - arg_2.d.e.x)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1768f, arg_1.b, 253f) + arg_1.d.e.wzw))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_2.d.e.zxy * arg_1.d.e.zzw)))));
    let var_1 = Struct_2(arg_1.b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-144f, global2.a, arg_2.d.e.x), vec3<f32>(1097f, -433f, -292f))), _wgslsmith_f_op_vec3_f32(-global2.b), !arg_1.d.d.x))))));
    global0 = array<Struct_1, 4>();
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-477f + 1f))));
}

fn func_2(arg_0: u32, arg_1: f32, arg_2: Struct_2, arg_3: f32) -> f32 {
    global1 = u_input.e;
    global2 = arg_2;
    var var_0 = Struct_3(max(u_input.a.x ^ arg_0, 0u), ~11873u, Struct_2(arg_2.a, vec3<f32>(arg_3, arg_2.a, 270f)));
    var_0 = Struct_3(1u, ~arg_0, var_0.c);
    let var_1 = _wgslsmith_f_op_f32(func_4(vec3<i32>(38188i, firstLeadingBit(_wgslsmith_sub_i32(u_input.d, func_3(var_0.c))), abs(func_3(var_0.c))), Struct_4(min(min(~vec3<u32>(37876u, 1u, 0u), _wgslsmith_mod_vec3_u32(vec3<u32>(arg_0, 30199u, arg_0), vec3<u32>(4294967295u, arg_0, arg_0))), _wgslsmith_clamp_vec3_u32(~vec3<u32>(1u, var_0.a, u_input.a.x), _wgslsmith_mult_vec3_u32(vec3<u32>(var_0.a, 4645u, 12014u), vec3<u32>(0u, 78978u, 4294967295u)), ~vec3<u32>(41732u, arg_0, u_input.a.x))), _wgslsmith_f_op_f32(-arg_2.a), abs(vec2<u32>(var_0.a, 102760u)) ^ ~min(vec2<u32>(u_input.a.x, var_0.a), u_input.a), Struct_1(select(true, false, true) || true, vec4<i32>(1i, 0i, 1i, func_3(var_0.c)), 0i, vec3<bool>(true, true, true), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_1, -141f, var_0.c.b.x, arg_3)))))), Struct_4(~_wgslsmith_mod_vec3_u32(~vec3<u32>(4294967295u, 0u, 49479u), vec3<u32>(u_input.a.x, 100864u, 1u)), arg_1, firstTrailingBit(u_input.a), Struct_1(true || select(false, false, false), abs(-vec4<i32>(-19833i, u_input.d, u_input.b, u_input.c.x)), -9189i, select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), true)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_3, 252f, arg_2.b.x, arg_1))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, -1167f, arg_1, global2.a) - vec4<f32>(382f, global2.a, 564f, var_0.c.b.x))))), ~(~u_input.a)));
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_3), -1000f));
}

fn func_1() -> vec2<bool> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(366f - -107f));
    var var_1 = global0[_wgslsmith_index_u32(88066u, 4u)];
    let var_2 = Struct_2(-1000f, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(640f, var_1.e.x, global2.b.x) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1211f, -1000f, 144f))) * vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1174f), _wgslsmith_f_op_f32(func_2(u_input.a.x, var_1.e.x, Struct_2(global2.a, vec3<f32>(-871f, 582f, -637f)), -2829f)), 287f))));
    var var_3 = var_2;
    var var_4 = (~_wgslsmith_sub_vec3_u32(select(vec3<u32>(u_input.a.x, 9304u, 43901u), vec3<u32>(55768u, 17817u, 0u), var_1.d), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<u32>(4169u, 0u, 2173u))) >> (firstLeadingBit(~_wgslsmith_add_vec3_u32(vec3<u32>(33316u, 0u, u_input.a.x), vec3<u32>(u_input.a.x, 36077u, 1u))) % vec3<u32>(32u))) >> (vec3<u32>(u_input.a.x, firstLeadingBit(~u_input.a.x), ~(~(~u_input.a.x))) % vec3<u32>(32u));
    return select(select(var_1.d.zz, select(!var_1.d.zx, vec2<bool>(true, true), select(var_1.d.xy, vec2<bool>(var_1.a, var_1.d.x), var_1.d.x)), true), !select(var_1.d.xy, !var_1.d.zx, !var_1.a), !any(!vec2<bool>(false, var_1.d.x)));
}

fn func_5(arg_0: Struct_4, arg_1: vec2<bool>, arg_2: u32) -> Struct_2 {
    let var_0 = countOneBits(reverseBits(vec4<i32>(-4553i, u_input.b, arg_0.d.b.x & _wgslsmith_dot_vec4_i32(arg_0.d.b, arg_0.d.b), _wgslsmith_mod_i32(_wgslsmith_add_i32(u_input.b, arg_0.d.b.x), countOneBits(arg_0.d.b.x)))));
    global0 = array<Struct_1, 4>();
    var var_1 = _wgslsmith_f_op_f32(1716f - 221f);
    global2 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b)) + -725f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.d.e.x, global2.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -656f)), arg_0.d.e.x) - arg_0.d.e.wzy));
    var var_2 = Struct_3(~45055u >> (u_input.a.x % 32u), 30533u, Struct_2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1100f * arg_0.b) - -1700f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(2181f * -1000f))), arg_1.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global2.b + _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(arg_0.d.e.x, arg_0.d.e.x, global2.a)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.a, -1848f, global2.a)) + vec3<f32>(arg_0.b, -525f, arg_0.d.e.x)))));
    return Struct_2(arg_0.d.e.x, _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(var_2.c.b * _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(vec3<f32>(464f, global2.b.x, var_2.c.a), global2.b)))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, 460f, -1845f) + global2.b)))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(Struct_4(vec3<u32>(~1u, _wgslsmith_dot_vec3_u32(firstLeadingBit(vec3<u32>(4294967295u, u_input.a.x, 0u)), ~vec3<u32>(u_input.a.x, u_input.a.x, 4294967295u)), _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(u_input.a, vec2<u32>(u_input.a.x, u_input.a.x)), u_input.a.x)), _wgslsmith_f_op_f32(-global2.b.x), reverseBits(u_input.a), global0[_wgslsmith_index_u32(_wgslsmith_div_u32(1u, select(4294967295u, reverseBits(u_input.a.x), u_input.a.x < u_input.a.x)), 4u)]), func_1(), 1u);
    let var_1 = Struct_3(~_wgslsmith_dot_vec2_u32(vec2<u32>(~100085u, 1u), vec2<u32>(u_input.a.x >> (u_input.a.x % 32u), u_input.a.x)), 0u, func_5(Struct_4((vec3<u32>(4294967295u, 20900u, u_input.a.x) << (vec3<u32>(u_input.a.x, 7673u, 4294967295u) % vec3<u32>(32u))) & ~vec3<u32>(75964u, u_input.a.x, 4294967295u), _wgslsmith_f_op_f32(f32(-1f) * -522f), max(u_input.a, u_input.a), Struct_1(true, firstTrailingBit(vec4<i32>(u_input.c.x, u_input.e, u_input.b, u_input.c.x)), u_input.b, select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), true), vec4<f32>(-520f, var_0.b.x, global2.a, 1006f))), vec2<bool>(any(func_1()), all(vec3<bool>(false, false, true)) | true), u_input.a.x));
    let var_2 = ~min(u_input.c.zy, u_input.c.zz);
    let var_3 = select(select(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), vec3<bool>(any(vec3<bool>(true, false, false)), any(vec4<bool>(false, true, true, true)), true)), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), false), vec3<bool>(true, true, true), vec3<bool>(any(vec3<bool>(false, true, true)), true, true)), true), !(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), false);
    let x = u_input.a;
    s_output = StorageBuffer(var_1.c.a);
}


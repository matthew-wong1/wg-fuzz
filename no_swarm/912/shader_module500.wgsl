struct Struct_1 {
    a: f32,
    b: vec3<bool>,
    c: u32,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct Struct_3 {
    a: f32,
    b: vec2<u32>,
    c: vec2<f32>,
    d: Struct_2,
    e: i32,
}

struct Struct_4 {
    a: bool,
    b: bool,
}

struct Struct_5 {
    a: i32,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 30> = array<Struct_4, 30>(Struct_4(false, true), Struct_4(true, false), Struct_4(false, true), Struct_4(true, false), Struct_4(false, true), Struct_4(true, false), Struct_4(true, true), Struct_4(true, true), Struct_4(false, true), Struct_4(false, false), Struct_4(false, true), Struct_4(false, true), Struct_4(false, true), Struct_4(false, false), Struct_4(true, true), Struct_4(true, false), Struct_4(false, false), Struct_4(false, true), Struct_4(true, false), Struct_4(false, true), Struct_4(true, false), Struct_4(true, true), Struct_4(true, true), Struct_4(false, true), Struct_4(true, false), Struct_4(false, true), Struct_4(false, true), Struct_4(false, false), Struct_4(false, true), Struct_4(false, false));

var<private> global1: array<Struct_3, 6>;

var<private> global2: vec2<bool>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2, arg_1: bool, arg_2: vec4<bool>) -> vec4<f32> {
    var var_0 = _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(148f + _wgslsmith_div_f32(809f, -165f)) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(2600f * -826f), _wgslsmith_f_op_f32(abs(-179f)), true))), 1f)));
    var var_1 = global1[_wgslsmith_index_u32(min(1u, 1u), 6u)];
    global1 = array<Struct_3, 6>();
    global2 = arg_2.wx;
    var var_2 = any(!vec2<bool>(true, (var_1.e == 58442i) & arg_1));
    return _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1505f, var_1.c.x, 332f, var_1.a)), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-259f, var_1.c.x, var_1.c.x, var_1.a)))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, 615f, var_0.x, 210f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, -832f, 1184f, -1799f) * vec4<f32>(1000f, 209f, -1725f, var_0.x)))), false)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1000f, -552f, var_0.x, -186f), vec4<f32>(386f, var_1.a, 1401f, 999f), true))))), vec4<f32>(_wgslsmith_div_f32(2036f, var_0.x), var_0.x, var_1.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(1722f)))) + -121f)));
}

fn func_2(arg_0: vec2<f32>, arg_1: bool, arg_2: vec3<f32>) -> vec3<i32> {
    let var_0 = ~(~4294967295u);
    var var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(arg_0.x)), _wgslsmith_f_op_f32(arg_2.x - arg_2.x))) + _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(arg_0.x, arg_2.x), _wgslsmith_f_op_f32(ceil(-819f))))), arg_2.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_2.x)))))) - _wgslsmith_f_op_vec4_f32(func_3(Struct_2(_wgslsmith_sub_vec3_i32(vec3<i32>(0i, -3240i, u_input.a.x), countOneBits(vec3<i32>(1i, 2147483647i, u_input.a.x)))), arg_1, !vec4<bool>(arg_1, global2.x, !global2.x, !global2.x))));
    var var_2 = Struct_1(-1783f, !vec3<bool>(all(vec4<bool>(true, global2.x, global2.x, false)), all(select(vec2<bool>(true, true), vec2<bool>(true, arg_1), arg_1)), select(true, true, true)), select(~var_0, ~var_0, !(!all(vec2<bool>(false, false)))));
    let var_3 = Struct_5(61475i, Struct_1(-1445f, select(select(vec3<bool>(false, arg_1, var_2.b.x), select(vec3<bool>(true, false, global2.x), var_2.b, var_2.b.x), all(vec4<bool>(true, arg_1, false, global2.x))), vec3<bool>(true, true, true), all(!var_2.b)), ~var_0));
    var var_4 = Struct_2(-(~(vec3<i32>(0i, u_input.a.x, 2147483647i) | vec3<i32>(-29762i, 32290i, -18770i))) >> (_wgslsmith_mult_vec3_u32(vec3<u32>(var_3.b.c, 59945u, ~var_3.b.c), ~_wgslsmith_clamp_vec3_u32(vec3<u32>(var_2.c, var_2.c, 30537u), vec3<u32>(46871u, 56336u, var_3.b.c), vec3<u32>(var_2.c, var_0, var_3.b.c))) % vec3<u32>(32u)));
    return _wgslsmith_clamp_vec3_i32(countOneBits(_wgslsmith_mod_vec3_i32(vec3<i32>(2147483647i, -19897i, -40013i) >> (vec3<u32>(var_3.b.c, 21649u, 8618u) % vec3<u32>(32u)), var_4.a)), vec3<i32>(-1i) * -var_4.a, -_wgslsmith_mod_vec3_i32(_wgslsmith_mod_vec3_i32(var_4.a, var_4.a), ~var_4.a)) | var_4.a;
}

fn func_1(arg_0: f32, arg_1: Struct_5, arg_2: i32) -> bool {
    var var_0 = vec4<bool>(select(!(1i <= u_input.a.x), true, false), !(-1278f <= _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1000f + arg_0), _wgslsmith_f_op_f32(-arg_0)))), true, false);
    var_0 = vec4<bool>(true, arg_1.b.b.x, true, !(arg_1.b.c < ~0u));
    let var_1 = ~_wgslsmith_dot_vec2_i32(reverseBits(_wgslsmith_add_vec2_i32(u_input.a, vec2<i32>(1i, arg_1.a)) << (~vec2<u32>(14994u, 4294967295u) % vec2<u32>(32u))), ~(-(~vec2<i32>(u_input.c, arg_1.a))));
    var var_2 = Struct_2((vec3<i32>(arg_2, _wgslsmith_mult_i32(var_1, 1i), arg_2) & _wgslsmith_div_vec3_i32(func_2(vec2<f32>(-1741f, arg_1.b.a), arg_1.b.b.x, vec3<f32>(896f, arg_0, arg_0)), -vec3<i32>(arg_1.a, 1i, u_input.a.x))) >> (vec3<u32>(25991u, arg_1.b.c, 4299u) % vec3<u32>(32u)));
    global2 = select(vec2<bool>(true, !global2.x), !(!vec2<bool>(select(true, global2.x, false), var_0.x)), arg_1.b.b.x);
    return any(!select(vec2<bool>(all(vec3<bool>(true, global2.x, false)), any(var_0.xzx)), !vec2<bool>(var_0.x, true), !var_0.zx));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = vec2<bool>(any(vec4<bool>(global2.x || !global2.x, false, func_1(-1303f, Struct_5(-1i, Struct_1(1021f, vec3<bool>(global2.x, global2.x, global2.x), 47467u)), -1i), global2.x)), !global2.x);
    global1 = array<Struct_3, 6>();
    var var_0 = Struct_2(vec3<i32>(u_input.a.x, -40552i, min(firstLeadingBit(~2147483647i), _wgslsmith_clamp_i32(_wgslsmith_sub_i32(u_input.c, 1i), _wgslsmith_sub_i32(45822i, u_input.b.x), _wgslsmith_clamp_i32(-43366i, u_input.c, u_input.a.x)))));
    let var_1 = _wgslsmith_clamp_u32(min(~67702u, _wgslsmith_add_u32(min(1u, ~1u), 1029u)), 1u, 20900u);
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-130f, 111f, 501f, -817f), vec4<f32>(602f, -936f, 1000f, -888f)))))));
    global2 = !select(!select(select(vec2<bool>(true, global2.x), vec2<bool>(global2.x, false), global2.x), select(vec2<bool>(false, global2.x), vec2<bool>(false, global2.x), vec2<bool>(global2.x, global2.x)), vec2<bool>(global2.x, false)), select(select(vec2<bool>(true, global2.x), vec2<bool>(false, global2.x), vec2<bool>(true, true)), !select(vec2<bool>(false, global2.x), vec2<bool>(global2.x, global2.x), vec2<bool>(global2.x, false)), !select(global2.x, true, true)), global2.x);
    let var_3 = Struct_2(vec3<i32>(-(~(var_0.a.x << (14575u % 32u))), abs(var_0.a.x), ~_wgslsmith_div_i32(~22110i, 3204i)));
    let var_4 = abs(6706i);
    let x = u_input.a;
    s_output = StorageBuffer(var_0.a.x >> (var_1 % 32u), _wgslsmith_f_op_vec3_f32(-var_2.xwy));
}


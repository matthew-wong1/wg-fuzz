struct Struct_1 {
    a: f32,
    b: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
    d: Struct_2,
}

struct Struct_4 {
    a: bool,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_4,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 4> = array<vec3<u32>, 4>(vec3<u32>(1u, 64736u, 21635u), vec3<u32>(51187u, 5974u, 4294967295u), vec3<u32>(0u, 95187u, 1u), vec3<u32>(557u, 22486u, 0u));

var<private> global1: Struct_1 = Struct_1(1323f, vec4<f32>(-381f, -1232f, -1771f, -231f));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: vec3<f32>) -> vec3<i32> {
    let var_0 = vec2<bool>(44057i >= _wgslsmith_mult_i32(~(-25193i), u_input.b), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, u_input.b, _wgslsmith_mult_i32(-1i, u_input.b)), vec3<i32>(1i, 1i, 1i) << (global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(0u, u_input.a), 4u)] % vec3<u32>(32u))) >= (u_input.b << (_wgslsmith_mod_u32(1u, u_input.a) % 32u)));
    global1 = Struct_1(477f, vec4<f32>(arg_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global1.b.x))) - global1.b.x), _wgslsmith_div_f32(1000f, global1.b.x), global1.b.x));
    let var_1 = !all(!vec4<bool>(var_0.x, !var_0.x, var_0.x | false, true));
    global0 = array<vec3<u32>, 4>();
    let var_2 = Struct_2(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x * _wgslsmith_div_f32(arg_0.x, global1.b.x)) + global1.a), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, arg_0.x, 448f, global1.a))))), (vec3<i32>(1i, -u_input.b, u_input.b) & countOneBits(select(vec3<i32>(u_input.b, u_input.b, -1i), vec3<i32>(u_input.b, u_input.b, -1i), vec3<bool>(true, true, var_0.x)))) ^ (vec3<i32>(abs(u_input.b), -16315i, firstLeadingBit(u_input.b)) >> (global0[_wgslsmith_index_u32(0u, 4u)] % vec3<u32>(32u))), _wgslsmith_f_op_f32(step(461f, _wgslsmith_f_op_f32(-global1.a))));
    return -abs(-select(abs(var_2.b), -var_2.b, var_2.b.x >= var_2.b.x));
}

fn func_2() -> Struct_1 {
    global1 = Struct_1(_wgslsmith_div_f32(global1.a, 114f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(1934f - _wgslsmith_f_op_f32(min(1922f, global1.a))), 107f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(873f)))), _wgslsmith_f_op_f32(1542f + global1.b.x))));
    let var_0 = Struct_2(Struct_1(-1630f, global1.b), _wgslsmith_sub_vec3_i32(-func_3(vec3<f32>(global1.b.x, global1.b.x, global1.a)), _wgslsmith_sub_vec3_i32(_wgslsmith_mult_vec3_i32(-vec3<i32>(0i, -39157i, -32090i), ~vec3<i32>(0i, -5469i, -62459i)), vec3<i32>(-2147483647i, -59228i, -22482i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.b.x) * -177f)))));
    var var_1 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(2747f, _wgslsmith_f_op_f32(-global1.b.x))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(2585f, global1.b.x), _wgslsmith_f_op_vec2_f32(-var_0.a.b.xy)))) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(var_0.a.b.wz))), _wgslsmith_div_vec2_f32(var_0.a.b.yx, var_0.a.b.xy)))));
    let var_2 = Struct_5(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.a.a), _wgslsmith_f_op_f32(max(global1.a, var_0.a.a)))), _wgslsmith_f_op_vec4_f32(var_0.a.b * vec4<f32>(-734f, _wgslsmith_f_op_f32(f32(-1f) * -111f), var_1.x, _wgslsmith_f_op_f32(floor(531f))))), Struct_4(false | ((1u << (u_input.a % 32u)) > (u_input.a & u_input.a))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.a, var_1.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(global1.b.yz)) - _wgslsmith_f_op_vec2_f32(-global1.b.xz))), true)));
    var var_3 = vec4<i32>(-18698i, min(var_0.b.x, 41350i), u_input.b, ~var_0.b.x);
    return Struct_1(_wgslsmith_f_op_f32(-var_2.a.a), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(global1.b.x, var_0.a.a)), 513f)), _wgslsmith_f_op_f32(f32(-1f) * -1072f), var_0.c, _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(var_2.a.b.x, var_2.c.x)))) + _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-global1.b)))))));
}

fn func_4(arg_0: Struct_2, arg_1: bool) -> Struct_1 {
    let var_0 = Struct_3(func_2(), !(arg_0.c > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(448f - -814f) - _wgslsmith_f_op_f32(-arg_0.c))), func_2(), Struct_2(Struct_1(global1.a, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(global1.b * vec4<f32>(arg_0.a.b.x, -1676f, -739f, -130f)), global1.b)), select(firstLeadingBit(abs(arg_0.b)), -vec3<i32>(u_input.b, 38382i, 2147483647i) << (countOneBits(vec3<u32>(1u, u_input.a, 35938u)) % vec3<u32>(32u)), select(vec3<bool>(false, false, arg_1), select(vec3<bool>(false, false, arg_1), vec3<bool>(arg_1, false, arg_1), vec3<bool>(false, arg_1, arg_1)), vec3<bool>(arg_1, true, arg_1))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.b.x * global1.b.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-590f)), global1.a), !any(vec2<bool>(true, false))))));
    let var_1 = vec4<bool>(all(select(!select(vec2<bool>(arg_1, var_0.b), vec2<bool>(false, false), vec2<bool>(false, var_0.b)), !select(vec2<bool>(arg_1, false), vec2<bool>(false, false), true), vec2<bool>(any(vec2<bool>(arg_1, var_0.b)), var_0.b))), arg_0.a.a != _wgslsmith_f_op_f32(-arg_0.a.b.x), select(var_0.b, false, true), all(vec4<bool>(true, arg_1, true, var_0.b)) | !(1217f <= _wgslsmith_div_f32(arg_0.c, 1112f)));
    var var_2 = firstLeadingBit(abs(vec4<i32>(arg_0.b.x, var_0.d.b.x, firstTrailingBit(-1i), abs(-31389i)) | ~_wgslsmith_add_vec4_i32(vec4<i32>(u_input.b, var_0.d.b.x, 0i, arg_0.b.x), vec4<i32>(-47399i, u_input.b, 1i, -9553i))));
    let var_3 = 1005f;
    global1 = var_0.a;
    return arg_0.a;
}

fn func_1(arg_0: bool, arg_1: vec4<bool>) -> Struct_1 {
    let var_0 = global1.b.zw;
    global1 = Struct_1(_wgslsmith_f_op_f32(-global1.b.x), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.a, -1139f, var_0.x, 232f)), vec4<f32>(750f, -983f, var_0.x, global1.a)) + _wgslsmith_f_op_vec4_f32(ceil(global1.b))), _wgslsmith_f_op_vec4_f32(-global1.b))));
    global0 = array<vec3<u32>, 4>();
    var var_1 = vec3<i32>(~(~abs(40941i)), u_input.b, firstTrailingBit(-(u_input.b << (u_input.a % 32u)))) | -vec3<i32>(~(~43383i), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, -55041i) << (vec2<u32>(11231u, 55661u) % vec2<u32>(32u)), ~vec2<i32>(-109675i, -1i)), -2147483647i);
    global1 = func_4(Struct_2(func_2(), vec3<i32>(u_input.b, -(~u_input.b), -2147483647i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.b.x) - 1428f)), arg_1.x);
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<u32>, 4>();
    global1 = func_1(true, select(vec4<bool>(true, true, true, true), vec4<bool>(any(vec2<bool>(true, true)), true, !all(vec2<bool>(false, false)), true), any(vec4<bool>(true, true, true, true))));
    var var_0 = Struct_5(Struct_1(_wgslsmith_f_op_f32(global1.a + 763f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(274f, -503f, -100f, global1.b.x))))), Struct_4(all(!select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true), false))), global1.b.yw);
    let var_1 = Struct_5(func_1(!(!var_0.b.a) | var_0.b.a, vec4<bool>(any(vec4<bool>(var_0.b.a, var_0.b.a, false, var_0.b.a)), _wgslsmith_dot_vec3_i32(vec3<i32>(-12361i, u_input.b, -2147483647i), vec3<i32>(u_input.b, 58119i, u_input.b)) > min(2147483647i, u_input.b), !var_0.b.a, var_0.b.a)), var_0.b, vec2<f32>(670f, -186f));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_u32(~vec3<u32>(13571u, u_input.a, u_input.a), firstTrailingBit(firstTrailingBit(vec3<u32>(59239u, 11827u, u_input.a) >> (global0[_wgslsmith_index_u32(0u, 4u)] % vec3<u32>(32u))))), ~_wgslsmith_clamp_u32(reverseBits(_wgslsmith_mult_u32(34065u, 50375u)), 1u, 1334u), u_input.a);
}


struct Struct_1 {
    a: vec3<u32>,
    b: u32,
    c: bool,
    d: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: vec2<u32>,
    d: Struct_1,
    e: vec2<bool>,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_1,
    c: Struct_2,
    d: i32,
}

struct Struct_4 {
    a: vec2<i32>,
    b: vec2<i32>,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: i32,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<u32>,
    c: u32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 7> = array<vec4<i32>, 7>(vec4<i32>(43692i, 1i, 0i, -1i), vec4<i32>(-12108i, -46496i, 1i, -15445i), vec4<i32>(-23909i, -82206i, 2147483647i, -1i), vec4<i32>(-5127i, -1i, i32(-2147483648), 12916i), vec4<i32>(48795i, 2147483647i, 9242i, 26206i), vec4<i32>(-14674i, 0i, i32(-2147483648), -25931i), vec4<i32>(-1i, 18976i, 37556i, -29111i));

var<private> global1: array<vec3<f32>, 5>;

var<private> global2: array<vec2<f32>, 30>;

var<private> global3: vec3<f32> = vec3<f32>(-1002f, -171f, 454f);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: i32) -> bool {
    let var_0 = _wgslsmith_div_u32(~0u, reverseBits(u_input.e << (101232u % 32u)));
    var var_1 = select(select(select(select(vec2<bool>(true, true), vec2<bool>(false, true), true), select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true)), select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true))), _wgslsmith_div_i32(10238i, arg_0) <= 1i), select(vec2<bool>(all(vec4<bool>(false, true, true, true)), true), vec2<bool>(true, all(vec4<bool>(false, false, false, false))), true), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, all(vec4<bool>(false, false, true, true))))), !select(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true)), select(select(vec2<bool>(false, true), vec2<bool>(true, true), false), vec2<bool>(true, false), var_0 <= u_input.e), vec2<bool>(true, true)), false);
    let var_2 = Struct_1(vec3<u32>(_wgslsmith_sub_u32(~var_0, u_input.e), var_0 & _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 50474u, var_0, u_input.e), vec4<u32>(var_0, 4294967295u, var_0, var_0)), ~20808u), ~abs(_wgslsmith_dot_vec4_u32(vec4<u32>(17061u, var_0, 35286u, var_0), vec4<u32>(16109u, u_input.e, 4294967295u, u_input.e)))), 1u, false, _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-752f, -1599f, _wgslsmith_f_op_f32(-global3.x), global3.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(171f, global3.x, 1779f, -872f), vec4<f32>(global3.x, 1264f, global3.x, global3.x)))) * vec4<f32>(_wgslsmith_f_op_f32(floor(global3.x)), global3.x, _wgslsmith_f_op_f32(-global3.x), global3.x)))));
    var_1 = !(!(!(!select(vec2<bool>(var_1.x, var_1.x), vec2<bool>(var_1.x, false), var_1.x))));
    let var_3 = u_input.b.x;
    return true;
}

fn func_2() -> Struct_2 {
    var var_0 = Struct_4(u_input.b.yy, vec2<i32>(~(-(35730i << (u_input.e % 32u))), _wgslsmith_sub_i32(u_input.b.x, select(-58392i, -2147483647i, func_3(u_input.a)))), vec2<bool>(true, any(vec2<bool>(true, func_3(-1i)))));
    var var_1 = countOneBits(20842i);
    let var_2 = Struct_3(vec2<u32>(4294967295u, 83059u ^ _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.e, u_input.e) | vec2<u32>(4294967295u, u_input.e), max(vec2<u32>(u_input.e, 0u), vec2<u32>(u_input.e, 46130u)))), Struct_1(max(vec3<u32>(u_input.e, u_input.e, min(u_input.e, u_input.e)), vec3<u32>(abs(69456u), reverseBits(u_input.e), 37962u)), 1u >> (~u_input.e % 32u), false, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(max(1168f, global3.x)), global3.x, _wgslsmith_f_op_f32(select(-680f, global3.x, true)), -822f))), Struct_2(Struct_1(vec3<u32>(0u, u_input.e, reverseBits(u_input.e)), select(1u, 4294967295u, var_0.c.x) << (u_input.e % 32u), any(select(vec3<bool>(var_0.c.x, true, true), vec3<bool>(var_0.c.x, var_0.c.x, false), var_0.c.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(global3.x, -106f, global3.x, global3.x), vec4<f32>(global3.x, global3.x, 1338f, 590f))))), all(vec4<bool>(var_0.c.x, any(vec3<bool>(var_0.c.x, var_0.c.x, var_0.c.x)), false, !var_0.c.x)), _wgslsmith_add_vec2_u32(_wgslsmith_add_vec2_u32(abs(vec2<u32>(u_input.e, 1u)), abs(vec2<u32>(102039u, 1u))), ~(vec2<u32>(u_input.e, 1u) << (vec2<u32>(u_input.e, u_input.e) % vec2<u32>(32u)))), Struct_1(~select(vec3<u32>(u_input.e, u_input.e, 1u), vec3<u32>(4294967295u, 0u, u_input.e), vec3<bool>(var_0.c.x, var_0.c.x, var_0.c.x)), 89180u, var_0.c.x, _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(225f, global3.x, global3.x, global3.x))))), !vec2<bool>(true, !var_0.c.x)), 2147483647i);
    var var_3 = false;
    let var_4 = _wgslsmith_sub_i32(var_0.a.x, 13700i);
    return var_2.c;
}

fn func_4(arg_0: i32, arg_1: f32, arg_2: Struct_2) -> Struct_4 {
    let var_0 = Struct_3(arg_2.c, Struct_1(arg_2.d.a | arg_2.d.a, 1u, arg_2.e.x, _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(trunc(arg_2.d.d)), vec4<f32>(-635f, arg_1, global3.x, arg_1))), arg_2.d.d))), func_2(), i32(-1i) * -2147483647i);
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global3.x))), -2087f, all(arg_2.e))))) + _wgslsmith_f_op_f32(min(arg_1, -357f)));
    global2 = array<vec2<f32>, 30>();
    return Struct_4(vec2<i32>(var_0.d, i32(-1i) * -1i), select(vec2<i32>(var_0.d, -abs(var_0.d)), firstTrailingBit(max(u_input.b.zy, vec2<i32>(u_input.d.x, var_0.d)) >> (firstLeadingBit(vec2<u32>(1u, var_0.a.x)) % vec2<u32>(32u))), true | select(arg_2.d.c, var_0.c.d.c, any(vec3<bool>(false, true, true)))), !(!var_0.c.e));
}

fn func_1(arg_0: Struct_4, arg_1: bool) -> Struct_4 {
    global3 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.x)), global3.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(785f + global3.x))));
    var var_0 = u_input.d.xy;
    let var_1 = arg_0;
    global1 = array<vec3<f32>, 5>();
    let var_2 = _wgslsmith_dot_vec3_i32(u_input.b.yyx, vec3<i32>(0i, 13754i, arg_0.a.x));
    return func_4(-2147483647i, global3.x, func_2());
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global3.xx;
    var var_1 = firstTrailingBit(firstLeadingBit(~abs(abs(vec4<i32>(u_input.b.x, 2147483647i, u_input.a, 2147483647i)))));
    let var_2 = func_1(Struct_4(var_1.zz, -(~vec2<i32>(-10913i, var_1.x)), !select(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false)), vec2<bool>(true, true), true)), ((u_input.e >= 1u) != true) == true);
    global2 = array<vec2<f32>, 30>();
    var_1 = ~(-select(countOneBits(vec4<i32>(-3310i, var_1.x, var_2.a.x, var_1.x)), vec4<i32>(max(var_2.b.x, var_2.a.x), 0i, var_2.a.x, _wgslsmith_mult_i32(var_1.x, var_2.a.x)), func_4(countOneBits(var_1.x), -1441f, func_2()).c.x));
    let var_3 = func_2().d;
    var var_4 = func_2();
    var var_5 = _wgslsmith_f_op_vec4_f32(abs(var_4.d.d));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(-154f)))), -909f, -648f), vec3<u32>(u_input.e, var_3.b, 1u), ~reverseBits(_wgslsmith_mult_u32(1u, firstTrailingBit(u_input.e))), max(-abs(vec4<i32>(var_1.x, -33196i, 37627i, var_2.b.x)), -global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.e, 1u), 7u)]) << ((select(vec4<u32>(u_input.e, 1u, 23668u, u_input.e) | vec4<u32>(4294967295u, var_4.c.x, 9873u, u_input.e), _wgslsmith_mult_vec4_u32(vec4<u32>(0u, var_4.a.b, 0u, u_input.e), vec4<u32>(51924u, 4294967295u, 5276u, u_input.e)), !vec4<bool>(var_4.b, var_2.c.x, var_4.e.x, var_4.a.c)) & vec4<u32>(_wgslsmith_dot_vec3_u32(var_3.a, vec3<u32>(u_input.e, var_4.c.x, u_input.e)), 0u, 4294967295u, ~var_4.d.a.x)) % vec4<u32>(32u)));
}


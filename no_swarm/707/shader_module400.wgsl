struct Struct_1 {
    a: i32,
    b: bool,
    c: vec2<i32>,
    d: vec2<bool>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec4<f32>,
    c: Struct_1,
    d: vec2<f32>,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<vec3<u32>, 32> = array<vec3<u32>, 32>(vec3<u32>(4294967295u, 4294967295u, 1u), vec3<u32>(43472u, 44212u, 1u), vec3<u32>(51630u, 16795u, 1u), vec3<u32>(4294967295u, 37846u, 0u), vec3<u32>(4294967295u, 32055u, 2490u), vec3<u32>(31882u, 55249u, 1u), vec3<u32>(57345u, 70960u, 1u), vec3<u32>(4294967295u, 54867u, 36998u), vec3<u32>(77154u, 42566u, 16581u), vec3<u32>(4294967295u, 4294967295u, 13214u), vec3<u32>(0u, 14761u, 4294967295u), vec3<u32>(33193u, 18013u, 0u), vec3<u32>(4294967295u, 48538u, 7755u), vec3<u32>(3175u, 51177u, 4294967295u), vec3<u32>(64218u, 19419u, 1u), vec3<u32>(1u, 1u, 14772u), vec3<u32>(0u, 21480u, 4294967295u), vec3<u32>(35696u, 15335u, 1u), vec3<u32>(4294967295u, 21754u, 19760u), vec3<u32>(70615u, 24167u, 1u), vec3<u32>(0u, 0u, 81190u), vec3<u32>(0u, 4294967295u, 0u), vec3<u32>(9898u, 47159u, 179423u), vec3<u32>(3138u, 10751u, 84641u), vec3<u32>(15946u, 1u, 4294967295u), vec3<u32>(43791u, 14685u, 1u), vec3<u32>(0u, 1u, 0u), vec3<u32>(0u, 4294967295u, 13466u), vec3<u32>(21587u, 39860u, 11762u), vec3<u32>(0u, 3175u, 22876u), vec3<u32>(1u, 0u, 1u), vec3<u32>(17121u, 76236u, 44642u));

var<private> global2: Struct_2 = Struct_2(vec3<u32>(3742u, 13768u, 1u), vec4<f32>(310f, -310f, 1080f, 2836f), Struct_1(-1i, false, vec2<i32>(23548i, 1i), vec2<bool>(true, true)), vec2<f32>(1375f, 728f), vec4<i32>(2147483647i, 0i, -27052i, -45807i));

var<private> global3: array<Struct_1, 8>;

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3(arg_0: Struct_1, arg_1: bool) -> i32 {
    global1 = array<vec3<u32>, 32>();
    global3 = array<Struct_1, 8>();
    var var_0 = _wgslsmith_sub_vec3_i32(_wgslsmith_add_vec3_i32(-global2.e.zxw, firstLeadingBit(abs(vec3<i32>(2147483647i, arg_0.a, arg_0.a))) >> (vec3<u32>(9366u, global2.a.x, global2.a.x) % vec3<u32>(32u))), -(~global2.e.yzw));
    var var_1 = select(select(global2.c.d, vec2<bool>(all(!vec3<bool>(arg_0.d.x, true, true)), global2.c.b), !vec2<bool>(u_input.a.x >= -3767i, all(vec4<bool>(arg_0.d.x, true, arg_0.b, false)))), !(!global2.c.d), select(global2.c.d, !(!global2.c.d), true));
    let var_2 = Struct_2(abs(vec3<u32>(global2.a.x, 4294967295u, _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.b, 0u, global2.a.x, 108275u), ~vec4<u32>(38560u, global2.a.x, 8476u, 442u)))), vec4<f32>(global2.b.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-689f, global2.d.x))), -864f)), _wgslsmith_f_op_f32(-global2.b.x), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global2.b.x)))))), Struct_1(-2147483647i, select(true, arg_0.b, -166f > _wgslsmith_f_op_f32(ceil(870f))), vec2<i32>(_wgslsmith_mod_i32(arg_0.c.x, -1i) & -7793i, _wgslsmith_dot_vec2_i32(~vec2<i32>(-2147483647i, arg_0.a), firstLeadingBit(arg_0.c))), global2.c.d), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global2.d)), _wgslsmith_add_vec4_i32(abs(global2.e) << (_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b, 1u, 8185u, 15059u), ~vec4<u32>(global2.a.x, 4294967295u, 94949u, u_input.b)) % vec4<u32>(32u)), global2.e));
    return u_input.a.x;
}

fn func_2() -> Struct_2 {
    var var_0 = 800f;
    let var_1 = firstLeadingBit(~vec2<u32>(4294967295u, u_input.b));
    global3 = array<Struct_1, 8>();
    var var_2 = vec3<i32>(~(-2147483647i), _wgslsmith_div_i32(43349i, _wgslsmith_mod_i32(-select(global2.c.a, 57039i, true), _wgslsmith_sub_i32(0i, func_3(global2.c, false)))), u_input.a.x);
    let var_3 = vec2<bool>(!global2.c.d.x, true);
    return Struct_2(vec3<u32>(~(~var_1.x) & var_1.x, var_1.x, ~(~var_1.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global2.d.x))), 896f, global2.b.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global2.b.x * global2.b.x), global2.d.x))) + _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(global2.b * vec4<f32>(-581f, -275f, global2.b.x, -1324f)), _wgslsmith_f_op_vec4_f32(-global2.b)))))), Struct_1(global2.c.c.x, any(vec4<bool>(true, 727f != global2.d.x, true, var_3.x)), vec2<i32>(global2.e.x, func_3(global2.c, all(vec4<bool>(var_3.x, var_3.x, true, true)))), vec2<bool>(all(select(vec4<bool>(true, false, var_3.x, global2.c.b), vec4<bool>(true, false, var_3.x, false), true)), true)), global2.b.ww, _wgslsmith_mult_vec4_i32(global2.e << (countOneBits(~vec4<u32>(1u, u_input.b, var_1.x, 56204u)) % vec4<u32>(32u)), vec4<i32>(~_wgslsmith_dot_vec2_i32(vec2<i32>(0i, 0i), u_input.a), _wgslsmith_div_i32(1i, var_2.x), ~countOneBits(var_2.x), _wgslsmith_mod_i32(i32(-1i) * -2768i, u_input.a.x))));
}

fn func_4(arg_0: i32, arg_1: Struct_2) -> Struct_1 {
    global2 = arg_1;
    global1 = array<vec3<u32>, 32>();
    let var_0 = ~global2.a;
    global1 = array<vec3<u32>, 32>();
    var var_1 = ~abs(vec3<u32>(70481u, u_input.b, ~max(var_0.x, u_input.b)));
    return global3[_wgslsmith_index_u32(~global2.a.x, 8u)];
}

fn func_5(arg_0: i32, arg_1: bool, arg_2: Struct_1, arg_3: bool) -> Struct_1 {
    var var_0 = Struct_2(~vec3<u32>(~46749u ^ (u_input.b & 50669u), ~(0u & u_input.b), global2.a.x), global2.b, Struct_1(arg_2.a, true, vec2<i32>(-1i) * -(~global2.e.xx), !(!(!global2.c.d))), vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global2.d.x + _wgslsmith_f_op_f32(-global2.d.x)))), -1000f), -global2.e);
    var var_1 = Struct_1(22219i, any(!vec4<bool>(true, true || var_0.c.d.x, true, true)), vec2<i32>(_wgslsmith_mult_i32(arg_0, func_2().e.x), -84147i), func_2().c.d);
    var var_2 = func_2().e.yww;
    global2 = Struct_2(~((~global2.a >> (vec3<u32>(var_0.a.x, u_input.b, global2.a.x) % vec3<u32>(32u))) | func_2().a), global2.b, arg_2, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1088f, var_0.d.x) - vec2<f32>(var_0.b.x, -883f))))), _wgslsmith_sub_vec4_i32(min(var_0.e, global2.e) << (~(~vec4<u32>(var_0.a.x, global2.a.x, global2.a.x, var_0.a.x)) % vec4<u32>(32u)), global2.e));
    let var_3 = vec2<u32>(_wgslsmith_mult_u32(u_input.b, min(u_input.b, ~36944u)), ~countOneBits(~var_0.a.x));
    return func_4(0i, Struct_2(global2.a, global2.b, var_0.c, _wgslsmith_f_op_vec2_f32(-var_0.d), ~vec4<i32>(arg_0, -45499i, var_0.e.x, var_0.c.a) | vec4<i32>(global2.c.c.x, _wgslsmith_sub_i32(1i, u_input.a.x), -64952i, min(-876i, -1i))));
}

fn func_1() -> Struct_1 {
    var var_0 = Struct_2(vec3<u32>(~52142u, 1u, 4294967295u), global2.b, func_5(global2.e.x, true, func_4(-_wgslsmith_mult_i32(u_input.a.x, 34447i), func_2()), all(vec4<bool>(true, false, false, true)) | global2.c.d.x), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-2955f, -790f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-733f, global2.d.x)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-869f, global2.b.x) + vec2<f32>(-1230f, -847f)), global2.c.d.x)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global2.d - global2.b.yy)))), global2.e);
    let var_1 = var_0.d.x;
    var var_2 = func_2();
    global2 = func_2();
    var var_3 = _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global2.b.x)) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(1015f, var_2.d.x))))), global2.d.x, var_2.d.x)));
    return func_2().c;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec3<u32>, 32>();
    var var_0 = 117536u;
    let var_1 = global2.e;
    var var_2 = Struct_2(global2.a, vec4<f32>(394f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global2.b.x, _wgslsmith_f_op_f32(-799f - global2.d.x)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.b.x + global2.d.x)))), -1948f), func_1(), _wgslsmith_f_op_vec2_f32(-global2.b.wy), -(~global2.e));
    var var_3 = Struct_2(~vec3<u32>(min(_wgslsmith_mod_u32(47599u, var_2.a.x), u_input.b), _wgslsmith_sub_u32(min(7u, u_input.b), ~var_2.a.x), u_input.b), vec4<f32>(_wgslsmith_f_op_f32(func_2().d.x - 1338f), _wgslsmith_f_op_f32(max(global2.b.x, _wgslsmith_f_op_f32(-727f * _wgslsmith_f_op_f32(var_2.b.x * var_2.b.x)))), 1712f, _wgslsmith_f_op_f32(abs(629f))), var_2.c, func_2().b.wy, abs(min(max(vec4<i32>(2147483647i, var_1.x, global2.e.x, var_2.e.x), -var_2.e), vec4<i32>(-var_1.x, -3764i | global2.e.x, ~(-2147483647i), -1i))));
    let var_4 = func_2();
    var var_5 = abs(vec4<u32>(~reverseBits(1u), ~var_4.a.x, firstTrailingBit(~select(59970u, var_3.a.x, var_4.c.b)), ~4294967295u));
    global3 = array<Struct_1, 8>();
    global3 = array<Struct_1, 8>();
    let x = u_input.a;
    s_output = StorageBuffer(abs(~(~(~36125u))), _wgslsmith_f_op_f32(-var_4.b.x));
}


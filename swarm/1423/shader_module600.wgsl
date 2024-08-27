struct Struct_1 {
    a: vec3<f32>,
    b: vec3<f32>,
    c: vec4<u32>,
    d: vec3<u32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: u32,
    d: u32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 7> = array<Struct_1, 7>(Struct_1(vec3<f32>(-1362f, 835f, -1095f), vec3<f32>(783f, -1409f, -398f), vec4<u32>(22367u, 0u, 1u, 11119u), vec3<u32>(1u, 1u, 4294967295u)), Struct_1(vec3<f32>(453f, -1532f, -166f), vec3<f32>(-352f, -616f, -1000f), vec4<u32>(79124u, 1u, 17356u, 0u), vec3<u32>(31179u, 0u, 0u)), Struct_1(vec3<f32>(1372f, 1912f, -607f), vec3<f32>(723f, -373f, -1442f), vec4<u32>(7789u, 1u, 58769u, 1u), vec3<u32>(18625u, 23724u, 1u)), Struct_1(vec3<f32>(-581f, -1128f, 1000f), vec3<f32>(990f, 251f, -443f), vec4<u32>(4294967295u, 0u, 13672u, 4294967295u), vec3<u32>(88451u, 4030u, 4294967295u)), Struct_1(vec3<f32>(-296f, -1771f, 1000f), vec3<f32>(-340f, 233f, 562f), vec4<u32>(30257u, 1u, 4294967295u, 42186u), vec3<u32>(41766u, 51838u, 1u)), Struct_1(vec3<f32>(-106f, 638f, -528f), vec3<f32>(1950f, 453f, -1127f), vec4<u32>(39444u, 0u, 1u, 4294967295u), vec3<u32>(1u, 1u, 54050u)), Struct_1(vec3<f32>(593f, -1000f, 1639f), vec3<f32>(-1226f, -550f, -557f), vec4<u32>(4294967295u, 1u, 15005u, 1u), vec3<u32>(48111u, 34142u, 604u)));

var<private> global1: Struct_2;

var<private> global2: Struct_1;

var<private> global3: array<Struct_1, 24>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3() -> vec3<u32> {
    var var_0 = abs(u_input.e);
    var var_1 = abs(_wgslsmith_dot_vec3_u32(global1.b.d, global2.c.ywy)) ^ ~(~max(u_input.c, ~u_input.b.x));
    global2 = Struct_1(global1.b.b, _wgslsmith_f_op_vec3_f32(global2.b + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.a, global1.a, global1.b.b.x) + global1.b.a)))), vec4<u32>(1u, u_input.d, ~(~4294967295u), abs(~(~global1.b.c.x))), vec3<u32>(global1.b.d.x, ~49680u, select(u_input.a, global1.b.d.x, all(vec3<bool>(true, true, true)))) ^ _wgslsmith_mult_vec3_u32(~vec3<u32>(1u, 19523u, 1u), ~global1.b.c.yww));
    return vec3<u32>(4294967295u, 1u, firstTrailingBit(4294967295u));
}

fn func_2() -> Struct_2 {
    var var_0 = Struct_1(global2.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.a, -749f, _wgslsmith_f_op_f32(-global2.b.x)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(global2.b, vec3<f32>(1634f, global1.a, global1.a))) - _wgslsmith_f_op_vec3_f32(global1.b.a + global2.a)))), _wgslsmith_mod_vec4_u32(abs(_wgslsmith_mult_vec4_u32(global2.c, vec4<u32>(7346u, global2.c.x, 19806u, 109197u))), global2.c) ^ select(_wgslsmith_sub_vec4_u32(vec4<u32>(0u, u_input.c, 0u, global1.b.c.x), ~vec4<u32>(62114u, 0u, global1.b.c.x, 0u)), global2.c, true), _wgslsmith_mult_vec3_u32(vec3<u32>(global2.d.x, _wgslsmith_mult_u32(countOneBits(0u), 4294967295u), _wgslsmith_mult_u32(16953u, 57862u)), abs(global2.c.zxz)));
    global1 = Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(1000f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.b.b.x) * _wgslsmith_f_op_f32(-var_0.a.x)), _wgslsmith_f_op_f32(var_0.b.x * global1.a), true))), Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global1.b.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -272f)), _wgslsmith_f_op_f32(abs(global2.b.x))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(round(global1.b.b)))), global2.c, ~global2.c.zxy));
    var var_1 = Struct_2(global2.b.x, global1.b);
    global1 = Struct_2(global1.a, global0[_wgslsmith_index_u32(var_1.b.d.x, 7u)]);
    global1 = Struct_2(_wgslsmith_f_op_f32(abs(388f)), Struct_1(_wgslsmith_f_op_vec3_f32(var_0.a - _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-813f, 147f, var_0.a.x), vec3<f32>(var_1.a, var_0.a.x, -444f)))))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-global1.b.b), _wgslsmith_div_vec3_f32(vec3<f32>(1188f, global1.b.a.x, -320f), vec3<f32>(global2.a.x, -1033f, global2.b.x))))), vec4<u32>(~1u, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, var_0.c.x, 26407u, 83122u), ~vec4<u32>(4294967295u, 4294967295u, 99166u, 4294967295u)), select(u_input.b.x, 47177u, true) << (u_input.c % 32u), 4294967295u), func_3() << (var_0.d % vec3<u32>(32u))));
    return Struct_2(-500f, Struct_1(var_0.a, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-var_0.a.x), _wgslsmith_f_op_f32(global2.a.x + 572f), _wgslsmith_f_op_f32(global2.a.x - -1535f)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(244f, var_1.a, 822f))) - vec3<f32>(-340f, 1440f, -261f))), global2.c, _wgslsmith_mod_vec3_u32(~(var_1.b.c.xxw ^ global2.d), max(~vec3<u32>(var_0.d.x, 0u, 4294967295u), select(vec3<u32>(var_0.d.x, 44199u, var_0.c.x), vec3<u32>(67965u, 52300u, var_1.b.d.x), true)))));
}

fn func_1() -> Struct_2 {
    var var_0 = global1.b.c.x;
    return func_2();
}

fn func_4(arg_0: vec2<i32>, arg_1: i32, arg_2: Struct_2, arg_3: vec2<i32>) -> Struct_2 {
    var var_0 = func_1();
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 278f, -1522f)))) + vec3<f32>(var_0.b.a.x, _wgslsmith_f_op_f32(step(global2.b.x, _wgslsmith_f_op_f32(max(global1.a, arg_2.b.b.x)))), 1304f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(global2.a))), ~vec4<u32>(~1u, 0u, arg_2.b.c.x, 0u), vec3<u32>(93043u, global2.c.x, ~max(~0u, 0u)));
    global2 = func_2().b;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-440f * _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(-499f - 761f)));
    let var_3 = var_1.b.zz;
    return func_1();
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_2(-522f, Struct_1(global2.b, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(-781f, -231f, global1.a) * global2.b))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-216f, -196f, -2160f) - global2.a) - global2.b)), min(_wgslsmith_div_vec4_u32(global2.c ^ vec4<u32>(u_input.d, 31812u, global1.b.d.x, global1.b.d.x), vec4<u32>(4294967295u, 4294967295u, 4294967295u, 47559u) | vec4<u32>(126419u, 4155u, 85000u, global2.c.x)), _wgslsmith_add_vec4_u32(global2.c << (global1.b.c % vec4<u32>(32u)), countOneBits(vec4<u32>(23239u, u_input.a, global2.c.x, 18375u)))), reverseBits(min(vec3<u32>(4294967295u, global1.b.c.x, 1u), vec3<u32>(global2.c.x, u_input.c, global2.c.x)) | global2.d)));
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(global2.a.x))))));
    var var_1 = ~(~(_wgslsmith_dot_vec3_u32(~vec3<u32>(global1.b.c.x, global2.c.x, global2.c.x), global1.b.c.yxw) << (~0u % 32u)));
    var var_2 = 103f;
    let var_3 = -1726f;
    var var_4 = func_4(-_wgslsmith_mod_vec2_i32(~(-u_input.e.wy), ~u_input.e.zz & reverseBits(vec2<i32>(6463i, u_input.e.x))), u_input.e.x, func_1(), select(vec2<i32>(1i, 1i) >> (reverseBits(vec2<u32>(global1.b.c.x, 28738u)) % vec2<u32>(32u)), u_input.e.zy, select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true)), vec2<bool>(true, true), !select(vec2<bool>(true, false), vec2<bool>(true, false), true))));
    var_1 = min(select(~(u_input.d ^ 4330u) >> (1u % 32u), 0u, !all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, true)))), global2.d.x);
    var var_5 = vec3<bool>(all(!select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true))), true, true);
    let x = u_input.a;
    s_output = StorageBuffer(-abs(vec3<i32>(-2147483647i, u_input.e.x, -1i)));
}


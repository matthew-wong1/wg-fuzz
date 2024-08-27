struct Struct_1 {
    a: f32,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: vec2<f32>,
    d: vec3<bool>,
    e: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: vec4<i32>,
    d: Struct_2,
    e: vec2<f32>,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: u32,
    d: vec4<u32>,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -1020f;

var<private> global1: Struct_3 = Struct_3(Struct_2(Struct_1(1004f, -1000f), 96651u, vec2<f32>(1352f, 2923f), vec3<bool>(false, false, false), 24030u), Struct_2(Struct_1(1314f, -448f), 4294967295u, vec2<f32>(134f, -363f), vec3<bool>(false, true, true), 37591u), vec4<i32>(27527i, 2147483647i, 7027i, i32(-2147483648)), Struct_2(Struct_1(-1000f, -920f), 96756u, vec2<f32>(-1107f, 403f), vec3<bool>(true, false, false), 15547u), vec2<f32>(-435f, -1114f));

var<private> global2: vec3<f32>;

var<private> global3: vec4<f32> = vec4<f32>(-792f, -1199f, -882f, -979f);

var<private> global4: Struct_3 = Struct_3(Struct_2(Struct_1(-261f, -1496f), 38182u, vec2<f32>(-1560f, 675f), vec3<bool>(true, false, true), 11793u), Struct_2(Struct_1(-388f, -2117f), 35647u, vec2<f32>(-383f, 1000f), vec3<bool>(false, true, true), 1u), vec4<i32>(25696i, -1i, 2147483647i, -27452i), Struct_2(Struct_1(1877f, 1120f), 1u, vec2<f32>(2000f, -289f), vec3<bool>(true, false, false), 0u), vec2<f32>(1001f, -2104f));

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3() -> u32 {
    var var_0 = Struct_2(Struct_1(-1290f, _wgslsmith_f_op_f32(round(global3.x))), 24902u, vec2<f32>(-640f, global1.b.c.x), vec3<bool>(any(!select(vec4<bool>(global4.b.d.x, false, false, false), vec4<bool>(global4.d.d.x, global1.a.d.x, global1.a.d.x, global4.d.d.x), vec4<bool>(global4.a.d.x, true, global4.d.d.x, global4.d.d.x))), !(!(1i == global4.c.x)), !(!global1.d.d.x) & true), 0u);
    let var_1 = any(!vec3<bool>(true, all(select(global4.b.d, var_0.d, global4.a.d)), var_0.d.x));
    var var_2 = var_0.a;
    var var_3 = Struct_1(_wgslsmith_f_op_f32(select(global2.x, global1.a.c.x, all(select(vec2<bool>(var_1, var_0.d.x), select(vec2<bool>(var_1, true), vec2<bool>(false, true), global1.b.d.xz), vec2<bool>(global1.b.d.x, true))))), _wgslsmith_f_op_f32(select(var_0.a.b, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(380f * _wgslsmith_f_op_f32(sign(var_0.a.a))))), var_1)));
    global2 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(680f, global2.x, var_0.d.x)) - _wgslsmith_div_f32(global4.a.a.b, global2.x)))), global3.x, 1f) + _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(global3.xyx + vec3<f32>(_wgslsmith_div_f32(global3.x, global4.d.a.b), -412f, global3.x)), vec3<f32>(_wgslsmith_f_op_f32(ceil(-1525f)), global2.x, var_2.b))));
    return ~4294967295u;
}

fn func_2() -> Struct_4 {
    return Struct_4(global4.d.a, Struct_2(Struct_1(_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(round(351f))), _wgslsmith_f_op_f32(f32(-1f) * -1000f)), func_3(), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(global3.yw - global2.xx)))), !select(select(global4.d.d, vec3<bool>(true, global1.a.d.x, true), global1.d.d), select(vec3<bool>(global1.b.d.x, true, global4.a.d.x), global1.b.d, true), !global4.b.d), 18955u));
}

fn func_1(arg_0: f32, arg_1: bool) -> Struct_4 {
    return func_2();
}

fn func_4(arg_0: Struct_3, arg_1: vec4<i32>, arg_2: Struct_4) -> f32 {
    global4 = arg_0;
    var var_0 = func_2();
    let var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-395f)) * -1377f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-953f - global4.b.a.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -845f) - _wgslsmith_f_op_f32(-122f + global4.e.x))));
    global3 = _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(func_2().a.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1334f))), -971f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_0.e.x))))));
    let var_2 = u_input.d.xyy & abs(u_input.d.ywz | ~u_input.d.yyw);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x - -2188f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global3.x, 1f)) + func_1(-1161f, 1u >= u_input.e).b.a.a)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 4294967295u;
    global3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(func_4(Struct_3(Struct_2(Struct_1(global3.x, 1000f), 0u, vec2<f32>(-167f, 737f), global1.a.d, u_input.c), global1.b, global4.c, global4.a, vec2<f32>(1216f, -678f)), global4.c, func_1(134f, global1.b.d.x))), 1164f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-184f - -1000f) * _wgslsmith_f_op_f32(-482f - global1.a.c.x)), 1f)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global4.a.a.b, global3.x, global4.e.x, 597f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(976f, global3.x, 1183f, global1.a.c.x) - vec4<f32>(-1309f, global3.x, 333f, global4.b.c.x))))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(665f + global3.x), global1.e.x, _wgslsmith_f_op_f32(step(global1.b.a.a, global4.b.a.b)), _wgslsmith_f_op_f32(-305f * global4.d.c.x)))));
    global0 = -111f;
    var var_1 = vec3<i32>(global1.c.x, _wgslsmith_mod_i32(-_wgslsmith_div_i32(_wgslsmith_add_i32(-2147483647i, -1i), 1i), _wgslsmith_mult_i32(~(-12080i), -13642i)), _wgslsmith_dot_vec2_i32(global1.c.wz, _wgslsmith_mult_vec2_i32(-vec2<i32>(u_input.a.x, global1.c.x) ^ vec2<i32>(global1.c.x, global1.c.x), vec2<i32>(14572i, -2147483647i) << (max(vec2<u32>(11465u, 4294967295u), vec2<u32>(u_input.b.x, global4.a.b)) % vec2<u32>(32u)))));
    let var_2 = _wgslsmith_add_u32(~(1u ^ (_wgslsmith_dot_vec3_u32(u_input.d.www, vec3<u32>(global4.d.e, u_input.c, 24603u)) & ~66957u)), global4.a.b);
    var var_3 = Struct_4(Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -857f), 591f)), _wgslsmith_f_op_f32(func_4(Struct_3(Struct_2(global1.d.a, 4294967295u, global4.a.c, vec3<bool>(false, global4.d.d.x, global1.d.d.x), 14445u), Struct_2(global1.b.a, var_2, vec2<f32>(global3.x, 829f), vec3<bool>(true, false, true), u_input.e), global4.c, global4.b, _wgslsmith_f_op_vec2_f32(select(global2.zz, global2.yy, vec2<bool>(global4.a.d.x, global1.a.d.x)))), -_wgslsmith_sub_vec4_i32(vec4<i32>(-2147483647i, -2147483647i, global1.c.x, global4.c.x), vec4<i32>(global4.c.x, 1i, -2147483647i, 0i)), Struct_4(func_2().a, func_1(global1.e.x, false).b)))), global1.d);
    let var_4 = (u_input.e << (var_2 % 32u)) >> (max(func_3(), ~global1.a.b | 1u) % 32u);
    var var_5 = func_2().b.c.x < _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(862f, -2217f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-760f)))), global1.b.c.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(-372f, _wgslsmith_f_op_f32(var_3.b.c.x - global2.x), var_3.b.d.x))))), countOneBits(-1i), select(u_input.d | ~u_input.d, u_input.d, func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-309f + 1139f) - _wgslsmith_f_op_f32(f32(-1f) * -2056f)), true).b.d.x));
}


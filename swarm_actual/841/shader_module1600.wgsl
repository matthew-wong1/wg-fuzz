struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
    b: f32,
    c: bool,
    d: Struct_2,
}

struct Struct_4 {
    a: vec3<f32>,
    b: vec2<bool>,
    c: i32,
    d: vec2<f32>,
    e: u32,
}

struct Struct_5 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 21>;

var<private> global1: array<Struct_4, 10>;

var<private> global2: Struct_2 = Struct_2(vec4<bool>(true, false, true, false), Struct_1(vec2<i32>(25343i, 2147483647i)), Struct_1(vec2<i32>(2147483647i, -76495i)), Struct_1(vec2<i32>(-20653i, 2147483647i)));

var<private> global3: array<vec4<bool>, 18>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_5, arg_2: i32, arg_3: Struct_1) -> vec3<f32> {
    var var_0 = arg_1;
    global0 = array<Struct_5, 21>();
    global3 = array<vec4<bool>, 18>();
    var var_1 = Struct_1(select(abs(arg_1.a.a), abs(max(arg_1.a.a, arg_1.a.a)) ^ -min(arg_3.a, global2.b.a), true));
    var_0 = Struct_5(arg_0);
    return _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1772f, _wgslsmith_f_op_f32(sign(267f)), 571f)))));
}

fn func_3() -> vec3<f32> {
    var var_0 = -282f;
    var var_1 = ~_wgslsmith_dot_vec3_u32(~vec3<u32>(~4294967295u, _wgslsmith_mult_u32(4294967295u, 1u), 0u), ~abs(reverseBits(vec3<u32>(4294967295u, 1u, 1u))));
    let var_2 = vec4<i32>(-(~u_input.a), min(_wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(-18614i, u_input.a, u_input.a) | vec3<i32>(u_input.a, -35266i, u_input.a), ~vec3<i32>(u_input.a, 37038i, 6434i)), vec3<i32>(~global2.d.a.x, global2.c.a.x, firstTrailingBit(-1487i))), u_input.a), _wgslsmith_sub_i32(~9312i, -1i), _wgslsmith_mod_i32(~u_input.a ^ -1i, u_input.a) ^ -1i);
    let var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-639f, 659f, 465f, 497f))) * _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(393f, 346f, -1285f, -457f) * vec4<f32>(-3539f, 242f, 1283f, -742f)))))) * vec4<f32>(874f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(893f - -1701f)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(188f)))))), -253f));
    var_0 = 1021f;
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_3.zwz + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_3.yxw * var_3.wzy)) * _wgslsmith_f_op_vec3_f32(min(var_3.zyz, vec3<f32>(-714f, -248f, -1677f))))) + vec3<f32>(_wgslsmith_f_op_f32(round(1876f)), _wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(999f)))), var_3.x))));
}

fn func_4(arg_0: Struct_4, arg_1: Struct_4, arg_2: Struct_1, arg_3: vec3<f32>) -> vec2<i32> {
    global1 = array<Struct_4, 10>();
    global1 = array<Struct_4, 10>();
    var var_0 = Struct_5(arg_2);
    var var_1 = vec3<i32>(var_0.a.a.x, _wgslsmith_clamp_i32(-26286i | arg_1.c, arg_2.a.x, 1i), u_input.a) << (abs(select(_wgslsmith_div_vec3_u32(~vec3<u32>(arg_0.e, 42649u, arg_0.e), select(vec3<u32>(1u, 1u, arg_1.e), vec3<u32>(arg_1.e, 0u, arg_0.e), global2.a.xyz)), abs(vec3<u32>(73189u, 6354u, arg_0.e)), true || all(vec2<bool>(false, global2.a.x)))) % vec3<u32>(32u));
    let var_2 = Struct_3(_wgslsmith_sub_vec4_i32(~(vec4<i32>(global2.b.a.x, global2.b.a.x, arg_1.c, arg_1.c) & vec4<i32>(u_input.a, arg_2.a.x, global2.c.a.x, 1i)), _wgslsmith_mod_vec4_i32(vec4<i32>(global2.d.a.x, -2147483647i, global2.c.a.x, 757i), vec4<i32>(15096i, var_1.x, u_input.a, 12090i))) ^ (_wgslsmith_add_vec4_i32(max(vec4<i32>(arg_2.a.x, global2.d.a.x, arg_1.c, -26534i), vec4<i32>(17178i, u_input.a, 1i, var_1.x)), vec4<i32>(global2.b.a.x, arg_0.c, var_0.a.a.x, 11456i)) << (vec4<u32>(arg_0.e, ~62138u, ~arg_1.e, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.e, 28042u, 0u), vec3<u32>(56758u, arg_1.e, arg_0.e))) % vec4<u32>(32u))), 1000f, true, Struct_2(global2.a, global2.c, arg_2, arg_2));
    return min(var_1.zx, vec2<i32>(var_1.x >> (arg_0.e % 32u), var_0.a.a.x) << (~vec2<u32>(3944u, 44134u) % vec2<u32>(32u))) | _wgslsmith_div_vec2_i32(vec2<i32>(-1i, _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.a.a.x, -42261i, arg_2.a.x, 7886i), vec4<i32>(2147483647i, -2147483647i, arg_2.a.x, u_input.a))), global2.b.a | global2.b.a);
}

fn func_2(arg_0: Struct_5, arg_1: Struct_4, arg_2: vec2<bool>, arg_3: vec4<i32>) -> i32 {
    let var_0 = Struct_3(arg_3, arg_1.d.x, true, Struct_2(!global3[_wgslsmith_index_u32(~78323u, 18u)], global2.b, arg_0.a, global2.c));
    global0 = array<Struct_5, 21>();
    let var_1 = arg_1.d.x;
    global1 = array<Struct_4, 10>();
    global2 = Struct_2(!select(!global3[_wgslsmith_index_u32(arg_1.e, 18u)], !global2.a, global2.a.x), var_0.d.d, Struct_1(_wgslsmith_clamp_vec2_i32(_wgslsmith_mod_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(-10908i, 3738i), arg_0.a.a), global2.b.a), var_0.d.c.a, func_4(Struct_4(arg_1.a, vec2<bool>(arg_2.x, global2.a.x), global2.d.a.x, vec2<f32>(arg_1.d.x, arg_1.d.x), arg_1.e), global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(arg_1.e, arg_1.e, arg_1.e), 10u)], arg_0.a, _wgslsmith_f_op_vec3_f32(func_3())))), global2.d);
    return -1i << (arg_1.e % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(~(-(global2.b.a | global2.c.a)) << (max(countOneBits(vec2<u32>(1u, 1u)), abs(abs(vec2<u32>(0u, 0u)))) % vec2<u32>(32u)));
    var var_1 = Struct_3(vec4<i32>(-_wgslsmith_add_i32(var_0.a.x, var_0.a.x), 1i, abs(~_wgslsmith_mod_i32(-26030i, var_0.a.x)), func_2(Struct_5(global2.b), Struct_4(_wgslsmith_f_op_vec3_f32(func_1(global2.b, global0[_wgslsmith_index_u32(1u, 21u)], global2.b.a.x, Struct_1(var_0.a))), !vec2<bool>(global2.a.x, false), -1i, _wgslsmith_f_op_vec2_f32(-vec2<f32>(1617f, 178f)), ~17084u), !global2.a.xy, ~min(vec4<i32>(52704i, -8505i, -2147483647i, global2.c.a.x), vec4<i32>(23937i, global2.c.a.x, global2.c.a.x, var_0.a.x)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec3_f32(func_1(global2.b, Struct_5(global2.d), u_input.a, global2.b)).x)))), true, Struct_2(select(global2.a, select(select(vec4<bool>(false, false, false, global2.a.x), vec4<bool>(global2.a.x, global2.a.x, true, false), vec4<bool>(global2.a.x, global2.a.x, global2.a.x, false)), select(global3[_wgslsmith_index_u32(30402u, 18u)], global3[_wgslsmith_index_u32(0u, 18u)], vec4<bool>(global2.a.x, global2.a.x, global2.a.x, global2.a.x)), true), true || any(vec3<bool>(global2.a.x, false, false))), Struct_1(global2.b.a), global2.b, Struct_1(func_4(Struct_4(vec3<f32>(915f, -431f, 606f), vec2<bool>(global2.a.x, global2.a.x), u_input.a, vec2<f32>(-1291f, -726f), 110190u), global1[_wgslsmith_index_u32(1u, 10u)], global2.d, _wgslsmith_f_op_vec3_f32(-vec3<f32>(659f, -120f, 961f))))));
    global0 = array<Struct_5, 21>();
    global1 = array<Struct_4, 10>();
    global0 = array<Struct_5, 21>();
    let var_2 = Struct_1(global2.c.a);
    var var_3 = false;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(1u, min(4294967295u, firstTrailingBit(1u)), ~0u, 0u), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(var_1.b - var_1.b), 279f, -614f) * _wgslsmith_f_op_vec3_f32(func_3())), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-631f, var_1.b, -349f))) + _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(607f, -1010f, 454f)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(585f, var_1.b, var_1.b), vec3<f32>(-326f, -819f, var_1.b)))))));
}


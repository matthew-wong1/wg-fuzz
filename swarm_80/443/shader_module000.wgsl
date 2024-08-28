struct Struct_1 {
    a: bool,
    b: bool,
    c: f32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec3<i32>,
    c: vec4<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
}

struct Struct_4 {
    a: f32,
    b: Struct_1,
    c: bool,
    d: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
    d: vec4<i32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(-1000f, -155f, -1661f);

var<private> global1: vec4<f32> = vec4<f32>(-952f, 358f, -639f, 514f);

var<private> global2: array<vec3<i32>, 10> = array<vec3<i32>, 10>(vec3<i32>(4070i, 1i, 1i), vec3<i32>(2147483647i, 2147483647i, 0i), vec3<i32>(-10774i, -77337i, -16759i), vec3<i32>(2147483647i, -31193i, 2147483647i), vec3<i32>(2147483647i, 0i, 2147483647i), vec3<i32>(16453i, -13021i, 2147483647i), vec3<i32>(-17147i, 0i, -764i), vec3<i32>(11194i, -12083i, 7778i), vec3<i32>(2147483647i, -23599i, 2147483647i), vec3<i32>(-14846i, i32(-2147483648), -1i));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3() -> vec4<f32> {
    let var_0 = _wgslsmith_add_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(37589i, -1i, u_input.b >> (u_input.c.x % 32u)), vec3<i32>(_wgslsmith_dot_vec3_i32(-vec3<i32>(14322i, 0i, -30108i), -vec3<i32>(-1i, 35377i, 0i)), 1i, -2147483647i)), vec3<i32>(-1i, 957i, abs(41415i)) | _wgslsmith_add_vec3_i32(_wgslsmith_add_vec3_i32(-vec3<i32>(u_input.b, 2147483647i, -29165i), -u_input.d.wyy), u_input.d.yxw));
    var var_1 = ~(~vec4<u32>(~(~u_input.c.x), ~41773u, 26326u, select(u_input.c.x, ~42098u, -851f >= global0.x)));
    var_1 = vec4<u32>(_wgslsmith_div_u32(10618u, ~var_1.x), firstTrailingBit(89037u), ~(~(~var_1.x)), u_input.c.x);
    global0 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-680f))), _wgslsmith_f_op_f32(exp2(global0.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global1.xxz))));
    global0 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-global1.yzx)));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, -2246f, 3126f, _wgslsmith_f_op_f32(floor(-1633f)))))));
}

fn func_2(arg_0: vec2<u32>, arg_1: f32, arg_2: vec3<f32>) -> Struct_2 {
    var var_0 = _wgslsmith_div_u32(abs(68477u), u_input.c.x);
    var var_1 = min(u_input.e.x, u_input.b);
    return Struct_2(max(vec3<u32>(~arg_0.x, ~_wgslsmith_div_u32(0u, 27101u), ~(~2786u)), _wgslsmith_sub_vec3_u32(~u_input.c, u_input.c)), vec3<i32>(_wgslsmith_sub_i32(u_input.a, -44720i), ~(~(-24910i)) >> (arg_0.x % 32u), ~u_input.e.x), _wgslsmith_f_op_vec4_f32(func_3()));
}

fn func_1(arg_0: f32, arg_1: vec2<bool>) -> f32 {
    let var_0 = Struct_1(false, true, global0.x);
    let var_1 = func_2(~(~((u_input.c.xx ^ vec2<u32>(u_input.c.x, 26272u)) & ~vec2<u32>(0u, u_input.c.x))), 1920f, global1.wxw);
    var var_2 = func_2(~(~abs(var_1.a.xz << (vec2<u32>(u_input.c.x, u_input.c.x) % vec2<u32>(32u)))), global0.x, vec3<f32>(903f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), var_0.c));
    let var_3 = Struct_3(Struct_2(vec3<u32>(19936u, u_input.c.x >> (countOneBits(4294967295u) % 32u), 0u), var_1.b, _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(func_3())))), -abs(var_2.b.x));
    let var_4 = var_1.a.x;
    return -437f;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_vec3_f32(-global1.zzx);
    global0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(round(global1.wzy)), _wgslsmith_f_op_vec3_f32(-global1.zzw), !select(vec3<bool>(u_input.c.x <= u_input.c.x, any(vec4<bool>(false, false, true, true)), false), vec3<bool>(true, all(vec2<bool>(true, false)), true), vec3<bool>(true, true, true))));
    let var_0 = Struct_4(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global0.x * 543f)))), -157f)), Struct_1(2114f != _wgslsmith_f_op_f32(func_1(1f, vec2<bool>(true, true))), _wgslsmith_f_op_f32(sign(global0.x)) >= global1.x, -415f), select(any(vec3<bool>(true, true, true)), true, false), u_input.e.x);
    var var_1 = Struct_3(func_2(u_input.c.zy, 171f, _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_0.a, -2246f, _wgslsmith_f_op_f32(-303f + -1555f))))), var_0.d);
    var var_2 = ~2147483647i;
    let var_3 = u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_u32(~var_1.a.a.x, u_input.c.x), var_1.a.c);
}


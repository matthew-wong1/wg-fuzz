struct Struct_1 {
    a: vec4<i32>,
    b: vec3<bool>,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: u32,
    d: f32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(vec4<u32>(46800u, 4294967295u, 54015u, 52841u));

var<private> global1: array<vec2<f32>, 3>;

var<private> global2: array<vec2<f32>, 24> = array<vec2<f32>, 24>(vec2<f32>(-266f, -1184f), vec2<f32>(2007f, -1135f), vec2<f32>(1670f, 655f), vec2<f32>(1000f, 1479f), vec2<f32>(1232f, 1592f), vec2<f32>(403f, -1848f), vec2<f32>(-773f, 174f), vec2<f32>(-330f, -446f), vec2<f32>(-330f, -767f), vec2<f32>(-1000f, 261f), vec2<f32>(794f, 1218f), vec2<f32>(-1000f, -667f), vec2<f32>(1286f, 536f), vec2<f32>(-472f, -2371f), vec2<f32>(467f, -901f), vec2<f32>(-435f, -1308f), vec2<f32>(-852f, -487f), vec2<f32>(-1992f, -1000f), vec2<f32>(352f, 355f), vec2<f32>(1069f, 214f), vec2<f32>(-1000f, 2741f), vec2<f32>(704f, -392f), vec2<f32>(-683f, 1004f), vec2<f32>(1000f, -313f));

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: f32, arg_1: vec3<i32>, arg_2: Struct_1) -> i32 {
    global1 = array<vec2<f32>, 3>();
    global1 = array<vec2<f32>, 3>();
    let var_0 = Struct_3(firstLeadingBit(reverseBits(countOneBits(vec4<u32>(u_input.a, 4294967295u, u_input.a, global0.a.x)))) | global0.a);
    var var_1 = u_input.b.x;
    var var_2 = _wgslsmith_div_i32(-1i, u_input.b.x);
    return i32(-1i) * -5874i;
}

fn func_2(arg_0: i32, arg_1: vec4<bool>) -> Struct_2 {
    let var_0 = vec2<bool>(false, false);
    let var_1 = arg_0;
    let var_2 = vec3<i32>(_wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(-vec2<i32>(0i, 7117i), u_input.b | u_input.b), max(vec2<i32>(2147483647i, 1i), vec2<i32>(u_input.b.x, u_input.b.x))), ~(-10958i ^ (0i | var_1))), reverseBits(i32(-1i) * -2147483647i), func_3(1f, _wgslsmith_clamp_vec3_i32(select(vec3<i32>(1i, arg_0, 26782i), vec3<i32>(-26034i, u_input.b.x, arg_0), false), _wgslsmith_clamp_vec3_i32(vec3<i32>(-2147483647i, 185i, arg_0), vec3<i32>(u_input.b.x, -2147483647i, var_1), vec3<i32>(-34551i, var_1, 2147483647i)), -vec3<i32>(-21677i, -11508i, var_1)), Struct_1(_wgslsmith_add_vec4_i32(vec4<i32>(2147483647i, var_1, 21463i, -32753i), vec4<i32>(-7343i, 1i, arg_0, arg_0)), vec3<bool>(false, true, true))) << (~global0.a.x % 32u));
    var var_3 = Struct_1(vec4<i32>(18657i, _wgslsmith_mod_i32(var_2.x, -17872i) & 2147483647i, ~1i & var_1, 22072i) ^ select(min(_wgslsmith_clamp_vec4_i32(vec4<i32>(61119i, 48777i, arg_0, var_2.x), vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, var_1), vec4<i32>(arg_0, -1i, -84087i, -2147483647i)), vec4<i32>(arg_0, arg_0, var_1, arg_0) & vec4<i32>(var_2.x, -40764i, -15877i, var_1)), _wgslsmith_clamp_vec4_i32(vec4<i32>(var_1, arg_0, -21578i, -72467i), vec4<i32>(arg_0, var_1, 38456i, -51251i), vec4<i32>(var_2.x, 10759i, 0i, 57688i)), var_0.x), select(select(arg_1.xyx, !select(vec3<bool>(var_0.x, true, false), vec3<bool>(false, true, arg_1.x), arg_1.x), true || select(var_0.x, false, var_0.x)), arg_1.xyw, arg_1.wzw));
    var_3 = Struct_1(var_3.a, arg_1.wwx);
    return Struct_2(-133f);
}

fn func_4(arg_0: Struct_2, arg_1: vec2<i32>, arg_2: f32) -> f32 {
    return _wgslsmith_f_op_f32(-584f - -1702f);
}

fn func_1() -> StorageBuffer {
    global2 = array<vec2<f32>, 24>();
    let var_0 = global0.a;
    let var_1 = vec3<bool>(true, true, !all(select(vec2<bool>(false, true), vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, false), false))));
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1395f * -1290f)), _wgslsmith_f_op_f32(func_4(func_2(u_input.b.x, vec4<bool>(var_1.x, var_1.x, var_1.x, false)), select(vec2<i32>(u_input.b.x, u_input.b.x), u_input.b, true), _wgslsmith_f_op_f32(min(-537f, -272f))))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-717f * -934f) - -1558f), _wgslsmith_f_op_f32(-1221f * _wgslsmith_f_op_f32(step(720f, 1451f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-508f + -342f)))))) * vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(-1017f)))))), _wgslsmith_f_op_f32(705f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-971f - 343f))), _wgslsmith_f_op_f32(f32(-1f) * -1000f)));
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -275f) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_2.x))))));
    return StorageBuffer(~u_input.a, vec2<f32>(var_3, -1135f), 60558u, 302f, firstLeadingBit(_wgslsmith_mult_vec3_i32(_wgslsmith_mult_vec3_i32(-vec3<i32>(u_input.b.x, u_input.b.x, -2147483647i), -vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x)), ~_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x), vec3<i32>(-15121i, u_input.b.x, u_input.b.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1();
}


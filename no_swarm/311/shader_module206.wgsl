struct Struct_1 {
    a: f32,
    b: f32,
    c: vec2<bool>,
    d: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: vec4<u32>,
    d: vec2<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<vec4<u32>, 28> = array<vec4<u32>, 28>(vec4<u32>(0u, 1u, 1u, 4294967295u), vec4<u32>(80729u, 4294967295u, 0u, 0u), vec4<u32>(4294967295u, 4294967295u, 41161u, 0u), vec4<u32>(4294967295u, 34699u, 39759u, 56936u), vec4<u32>(1u, 43626u, 1u, 29614u), vec4<u32>(38125u, 4294967295u, 4294967295u, 0u), vec4<u32>(1u, 31716u, 1u, 30477u), vec4<u32>(0u, 15936u, 916u, 60332u), vec4<u32>(4294967295u, 122252u, 1u, 4294967295u), vec4<u32>(37753u, 1u, 22893u, 7779u), vec4<u32>(0u, 51039u, 0u, 59950u), vec4<u32>(0u, 66851u, 1u, 60188u), vec4<u32>(18866u, 321u, 7384u, 0u), vec4<u32>(0u, 8960u, 51078u, 31568u), vec4<u32>(24686u, 1u, 1u, 1u), vec4<u32>(56839u, 4294967295u, 19492u, 25314u), vec4<u32>(1u, 28062u, 4294967295u, 0u), vec4<u32>(4294967295u, 4294967295u, 62539u, 86267u), vec4<u32>(4857u, 28441u, 33057u, 1u), vec4<u32>(29384u, 0u, 19380u, 4294967295u), vec4<u32>(19792u, 0u, 0u, 31232u), vec4<u32>(4294967295u, 1u, 26458u, 1u), vec4<u32>(0u, 13251u, 4294967295u, 1u), vec4<u32>(10667u, 12768u, 4294967295u, 0u), vec4<u32>(5698u, 2243u, 0u, 34506u), vec4<u32>(4294967295u, 0u, 1u, 84478u), vec4<u32>(49064u, 62977u, 0u, 14324u), vec4<u32>(70943u, 14832u, 1u, 0u));

var<private> global2: vec4<i32>;

var<private> global3: vec2<f32>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_2(arg_0: vec4<bool>, arg_1: vec2<i32>) -> f32 {
    global1 = array<vec4<u32>, 28>();
    global0 = Struct_2(global0.a);
    global0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(round(-495f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1723f + _wgslsmith_f_op_f32(global0.a.b + -1113f)) + _wgslsmith_f_op_f32(min(-1438f, _wgslsmith_f_op_f32(f32(-1f) * -329f)))), vec2<bool>(4922u != _wgslsmith_mult_u32(u_input.b.x, 43084u), global0.a.c.x), global0.a.d));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + -169f));
}

fn func_3(arg_0: u32) -> f32 {
    global0 = Struct_2(Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-293f)), _wgslsmith_f_op_f32(-1f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a.d.x)), global0.a.c, _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(round(global0.a.d))))))));
    global3 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-global3.x), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1527f + -464f))))));
    var var_0 = select(_wgslsmith_mult_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.b.x, arg_0, u_input.b.x), abs(vec3<u32>(u_input.b.x, u_input.b.x, 1u))), u_input.b.zzx), u_input.b.zzw, false) & (u_input.b.wzy | u_input.b.xyy);
    var var_1 = Struct_2(global0.a);
    var_1 = Struct_2(global0.a);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1223f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global0.a.b))), -965f))) + global3.x);
}

fn func_1(arg_0: vec4<f32>, arg_1: vec3<bool>, arg_2: bool) -> vec3<i32> {
    var var_0 = vec2<bool>(!(!any(vec4<bool>(global0.a.c.x, arg_2, false, false))), true);
    let var_1 = Struct_2(Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-836f)), _wgslsmith_f_op_f32(f32(-1f) * -347f)), global0.a.d.x, global0.a.c, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(-567f, 145f, global3.x) + vec3<f32>(871f, global3.x, -547f)), _wgslsmith_f_op_vec3_f32(-arg_0.wzw))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-472f, global3.x, global0.a.a))))));
    var var_2 = _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(u_input.b.ww, vec2<u32>(1988u, _wgslsmith_sub_u32(30119u, u_input.b.x))), u_input.b.x);
    global3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(var_1.a.d.yy)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.x, -814f))) + vec2<f32>(_wgslsmith_f_op_f32(global3.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(vec4<bool>(arg_2, true, arg_2, false), u_input.a.yx)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(4294967295u)), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-490f, global0.a.d.x))))));
    var_2 = u_input.b.x;
    return u_input.a.zxz;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec4<u32>, 28>();
    let var_0 = 1u;
    global1 = array<vec4<u32>, 28>();
    var var_1 = i32(-1i) * -2147483647i;
    let var_2 = -(~2147483647i);
    var var_3 = (~_wgslsmith_mult_vec3_i32(func_1(vec4<f32>(global0.a.a, global0.a.b, global0.a.b, 1000f), vec3<bool>(global0.a.c.x, global0.a.c.x, false), false), vec3<i32>(var_2, 2147483647i, u_input.a.x)) ^ global2.xwx) >> (~(~firstTrailingBit(~vec3<u32>(2355u, u_input.b.x, 7811u))) % vec3<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global0.a.d.x, 506f, global0.a.b), global0.a.d, vec3<bool>(global0.a.c.x, false, true))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(global0.a.b, 104f, global3.x)))), global0.a.d)), reverseBits(_wgslsmith_dot_vec4_u32(vec4<u32>(select(4294967295u, 7217u, true), u_input.b.x, ~var_0, ~u_input.b.x), u_input.b)), vec4<u32>(2384u, abs(u_input.b.x >> (countOneBits(var_0) % 32u)), abs(0u), 51573u), vec2<f32>(global0.a.b, _wgslsmith_f_op_f32(-global3.x)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(~38872u))))));
}


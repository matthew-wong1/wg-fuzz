struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: u32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(231f, -431f, 574f, 306f);

var<private> global1: vec4<bool>;

var<private> global2: Struct_1 = Struct_1(4294967295u);

var<private> global3: array<vec2<f32>, 17> = array<vec2<f32>, 17>(vec2<f32>(204f, 440f), vec2<f32>(692f, -1131f), vec2<f32>(1357f, -1830f), vec2<f32>(-1000f, 2024f), vec2<f32>(-1766f, -808f), vec2<f32>(899f, -157f), vec2<f32>(446f, 367f), vec2<f32>(1395f, 1382f), vec2<f32>(-103f, 151f), vec2<f32>(-930f, 790f), vec2<f32>(-213f, -646f), vec2<f32>(-1124f, -461f), vec2<f32>(1000f, -1261f), vec2<f32>(-720f, -1263f), vec2<f32>(1501f, 1181f), vec2<f32>(-1000f, -297f), vec2<f32>(-1552f, -1086f));

var<private> global4: vec3<i32>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_2(arg_0: u32, arg_1: vec2<bool>, arg_2: vec3<bool>, arg_3: vec2<bool>) -> vec3<i32> {
    let var_0 = Struct_1(0u);
    var var_1 = var_0;
    let var_2 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global0.yzw * global0.yzz))));
    let var_3 = !arg_3.x;
    var var_4 = 1u;
    return vec3<i32>(1i, _wgslsmith_div_i32(select(-global4.x, u_input.d.x, all(!vec4<bool>(false, global1.x, var_3, arg_2.x))), ~2147483647i), _wgslsmith_mult_i32(min(_wgslsmith_clamp_i32(u_input.d.x, 7218i, -37945i) >> (arg_0 % 32u), _wgslsmith_mod_i32(i32(-1i) * -13472i, u_input.d.x)), _wgslsmith_clamp_i32(_wgslsmith_sub_i32(global4.x, u_input.b.x), 0i, -6271i) & (~u_input.b.x >> (~4294967295u % 32u))));
}

fn func_3(arg_0: bool, arg_1: u32, arg_2: vec2<i32>) -> f32 {
    global3 = array<vec2<f32>, 17>();
    let var_0 = select(_wgslsmith_clamp_vec4_u32(vec4<u32>(arg_1 | 4294967295u, 25855u, 0u, _wgslsmith_add_u32(global2.a, 52356u)), vec4<u32>(firstTrailingBit(u_input.a), ~1u, abs(global2.a), ~1u) & min(_wgslsmith_sub_vec4_u32(vec4<u32>(arg_1, u_input.a, global2.a, 4294967295u), vec4<u32>(29574u, 0u, 21432u, global2.a)), ~vec4<u32>(0u, u_input.a, global2.a, u_input.a)), _wgslsmith_mult_vec4_u32(vec4<u32>(13968u, max(u_input.a, 34415u), _wgslsmith_dot_vec3_u32(vec3<u32>(arg_1, global2.a, 0u), vec3<u32>(0u, 104885u, u_input.a)), arg_1), min(_wgslsmith_mult_vec4_u32(vec4<u32>(0u, 1u, global2.a, 38825u), vec4<u32>(arg_1, arg_1, u_input.c, 87754u)), min(vec4<u32>(global2.a, 4177u, u_input.c, arg_1), vec4<u32>(arg_1, 48493u, 0u, global2.a))))), ~select(~vec4<u32>(arg_1, 1u, 4294967295u, global2.a) ^ (vec4<u32>(7443u, 57248u, u_input.a, 49815u) ^ vec4<u32>(1u, 36113u, 19404u, 59466u)), ~_wgslsmith_mult_vec4_u32(vec4<u32>(arg_1, 4294967295u, u_input.c, 27796u), vec4<u32>(global2.a, arg_1, 1u, 0u)), select(!vec4<bool>(global1.x, arg_0, true, true), select(vec4<bool>(arg_0, global1.x, true, arg_0), vec4<bool>(global1.x, arg_0, global1.x, true), vec4<bool>(true, global1.x, true, false)), -665f >= global0.x)), arg_0);
    var var_1 = _wgslsmith_sub_i32(1i, ~(3988i & arg_2.x));
    var var_2 = Struct_1(reverseBits(var_0.x));
    global2 = Struct_1(_wgslsmith_dot_vec2_u32(reverseBits(_wgslsmith_mult_vec2_u32(var_0.zz, var_0.xx)) | (var_0.ww >> ((vec2<u32>(24061u, u_input.c) >> (var_0.zw % vec2<u32>(32u))) % vec2<u32>(32u))), _wgslsmith_mult_vec2_u32(~vec2<u32>(42824u, arg_1), var_0.zz)));
    return _wgslsmith_f_op_f32(ceil(global0.x));
}

fn func_1(arg_0: vec2<f32>, arg_1: vec2<u32>) -> Struct_1 {
    let var_0 = firstLeadingBit(_wgslsmith_clamp_vec3_i32(func_2(firstTrailingBit(arg_1.x), vec2<bool>(true, global1.x), !global1.yzz, global1.wy), -vec3<i32>(global4.x, 2147483647i, -9766i), ~(~u_input.d)) << (vec3<u32>(select(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.x, global2.a, global2.a), vec3<u32>(u_input.c, 9369u, arg_1.x)), arg_1.x, false), u_input.c >> (_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 10452u), vec2<u32>(0u, u_input.c)) % 32u), 1u) % vec3<u32>(32u)));
    let var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -853f) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(arg_0.x))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + arg_0.x) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(global1.x, arg_1.x, var_0.yz)))), 716f) * _wgslsmith_div_vec3_f32(global0.xxx, vec3<f32>(-436f, global0.x, _wgslsmith_f_op_f32(floor(-1275f)))));
    global3 = array<vec2<f32>, 17>();
    var var_2 = vec2<f32>(941f, -465f);
    var var_3 = var_2.x;
    return Struct_1(_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(arg_1, select(arg_1, vec2<u32>(0u, u_input.c), global1.x), arg_1) >> (vec2<u32>(min(u_input.a, global2.a), 1u & u_input.c) % vec2<u32>(32u)), abs(~vec2<u32>(arg_1.x, arg_1.x)) & _wgslsmith_mult_vec2_u32(vec2<u32>(1u, arg_1.x), vec2<u32>(20057u, 67295u))));
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_1) -> StorageBuffer {
    let var_0 = _wgslsmith_div_vec2_u32(~(~vec2<u32>(0u, 119841u)), vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), reverseBits(arg_0.xyx)), 4294967295u)) >> (firstTrailingBit(_wgslsmith_mult_vec2_u32(arg_0.wz, (arg_0.xy | arg_0.zw) >> (min(vec2<u32>(1728u, 8285u), arg_0.ww) % vec2<u32>(32u)))) % vec2<u32>(32u));
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0.x, -284f, global0.x, global0.x), vec4<f32>(global0.x, 1349f, 865f, global0.x), global1.x)))))));
    let var_1 = !global1.yx;
    var var_2 = func_1(global0.zz, _wgslsmith_mod_vec2_u32(vec2<u32>(~16703u, ~(48930u | var_0.x)), vec2<u32>(~57023u, 1u)));
    let var_3 = false && all(!vec4<bool>(true, true, true, any(vec2<bool>(false, global1.x))));
    return StorageBuffer(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1614f, _wgslsmith_f_op_f32(ceil(1000f)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-706f, _wgslsmith_div_f32(global0.x, -1000f)) + global0.x)));
    let var_1 = Struct_1(global2.a);
    let var_2 = u_input.d.zx;
    global4 = u_input.d;
    let var_3 = -firstTrailingBit(select(global4.yz & firstLeadingBit(vec2<i32>(global4.x, 4693i)), u_input.b, vec2<bool>(!global1.x, true)));
    let var_4 = vec4<bool>(true, false, !(!global1.x), global1.x);
    global0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1135f, _wgslsmith_f_op_f32(floor(365f)), global0.x, var_0));
    let var_5 = var_3;
    let var_6 = var_5;
    let x = u_input.a;
    s_output = func_4(vec4<u32>(global2.a, _wgslsmith_dot_vec4_u32(~vec4<u32>(var_1.a, 1u, 14661u, var_1.a), ~(vec4<u32>(global2.a, 5663u, 33898u, 4294967295u) & vec4<u32>(global2.a, 34287u, 0u, 23082u))), 0u, ~22706u), func_1(global0.xz, max(_wgslsmith_mult_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(var_1.a, u_input.a)), vec2<u32>(76545u, var_1.a)), ~(~vec2<u32>(73563u, 0u)))));
}


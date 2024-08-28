struct Struct_1 {
    a: vec2<bool>,
    b: u32,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<u32>,
    c: u32,
    d: f32,
}

struct Struct_4 {
    a: Struct_2,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: vec2<f32>,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -1i;

var<private> global1: Struct_3;

var<private> global2: Struct_2;

var<private> global3: array<f32, 16> = array<f32, 16>(-1000f, -690f, -1271f, 274f, -944f, 369f, 461f, -392f, -1037f, 1399f, -567f, 177f, 427f, -290f, 744f, -199f);

var<private> global4: Struct_2;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_2() -> i32 {
    return -1i;
}

fn func_1() -> vec3<u32> {
    global1 = Struct_3(global1.a, ~vec3<u32>(~_wgslsmith_sub_u32(2092u, 1u), 7164u, ~firstTrailingBit(u_input.a)), ~global2.a.b, 1327f);
    global4 = global1.a;
    let var_0 = global3[_wgslsmith_index_u32(min(1u, countOneBits(abs(firstLeadingBit(0u) << (abs(global4.a.b) % 32u)))), 16u)];
    global0 = _wgslsmith_clamp_i32(1993i, min(-21673i, ~(~(-2147483647i))) | func_2(), 2147483647i);
    let var_1 = global1.a;
    return vec3<u32>(~var_1.a.b, abs(4294967295u), 90387u) << (vec3<u32>(u_input.a, ~_wgslsmith_mod_u32(global2.a.b, global2.a.b), ~global4.a.b) % vec3<u32>(32u));
}

fn func_3(arg_0: u32, arg_1: vec2<f32>, arg_2: Struct_3, arg_3: bool) -> f32 {
    global4 = global1.a;
    var var_0 = Struct_1(!select(arg_2.a.a.a, vec2<bool>(global2.a.c, global1.a.a.c), false && all(vec2<bool>(global2.a.a.x, true))), ~reverseBits(firstTrailingBit(firstLeadingBit(4294967295u))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.d) * _wgslsmith_f_op_f32(max(-690f, arg_1.x))), global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 1u, global1.a.a.b, global1.c), vec4<u32>(1u, u_input.a, global1.c, global1.c)) >> (min(1u, arg_2.c) % 32u), 16u)]) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(1222f))))));
    var var_1 = global1.d;
    var var_2 = Struct_3(arg_2.a, vec3<u32>(~arg_0, var_0.b, 30377u), arg_2.b.x, 1000f);
    let var_3 = Struct_3(Struct_2(Struct_1(vec2<bool>(global3[_wgslsmith_index_u32(global1.b.x, 16u)] >= arg_2.d, !var_0.c), max(func_1().x, ~1684u), firstTrailingBit(arg_2.b.x) <= ~arg_2.a.a.b)), ~(arg_2.b ^ global1.b), 4294967295u, _wgslsmith_f_op_f32(step(global3[_wgslsmith_index_u32(~max(~35238u, 1u), 16u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1048f) + _wgslsmith_f_op_f32(-410f * 1020f)))));
    return var_3.d;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(Struct_1(vec2<bool>(!all(vec3<bool>(global2.a.c, true, global1.a.a.c)), global2.a.a.x), global1.c, select(true, !global4.a.c, true || global1.a.a.a.x)));
    let var_1 = ~func_1();
    var var_2 = global1.a;
    let var_3 = global1.a.a.a;
    var_0 = global1.a;
    var_2 = Struct_2(global2.a);
    let var_4 = Struct_4(Struct_2(Struct_1(!global2.a.a, var_0.a.b, false)), ~_wgslsmith_mult_vec3_u32(var_1, func_1()));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(-219f, -1692f)), -1000f)), 254f, global1.d), vec3<f32>(_wgslsmith_f_op_f32(func_3(_wgslsmith_div_u32(var_0.a.b, var_1.x), vec2<f32>(-1259f, global3[_wgslsmith_index_u32(u_input.a, 16u)]), Struct_3(Struct_2(Struct_1(vec2<bool>(true, false), 1u, global1.a.a.a.x)), var_1, var_2.a.b, 1000f), select(false, var_4.a.a.c, var_0.a.c))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1000f)) + 1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.d - -664f))), !var_0.a.c)), _wgslsmith_f_op_f32(sign(global3[_wgslsmith_index_u32(~var_2.a.b, 16u)])), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-395f, global3[_wgslsmith_index_u32(var_0.a.b, 16u)]), vec2<f32>(global3[_wgslsmith_index_u32(23412u, 16u)], -240f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1374f, global1.d))) + _wgslsmith_f_op_vec2_f32(max(vec2<f32>(global3[_wgslsmith_index_u32(0u, 16u)], 1381f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, global1.d)))))), max(31771i, _wgslsmith_sub_i32(-1i, -22440i)), global1.c);
}


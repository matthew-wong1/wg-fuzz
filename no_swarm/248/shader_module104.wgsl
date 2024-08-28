struct Struct_1 {
    a: vec3<u32>,
    b: i32,
}

struct Struct_2 {
    a: bool,
    b: vec2<f32>,
    c: bool,
    d: vec4<f32>,
}

struct Struct_3 {
    a: i32,
    b: vec4<bool>,
    c: vec3<f32>,
    d: vec2<bool>,
    e: f32,
}

struct Struct_4 {
    a: Struct_3,
}

struct Struct_5 {
    a: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec2<u32>,
    d: vec4<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec3<u32>(1u, 39205u, 4025u), 1i);

var<private> global1: vec2<f32> = vec2<f32>(244f, 865f);

var<private> global2: f32 = -647f;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: vec4<f32>) -> f32 {
    global0 = Struct_1(abs(vec3<u32>(reverseBits(u_input.c.x), global0.a.x, countOneBits(10119u) & (0u >> (u_input.d.x % 32u)))), i32(-1i) * -11571i);
    var var_0 = -461f;
    var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(235f)))));
    let var_1 = Struct_5(Struct_2(!all(vec4<bool>(false, true, true, false)) | all(vec2<bool>(true, false)), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(arg_0.x - -901f), _wgslsmith_f_op_f32(arg_0.x + 441f)), vec2<f32>(1f, _wgslsmith_f_op_f32(-global1.x))), !select(true, true, false), arg_0));
    var var_2 = Struct_5(Struct_2(all(select(vec3<bool>(var_1.a.a, var_1.a.c, false), !vec3<bool>(var_1.a.c, var_1.a.c, var_1.a.c), vec3<bool>(true, true, true))), arg_0.xy, true, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global1.x, var_1.a.b.x, -746f, 544f))))));
    return var_2.a.b.x;
}

fn func_2(arg_0: u32, arg_1: f32, arg_2: Struct_3, arg_3: vec3<i32>) -> i32 {
    let var_0 = Struct_2(all(arg_2.b), _wgslsmith_f_op_vec2_f32(select(arg_2.c.xz, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2.e, -1525f) - vec2<f32>(arg_2.c.x, arg_1))), arg_2.d)), false, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_2.e, arg_2.c.x, global1.x, -942f), vec4<f32>(-932f, arg_1, global1.x, arg_1), arg_2.b))))));
    var var_1 = arg_0;
    global2 = -604f;
    var var_2 = vec3<bool>(var_0.a, arg_1 > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, 499f, 394f, global1.x))))), (arg_2.e != _wgslsmith_f_op_f32(-var_0.d.x)) && var_0.c);
    let var_3 = Struct_1(_wgslsmith_mult_vec3_u32(u_input.d.wxz, abs(select(global0.a, vec3<u32>(u_input.b.x, 1u, u_input.d.x), arg_2.b.xwz)) & ~u_input.d.zyw), _wgslsmith_div_i32(countOneBits(u_input.e), _wgslsmith_div_i32(-34923i, _wgslsmith_div_i32(firstLeadingBit(arg_3.x), 1i))));
    return arg_2.a << (abs(global0.a.x) % 32u);
}

fn func_1(arg_0: i32, arg_1: Struct_5) -> vec2<f32> {
    var var_0 = Struct_2(firstTrailingBit(abs(u_input.c.x)) < 8912u, arg_1.a.d.yz, arg_1.a.c, _wgslsmith_f_op_vec4_f32(arg_1.a.d * vec4<f32>(_wgslsmith_f_op_f32(-global1.x), 795f, arg_1.a.b.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(1388f)))))));
    var var_1 = false;
    let var_2 = ~vec4<i32>(countOneBits(_wgslsmith_div_i32(func_2(u_input.c.x, global1.x, Struct_3(-9714i, vec4<bool>(false, true, true, var_0.c), var_0.d.xxx, vec2<bool>(true, true), arg_1.a.d.x), vec3<i32>(u_input.a, global0.b, u_input.a)), i32(-1i) * -1i)), abs(firstLeadingBit(firstTrailingBit(global0.b))), global0.b, u_input.e);
    let var_3 = Struct_4(Struct_3(var_2.x, vec4<bool>(!(!arg_1.a.a), select(-1i <= arg_0, arg_1.a.c, true), true, select(any(vec2<bool>(true, false)), select(false, var_0.a, false), var_0.c)), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(round(arg_1.a.d.zzz)))), select(vec2<bool>(false, true), vec2<bool>(!arg_1.a.c, arg_1.a.c), !select(vec2<bool>(arg_1.a.c, arg_1.a.a), vec2<bool>(true, var_0.c), vec2<bool>(var_0.c, var_0.c))), -984f));
    var var_4 = ~(~(~vec4<u32>(abs(4294967295u), ~44242u, 10897u, ~u_input.c.x)));
    return _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, arg_1.a.b.x)) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_0.d.x, global1.x))), vec2<f32>(arg_1.a.b.x, global1.x))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(u_input.d.yzz, _wgslsmith_mult_i32(~global0.b, 2584i | (0i & global0.b)));
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.x, -605f) + vec2<f32>(938f, -368f)))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(func_1(global0.b, Struct_5(Struct_2(false, vec2<f32>(global1.x, global1.x), false, vec4<f32>(-388f, global1.x, global1.x, global1.x))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-779f, 1151f)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, -111f))))));
    let var_1 = u_input.d.yzx;
    global2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_vec2_f32(func_1(-2147483647i, Struct_5(Struct_2(true, var_0, true, vec4<f32>(global1.x, 1006f, var_0.x, 321f))))).x + global1.x);
    global2 = _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(var_0.x)))), _wgslsmith_f_op_f32(-global1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-364f, 678f)))));
    global2 = _wgslsmith_f_op_f32(f32(-1f) * -530f);
    global0 = Struct_1(_wgslsmith_clamp_vec3_u32(abs(vec3<u32>(firstLeadingBit(var_1.x), u_input.d.x, u_input.d.x)), var_1 | (~var_1 & (vec3<u32>(var_1.x, var_1.x, var_1.x) ^ vec3<u32>(28460u, 4294967295u, global0.a.x))), ~select(var_1, min(vec3<u32>(u_input.b.x, 89836u, 0u), global0.a), vec3<bool>(true, true, true))), 0i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, -254f, global1.x, -234f) * vec4<f32>(global1.x, global1.x, -795f, var_0.x)), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global1.x, -216f, global1.x, -1319f)))) + vec4<f32>(_wgslsmith_div_f32(-726f, 1116f), _wgslsmith_f_op_f32(ceil(global1.x)), _wgslsmith_div_f32(global1.x, 1779f), -1000f)))), var_1.x, 42677u, 838f);
}


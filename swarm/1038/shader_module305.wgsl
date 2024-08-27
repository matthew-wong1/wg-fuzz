struct Struct_1 {
    a: f32,
    b: vec3<u32>,
    c: vec2<u32>,
    d: vec4<u32>,
    e: u32,
}

struct Struct_2 {
    a: i32,
    b: vec4<bool>,
    c: vec3<u32>,
    d: u32,
    e: vec3<u32>,
}

struct Struct_3 {
    a: f32,
    b: vec3<i32>,
}

struct Struct_4 {
    a: vec2<f32>,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 10>;

var<private> global1: Struct_4;

var<private> global2: array<i32, 11> = array<i32, 11>(-48109i, 0i, -5630i, 66207i, i32(-2147483648), 14455i, 19252i, -29203i, 369i, 46335i, -1i);

var<private> global3: Struct_3 = Struct_3(383f, vec3<i32>(0i, i32(-2147483648), 0i));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_3) -> u32 {
    let var_0 = Struct_2(~firstTrailingBit(arg_0.b.x), vec4<bool>(-2147483647i <= max(global3.b.x, 0i), true, any(vec4<bool>(any(vec2<bool>(true, true)), all(vec3<bool>(true, false, true)), 113f != global3.a, true)), true), vec3<u32>(~4294967295u, global1.b.x, 1u), min(~0u, u_input.a), ~vec3<u32>(global0[_wgslsmith_index_u32(~max(1u, 1u), 10u)], ~(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 10u)], 10u)] >> (global0[_wgslsmith_index_u32(53506u, 10u)] % 32u)), ~(~42334u)));
    var var_1 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(global3.a)), _wgslsmith_f_op_f32(min(arg_0.a, 686f))), 1803f)), vec3<i32>(42628i, firstTrailingBit(-2147483647i), ~global3.b.x));
    var var_2 = abs(_wgslsmith_clamp_u32(18315u, ~(~global1.b.x), 12910u)) ^ 4294967295u;
    var_1 = arg_0;
    global1 = Struct_4(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_0.a), -367f)), -511f)), _wgslsmith_clamp_vec4_u32(global1.b, max(global1.b, firstLeadingBit(reverseBits(global1.b))), ~global1.b));
    return 0u;
}

fn func_2() -> Struct_4 {
    let var_0 = any(vec2<bool>(true, -(~(-1i)) > _wgslsmith_dot_vec3_i32(global3.b, global3.b)));
    let var_1 = var_0;
    let var_2 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(4294967295u, 23992u), ~global1.b.xy & abs(vec2<u32>(u_input.a, global0[_wgslsmith_index_u32(1u, 10u)]))), global1.b.xy), 10u)];
    var var_3 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(select(global1.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global1.a) + _wgslsmith_f_op_vec2_f32(vec2<f32>(707f, -219f) - _wgslsmith_f_op_vec2_f32(floor(global1.a)))), var_1 == true)), global1.a));
    global1 = Struct_4(vec2<f32>(global3.a, global1.a.x), select(vec4<u32>(0u, global0[_wgslsmith_index_u32(u_input.a, 10u)], abs(17174u), _wgslsmith_add_u32(func_3(Struct_3(global3.a, global3.b)), max(u_input.a, 35411u))), global1.b, var_0));
    return Struct_4(global1.a, ~global1.b);
}

fn func_4(arg_0: f32, arg_1: Struct_4, arg_2: Struct_4) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.a) + _wgslsmith_f_op_f32(trunc(-1000f))) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -189f), _wgslsmith_f_op_f32(-904f + 2398f))))));
    return Struct_2(-select(-u_input.b, u_input.b, any(vec2<bool>(true, false))) & _wgslsmith_sub_i32(~firstLeadingBit(-18417i), ~_wgslsmith_mod_i32(-7416i, -14114i)), select(select(!select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, false), true), vec4<bool>(true, true, true, true), vec4<bool>(false, any(vec4<bool>(true, false, true, false)), select(false, false, false), all(vec3<bool>(false, false, true)))), vec4<bool>(func_2().b.x > _wgslsmith_clamp_u32(global0[_wgslsmith_index_u32(1u, 10u)], 25931u, arg_1.b.x), all(vec4<bool>(true, true, true, true)), any(vec4<bool>(true, false, true, false)), any(vec3<bool>(false, true, false))), select(select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, false), all(vec3<bool>(true, true, false))), vec4<bool>(true, true, true, true), true)), arg_2.b.yxz, _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(~arg_1.b.zz & vec2<u32>(global1.b.x, 5850u), vec2<u32>(u_input.a, _wgslsmith_mult_u32(global1.b.x, 4294967295u))), global1.b.x), firstTrailingBit(vec3<u32>(~1u, _wgslsmith_dot_vec3_u32(arg_1.b.zxz, arg_1.b.zzx) & _wgslsmith_mod_u32(u_input.a, global1.b.x), u_input.a)));
}

fn func_1() -> Struct_1 {
    let var_0 = func_4(-272f, func_2(), Struct_4(_wgslsmith_div_vec2_f32(vec2<f32>(global1.a.x, global3.a), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.a.x, global3.a) + global1.a), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global3.a, -1000f)))), global1.b));
    global0 = array<u32, 10>();
    global1 = func_2();
    global3 = Struct_3(global3.a, ~vec3<i32>(1i, u_input.b, i32(-1i) * -2147483647i));
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(-global3.a), global1.a.x, _wgslsmith_f_op_f32(f32(-1f) * -343f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(global1.a.x)))), global3.a));
    return Struct_1(_wgslsmith_f_op_f32(select(global1.a.x, global1.a.x, false)), var_0.e, global1.b.xz, abs(vec4<u32>(_wgslsmith_add_u32(0u >> (var_0.c.x % 32u), _wgslsmith_dot_vec2_u32(global1.b.zw, vec2<u32>(global0[_wgslsmith_index_u32(23441u, 10u)], global0[_wgslsmith_index_u32(0u, 10u)]))), 0u, _wgslsmith_mod_u32(_wgslsmith_sub_u32(global0[_wgslsmith_index_u32(83905u, 10u)], u_input.a), 4294967295u), 32528u & (39030u & global0[_wgslsmith_index_u32(1u, 10u)]))), _wgslsmith_dot_vec4_u32(vec4<u32>(func_2().b.x, 45425u, 38137u, 1u), vec4<u32>(global1.b.x, u_input.a, _wgslsmith_dot_vec4_u32(global1.b, global1.b), ~u_input.a)) << (var_0.e.x % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-global1.a.x);
    global2 = array<i32, 11>();
    let var_1 = func_1();
    var var_2 = _wgslsmith_sub_u32(26502u >> (~(_wgslsmith_dot_vec3_u32(global1.b.xxx, vec3<u32>(71201u, u_input.a, 1u)) ^ _wgslsmith_div_u32(24611u, global1.b.x)) % 32u), var_1.e);
    let var_3 = ~(~var_1.b.xx);
    let x = u_input.a;
    s_output = StorageBuffer(var_1.a, vec3<i32>(~min(u_input.b, max(u_input.b, 2147483647i)), ~func_4(_wgslsmith_f_op_f32(step(var_1.a, 649f)), Struct_4(vec2<f32>(347f, -217f), global1.b), Struct_4(global1.a, global1.b)).a, func_4(_wgslsmith_f_op_f32(step(var_1.a, global3.a)), Struct_4(_wgslsmith_f_op_vec2_f32(sign(global1.a)), vec4<u32>(52858u, global1.b.x, global1.b.x, global1.b.x)), Struct_4(_wgslsmith_f_op_vec2_f32(vec2<f32>(2051f, -358f) - vec2<f32>(var_0, -1025f)), var_1.d)).a));
}


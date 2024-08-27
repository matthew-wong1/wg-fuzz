struct Struct_1 {
    a: vec4<f32>,
    b: f32,
    c: u32,
    d: f32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: f32,
    c: u32,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: i32,
    d: i32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<i32>,
    c: vec4<i32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 22> = array<bool, 22>(false, true, true, true, false, false, true, true, false, true, true, false, false, false, true, false, false, false, true, false, true, true);

var<private> global1: f32 = 174f;

var<private> global2: vec4<bool>;

var<private> global3: f32;

var<private> global4: Struct_2 = Struct_2(vec4<f32>(-667f, 1340f, -2521f, -382f), -708f, 0u, Struct_1(vec4<f32>(-1000f, 1351f, -813f, -572f), -1000f, 10455u, 1516f));

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_2, arg_2: Struct_1, arg_3: i32) -> f32 {
    var var_0 = false;
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-arg_1.d.a))), arg_2.a) - vec4<f32>(462f, -1000f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(arg_2.a.x, arg_2.b)))), global4.a.x)), _wgslsmith_f_op_f32(-arg_2.d), _wgslsmith_clamp_u32(global4.c, global4.d.c, global4.c), _wgslsmith_div_f32(1069f, _wgslsmith_f_op_f32(-699f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-914f)), 755f))));
    global1 = _wgslsmith_f_op_f32(step(var_1.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-204f, _wgslsmith_f_op_f32(-var_1.b))) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(min(-318f, arg_1.a.x)))))));
    let var_2 = u_input.a.zww;
    global3 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_1.b - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(var_1.a.x)), _wgslsmith_f_op_f32(abs(-689f)))))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-424f * _wgslsmith_f_op_f32(abs(var_1.a.x))) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global4.b * -1387f))), -1419f))));
}

fn func_2(arg_0: vec2<f32>) -> u32 {
    let var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-global4.a.x), _wgslsmith_f_op_f32(-global4.b), arg_0.x, _wgslsmith_div_f32(arg_0.x, arg_0.x)))), arg_0.x, ~_wgslsmith_add_u32(_wgslsmith_sub_u32(global4.c ^ global4.c, global4.d.c ^ 1u), 30745u), global4.d);
    let var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(var_0.a.wxw, var_0, global4.d, -1i))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(var_0.b, var_0.b)))), -642f, global4.d.b)), global4.b, (var_0.c & abs(17245u)) << (_wgslsmith_sub_u32(0u, var_0.d.c) % 32u), Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(round(global4.b)), _wgslsmith_f_op_f32(arg_0.x - -364f), -1473f, _wgslsmith_div_f32(var_0.a.x, arg_0.x))), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -2439f), -783f))), ~(~global4.c), _wgslsmith_f_op_f32(-910f + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_0.d.a.x))))));
    let var_2 = abs(_wgslsmith_add_u32(2618u, 60418u));
    global0 = array<bool, 22>();
    global0 = array<bool, 22>();
    return _wgslsmith_sub_u32(var_0.c, 1u);
}

fn func_1(arg_0: bool, arg_1: u32, arg_2: vec4<i32>) -> i32 {
    global4 = Struct_2(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global4.d.a)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global4.d.b) + global4.b), ~global4.c, Struct_1(global4.d.a, -452f, _wgslsmith_add_u32(global4.c, ~(arg_1 ^ global4.d.c)), global4.b));
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(exp2(global4.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global4.a.x))))), _wgslsmith_f_op_f32(max(global4.d.a.x, 1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1573f + global4.a.x) - 1197f)))));
    let var_1 = 175f;
    var var_2 = ~(~(~func_2(vec2<f32>(global4.a.x, global4.d.b))) >> (_wgslsmith_add_u32(4294967295u, 0u) % 32u));
    let var_3 = vec2<u32>(~global4.d.c, firstLeadingBit(~_wgslsmith_sub_u32(abs(arg_1), ~19487u)));
    return arg_2.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<u32>(global4.d.c, global4.c << (max(~9984u, ~4294967295u) % 32u), global4.c & reverseBits(~_wgslsmith_dot_vec2_u32(vec2<u32>(61211u, global4.c), vec2<u32>(global4.d.c, global4.c))), ~_wgslsmith_dot_vec2_u32(vec2<u32>(1u, _wgslsmith_sub_u32(global4.c, 23935u)), vec2<u32>(global4.c, global4.c) << (select(vec2<u32>(global4.d.c, 45868u), vec2<u32>(0u, 5212u), global2.x) % vec2<u32>(32u))));
    let var_1 = _wgslsmith_div_vec2_u32(~(~_wgslsmith_sub_vec2_u32(firstTrailingBit(var_0.xy), ~var_0.xz)), _wgslsmith_add_vec2_u32(reverseBits(_wgslsmith_add_vec2_u32(var_0.xy, vec2<u32>(1u, var_0.x))) & _wgslsmith_clamp_vec2_u32(var_0.yw, ~vec2<u32>(var_0.x, global4.c), var_0.zz), vec2<u32>(4294967295u, 51264u) | vec2<u32>(_wgslsmith_sub_u32(var_0.x, 1u), ~848u)));
    let var_2 = _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, ~_wgslsmith_add_i32(u_input.d, u_input.d), -func_1(true, 4294967295u, u_input.a), ~u_input.a.x), countOneBits(_wgslsmith_sub_vec4_i32(u_input.a, u_input.a)) << (~(var_0 | var_0) % vec4<u32>(32u))) << ((~var_0.x ^ ~_wgslsmith_clamp_u32(1u, 0u, firstTrailingBit(global4.d.c))) % 32u);
    var var_3 = Struct_2(global4.d.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(173f - global4.a.x)), _wgslsmith_sub_u32(_wgslsmith_mod_u32(max(global4.d.c, var_0.x), global4.c) >> (~global4.d.c % 32u), _wgslsmith_mult_u32(func_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(global4.d.a.x, global4.a.x) * global4.d.a.wy)), select(~4294967295u, countOneBits(var_1.x), var_1.x <= 0u))), global4.d);
    global0 = array<bool, 22>();
    var_3 = Struct_2(_wgslsmith_f_op_vec4_f32(-var_3.a), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(731f))))))), 0u & ~var_1.x, Struct_1(_wgslsmith_f_op_vec4_f32(var_3.a * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-global4.d.a), _wgslsmith_f_op_vec4_f32(ceil(var_3.a)), false))), _wgslsmith_f_op_f32(global4.a.x + global4.a.x), ~((global4.c << (0u % 32u)) >> (var_1.x % 32u)), _wgslsmith_f_op_f32(f32(-1f) * -2220f)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1476f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(global4.b, global4.d.a.x)), var_3.a.x)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-global4.d.a.zx))) * vec2<f32>(_wgslsmith_f_op_f32(sign(global4.a.x)), 426f)))), vec4<i32>(reverseBits(var_2), u_input.a.x, u_input.a.x, ~(~u_input.e.x | -u_input.e.x)), max(vec4<i32>(_wgslsmith_add_i32(-72032i, 33166i & u_input.b.x), _wgslsmith_sub_i32(0i, 11248i), -62437i, -(var_2 << (var_1.x % 32u))), ~abs(vec4<i32>(var_2, 0i, var_2, 20707i))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -495f), _wgslsmith_f_op_f32(-global4.a.x)));
}


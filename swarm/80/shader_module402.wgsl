struct Struct_1 {
    a: vec2<u32>,
    b: vec3<u32>,
    c: vec3<i32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec3<f32>,
    c: f32,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: f32,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: vec3<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(257f, Struct_1(vec2<u32>(3985u, 23171u), vec3<u32>(0u, 4294967295u, 22615u), vec3<i32>(-49167i, 1i, 2147483647i)), 904f, vec2<f32>(-1412f, 625f));

var<private> global1: array<Struct_3, 11>;

var<private> global2: Struct_2;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3() -> f32 {
    var var_0 = global2.b;
    global0 = Struct_3(_wgslsmith_f_op_f32(trunc(global0.a)), Struct_1(~global0.b.a, max(vec3<u32>(~global0.b.a.x, ~u_input.a, global2.a.x | 4294967295u), vec3<u32>(global2.a.x, 4294967295u, firstTrailingBit(39232u))), firstLeadingBit(firstLeadingBit(global0.b.c) >> (_wgslsmith_mult_vec3_u32(global0.b.b, global0.b.b) % vec3<u32>(32u)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(global0.c, 727f))) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global2.c)))))), vec2<f32>(global0.a, _wgslsmith_f_op_f32(floor(global2.c))));
    let var_1 = ~(~(~_wgslsmith_clamp_vec2_u32(vec2<u32>(9915u, global2.a.x), global2.a.xy, global0.b.a) & _wgslsmith_sub_vec2_u32(_wgslsmith_mod_vec2_u32(global2.a.zz, global0.b.a), vec2<u32>(24339u, u_input.a))));
    var var_2 = _wgslsmith_clamp_vec3_i32(reverseBits(vec3<i32>(global0.b.c.x, 2147483647i, 1i)), min(vec3<i32>(reverseBits(-global0.b.c.x), -(global0.b.c.x ^ global0.b.c.x), global0.b.c.x), ~(-abs(global0.b.c))), vec3<i32>(global0.b.c.x, -16483i, abs(-57743i)));
    var_0 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(global2.b - _wgslsmith_f_op_vec3_f32(-global2.b))));
    return _wgslsmith_f_op_f32(trunc(global2.b.x));
}

fn func_2(arg_0: vec2<bool>) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_3()))) + 244f);
    let var_1 = global0.b;
    var var_2 = global0.b;
    var var_3 = var_1.c.x;
    var_0 = _wgslsmith_div_f32(global0.d.x, -806f);
    return _wgslsmith_clamp_i32(reverseBits(global0.b.c.x), 1i, ~reverseBits(31629i) & _wgslsmith_add_i32(22218i, ~global0.b.c.x));
}

fn func_1(arg_0: f32) -> StorageBuffer {
    var var_0 = vec4<i32>(global0.b.c.x, func_2(vec2<bool>(true, false)) << ((global2.a.x & u_input.a) % 32u), -18201i, _wgslsmith_mod_i32(i32(-1i) * -2147483647i, global0.b.c.x));
    var var_1 = _wgslsmith_div_f32(global0.c, global0.c);
    var var_2 = ~global0.b.a;
    var var_3 = Struct_3(1858f, Struct_1(_wgslsmith_div_vec2_u32(global0.b.b.zz, _wgslsmith_add_vec2_u32(global0.b.b.xz | vec2<u32>(global2.a.x, 0u), vec2<u32>(global2.a.x, 25944u))), abs(_wgslsmith_mult_vec3_u32(vec3<u32>(0u, u_input.a, global2.a.x), global2.a)), ~(-vec3<i32>(1i, var_0.x, 56709i)) << (((vec3<u32>(global2.a.x, global2.a.x, global0.b.a.x) & vec3<u32>(var_2.x, 4294967295u, 9620u)) << (global2.a % vec3<u32>(32u))) % vec3<u32>(32u))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(-406f, _wgslsmith_f_op_f32(global2.c * _wgslsmith_f_op_f32(sign(global2.c))))))), global0.d);
    var_1 = _wgslsmith_f_op_f32(round(296f));
    return StorageBuffer(_wgslsmith_f_op_f32(abs(arg_0)), ~firstTrailingBit(_wgslsmith_div_vec2_i32(var_3.b.c.zy, vec2<i32>(-2147483647i, -1i))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global2.c, 627f, 903f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-632f, -549f, -639f)), vec3<bool>(false, false, true))), vec3<f32>(_wgslsmith_div_f32(-1390f, 1213f), global2.c, -1303f))))), ~(-1i) << (var_3.b.b.x % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1(global2.b.x);
}


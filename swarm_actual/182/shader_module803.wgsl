struct Struct_1 {
    a: vec3<u32>,
    b: f32,
    c: i32,
}

struct Struct_2 {
    a: bool,
    b: u32,
    c: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
}

struct Struct_4 {
    a: vec4<bool>,
    b: vec3<u32>,
    c: Struct_2,
    d: vec2<bool>,
}

struct Struct_5 {
    a: Struct_4,
    b: vec3<i32>,
    c: vec2<i32>,
    d: vec3<f32>,
    e: Struct_3,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: vec4<i32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

var<private> global1: Struct_3;

var<private> global2: Struct_5 = Struct_5(Struct_4(vec4<bool>(true, true, false, false), vec3<u32>(25082u, 60152u, 11219u), Struct_2(false, 4294967295u, Struct_1(vec3<u32>(40980u, 4294967295u, 4294967295u), 608f, 0i)), vec2<bool>(true, false)), vec3<i32>(23899i, 708i, 48208i), vec2<i32>(1i, 1i), vec3<f32>(909f, 460f, -1000f), Struct_3(-918f, Struct_2(false, 25763u, Struct_1(vec3<u32>(26855u, 1u, 0u), 934f, i32(-2147483648)))));

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec4<u32>) -> f32 {
    let var_0 = Struct_1(max(abs(vec3<u32>(global2.a.b.x, u_input.a, u_input.a)) << (countOneBits(~arg_0.xyz) % vec3<u32>(32u)), global2.a.b >> (~global1.b.c.a % vec3<u32>(32u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) + -1837f), -46617i);
    global1 = global2.e;
    let var_1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-573f))), _wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
    let var_2 = global2.d.x;
    global0 = global2.d;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_0.b, var_1)));
}

fn func_2(arg_0: bool, arg_1: f32) -> u32 {
    global1 = global2.e;
    var var_0 = any(select(vec3<bool>(countOneBits(global1.b.c.c) < global1.b.c.c, !(global0.x == global0.x), any(select(global2.a.a, global2.a.a, arg_0))), !(!(!vec3<bool>(false, arg_0, arg_0))), global1.b.a));
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global2.d));
    var var_1 = Struct_1(~vec3<u32>(~select(1u, 17517u, global2.e.b.a), global1.b.b, 9797u), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(275f - _wgslsmith_f_op_f32(func_3(countOneBits(vec4<u32>(0u, 51216u, u_input.a, global2.a.b.x))))), _wgslsmith_div_f32(global0.x, 1985f), false)), abs(-11334i));
    global0 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(vec3<f32>(global0.x, arg_1, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.b.c.b) - _wgslsmith_f_op_f32(-var_1.b))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.d.x, 564f, global2.d.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, global0.x, global2.a.c.c.b)))))));
    return global2.e.b.c.a.x;
}

fn func_1(arg_0: Struct_3, arg_1: Struct_3, arg_2: i32, arg_3: u32) -> Struct_4 {
    let var_0 = vec3<i32>(14180i, ~(~(-arg_1.b.c.c ^ arg_1.b.c.c)), global1.b.c.c);
    global0 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(min(global2.d, global2.d))));
    var var_1 = Struct_2(!(~_wgslsmith_add_u32(arg_3, 4294967295u) <= ((global1.b.c.a.x | arg_0.b.c.a.x) ^ func_2(arg_0.b.a, global2.a.c.c.b))), _wgslsmith_clamp_u32(reverseBits(~_wgslsmith_mod_u32(u_input.a, 0u)), arg_3, global1.b.c.a.x), global2.e.b.c);
    let var_2 = global1.b.c.a.zz;
    let var_3 = ~vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, -39351i, -10663i) ^ var_0, vec3<i32>(14145i, -23835i, global2.b.x)) ^ 1i, firstLeadingBit(-49745i));
    return global2.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1.b.c.b;
    var var_1 = Struct_5(func_1(global2.e, global2.e, i32(-1i) * -global2.a.c.c.c, _wgslsmith_add_u32(~firstTrailingBit(global2.e.b.c.a.x), 4294967295u)), ~global2.b, global2.b.xy, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(806f - global0.x), global1.a, _wgslsmith_f_op_f32(f32(-1f) * -156f)) + global2.d) * global2.d), Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(309f))))), func_1(global2.e, global2.e, select(global2.a.c.c.c, 1i, global2.e.b.c.a.x > 4294967295u), 4294967295u).c));
    global1 = Struct_3(-1000f, var_1.a.c);
    let var_2 = global2.a.a.yz;
    global1 = var_1.e;
    global1 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x * global1.b.c.b) + _wgslsmith_f_op_f32(step(1954f, global1.b.c.b))))), func_1(var_1.e, Struct_3(-422f, func_1(global2.e, Struct_3(global0.x, Struct_2(var_1.a.a.x, var_1.a.b.x, global1.b.c)), -42744i, var_1.e.b.b).c), var_1.b.x, firstTrailingBit(u_input.a) >> (reverseBits(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.a), vec2<u32>(0u, 3082u))) % 32u)).c);
    var var_3 = _wgslsmith_f_op_f32(f32(-1f) * -1714f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, _wgslsmith_f_op_f32(1334f - _wgslsmith_f_op_f32(var_1.a.c.c.b * -783f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -406f) + global2.a.c.c.b), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(-2373f)), _wgslsmith_f_op_f32(-global1.a), global2.a.c.a & global2.a.c.a)))), _wgslsmith_div_f32(global1.a, -478f), _wgslsmith_mult_vec4_i32(~(~vec4<i32>(-24851i, 1i, var_1.a.c.c.c, var_1.e.b.c.c)), vec4<i32>(global2.b.x >> (0u % 32u), -1i, global2.b.x, global2.e.b.c.c)) | reverseBits(vec4<i32>(global1.b.c.c, global1.b.c.c, _wgslsmith_div_i32(-31958i, var_1.a.c.c.c), -global1.b.c.c)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.a, -1364f) * global0.yx))) * _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.b.c.b, var_1.a.c.c.b) - vec2<f32>(169f, -229f)))))));
}


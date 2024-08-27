struct Struct_1 {
    a: bool,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: u32,
    d: i32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 17>;

var<private> global1: vec3<f32> = vec3<f32>(-808f, -674f, 1000f);

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2() -> vec2<f32> {
    let var_0 = _wgslsmith_f_op_f32(-global1.x);
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global1.xz));
}

fn func_3() -> f32 {
    var var_0 = firstLeadingBit(-1i);
    var var_1 = Struct_1(global0[_wgslsmith_index_u32(~86253u, 17u)], _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(global1.x, -1134f), 919f) * global1.zx), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(select(global1.x, 410f, true)), global1.x))));
    var var_2 = Struct_1(!global0[_wgslsmith_index_u32(20043u, 17u)] || var_1.a, global1.xy);
    global0 = array<bool, 17>();
    global1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1457f, var_1.b.x, _wgslsmith_f_op_f32(-var_1.b.x)))));
    return var_1.b.x;
}

fn func_1(arg_0: f32) -> u32 {
    let var_0 = Struct_1(!(!(_wgslsmith_dot_vec2_u32(u_input.a.yx, u_input.a.xy) >= u_input.a.x)), _wgslsmith_f_op_vec2_f32(func_2()));
    var var_1 = ~25684u;
    let var_2 = Struct_1(false, _wgslsmith_f_op_vec2_f32(vec2<f32>(671f, _wgslsmith_f_op_f32(785f * 288f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(global1.x, _wgslsmith_f_op_f32(func_3())) - _wgslsmith_f_op_vec2_f32(-var_0.b))));
    var var_3 = Struct_1(select(false, any(!select(vec2<bool>(var_0.a, global0[_wgslsmith_index_u32(1u, 17u)]), vec2<bool>(var_2.a, false), vec2<bool>(false, var_0.a))), !any(!vec3<bool>(true, var_2.a, global0[_wgslsmith_index_u32(u_input.a.x, 17u)]))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(global1.x * 103f), 110f)))));
    var var_4 = var_2;
    return max(min(0u, _wgslsmith_mult_u32(4294967295u, reverseBits(~u_input.a.x))), 4294967295u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(~_wgslsmith_mod_u32(0u, ~func_1(global1.x)));
    global1 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, global1.x, global1.x)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-261f, global1.x, 722f))) + vec3<f32>(global1.x, global1.x, -555f)))), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-1034f * -171f), 906f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(global1.x))))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-944f, global1.x, global1.x))) - vec3<f32>(-1222f, global1.x, global1.x)))))));
    let var_1 = u_input.b;
    let var_2 = -(vec4<i32>(-2147483647i, abs(var_1), u_input.b, ~var_1) >> (abs(vec4<u32>(u_input.a.x, u_input.a.x, 1u, 1u) & vec4<u32>(u_input.c, u_input.c, u_input.e.x, 5580u)) % vec4<u32>(32u))) ^ (vec4<i32>(-2147483647i, ~(i32(-1i) * -16463i), -2147483647i, -var_1 << (1u % 32u)) & _wgslsmith_mult_vec4_i32(vec4<i32>(-52197i, -2147483647i, 2147483647i, -2276i), vec4<i32>(var_1, 0i, var_1, 13953i) << ((vec4<u32>(25295u, u_input.a.x, u_input.a.x, u_input.e.x) << (vec4<u32>(u_input.e.x, u_input.e.x, u_input.a.x, 0u) % vec4<u32>(32u))) % vec4<u32>(32u))));
    let var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(622f, global1.x, -175f, -1526f)))))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, -548f, global1.x, 611f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(643f, 1000f, -688f, -252f) + vec4<f32>(global1.x, global1.x, 133f, -956f))) * vec4<f32>(1156f, -276f, _wgslsmith_f_op_f32(-global1.x), -929f))));
    global1 = vec3<f32>(global1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1000f))), _wgslsmith_f_op_f32(-var_3.x));
    var var_4 = vec3<u32>(1u, 7046u, ~(~_wgslsmith_mod_u32(u_input.a.x, u_input.c))) >> (vec3<u32>(~(~reverseBits(37149u)), abs(~(~1u)), ~22020u) % vec3<u32>(32u));
    global1 = _wgslsmith_f_op_vec3_f32(-var_3.wxx);
    let var_5 = vec2<bool>(global0[_wgslsmith_index_u32(abs(_wgslsmith_mult_u32(var_4.x << (1u % 32u), 12146u)), 17u)], any(!select(vec3<bool>(true, global0[_wgslsmith_index_u32(4294967295u, 17u)], global0[_wgslsmith_index_u32(49482u, 17u)]), vec3<bool>(true, true, true), false)));
    let x = u_input.a;
    s_output = StorageBuffer(~var_2, vec2<i32>(_wgslsmith_sub_i32(var_2.x, ~var_2.x), u_input.d) << ((~firstTrailingBit(u_input.a.zz) << (var_4.xx % vec2<u32>(32u))) % vec2<u32>(32u)), ~(~_wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(var_4.x, var_4.x, var_4.x)), _wgslsmith_div_vec3_u32(vec3<u32>(var_4.x, 106463u, 75030u), vec3<u32>(1u, var_4.x, var_4.x)))));
}


struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: i32,
    d: vec2<i32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(27995u, 6470u, 69692u);

var<private> global1: vec4<f32> = vec4<f32>(1206f, -1593f, -1098f, -471f);

var<private> global2: array<Struct_1, 20> = array<Struct_1, 20>(Struct_1(false), Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(false), Struct_1(false), Struct_1(true), Struct_1(false), Struct_1(false), Struct_1(false), Struct_1(false), Struct_1(false), Struct_1(true), Struct_1(false), Struct_1(false));

var<private> global3: f32 = -1392f;

var<private> global4: Struct_1;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_1) -> bool {
    global1 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-683f, 700f, -876f, 1000f))))));
    let var_0 = Struct_1(global4.a || false);
    global1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(681f, global1.x, 952f, global1.x))))) * vec4<f32>(global1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(478f)) * -1107f), _wgslsmith_f_op_f32(ceil(-787f)), global1.x));
    global3 = -739f;
    var var_1 = u_input.a ^ (17135u ^ (22494u ^ reverseBits(min(global0.x, 4294967295u))));
    return true;
}

fn func_4(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: i32, arg_3: bool) -> i32 {
    global3 = global1.x;
    let var_0 = u_input.b.zyw;
    let var_1 = !arg_1.zz;
    var var_2 = 1264f;
    var var_3 = (_wgslsmith_sub_vec2_u32(global0.yx, _wgslsmith_add_vec2_u32(_wgslsmith_mod_vec2_u32(global0.xx, global0.zx), min(vec2<u32>(0u, global0.x), vec2<u32>(global0.x, 33950u)))) | _wgslsmith_mult_vec2_u32(countOneBits(global0.xz << (vec2<u32>(4294967295u, global0.x) % vec2<u32>(32u))), global0.zy)) | abs(~(min(vec2<u32>(0u, 114764u), vec2<u32>(19653u, 0u)) ^ global0.yx));
    return -1i;
}

fn func_2() -> vec3<f32> {
    let var_0 = countOneBits(func_4(Struct_1(!func_3(Struct_1(false))), !select(select(vec3<bool>(true, global4.a, false), vec3<bool>(true, global4.a, true), false), select(vec3<bool>(false, true, false), vec3<bool>(global4.a, false, false), vec3<bool>(global4.a, true, false)), true), reverseBits(1i), all(vec2<bool>(true, !global4.a))));
    var var_1 = vec3<bool>(true, select(!(!select(true, global4.a, true)), global4.a, global4.a), all(select(vec2<bool>(global4.a && true, global4.a), vec2<bool>(global4.a, global4.a && global4.a), select(select(vec2<bool>(true, global4.a), vec2<bool>(true, false), vec2<bool>(global4.a, false)), select(vec2<bool>(global4.a, global4.a), vec2<bool>(false, false), global4.a), true))));
    var var_2 = ~abs(-(vec2<i32>(1i, var_0) & ~vec2<i32>(var_0, -2147483647i)));
    let var_3 = !(!select(select(vec3<bool>(true, true, true), !vec3<bool>(true, var_1.x, global4.a), vec3<bool>(var_1.x, true, true)), vec3<bool>(true, global4.a, any(vec4<bool>(var_1.x, true, false, global4.a))), vec3<bool>(global4.a, true, var_1.x)));
    return global1.yxz;
}

fn func_5(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: vec2<f32>, arg_3: vec3<f32>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -855f), -678f, arg_1.a));
    var var_1 = arg_1.a;
    var var_2 = ~u_input.b.xyx;
    var var_3 = Struct_1(all(vec2<bool>(!any(vec4<bool>(false, false, false, false)), all(select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(global4.a, arg_1.a, false))))));
    var var_4 = true & var_3.a;
    return global2[_wgslsmith_index_u32(29960u, 20u)];
}

fn func_1(arg_0: vec4<i32>, arg_1: i32) -> bool {
    var var_0 = func_5(arg_0.xx, Struct_1(any(vec4<bool>(false, !global4.a, any(vec4<bool>(false, global4.a, true, true)), any(vec4<bool>(global4.a, true, true, global4.a))))), global1.zy, _wgslsmith_f_op_vec3_f32(func_2()));
    global3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.x * -133f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global1.x, global1.x))))));
    let var_1 = vec3<i32>(arg_0.x, arg_0.x, _wgslsmith_mult_i32(countOneBits(i32(-1i) * -arg_1), firstLeadingBit(func_4(global2[_wgslsmith_index_u32(u_input.a, 20u)], select(vec3<bool>(true, false, true), vec3<bool>(var_0.a, global4.a, var_0.a), global4.a), -u_input.c, false))));
    var var_2 = vec4<i32>(21247i, _wgslsmith_sub_i32(-var_1.x, -16451i), _wgslsmith_add_i32(-17621i ^ (i32(-1i) * -arg_0.x), _wgslsmith_sub_i32(2147483647i, countOneBits(reverseBits(arg_1)))), u_input.c);
    var var_3 = ~(u_input.a << (firstTrailingBit(_wgslsmith_dot_vec2_u32(global0.xz, ~vec2<u32>(u_input.a, u_input.a))) % 32u));
    return global4.a;
}

fn func_6(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: Struct_1) -> StorageBuffer {
    let var_0 = func_5(u_input.b.yz << (abs(global0.xy) % vec2<u32>(32u)), func_5(firstLeadingBit(vec2<i32>(-u_input.b.x, i32(-1i) * -44321i)), global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(~(~u_input.a), 1u), 20u)], _wgslsmith_f_op_vec2_f32(select(vec2<f32>(global1.x, 820f), global1.xz, select(select(vec2<bool>(false, true), vec2<bool>(arg_0.x, false), vec2<bool>(arg_1.a, true)), arg_0.xz, !arg_0.yz))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(678f, _wgslsmith_f_op_f32(global1.x + global1.x), _wgslsmith_f_op_f32(sign(global1.x))))), global1.xz, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(round(global1.x)), _wgslsmith_f_op_f32(f32(-1f) * -1993f), _wgslsmith_f_op_f32(f32(-1f) * -523f)) + _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global1.x, global1.x, global1.x)))) * global1.zxz));
    var var_1 = _wgslsmith_mult_u32(4294967295u, (~u_input.a | global0.x) >> (u_input.a % 32u));
    global4 = var_0;
    let var_2 = _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, 1772f, global1.x, global1.x)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, global1.x, global1.x, 797f) - vec4<f32>(998f, 127f, -109f, -298f))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(global1.x, global1.x), _wgslsmith_f_op_f32(f32(-1f) * -1060f), _wgslsmith_f_op_f32(global1.x + global1.x), _wgslsmith_f_op_vec3_f32(func_2()).x) - vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2543f), global1.x, 461f, _wgslsmith_f_op_vec3_f32(func_2()).x))), vec4<f32>(_wgslsmith_f_op_f32(step(global1.x, global1.x)), _wgslsmith_f_op_f32(1304f * global1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1980f, 854f))), global1.x));
    var var_3 = var_2.x;
    return StorageBuffer(-3537i, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(global1.x * 139f), _wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(round(-1432f)), _wgslsmith_f_op_f32(-1000f - var_2.x))), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global1.x, global1.x, _wgslsmith_f_op_f32(271f - -507f), global1.x))), arg_0)), -34448i, u_input.b.xz, ~(~(~vec2<u32>(1u, 17543u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~_wgslsmith_sub_vec3_u32(reverseBits(vec3<u32>(firstLeadingBit(13657u), 4294967295u, ~u_input.a)), select(~vec3<u32>(3103u, global0.x, 37304u), _wgslsmith_mod_vec3_u32(~vec3<u32>(30983u, global0.x, global0.x), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.a, 73428u, global0.x), vec3<u32>(0u, 0u, global0.x))), false));
    let var_1 = var_0.xx;
    global4 = global2[_wgslsmith_index_u32(~var_1.x >> (u_input.a % 32u), 20u)];
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_div_f32(1067f, -246f), -1166f, 377f, _wgslsmith_f_op_f32(-global1.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(global1.x, global1.x, global1.x, global1.x))) * vec4<f32>(-570f, -946f, global1.x, 1000f)), true))));
    let var_3 = global4.a | false;
    let x = u_input.a;
    s_output = func_6(select(vec4<bool>(true, any(vec4<bool>(global4.a, global4.a, var_3, false)), var_3, global4.a), !vec4<bool>(var_3, all(vec4<bool>(false, false, global4.a, global4.a)), false, false), !vec4<bool>(any(vec2<bool>(global4.a, true)), any(vec4<bool>(false, global4.a, true, var_3)), var_3, func_1(vec4<i32>(u_input.d, u_input.d, 0i, -2147483647i), -2147483647i))), global2[_wgslsmith_index_u32(var_1.x, 20u)], Struct_1(global4.a || true));
}


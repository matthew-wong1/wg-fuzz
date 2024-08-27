struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: vec4<u32>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: vec4<bool>,
}

struct Struct_4 {
    a: Struct_3,
    b: f32,
    c: Struct_2,
    d: vec2<f32>,
    e: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<i32, 28>;

var<private> global2: f32 = 473f;

var<private> global3: array<bool, 14>;

var<private> global4: Struct_1 = Struct_1(vec4<bool>(false, false, false, false));

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec3<u32>, arg_1: bool, arg_2: vec4<f32>, arg_3: f32) -> vec2<f32> {
    var var_0 = arg_2;
    var var_1 = ~global1[_wgslsmith_index_u32(arg_0.x, 28u)] << (u_input.a.x % 32u);
    var var_2 = Struct_1(vec4<bool>(!(arg_3 > _wgslsmith_f_op_f32(-arg_2.x)), all(!select(global4.a.zxz, global4.a.wzz, false)), global4.a.x, global3[_wgslsmith_index_u32(~max(arg_0.x, 19939u), 14u)]));
    var var_3 = _wgslsmith_mult_i32(abs(global1[_wgslsmith_index_u32(min(~0u, u_input.a.x), 28u)]), 12289i) & firstLeadingBit(-53926i);
    global1 = array<i32, 28>();
    return vec2<f32>(_wgslsmith_f_op_f32(step(arg_2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_0.x, -163f, arg_1))) + _wgslsmith_f_op_f32(2023f - _wgslsmith_f_op_f32(-arg_2.x))))), arg_3);
}

fn func_2() -> i32 {
    let var_0 = Struct_4(Struct_3(_wgslsmith_div_vec3_f32(vec3<f32>(832f, -192f, _wgslsmith_f_op_f32(-621f - 382f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-601f, -256f, 596f) * vec3<f32>(1f, 1f, 1f))), global4.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-569f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-402f, 223f) * -305f) + 1461f)), Struct_2(max(~vec4<u32>(1u, 1u, 4294967295u, 1u) >> (_wgslsmith_clamp_vec4_u32(vec4<u32>(16856u, u_input.a.x, 14093u, u_input.a.x), vec4<u32>(u_input.a.x, 1106u, u_input.a.x, u_input.a.x), vec4<u32>(0u, 4294967295u, u_input.a.x, u_input.a.x)) % vec4<u32>(32u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x) & vec4<u32>(38236u, u_input.a.x, 2952u, u_input.a.x), ~vec4<u32>(48480u, 4294967295u, u_input.a.x, u_input.a.x), ~vec4<u32>(22114u, 0u, u_input.a.x, u_input.a.x)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(478f, -2182f) * vec2<f32>(1053f, 293f)) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(797f, 537f), vec2<f32>(399f, 501f), true))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1185f, 1405f))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3(~vec3<u32>(u_input.a.x, u_input.a.x, 33183u), global4.a.x, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-211f, 1000f, -282f, 840f)), _wgslsmith_f_op_f32(f32(-1f) * -244f))))), ~_wgslsmith_div_u32(66553u, 4294967295u));
    global2 = var_0.b;
    let var_1 = 1f;
    let var_2 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_vec2_f32(func_3(min(vec3<u32>(55089u, u_input.a.x, 0u), select(vec3<u32>(var_0.c.a.x, var_0.c.a.x, 1u), var_0.c.a.wwx, vec3<bool>(var_0.a.b.x, global3[_wgslsmith_index_u32(21982u, 14u)], false))) >> (vec3<u32>(var_0.e, var_0.e, select(var_0.c.a.x, var_0.e, true)) % vec3<u32>(32u)), true, _wgslsmith_div_vec4_f32(vec4<f32>(-1278f, _wgslsmith_f_op_f32(159f + var_0.d.x), _wgslsmith_f_op_f32(select(1134f, var_0.a.a.x, true)), _wgslsmith_f_op_f32(var_1 + var_0.d.x)), _wgslsmith_div_vec4_f32(vec4<f32>(-1524f, var_1, var_0.a.a.x, var_0.a.a.x), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(741f, 778f, var_1, var_0.d.x))))), var_0.a.a.x)).x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_0.a.a.x)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.a.x)))));
    global2 = 916f;
    return firstTrailingBit(~global1[_wgslsmith_index_u32(var_0.e, 28u)]);
}

fn func_1(arg_0: i32, arg_1: Struct_4, arg_2: vec2<u32>, arg_3: vec3<f32>) -> f32 {
    global2 = -552f;
    let var_0 = func_2();
    global3 = array<bool, 14>();
    let var_1 = arg_1.a;
    let var_2 = var_1;
    return 825f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(1000f, 1561f, -973f), vec3<f32>(484f, 2617f, -834f))))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(func_1(57289i, Struct_4(Struct_3(vec3<f32>(-448f, 1885f, -2330f), vec4<bool>(global4.a.x, true, true, global4.a.x)), -307f, Struct_2(vec4<u32>(4558u, u_input.a.x, 1926u, 0u)), vec2<f32>(-368f, -955f), u_input.a.x), vec2<u32>(4294967295u, u_input.a.x), vec3<f32>(130f, 682f, 1802f))), 623f, _wgslsmith_f_op_f32(-106f + 1000f)))), !select(vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 28u)] <= 2147483647i, u_input.a.x > u_input.a.x, true, select(false, global3[_wgslsmith_index_u32(1u, 14u)], false)), select(vec4<bool>(false, global4.a.x, false, true), global4.a, global4.a), vec4<bool>(global4.a.x, global4.a.x, all(global4.a), -20369i < u_input.b.x)));
    let var_1 = Struct_2(~vec4<u32>(u_input.a.x, ~1292u, _wgslsmith_sub_u32(4294967295u, u_input.a.x) >> (countOneBits(1u) % 32u), u_input.a.x));
    let var_2 = Struct_4(Struct_3(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-540f, var_0.a.x, var_0.a.x)))))), vec4<bool>(true, true, true, true)), -863f, var_1, _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1123f, var_0.a.x))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, 321f) + var_0.a.zx))))), _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(var_1.a.x, var_1.a.x), reverseBits(vec2<u32>(0u, 48961u)) << (countOneBits(vec2<u32>(u_input.a.x, u_input.a.x)) % vec2<u32>(32u))), 112534u ^ var_1.a.x));
    let var_3 = 2147483647i;
    global3 = array<bool, 14>();
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(abs(abs(countOneBits(vec2<i32>(u_input.b.x, -2147483647i))))), var_0.a);
}


struct Struct_1 {
    a: vec2<f32>,
    b: vec2<f32>,
    c: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec3<f32>,
    c: vec2<u32>,
}

struct Struct_4 {
    a: i32,
}

struct Struct_5 {
    a: u32,
    b: vec4<i32>,
    c: vec4<u32>,
    d: bool,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: i32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 31>;

var<private> global1: vec2<i32>;

var<private> global2: i32;

var<private> global3: vec4<bool> = vec4<bool>(true, false, false, true);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2() -> Struct_3 {
    global0 = array<i32, 31>();
    global0 = array<i32, 31>();
    let var_0 = _wgslsmith_mod_vec3_i32(~u_input.a.zxz, -vec3<i32>(1i, 24793i, _wgslsmith_mult_i32(u_input.a.x, select(1i, 1i, false))));
    return Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(973f, 1400f))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-456f, -695f))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-204f, -646f)))) - vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -516f)), 1000f)), vec3<f32>(463f, 860f, 1368f), vec2<u32>(_wgslsmith_div_u32(firstTrailingBit(16609u), 28311u), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(1u, 1u, 1u))));
}

fn func_3(arg_0: vec4<i32>) -> f32 {
    var var_0 = firstTrailingBit(70875u);
    var var_1 = 1u;
    let var_2 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(ceil(484f)), -2655f)), vec2<f32>(1f, 1f), vec3<u32>(~11523u, ~0u, func_2().c.x) & vec3<u32>(1u, ~4294967295u, ~727u)), -(~_wgslsmith_div_vec2_i32(~vec2<i32>(u_input.a.x, -2147483647i), reverseBits(vec2<i32>(global1.x, global1.x)))), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(func_2().b.yx))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -128f), 810f), vec3<u32>(4294967295u, 19720u, 24326u)));
    var var_3 = abs(firstLeadingBit(-(vec3<i32>(-1i) * -vec3<i32>(2147483647i, -53245i, 8067i))));
    global3 = select(vec4<bool>(true, false, !any(!vec4<bool>(true, false, true, global3.x)), ~_wgslsmith_sub_i32(global0[_wgslsmith_index_u32(var_2.a.c.x, 31u)], var_3.x) > ~(~30792i)), !select(vec4<bool>(true, false, true, !global3.x), select(!vec4<bool>(global3.x, true, true, true), vec4<bool>(true, false, false, true), !vec4<bool>(false, true, true, global3.x)), !select(vec4<bool>(global3.x, false, false, global3.x), vec4<bool>(global3.x, global3.x, global3.x, global3.x), true)), all(!(!vec4<bool>(true, global3.x, global3.x, false))));
    return _wgslsmith_f_op_f32(step(1350f, -371f));
}

fn func_1(arg_0: vec4<bool>, arg_1: vec2<u32>, arg_2: Struct_4, arg_3: vec4<bool>) -> bool {
    var var_0 = func_2();
    global0 = array<i32, 31>();
    let var_1 = select(~firstTrailingBit(_wgslsmith_add_vec4_u32(vec4<u32>(45585u, arg_1.x, 1u, 0u), vec4<u32>(arg_1.x, 4294967295u, arg_1.x, arg_1.x)) ^ ~vec4<u32>(arg_1.x, arg_1.x, arg_1.x, var_0.c.x)), vec4<u32>(abs(1u), 1u, firstTrailingBit(arg_1.x), ~_wgslsmith_sub_u32(min(38098u, 4294967295u), _wgslsmith_mod_u32(0u, arg_1.x))), arg_0);
    global0 = array<i32, 31>();
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(func_3(select(vec4<i32>(_wgslsmith_mod_i32(5580i, -1i), -1i | global0[_wgslsmith_index_u32(arg_1.x, 31u)], global1.x, -2147483647i), vec4<i32>(countOneBits(37113i), abs(global1.x), global0[_wgslsmith_index_u32(~10530u, 31u)], u_input.a.x), arg_3))), 816f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(-808f)))))), _wgslsmith_f_op_f32(-var_0.b.x));
    return any(arg_0.ww);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mod_i32(-10621i, firstTrailingBit(-2147483647i)) & -61568i;
    var var_1 = true;
    let var_2 = 1027f;
    global3 = select(!vec4<bool>(any(select(global3.xx, global3.wy, true)), func_1(vec4<bool>(false, false, global3.x, global3.x), firstTrailingBit(vec2<u32>(22074u, 20224u)), Struct_4(-76532i), select(vec4<bool>(false, false, global3.x, false), vec4<bool>(true, false, global3.x, global3.x), vec4<bool>(false, global3.x, global3.x, true))), !(!global3.x), !all(vec3<bool>(true, true, true))), vec4<bool>(any(vec4<bool>(!global3.x, any(vec4<bool>(false, false, global3.x, global3.x)), true, all(vec2<bool>(true, global3.x)))), !(firstLeadingBit(global0[_wgslsmith_index_u32(1u, 31u)]) != 45973i), global3.x, true), global3.x);
    let var_3 = 1u & firstTrailingBit(1u);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.zxw, _wgslsmith_div_vec3_u32(vec3<u32>(func_2().c.x, _wgslsmith_div_u32(var_3, _wgslsmith_div_u32(var_3, 48609u)), ~var_3), ~_wgslsmith_clamp_vec3_u32(min(vec3<u32>(var_3, 0u, var_3), vec3<u32>(33189u, var_3, var_3)), vec3<u32>(var_3, 437u, var_3) & vec3<u32>(20300u, 1u, 0u), vec3<u32>(4294967295u, 4294967295u, var_3) >> (vec3<u32>(1u, 42142u, 4294967295u) % vec3<u32>(32u)))), global0[_wgslsmith_index_u32(4294967295u ^ var_3, 31u)], u_input.a.xyz);
}


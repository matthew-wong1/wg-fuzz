struct Struct_1 {
    a: i32,
    b: vec2<f32>,
    c: i32,
    d: bool,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: array<vec4<bool>, 32> = array<vec4<bool>, 32>(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, true));

var<private> global2: array<u32, 22>;

var<private> global3: array<u32, 1> = array<u32, 1>(36658u);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: u32, arg_1: vec4<f32>, arg_2: vec3<u32>) -> i32 {
    var var_0 = Struct_1(-25132i, vec2<f32>(arg_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -924f))))), u_input.c, true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(-1000f, arg_1.x, global0.a.a.d))))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(ceil(1000f)), global0.a.a.d)) - _wgslsmith_f_op_f32(-global0.a.a.e))));
    let var_1 = global0.a.a;
    let var_2 = Struct_3(global0.a, countOneBits(vec4<i32>(~(-12168i), global0.a.a.c & 31994i, 1i, i32(-1i) * -2147483647i)) & ~global0.b);
    var var_3 = var_2.a;
    global3 = array<u32, 1>();
    return 21143i;
}

fn func_2(arg_0: vec2<i32>) -> Struct_2 {
    global1 = array<vec4<bool>, 32>();
    let var_0 = select(vec3<bool>(!(!global0.a.a.d), global0.a.a.d, false), vec3<bool>(any(vec3<bool>(true, true, true)), global0.a.a.d, any(!vec2<bool>(global0.a.a.d, true))), global0.a.a.d);
    var var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(global0.a.a.b * _wgslsmith_f_op_vec2_f32(-global0.a.a.b)), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.a.a.e - 846f) + -1000f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global0.a.a.b.x)) + global0.a.a.e)), global0.a.a.e));
    let var_2 = -(~func_3(~(~global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.a.x, 1u)], 1u)]), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, 633f, 2472f, global0.a.a.e)), select(reverseBits(vec3<u32>(global3[_wgslsmith_index_u32(4294967295u, 1u)], 0u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(13082u, 1u)], 1u)])), firstLeadingBit(vec3<u32>(u_input.a.x, 1261u, global3[_wgslsmith_index_u32(45648u, 1u)])), !var_0)));
    let var_3 = var_2;
    return Struct_2(Struct_1(3514i, _wgslsmith_f_op_vec2_f32(select(global0.a.a.b, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-global0.a.a.b), _wgslsmith_f_op_vec2_f32(-global0.a.a.b), global0.a.a.d)), all(global1[_wgslsmith_index_u32(4294967295u, 32u)]))), 0i, any(vec3<bool>(true, global0.a.a.b.x < global0.a.a.e, any(var_0.xy))), -484f));
}

fn func_1() -> i32 {
    var var_0 = Struct_3(func_2(_wgslsmith_mod_vec2_i32(~abs(global0.b.yx), vec2<i32>(firstLeadingBit(42303i), u_input.b.x >> (1u % 32u)))), max(-vec4<i32>(-1i, reverseBits(u_input.b.x), 16238i, reverseBits(global0.b.x)), ~(global0.b >> (vec4<u32>(4294967295u, global2[_wgslsmith_index_u32(1u, 22u)], 4294967295u, 51670u) % vec4<u32>(32u))) << ((~vec4<u32>(global2[_wgslsmith_index_u32(u_input.a.x, 22u)], 67453u, 1u, u_input.a.x) & firstLeadingBit(vec4<u32>(1u, u_input.a.x, global3[_wgslsmith_index_u32(0u, 1u)], global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 22u)], 1u)]))) % vec4<u32>(32u))));
    let var_1 = func_2(vec2<i32>(~var_0.a.a.c, 1i)).a.c;
    let var_2 = func_2(vec2<i32>(var_0.b.x, ~firstLeadingBit(26148i)));
    var var_3 = Struct_3(func_2(_wgslsmith_clamp_vec2_i32(countOneBits(select(vec2<i32>(var_1, var_1), vec2<i32>(u_input.c, 1i), global0.a.a.d)), ~vec2<i32>(var_0.b.x, -1i), countOneBits(~var_0.b.zw))), vec4<i32>(global0.a.a.c >> (abs(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 53284u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(14680u, 1u)], 1u)], 22u)], 22u)]), vec3<u32>(2637u, u_input.a.x, global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 1u)], 22u)])), 1u)]) % 32u), ~_wgslsmith_mod_i32(var_2.a.c, i32(-1i) * -64675i), abs(func_2(vec2<i32>(var_0.b.x, 41417i)).a.a & _wgslsmith_clamp_i32(0i, global0.a.a.a, var_0.a.a.c)), global0.a.a.a));
    let var_4 = Struct_3(Struct_2(Struct_1(var_2.a.c, var_0.a.a.b, 2147483647i, true, -474f)), vec4<i32>(var_0.b.x | -_wgslsmith_sub_i32(-37155i, -2147483647i), global0.a.a.c, _wgslsmith_dot_vec4_i32(vec4<i32>(0i, -var_2.a.c, _wgslsmith_dot_vec4_i32(var_0.b, vec4<i32>(2147483647i, -1i, 69219i, -31448i)), max(-2147483647i, global0.b.x)), countOneBits(var_0.b)), abs(_wgslsmith_clamp_i32(0i, var_2.a.a, -6513i)) ^ countOneBits(30591i)));
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<u32, 22>();
    let var_0 = global0.b.yxw;
    let var_1 = true;
    let var_2 = _wgslsmith_mod_vec4_i32(vec4<i32>(func_1(), -77447i, (1i ^ var_0.x) & (i32(-1i) * -1i), firstTrailingBit(~_wgslsmith_add_i32(-211i, var_0.x))), global0.b);
    var var_3 = var_0.x;
    let x = u_input.a;
    s_output = StorageBuffer(abs(vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(3267u, global2[_wgslsmith_index_u32(0u, 22u)]), vec2<u32>(1u, 0u)), firstTrailingBit(reverseBits(1u)), max(global3[_wgslsmith_index_u32(firstTrailingBit(global2[_wgslsmith_index_u32(u_input.a.x, 22u)]), 1u)], ~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a.x, 22u)], 22u)]), ~global2[_wgslsmith_index_u32(1u, 22u)])), _wgslsmith_sub_i32(1i, global0.a.a.c), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(global0.a.a.b.x, _wgslsmith_f_op_f32(-global0.a.a.e)), _wgslsmith_f_op_f32(-780f - -1000f)) - _wgslsmith_div_vec2_f32(vec2<f32>(1000f, func_2(vec2<i32>(var_0.x, -1854i)).a.b.x), _wgslsmith_f_op_vec2_f32(global0.a.a.b * global0.a.a.b))));
}


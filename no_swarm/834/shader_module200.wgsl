struct Struct_1 {
    a: u32,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
}

struct Struct_3 {
    a: bool,
    b: i32,
    c: f32,
    d: Struct_2,
    e: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec4<i32>,
    d: vec3<u32>,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: array<u32, 16> = array<u32, 16>(4294967295u, 1u, 4294967295u, 29397u, 37405u, 1u, 4294967295u, 50851u, 40128u, 3953u, 131118u, 21247u, 1u, 1u, 1u, 1u);

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_2(arg_0: u32) -> Struct_2 {
    var var_0 = ~global0.e;
    var var_1 = Struct_2(global0.d.a, 1u << (countOneBits((1u >> (u_input.d.x % 32u)) & ~41752u) % 32u));
    let var_2 = global0.c;
    return global0.d;
}

fn func_3() -> vec3<i32> {
    var var_0 = Struct_3(true, -1i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global0.c))) * -2228f)), global0.d, 0i);
    var var_1 = var_0.d.a;
    let var_2 = all(vec4<bool>(all(select(vec3<bool>(false, global0.a, var_0.a), vec3<bool>(false, true, var_0.a), vec3<bool>(false, true, true))), global0.d.a.a != 1u, false && var_0.a, any(vec2<bool>(true, true)))) || !(!(true | !global0.a));
    var_0 = Struct_3(true, (var_1.b & func_2(34002u).a.b) >> (~global0.d.a.a % 32u), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1878f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(global0.c)))))), var_0.d, (i32(-1i) * -_wgslsmith_sub_i32(var_1.b, 1i)) << (global0.d.b % 32u));
    global0 = Struct_3(!(!all(vec4<bool>(global0.a, false, global0.a, var_2))), global0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(global0.c)), _wgslsmith_f_op_f32(min(global0.c, global0.c))))), func_2(_wgslsmith_sub_u32(_wgslsmith_sub_u32(~11822u, global1[_wgslsmith_index_u32(4294967295u, 16u)] | u_input.d.x), min(_wgslsmith_dot_vec2_u32(u_input.d.zz, u_input.a.yx), ~var_1.a))), var_0.e);
    return -vec3<i32>(_wgslsmith_sub_i32(i32(-1i) * -var_1.b, -1i), 0i, reverseBits(~2147483647i));
}

fn func_1() -> StorageBuffer {
    let var_0 = func_2(1u);
    var var_1 = func_2(~(~reverseBits(1u))).a;
    var var_2 = firstTrailingBit(func_3());
    global0 = Struct_3((global0.a && all(select(vec4<bool>(global0.a, global0.a, global0.a, global0.a), vec4<bool>(global0.a, global0.a, global0.a, global0.a), global0.a))) || (global0.c > _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, global0.c))), 16019i, global0.c, Struct_2(Struct_1(_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.a, var_1.a, u_input.d.x, 0u), ~vec4<u32>(0u, u_input.d.x, var_0.b, global1[_wgslsmith_index_u32(0u, 16u)])), 1i), ~0u), ~2147483647i);
    let var_3 = u_input.e;
    return StorageBuffer(1i, _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-global0.c), _wgslsmith_f_op_f32(-1216f - -1929f), 1f, _wgslsmith_f_op_f32(exp2(global0.c))) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1000f, global0.c, -434f, global0.c), vec4<f32>(global0.c, global0.c, 870f, -1238f), global0.a)), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(global0.c, global0.c, global0.c, global0.c), vec4<f32>(global0.c, 932f, global0.c, global0.c))), select(false, false, global0.a)))))), min(abs(u_input.c.zwz), _wgslsmith_mod_vec3_i32(u_input.c.yww, vec3<i32>(var_2.x, min(38086i, var_2.x), select(var_0.a.b, -2147483647i, false)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(~(~_wgslsmith_mod_u32(4294967295u, _wgslsmith_sub_u32(global1[_wgslsmith_index_u32(1u, 16u)], global0.d.a.a))));
    let var_1 = _wgslsmith_clamp_vec2_u32(u_input.a.yy, ~(u_input.d.xx ^ vec2<u32>(abs(global1[_wgslsmith_index_u32(28148u, 16u)]), _wgslsmith_dot_vec2_u32(u_input.d.yx, vec2<u32>(1u, global1[_wgslsmith_index_u32(u_input.b, 16u)])))), vec2<u32>(global0.d.a.a & global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(~1u, 16u)], 16u)], 16u)], global1[_wgslsmith_index_u32(_wgslsmith_div_u32(0u, _wgslsmith_dot_vec3_u32(u_input.d & vec3<u32>(0u, global0.d.a.a, u_input.d.x), u_input.a)), 16u)]));
    let var_2 = countOneBits(u_input.c.x << ((_wgslsmith_mod_u32(3167u, var_1.x) << (u_input.a.x % 32u)) % 32u));
    var var_3 = -global0.b;
    var var_4 = global0.c;
    let x = u_input.a;
    s_output = func_1();
}


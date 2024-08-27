struct Struct_1 {
    a: bool,
    b: f32,
    c: f32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec3<u32>,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: Struct_2,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 16>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: u32) -> vec3<bool> {
    let var_0 = Struct_2(_wgslsmith_mod_vec2_u32(abs(vec2<u32>(_wgslsmith_div_u32(1885u, global0[_wgslsmith_index_u32(4294967295u, 16u)]), ~9370u)), u_input.b.wx), vec3<u32>(_wgslsmith_clamp_u32(firstTrailingBit(u_input.b.x), u_input.b.x, arg_0 >> (u_input.b.x % 32u)), 0u >> (arg_0 % 32u), max(~7145u, _wgslsmith_dot_vec2_u32(u_input.b.xx, u_input.b.ww))) & select(u_input.b.zxx, ~u_input.b.zxz, true));
    global0 = array<u32, 16>();
    var var_1 = Struct_2(min(firstLeadingBit(vec2<u32>(13491u, u_input.b.x)), countOneBits(countOneBits(var_0.a))), min((var_0.b >> (u_input.b.yzw % vec3<u32>(32u))) & u_input.b.zwz, vec3<u32>(_wgslsmith_clamp_u32(~4294967295u, global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(1u, 16u)], 16u)], var_0.b.x), arg_0, _wgslsmith_add_u32(global0[_wgslsmith_index_u32(countOneBits(arg_0), 16u)], var_0.b.x))));
    var_1 = var_0;
    let var_2 = ~_wgslsmith_dot_vec3_i32(~vec3<i32>(u_input.a.x, 0i, u_input.a.x), u_input.a.xzx) | _wgslsmith_clamp_i32(u_input.a.x & _wgslsmith_div_i32(-u_input.a.x, u_input.a.x), -u_input.a.x, u_input.a.x);
    return !(!vec3<bool>(true, !(23923u < var_0.a.x), !any(vec4<bool>(true, false, false, false))));
}

fn func_2() -> vec3<bool> {
    let var_0 = 65371i;
    global0 = array<u32, 16>();
    var var_1 = false;
    var var_2 = Struct_2(vec2<u32>(u_input.b.x, _wgslsmith_add_u32(u_input.b.x, ~select(4294967295u, 0u, false))), ~(~(~u_input.b.wyw)));
    return select(select(vec3<bool>(true, true, true), func_3(_wgslsmith_add_u32(~global0[_wgslsmith_index_u32(1u, 16u)], _wgslsmith_div_u32(u_input.b.x, global0[_wgslsmith_index_u32(0u, 16u)]))), func_3(_wgslsmith_sub_u32(1u, 1u) | select(var_2.b.x, var_2.b.x, false))), func_3(u_input.b.x), true);
}

fn func_1() -> vec3<i32> {
    global0 = array<u32, 16>();
    let var_0 = all(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), func_2(), vec3<bool>(false, false, false)), false)) || (false && (all(vec3<bool>(true, false, true)) | !func_3(u_input.b.x).x));
    var var_1 = Struct_2(u_input.b.zw, vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.b.yx, u_input.b.yz), 16u)], 16u)], reverseBits(countOneBits(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(60792u, 16u)], 16u)])) | _wgslsmith_mod_u32(global0[_wgslsmith_index_u32(51504u, 16u)], 1u), u_input.b.x));
    let var_2 = -31526i;
    let var_3 = Struct_2(u_input.b.zw, ~vec3<u32>(u_input.b.x, ~u_input.b.x, 12913u));
    return ~firstLeadingBit(vec3<i32>(-(23322i >> (var_3.b.x % 32u)), 1i, i32(-1i) * -1i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_dot_vec3_i32(u_input.a.wzx, firstTrailingBit(-abs(func_1())));
    global0 = array<u32, 16>();
    let var_1 = select(vec4<bool>(true, false, true, true), !(!vec4<bool>(53893u >= u_input.b.x, true, true, false)), 1u <= countOneBits(_wgslsmith_dot_vec4_u32(~vec4<u32>(global0[_wgslsmith_index_u32(2550u, 16u)], 9200u, 27346u, 14111u), _wgslsmith_clamp_vec4_u32(u_input.b, u_input.b, u_input.b))));
    var var_2 = Struct_1(true, -2715f, 1129f);
    var_2 = Struct_1(!var_1.x, 1348f, _wgslsmith_f_op_f32(-498f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.b + -989f))));
    global0 = array<u32, 16>();
    var var_3 = 1i;
    let var_4 = -4080i;
    let x = u_input.a;
    s_output = StorageBuffer(41431u);
}


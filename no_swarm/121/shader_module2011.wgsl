struct Struct_1 {
    a: bool,
    b: u32,
}

struct Struct_2 {
    a: vec4<i32>,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: f32,
    d: Struct_1,
    e: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: u32,
    d: vec4<f32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(-21585i, -75176i);

var<private> global1: array<vec3<i32>, 1>;

var<private> global2: array<vec4<u32>, 11>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec2<u32>, arg_1: bool) -> u32 {
    let var_0 = -9553i;
    let var_1 = _wgslsmith_sub_vec4_u32(abs(global2[_wgslsmith_index_u32(~arg_0.x, 11u)]), global2[_wgslsmith_index_u32(1u, 11u)]);
    var var_2 = ~_wgslsmith_sub_vec4_u32(global2[_wgslsmith_index_u32(firstTrailingBit(~arg_0.x), 11u)], firstTrailingBit(vec4<u32>(arg_0.x, var_1.x, var_1.x, arg_0.x))) >> (var_1 % vec4<u32>(32u));
    var var_3 = -195f;
    var_2 = vec4<u32>(_wgslsmith_dot_vec2_u32(~(var_1.zz >> (vec2<u32>(25257u, 0u) % vec2<u32>(32u))) & vec2<u32>(5736u, 4294967295u), select(countOneBits(var_1.xw), _wgslsmith_add_vec2_u32(select(var_1.yx, var_1.zz, arg_1), _wgslsmith_sub_vec2_u32(arg_0, vec2<u32>(56483u, var_2.x))), !vec2<bool>(arg_1, true))), ~(arg_0.x << (firstLeadingBit(_wgslsmith_clamp_u32(4294967295u, var_2.x, 30629u)) % 32u)), ~_wgslsmith_mod_u32(select(abs(4294967295u), _wgslsmith_clamp_u32(4294967295u, var_2.x, var_1.x), true), _wgslsmith_clamp_u32(reverseBits(73211u), _wgslsmith_dot_vec3_u32(vec3<u32>(var_2.x, var_2.x, 12408u), vec3<u32>(var_2.x, 4294967295u, 86475u)), firstLeadingBit(var_1.x))), 0u & max(max(arg_0.x, _wgslsmith_div_u32(4294967295u, arg_0.x)), _wgslsmith_div_u32(_wgslsmith_add_u32(var_1.x, var_1.x), _wgslsmith_mod_u32(var_1.x, 0u))));
    return firstLeadingBit(_wgslsmith_div_u32(4294967295u >> (abs(0u) % 32u), ~1u));
}

fn func_2(arg_0: vec2<f32>, arg_1: vec2<f32>) -> f32 {
    let var_0 = Struct_2(-vec4<i32>(-u_input.a & 0i, reverseBits(-8613i), u_input.b.x, _wgslsmith_dot_vec3_i32(vec3<i32>(1i, global0.x, 58792i), u_input.b.zxz) << (~57365u % 32u)));
    let var_1 = var_0;
    let var_2 = var_0.a.x;
    let var_3 = arg_0.x;
    var var_4 = Struct_1(all(!vec3<bool>(false, true, all(vec3<bool>(false, false, true)))), firstTrailingBit(~(~0u)) >> ((abs(firstLeadingBit(45333u)) >> (max(func_3(vec2<u32>(1u, 33406u), true), ~51485u) % 32u)) % 32u));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1148f));
}

fn func_1() -> StorageBuffer {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(vec2<f32>(-1000f, 1013f), vec2<f32>(986f, -925f))))))), -166f, _wgslsmith_f_op_f32(f32(-1f) * -1653f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1089f)) + -252f));
    let var_1 = vec3<bool>(true, !(true || (-1000f < var_0.x)) && false, all(vec2<bool>(true, !(-515f == var_0.x))));
    global0 = abs(vec2<i32>(_wgslsmith_add_i32(-global0.x, u_input.a), i32(-1i) * -2147483647i));
    var var_2 = ~global2[_wgslsmith_index_u32(1163u, 11u)];
    var var_3 = Struct_1(any(select(select(!vec4<bool>(var_1.x, false, var_1.x, var_1.x), vec4<bool>(var_1.x, var_1.x, true, false), var_1.x), !select(vec4<bool>(false, false, false, var_1.x), vec4<bool>(var_1.x, false, var_1.x, true), vec4<bool>(false, false, var_1.x, var_1.x)), 39322i < global0.x)), 1u);
    return StorageBuffer(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_0.x, -766f))), vec3<f32>(-454f, _wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(var_0.x * 610f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_0.x)) - _wgslsmith_f_op_f32(func_2(var_0.zy, var_0.zw)))))), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(103f, 573f))), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(928f, var_0.x))))), var_0.x), var_0.x)), firstTrailingBit(var_3.b), _wgslsmith_f_op_vec4_f32(vec4<f32>(-167f, _wgslsmith_f_op_f32(1584f + _wgslsmith_f_op_f32(ceil(1155f))), 159f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1136f - var_0.x) + _wgslsmith_f_op_f32(f32(-1f) * -488f))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, -391f, 140f, var_0.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x) - vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x)) - _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_0.x, -758f, var_0.x, -1265f)))))), ~var_2.xwy);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec4<u32>, 11>();
    var var_0 = 1u;
    let var_1 = vec3<i32>(2147483647i, ~(-global0.x), -2147483647i);
    var var_2 = Struct_2(-u_input.b);
    let var_3 = Struct_2(var_2.a);
    global1 = array<vec3<i32>, 1>();
    var_2 = var_3;
    let var_4 = !all(vec2<bool>(u_input.b.x != -2147483647i, all(vec4<bool>(false, true, false, true)))) && all(!(!select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, false))));
    var var_5 = -706f;
    let x = u_input.a;
    s_output = func_1();
}


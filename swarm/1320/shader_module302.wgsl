struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(true);

var<private> global1: Struct_1;

var<private> global2: array<bool, 4>;

var<private> global3: i32;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_2(arg_0: vec3<f32>) -> Struct_1 {
    global3 = ~(-2147483647i);
    let var_0 = global2[_wgslsmith_index_u32(4294967295u, 4u)];
    global2 = array<bool, 4>();
    var var_1 = !(!select(vec4<bool>(true, true, true, true), vec4<bool>(arg_0.x != arg_0.x, global2[_wgslsmith_index_u32(countOneBits(0u), 4u)], !global0.a, any(vec4<bool>(global1.a, false, false, global1.a))), false));
    var var_2 = Struct_1(true);
    return Struct_1(true);
}

fn func_3(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: Struct_1, arg_3: i32) -> f32 {
    let var_0 = func_2(arg_1.zyy);
    let var_1 = arg_0;
    global1 = func_2(_wgslsmith_div_vec3_f32(arg_1.zzw, arg_1.xxw));
    var var_2 = _wgslsmith_mult_u32(0u, firstLeadingBit(_wgslsmith_dot_vec2_u32(~vec2<u32>(0u, 34779u), _wgslsmith_div_vec2_u32(vec2<u32>(54559u, 4294967295u), vec2<u32>(1u, 36312u))))) == ~_wgslsmith_div_u32(~10428u, ~88522u);
    var var_3 = var_1;
    return _wgslsmith_f_op_f32(abs(arg_1.x));
}

fn func_1() -> i32 {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -104f))), 156f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_1(false), _wgslsmith_f_op_vec4_f32(vec4<f32>(298f, 523f, 1203f, -1000f) - vec4<f32>(-1567f, -1368f, 1321f, -714f)), func_2(vec3<f32>(825f, -2531f, -236f)), -1i)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-400f - 894f))) - -130f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(878f - 443f)))));
    global3 = _wgslsmith_add_i32(-1i & u_input.a.x, 0i);
    let var_1 = _wgslsmith_dot_vec3_i32(vec3<i32>(30162i, 5873i, u_input.a.x) & u_input.a.ywy, ~(~vec3<i32>(-1i, u_input.a.x, 19221i) ^ vec3<i32>(-1i, -36714i, u_input.a.x)) & ~(-(vec3<i32>(-12013i, u_input.a.x, u_input.a.x) >> (vec3<u32>(38696u, 1u, 108624u) % vec3<u32>(32u)))));
    let var_2 = _wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(1000f, 199f), var_0.x))))));
    var var_3 = select(!select(vec2<bool>(true, true), !select(vec2<bool>(global2[_wgslsmith_index_u32(48178u, 4u)], false), vec2<bool>(global2[_wgslsmith_index_u32(61701u, 4u)], false), global2[_wgslsmith_index_u32(0u, 4u)]), any(!vec4<bool>(false, true, global0.a, global0.a))), !vec2<bool>(false, _wgslsmith_f_op_f32(select(-233f, 103f, global2[_wgslsmith_index_u32(4294967295u, 4u)])) < _wgslsmith_f_op_f32(-var_2)), select(select(select(select(vec2<bool>(false, false), vec2<bool>(false, true), global1.a), select(vec2<bool>(global2[_wgslsmith_index_u32(1u, 4u)], false), vec2<bool>(global2[_wgslsmith_index_u32(59672u, 4u)], true), vec2<bool>(true, global0.a)), !vec2<bool>(true, global1.a)), select(vec2<bool>(global1.a, true), select(vec2<bool>(global2[_wgslsmith_index_u32(92155u, 4u)], false), vec2<bool>(false, global2[_wgslsmith_index_u32(1u, 4u)]), true), !vec2<bool>(false, global0.a)), select(vec2<bool>(false, global2[_wgslsmith_index_u32(0u, 4u)]), vec2<bool>(true, false), true)), !vec2<bool>(global1.a, true), (_wgslsmith_dot_vec3_u32(vec3<u32>(32694u, 4294967295u, 0u), vec3<u32>(1u, 0u, 37365u)) ^ select(4294967295u, 667u, false)) != select(1u, _wgslsmith_add_u32(18549u, 0u), true)));
    return ~8167i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~u_input.a.zy ^ u_input.a.xz;
    var var_1 = _wgslsmith_mult_i32(_wgslsmith_add_i32(-u_input.a.x, u_input.a.x), -countOneBits(-var_0.x));
    let var_2 = Struct_1((u_input.a.x != (i32(-1i) * -2147483647i)) & (_wgslsmith_sub_i32(8974i, -u_input.a.x) != func_1()));
    global0 = var_2;
    global0 = func_2(vec3<f32>(1f, 1f, 1f));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x);
}


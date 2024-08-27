struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

var<private> global1: array<bool, 6> = array<bool, 6>(true, false, true, true, true, true);

var<private> global2: array<vec3<f32>, 8>;

var<private> global3: u32;

var<private> global4: Struct_1 = Struct_1(1i);

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1() -> Struct_1 {
    let var_0 = Struct_1(abs(-(global4.a ^ u_input.a.x)) >> (~(_wgslsmith_mult_u32(0u, global0.x) ^ (global0.x >> (global0.x % 32u))) % 32u));
    let var_1 = Struct_1(var_0.a);
    let var_2 = vec2<bool>(true, global1[_wgslsmith_index_u32(global0.x, 6u)]);
    global3 = ~(~(~1u));
    var var_3 = countOneBits(5274u);
    return var_0;
}

fn func_2(arg_0: u32, arg_1: f32, arg_2: vec2<u32>, arg_3: i32) -> StorageBuffer {
    global2 = array<vec3<f32>, 8>();
    var var_0 = func_1();
    var_0 = Struct_1(_wgslsmith_clamp_i32(var_0.a, global4.a, 1i));
    var var_1 = Struct_1(0i);
    var var_2 = (-27280i & func_1().a) << (arg_2.x % 32u);
    return StorageBuffer(global0.xzz, _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, _wgslsmith_f_op_f32(trunc(-2737f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(arg_1)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = max(vec4<i32>(~(-1i), u_input.a.x, i32(-1i) * -firstTrailingBit(global4.a), u_input.a.x), ~(vec4<i32>(-1i) * -min(vec4<i32>(global4.a, 22145i, u_input.a.x, -1i), vec4<i32>(global4.a, 0i, -8762i, global4.a))));
    var var_1 = ~select(vec4<i32>(1i, global4.a, -(~(-51987i)), _wgslsmith_mod_i32(1i, var_0.x)), var_0, global1[_wgslsmith_index_u32(global0.x, 6u)]);
    var_1 = ~var_0;
    let var_2 = ~_wgslsmith_mod_vec3_i32(~_wgslsmith_div_vec3_i32(var_1.zyz, vec3<i32>(-2147483647i, -1i, global4.a)) << (~(global0.xzz | vec3<u32>(global0.x, 0u, global0.x)) % vec3<u32>(32u)), ~(~var_1.xwx & ~var_1.zwz));
    let var_3 = func_1();
    let x = u_input.a;
    s_output = func_2(13791u, _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-463f, -1191f))), global0.xx, ~abs(select(_wgslsmith_dot_vec2_i32(vec2<i32>(var_0.x, 1i), vec2<i32>(global4.a, var_3.a)), ~13348i, any(vec2<bool>(false, global1[_wgslsmith_index_u32(global0.x, 6u)])))));
}


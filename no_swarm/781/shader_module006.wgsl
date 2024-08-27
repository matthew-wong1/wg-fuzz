struct Struct_1 {
    a: vec3<f32>,
    b: vec2<bool>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: i32,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: Struct_2,
    b: vec4<f32>,
    c: vec3<bool>,
    d: Struct_3,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 289f;

var<private> global1: array<Struct_3, 11>;

var<private> global2: Struct_3 = Struct_3(28293u);

var<private> global3: array<Struct_3, 18> = array<Struct_3, 18>(Struct_3(2255u), Struct_3(0u), Struct_3(4602u), Struct_3(27072u), Struct_3(79266u), Struct_3(0u), Struct_3(23837u), Struct_3(1u), Struct_3(0u), Struct_3(102488u), Struct_3(0u), Struct_3(4294967295u), Struct_3(6885u), Struct_3(0u), Struct_3(0u), Struct_3(55162u), Struct_3(4294967295u), Struct_3(4294967295u));

var<private> global4: vec3<bool>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_1) -> vec4<bool> {
    var var_0 = Struct_2(vec4<bool>(arg_0.b.x, arg_0.b.x, false, u_input.b.x > -countOneBits(2147483647i)), Struct_1(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(arg_0.a.x, 1000f, 562f), _wgslsmith_f_op_vec3_f32(-arg_0.a))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.a.x, arg_0.a.x, arg_0.a.x)), _wgslsmith_f_op_vec3_f32(arg_0.a - arg_0.a)))), select(!global4.xx, !(!global4.xy), global4.x)), abs(u_input.b.x));
    global1 = array<Struct_3, 11>();
    return vec4<bool>(!arg_0.b.x, true, any(vec2<bool>(all(var_0.a.wyy), all(vec4<bool>(var_0.b.b.x, global4.x, var_0.b.b.x, true)) | (global4.x == true))), any(var_0.a.wxz));
}

fn func_2(arg_0: Struct_3, arg_1: i32, arg_2: vec2<u32>) -> bool {
    global1 = array<Struct_3, 11>();
    let var_0 = -856f;
    var var_1 = Struct_2(select(select(select(!vec4<bool>(global4.x, false, false, false), !vec4<bool>(true, false, global4.x, global4.x), !vec4<bool>(global4.x, global4.x, false, global4.x)), !vec4<bool>(true, global4.x, global4.x, false), true), select(!select(vec4<bool>(false, global4.x, false, global4.x), vec4<bool>(global4.x, true, global4.x, false), false), !(!vec4<bool>(true, false, global4.x, false)), func_3(Struct_1(vec3<f32>(var_0, var_0, var_0), global4.xy))), select(!vec4<bool>(global4.x, global4.x, true, global4.x), !select(vec4<bool>(true, true, global4.x, global4.x), vec4<bool>(global4.x, true, global4.x, global4.x), vec4<bool>(global4.x, global4.x, true, true)), select(select(vec4<bool>(true, global4.x, global4.x, global4.x), vec4<bool>(global4.x, global4.x, false, global4.x), vec4<bool>(true, global4.x, true, false)), !vec4<bool>(global4.x, false, global4.x, false), func_3(Struct_1(vec3<f32>(605f, var_0, var_0), vec2<bool>(global4.x, true))).x))), Struct_1(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-248f + -1334f) * var_0), _wgslsmith_div_f32(_wgslsmith_div_f32(-1351f, var_0), 181f), 632f), !func_3(Struct_1(vec3<f32>(var_0, 1000f, 253f), global4.zx)).yx), u_input.b.x);
    global2 = global3[_wgslsmith_index_u32(global2.a, 18u)];
    var var_2 = vec3<bool>(any(var_1.a.wxw), !(!var_1.b.b.x), false);
    return !all(vec3<bool>(any(vec4<bool>(var_1.b.b.x, false, global4.x, global4.x)), false, var_2.x)) | (true && (var_2.x || any(vec4<bool>(true, false, var_1.b.b.x, global4.x))));
}

fn func_1(arg_0: vec2<f32>) -> StorageBuffer {
    global4 = vec3<bool>(false, all(select(vec2<bool>(true, any(global4.xy)), select(vec2<bool>(false, true), select(global4.zy, global4.zy, false), vec2<bool>(global4.x, true)), true)), global4.x);
    let var_0 = ~max(abs(~(~vec4<u32>(21765u, global2.a, u_input.a, global2.a))), vec4<u32>(1u << (1u % 32u), 17772u, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, global2.a, 59136u, global2.a) & vec4<u32>(global2.a, 34890u, global2.a, 0u), vec4<u32>(35375u, 9408u, 0u, global2.a) ^ vec4<u32>(4294967295u, 24989u, u_input.a, 0u)), 7846u));
    let var_1 = vec2<i32>(_wgslsmith_add_i32(u_input.b.x, abs(-84341i ^ u_input.b.x) & 1i), u_input.b.x);
    let var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(684f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_0.x)) * _wgslsmith_f_op_f32(select(arg_0.x, 192f, global4.x))), -1000f)), vec2<bool>(all(select(vec2<bool>(global4.x, global4.x), !vec2<bool>(false, global4.x), select(vec2<bool>(global4.x, global4.x), vec2<bool>(global4.x, true), vec2<bool>(global4.x, global4.x)))), func_2(Struct_3(select(1u, var_0.x, true)), ~(~(-2147483647i)), var_0.wz)));
    let var_3 = func_3(var_2).xzx;
    return StorageBuffer(_wgslsmith_f_op_f32(var_2.a.x + 544f), _wgslsmith_mod_vec4_i32(select(vec4<i32>(var_1.x, -17433i, var_1.x, var_1.x), ~vec4<i32>(var_1.x, 1i, 19982i, u_input.b.x), select(global4.x, true, var_3.x)), vec4<i32>(0i, 1i, -u_input.b.x, -1i)) | firstTrailingBit(vec4<i32>(~u_input.b.x, _wgslsmith_div_i32(u_input.b.x, var_1.x), u_input.b.x, _wgslsmith_clamp_i32(var_1.x, u_input.b.x, 0i))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_3, 11>();
    let x = u_input.a;
    s_output = func_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2107f, 452f))))) * _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1000f, 493f), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1847f, -757f)))))));
}


struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: bool,
    b: vec3<i32>,
    c: Struct_1,
    d: vec4<f32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
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

var<private> global0: array<vec2<u32>, 7> = array<vec2<u32>, 7>(vec2<u32>(1u, 61872u), vec2<u32>(1u, 4294967295u), vec2<u32>(1u, 4294967295u), vec2<u32>(40325u, 2323u), vec2<u32>(65568u, 4294967295u), vec2<u32>(23700u, 31295u), vec2<u32>(4294967295u, 37175u));

var<private> global1: array<u32, 5>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2() -> i32 {
    return _wgslsmith_dot_vec2_i32(~firstLeadingBit(u_input.b.zw) ^ u_input.b.zz, -vec2<i32>(u_input.a, min(u_input.b.x, 2147483647i)));
}

fn func_3() -> vec3<bool> {
    global0 = array<vec2<u32>, 7>();
    var var_0 = Struct_1(_wgslsmith_dot_vec3_i32(u_input.b.yxw, firstTrailingBit(-(vec3<i32>(-36655i, u_input.a, -2147483647i) | u_input.b.yzz))));
    var var_1 = !select(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), any(vec3<bool>(true, false, false))), vec2<bool>(true, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(71532u, 5u)], 5u)] == global1[_wgslsmith_index_u32(1u, 5u)])), !select(select(vec2<bool>(true, false), vec2<bool>(true, true), false), vec2<bool>(false, true), select(vec2<bool>(false, false), vec2<bool>(true, false), false)), select(vec2<bool>(u_input.b.x >= 24718i, true), vec2<bool>(true, true), select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false)), select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true)), select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false)))));
    global0 = array<vec2<u32>, 7>();
    var var_2 = select(vec4<bool>(!var_1.x, true, false, var_1.x), !vec4<bool>((var_1.x || var_1.x) & true, _wgslsmith_f_op_f32(f32(-1f) * -671f) >= _wgslsmith_f_op_f32(select(-560f, 1395f, true)), true, var_1.x), true);
    return var_2.wwz;
}

fn func_1(arg_0: vec2<i32>) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * 1113f)))));
    let var_1 = func_2();
    global1 = array<u32, 5>();
    var var_2 = select(select(!(!select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), true)), vec3<bool>(true, true, true), false), func_3(), false);
    var var_3 = true;
    return Struct_3(Struct_1(abs(abs(-1i)) | var_1));
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: Struct_3, arg_3: i32) -> Struct_1 {
    var var_0 = Struct_2(~1u >= (1u << ((select(0u, global1[_wgslsmith_index_u32(10907u, 5u)], true) >> (~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 5u)], 5u)], 5u)] % 32u)) % 32u)), u_input.b.zzx, func_1(firstTrailingBit(firstTrailingBit(u_input.b.yw | vec2<i32>(9338i, arg_0.a)))).a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-575f, -1173f, 1859f, 1000f), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-329f, -852f, 1075f, -183f), vec4<f32>(2466f, 343f, -1399f, -480f))))))));
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1095f, -665f) * vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.d.x - var_0.d.x) - var_0.d.x), _wgslsmith_div_f32(var_0.d.x, _wgslsmith_f_op_f32(-var_0.d.x)))) * vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.d.x)), -905f));
    let var_2 = select(!(!vec4<bool>(true, var_0.a, global1[_wgslsmith_index_u32(4294967295u, 5u)] <= global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(26951u, 5u)], 5u)], 5u)], 5u)], any(vec3<bool>(false, false, false)))), select(vec4<bool>(false, func_3().x && (true && var_0.a), true, !all(vec2<bool>(var_0.a, var_0.a))), !select(select(vec4<bool>(var_0.a, true, true, false), vec4<bool>(false, true, false, true), vec4<bool>(false, false, var_0.a, var_0.a)), select(vec4<bool>(true, var_0.a, var_0.a, true), vec4<bool>(var_0.a, false, var_0.a, false), var_0.a), select(vec4<bool>(var_0.a, var_0.a, var_0.a, true), vec4<bool>(var_0.a, true, var_0.a, var_0.a), vec4<bool>(true, true, true, true))), select(!(!vec4<bool>(var_0.a, false, var_0.a, var_0.a)), vec4<bool>(true, true, true, true), select(select(vec4<bool>(true, var_0.a, var_0.a, true), vec4<bool>(var_0.a, var_0.a, true, var_0.a), true), !vec4<bool>(false, true, var_0.a, var_0.a), var_0.a | true))), false);
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_0.d * var_0.d)), _wgslsmith_f_op_vec4_f32(-var_0.d))));
    var_3 = _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.x, -1215f)))), var_1.x, var_1.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.d.x * 317f))))), var_0.d));
    return func_1(var_0.b.zx).a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(u_input.b.x, u_input.a, true);
    var var_1 = true;
    var var_2 = func_4(Struct_1(_wgslsmith_sub_i32(var_0, u_input.b.x)), min(u_input.a, _wgslsmith_dot_vec2_i32(u_input.b.yx, ~vec2<i32>(-1i, -1i))), func_1(~min(_wgslsmith_mult_vec2_i32(u_input.b.wz, u_input.b.wy), vec2<i32>(-2147483647i, u_input.a))), var_0);
    let var_3 = ~(firstLeadingBit(firstTrailingBit(vec3<u32>(1u, global1[_wgslsmith_index_u32(56434u, 5u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(26459u, 5u)], 5u)])) << (~vec3<u32>(global1[_wgslsmith_index_u32(28295u, 5u)], global1[_wgslsmith_index_u32(1u, 5u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(26837u, 5u)], 5u)]) % vec3<u32>(32u))) & ~(~vec3<u32>(16700u, 20247u, 4294967295u)));
    global1 = array<u32, 5>();
    let x = u_input.a;
    s_output = StorageBuffer(0u);
}


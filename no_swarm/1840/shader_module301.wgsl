struct Struct_1 {
    a: vec3<bool>,
    b: vec2<f32>,
    c: i32,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 19> = array<u32, 19>(63665u, 21597u, 1u, 1u, 57792u, 0u, 0u, 1u, 3283u, 47499u, 36887u, 4294967295u, 969u, 16100u, 9459u, 107945u, 27638u, 1u, 1u);

var<private> global1: array<u32, 29>;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec3<i32>) -> vec3<bool> {
    var var_0 = Struct_1(!(!(!select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(true, false, true)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) * vec2<f32>(-1000f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(-1196f, 1000f)))))), _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(min(reverseBits(u_input.b.yyx), -vec3<i32>(0i, arg_0.x, arg_0.x)), arg_0), firstTrailingBit(-(~vec3<i32>(-25547i, u_input.b.x, arg_0.x)))), -select(u_input.b.zzw, ~vec3<i32>(u_input.b.x, -1i, u_input.c) | vec3<i32>(u_input.b.x, u_input.b.x, u_input.c), vec3<bool>(true, true, true)));
    global0 = array<u32, 19>();
    global0 = array<u32, 19>();
    global1 = array<u32, 29>();
    var_0 = Struct_1(select(select(select(var_0.a, select(var_0.a, var_0.a, true), vec3<bool>(var_0.a.x, true, var_0.a.x)), var_0.a, true), var_0.a, var_0.a.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(var_0.b, vec2<f32>(var_0.b.x, -217f)))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b.x, -331f)))), reverseBits(1i), u_input.b.yzy ^ var_0.d);
    return !var_0.a;
}

fn func_2() -> Struct_1 {
    global1 = array<u32, 29>();
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(783f, 571f))))), -1184f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-668f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
    var var_1 = var_0.x;
    global1 = array<u32, 29>();
    var var_2 = !all(vec4<bool>(true, true, true, true));
    return Struct_1(!func_3((vec3<i32>(-2147483647i, 26140i, u_input.b.x) ^ u_input.b.zwx) << ((vec3<u32>(73704u, 4294967295u, u_input.a) ^ vec3<u32>(global0[_wgslsmith_index_u32(38903u, 19u)], global0[_wgslsmith_index_u32(u_input.a, 19u)], 69222u)) % vec3<u32>(32u))), vec2<f32>(-1336f, var_0.x), u_input.c, abs(~u_input.b.zzw << (_wgslsmith_mult_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 19u)], 19u)], u_input.a, global1[_wgslsmith_index_u32(68445u, 29u)]), vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 19u)], 29u)], 29u)], global0[_wgslsmith_index_u32(0u, 19u)], 0u)) % vec3<u32>(32u))));
}

fn func_1() -> f32 {
    global1 = array<u32, 29>();
    global1 = array<u32, 29>();
    var var_0 = func_2();
    let var_1 = func_2();
    let var_2 = select(var_0.a.yx, func_3(vec3<i32>(max(var_0.d.x, u_input.b.x), ~u_input.b.x, -20216i) >> (~vec3<u32>(326u, 52200u, 1u) % vec3<u32>(32u))).yx, !(!var_1.a.zx));
    return 314f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(!select(!select(vec2<bool>(true, false), vec2<bool>(true, true), false), vec2<bool>(true, true), vec2<bool>(true, true)));
    var var_1 = _wgslsmith_dot_vec3_i32(select(u_input.b.xyz, _wgslsmith_add_vec3_i32(u_input.b.zyx, _wgslsmith_mod_vec3_i32(u_input.b.xxy, ~vec3<i32>(-370i, -1i, -12376i))), false), u_input.b.wxx);
    let var_2 = Struct_1(!(!vec3<bool>(var_0.x & true, var_0.x | var_0.x, true)), vec2<f32>(_wgslsmith_f_op_f32(-281f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(499f)) * _wgslsmith_f_op_f32(ceil(-239f)))), _wgslsmith_f_op_f32(1565f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1()) + -2181f))), u_input.c, vec3<i32>(select(u_input.c, countOneBits(-2924i) >> (~global1[_wgslsmith_index_u32(17725u, 29u)] % 32u), var_0.x), -(~(u_input.b.x & u_input.c)), u_input.c));
    let var_3 = func_2();
    var_0 = vec2<bool>(any(vec2<bool>(true || (u_input.b.x >= -2147483647i), true)), all(!vec4<bool>(false, false, any(vec3<bool>(var_3.a.x, false, false)), var_0.x)));
    let var_4 = var_3;
    global1 = array<u32, 29>();
    let x = u_input.a;
    s_output = StorageBuffer(~countOneBits(vec4<u32>(global1[_wgslsmith_index_u32(87129u, 29u)], _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, global0[_wgslsmith_index_u32(u_input.a, 19u)], 1u, u_input.a), vec4<u32>(0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 19u)], 19u)], 0u, global1[_wgslsmith_index_u32(u_input.a, 29u)])), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 0u, 1u, u_input.a), vec4<u32>(global0[_wgslsmith_index_u32(4347u, 19u)], 4294967295u, 0u, 70736u)), ~global0[_wgslsmith_index_u32(6379u, 19u)])), var_2.b.x);
}


struct Struct_1 {
    a: vec3<f32>,
    b: vec3<f32>,
    c: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
}

struct Struct_4 {
    a: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 8>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3() -> f32 {
    global0 = array<vec4<i32>, 8>();
    global0 = array<vec4<i32>, 8>();
    let var_0 = vec3<bool>(all(select(vec3<bool>(true, true, false), select(select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), true), select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), false), vec3<bool>(true, true, true)), vec3<bool>(any(vec2<bool>(true, false)), true, true))), true, select(true, false, true) | all(select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))));
    global0 = array<vec4<i32>, 8>();
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1540f))) + 1487f)))));
}

fn func_2(arg_0: vec4<i32>, arg_1: vec3<f32>) -> Struct_1 {
    let var_0 = Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(ceil(arg_1.xz)))) + vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) * _wgslsmith_f_op_f32(exp2(arg_1.x))), 690f)));
    global0 = array<vec4<i32>, 8>();
    global0 = array<vec4<i32>, 8>();
    let var_1 = vec2<bool>(false, -347f < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x * 1000f)) + _wgslsmith_f_op_f32(var_0.a.x + _wgslsmith_f_op_f32(-var_0.a.x))));
    var var_2 = select(firstLeadingBit(abs(~vec3<i32>(28978i, arg_0.x, 89368i))), -vec3<i32>(firstTrailingBit(arg_0.x), max(countOneBits(13065i), arg_0.x), ~(~(-12944i))), var_1.x);
    return Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_1) - vec3<f32>(410f, arg_1.x, var_0.a.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a.x, var_0.a.x, 2387f) * _wgslsmith_f_op_vec3_f32(arg_1 - arg_1))))), vec3<f32>(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x + arg_1.x))), var_0.a.x), _wgslsmith_f_op_vec3_f32(step(arg_1, vec3<f32>(-1119f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_0.a.x), _wgslsmith_f_op_f32(339f + arg_1.x), var_1.x)), _wgslsmith_f_op_f32(trunc(214f))))));
}

fn func_1(arg_0: i32) -> Struct_1 {
    global0 = array<vec4<i32>, 8>();
    var var_0 = vec3<i32>(1i, arg_0, reverseBits(arg_0));
    return func_2(~(-(~vec4<i32>(var_0.x, var_0.x, 34323i, var_0.x) | vec4<i32>(arg_0, var_0.x, 0i, 1i))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1200f, -465f, -1880f))))));
}

fn func_4(arg_0: vec4<u32>, arg_1: vec4<i32>, arg_2: Struct_1, arg_3: Struct_2) -> i32 {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(func_3()), arg_3.a.c.x);
    let var_1 = Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-arg_2.a.yz), vec2<f32>(-447f, -2450f), vec2<bool>(true, true)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-495f, -524f)))))));
    var var_2 = var_1;
    var var_3 = ~global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(1u, ~1u, countOneBits(arg_0.x)), (arg_0.wyy ^ vec3<u32>(1u, u_input.a.x, 5909u)) << (select(~arg_0.xzx, vec3<u32>(1u, 0u, arg_0.x), select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), false)) % vec3<u32>(32u))), 8u)];
    var_2 = Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_3.a.b.zy) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(120f, arg_2.c.x))) + var_2.a));
    return countOneBits(i32(-1i) * -1i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -((func_4(~vec4<u32>(u_input.c.x, u_input.c.x, 4294967295u, 59294u), ~vec4<i32>(2147483647i, -32199i, 11375i, 7862i), func_1(1i), Struct_2(Struct_1(vec3<f32>(203f, -1351f, -1051f), vec3<f32>(662f, -2896f, 1000f), vec3<f32>(541f, 2138f, -778f)))) ^ firstLeadingBit(func_4(vec4<u32>(32105u, u_input.a.x, u_input.b, u_input.b), global0[_wgslsmith_index_u32(u_input.b, 8u)], Struct_1(vec3<f32>(750f, 1000f, -518f), vec3<f32>(-324f, -879f, -198f), vec3<f32>(-2618f, -1014f, 1218f)), Struct_2(Struct_1(vec3<f32>(1000f, -1752f, 1569f), vec3<f32>(-408f, -689f, -117f), vec3<f32>(591f, 1256f, 969f)))))) | select(firstLeadingBit(1i), countOneBits(17325i >> (u_input.a.x % 32u)), !all(vec2<bool>(true, false))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec4_i32(-global0[_wgslsmith_index_u32(u_input.c.x, 8u)], vec4<i32>(-1i, 0i, func_4(~vec4<u32>(u_input.c.x, 56105u, u_input.c.x, u_input.b), global0[_wgslsmith_index_u32(~u_input.a.x, 8u)], Struct_1(vec3<f32>(-1000f, -196f, -1000f), vec3<f32>(283f, 570f, -952f), vec3<f32>(574f, 866f, 1710f)), Struct_2(Struct_1(vec3<f32>(-864f, 1109f, 861f), vec3<f32>(-989f, -969f, 970f), vec3<f32>(-1306f, -1000f, 936f)))), -abs(-2147483647i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-548f + 458f)))));
}


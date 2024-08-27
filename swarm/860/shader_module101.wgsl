struct Struct_1 {
    a: bool,
    b: vec3<i32>,
    c: bool,
}

struct Struct_2 {
    a: vec3<u32>,
    b: bool,
    c: Struct_1,
    d: vec4<bool>,
    e: f32,
}

struct Struct_3 {
    a: bool,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 21>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_3, arg_2: Struct_2, arg_3: vec3<f32>) -> vec4<bool> {
    let var_0 = !select(arg_2.d.wwz, !select(vec3<bool>(arg_1.a, true, arg_1.a), !vec3<bool>(true, arg_1.a, true), !arg_2.d.zzx), false);
    let var_1 = arg_2;
    let var_2 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(1104f - 139f), 497f) + _wgslsmith_f_op_vec2_f32(-arg_0)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.e, arg_2.e) * vec2<f32>(arg_3.x, arg_0.x)), _wgslsmith_f_op_vec2_f32(step(arg_3.xz, arg_3.zz)))), _wgslsmith_f_op_vec2_f32(arg_3.yx * arg_0))))));
    var var_3 = 11581i;
    let var_4 = vec4<u32>(0u, ~1u, reverseBits(var_1.a.x), var_1.a.x);
    return !arg_2.d;
}

fn func_2() -> Struct_3 {
    let var_0 = Struct_1(!any(select(func_3(vec2<f32>(-1852f, -849f), Struct_3(false), Struct_2(global0[_wgslsmith_index_u32(54722u, 21u)], true, Struct_1(true, vec3<i32>(-1i, u_input.a, -1664i), false), vec4<bool>(false, false, true, false), -971f), vec3<f32>(422f, -1000f, 1059f)), vec4<bool>(true, true, true, true), select(false, false, true))), vec3<i32>(-1i) * -reverseBits(vec3<i32>(-2147483647i, 2147483647i, 0i) >> (global0[_wgslsmith_index_u32(16104u, 21u)] % vec3<u32>(32u))), true);
    var var_1 = firstLeadingBit(select(~var_0.b.xz, ~_wgslsmith_mult_vec2_i32(_wgslsmith_mult_vec2_i32(var_0.b.xz, vec2<i32>(var_0.b.x, u_input.a)), ~vec2<i32>(u_input.a, var_0.b.x)), var_0.c));
    var var_2 = Struct_1(false, abs(-var_0.b), select(var_0.c, true, func_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(390f, 1677f)))), Struct_3(!var_0.c), Struct_2(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(7195u, 65662u), 21u)], any(vec4<bool>(true, var_0.c, var_0.c, var_0.c)), Struct_1(true, var_0.b, var_0.c), vec4<bool>(var_0.a, true, false, var_0.a), _wgslsmith_f_op_f32(1796f + 1000f)), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-397f, -1503f, -1183f))), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(671f, -1000f, -542f)))))).x));
    var var_3 = countOneBits(~abs(1u));
    var_2 = var_0;
    return Struct_3(func_3(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-322f, -652f)))))), Struct_3(true), Struct_2(_wgslsmith_add_vec3_u32(reverseBits(global0[_wgslsmith_index_u32(0u, 21u)]), vec3<u32>(1u, 1u, 4294967295u)), false, var_0, select(vec4<bool>(false, var_0.c, var_2.c, var_2.c), func_3(vec2<f32>(957f, -753f), Struct_3(var_0.a), Struct_2(global0[_wgslsmith_index_u32(10165u, 21u)], var_0.c, var_0, vec4<bool>(var_0.c, true, false, var_2.c), -1042f), vec3<f32>(-404f, 1445f, -518f)), !vec4<bool>(true, false, var_0.a, var_2.a)), -1732f), vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(1069f, 732f, var_2.a)), -1071f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-322f - 1000f) * 1301f), _wgslsmith_f_op_f32(trunc(-399f)))).x);
}

fn func_1() -> u32 {
    global0 = array<vec3<u32>, 21>();
    var var_0 = ~u_input.a;
    global0 = array<vec3<u32>, 21>();
    let var_1 = func_2();
    let var_2 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(474f, -153f))), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(372f, 237f))))))));
    return 16694u;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<u32>, 21>();
    var var_0 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_u32(~(~_wgslsmith_sub_vec3_u32(vec3<u32>(4596u, 70732u, 0u), vec3<u32>(0u, 0u, 0u))), select(~vec3<u32>(0u, 102710u, 1u), ~vec3<u32>(18570u, 16094u, 27783u) ^ reverseBits(global0[_wgslsmith_index_u32(10653u, 21u)]), true)), 1513f);
}


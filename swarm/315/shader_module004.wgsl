struct Struct_1 {
    a: u32,
    b: bool,
    c: f32,
    d: f32,
}

struct Struct_2 {
    a: f32,
    b: bool,
    c: u32,
    d: i32,
}

struct Struct_3 {
    a: vec4<f32>,
    b: Struct_2,
    c: f32,
}

struct Struct_4 {
    a: i32,
    b: u32,
    c: Struct_1,
    d: vec3<i32>,
}

struct Struct_5 {
    a: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 5> = array<Struct_5, 5>(Struct_5(true), Struct_5(true), Struct_5(false), Struct_5(true), Struct_5(false));

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_2(arg_0: vec4<u32>, arg_1: i32) -> vec4<bool> {
    return !select(!(!select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, true))), vec4<bool>(false, reverseBits(-1i) == _wgslsmith_dot_vec2_i32(vec2<i32>(arg_1, -2147483647i), vec2<i32>(2147483647i, -2147483647i)), false, true), select(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, true)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true)));
}

fn func_3(arg_0: i32, arg_1: Struct_4, arg_2: i32) -> u32 {
    return 1u;
}

fn func_1(arg_0: vec4<u32>, arg_1: Struct_5, arg_2: vec3<u32>) -> vec3<u32> {
    var var_0 = !func_2(abs(~vec4<u32>(arg_2.x, arg_0.x, 0u, arg_0.x)), 53276i);
    var var_1 = Struct_3(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-383f, -333f, -158f, -421f))))))), Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1189f, -484f, false)) + -456f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(752f * 1130f) - -197f)), arg_1.a, countOneBits(func_3(_wgslsmith_dot_vec2_i32(vec2<i32>(70178i, u_input.a.x), vec2<i32>(42760i, 1i)), Struct_4(-1i, 59835u, Struct_1(33227u, arg_1.a, 307f, 210f), u_input.a), _wgslsmith_mult_i32(u_input.a.x, u_input.a.x))), u_input.a.x), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1075f, -1571f) + _wgslsmith_f_op_f32(f32(-1f) * -333f))))));
    var var_2 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1148f, _wgslsmith_f_op_f32(ceil(-187f)), true))), select(var_0.x, true, reverseBits(1i) > _wgslsmith_add_i32(-1i, max(var_1.b.d, -5878i))), arg_2.x >> (0u % 32u), reverseBits(-(~(u_input.a.x | 21462i))));
    let var_3 = Struct_1(~(~min(_wgslsmith_div_u32(12714u, var_1.b.c), arg_2.x)), false, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(var_1.c, _wgslsmith_div_f32(var_2.a, -189f)))))), var_1.b.a);
    var var_4 = ~4294967295u;
    return ~min(vec3<u32>(~var_2.c, 4294967295u, var_1.b.c), _wgslsmith_div_vec3_u32(~arg_2, arg_0.yzw));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<u32>(select(25432u, countOneBits(firstTrailingBit(~81992u)), true), 4294967295u);
    let var_1 = Struct_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1131f, -1000f, 556f, 599f))))) * _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(-666f, 794f, -2252f, 620f) + _wgslsmith_div_vec4_f32(vec4<f32>(854f, 1781f, 556f, 643f), vec4<f32>(-232f, 218f, 112f, -157f))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -112f, -733f, _wgslsmith_f_op_f32(1182f - -2001f))))), Struct_2(-679f, true, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 4294967295u, var_0.x), func_1(vec4<u32>(53279u, var_0.x, 31059u, 41879u), Struct_5(false), vec3<u32>(var_0.x, 1u, 0u))) | var_0.x, min(u_input.a.x, ~u_input.a.x)), _wgslsmith_div_f32(825f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(256f))), 250f)));
    var var_2 = var_1;
    var_0 = vec2<u32>(select(_wgslsmith_dot_vec3_u32(~vec3<u32>(var_0.x, 8010u, var_1.b.c), ~abs(vec3<u32>(0u, var_1.b.c, var_0.x))), ~(~51366u), any(vec2<bool>(var_1.b.b, false))), abs(~1u));
    let var_3 = -(~(-1i));
    global0 = array<Struct_5, 5>();
    var var_4 = u_input.a.x;
    var var_5 = Struct_3(_wgslsmith_f_op_vec4_f32(-var_2.a), Struct_2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(124f, var_2.c))))), false, 4294967295u, ~min(1i, i32(-1i) * -1i)), _wgslsmith_f_op_f32(var_2.a.x - 150f));
    var_0 = min(abs(select(~(~vec2<u32>(4294967295u, var_1.b.c)), func_1(countOneBits(vec4<u32>(4294967295u, 1u, var_5.b.c, 0u)), global0[_wgslsmith_index_u32(var_2.b.c, 5u)], firstLeadingBit(vec3<u32>(4294967295u, 55402u, var_2.b.c))).zz, !func_2(vec4<u32>(1u, 4294967295u, 43838u, 1u), -1i).zy)), _wgslsmith_mult_vec2_u32(~firstTrailingBit(vec2<u32>(var_1.b.c, 0u)) ^ vec2<u32>(var_1.b.c, ~28655u), vec2<u32>(4294967295u, ~1u) & (select(vec2<u32>(0u, 4294967295u), vec2<u32>(var_5.b.c, 60u), true) ^ (vec2<u32>(4294967295u, 4294967295u) >> (vec2<u32>(37291u, var_2.b.c) % vec2<u32>(32u))))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a);
}


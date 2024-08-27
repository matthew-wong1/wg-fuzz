struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: vec2<bool>,
    d: Struct_1,
    e: vec3<bool>,
}

struct Struct_4 {
    a: Struct_2,
    b: vec3<bool>,
    c: Struct_2,
    d: Struct_3,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: vec2<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 7> = array<vec3<f32>, 7>(vec3<f32>(-282f, -318f, -723f), vec3<f32>(-1204f, -466f, 617f), vec3<f32>(-309f, 830f, -789f), vec3<f32>(-141f, -916f, 775f), vec3<f32>(-865f, 535f, 903f), vec3<f32>(442f, 161f, 130f), vec3<f32>(-207f, -622f, -1000f));

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_1() -> Struct_1 {
    global0 = array<vec3<f32>, 7>();
    global0 = array<vec3<f32>, 7>();
    return Struct_1(433f);
}

fn func_3(arg_0: vec4<bool>, arg_1: vec3<f32>, arg_2: vec3<i32>) -> bool {
    var var_0 = vec2<i32>(_wgslsmith_dot_vec3_i32(arg_2, -(vec3<i32>(31765i, 56145i, 14864i) ^ ~vec3<i32>(u_input.a, -51243i, 55972i))), firstLeadingBit(1i) | arg_2.x);
    var_0 = _wgslsmith_mod_vec2_i32(arg_2.yy, arg_2.xy);
    var_0 = abs(vec2<i32>(var_0.x, -_wgslsmith_clamp_i32(~19386i, ~u_input.a, -u_input.c)));
    var var_1 = vec2<i32>(1968i, ~arg_2.x);
    var_0 = _wgslsmith_mod_vec2_i32(~vec2<i32>(-min(var_1.x, -2147483647i), 86650i), vec2<i32>(~(-_wgslsmith_mod_i32(-12094i, 38967i)), var_1.x << (~_wgslsmith_mult_u32(u_input.d.x, u_input.e) % 32u)));
    return arg_0.x;
}

fn func_2(arg_0: Struct_1) -> bool {
    var var_0 = ~((-firstTrailingBit(vec2<i32>(-2147483647i, u_input.c)) | ~vec2<i32>(-1i, u_input.a)) << (u_input.d % vec2<u32>(32u)));
    let var_1 = select(-17290i, u_input.a, true);
    global0 = array<vec3<f32>, 7>();
    let var_2 = -610f;
    global0 = array<vec3<f32>, 7>();
    return !func_3(vec4<bool>(true, all(vec4<bool>(false, false, false, true)), true, false), global0[_wgslsmith_index_u32(4294967295u, 7u)], select(vec3<i32>(-1i) * -vec3<i32>(14727i, 1i, u_input.c), -vec3<i32>(var_0.x, -10003i, 31210i), all(vec4<bool>(true, true, true, true))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<f32>, 7>();
    global0 = array<vec3<f32>, 7>();
    global0 = array<vec3<f32>, 7>();
    global0 = array<vec3<f32>, 7>();
    global0 = array<vec3<f32>, 7>();
    var var_0 = func_1();
    let var_1 = Struct_3(Struct_1(var_0.a), func_2(Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(var_0.a)))))), select(!vec2<bool>(true, all(vec4<bool>(false, true, false, false))), select(vec2<bool>(true, false), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true)), _wgslsmith_f_op_f32(-var_0.a) > -1211f), var_0.a <= _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_0.a)))), func_1(), vec3<bool>(true, true, true));
    let var_2 = Struct_2(func_1());
    let x = u_input.a;
    s_output = StorageBuffer(((~vec3<u32>(u_input.e, u_input.d.x, u_input.d.x) ^ abs(vec3<u32>(u_input.e, 1u, u_input.b))) << (firstLeadingBit(~vec3<u32>(4294967295u, 0u, u_input.e)) % vec3<u32>(32u))) & vec3<u32>(u_input.b, _wgslsmith_dot_vec2_u32(~vec2<u32>(0u, u_input.b), ~u_input.d), max(max(u_input.e, 0u), max(52047u, 4245u))), -129f);
}


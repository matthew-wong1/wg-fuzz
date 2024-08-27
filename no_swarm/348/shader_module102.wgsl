struct Struct_1 {
    a: bool,
    b: vec4<u32>,
    c: vec4<bool>,
    d: vec3<bool>,
    e: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec3<u32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: vec4<i32>,
    d: u32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 13> = array<bool, 13>(true, false, false, true, true, true, true, false, false, true, false, false, false);

var<private> global1: Struct_2;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec3<u32>, arg_1: i32, arg_2: f32, arg_3: Struct_2) -> bool {
    let var_0 = arg_3.a;
    var var_1 = arg_3;
    var var_2 = Struct_2(var_0);
    let var_3 = Struct_2(global1.a);
    global0 = array<bool, 13>();
    return true;
}

fn func_2(arg_0: vec3<f32>) -> Struct_1 {
    global1 = Struct_2(Struct_1(func_3(abs(global1.a.b.wxz), _wgslsmith_mod_i32(-1i, _wgslsmith_dot_vec3_i32(global1.a.e, global1.a.e)), _wgslsmith_f_op_f32(-401f - -452f), Struct_2(global1.a)), ~select(global1.a.b, ~vec4<u32>(0u, global1.a.b.x, global1.a.b.x, 4294967295u), global1.a.c), global1.a.c, !vec3<bool>(true, !global1.a.a, true), global1.a.e));
    global1 = Struct_2(Struct_1(!global1.a.c.x, abs(vec4<u32>(~u_input.d, 0u, u_input.d, global1.a.b.x)), !(!global1.a.c), vec3<bool>(all(select(global1.a.c.zy, vec2<bool>(true, global0[_wgslsmith_index_u32(47548u, 13u)]), global1.a.d.zz)), true, 1125f <= _wgslsmith_f_op_f32(round(1387f))), global1.a.e));
    global0 = array<bool, 13>();
    var var_0 = Struct_2(global1.a);
    global1 = Struct_2(var_0.a);
    return Struct_1(1i <= firstLeadingBit(u_input.a), vec4<u32>(~var_0.a.b.x, firstLeadingBit(17082u), _wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.b.x, u_input.b.x), ~global1.a.b.ww), ~(~u_input.d)), vec4<bool>(global0[_wgslsmith_index_u32(~u_input.d, 13u)], true, true, false), var_0.a.c.wzz, vec3<i32>(-1i) * -var_0.a.e);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec4<bool>) -> Struct_1 {
    var var_0 = ~(-arg_1.a.e.zx);
    var_0 = vec2<i32>(2147483647i, 45177i);
    let var_1 = ~_wgslsmith_mod_i32(arg_0.e.x, _wgslsmith_dot_vec3_i32(arg_1.a.e, arg_0.e));
    let var_2 = abs(vec4<u32>(arg_1.a.b.x, _wgslsmith_sub_u32(_wgslsmith_div_u32(_wgslsmith_div_u32(arg_1.a.b.x, 0u), arg_0.b.x), ~1u), 4294967295u, min(~0u << (arg_1.a.b.x % 32u), arg_0.b.x >> (u_input.d % 32u))));
    global0 = array<bool, 13>();
    return Struct_1(select(-(~arg_0.e.x) >= -28570i, func_2(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2968f), _wgslsmith_div_f32(1082f, -1204f), _wgslsmith_f_op_f32(trunc(-132f)))).c.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-478f)), _wgslsmith_f_op_f32(f32(-1f) * -1334f)) == -558f), arg_1.a.b, !select(func_2(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1000f, -288f, 907f)))).c, !vec4<bool>(global1.a.d.x, true, true, global1.a.a), any(!arg_1.a.c.xy)), select(global1.a.d, !global1.a.c.yzw, !arg_2.x), _wgslsmith_mult_vec3_i32(vec3<i32>(-(~0i), ~(arg_0.e.x | 2147483647i), 1i), ~(vec3<i32>(-24844i, global1.a.e.x, arg_1.a.e.x) >> (vec3<u32>(var_2.x, var_2.x, 0u) % vec3<u32>(32u))) | arg_1.a.e));
}

fn func_1() -> Struct_2 {
    global0 = array<bool, 13>();
    let var_0 = global1.a.c;
    let var_1 = func_4(func_2(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(130f, 1014f, 1348f) - vec3<f32>(830f, 1605f, 852f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(147f, -1929f, -813f)) - vec3<f32>(-978f, 487f, -1311f))))), Struct_2(func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-948f, 373f, 1809f) * vec3<f32>(-590f, -192f, -918f))))), global1.a.c);
    global1 = Struct_2(global1.a);
    global0 = array<bool, 13>();
    return Struct_2(var_1);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let var_1 = func_1();
    global0 = array<bool, 13>();
    global0 = array<bool, 13>();
    global0 = array<bool, 13>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1847f, 810f, 183f, -712f))))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(375f, -553f, 1358f, 1262f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1257f, -1553f, 1238f, -292f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-2031f, 2131f, -1000f, 1000f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(132f, 1870f, 1081f, -589f)))))), select(func_1().a.b.x, ~global1.a.b.x, true) << (~1u % 32u), -_wgslsmith_div_vec4_i32(vec4<i32>(u_input.a, var_0.a.e.x, -1i, global1.a.e.x), -vec4<i32>(var_0.a.e.x, -2396i, var_1.a.e.x, global1.a.e.x)) | _wgslsmith_div_vec4_i32(_wgslsmith_mod_vec4_i32(abs(vec4<i32>(var_1.a.e.x, u_input.a, 8688i, 2147483647i)), -vec4<i32>(var_1.a.e.x, global1.a.e.x, u_input.a, global1.a.e.x)), min(reverseBits(vec4<i32>(25164i, global1.a.e.x, 15823i, var_0.a.e.x)), _wgslsmith_div_vec4_i32(vec4<i32>(global1.a.e.x, var_1.a.e.x, -25606i, 2147483647i), vec4<i32>(var_1.a.e.x, 1i, var_0.a.e.x, global1.a.e.x)))), u_input.c.x, var_1.a.b);
}


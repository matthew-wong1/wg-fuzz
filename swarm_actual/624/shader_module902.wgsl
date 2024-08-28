struct Struct_1 {
    a: bool,
    b: vec4<f32>,
    c: i32,
    d: u32,
    e: f32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec3<f32>,
    c: f32,
    d: vec3<f32>,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(21839u, 4294967295u, 50265u);

var<private> global1: array<u32, 32> = array<u32, 32>(4294967295u, 1u, 42567u, 37519u, 4294967295u, 4294967295u, 15305u, 13431u, 7709u, 1u, 4294967295u, 0u, 0u, 4294967295u, 27262u, 42639u, 18503u, 13826u, 1u, 1u, 1u, 4294967295u, 0u, 69854u, 40410u, 1u, 4294967295u, 1u, 4294967295u, 16192u, 20109u, 63141u);

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3() -> f32 {
    let var_0 = Struct_2(!vec4<bool>(any(select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), true)), true, true, true), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(607f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1364f, 309f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-180f)) * _wgslsmith_f_op_f32(153f - 587f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-415f, -702f, 190f) * vec3<f32>(-1166f, -1000f, -1763f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1174f, -226f, -1636f) - vec3<f32>(-1373f, 691f, -667f)))), true)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-635f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f * -223f) + _wgslsmith_f_op_f32(-857f * -1000f)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1304f - -255f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-824f, 264f) - -386f))), all(vec2<bool>(true, true)))), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1344f, -481f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -507f), _wgslsmith_f_op_f32(f32(-1f) * -351f)))))));
    var var_1 = true;
    let var_2 = var_0.a.x;
    let var_3 = !(!(!var_0.a));
    var var_4 = select(vec3<bool>(true, true, false), !var_0.a.wzx, var_2);
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.d.x, _wgslsmith_f_op_f32(-var_0.b.x)));
}

fn func_2(arg_0: bool) -> bool {
    let var_0 = Struct_1(arg_0, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1349f, -175f, -182f, -851f) + vec4<f32>(603f, 192f, -421f, 2397f)) - _wgslsmith_div_vec4_f32(vec4<f32>(-1105f, -1260f, 1236f, 197f), vec4<f32>(810f, 607f, 788f, -165f)))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(902f + -466f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(-1033f)), _wgslsmith_f_op_f32(183f * 1864f))), -1534f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_3()))))), abs(-abs(abs(u_input.a.x))), global1[_wgslsmith_index_u32(_wgslsmith_div_u32(1u, ~global1[_wgslsmith_index_u32(76313u, 32u)] >> (_wgslsmith_add_u32(_wgslsmith_sub_u32(global0.x, global1[_wgslsmith_index_u32(0u, 32u)]), 0u) % 32u)), 32u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(f32(-1f) * -114f)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(787f)), _wgslsmith_f_op_f32(1141f - 1856f))))));
    global1 = array<u32, 32>();
    global1 = array<u32, 32>();
    global1 = array<u32, 32>();
    let var_1 = select(!(!select(vec2<bool>(false, arg_0), !vec2<bool>(var_0.a, false), !arg_0)), vec2<bool>(false, true), any(vec2<bool>(select(var_0.a | false, var_0.a, !arg_0), select(global1[_wgslsmith_index_u32(0u, 32u)], 1u, false) != 24869u)));
    return !arg_0;
}

fn func_1(arg_0: f32, arg_1: i32, arg_2: bool) -> vec4<bool> {
    let var_0 = Struct_2(vec4<bool>(true, !arg_2, func_2(arg_2), !all(vec2<bool>(true, true))), vec3<f32>(arg_0, 1000f, -1000f), _wgslsmith_f_op_f32(sign(-429f)), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(arg_0, arg_0, 2497f))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(1070f, arg_0, _wgslsmith_f_op_f32(select(-1189f, 289f, false))) * vec3<f32>(-231f, _wgslsmith_div_f32(-1032f, arg_0), arg_0)))));
    var var_1 = _wgslsmith_mod_vec3_i32(_wgslsmith_mult_vec3_i32(max(_wgslsmith_add_vec3_i32(reverseBits(vec3<i32>(u_input.b, arg_1, arg_1)), countOneBits(u_input.a)), _wgslsmith_sub_vec3_i32(vec3<i32>(arg_1, arg_1, u_input.a.x), u_input.a)), -vec3<i32>(arg_1, 646i, ~(-2147483647i))), u_input.a);
    var var_2 = var_0.a.x;
    var var_3 = max(var_1.x, _wgslsmith_div_i32(arg_1, u_input.a.x << (~55304u % 32u)));
    global0 = (vec3<u32>(global0.x << (_wgslsmith_dot_vec3_u32(vec3<u32>(global0.x, 4294967295u, global1[_wgslsmith_index_u32(4294967295u, 32u)]), vec3<u32>(global0.x, 0u, global0.x)) % 32u), _wgslsmith_sub_u32(4619u, global0.x) ^ 69373u, ~(~2020u)) ^ vec3<u32>(14256u, ~4294967295u, ~_wgslsmith_div_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(16453u, 32u)], 32u)], 32u)], global0.x))) << (vec3<u32>(~abs(_wgslsmith_sub_u32(1u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(2745u, 32u)], 32u)])), 0u, ~0u) % vec3<u32>(32u));
    return var_0.a;
}

fn func_4(arg_0: Struct_2, arg_1: bool, arg_2: bool) -> StorageBuffer {
    let var_0 = Struct_1(arg_0.a.x | true, _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-arg_0.c), arg_0.b.x, _wgslsmith_f_op_f32(func_3()), 133f), vec4<f32>(631f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.b.x, arg_0.d.x)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(498f * -360f))), arg_0.c), select(arg_0.a, vec4<bool>(func_1(arg_0.c, u_input.b, arg_0.a.x).x, true, arg_0.a.x, arg_1), true))), u_input.b, 0u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.b.x) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -999f))));
    var var_1 = arg_0;
    var var_2 = max(countOneBits(~global0.x), var_0.d) & min(~(~(~4294967295u)), ~var_0.d);
    let var_3 = u_input.b;
    let var_4 = true;
    return StorageBuffer(-1i, ~(abs(global0.xz) << (~vec2<u32>(var_0.d, global0.x) % vec2<u32>(32u))) << (vec2<u32>(20982u, ~var_0.d) % vec2<u32>(32u)), ~(-19675i), 112297u);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_4(Struct_2(!select(func_1(-1040f, u_input.b, true), vec4<bool>(false, false, false, false), select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, false), true)), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(1f, 1f, 1f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1454f, 1000f, -240f)))), _wgslsmith_f_op_f32(func_3()), vec3<f32>(_wgslsmith_f_op_f32(round(-565f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-641f * 2266f) - _wgslsmith_f_op_f32(trunc(1030f))), 1000f)), false, all(func_1(_wgslsmith_f_op_f32(f32(-1f) * -644f), u_input.a.x, true).xwz));
}


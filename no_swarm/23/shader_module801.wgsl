struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
    c: vec4<i32>,
}

struct Struct_3 {
    a: vec3<bool>,
    b: Struct_1,
    c: Struct_1,
    d: vec2<u32>,
    e: Struct_1,
}

struct Struct_4 {
    a: bool,
    b: Struct_3,
    c: vec4<u32>,
    d: vec3<i32>,
    e: f32,
}

struct Struct_5 {
    a: u32,
    b: Struct_2,
    c: vec2<f32>,
    d: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: vec3<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 24>;

var<private> global1: array<u32, 15> = array<u32, 15>(51698u, 4294967295u, 4294967295u, 4294967295u, 13970u, 12069u, 75299u, 0u, 16879u, 20211u, 52310u, 10682u, 0u, 1u, 4294967295u);

var<private> global2: Struct_5;

var<private> global3: array<vec3<f32>, 10> = array<vec3<f32>, 10>(vec3<f32>(215f, -477f, 850f), vec3<f32>(477f, 1000f, 506f), vec3<f32>(1414f, 1000f, -596f), vec3<f32>(331f, -1103f, -1043f), vec3<f32>(395f, 1035f, 165f), vec3<f32>(-1512f, -500f, 1000f), vec3<f32>(1380f, 295f, -1302f), vec3<f32>(220f, -262f, 1746f), vec3<f32>(-937f, -1029f, 429f), vec3<f32>(-343f, 1000f, 346f));

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: vec2<bool>) -> u32 {
    let var_0 = global2.b.c.x;
    return 48906u;
}

fn func_3(arg_0: vec3<u32>, arg_1: bool, arg_2: u32, arg_3: Struct_3) -> Struct_2 {
    var var_0 = countOneBits(4294967295u);
    let var_1 = -_wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(_wgslsmith_clamp_vec2_i32(global2.b.c.zz, global2.b.c.yy, vec2<i32>(-24897i, 1i)) | _wgslsmith_add_vec2_i32(global0[_wgslsmith_index_u32(1u, 24u)], vec2<i32>(1i, -2147483647i)), -vec2<i32>(global2.b.c.x, -2147483647i) | (global0[_wgslsmith_index_u32(arg_0.x, 24u)] << (arg_3.d % vec2<u32>(32u))), vec2<i32>(-global2.b.c.x, -global2.b.c.x)), vec2<i32>(_wgslsmith_dot_vec3_i32(-vec3<i32>(2147483647i, -1i, 1i), ~global2.b.c.xwx), global2.b.c.x));
    global0 = array<vec2<i32>, 24>();
    let var_2 = 1i;
    let var_3 = arg_3.a.x;
    return Struct_2(arg_3.e, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_3.b.a.x, global2.c.x, global2.b.a.a.x, 381f))), _wgslsmith_div_vec4_f32(global2.b.b, global2.b.b)))), ~(-(~vec4<i32>(-25937i, -21308i, var_1, 16712i))) >> (_wgslsmith_sub_vec4_u32(abs(vec4<u32>(arg_2, 1u, 0u, 3319u) << (vec4<u32>(1u, arg_3.d.x, 47354u, 4294967295u) % vec4<u32>(32u))), min(~vec4<u32>(arg_0.x, u_input.a.x, 4294967295u, global2.a), ~vec4<u32>(21301u, global2.d, arg_3.d.x, 0u))) % vec4<u32>(32u)));
}

fn func_1(arg_0: vec2<f32>) -> Struct_5 {
    let var_0 = true;
    var var_1 = Struct_5(~(~(~global2.a)), func_3(vec3<u32>(_wgslsmith_clamp_u32(~4294967295u, countOneBits(1u), 94604u), _wgslsmith_div_u32(~15877u, 53036u), u_input.a.x), var_0, ~_wgslsmith_mult_u32(u_input.a.x, func_2(vec2<bool>(var_0, var_0))), Struct_3(vec3<bool>(true, !var_0, var_0), global2.b.a, Struct_1(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(arg_0.x, arg_0.x)))), ~(~u_input.a.xx), global2.b.a)), vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_0.x + arg_0.x))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_0.x, -201f, var_0))), global2.b.b.x, select(var_0, var_0, var_0) || false))), 76980u);
    let var_2 = vec3<i32>(-1i) * -var_1.b.c.wwy;
    global0 = array<vec2<i32>, 24>();
    let var_3 = vec2<u32>(_wgslsmith_sub_u32(93722u << (func_2(vec2<bool>(true, true)) % 32u), _wgslsmith_sub_u32(u_input.a.x, u_input.a.x)), 0u);
    return Struct_5(u_input.a.x, func_3(vec3<u32>(_wgslsmith_add_u32(global2.d, ~var_3.x), u_input.a.x, ~25635u), all(!(!vec3<bool>(var_0, var_0, var_0))), countOneBits(_wgslsmith_sub_u32(~global1[_wgslsmith_index_u32(7738u, 15u)], ~1u)), Struct_3(select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), !vec3<bool>(var_0, var_0, var_0)), func_3(_wgslsmith_mult_vec3_u32(vec3<u32>(32488u, 19445u, 0u), vec3<u32>(global2.d, var_1.d, 28006u)), var_0, ~global1[_wgslsmith_index_u32(var_3.x, 15u)], Struct_3(vec3<bool>(true, var_0, false), global2.b.a, Struct_1(var_1.c), vec2<u32>(var_1.d, global2.d), Struct_1(vec2<f32>(arg_0.x, -224f)))).a, Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1176f, arg_0.x))), ~_wgslsmith_sub_vec2_u32(vec2<u32>(var_3.x, 23544u), vec2<u32>(1u, global1[_wgslsmith_index_u32(global2.d, 15u)])), func_3(u_input.a, true, _wgslsmith_clamp_u32(var_1.d, u_input.a.x, global1[_wgslsmith_index_u32(24849u, 15u)]), Struct_3(vec3<bool>(var_0, false, var_0), Struct_1(var_1.b.b.wx), Struct_1(vec2<f32>(1746f, arg_0.x)), vec2<u32>(global1[_wgslsmith_index_u32(u_input.a.x, 15u)], u_input.a.x), global2.b.a)).a)), global2.c, global2.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-305f - global2.b.b.x)), 484f) - _wgslsmith_f_op_vec2_f32(round(global2.b.a.a))));
    var var_1 = u_input.a.zx << (firstLeadingBit(~vec2<u32>(global2.d, u_input.a.x)) % vec2<u32>(32u));
    var var_2 = func_1(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(global2.b.b.x, var_0.b.a.a.x)))) + _wgslsmith_f_op_vec2_f32(func_1(global2.c).b.a.a * _wgslsmith_f_op_vec2_f32(var_0.c + var_0.b.b.xx))), var_0.b.a.a))).c.x;
    var_2 = _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_div_f32(func_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.c.x, var_0.b.a.a.x))).c.x, 163f), -220f), _wgslsmith_f_op_f32(644f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0.b.b.x, var_0.c.x))))));
    var var_3 = var_0.b.c.x | 1i;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(~(~global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.a.x, var_0.d), 15u)]), 0u, var_0.d), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(850f)), _wgslsmith_f_op_f32(select(-457f, -2425f, false)))))), select(min(vec3<u32>(8170u, global2.a, global1[_wgslsmith_index_u32(global2.a, 15u)]) | vec3<u32>(18730u, var_0.d, 46580u), firstTrailingBit(u_input.a)), ~u_input.a << ((u_input.a << (vec3<u32>(var_0.d, 81279u, 1u) % vec3<u32>(32u))) % vec3<u32>(32u)), u_input.a.x != 4294967295u) ^ ~(~(~vec3<u32>(global1[_wgslsmith_index_u32(var_0.a, 15u)], 6590u, var_0.d))), _wgslsmith_f_op_f32(343f + -1000f));
}


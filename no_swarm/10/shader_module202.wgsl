struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: f32,
    b: vec2<u32>,
    c: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: vec2<f32>,
    c: bool,
    d: vec4<i32>,
}

struct Struct_5 {
    a: vec4<bool>,
    b: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
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

var<private> global0: vec2<bool> = vec2<bool>(false, false);

var<private> global1: array<Struct_1, 15>;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: Struct_4, arg_1: vec2<f32>) -> bool {
    global0 = !select(select(!select(vec2<bool>(arg_0.c, arg_0.c), vec2<bool>(true, global0.x), arg_0.c), !vec2<bool>(arg_0.c, arg_0.c), select(select(vec2<bool>(true, false), vec2<bool>(false, global0.x), false), vec2<bool>(arg_0.c, global0.x), vec2<bool>(true, true))), select(select(vec2<bool>(true, true), select(vec2<bool>(false, global0.x), vec2<bool>(arg_0.c, false), false), true | global0.x), vec2<bool>(global0.x, all(vec3<bool>(global0.x, global0.x, false))), !arg_0.c & !global0.x), vec2<bool>(any(select(vec4<bool>(global0.x, arg_0.c, global0.x, true), vec4<bool>(arg_0.c, false, true, true), vec4<bool>(false, arg_0.c, false, false))), global0.x));
    global1 = array<Struct_1, 15>();
    var var_0 = arg_0.a;
    var var_1 = 62736i;
    let var_2 = false;
    return global0.x;
}

fn func_2(arg_0: vec3<i32>, arg_1: bool, arg_2: vec4<u32>) -> vec2<f32> {
    global0 = vec2<bool>(arg_1, func_3(Struct_4(Struct_2(-110f, vec2<u32>(arg_2.x, arg_2.x), i32(-1i) * -1i), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1000f, -644f)))), true, ~_wgslsmith_sub_vec4_i32(u_input.a, u_input.a)), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-245f, _wgslsmith_f_op_f32(f32(-1f) * -975f))))));
    let var_0 = true;
    var var_1 = firstTrailingBit(u_input.a);
    let var_2 = max(_wgslsmith_mod_i32(-4427i, _wgslsmith_mod_i32(-2147483647i, i32(-1i) * -30640i)), arg_0.x) | u_input.a.x;
    var var_3 = Struct_4(Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-1576f, 108f)))), ~(~(~arg_2.yy)), reverseBits(-u_input.a.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-511f, -979f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(692f, -1860f)))), false, vec4<i32>(u_input.a.x, var_1.x, reverseBits(firstTrailingBit(-1i)), u_input.a.x));
    return vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1111f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(559f + 1088f))) - -169f));
}

fn func_1(arg_0: bool, arg_1: i32) -> Struct_4 {
    var var_0 = Struct_3(Struct_2(-276f, vec2<u32>(0u, 80059u), arg_1), global1[_wgslsmith_index_u32(1u, 15u)]);
    let var_1 = vec4<bool>(false, global0.x || false, true && !(!(arg_0 & true)), !all(!select(vec2<bool>(false, arg_0), vec2<bool>(true, false), arg_0)));
    global0 = var_1.yz;
    global0 = var_1.yx;
    global1 = array<Struct_1, 15>();
    return Struct_4(Struct_2(_wgslsmith_f_op_f32(-var_0.b.a.x), vec2<u32>(firstTrailingBit(4294967295u), var_0.a.b.x), max(countOneBits(~(-18198i)), -var_0.a.c)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0.b.a.xy + var_0.b.a.yx)), _wgslsmith_f_op_vec2_f32(func_2(vec3<i32>(max(20073i, u_input.a.x), ~2147483647i, 0i), true, _wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, 46102u, var_0.a.b.x, 12688u) << (vec4<u32>(var_0.a.b.x, var_0.a.b.x, var_0.a.b.x, var_0.a.b.x) % vec4<u32>(32u)), vec4<u32>(109547u, var_0.a.b.x, var_0.a.b.x, var_0.a.b.x) | vec4<u32>(47714u, 4909u, 49241u, 1u))))), true, abs(vec4<i32>(firstLeadingBit(1i), 10102i, var_0.a.c, i32(-1i) * -2147483647i)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(false, 1i);
    var var_1 = u_input.a.wwz;
    var_1 = _wgslsmith_div_vec3_i32(func_1(false, -abs(var_0.a.c)).d.xxy, vec3<i32>(-1i) * -vec3<i32>(0i, _wgslsmith_add_i32(-692i, 1i), 0i));
    let var_2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, func_1(var_0.a.b.x == _wgslsmith_sub_u32(var_0.a.b.x, var_0.a.b.x), _wgslsmith_mult_i32(1i, 46351i) | abs(var_0.a.c)).a.a, _wgslsmith_f_op_f32(var_0.a.a * 404f), var_0.b.x) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(326f, 1000f, 212f, var_0.a.a)))) - _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_0.a.a, -1324f, var_0.b.x, var_0.b.x))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-989f, -723f, 1126f, var_0.b.x))))))));
    var_1 = var_0.d.wxx;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.xyz);
}


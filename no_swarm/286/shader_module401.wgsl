struct Struct_1 {
    a: f32,
    b: vec2<u32>,
    c: vec4<u32>,
    d: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
    d: Struct_1,
    e: vec2<bool>,
}

struct Struct_3 {
    a: vec3<u32>,
    b: f32,
}

struct Struct_4 {
    a: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec3<i32>,
    d: i32,
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

var<private> global0: Struct_3 = Struct_3(vec3<u32>(0u, 0u, 63072u), -895f);

var<private> global1: u32;

var<private> global2: i32;

var<private> global3: array<i32, 5> = array<i32, 5>(17340i, -27199i, 1i, 2147483647i, i32(-2147483648));

var<private> global4: array<i32, 8> = array<i32, 8>(-50733i, 1i, 34170i, 79792i, 29751i, 21599i, 85895i, 1i);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2() -> bool {
    global2 = 26780i;
    var var_0 = global4[_wgslsmith_index_u32(global0.a.x >> (u_input.a.x % 32u), 8u)];
    let var_1 = _wgslsmith_f_op_f32(round(global0.b));
    global4 = array<i32, 8>();
    global4 = array<i32, 8>();
    return false;
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: vec3<bool>) -> f32 {
    let var_0 = firstTrailingBit(vec4<u32>(_wgslsmith_dot_vec3_u32(max(~vec3<u32>(45155u, global0.a.x, arg_0), arg_1.c.wyz), arg_1.c.xww), u_input.a.x, ~(~1u), 37286u));
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_1.d) - _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(761f, global0.b, arg_1.a, arg_1.a))), _wgslsmith_f_op_vec4_f32(-arg_1.d))))))));
    let var_2 = ~(-17107i) >> (arg_0 % 32u);
    global2 = min(var_2, reverseBits(42288i));
    var var_3 = Struct_4(reverseBits(~(~99147u)));
    return -206f;
}

fn func_1(arg_0: Struct_4) -> i32 {
    var var_0 = Struct_4(~(~(~u_input.a.x)) | countOneBits(~35673u));
    let var_1 = arg_0;
    var var_2 = !select(!select(select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(true, false, false)), vec3<bool>(true, true, true), func_2()), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), true), global0.b != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(4294967295u, Struct_1(global0.b, vec2<u32>(1u, var_0.a), vec4<u32>(u_input.a.x, 0u, 0u, 8025u), vec4<f32>(global0.b, 371f, global0.b, global0.b)), vec3<bool>(false, false, false)))));
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.b + -1783f), _wgslsmith_f_op_f32(-1036f * -109f)), _wgslsmith_f_op_f32(-global0.b)))));
    let var_4 = Struct_1(global0.b, global0.a.yx ^ (vec2<u32>(global0.a.x, reverseBits(global0.a.x)) << (min(~vec2<u32>(26851u, global0.a.x), firstTrailingBit(vec2<u32>(arg_0.a, arg_0.a))) % vec2<u32>(32u))), ~select(_wgslsmith_mod_vec4_u32(abs(vec4<u32>(global0.a.x, arg_0.a, arg_0.a, var_0.a)), _wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, 29082u, 0u, var_0.a), vec4<u32>(0u, var_1.a, u_input.a.x, u_input.a.x))), vec4<u32>(var_0.a | u_input.a.x, var_0.a, 18873u, _wgslsmith_mod_u32(1u, arg_0.a)), all(vec4<bool>(false, var_2.x, var_2.x, var_2.x)) | select(var_2.x, var_2.x, false)), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(881f, _wgslsmith_div_f32(1074f, -845f), global0.b, 1690f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(711f, 1000f, global0.b, global0.b) * vec4<f32>(-1224f, var_3.x, 1292f, -1684f)))))));
    return global4[_wgslsmith_index_u32(var_0.a, 8u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global0.b * 750f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global0.b, global0.b))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-782f)), global0.b))));
    var var_1 = vec2<bool>(false, !select(true, true, true) && (global3[_wgslsmith_index_u32(select(6791u, u_input.a.x << (9338u % 32u), true), 5u)] >= _wgslsmith_mult_i32(-global3[_wgslsmith_index_u32(0u, 5u)], func_1(Struct_4(global0.a.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(11573u);
}


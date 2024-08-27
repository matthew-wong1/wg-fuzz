struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: bool,
    b: vec4<u32>,
}

struct Struct_3 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(vec3<f32>(1527f, 1512f, -464f));

var<private> global1: array<f32, 12>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2() -> vec4<u32> {
    global0 = Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-164f, 673f, 714f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(global0.a)))))));
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(1u, 12u)])))), 1000f)));
    global1 = array<f32, 12>();
    global1 = array<f32, 12>();
    global0 = Struct_3(vec3<f32>(global0.a.x, _wgslsmith_f_op_f32(208f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(715f, -1011f, false)) + _wgslsmith_f_op_f32(175f * global0.a.x))), -576f));
    return vec4<u32>(~abs(abs(~25683u)), abs(1u), 36264u, ~abs(~(~0u)));
}

fn func_3() -> vec3<f32> {
    var var_0 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(-377f, 712f), _wgslsmith_f_op_f32(-global0.a.x)) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global0.a.yz) - vec2<f32>(456f, -1882f))), _wgslsmith_f_op_vec2_f32(-global0.a.xy))));
    let var_1 = 1u;
    global1 = array<f32, 12>();
    var_0 = vec2<f32>(-1422f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1165f)) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1[_wgslsmith_index_u32(49484u, 12u)], global0.a.x))) * -104f));
    let var_2 = Struct_1(34756i);
    return global0.a;
}

fn func_1(arg_0: vec2<u32>, arg_1: Struct_1) -> Struct_3 {
    var var_0 = arg_1.a;
    var_0 = ~u_input.b.x;
    var var_1 = countOneBits(vec4<u32>(4294967295u, 0u, 28947u, 25934u)) >> ((vec4<u32>(~(~arg_0.x), ~(~arg_0.x), firstLeadingBit(arg_0.x), ~(~36687u)) & ~(func_2() << (countOneBits(vec4<u32>(arg_0.x, arg_0.x, arg_0.x, arg_0.x)) % vec4<u32>(32u)))) % vec4<u32>(32u));
    var_0 = 35665i;
    let var_2 = true;
    return Struct_3(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(func_3()))));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_3, arg_2: Struct_3, arg_3: vec3<i32>) -> u32 {
    var var_0 = Struct_1(_wgslsmith_add_i32(_wgslsmith_clamp_i32(u_input.b.x, reverseBits(-1i | u_input.a), firstLeadingBit(u_input.b.x)), -2147483647i));
    var var_1 = abs(u_input.b) ^ u_input.b;
    let var_2 = true;
    var_0 = Struct_1(0i);
    var var_3 = _wgslsmith_mult_i32(1i, var_0.a) >> (select(max(1u, select(1u, _wgslsmith_sub_u32(0u, 0u), all(vec2<bool>(true, true)))), func_2().x, false) % 32u);
    return 49555u;
}

fn func_5(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: u32) -> Struct_2 {
    let var_0 = -1264f;
    global0 = func_1(~vec2<u32>(~(~0u), max(_wgslsmith_dot_vec4_u32(vec4<u32>(74445u, arg_0.x, 103488u, 22254u), vec4<u32>(29668u, arg_2, 1u, arg_0.x)), ~1u)), arg_1);
    global1 = array<f32, 12>();
    return Struct_2((-_wgslsmith_add_i32(arg_1.a, -13895i) != _wgslsmith_add_i32(u_input.a, u_input.b.x)) != all(vec4<bool>(true, false, true, -651i != u_input.b.x)), firstLeadingBit((~vec4<u32>(arg_0.x, arg_2, 70950u, arg_2) & vec4<u32>(55973u, 101129u, arg_2, 37091u)) ^ vec4<u32>(1u, ~arg_2, ~arg_0.x, arg_0.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(false, firstTrailingBit(reverseBits(~vec4<u32>(4294967295u, 0u, 18607u, 18001u))));
    var var_1 = func_5(vec2<u32>(func_4(Struct_3(vec3<f32>(global0.a.x, -1547f, 1000f)), func_1(var_0.b.xx, Struct_1(-1i)), func_1(vec2<u32>(48152u, var_0.b.x), Struct_1(u_input.a)), max(vec3<i32>(27483i, u_input.b.x, 1i), vec3<i32>(u_input.b.x, u_input.a, -1i))), _wgslsmith_div_u32(var_0.b.x, min(1u, 0u))) | ~countOneBits(~vec2<u32>(var_0.b.x, var_0.b.x)), Struct_1(-min(u_input.a, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, u_input.b.x, u_input.a), vec3<i32>(0i, -2147483647i, u_input.b.x)))), ~1u);
    var var_2 = Struct_1(reverseBits(u_input.b.x));
    global0 = Struct_3(global0.a);
    let x = u_input.a;
    s_output = StorageBuffer(-vec3<i32>(~u_input.a, -8126i, _wgslsmith_mod_i32(i32(-1i) * -1i, _wgslsmith_mod_i32(2147483647i, u_input.b.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(~func_2().x, 12u)])), var_0.b.x);
}


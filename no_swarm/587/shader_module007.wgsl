struct Struct_1 {
    a: bool,
    b: i32,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<bool>,
    c: Struct_2,
    d: vec4<bool>,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
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

var<private> global0: array<Struct_3, 7>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: u32) -> Struct_1 {
    global0 = array<Struct_3, 7>();
    global0 = array<Struct_3, 7>();
    global0 = array<Struct_3, 7>();
    var var_0 = max(~(~(~_wgslsmith_mult_u32(32694u, u_input.c))), 4294967295u);
    var_0 = arg_0;
    return Struct_1(select(true, u_input.b <= u_input.b, !(_wgslsmith_mult_i32(-2147483647i, u_input.b) == ~0i)), firstTrailingBit(-2147483647i), all(select(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true)), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true)), !select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false)))));
}

fn func_1(arg_0: Struct_3) -> bool {
    let var_0 = firstLeadingBit(max(~(-vec4<i32>(-1i, arg_0.a.b, arg_0.a.b, 1699i)), vec4<i32>(arg_0.a.b, u_input.b, arg_0.a.b, 33490i) << (~vec4<u32>(u_input.a, u_input.a, u_input.c, 70573u) % vec4<u32>(32u)))) & vec4<i32>(243i, u_input.b, 24406i, 1i);
    var var_1 = Struct_1(true, -max(~62944i >> ((u_input.a >> (u_input.a % 32u)) % 32u), _wgslsmith_add_i32(-arg_0.a.b, u_input.b)), any(arg_0.d));
    let var_2 = 478f;
    var var_3 = Struct_3(func_2(u_input.c), arg_0.b, arg_0.c, vec4<bool>(!((u_input.c != u_input.c) && any(vec2<bool>(arg_0.b.x, arg_0.b.x))), all(arg_0.d), any(arg_0.d.zyx), var_1.a), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2) - _wgslsmith_f_op_f32(359f + var_2)), var_2)));
    var var_4 = var_0;
    return var_1.c;
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: u32, arg_3: Struct_3) -> vec3<bool> {
    var var_0 = func_2(_wgslsmith_mod_u32(reverseBits(abs(~arg_2)), _wgslsmith_div_u32(u_input.a, arg_2)));
    var_0 = func_2(2271u);
    let var_1 = Struct_1(true, arg_3.a.b, arg_0.x);
    var var_2 = Struct_1(-499f != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3.e.x * 1000f)), _wgslsmith_sub_i32(0i, _wgslsmith_mult_i32(countOneBits(arg_1.b) | firstLeadingBit(-12214i), u_input.b)), any(!select(arg_0.zww, select(vec3<bool>(false, true, false), vec3<bool>(true, true, arg_1.a), vec3<bool>(true, arg_3.b.x, true)), !vec3<bool>(true, arg_0.x, arg_0.x))));
    var_0 = func_2(u_input.c);
    return !(!(!select(!arg_3.b.www, select(vec3<bool>(true, false, true), arg_3.d.zxy, vec3<bool>(var_1.c, false, true)), vec3<bool>(arg_1.a, var_0.c, false))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(vec3<bool>(false, false, u_input.a != ~(~4294967295u)), vec3<bool>(any(select(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false)), vec2<bool>(false, false), false)), true, select(_wgslsmith_f_op_f32(round(1000f)) != _wgslsmith_f_op_f32(round(139f)), ~u_input.a <= select(u_input.a, 53083u, false), (u_input.a < u_input.a) & true)), !func_3(vec4<bool>(func_1(Struct_3(Struct_1(true, u_input.b, true), vec4<bool>(false, false, true, true), Struct_2(Struct_1(false, 2147483647i, false), Struct_1(true, u_input.b, false), false, Struct_1(false, u_input.b, true)), vec4<bool>(true, false, false, false), vec2<f32>(-222f, -1324f))), false, true, true), Struct_1(func_2(u_input.a).c, -12270i, false), 51826u & u_input.a, Struct_3(Struct_1(true, 13483i, false), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), false), Struct_2(Struct_1(false, u_input.b, true), Struct_1(false, 24429i, true), false, Struct_1(false, -61585i, true)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false), true), vec2<f32>(1442f, -728f))));
    global0 = array<Struct_3, 7>();
    let var_1 = global0[_wgslsmith_index_u32(~(~4294967295u), 7u)];
    let x = u_input.a;
    s_output = StorageBuffer(~(~_wgslsmith_sub_vec3_i32(select(vec3<i32>(2147483647i, var_1.a.b, u_input.b), vec3<i32>(-2147483647i, 58086i, u_input.b), var_0.x), vec3<i32>(-1i, var_1.a.b, 2147483647i))));
}


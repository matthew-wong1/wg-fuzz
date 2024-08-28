struct Struct_1 {
    a: f32,
    b: f32,
    c: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec2<i32>,
    d: vec3<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 11>;

var<private> global1: vec2<i32>;

var<private> global2: array<vec4<bool>, 21> = array<vec4<bool>, 21>(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, false));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: i32) -> f32 {
    global2 = array<vec4<bool>, 21>();
    let var_0 = 302f;
    var var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0, 1000f))), -591f, _wgslsmith_add_i32(-1i, 2147483647i << (~_wgslsmith_clamp_u32(u_input.d.x, u_input.d.x, u_input.d.x) % 32u)));
    let var_2 = select(~firstLeadingBit(~(~10020u)), u_input.d.x, var_1.a >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-818f)) - var_0));
    let var_3 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0 + -649f) - _wgslsmith_f_op_f32(floor(-2013f))))), _wgslsmith_f_op_f32(trunc(var_0))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0, var_0) + 1104f), -36384i);
    return -899f;
}

fn func_2() -> bool {
    var var_0 = Struct_1(-1000f, 2039f, -93620i ^ _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, u_input.c.x, 24790i) << (u_input.d % vec3<u32>(32u)), vec3<i32>(global1.x & u_input.c.x, -1i, -20226i)));
    var var_1 = ~global1.x;
    let var_2 = -(global1.x >> (reverseBits(firstTrailingBit(u_input.a << (4294967295u % 32u))) % 32u));
    var var_3 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a, _wgslsmith_f_op_f32(func_3(_wgslsmith_mult_i32(_wgslsmith_clamp_i32(var_2, 1i, global1.x), var_2 << (1u % 32u))))));
    var_0 = Struct_1(var_0.b, 1129f, 1i);
    return any(!select(vec4<bool>(!global0[_wgslsmith_index_u32(1u, 11u)], true, !global0[_wgslsmith_index_u32(u_input.b.x, 11u)], u_input.a < u_input.b.x), vec4<bool>(all(vec2<bool>(true, false)), !global0[_wgslsmith_index_u32(u_input.d.x, 11u)], true || global0[_wgslsmith_index_u32(15293u, 11u)], !global0[_wgslsmith_index_u32(4294967295u, 11u)]), true));
}

fn func_1() -> i32 {
    var var_0 = !vec3<bool>(true, false, func_2());
    let var_1 = Struct_1(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(-578f, 1034f, var_0.x)))))), -2147483647i);
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(var_1.b)))), _wgslsmith_f_op_f32(abs(1f)));
    global0 = array<bool, 11>();
    let var_3 = _wgslsmith_f_op_vec2_f32(trunc(var_2));
    return ~u_input.e;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_clamp_vec4_i32(vec4<i32>(-_wgslsmith_mult_i32(global1.x, 44019i), global1.x, global1.x, func_1()), ~abs(reverseBits(_wgslsmith_sub_vec4_i32(vec4<i32>(0i, u_input.c.x, global1.x, -36464i), vec4<i32>(0i, 8328i, -27373i, 48577i)))), vec4<i32>(20982i, global1.x, u_input.c.x, func_1()));
    var var_1 = u_input.b;
    var var_2 = global0[_wgslsmith_index_u32(var_1.x, 11u)];
    global0 = array<bool, 11>();
    var var_3 = max(abs(var_0.x), -24605i);
    let var_4 = var_0.x;
    let var_5 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-911f, -461f, 653f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(select(u_input.d.zz, ~vec2<u32>(var_1.x, 8128u), !(!vec2<bool>(false, global0[_wgslsmith_index_u32(var_1.x, 11u)]))) << (firstLeadingBit(~(u_input.b.yy >> (var_1.yy % vec2<u32>(32u)))) % vec2<u32>(32u)), vec4<i32>(-_wgslsmith_sub_i32(var_0.x, firstLeadingBit(65689i)), -26089i, -2147483647i, ~select(i32(-1i) * -22764i, _wgslsmith_sub_i32(var_0.x, u_input.c.x), true)));
}


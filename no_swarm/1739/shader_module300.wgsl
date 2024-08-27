struct Struct_1 {
    a: vec2<f32>,
    b: vec2<bool>,
    c: vec3<bool>,
    d: vec2<i32>,
    e: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: f32,
    c: Struct_2,
    d: Struct_1,
    e: u32,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_2,
}

struct Struct_5 {
    a: vec3<bool>,
    b: Struct_1,
    c: f32,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 15>;

var<private> global1: vec4<u32>;

var<private> global2: array<Struct_2, 4> = array<Struct_2, 4>(Struct_2(Struct_1(vec2<f32>(1024f, -1217f), vec2<bool>(true, false), vec3<bool>(true, true, false), vec2<i32>(-1i, 8421i), vec3<i32>(-1i, -1i, -10407i))), Struct_2(Struct_1(vec2<f32>(1181f, 169f), vec2<bool>(true, false), vec3<bool>(false, false, false), vec2<i32>(i32(-2147483648), 34104i), vec3<i32>(-45720i, 1i, 0i))), Struct_2(Struct_1(vec2<f32>(-1583f, -1000f), vec2<bool>(false, false), vec3<bool>(true, false, false), vec2<i32>(32079i, -1i), vec3<i32>(-24081i, -36944i, 13679i))), Struct_2(Struct_1(vec2<f32>(-871f, -892f), vec2<bool>(true, false), vec3<bool>(false, false, true), vec2<i32>(-16549i, 0i), vec3<i32>(29410i, i32(-2147483648), i32(-2147483648)))));

var<private> global3: array<f32, 17>;

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: bool, arg_1: i32, arg_2: vec3<u32>, arg_3: vec2<i32>) -> i32 {
    var var_0 = abs(_wgslsmith_mult_vec2_i32(abs(_wgslsmith_add_vec2_i32(_wgslsmith_sub_vec2_i32(arg_3, arg_3), vec2<i32>(9951i, 0i))), vec2<i32>(u_input.c, arg_1)));
    return 2147483647i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(0u, ~(~(~countOneBits(global1.x)))), 4u)];
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(global3[_wgslsmith_index_u32(51336u, 17u)], global3[_wgslsmith_index_u32(global1.x, 17u)], var_0.a.a.x, -1172f) - vec4<f32>(-779f, -1000f, 465f, var_0.a.a.x))))))));
    global0 = array<Struct_1, 15>();
    var var_2 = false;
    let var_3 = -_wgslsmith_sub_vec4_i32(vec4<i32>(_wgslsmith_div_i32(2147483647i << (u_input.b.x % 32u), 7446i), u_input.c, ~(1i >> (1u % 32u)), var_0.a.d.x), vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c, 1i, 2147483647i, 1i), vec4<i32>(-1i, var_0.a.e.x, -40213i, u_input.c)) << (~global1.x % 32u), 1i, u_input.c, func_1(false && var_0.a.b.x, 1i, ~global1.yww, _wgslsmith_clamp_vec2_i32(var_0.a.e.xx, vec2<i32>(0i, u_input.c), vec2<i32>(46194i, u_input.c)))));
    let x = u_input.a;
    s_output = StorageBuffer(~(~min(var_3.x, var_0.a.d.x) | _wgslsmith_div_i32(min(2147483647i, 1i), max(u_input.c, -2147483647i))));
}


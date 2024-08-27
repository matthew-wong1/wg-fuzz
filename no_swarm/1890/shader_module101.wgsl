struct Struct_1 {
    a: vec4<u32>,
    b: u32,
}

struct Struct_2 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 5>;

var<private> global1: f32;

var<private> global2: array<vec3<bool>, 8>;

var<private> global3: array<Struct_1, 22> = array<Struct_1, 22>(Struct_1(vec4<u32>(9813u, 4294967295u, 1u, 4294967295u), 0u), Struct_1(vec4<u32>(57195u, 1u, 0u, 23316u), 4294967295u), Struct_1(vec4<u32>(0u, 26242u, 4294967295u, 4294967295u), 0u), Struct_1(vec4<u32>(0u, 1827u, 1u, 4294967295u), 31789u), Struct_1(vec4<u32>(3734u, 4294967295u, 26054u, 20321u), 1u), Struct_1(vec4<u32>(1u, 4294967295u, 47108u, 4294967295u), 13494u), Struct_1(vec4<u32>(69383u, 35172u, 99971u, 46968u), 0u), Struct_1(vec4<u32>(4294967295u, 0u, 55281u, 0u), 23956u), Struct_1(vec4<u32>(13202u, 119847u, 4294967295u, 24774u), 4294967295u), Struct_1(vec4<u32>(1u, 8873u, 26946u, 1242u), 0u), Struct_1(vec4<u32>(54620u, 1u, 21744u, 4294967295u), 101583u), Struct_1(vec4<u32>(1u, 4294967295u, 0u, 11139u), 14305u), Struct_1(vec4<u32>(1u, 1u, 18890u, 4294967295u), 6776u), Struct_1(vec4<u32>(97595u, 1u, 0u, 40234u), 7861u), Struct_1(vec4<u32>(95989u, 43147u, 10627u, 4294967295u), 4294967295u), Struct_1(vec4<u32>(1u, 1u, 6668u, 53161u), 8808u), Struct_1(vec4<u32>(32633u, 4294967295u, 1u, 4659u), 3187u), Struct_1(vec4<u32>(3810u, 0u, 1u, 1u), 1u), Struct_1(vec4<u32>(18563u, 25305u, 1u, 1u), 4294967295u), Struct_1(vec4<u32>(66042u, 63740u, 0u, 14343u), 4294967295u), Struct_1(vec4<u32>(80636u, 0u, 0u, 4294967295u), 25435u), Struct_1(vec4<u32>(0u, 0u, 14695u, 1u), 1u));

var<private> global4: u32;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_2(arg_0: bool, arg_1: vec2<f32>) -> vec3<i32> {
    return vec3<i32>(~4503i, 1i, -firstTrailingBit(min(reverseBits(28909i), 1i)));
}

fn func_1(arg_0: Struct_2) -> u32 {
    var var_0 = func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -439f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-822f, 635f)))) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -2117f)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1884f, -1000f))))))));
    global3 = array<Struct_1, 22>();
    global4 = ~u_input.b;
    var var_1 = vec3<bool>(all(vec4<bool>(all(arg_0.a), arg_0.a.x, arg_0.a.x | !arg_0.a.x, false)), arg_0.a.x, all(!vec3<bool>(4294967295u < u_input.b, arg_0.a.x, true)));
    var var_2 = -abs(min(var_0.yy, ~select(vec2<i32>(var_0.x, var_0.x), var_0.zy, vec2<bool>(false, arg_0.a.x))));
    return ~max(4294967295u, max(u_input.b, u_input.a.x)) ^ u_input.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(!global2[_wgslsmith_index_u32(~u_input.b, 8u)]);
    global0 = array<Struct_1, 5>();
    var var_1 = _wgslsmith_mod_vec3_i32(vec3<i32>(0i, -19517i, -(i32(-1i) * -21998i)), _wgslsmith_mult_vec3_i32(countOneBits(vec3<i32>(88516i, ~1384i, 1i)), _wgslsmith_mult_vec3_i32(~firstTrailingBit(vec3<i32>(0i, 0i, 0i)), ~vec3<i32>(0i, -1i, 2147483647i) >> (max(vec3<u32>(u_input.c, u_input.a.x, u_input.c), vec3<u32>(u_input.a.x, 1u, u_input.c)) % vec3<u32>(32u)))));
    global4 = _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 4294967295u, _wgslsmith_div_u32(func_1(Struct_2(vec2<bool>(false, var_0.x))), countOneBits(u_input.c))) >> (_wgslsmith_clamp_vec3_u32(_wgslsmith_div_vec3_u32(~vec3<u32>(u_input.c, 56188u, u_input.a.x), _wgslsmith_sub_vec3_u32(vec3<u32>(0u, u_input.a.x, u_input.c), vec3<u32>(u_input.a.x, 38019u, u_input.c))), vec3<u32>(~u_input.a.x, abs(u_input.b), 1u), select(vec3<u32>(u_input.b, u_input.a.x, u_input.c), vec3<u32>(16506u, u_input.b, 524u), true) & reverseBits(vec3<u32>(u_input.c, 4294967295u, u_input.b))) % vec3<u32>(32u)), ~(~(~(~vec3<u32>(u_input.a.x, 27937u, u_input.a.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-985f * -850f) + _wgslsmith_f_op_f32(f32(-1f) * -975f)))) - 521f));
}


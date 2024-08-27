struct Struct_1 {
    a: u32,
    b: vec4<f32>,
    c: vec3<i32>,
    d: f32,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
}

struct Struct_3 {
    a: vec4<f32>,
}

struct Struct_4 {
    a: Struct_2,
    b: vec2<u32>,
    c: f32,
    d: vec4<u32>,
    e: vec2<i32>,
}

struct Struct_5 {
    a: vec3<u32>,
    b: vec2<i32>,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<i32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(33628u, 49050u, 4294967295u, 4294967295u);

var<private> global1: array<Struct_5, 28>;

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2(arg_0: u32, arg_1: vec2<f32>) -> vec2<i32> {
    var var_0 = -1236f;
    var var_1 = arg_1.x;
    var var_2 = arg_1.x;
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-341f, 816f, arg_1.x, _wgslsmith_f_op_f32(select(arg_1.x, -755f, false))))));
    var var_4 = ~6454i;
    return -vec2<i32>(1i, _wgslsmith_dot_vec3_i32(vec3<i32>(29642i, -48782i, 18420i), vec3<i32>(-30999i, 1i, 46223i)) & 1i) >> (firstTrailingBit(~(~(~global0.yz))) % vec2<u32>(32u));
}

fn func_3() -> i32 {
    global1 = array<Struct_5, 28>();
    global0 = _wgslsmith_add_vec4_u32(countOneBits(u_input.c), vec4<u32>(~(~(~37432u)), firstTrailingBit(u_input.c.x), _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(~global0.xy, firstTrailingBit(global0.xx)), max(u_input.a.zx, vec2<u32>(global0.x, 4294967295u)) | ~vec2<u32>(4294967295u, u_input.b)), 43045u));
    global0 = u_input.c;
    let var_0 = 2128u;
    global1 = array<Struct_5, 28>();
    return _wgslsmith_mod_i32(_wgslsmith_div_i32(1i, _wgslsmith_mult_i32(1i, -23995i)), reverseBits(~(-firstLeadingBit(-1i))));
}

fn func_1() -> vec4<bool> {
    var var_0 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-357f, -949f, -1000f)))));
    global1 = array<Struct_5, 28>();
    let var_1 = _wgslsmith_mod_vec2_u32(~vec2<u32>(max(~global0.x, 24162u), 10951u), _wgslsmith_mod_vec2_u32(~(~vec2<u32>(4294967295u, u_input.a.x)), ~(~vec2<u32>(3638u, 9262u))) ^ vec2<u32>(reverseBits(4294967295u), u_input.a.x));
    global1 = array<Struct_5, 28>();
    let var_2 = _wgslsmith_add_vec2_i32(abs(func_2(16476u, var_0.xz)) ^ (select(vec2<i32>(-29356i, 6890i), vec2<i32>(-2147483647i, 19763i), var_0.x < -441f) >> (var_1 % vec2<u32>(32u))), -_wgslsmith_clamp_vec2_i32(-(~vec2<i32>(1i, -1i)), vec2<i32>(func_3(), -54366i), _wgslsmith_mod_vec2_i32(~vec2<i32>(-33510i, -2147483647i), _wgslsmith_clamp_vec2_i32(vec2<i32>(-1i, -56682i), vec2<i32>(-1i, 2147483647i), vec2<i32>(-17476i, -2147483647i)))));
    return vec4<bool>(true, true, false, global0.x <= 12288u);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_5, 28>();
    let var_0 = vec2<u32>(u_input.b, u_input.a.x | 1u);
    let var_1 = global1[_wgslsmith_index_u32(~global0.x, 28u)];
    var var_2 = !all(func_1());
    global1 = array<Struct_5, 28>();
    global0 = ~(~_wgslsmith_mult_vec4_u32(select(~vec4<u32>(1168u, 0u, 53017u, 4294967295u), ~u_input.c, any(vec4<bool>(true, var_1.c.x, var_1.c.x, false))), vec4<u32>(4222u >> (u_input.a.x % 32u), ~var_1.a.x, reverseBits(4294967295u), var_0.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(-906f)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(1298f))))) * vec2<f32>(-1289f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -2817f))))), _wgslsmith_clamp_vec3_i32(-(~vec3<i32>(0i, var_1.b.x, 9939i)), vec3<i32>(var_1.b.x, var_1.b.x, var_1.b.x), ~vec3<i32>(-1i, var_1.b.x, 1i) >> (u_input.a % vec3<u32>(32u))) ^ (-_wgslsmith_mult_vec3_i32(vec3<i32>(var_1.b.x, var_1.b.x, var_1.b.x), vec3<i32>(var_1.b.x, var_1.b.x, var_1.b.x)) ^ _wgslsmith_div_vec3_i32(~vec3<i32>(var_1.b.x, var_1.b.x, 0i), vec3<i32>(var_1.b.x, -28498i, -15858i))), vec2<u32>(~(~1u), 0u));
}


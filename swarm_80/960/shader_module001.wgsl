struct Struct_1 {
    a: vec3<i32>,
    b: vec2<bool>,
    c: vec2<i32>,
    d: f32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec3<bool>,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: vec2<u32>,
    d: vec2<f32>,
}

struct Struct_4 {
    a: i32,
    b: Struct_2,
    c: u32,
    d: vec2<i32>,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec2<i32>,
    d: i32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 31>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3() -> bool {
    var var_0 = ~(~select(u_input.e.x, 1u, _wgslsmith_f_op_f32(ceil(-272f)) == -208f));
    var var_1 = !vec2<bool>(all(select(select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(true, true, false)), vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(true, false, true)))), true);
    var var_2 = u_input.c.x;
    var_2 = _wgslsmith_add_i32(3016i, 1361i);
    var_1 = !select(vec2<bool>(true, var_1.x), vec2<bool>(4294967295u >= (u_input.a.x ^ 1u), !var_1.x), true);
    return u_input.a.x <= select(1u, 0u, (~u_input.c.x <= ~35269i) | true);
}

fn func_2(arg_0: vec3<i32>, arg_1: vec2<i32>, arg_2: bool) -> u32 {
    global0 = array<Struct_2, 31>();
    global0 = array<Struct_2, 31>();
    global0 = array<Struct_2, 31>();
    global0 = array<Struct_2, 31>();
    let var_0 = Struct_3(arg_1.x, global0[_wgslsmith_index_u32(~_wgslsmith_sub_u32(_wgslsmith_add_u32(u_input.a.x | u_input.a.x, 12576u), 35539u), 31u)], abs(select(vec2<u32>(~24525u, 4214u), max(vec2<u32>(u_input.e.x, u_input.a.x), u_input.e.xx), vec2<bool>(func_3(), arg_2))), _wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) - _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(vec2<f32>(677f, 752f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-376f, -238f)))))));
    return var_0.c.x;
}

fn func_1(arg_0: Struct_3) -> i32 {
    let var_0 = arg_0.d.x;
    var var_1 = u_input.b;
    var var_2 = vec4<i32>(2147483647i, ~_wgslsmith_mod_i32(1i << (func_2(vec3<i32>(2868i, -13073i, arg_0.a), vec2<i32>(u_input.c.x, arg_0.a), arg_0.b.b.x) % 32u), arg_0.a), _wgslsmith_mult_i32(0i, _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, -2147483647i, -2147483647i), vec3<i32>(arg_0.a, -2147483647i, -1i)), firstLeadingBit(0i))) ^ abs(~(-22664i)), -8641i);
    var_1 = var_2.x;
    var_1 = u_input.b;
    return ~68517i;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 31>();
    var var_0 = ~vec4<i32>(_wgslsmith_dot_vec4_i32(-vec4<i32>(u_input.c.x, u_input.b, -1i, -1i), vec4<i32>(-u_input.c.x, func_1(Struct_3(26407i, global0[_wgslsmith_index_u32(u_input.a.x, 31u)], u_input.a.xz, vec2<f32>(-408f, 1252f))), u_input.c.x ^ 6146i, u_input.c.x)), -_wgslsmith_clamp_i32(~0i, -u_input.c.x, 51479i), _wgslsmith_add_i32(i32(-1i) * -u_input.d, 2147483647i), _wgslsmith_mod_i32(~reverseBits(-1i), -30544i));
    var_0 = firstTrailingBit(_wgslsmith_sub_vec4_i32(vec4<i32>(abs(u_input.b), ~40323i, ~1i, var_0.x), abs(_wgslsmith_mult_vec4_i32(vec4<i32>(var_0.x, 0i, 1i, u_input.d), vec4<i32>(u_input.c.x, 21216i, 1i, var_0.x))))) | _wgslsmith_add_vec4_i32(vec4<i32>(-_wgslsmith_sub_i32(2147483647i, u_input.d), 26272i, -12646i, var_0.x), vec4<i32>(~(i32(-1i) * -14956i), ~(-33908i), _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(var_0.x, -1i, 86445i), vec3<i32>(u_input.d, 5935i, -1i)), abs(var_0.xxx)), firstTrailingBit(_wgslsmith_dot_vec2_i32(u_input.c, var_0.xy))));
    var var_1 = vec3<f32>(-981f, -1378f, -591f);
    global0 = array<Struct_2, 31>();
    var var_2 = Struct_4(42689i & ~_wgslsmith_div_i32(u_input.b, ~var_0.x), Struct_2(select(_wgslsmith_div_vec4_u32(firstLeadingBit(vec4<u32>(1u, 1u, 63596u, u_input.a.x)), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.e.x, 1u, u_input.a.x, 41269u), vec4<u32>(u_input.a.x, u_input.a.x, 15422u, 17007u), vec4<u32>(46343u, 22228u, u_input.a.x, 4294967295u))), vec4<u32>(1u & u_input.a.x, ~u_input.e.x, u_input.a.x, 1u), vec4<bool>(true, true, all(vec3<bool>(false, true, true)), true)), vec3<bool>(func_3(), all(vec3<bool>(true, true, true)), !func_3())), _wgslsmith_div_u32(~((u_input.a.x & 97496u) | _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 15282u, u_input.e.x), u_input.a)), ~(~1u)), firstTrailingBit(~select(~vec2<i32>(var_0.x, var_0.x), ~u_input.c, true)), _wgslsmith_f_op_vec2_f32(max(var_1.yx, var_1.zx)));
    let var_3 = 1u;
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.a.x, 1i, ~_wgslsmith_dot_vec4_u32(var_2.b.a, var_2.b.a << (var_2.b.a % vec4<u32>(32u))), var_2.c);
}


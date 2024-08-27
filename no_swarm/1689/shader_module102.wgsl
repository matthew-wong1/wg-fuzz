struct Struct_1 {
    a: f32,
    b: vec4<u32>,
    c: bool,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec4<i32>,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
    b: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

var<private> global1: array<Struct_3, 11>;

var<private> global2: array<Struct_1, 8>;

var<private> global3: Struct_3;

var<private> global4: i32 = 0i;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_1(arg_0: vec3<i32>, arg_1: vec4<i32>, arg_2: i32) -> f32 {
    var var_0 = global3.b.c.c;
    var var_1 = reverseBits(_wgslsmith_dot_vec4_i32(select(global3.b.b, abs(vec4<i32>(arg_2, global3.b.b.x, 28246i, global3.b.b.x)) | -vec4<i32>(0i, -2147483647i, 0i, global3.b.b.x), !global3.b.c.c), select(-vec4<i32>(-21374i, 2147483647i, arg_1.x, u_input.a) >> (vec4<u32>(u_input.c.x, global3.b.c.b.x, global3.b.c.b.x, 46195u) % vec4<u32>(32u)), _wgslsmith_sub_vec4_i32(vec4<i32>(0i, 1i, arg_1.x, -2147483647i), arg_1), select(vec4<bool>(false, true, false, global3.b.c.c), select(vec4<bool>(true, false, global3.b.c.c, true), vec4<bool>(false, global3.b.c.c, global3.b.c.c, global3.b.c.c), true), global3.b.c.c))));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(570f + global3.b.a.x)), vec4<u32>(60029u, abs(~(~1727u)), u_input.c.x << ((abs(global0.x) | ~global3.b.c.b.x) % 32u), min(global3.b.c.b.x, global3.b.c.b.x)), false);
    var var_3 = global3.b;
    var var_4 = Struct_3(_wgslsmith_mult_vec2_i32(arg_1.yy, firstLeadingBit(global3.b.b.xw)), Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.c.a, _wgslsmith_f_op_f32(step(var_3.c.a, 752f)), 1239f, 839f)), -reverseBits(vec4<i32>(-41985i, arg_1.x, u_input.b.x, u_input.b.x)), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(~2371u, global3.b.c.b.x, _wgslsmith_sub_u32(8749u, var_2.b.x), min(46771u, 28171u)), vec4<u32>(abs(1u), ~4294967295u, u_input.c.x, ~4294967295u)), 8u)]));
    return global3.b.a.x;
}

fn func_3() -> vec4<bool> {
    var var_0 = global3.b.a;
    var var_1 = vec4<bool>(global3.b.c.c || global3.b.c.c, !global3.b.c.c, true, true & global3.b.c.c);
    return vec4<bool>(var_1.x, false, false, !all(select(var_1.wzw, vec3<bool>(true, true, false), var_1.zyx)) && false);
}

fn func_2() -> vec4<bool> {
    global1 = array<Struct_3, 11>();
    global1 = array<Struct_3, 11>();
    global0 = global3.b.c.b;
    var var_0 = _wgslsmith_sub_i32(~_wgslsmith_dot_vec2_i32(~global3.a, vec2<i32>(_wgslsmith_add_i32(-11548i, u_input.b.x), u_input.b.x | 1i)), firstLeadingBit(26493i));
    var var_1 = 1310f;
    return !(!select(!func_3(), select(vec4<bool>(global3.b.c.c, global3.b.c.c, global3.b.c.c, false), select(vec4<bool>(global3.b.c.c, false, global3.b.c.c, true), vec4<bool>(global3.b.c.c, global3.b.c.c, false, false), true), global3.b.c.c), select(vec4<bool>(true, false, true, global3.b.c.c), vec4<bool>(global3.b.c.c, global3.b.c.c, false, true), select(vec4<bool>(true, global3.b.c.c, global3.b.c.c, false), vec4<bool>(global3.b.c.c, global3.b.c.c, true, global3.b.c.c), vec4<bool>(true, global3.b.c.c, true, global3.b.c.c)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(~_wgslsmith_dot_vec4_u32(vec4<u32>(36385u | u_input.c.x, 28530u, global3.b.c.b.x << (5655u % 32u), global0.x), ~vec4<u32>(global0.x, 1u, 30434u, 35368u)));
    let var_1 = ~global3.b.c.b.x | global0.x;
    var var_2 = Struct_1(_wgslsmith_f_op_f32(func_1(select(_wgslsmith_mult_vec3_i32(u_input.b, vec3<i32>(global3.b.b.x, global3.a.x, u_input.a)), reverseBits(_wgslsmith_add_vec3_i32(global3.b.b.wzz, vec3<i32>(global3.b.b.x, -1i, -2147483647i))), select(vec3<bool>(global3.b.c.c, global3.b.c.c, true), select(vec3<bool>(global3.b.c.c, true, global3.b.c.c), vec3<bool>(true, true, global3.b.c.c), global3.b.c.c), select(global3.b.c.c, global3.b.c.c, true))), ~_wgslsmith_mod_vec4_i32(-global3.b.b, select(vec4<i32>(2147483647i, -1i, 1i, -6377i), global3.b.b, global3.b.c.c)), 79606i)), ~countOneBits(~(~global3.b.c.b)), false);
    var_0 = ~(13453u ^ ~var_2.b.x) ^ 1u;
    var var_3 = vec2<bool>(all(func_2()), func_2().x);
    var_2 = global2[_wgslsmith_index_u32(1u, 8u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), -(~vec4<i32>(-44218i, 1i, -2147483647i, 2147483647i))), -countOneBits(-global3.b.b)), _wgslsmith_clamp_vec4_u32(countOneBits(abs(vec4<u32>(var_1, u_input.c.x, 1u, u_input.c.x))), var_2.b, vec4<u32>(~(~global3.b.c.b.x), 11489u, _wgslsmith_clamp_u32(0u, var_2.b.x & 41768u, ~var_2.b.x), 27205u)), 118f, ~(~global3.a.x));
}


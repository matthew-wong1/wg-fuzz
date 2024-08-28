struct Struct_1 {
    a: vec2<bool>,
    b: vec3<bool>,
    c: vec4<i32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: u32,
    c: i32,
    d: vec2<bool>,
    e: f32,
}

struct Struct_3 {
    a: vec4<f32>,
    b: Struct_2,
    c: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: vec3<u32>,
    d: vec3<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<f32>,
    c: vec2<u32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 23556i;

var<private> global1: vec2<bool> = vec2<bool>(false, true);

var<private> global2: array<Struct_1, 19>;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3() -> u32 {
    var var_0 = Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(vec4<f32>(-1000f, 513f, -582f, 294f), vec4<f32>(501f, -1000f, 266f, 1000f))))))), Struct_2(firstLeadingBit(select(vec4<u32>(1u, 31136u, u_input.d.x, u_input.c.x), vec4<u32>(u_input.b.x, 13415u, 39493u, 1420u), vec4<bool>(true, false, global1.x, false)) & ~vec4<u32>(68043u, u_input.e, u_input.c.x, u_input.e)), u_input.a.x, _wgslsmith_dot_vec4_i32(abs(-vec4<i32>(-17669i, -2147483647i, 2882i, 21414i)), vec4<i32>(countOneBits(-2147483647i), ~(-13722i), _wgslsmith_sub_i32(-2147483647i, 1i), -29427i)), !vec2<bool>(true, global1.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(722f)))), -324f)), ~(~15101u));
    let var_1 = Struct_3(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(886f, var_0.a.x, 2148f, _wgslsmith_f_op_f32(1774f - 1000f)) + _wgslsmith_div_vec4_f32(vec4<f32>(var_0.b.e, var_0.a.x, 719f, -2056f), _wgslsmith_div_vec4_f32(vec4<f32>(var_0.a.x, -1575f, -394f, var_0.b.e), vec4<f32>(1785f, var_0.a.x, 2668f, var_0.b.e)))))), var_0.b, abs(~var_0.c));
    var var_2 = true;
    var var_3 = Struct_3(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(1f, var_0.a.x, var_1.a.x, var_0.a.x), var_0.a), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(var_0.a.x, -920f), -1589f, _wgslsmith_div_f32(var_1.b.e, 1515f), -380f))), var_0.b, countOneBits(_wgslsmith_div_u32(4294967295u, ~35726u)));
    global2 = array<Struct_1, 19>();
    return u_input.e;
}

fn func_2() -> vec2<bool> {
    global0 = 16848i;
    var var_0 = global2[_wgslsmith_index_u32(_wgslsmith_add_u32(func_3() << (u_input.e % 32u), 1u) << (~u_input.e % 32u), 19u)];
    let var_1 = Struct_3(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(2490f)), _wgslsmith_f_op_f32(-319f * -123f), true && var_0.a.x)), _wgslsmith_f_op_f32(-278f - 309f), 673f, _wgslsmith_f_op_f32(round(-1251f))))), Struct_2(~vec4<u32>(u_input.d.x, func_3(), ~4294967295u, 16722u), 1u, var_0.c.x, vec2<bool>(any(!var_0.b), global1.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -2686f))) - 781f)), u_input.c.x);
    let var_2 = ~(~2857u) > _wgslsmith_sub_u32(~var_1.c, u_input.e);
    global2 = array<Struct_1, 19>();
    return vec2<bool>(var_1.c != (~max(var_1.c, 4294967295u) << (var_1.c % 32u)), true || select(!all(vec4<bool>(var_0.b.x, true, true, var_2)), select(true, var_2, !var_2), true));
}

fn func_1(arg_0: vec2<i32>, arg_1: vec3<f32>) -> StorageBuffer {
    global2 = array<Struct_1, 19>();
    global1 = select(func_2(), vec2<bool>(global1.x, global1.x), !vec2<bool>(!global1.x || global1.x, !global1.x && !global1.x));
    return StorageBuffer(u_input.d, _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-2467f, arg_1.x, arg_1.x, arg_1.x) + vec4<f32>(-300f, 2087f, -1194f, 1490f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-237f, arg_1.x, 914f, 1000f) * vec4<f32>(arg_1.x, arg_1.x, 526f, 132f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_1.x, arg_1.x, 1000f, arg_1.x))), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_1.x, arg_1.x, -2039f, 258f))))))), ~_wgslsmith_add_vec2_u32(vec2<u32>(max(109264u, 20208u), u_input.c.x), vec2<u32>(firstLeadingBit(u_input.b.x), u_input.a.x)), _wgslsmith_add_vec3_u32(abs(~u_input.d), vec3<u32>(u_input.d.x << ((u_input.e ^ u_input.e) % 32u), u_input.d.x, 71644u ^ func_3())));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-497f, 1000f, 557f, -1256f)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-552f, -1865f, -703f, 1745f) + vec4<f32>(1296f, -1232f, 2412f, -991f)), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1076f, -757f, -204f, -1000f))), all(vec2<bool>(global1.x, false)))), select(!vec4<bool>(true, true, true, global1.x), vec4<bool>(false, global1.x, false, global1.x), global1.x == true)))), Struct_2(vec4<u32>(_wgslsmith_mult_u32(u_input.c.x, 84448u), ~1u, _wgslsmith_div_u32(41206u, 4294967295u), 1u) >> (~_wgslsmith_mult_vec4_u32(vec4<u32>(5331u, 100033u, u_input.e, 1u), vec4<u32>(u_input.b.x, u_input.d.x, 22157u, u_input.b.x)) % vec4<u32>(32u)), _wgslsmith_mult_u32(41533u, firstLeadingBit(~u_input.a.x)), ~(-2147483647i), !select(vec2<bool>(true, true), select(vec2<bool>(global1.x, global1.x), vec2<bool>(global1.x, false), vec2<bool>(global1.x, global1.x)), all(vec3<bool>(false, true, false))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(1421f)), _wgslsmith_f_op_f32(floor(1779f)))))), ~1u);
    let x = u_input.a;
    s_output = func_1(_wgslsmith_add_vec2_i32(firstTrailingBit(~vec2<i32>(var_0.b.c, -14437i)), _wgslsmith_mult_vec2_i32(firstTrailingBit(vec2<i32>(-36378i, -1i)), abs(vec2<i32>(-8282i, var_0.b.c)))) | vec2<i32>(-8705i, var_0.b.c), var_0.a.wzz);
}


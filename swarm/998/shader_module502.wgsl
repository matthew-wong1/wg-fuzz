struct Struct_1 {
    a: vec4<u32>,
    b: u32,
    c: bool,
    d: f32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: bool,
    c: bool,
}

struct Struct_3 {
    a: vec3<f32>,
}

struct Struct_4 {
    a: Struct_3,
}

struct Struct_5 {
    a: Struct_3,
    b: Struct_2,
    c: Struct_3,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 7> = array<vec2<u32>, 7>(vec2<u32>(62687u, 4294967295u), vec2<u32>(12880u, 67999u), vec2<u32>(0u, 11838u), vec2<u32>(0u, 0u), vec2<u32>(32991u, 0u), vec2<u32>(4294967295u, 1u), vec2<u32>(4294967295u, 14537u));

var<private> global1: Struct_3 = Struct_3(vec3<f32>(666f, 723f, -1073f));

var<private> global2: array<vec4<bool>, 9>;

var<private> global3: array<Struct_5, 13>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec2<bool>) -> bool {
    var var_0 = global3[_wgslsmith_index_u32(~(~u_input.b), 13u)];
    let var_1 = ~max(vec3<u32>(4294967295u, u_input.b, u_input.b), ~_wgslsmith_mult_vec3_u32(select(vec3<u32>(u_input.b, 29401u, 99891u), vec3<u32>(u_input.b, u_input.b, u_input.b), vec3<bool>(true, var_0.b.b, arg_0.x)), ~vec3<u32>(4294967295u, u_input.b, u_input.b)));
    global3 = array<Struct_5, 13>();
    var var_2 = _wgslsmith_mult_vec4_i32((_wgslsmith_sub_vec4_i32(firstLeadingBit(vec4<i32>(2147483647i, u_input.a.x, 2147483647i, -63536i)), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a.x, var_0.b.a.x, var_0.d.x, u_input.a.x), vec4<i32>(-25158i, -31721i, -1i, u_input.a.x))) & var_0.b.a) & -(~(~u_input.a)), select(_wgslsmith_mod_vec4_i32(~_wgslsmith_mult_vec4_i32(u_input.a, u_input.a), vec4<i32>(~u_input.a.x, ~(-1i), var_0.b.a.x >> (0u % 32u), var_0.d.x >> (0u % 32u))), var_0.b.a, select(all(vec4<bool>(true, false, false, var_0.b.b)), true, all(global2[_wgslsmith_index_u32(reverseBits(6354u), 9u)]))));
    var var_3 = global3[_wgslsmith_index_u32(firstTrailingBit(min(~firstLeadingBit(38126u), firstLeadingBit(_wgslsmith_sub_u32(0u >> (1u % 32u), _wgslsmith_clamp_u32(1u, u_input.b, u_input.b))))), 13u)];
    return any(vec3<bool>(all(!vec2<bool>(arg_0.x, var_0.b.c)), ~u_input.a.x <= (2029i | var_3.b.a.x), true)) | (u_input.b > var_1.x);
}

fn func_2(arg_0: vec4<i32>, arg_1: u32, arg_2: vec3<u32>) -> Struct_3 {
    let var_0 = Struct_2(u_input.a ^ vec4<i32>(-29431i, _wgslsmith_dot_vec2_i32(-vec2<i32>(0i, u_input.a.x), _wgslsmith_add_vec2_i32(vec2<i32>(34483i, arg_0.x), u_input.a.yy)), arg_0.x, u_input.a.x), true, func_3(select(select(vec2<bool>(false, false), select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false)), select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false))), select(select(vec2<bool>(true, true), vec2<bool>(false, false), false), vec2<bool>(true, true), any(global2[_wgslsmith_index_u32(45744u, 9u)])), !(global1.a.x <= 1556f))));
    global2 = array<vec4<bool>, 9>();
    global3 = array<Struct_5, 13>();
    var var_1 = true;
    var var_2 = arg_2.x;
    return Struct_3(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(528f * global1.a.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-1033f, global1.a.x), global1.a.x)) + global1.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a.x))));
}

fn func_1(arg_0: u32) -> vec4<bool> {
    let var_0 = func_2(u_input.a, select(_wgslsmith_clamp_u32(1u, 1u, ~u_input.b), min(0u, arg_0) ^ ((0u & arg_0) >> (u_input.b % 32u)), true), ~(~(~vec3<u32>(19371u, u_input.b, arg_0))) & ~(~(~vec3<u32>(arg_0, 0u, 4294967295u))));
    let var_1 = countOneBits(-u_input.a.zzx);
    var var_2 = false;
    var_2 = true;
    let var_3 = Struct_2(-(~(~u_input.a) & u_input.a), countOneBits(u_input.b) <= ~4294967295u, !any(global2[_wgslsmith_index_u32(1u << (arg_0 % 32u), 9u)]));
    return vec4<bool>(var_3.b, !any(select(select(vec2<bool>(false, var_3.b), vec2<bool>(false, true), true), vec2<bool>(true, var_3.c), arg_0 < u_input.b)), var_3.b, true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a;
    var var_1 = func_1(firstLeadingBit(_wgslsmith_mod_u32(_wgslsmith_div_u32(u_input.b, _wgslsmith_mod_u32(u_input.b, 30937u)), 111009u)));
    let var_2 = -select(~u_input.a.x, -(-var_0.x << (min(u_input.b, 1u) % 32u)), func_1(4294967295u).x);
    let var_3 = var_1.x;
    global0 = array<vec2<u32>, 7>();
    var var_4 = 4294967295u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_u32(4294967295u, firstLeadingBit(u_input.b)), min(-_wgslsmith_clamp_i32(2147483647i, -2147483647i, var_0.x), _wgslsmith_clamp_i32(i32(-1i) * -1i, -27777i, max(var_0.x << (u_input.b % 32u), var_0.x))));
}

